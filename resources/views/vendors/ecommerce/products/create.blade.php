@extends('vendors.layouts.default')
@section('page-title', __tr('Add New Product'))
@section('content-header')
    <h4>{{ __tr('Add New Product') }}</h4>
    <!-- breadcrumb content -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">{{ __tr('Home') }}</li>
        <li class="breadcrumb-item">{{ __tr('eCommerce') }}</li>
        <li class="breadcrumb-item"><a href="{{ route('vendor.ecommerce.products.index') }}">{{ __tr('Products') }}</a></li>
        <li class="breadcrumb-item active">{{ __tr('Add New Product') }}</li>
    </ol>
    <!-- /breadcrumb content -->
@endsection

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0">{{ __tr('Add New Product') }}</h5>
            </div>
            <div class="card-body">
                <form action="{{ route('vendor.ecommerce.products.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    
                    <div class="row">
                        <!-- Basic Information -->
                        <div class="col-md-8">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Basic Information') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label for="name" class="form-label required">{{ __tr('Product Name') }}</label>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name') }}" required>
                                        @error('name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="sku" class="form-label required">{{ __tr('SKU') }}</label>
                                        <input type="text" class="form-control @error('sku') is-invalid @enderror" id="sku" name="sku" value="{{ old('sku') }}" required>
                                        @error('sku')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="description" class="form-label">{{ __tr('Description') }}</label>
                                        <textarea class="form-control @error('description') is-invalid @enderror" id="description" name="description" rows="5">{{ old('description') }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="category_id" class="form-label required">{{ __tr('Category') }}</label>
                                        <select class="form-control @error('category_id') is-invalid @enderror" id="category_id" name="category_id" required>
                                            <option value="">{{ __tr('Select Category') }}</option>
                                            @foreach($categories as $category)
                                                <option value="{{ $category->id }}" {{ old('category_id') == $category->id ? 'selected' : '' }}>
                                                    {{ $category->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('category_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="status" class="form-label">{{ __tr('Status') }}</label>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="status" name="status" value="1" {{ old('status', '1') == '1' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="status">{{ __tr('Active') }}</label>
                                        </div>
                                        @error('status')
                                            <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    
                                    <div class="mb-3">
                                        <label for="featured" class="form-label">{{ __tr('Featured Product') }}</label>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="featured" name="featured" value="1" {{ old('featured') == '1' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="featured">{{ __tr('Mark as Featured') }}</label>
                                        </div>
                                        @error('featured')
                                            <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Pricing Information -->
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Pricing Information') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="price" class="form-label required">{{ __tr('Regular Price') }}</label>
                                                <div class="input-group">
                                                    <span class="input-group-text">$</span>
                                                    <input type="number" class="form-control @error('price') is-invalid @enderror" id="price" name="price" value="{{ old('price') }}" step="0.01" min="0" required>
                                                </div>
                                                @error('price')
                                                    <div class="text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="sale_price" class="form-label">{{ __tr('Sale Price') }}</label>
                                                <div class="input-group">
                                                    <span class="input-group-text">$</span>
                                                    <input type="number" class="form-control @error('sale_price') is-invalid @enderror" id="sale_price" name="sale_price" value="{{ old('sale_price') }}" step="0.01" min="0">
                                                </div>
                                                <small class="form-text text-muted">{{ __tr('Leave empty if not on sale') }}</small>
                                                @error('sale_price')
                                                    <div class="text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Inventory Information -->
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Inventory Information') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="stock" class="form-label required">{{ __tr('Stock Quantity') }}</label>
                                                <input type="number" class="form-control @error('stock') is-invalid @enderror" id="stock" name="stock" value="{{ old('stock', 0) }}" min="0" required>
                                                @error('stock')
                                                    <div class="invalid-feedback">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="stock_threshold" class="form-label">{{ __tr('Low Stock Threshold') }}</label>
                                                <input type="number" class="form-control @error('stock_threshold') is-invalid @enderror" id="stock_threshold" name="stock_threshold" value="{{ old('stock_threshold', 5) }}" min="0">
                                                <small class="form-text text-muted">{{ __tr('Notify when stock reaches this level') }}</small>
                                                @error('stock_threshold')
                                                    <div class="invalid-feedback">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Sidebar for image upload -->
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Product Image') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        <div class="text-center mb-3">
                                            <img id="image-preview" src="{{ asset('assets/img/placeholder.jpg') }}" alt="Product Image" class="img-fluid rounded" style="max-height: 200px; width: auto;">
                                        </div>
                                        <div class="input-group">
                                            <input type="file" class="form-control @error('image') is-invalid @enderror" id="image" name="image" accept="image/*">
                                            <label class="input-group-text" for="image">{{ __tr('Upload') }}</label>
                                        </div>
                                        <small class="form-text text-muted">{{ __tr('Recommended size: 800x800px. Max file size: 2MB.') }}</small>
                                        @error('image')
                                            <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row mt-4">
                        <div class="col-12">
                            <div class="d-flex justify-content-end">
                                <a href="{{ route('vendor.ecommerce.products.index') }}" class="btn btn-secondary me-2">{{ __tr('Cancel') }}</a>
                                <button type="submit" class="btn btn-primary">{{ __tr('Create Product') }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Image preview functionality
        const imageInput = document.getElementById('image');
        const imagePreview = document.getElementById('image-preview');
        
        imageInput.addEventListener('change', function() {
            if (this.files && this.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    imagePreview.src = e.target.result;
                };
                reader.readAsDataURL(this.files[0]);
            }
        });
        
        // Make sure sale price is less than regular price
        const priceInput = document.getElementById('price');
        const salePriceInput = document.getElementById('sale_price');
        
        salePriceInput.addEventListener('input', function() {
            const regularPrice = parseFloat(priceInput.value) || 0;
            const salePrice = parseFloat(this.value) || 0;
            
            if (salePrice > 0 && salePrice >= regularPrice) {
                this.setCustomValidity('Sale price must be less than regular price');
            } else {
                this.setCustomValidity('');
            }
        });
        
        priceInput.addEventListener('input', function() {
            // Trigger validation check on sale price when regular price changes
            const event = new Event('input');
            salePriceInput.dispatchEvent(event);
        });
    });
</script>
@endpush 