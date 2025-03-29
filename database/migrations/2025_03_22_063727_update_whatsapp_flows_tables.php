<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Drop existing tables if they exist
        Schema::dropIfExists('whatsapp_flow_buttons');
        Schema::dropIfExists('whatsapp_flow_screens');
        Schema::dropIfExists('whatsapp_flows');

        // Create flows table
        Schema::create('whatsapp_flows', function (Blueprint $table) {
            $table->increments('_id');
            $table->uuid('_uid')->unique();
            $table->string('name');
            $table->text('description')->nullable();
            $table->enum('category', ['CUSTOMER_SUPPORT', 'MARKETING', 'UTILITY'])->default('UTILITY');
            $table->enum('status', ['draft', 'published'])->default('draft');
            $table->timestamp('published_at')->nullable();
            $table->unsignedInteger('created_by');
            $table->unsignedInteger('updated_by')->nullable();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('created_by')->references('_id')->on('users')->onDelete('cascade');
            $table->foreign('updated_by')->references('_id')->on('users')->onDelete('set null');
        });

        // Create screens table
        Schema::create('whatsapp_flow_screens', function (Blueprint $table) {
            $table->increments('_id');
            $table->uuid('_uid')->unique();
            $table->unsignedInteger('flow_id');
            $table->string('name');
            $table->enum('screen_type', ['TEXT', 'LIST', 'FORM'])->default('TEXT');
            $table->text('content');
            $table->string('footer', 60)->nullable();
            $table->integer('position')->default(1);
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('flow_id')
                  ->references('_id')
                  ->on('whatsapp_flows')
                  ->onDelete('cascade');
        });

        // Create buttons table
        Schema::create('whatsapp_flow_buttons', function (Blueprint $table) {
            $table->increments('_id');
            $table->uuid('_uid')->unique();
            $table->unsignedInteger('screen_id');
            $table->string('text', 20);
            $table->enum('button_type', ['NEXT', 'URL', 'PHONE'])->default('NEXT');
            $table->unsignedInteger('next_screen_id')->nullable();
            $table->string('url')->nullable();
            $table->string('phone_number')->nullable();
            $table->integer('position')->default(1);
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('screen_id')
                  ->references('_id')
                  ->on('whatsapp_flow_screens')
                  ->onDelete('cascade');
            
            $table->foreign('next_screen_id')
                  ->references('_id')
                  ->on('whatsapp_flow_screens')
                  ->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('whatsapp_flow_buttons');
        Schema::dropIfExists('whatsapp_flow_screens');
        Schema::dropIfExists('whatsapp_flows');
    }
};
