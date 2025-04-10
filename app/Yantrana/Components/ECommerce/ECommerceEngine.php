<?php
/**
* ECommerceEngine.php - Main component file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce;

use App\Yantrana\Base\BaseEngine;
use App\Yantrana\Components\Contact\Repositories\ContactRepository;
use App\Yantrana\Components\ECommerce\Interfaces\ECommerceEngineInterface;
use App\Yantrana\Components\ECommerce\Repositories\CartRepository;
use App\Yantrana\Components\ECommerce\Repositories\OrderRepository;
use App\Yantrana\Components\ECommerce\Repositories\ProductRepository;
use App\Yantrana\Components\ECommerce\Services\WhatsAppECommerceService;

class ECommerceEngine extends BaseEngine implements ECommerceEngineInterface
{
    /**
     * @var ProductRepository
     */
    protected $productRepository;

    /**
     * @var CartRepository
     */
    protected $cartRepository;

    /**
     * @var OrderRepository
     */
    protected $orderRepository;

    /**
     * @var ContactRepository
     */
    protected $contactRepository;

    /**
     * @var WhatsAppECommerceService
     */
    protected $whatsAppECommerceService;

    /**
     * Constructor.
     *
     * @param ProductRepository $productRepository
     * @param CartRepository $cartRepository
     * @param OrderRepository $orderRepository
     * @param ContactRepository $contactRepository
     * @param WhatsAppECommerceService $whatsAppECommerceService
     *-----------------------------------------------------------------------*/
    public function __construct(
        ProductRepository $productRepository,
        CartRepository $cartRepository,
        OrderRepository $orderRepository,
        ContactRepository $contactRepository,
        WhatsAppECommerceService $whatsAppECommerceService
    ) {
        $this->productRepository = $productRepository;
        $this->cartRepository = $cartRepository;
        $this->orderRepository = $orderRepository;
        $this->contactRepository = $contactRepository;
        $this->whatsAppECommerceService = $whatsAppECommerceService;
    }

    /**
     * Get product catalog
     *
     * @return mixed
     */
    public function getProductCatalog()
    {
        $vendorId = getVendorId();
        $products = $this->productRepository->fetchAll([
            'status' => 1, // Only active products
            'vendor_id' => $vendorId
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
        // Validate contact
        $contact = $this->contactRepository->find($contactId);
        if (!$contact) {
            return $this->engineFailedResponse([], __tr('Contact not found'));
        }

        // Validate product
        $product = $this->productRepository->findById($productId);
        if (!$product) {
            return $this->engineFailedResponse([], __tr('Product not found'));
        }

        // Check if the product is in stock
        if ($product->stock < $quantity) {
            return $this->engineFailedResponse([], __tr('Not enough stock available'));
        }

        // Get or create cart
        $cart = $this->cartRepository->getActiveCart($contactId);
        if (!$cart) {
            $cart = $this->cartRepository->createCart($contactId, getVendorId());
        }

        // Add item to cart
        $cartItem = $this->cartRepository->addCartItem(
            $cart->_id,
            $productId,
            $quantity,
            $product->sale_price ?: $product->price
        );

        return $this->engineSuccessResponse([
            'cart_item' => $cartItem,
            'cart' => $cart
        ], __tr('Product added to cart'));
    }

    /**
     * Get cart contents
     *
     * @param int $contactId
     * @return mixed
     */
    public function getCart($contactId)
    {
        // Get active cart
        $cart = $this->cartRepository->getActiveCart($contactId);
        
        if (!$cart) {
            return $this->engineSuccessResponse([
                'items' => [],
                'total' => 0
            ]);
        }

        // Get cart items
        $cartItems = $this->cartRepository->getCartItems($cart->_id);
        
        // Enrich cart items with product details
        $items = [];
        foreach ($cartItems as $item) {
            $product = $this->productRepository->findById($item->products__id);
            
            if ($product) {
                $items[] = [
                    'id' => $item->_id,
                    'product_id' => $product->_id,
                    'name' => $product->name,
                    'price' => $item->price,
                    'quantity' => $item->quantity,
                    'image' => $product->image,
                    'subtotal' => $item->price * $item->quantity
                ];
            }
        }

        // Calculate total
        $total = $this->cartRepository->calculateCartTotal($cart->_id);

        return $this->engineSuccessResponse([
            'cart_id' => $cart->_id,
            'items' => $items,
            'total' => $total
        ]);
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
        // Get active cart
        $cart = $this->cartRepository->getActiveCart($contactId);
        
        if (!$cart) {
            return $this->engineFailedResponse([], __tr('No active cart found'));
        }

        // Update cart item
        $updatedItem = $this->cartRepository->updateCartItemQuantity($cartItemId, $quantity);
        
        if (!$updatedItem) {
            return $this->engineFailedResponse([], __tr('Cart item not found'));
        }

        // Get updated cart
        return $this->getCart($contactId);
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
        // Get active cart
        $cart = $this->cartRepository->getActiveCart($contactId);
        
        if (!$cart) {
            return $this->engineFailedResponse([], __tr('No active cart found'));
        }

        // Remove cart item
        $removed = $this->cartRepository->removeCartItem($cartItemId);
        
        if (!$removed) {
            return $this->engineFailedResponse([], __tr('Cart item not found'));
        }

        // Get updated cart
        return $this->getCart($contactId);
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
        // Get active cart
        $cart = $this->cartRepository->getActiveCart($contactId);
        
        if (!$cart) {
            return $this->engineFailedResponse([], __tr('No active cart found'));
        }

        // Get cart items
        $cartItems = $this->cartRepository->getCartItems($cart->_id);
        
        if ($cartItems->isEmpty()) {
            return $this->engineFailedResponse([], __tr('Your cart is empty'));
        }

        // Calculate total
        $total = $this->cartRepository->calculateCartTotal($cart->_id);

        // Generate unique order number
        $orderNumber = $this->orderRepository->generateOrderNumber();

        // Create order
        $order = $this->orderRepository->createOrder([
            'order_number' => $orderNumber,
            'contacts__id' => $contactId,
            'total_amount' => $total,
            'status' => 1, // Pending
            'payment_status' => 1, // Pending
            'shipping_address' => $orderData['shipping_address'] ?? null,
            'billing_address' => $orderData['billing_address'] ?? null,
            'vendors__id' => getVendorId(),
            '__data' => [
                'contact_details' => $orderData['contact_details'] ?? null,
                'payment_method' => $orderData['payment_method'] ?? 'cod',
                'notes' => $orderData['notes'] ?? null
            ]
        ]);

        // Add order items
        foreach ($cartItems as $item) {
            $product = $this->productRepository->findById($item->products__id);
            
            if ($product) {
                $this->orderRepository->addOrderItem([
                    'orders__id' => $order->_id,
                    'products__id' => $product->_id,
                    'product_name' => $product->name,
                    'quantity' => $item->quantity,
                    'price' => $item->price,
                    '__data' => [
                        'product_data' => [
                            'sku' => $product->sku,
                            'image' => $product->image
                        ]
                    ]
                ]);

                // Update product stock
                $this->productRepository->update($product, [
                    'stock' => $product->stock - $item->quantity
                ]);
            }
        }

        // Clear the cart
        $this->cartRepository->clearCart($cart->_id);

        // Get contact
        $contact = $this->contactRepository->find($contactId);

        // Send order confirmation via WhatsApp
        if ($contact && !empty($contact->phone_number)) {
            $this->whatsAppECommerceService->sendWhatsAppOrderConfirmation(
                $contact->phone_number,
                $order->_id
            );
        }

        return $this->engineSuccessResponse([
            'order' => $order,
            'order_number' => $orderNumber
        ], __tr('Order placed successfully'));
    }

    /**
     * Get order status
     *
     * @param int $orderId
     * @return mixed
     */
    public function getOrderStatus($orderId)
    {
        $order = $this->orderRepository->findById($orderId);
        
        if (!$order) {
            return $this->engineFailedResponse([], __tr('Order not found'));
        }

        $orderItems = $this->orderRepository->getOrderItems($orderId);

        return $this->engineSuccessResponse([
            'order' => $order,
            'items' => $orderItems
        ]);
    }

    /**
     * Send WhatsApp product catalog
     *
     * @param string $contactNumber
     * @return mixed
     */
    public function sendWhatsAppProductCatalog($contactNumber)
    {
        return $this->whatsAppECommerceService->sendWhatsAppProductCatalog($contactNumber);
    }

    /**
     * Send WhatsApp product details
     *
     * @param string $contactNumber
     * @param int $productId
     * @return mixed
     */
    public function sendWhatsAppProductDetails($contactNumber, $productId)
    {
        return $this->whatsAppECommerceService->sendWhatsAppProductDetails($contactNumber, $productId);
    }

    /**
     * Send WhatsApp cart confirmation
     *
     * @param string $contactNumber
     * @param int $contactId
     * @return mixed
     */
    public function sendWhatsAppCartConfirmation($contactNumber, $contactId)
    {
        return $this->whatsAppECommerceService->sendWhatsAppCartConfirmation($contactNumber, $contactId);
    }

    /**
     * Send WhatsApp order confirmation
     *
     * @param string $contactNumber
     * @param int $orderId
     * @return mixed
     */
    public function sendWhatsAppOrderConfirmation($contactNumber, $orderId)
    {
        return $this->whatsAppECommerceService->sendWhatsAppOrderConfirmation($contactNumber, $orderId);
    }
} 