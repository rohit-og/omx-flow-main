<?php
/**
* ProductRepository.php - Repository file
*
* This file is part of the ECommerce component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\ECommerce\Repositories;

use App\Yantrana\Base\BaseRepository;
use App\Yantrana\Components\ECommerce\Models\Product;

class ProductRepository extends BaseRepository
{
    /**
     * Constructor.
     *
     * @param Product $product - Product Model
     *-----------------------------------------------------------------------*/
    public function __construct(Product $product)
    {
        $this->model = $product;
    }

    /**
     * Fetch all products
     *
     * @param array $options
     * @return mixed
     */
    public function fetchAll($options = [])
    {
        $query = $this->model->query();

        // Apply vendor filter if needed
        if (isset($options['vendor_id'])) {
            $query->where('vendors__id', $options['vendor_id']);
        }

        // Apply status filter
        if (isset($options['status'])) {
            $query->where('status', $options['status']);
        }

        // Apply search if provided
        if (isset($options['search']) && !empty($options['search'])) {
            $query->where(function ($query) use ($options) {
                $query->where('name', 'like', '%' . $options['search'] . '%')
                    ->orWhere('description', 'like', '%' . $options['search'] . '%')
                    ->orWhere('sku', 'like', '%' . $options['search'] . '%');
            });
        }

        // Apply ordering
        $query->orderBy($options['order_by'] ?? 'created_at', $options['order_direction'] ?? 'desc');

        // Apply pagination if required
        if (isset($options['paginate']) && $options['paginate']) {
            return $query->paginate($options['items_per_page'] ?? 10);
        }

        // Get the results
        return $query->get();
    }

    /**
     * Find product by ID
     *
     * @param int $productId
     * @return mixed
     */
    public function findById($productId)
    {
        return $this->model->find($productId);
    }

    /**
     * Store new product
     *
     * @param array $inputData
     * @return mixed
     */
    public function store($inputData)
    {
        $product = $this->model->create($inputData);
        
        if ($product) {
            return $this->findById($product->_id);
        }
        
        return false;
    }

    /**
     * Update product
     *
     * @param mixed $product - Product model or ID
     * @param array $updateData
     * @return mixed
     */
    public function update($product, $updateData)
    {
        // If $product is an ID, fetch the model
        if (!is_object($product)) {
            $product = $this->findById($product);
        }
        
        if (!$product) {
            return false;
        }
        
        if ($product->update($updateData)) {
            return $product->fresh();
        }
        
        return false;
    }

    /**
     * Delete product
     *
     * @param mixed $product - Product model or ID
     * @return bool
     */
    public function delete($product)
    {
        // If $product is an ID, fetch the model
        if (!is_object($product)) {
            $product = $this->findById($product);
        }
        
        if (!$product) {
            return false;
        }
        
        return $product->delete();
    }
} 