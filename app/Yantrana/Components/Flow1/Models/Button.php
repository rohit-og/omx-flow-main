<?php

namespace App\Yantrana\Components\Flow\Models;

use App\Yantrana\Base\BaseModel;

class Button extends BaseModel
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'whatsapp_flow_buttons';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'screen_id',
        'text',
        'type',
        'next_screen_id',
        'action',
        'action_value'
    ];

    /**
     * Get the screen that owns the button.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function screen()
    {
        return $this->belongsTo(Screen::class);
    }

    /**
     * Get the next screen for this button.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function nextScreen()
    {
        return $this->belongsTo(Screen::class, 'next_screen_id');
    }
} 