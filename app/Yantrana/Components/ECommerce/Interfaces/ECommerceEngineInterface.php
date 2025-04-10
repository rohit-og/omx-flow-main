<?php
/**
* ECommerceEngineInterface.php - Interface file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Interfaces;

interface ECommerceEngineInterface
{
    /**
     * Get product catalog
     *
     * @return mixed
     */
    public function getProductCatalog();

    /**
     * Get product details
     *
     * @param int $productId
     * @return mixed
     */
    public function getProductDetails($productId);

    /**
     * Add product to cart
     *
     * @param int $contactId
     * @param int $productId
     * @param int $quantity
     * @return mixed
     */
    public function addToCart($contactId, $productId, $quantity = 1);

    /**
     * Get cart contents
     *
     * @param int $contactId
     * @return mixed
     */
    public function getCart($contactId);

    /**
     * Update cart item
     *
     * @param int $contactId
     * @param int $cartItemId
     * @param int $quantity
     * @return mixed
     */
    public function updateCartItem($contactId, $cartItemId, $quantity);

    /**
     * Remove item from cart
     *
     * @param int $contactId
     * @param int $cartItemId
     * @return mixed
     */
    public function removeCartItem($contactId, $cartItemId);

    /**
     * Process checkout
     *
     * @param int $contactId
     * @param array $orderData
     * @return mixed
     */
    public function processCheckout($contactId, $orderData);

    /**
     * Get order status
     *
     * @param int $orderId
     * @return mixed
     */
    public function getOrderStatus($orderId);

    /**
     * Send WhatsApp product catalog
     *
     * @param string $contactNumber
     * @return mixed
     */
    public function sendWhatsAppProductCatalog($contactNumber);

    /**
     * Send WhatsApp product details
     *
     * @param string $contactNumber
     * @param int $productId
     * @return mixed
     */
    public function sendWhatsAppProductDetails($contactNumber, $productId);

    /**
     * Send WhatsApp cart confirmation
     *
     * @param string $contactNumber
     * @param int $contactId
     * @return mixed
     */
    public function sendWhatsAppCartConfirmation($contactNumber, $contactId);

    /**
     * Send WhatsApp order confirmation
     *
     * @param string $contactNumber
     * @param int $orderId
     * @return mixed
     */
    public function sendWhatsAppOrderConfirmation($contactNumber, $orderId);
} 