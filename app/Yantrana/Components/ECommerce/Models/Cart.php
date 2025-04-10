<?php
/**
* Cart.php - Model file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Models;

use App\Yantrana\Base\BaseModel;

class Cart extends BaseModel
{
    /**
     * @var string - The database table name
     */
    protected $table = 'carts';

    /**
     * @var array - The attributes that should be casted to native types.
     */
    protected $casts = [
        '_id' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'contacts__id' => 'integer',
        '__data' => 'array'
    ];

    /**
     * @var array - The attributes that are mass assignable.
     */
    protected $fillable = [
        'contacts__id',
        'status',
        'vendors__id',
        '__data'
    ];
} 