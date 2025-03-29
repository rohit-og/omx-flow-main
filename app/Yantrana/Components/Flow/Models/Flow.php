<?php

namespace App\Yantrana\Components\Flow\Models;

use App\Yantrana\Base\BaseModel;

class Flow extends BaseModel
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'whatsapp_flows';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = '_id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        '_uid',
        'name',
        'description',
        'category',
        'status',
        'published_at',
        'created_by',
        'updated_by'
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'published_at' => 'datetime',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'deleted_at' => 'datetime'
    ];

    /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
        'category' => 'UTILITY',
        'status' => 'draft'
    ];

    /**
     * Get the screens associated with the flow.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function screens()
    {
        return $this->hasMany(Screen::class, 'flow_id', '_id')->orderBy('position');
    }

    /**
     * Get all of the buttons for the flow through screens.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasManyThrough
     */
    public function buttons()
    {
        return $this->hasManyThrough(Button::class, Screen::class, 'flow_id', 'screen_id', '_id', '_id');
    }
} 