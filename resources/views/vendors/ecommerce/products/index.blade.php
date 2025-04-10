@extends('vendors.layouts.default')
@section('page-title', __tr('Products'))
@section('content-header')
    <h4>{{ __tr('Products') }}</h4>
    <!-- breadcrumb content -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">{{ __tr('Home') }}</li>
        <li class="breadcrumb-item">{{ __tr('eCommerce') }}</li>
        <li class="breadcrumb-item active">{{ __tr('Products') }}</li>
    </ol>
    <!-- /breadcrumb content -->
@endsection

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">{{ __tr('Products') }}</h5>
                    <div>
                        <a href="{{ route('vendor.ecommerce.products.create') }}" class="btn btn-primary btn-sm">
                            <i class="fas fa-plus-circle"></i> {{ __tr('Add New Product') }}
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <!-- Filters -->
                <div class="row mb-4">
                    <div class="col-12">
                        <form action="{{ route('vendor.ecommerce.products.index') }}" method="GET" class="mb-0">
                            <div class="row">
                                <div class="col-md-3 mb-2">
                                    <input type="text" name="search" class="form-control" placeholder="{{ __tr('Search by name or SKU...') }}" value="{{ request()->get('search') }}">
                                </div>
                                <div class="col-md-2 mb-2">
                                    <select name="category" class="form-control">
                                        <option value="">{{ __tr('All Categories') }}</option>
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}" {{ request()->get('category') == $category->id ? 'selected' : '' }}>
                                                {{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-2 mb-2">
                                    <select name="status" class="form-control">
                                        <option value="">{{ __tr('All Status') }}</option>
                                        <option value="1" {{ request()->get('status') === '1' ? 'selected' : '' }}>{{ __tr('Active') }}</option>
                                        <option value="0" {{ request()->get('status') === '0' ? 'selected' : '' }}>{{ __tr('Inactive') }}</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-2">
                                    <div class="input-group">
                                        <span class="input-group-text">{{ __tr('Stock') }}</span>
                                        <select name="stock" class="form-control">
                                            <option value="">{{ __tr('All') }}</option>
                                            <option value="in_stock" {{ request()->get('stock') === 'in_stock' ? 'selected' : '' }}>{{ __tr('In Stock') }}</option>
                                            <option value="out_of_stock" {{ request()->get('stock') === 'out_of_stock' ? 'selected' : '' }}>{{ __tr('Out of Stock') }}</option>
                                            <option value="low_stock" {{ request()->get('stock') === 'low_stock' ? 'selected' : '' }}>{{ __tr('Low Stock') }}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 mb-2">
                                    <button type="submit" class="btn btn-primary w-100">{{ __tr('Filter') }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Products Table -->
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead class="table-light">
                            <tr>
                                <th width="60">{{ __tr('Image') }}</th>
                                <th>{{ __tr('Name') }}</th>
                                <th>{{ __tr('SKU') }}</th>
                                <th>{{ __tr('Category') }}</th>
                                <th>{{ __tr('Price') }}</th>
                                <th>{{ __tr('Stock') }}</th>
                                <th>{{ __tr('Status') }}</th>
                                <th width="120">{{ __tr('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($products as $product)
                                <tr>
                                    <td class="text-center">
                                        <img src="{{ $product->image_url ? asset($product->image_url) : asset('assets/img/placeholder.jpg') }}" class="rounded" width="50" height="50" alt="{{ $product->name }}">
                                    </td>
                                    <td>
                                        {{ $product->name }}
                                        @if($product->featured)
                                            <span class="badge bg-warning ms-1">{{ __tr('Featured') }}</span>
                                        @endif
                                    </td>
                                    <td>{{ $product->sku }}</td>
                                    <td>{{ $product->category ? $product->category->name : '-' }}</td>
                                    <td>
                                        @if($product->sale_price && $product->sale_price < $product->price)
                                            <span class="text-decoration-line-through text-muted me-1">${{ number_format($product->price, 2) }}</span>
                                            <span class="text-danger">${{ number_format($product->sale_price, 2) }}</span>
                                        @else
                                            ${{ number_format($product->price, 2) }}
                                        @endif
                                    </td>
                                    <td>
                                        @if($product->stock <= 0)
                                            <span class="badge bg-danger">{{ __tr('Out of Stock') }}</span>
                                        @elseif($product->stock <= $product->stock_threshold)
                                            <span class="badge bg-warning">{{ __tr('Low Stock') }} ({{ $product->stock }})</span>
                                        @else
                                            <span class="badge bg-success">{{ $product->stock }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        @if($product->status)
                                            <span class="badge bg-success">{{ __tr('Active') }}</span>
                                        @else
                                            <span class="badge bg-danger">{{ __tr('Inactive') }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        <div class="btn-group btn-group-sm">
                                            <a href="{{ route('vendor.ecommerce.products.edit', $product->id) }}" class="btn btn-primary" title="{{ __tr('Edit') }}">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a href="{{ route('vendor.ecommerce.products.show', $product->id) }}" class="btn btn-info" title="{{ __tr('View') }}">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                            <button type="button" class="btn btn-danger delete-product" data-id="{{ $product->id }}" title="{{ __tr('Delete') }}">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="8" class="text-center">{{ __tr('No products found') }}</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                <!-- Pagination -->
                <div class="d-flex justify-content-center mt-4">
                    {{ $products->appends(request()->query())->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Delete Product Modal -->
<div class="modal fade" id="deleteProductModal" tabindex="-1" aria-labelledby="deleteProductModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteProductModalLabel">{{ __tr('Delete Product') }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>{{ __tr('Are you sure you want to delete this product? This action cannot be undone.') }}</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{ __tr('Cancel') }}</button>
                <form id="deleteProductForm" action="" method="POST" class="d-inline">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">{{ __tr('Delete') }}</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Delete product functionality
        const deleteButtons = document.querySelectorAll('.delete-product');
        const deleteForm = document.getElementById('deleteProductForm');
        const deleteModal = new bootstrap.Modal(document.getElementById('deleteProductModal'));

        deleteButtons.forEach(button => {
            button.addEventListener('click', function() {
                const productId = this.getAttribute('data-id');
                deleteForm.action = "{{ route('vendor.ecommerce.products.destroy', '') }}/" + productId;
                deleteModal.show();
            });
        });
    });
</script>
@endpush 