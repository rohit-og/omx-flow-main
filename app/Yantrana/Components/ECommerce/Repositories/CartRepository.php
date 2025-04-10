<?php
/**
* CartRepository.php - Repository file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Repositories;

use App\Yantrana\Base\BaseRepository;
use App\Yantrana\Components\ECommerce\Models\Cart;
use App\Yantrana\Components\ECommerce\Models\CartItem;

class CartRepository extends BaseRepository
{
    /**
     * @var CartItem
     */
    protected $cartItemModel;

    /**
     * Constructor.
     *
     * @param Cart $cart - Cart Model
     * @param CartItem $cartItem - CartItem Model
     *-----------------------------------------------------------------------*/
    public function __construct(Cart $cart, CartItem $cartItem)
    {
        $this->model = $cart;
        $this->cartItemModel = $cartItem;
    }

    /**
     * Get active cart for a contact
     *
     * @param int $contactId
     * @return mixed
     */
    public function getActiveCart($contactId)
    {
        return $this->model
            ->where('contacts__id', $contactId)
            ->where('status', 1) // Active status
            ->first();
    }

    /**
     * Create a new cart for a contact
     *
     * @param int $contactId
     * @param int $vendorId
     * @return mixed
     */
    public function createCart($contactId, $vendorId)
    {
        return $this->model->create([
            'contacts__id' => $contactId,
            'status' => 1, // Active status
            'vendors__id' => $vendorId,
            '__data' => []
        ]);
    }

    /**
     * Add item to cart
     *
     * @param int $cartId
     * @param int $productId
     * @param int $quantity
     * @param float $price
     * @return mixed
     */
    public function addCartItem($cartId, $productId, $quantity, $price)
    {
        // Check if product already in cart
        $existingItem = $this->cartItemModel
            ->where('carts__id', $cartId)
            ->where('products__id', $productId)
            ->first();

        if ($existingItem) {
            // Update quantity of existing item
            $existingItem->quantity += $quantity;
            $existingItem->save();
            return $existingItem;
        }

        // Add new item to cart
        return $this->cartItemModel->create([
            'carts__id' => $cartId,
            'products__id' => $productId,
            'quantity' => $quantity,
            'price' => $price,
            '__data' => []
        ]);
    }

    /**
     * Update cart item quantity
     *
     * @param int $cartItemId
     * @param int $quantity
     * @return mixed
     */
    public function updateCartItemQuantity($cartItemId, $quantity)
    {
        $cartItem = $this->cartItemModel->find($cartItemId);
        
        if (!$cartItem) {
            return false;
        }
        
        $cartItem->quantity = $quantity;
        $cartItem->save();
        
        return $cartItem;
    }

    /**
     * Remove item from cart
     *
     * @param int $cartItemId
     * @return bool
     */
    public function removeCartItem($cartItemId)
    {
        $cartItem = $this->cartItemModel->find($cartItemId);
        
        if (!$cartItem) {
            return false;
        }
        
        return $cartItem->delete();
    }

    /**
     * Get cart items
     *
     * @param int $cartId
     * @return mixed
     */
    public function getCartItems($cartId)
    {
        return $this->cartItemModel
            ->where('carts__id', $cartId)
            ->get();
    }

    /**
     * Clear cart (remove all items)
     *
     * @param int $cartId
     * @return bool
     */
    public function clearCart($cartId)
    {
        return $this->cartItemModel
            ->where('carts__id', $cartId)
            ->delete();
    }

    /**
     * Calculate cart total
     *
     * @param int $cartId
     * @return float
     */
    public function calculateCartTotal($cartId)
    {
        return $this->cartItemModel
            ->where('carts__id', $cartId)
            ->get()
            ->sum(function ($item) {
                return $item->quantity * $item->price;
            });
    }
} 