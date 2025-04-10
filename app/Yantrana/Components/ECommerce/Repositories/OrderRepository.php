<?php
/**
* OrderRepository.php - Repository file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Repositories;

use App\Yantrana\Base\BaseRepository;
use App\Yantrana\Components\ECommerce\Models\Order;
use App\Yantrana\Components\ECommerce\Models\OrderItem;

class OrderRepository extends BaseRepository
{
    /**
     * @var OrderItem
     */
    protected $orderItemModel;

    /**
     * Constructor.
     *
     * @param Order $order - Order Model
     * @param OrderItem $orderItem - OrderItem Model
     *-----------------------------------------------------------------------*/
    public function __construct(Order $order, OrderItem $orderItem)
    {
        $this->model = $order;
        $this->orderItemModel = $orderItem;
    }

    /**
     * Create a new order
     *
     * @param array $orderData
     * @return mixed
     */
    public function createOrder($orderData)
    {
        return $this->model->create($orderData);
    }

    /**
     * Add order item
     *
     * @param array $itemData
     * @return mixed
     */
    public function addOrderItem($itemData)
    {
        return $this->orderItemModel->create($itemData);
    }

    /**
     * Find order by ID
     *
     * @param int $orderId
     * @return mixed
     */
    public function findById($orderId)
    {
        return $this->model->find($orderId);
    }

    /**
     * Get order items
     *
     * @param int $orderId
     * @return mixed
     */
    public function getOrderItems($orderId)
    {
        return $this->orderItemModel
            ->where('orders__id', $orderId)
            ->get();
    }

    /**
     * Update order status
     *
     * @param int $orderId
     * @param int $status
     * @return bool
     */
    public function updateOrderStatus($orderId, $status)
    {
        $order = $this->findById($orderId);
        
        if (!$order) {
            return false;
        }
        
        $order->status = $status;
        return $order->save();
    }

    /**
     * Update payment status
     *
     * @param int $orderId
     * @param int $paymentStatus
     * @return bool
     */
    public function updatePaymentStatus($orderId, $paymentStatus)
    {
        $order = $this->findById($orderId);
        
        if (!$order) {
            return false;
        }
        
        $order->payment_status = $paymentStatus;
        return $order->save();
    }

    /**
     * Generate unique order number
     *
     * @return string
     */
    public function generateOrderNumber()
    {
        return 'ORD-' . strtoupper(uniqid());
    }

    /**
     * Get orders for a contact
     *
     * @param int $contactId
     * @param array $options
     * @return mixed
     */
    public function getOrdersForContact($contactId, $options = [])
    {
        $query = $this->model
            ->where('contacts__id', $contactId);

        // Apply ordering
        $query->orderBy($options['order_by'] ?? 'created_at', $options['order_direction'] ?? 'desc');

        // Apply pagination if required
        if (isset($options['paginate']) && $options['paginate']) {
            return $query->paginate($options['items_per_page'] ?? 10);
        }

        // Get the results
        return $query->get();
    }
} 