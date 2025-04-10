<?php
/**
* OrderItem.php - Model file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Models;

use App\Yantrana\Base\BaseModel;

class OrderItem extends BaseModel
{
    /**
     * @var string - The database table name
     */
    protected $table = 'order_items';

    /**
     * @var array - The attributes that should be casted to native types.
     */
    protected $casts = [
        '_id' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'orders__id' => 'integer',
        'products__id' => 'integer',
        'quantity' => 'integer',
        'price' => 'float',
        '__data' => 'array'
    ];

    /**
     * @var array - The attributes that are mass assignable.
     */
    protected $fillable = [
        'orders__id',
        'products__id',
        'product_name',
        'quantity',
        'price',
        '__data'
    ];
} 