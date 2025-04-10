<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEcommerceTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Products table
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('_id');
            $table->string('_uid')->unique();
            $table->string('name');
            $table->text('description')->nullable();
            $table->decimal('price', 10, 2);
            $table->decimal('sale_price', 10, 2)->nullable();
            $table->string('sku')->nullable();
            $table->integer('stock')->default(0);
            $table->string('image')->nullable();
            $table->tinyInteger('status')->default(1); // 1: Active, 2: Inactive
            $table->unsignedBigInteger('vendors__id');
            $table->json('__data')->nullable();
            $table->timestamps();
            
            $table->foreign('vendors__id')
                ->references('_id')
                ->on('vendors')
                ->onDelete('cascade');
        });

        // Carts table
        Schema::create('carts', function (Blueprint $table) {
            $table->bigIncrements('_id');
            $table->string('_uid')->unique();
            $table->unsignedBigInteger('contacts__id');
            $table->tinyInteger('status')->default(1); // 1: Active, 2: Inactive, 3: Converted to order
            $table->unsignedBigInteger('vendors__id');
            $table->json('__data')->nullable();
            $table->timestamps();
            
            $table->foreign('contacts__id')
                ->references('_id')
                ->on('contacts')
                ->onDelete('cascade');
                
            $table->foreign('vendors__id')
                ->references('_id')
                ->on('vendors')
                ->onDelete('cascade');
        });

        // Cart items table
        Schema::create('cart_items', function (Blueprint $table) {
            $table->bigIncrements('_id');
            $table->string('_uid')->unique();
            $table->unsignedBigInteger('carts__id');
            $table->unsignedBigInteger('products__id');
            $table->integer('quantity');
            $table->decimal('price', 10, 2);
            $table->json('__data')->nullable();
            $table->timestamps();
            
            $table->foreign('carts__id')
                ->references('_id')
                ->on('carts')
                ->onDelete('cascade');
                
            $table->foreign('products__id')
                ->references('_id')
                ->on('products')
                ->onDelete('cascade');
        });

        // Orders table
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('_id');
            $table->string('_uid')->unique();
            $table->string('order_number')->unique();
            $table->unsignedBigInteger('contacts__id');
            $table->decimal('total_amount', 10, 2);
            $table->tinyInteger('status')->default(1); // 1: Pending, 2: Processing, 3: Shipped, 4: Delivered, 5: Cancelled
            $table->tinyInteger('payment_status')->default(1); // 1: Pending, 2: Paid, 3: Failed, 4: Refunded
            $table->text('shipping_address')->nullable();
            $table->text('billing_address')->nullable();
            $table->unsignedBigInteger('vendors__id');
            $table->json('__data')->nullable();
            $table->timestamps();
            
            $table->foreign('contacts__id')
                ->references('_id')
                ->on('contacts')
                ->onDelete('cascade');
                
            $table->foreign('vendors__id')
                ->references('_id')
                ->on('vendors')
                ->onDelete('cascade');
        });

        // Order items table
        Schema::create('order_items', function (Blueprint $table) {
            $table->bigIncrements('_id');
            $table->string('_uid')->unique();
            $table->unsignedBigInteger('orders__id');
            $table->unsignedBigInteger('products__id');
            $table->string('product_name');
            $table->integer('quantity');
            $table->decimal('price', 10, 2);
            $table->json('__data')->nullable();
            $table->timestamps();
            
            $table->foreign('orders__id')
                ->references('_id')
                ->on('orders')
                ->onDelete('cascade');
                
            $table->foreign('products__id')
                ->references('_id')
                ->on('products')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_items');
        Schema::dropIfExists('orders');
        Schema::dropIfExists('cart_items');
        Schema::dropIfExists('carts');
        Schema::dropIfExists('products');
    }
} 