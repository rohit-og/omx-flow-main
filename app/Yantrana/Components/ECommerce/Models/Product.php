<?php
/**
* Product.php - Model file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Models;

use App\Yantrana\Base\BaseModel;

class Product extends BaseModel
{
    /**
     * @var string - The database table name
     */
    protected $table = 'products';

    /**
     * @var array - The attributes that should be casted to native types.
     */
    protected $casts = [
        '_id' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'price' => 'float',
        'sale_price' => 'float',
        'status' => 'integer',
        '__data' => 'array'
    ];

    /**
     * @var array - The attributes that are mass assignable.
     */
    protected $fillable = [
        'name', 
        'description', 
        'price', 
        'sale_price', 
        'sku',
        'stock',
        'image',
        'status',
        'vendors__id',
        '__data'
    ];
} 