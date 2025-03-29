<?php

namespace App\Yantrana\Components\Flow\Models;

use App\Yantrana\Base\BaseModel;

class Screen extends BaseModel
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'whatsapp_flow_screens';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'flow_id',
        'name',
        'screen_type',
        'content',
        'footer',
        'position'
    ];

    /**
     * The relationships that should always be loaded.
     *
     * @var array
     */
    protected $with = ['buttons'];

    /**
     * Get the flow that owns the screen.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function flow()
    {
        return $this->belongsTo(Flow::class);
    }

    /**
     * Get the buttons for the screen.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function buttons()
    {
        return $this->hasMany(Button::class);
    }
} 