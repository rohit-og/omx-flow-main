@extends('vendors.layouts.default')
@section('page-title', isset($product) ? __tr('Edit Product') : __tr('Add New Product'))
@section('content-header')
    <h4>{{ isset($product) ? __tr('Edit Product') : __tr('Add New Product') }}</h4>
    <!-- breadcrumb content -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">{{ __tr('Home') }}</li>
        <li class="breadcrumb-item">{{ __tr('eCommerce') }}</li>
        <li class="breadcrumb-item"><a href="{{ route('vendor.ecommerce.products.index') }}">{{ __tr('Products') }}</a></li>
        <li class="breadcrumb-item active">{{ isset($product) ? __tr('Edit') : __tr('Add New') }}</li>
    </ol>
    <!-- /breadcrumb content -->
@endsection

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header">
                <h5 class="mb-0">{{ isset($product) ? __tr('Edit Product') : __tr('Add New Product') }}</h5>
            </div>
            <div class="card-body">
                <form id="productForm" method="POST" enctype="multipart/form-data" 
                    action="{{ isset($product) ? route('vendor.ecommerce.products.update', $product->id) : route('vendor.ecommerce.products.store') }}">
                    @csrf
                    @if(isset($product))
                        @method('PUT')
                    @endif

                    <div class="row">
                        <!-- Basic Information -->
                        <div class="col-md-8">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Basic Information') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="name">{{ __tr('Product Name') }} <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" 
                                            value="{{ old('name', isset($product) ? $product->name : '') }}" required>
                                        @error('name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group">
                                        <label for="slug">{{ __tr('Slug') }}</label>
                                        <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" 
                                            value="{{ old('slug', isset($product) ? $product->slug : '') }}">
                                        <small class="form-text text-muted">{{ __tr('Leave empty to auto-generate from product name') }}</small>
                                        @error('slug')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group">
                                        <label for="sku">{{ __tr('SKU') }} <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control @error('sku') is-invalid @enderror" id="sku" name="sku" 
                                            value="{{ old('sku', isset($product) ? $product->sku : '') }}" required>
                                        @error('sku')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group">
                                        <label for="description">{{ __tr('Description') }}</label>
                                        <textarea class="form-control @error('description') is-invalid @enderror" id="description" name="description" rows="5">{{ old('description', isset($product) ? $product->description : '') }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group">
                                        <label for="category_id">{{ __tr('Category') }} <span class="text-danger">*</span></label>
                                        <select class="form-control @error('category_id') is-invalid @enderror" id="category_id" name="category_id" required>
                                            <option value="">{{ __tr('Select Category') }}</option>
                                            @foreach($categories as $category)
                                                <option value="{{ $category->id }}" {{ old('category_id', isset($product) ? $product->category_id : '') == $category->id ? 'selected' : '' }}>
                                                    {{ $category->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('category_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <!-- Pricing and Inventory -->
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Pricing & Inventory') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="price">{{ __tr('Regular Price') }} <span class="text-danger">*</span></label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control @error('price') is-invalid @enderror" id="price" name="price" 
                                                        step="0.01" value="{{ old('price', isset($product) ? $product->price : '') }}" required>
                                                    @error('price')
                                                        <div class="invalid-feedback">{{ $message }}</div>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="sale_price">{{ __tr('Sale Price') }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control @error('sale_price') is-invalid @enderror" id="sale_price" name="sale_price" 
                                                        step="0.01" value="{{ old('sale_price', isset($product) ? $product->sale_price : '') }}">
                                                    @error('sale_price')
                                                        <div class="invalid-feedback">{{ $message }}</div>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="stock">{{ __tr('Stock Quantity') }} <span class="text-danger">*</span></label>
                                                <input type="number" class="form-control @error('stock') is-invalid @enderror" id="stock" name="stock" 
                                                    value="{{ old('stock', isset($product) ? $product->stock : '') }}" required>
                                                @error('stock')
                                                    <div class="invalid-feedback">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="stock_threshold">{{ __tr('Low Stock Threshold') }}</label>
                                                <input type="number" class="form-control @error('stock_threshold') is-invalid @enderror" id="stock_threshold" name="stock_threshold" 
                                                    value="{{ old('stock_threshold', isset($product) ? $product->stock_threshold : 5) }}">
                                                @error('stock_threshold')
                                                    <div class="invalid-feedback">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Image and Status -->
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Product Image') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="text-center mb-3">
                                            <img id="imagePreview" src="{{ isset($product) && $product->image ? asset($product->image) : asset('assets/img/placeholder.jpg') }}" 
                                                alt="Product Image" class="img-fluid mb-2" style="max-height: 200px;">
                                        </div>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input @error('image') is-invalid @enderror" id="image" name="image" accept="image/*">
                                            <label class="custom-file-label" for="image">{{ __tr('Choose file') }}</label>
                                            @error('image')
                                                <div class="invalid-feedback">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-4">
                                <div class="card-header">
                                    <h6 class="mb-0">{{ __tr('Product Status') }}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="custom-control custom-switch">
                                            <input type="checkbox" class="custom-control-input" id="status" name="status" value="1" 
                                                {{ old('status', isset($product) ? $product->status : 1) ? 'checked' : '' }}>
                                            <label class="custom-control-label" for="status">{{ __tr('Active') }}</label>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="custom-control custom-switch">
                                            <input type="checkbox" class="custom-control-input" id="featured" name="featured" value="1" 
                                                {{ old('featured', isset($product) ? $product->featured : 0) ? 'checked' : '' }}>
                                            <label class="custom-control-label" for="featured">{{ __tr('Featured Product') }}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="{{ route('vendor.ecommerce.products.index') }}" class="btn btn-secondary">{{ __tr('Cancel') }}</a>
                        <button type="submit" class="btn btn-primary">{{ __tr('Save Product') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@push('vendorScripts')
<script>
    $(function() {
        // Initialize rich text editor
        if (typeof CKEDITOR !== 'undefined') {
            CKEDITOR.replace('description');
        }
        
        // Preview image before upload
        $('#image').on('change', function() {
            const file = this.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    $('#imagePreview').attr('src', e.target.result);
                }
                reader.readAsDataURL(file);
                $(this).next('.custom-file-label').text(file.name);
            }
        });
        
        // Auto generate slug from name
        $('#name').on('blur', function() {
            if ($('#slug').val() === '') {
                const name = $(this).val();
                if (name) {
                    const slug = name.toLowerCase()
                        .replace(/[^\w\s-]/g, '')
                        .replace(/\s+/g, '-')
                        .replace(/-+/g, '-');
                    $('#slug').val(slug);
                }
            }
        });
    });
</script>
@endpush 