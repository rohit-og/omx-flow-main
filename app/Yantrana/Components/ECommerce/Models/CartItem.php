<?php
/**
* CartItem.php - Model file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Models;

use App\Yantrana\Base\BaseModel;

class CartItem extends BaseModel
{
    /**
     * @var string - The database table name
     */
    protected $table = 'cart_items';

    /**
     * @var array - The attributes that should be casted to native types.
     */
    protected $casts = [
        '_id' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'carts__id' => 'integer',
        'products__id' => 'integer',
        'quantity' => 'integer',
        'price' => 'float',
        '__data' => 'array'
    ];

    /**
     * @var array - The attributes that are mass assignable.
     */
    protected $fillable = [
        'carts__id',
        'products__id',
        'quantity',
        'price',
        '__data'
    ];
} 