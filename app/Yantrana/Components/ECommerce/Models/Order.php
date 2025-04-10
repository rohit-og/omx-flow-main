<?php
/**
* Order.php - Model file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Models;

use App\Yantrana\Base\BaseModel;

class Order extends BaseModel
{
    /**
     * @var string - The database table name
     */
    protected $table = 'orders';

    /**
     * @var array - The attributes that should be casted to native types.
     */
    protected $casts = [
        '_id' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'contacts__id' => 'integer',
        'total_amount' => 'float',
        'status' => 'integer',
        '__data' => 'array'
    ];

    /**
     * @var array - The attributes that are mass assignable.
     */
    protected $fillable = [
        'order_number',
        'contacts__id',
        'total_amount',
        'status',
        'payment_status',
        'shipping_address',
        'billing_address',
        'vendors__id',
        '__data'
    ];

    /**
     * Order status constants
     */
    const STATUS_PENDING = 1;
    const STATUS_PROCESSING = 2;
    const STATUS_SHIPPED = 3;
    const STATUS_DELIVERED = 4;
    const STATUS_CANCELLED = 5;

    /**
     * Payment status constants
     */
    const PAYMENT_PENDING = 1;
    const PAYMENT_PAID = 2;
    const PAYMENT_FAILED = 3;
    const PAYMENT_REFUNDED = 4;
} 