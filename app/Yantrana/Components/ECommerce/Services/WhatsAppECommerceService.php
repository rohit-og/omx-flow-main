<?php
/**
* WhatsAppECommerceService.php - Service file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Services;

use App\Yantrana\Base\BaseEngine;
use App\Yantrana\Components\ECommerce\Interfaces\ECommerceEngineInterface;
use App\Yantrana\Components\ECommerce\Repositories\ProductRepository;
use App\Yantrana\Components\ECommerce\Repositories\OrderRepository;
use App\Yantrana\Components\WhatsAppService\Services\WhatsAppApiService;

class WhatsAppECommerceService extends BaseEngine implements ECommerceEngineInterface
{
    /**
     * @var ProductRepository
     */
    protected $productRepository;

    /**
     * @var OrderRepository
     */
    protected $orderRepository;

    /**
     * @var WhatsAppApiService
     */
    protected $whatsAppApiService;

    /**
     * Constructor.
     *
     * @param ProductRepository $productRepository
     * @param OrderRepository $orderRepository
     * @param WhatsAppApiService $whatsAppApiService
     *-----------------------------------------------------------------------*/
    public function __construct(
        ProductRepository $productRepository,
        OrderRepository $orderRepository,
        WhatsAppApiService $whatsAppApiService
    ) {
        $this->productRepository = $productRepository;
        $this->orderRepository = $orderRepository;
        $this->whatsAppApiService = $whatsAppApiService;
    }

    /**
     * Send product catalog via WhatsApp
     *
     * @param string $contactNumber
     * @return mixed
     */
    public function sendWhatsAppProductCatalog($contactNumber)
    {
        // Get featured products
        $products = $this->productRepository->fetchAll([
            'status' => 1, // active products
            'vendor_id' => getVendorId()
        ]);

        if ($products->isEmpty()) {
            return $this->engineFailedResponse([], __tr('No products available'));
        }

        // Format the catalog as an interactive list message
        $sections = [];
        $rows = [];

        foreach ($products as $index => $product) {
            // Only show up to 10 products (WhatsApp limit)
            if ($index >= 10) {
                break;
            }

            $price = formatAmount($product->price, true);
            
            $rows[] = [
                'id' => (string)$product->_id,
                'title' => $product->name,
                'description' => substr($product->description, 0, 72) . '...',
            ];
        }

        $sections[] = [
            'title' => __tr('Available Products'),
            'rows' => $rows
        ];

        // Send interactive message with product list
        $messageData = [
            'interactive_type' => 'list',
            'header_text' => __tr('Product Catalog'),
            'body_text' => __tr('Please select a product to view details:'),
            'footer_text' => __tr('Tap on any product to view details'),
            'list_data' => [
                'button_text' => __tr('View Products'),
                'sections' => $sections
            ]
        ];

        $result = $this->whatsAppApiService->sendInteractiveMessage($contactNumber, $messageData);

        if (isset($result['error'])) {
            return $this->engineFailedResponse([], $result['error']['message'] ?? __tr('Failed to send product catalog'));
        }

        return $this->engineSuccessResponse([
            'message_id' => $result['messages'][0]['id'] ?? null
        ], __tr('Product catalog sent successfully'));
    }

    /**
     * Send product details via WhatsApp
     *
     * @param string $contactNumber
     * @param int $productId
     * @return mixed
     */
    public function sendWhatsAppProductDetails($contactNumber, $productId)
    {
        $product = $this->productRepository->findById($productId);

        if (!$product) {
            return $this->engineFailedResponse([], __tr('Product not found'));
        }

        $price = formatAmount($product->price, true);
        $productImage = $product->image;

        // Send media message with product image if available
        if (!empty($productImage)) {
            $mediaResponse = $this->whatsAppApiService->sendMediaMessage(
                $contactNumber,
                'image',
                $productImage,
                "{$product->name} - {$price}"
            );
        }

        // Send interactive message with product details and buttons
        $messageData = [
            'interactive_type' => 'button',
            'header_text' => $product->name,
            'body_text' => $product->description . "\n\nPrice: {$price}\n" . 
                           ($product->stock > 0 ? "In Stock: {$product->stock}" : "Out of Stock"),
            'footer_text' => __tr('Select an option below'),
            'buttons' => [
                __tr('Add to Cart'),
                __tr('View More Products')
            ]
        ];

        $result = $this->whatsAppApiService->sendInteractiveMessage($contactNumber, $messageData);

        if (isset($result['error'])) {
            return $this->engineFailedResponse([], $result['error']['message'] ?? __tr('Failed to send product details'));
        }

        return $this->engineSuccessResponse([
            'message_id' => $result['messages'][0]['id'] ?? null
        ], __tr('Product details sent successfully'));
    }

    /**
     * Send cart confirmation via WhatsApp
     *
     * @param string $contactNumber
     * @param int $contactId
     * @return mixed
     */
    public function sendWhatsAppCartConfirmation($contactNumber, $contactId)
    {
        $cartEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        $cart = $cartEngine->getCart($contactId);

        if (!$cart || empty($cart['items'])) {
            return $this->engineFailedResponse([], __tr('No items in cart'));
        }

        // Format cart items as a message
        $messageText = __tr('Your Shopping Cart') . "\n\n";
        
        foreach ($cart['items'] as $item) {
            $itemTotal = formatAmount($item['price'] * $item['quantity'], true);
            $messageText .= "{$item['name']} x {$item['quantity']} - {$itemTotal}\n";
        }
        
        $messageText .= "\n" . __tr('Total: ') . formatAmount($cart['total'], true);

        // Send interactive message with cart details and checkout button
        $messageData = [
            'interactive_type' => 'button',
            'header_text' => __tr('Your Shopping Cart'),
            'body_text' => $messageText,
            'footer_text' => __tr('Select an option below'),
            'buttons' => [
                __tr('Checkout'),
                __tr('Continue Shopping'),
                __tr('Empty Cart')
            ]
        ];

        $result = $this->whatsAppApiService->sendInteractiveMessage($contactNumber, $messageData);

        if (isset($result['error'])) {
            return $this->engineFailedResponse([], $result['error']['message'] ?? __tr('Failed to send cart confirmation'));
        }

        return $this->engineSuccessResponse([
            'message_id' => $result['messages'][0]['id'] ?? null
        ], __tr('Cart confirmation sent successfully'));
    }

    /**
     * Send order confirmation via WhatsApp
     *
     * @param string $contactNumber
     * @param int $orderId
     * @return mixed
     */
    public function sendWhatsAppOrderConfirmation($contactNumber, $orderId)
    {
        $order = $this->orderRepository->findById($orderId);

        if (!$order) {
            return $this->engineFailedResponse([], __tr('Order not found'));
        }

        $orderItems = $this->orderRepository->getOrderItems($orderId);

        // Format order details as a message
        $messageText = __tr('Order Confirmation') . "\n\n";
        $messageText .= __tr('Order Number: ') . $order->order_number . "\n";
        $messageText .= __tr('Date: ') . $order->created_at->format('Y-m-d H:i') . "\n\n";
        
        $messageText .= __tr('Items:') . "\n";
        foreach ($orderItems as $item) {
            $itemTotal = formatAmount($item->price * $item->quantity, true);
            $messageText .= "{$item->product_name} x {$item->quantity} - {$itemTotal}\n";
        }
        
        $messageText .= "\n" . __tr('Total: ') . formatAmount($order->total_amount, true);
        $messageText .= "\n\n" . __tr('Payment Status: ') . $this->getPaymentStatusText($order->payment_status);
        $messageText .= "\n" . __tr('Order Status: ') . $this->getOrderStatusText($order->status);

        // Send text message with order confirmation
        $result = $this->whatsAppApiService->sendMessage($contactNumber, $messageText);

        if (isset($result['error'])) {
            return $this->engineFailedResponse([], $result['error']['message'] ?? __tr('Failed to send order confirmation'));
        }

        return $this->engineSuccessResponse([
            'message_id' => $result['messages'][0]['id'] ?? null
        ], __tr('Order confirmation sent successfully'));
    }

    /**
     * Get product catalog
     *
     * @return mixed
     */
    public function getProductCatalog()
    {
        $products = $this->productRepository->fetchAll([
            'status' => 1, // active products
            'vendor_id' => getVendorId()
        ]);

        return $this->engineSuccessResponse([
            'products' => $products
        ]);
    }

    /**
     * Get product details
     *
     * @param int $productId
     * @return mixed
     */
    public function getProductDetails($productId)
    {
        $product = $this->productRepository->findById($productId);

        if (!$product) {
            return $this->engineFailedResponse([], __tr('Product not found'));
        }

        return $this->engineSuccessResponse([
            'product' => $product
        ]);
    }

    /**
     * Add product to cart
     *
     * @param int $contactId
     * @param int $productId
     * @param int $quantity
     * @return mixed
     */
    public function addToCart($contactId, $productId, $quantity = 1)
    {
        $eCommerceEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        return $eCommerceEngine->addToCart($contactId, $productId, $quantity);
    }

    /**
     * Get cart contents
     *
     * @param int $contactId
     * @return mixed
     */
    public function getCart($contactId)
    {
        $eCommerceEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        return $eCommerceEngine->getCart($contactId);
    }

    /**
     * Update cart item
     *
     * @param int $contactId
     * @param int $cartItemId
     * @param int $quantity
     * @return mixed
     */
    public function updateCartItem($contactId, $cartItemId, $quantity)
    {
        $eCommerceEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        return $eCommerceEngine->updateCartItem($contactId, $cartItemId, $quantity);
    }

    /**
     * Remove item from cart
     *
     * @param int $contactId
     * @param int $cartItemId
     * @return mixed
     */
    public function removeCartItem($contactId, $cartItemId)
    {
        $eCommerceEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        return $eCommerceEngine->removeCartItem($contactId, $cartItemId);
    }

    /**
     * Process checkout
     *
     * @param int $contactId
     * @param array $orderData
     * @return mixed
     */
    public function processCheckout($contactId, $orderData)
    {
        $eCommerceEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        return $eCommerceEngine->processCheckout($contactId, $orderData);
    }

    /**
     * Get order status
     *
     * @param int $orderId
     * @return mixed
     */
    public function getOrderStatus($orderId)
    {
        $eCommerceEngine = app('App\Yantrana\Components\ECommerce\ECommerceEngine');
        return $eCommerceEngine->getOrderStatus($orderId);
    }

    /**
     * Get text representation of payment status
     * 
     * @param int $status
     * @return string
     */
    protected function getPaymentStatusText($status)
    {
        $statusMap = [
            1 => __tr('Pending'),
            2 => __tr('Paid'),
            3 => __tr('Failed'),
            4 => __tr('Refunded')
        ];

        return $statusMap[$status] ?? __tr('Unknown');
    }

    /**
     * Get text representation of order status
     * 
     * @param int $status
     * @return string
     */
    protected function getOrderStatusText($status)
    {
        $statusMap = [
            1 => __tr('Pending'),
            2 => __tr('Processing'),
            3 => __tr('Shipped'),
            4 => __tr('Delivered'),
            5 => __tr('Cancelled')
        ];

        return $statusMap[$status] ?? __tr('Unknown');
    }
} 