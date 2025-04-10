<?php

namespace App\Yantrana\Components\ECommerce\Controllers;

use App\Http\Controllers\Controller;
use App\Yantrana\Components\ECommerce\ECommerceEngine;
use App\Yantrana\Components\ECommerce\Repositories\ProductRepository;
use App\Yantrana\Components\ECommerce\Repositories\OrderRepository;
use Illuminate\Http\Request;

class ECommerceController extends Controller
{
    /**
     * @var ECommerceEngine $eCommerceEngine - ECommerce Engine
     */
    protected $eCommerceEngine;

    /**
     * @var ProductRepository $productRepository - Product Repository
     */
    protected $productRepository;

    /**
     * @var OrderRepository $orderRepository - Order Repository
     */
    protected $orderRepository;

    /**
     * Constructor
     * 
     * @param ECommerceEngine $eCommerceEngine - ECommerce Engine
     *-----------------------------------------------------------------------*/
    public function __construct(
        ECommerceEngine $eCommerceEngine,
        ProductRepository $productRepository,
        OrderRepository $orderRepository
    ) {
        $this->eCommerceEngine = $eCommerceEngine;
        $this->productRepository = $productRepository;
        $this->orderRepository = $orderRepository;
    }

    /**
     * Show the eCommerce dashboard
     *
     * @return \Illuminate\View\View
     */
    public function showDashboard()
    {
        return $this->loadView('dashboard');
    }

    /**
     * Show the products list
     *
     * @return \Illuminate\View\View
     */
    public function showProducts()
    {
        return $this->loadView('products.list');
    }

    /**
     * Show the product create form
     *
     * @return \Illuminate\View\View
     */
    public function showProductCreate()
    {
        return $this->loadView('products.create');
    }

    /**
     * Process the product create
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function processProductCreate(Request $request)
    {
        // Validate request
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric|min:0',
            'sale_price' => 'nullable|numeric|min:0',
            'sku' => 'nullable|string|max:100',
            'stock' => 'required|integer|min:0',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'required|integer|in:1,2',
        ]);

        $inputData = $request->all();
        $inputData['vendors__id'] = getVendorId();
        
        // Handle image upload
        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('storage/products'), $imageName);
            $inputData['image'] = 'storage/products/' . $imageName;
        }

        $product = $this->productRepository->store($inputData);

        if (!$product) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Failed to create product.')]
                )
            );
        }

        return $this->responseAction(
            $this->processResponse(
                $this->engineSuccessResponse(),
                [],
                [__tr('Product created successfully.')]
            ),
            $this->redirectTo('vendor.ecommerce.products')
        );
    }

    /**
     * Show product edit page
     *
     * @param string $productId
     * @return \Illuminate\View\View
     */
    public function showProductEdit($productId)
    {
        $product = $this->productRepository->findById($productId);

        if (!$product) {
            return redirect()->route('vendor.ecommerce.products')
                ->with('error', __tr('Product not found.'));
        }

        return $this->loadView('products.edit', compact('product'));
    }

    /**
     * Process the product update
     *
     * @param Request $request
     * @param string $productId
     * @return \Illuminate\Http\JsonResponse
     */
    public function processProductUpdate(Request $request, $productId)
    {
        // Validate request
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric|min:0',
            'sale_price' => 'nullable|numeric|min:0',
            'sku' => 'nullable|string|max:100',
            'stock' => 'required|integer|min:0',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'required|integer|in:1,2',
        ]);

        $product = $this->productRepository->findById($productId);

        if (!$product) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Product not found.')]
                )
            );
        }

        $inputData = $request->except('_token');
        
        // Handle image upload
        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('storage/products'), $imageName);
            $inputData['image'] = 'storage/products/' . $imageName;
        }

        $updated = $this->productRepository->update($product, $inputData);

        if (!$updated) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Failed to update product.')]
                )
            );
        }

        return $this->responseAction(
            $this->processResponse(
                $this->engineSuccessResponse(),
                [],
                [__tr('Product updated successfully.')]
            ),
            $this->redirectTo('vendor.ecommerce.products')
        );
    }

    /**
     * Delete a product
     *
     * @param string $productId
     * @return \Illuminate\Http\JsonResponse
     */
    public function processProductDelete($productId)
    {
        $product = $this->productRepository->findById($productId);

        if (!$product) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Product not found.')]
                )
            );
        }

        $deleted = $this->productRepository->delete($product);

        if (!$deleted) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Failed to delete product.')]
                )
            );
        }

        return $this->responseAction(
            $this->processResponse(
                $this->engineSuccessResponse(),
                [],
                [__tr('Product deleted successfully.')]
            ),
            $this->redirectTo('vendor.ecommerce.products')
        );
    }

    /**
     * Show the orders list
     *
     * @return \Illuminate\View\View
     */
    public function showOrders()
    {
        return $this->loadView('orders.list');
    }

    /**
     * Show order details
     *
     * @param string $orderId
     * @return \Illuminate\View\View
     */
    public function showOrderDetails($orderId)
    {
        $order = $this->orderRepository->findById($orderId);

        if (!$order) {
            return redirect()->route('vendor.ecommerce.orders')
                ->with('error', __tr('Order not found.'));
        }

        $orderItems = $this->orderRepository->getOrderItems($orderId);

        return $this->loadView('orders.details', compact('order', 'orderItems'));
    }

    /**
     * Update order status
     *
     * @param Request $request
     * @param string $orderId
     * @return \Illuminate\Http\JsonResponse
     */
    public function processOrderStatusUpdate(Request $request, $orderId)
    {
        // Validate request
        $request->validate([
            'status' => 'required|integer|in:1,2,3,4,5',
        ]);

        $order = $this->orderRepository->findById($orderId);

        if (!$order) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Order not found.')]
                )
            );
        }

        $updated = $this->orderRepository->updateOrderStatus($orderId, $request->status);

        if (!$updated) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Failed to update order status.')]
                )
            );
        }

        return $this->responseAction(
            $this->processResponse(
                $this->engineSuccessResponse(),
                [],
                [__tr('Order status updated successfully.')]
            ),
            $this->redirectTo('vendor.ecommerce.order.details', ['orderId' => $orderId])
        );
    }

    /**
     * Update payment status
     *
     * @param Request $request
     * @param string $orderId
     * @return \Illuminate\Http\JsonResponse
     */
    public function processPaymentStatusUpdate(Request $request, $orderId)
    {
        // Validate request
        $request->validate([
            'payment_status' => 'required|integer|in:1,2,3,4',
        ]);

        $order = $this->orderRepository->findById($orderId);

        if (!$order) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Order not found.')]
                )
            );
        }

        $updated = $this->orderRepository->updatePaymentStatus($orderId, $request->payment_status);

        if (!$updated) {
            return $this->responseAction(
                $this->processResponse(
                    $this->engineFailedResponse(),
                    [],
                    [__tr('Failed to update payment status.')]
                )
            );
        }

        return $this->responseAction(
            $this->processResponse(
                $this->engineSuccessResponse(),
                [],
                [__tr('Payment status updated successfully.')]
            ),
            $this->redirectTo('vendor.ecommerce.order.details', ['orderId' => $orderId])
        );
    }

    /**
     * Get the products data for the datatable
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getProductsData(Request $request)
    {
        $options = [
            'vendor_id' => getVendorId(),
            'order_by' => $request->input('order.0.column', 'created_at'),
            'order_direction' => $request->input('order.0.dir', 'desc'),
        ];

        // Add search if provided
        if ($request->has('search.value') && !empty($request->input('search.value'))) {
            $options['search'] = $request->input('search.value');
        }

        // Get products
        $products = $this->productRepository->fetchAll($options);

        $dataTableData = $this->engineReaction(1, [
            'productsData' => $products,
        ]);

        return $this->processResponse($dataTableData, [], [], true);
    }

    /**
     * Get the orders data for the datatable
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getOrdersData(Request $request)
    {
        $vendorId = getVendorId();
        $searchValue = $request->input('search.value');
        
        $query = \App\Yantrana\Components\ECommerce\Models\Order::where('vendors__id', $vendorId);
        
        // Apply search
        if (!empty($searchValue)) {
            $query->where(function($q) use ($searchValue) {
                $q->where('order_number', 'like', '%' . $searchValue . '%')
                  ->orWhere('total_amount', 'like', '%' . $searchValue . '%');
            });
        }
        
        $recordsTotal = $query->count();
        $recordsFiltered = $recordsTotal;
        
        // Apply ordering
        $orderColumn = $request->input('order.0.column', 0);
        $orderDir = $request->input('order.0.dir', 'desc');
        $columns = ['_id', 'order_number', 'total_amount', 'status', 'payment_status', 'created_at'];
        
        if (isset($columns[$orderColumn])) {
            $query->orderBy($columns[$orderColumn], $orderDir);
        } else {
            $query->orderBy('created_at', 'desc');
        }
        
        // Apply pagination
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $query->skip($start)->take($length);
        
        $orders = $query->get();
        
        $formattedOrders = $orders->map(function($order) {
            $contact = \App\Yantrana\Components\Contact\Models\Contact::find($order->contacts__id);
            
            return [
                'DT_RowId' => $order->_id,
                'order_number' => $order->order_number,
                'customer' => $contact ? ($contact->first_name . ' ' . $contact->last_name) : 'Unknown',
                'total_amount' => formatAmount($order->total_amount, true),
                'status' => $this->getOrderStatusLabel($order->status),
                'payment_status' => $this->getPaymentStatusLabel($order->payment_status),
                'created_at' => formatDateTime($order->created_at),
                'actions' => route('vendor.ecommerce.order.details', ['orderId' => $order->_id])
            ];
        });
        
        return response()->json([
            'draw' => $request->input('draw'),
            'recordsTotal' => $recordsTotal,
            'recordsFiltered' => $recordsFiltered,
            'data' => $formattedOrders
        ]);
    }
    
    /**
     * Get order status label with appropriate styling
     *
     * @param int $status
     * @return string
     */
    private function getOrderStatusLabel($status)
    {
        $statusMap = [
            1 => ['label' => __tr('Pending'), 'class' => 'badge-warning'],
            2 => ['label' => __tr('Processing'), 'class' => 'badge-info'],
            3 => ['label' => __tr('Shipped'), 'class' => 'badge-primary'],
            4 => ['label' => __tr('Delivered'), 'class' => 'badge-success'],
            5 => ['label' => __tr('Cancelled'), 'class' => 'badge-danger'],
        ];
        
        $status = $statusMap[$status] ?? ['label' => __tr('Unknown'), 'class' => 'badge-secondary'];
        
        return '<span class="badge ' . $status['class'] . '">' . $status['label'] . '</span>';
    }
    
    /**
     * Get payment status label with appropriate styling
     *
     * @param int $status
     * @return string
     */
    private function getPaymentStatusLabel($status)
    {
        $statusMap = [
            1 => ['label' => __tr('Pending'), 'class' => 'badge-warning'],
            2 => ['label' => __tr('Paid'), 'class' => 'badge-success'],
            3 => ['label' => __tr('Failed'), 'class' => 'badge-danger'],
            4 => ['label' => __tr('Refunded'), 'class' => 'badge-info'],
        ];
        
        $status = $statusMap[$status] ?? ['label' => __tr('Unknown'), 'class' => 'badge-secondary'];
        
        return '<span class="badge ' . $status['class'] . '">' . $status['label'] . '</span>';
    }
} 