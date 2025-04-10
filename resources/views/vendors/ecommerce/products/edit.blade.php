@extends('vendors.layouts.default')
@section('page-title', __tr('Edit Product'))
@section('content-header')
    <h4>{{ __tr('Edit Product') }}</h4>
    <!-- breadcrumb content -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">{{ __tr('Home') }}</li>
        <li class="breadcrumb-item">{{ __tr('eCommerce') }}</li>
        <li class="breadcrumb-item"><a href="{{ route('vendor.ecommerce.products.index') }}">{{ __tr('Products') }}</a></li>
        <li class="breadcrumb-item active">{{ __tr('Edit') }}</li>
    </ol>
    <!-- /breadcrumb content -->
@endsection

@section('content')
<div class="row">
    <div class="col-12">
        <form action="{{ route('vendor.ecommerce.products.update', $product->id) }}" method="POST" enctype="multipart/form-data" id="productForm">
            @csrf
            @method('PUT')
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="mb-0">{{ __tr('Product Information') }}</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-8">
                            <!-- Basic Information -->
                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name" class="form-label">{{ __tr('Product Name') }} <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name', $product->name) }}" required>
                                        @error('name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="sku" class="form-label">{{ __tr('SKU') }} <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control @error('sku') is-invalid @enderror" id="sku" name="sku" value="{{ old('sku', $product->sku) }}" required>
                                        @error('sku')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="description" class="form-label">{{ __tr('Description') }}</label>
                                        <textarea class="form-control @error('description') is-invalid @enderror" id="description" name="description" rows="5">{{ old('description', $product->description) }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="category_id" class="form-label">{{ __tr('Category') }}</label>
                                        <select class="form-control @error('category_id') is-invalid @enderror" id="category_id" name="category_id">
                                            <option value="">{{ __tr('Select Category') }}</option>
                                            @foreach($categories as $category)
                                                <option value="{{ $category->id }}" {{ old('category_id', $product->category_id) == $category->id ? 'selected' : '' }}>
                                                    {{ $category->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('category_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="status" class="form-label">{{ __tr('Status') }}</label>
                                        <select class="form-control @error('status') is-invalid @enderror" id="status" name="status">
                                            <option value="1" {{ old('status', $product->status) == 1 ? 'selected' : '' }}>{{ __tr('Active') }}</option>
                                            <option value="0" {{ old('status', $product->status) == 0 ? 'selected' : '' }}>{{ __tr('Inactive') }}</option>
                                        </select>
                                        @error('status')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <!-- Product Image -->
                            <div class="form-group mb-4">
                                <label for="image" class="form-label">{{ __tr('Product Image') }}</label>
                                <div class="input-group">
                                    <input type="file" class="form-control @error('image') is-invalid @enderror" id="image" name="image" accept="image/*">
                                    @error('image')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="mt-3 text-center">
                                    <img id="imagePreview" src="{{ $product->image_url ? asset($product->image_url) : asset('assets/img/placeholder.jpg') }}" alt="Product Image Preview" class="img-thumbnail" style="max-height: 200px; max-width: 100%;">
                                </div>
                                @if($product->image_url)
                                <div class="form-check mt-2">
                                    <input class="form-check-input" type="checkbox" id="remove_image" name="remove_image" value="1">
                                    <label class="form-check-label" for="remove_image">
                                        {{ __tr('Remove current image') }}
                                    </label>
                                </div>
                                @endif
                            </div>
                            
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" id="featured" name="featured" value="1" {{ old('featured', $product->featured) ? 'checked' : '' }}>
                                <label class="form-check-label" for="featured">
                                    {{ __tr('Mark as Featured Product') }}
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="mb-0">{{ __tr('Pricing & Inventory') }}</h5>
                </div>
                <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="price" class="form-label">{{ __tr('Regular Price') }} ($) <span class="text-danger">*</span></label>
                                <input type="number" step="0.01" min="0" class="form-control @error('price') is-invalid @enderror" id="price" name="price" value="{{ old('price', $product->price) }}" required>
                                @error('price')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="sale_price" class="form-label">{{ __tr('Sale Price') }} ($)</label>
                                <input type="number" step="0.01" min="0" class="form-control @error('sale_price') is-invalid @enderror" id="sale_price" name="sale_price" value="{{ old('sale_price', $product->sale_price) }}">
                                @error('sale_price')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="stock" class="form-label">{{ __tr('Stock Quantity') }} <span class="text-danger">*</span></label>
                                <input type="number" min="0" class="form-control @error('stock') is-invalid @enderror" id="stock" name="stock" value="{{ old('stock', $product->stock) }}" required>
                                @error('stock')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="stock_threshold" class="form-label">{{ __tr('Low Stock Threshold') }}</label>
                                <input type="number" min="0" class="form-control @error('stock_threshold') is-invalid @enderror" id="stock_threshold" name="stock_threshold" value="{{ old('stock_threshold', $product->stock_threshold) }}">
                                @error('stock_threshold')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4 mb-4">
                <div class="col-12 text-center">
                    <a href="{{ route('vendor.ecommerce.products.index') }}" class="btn btn-secondary me-2">
                        <i class="fas fa-times"></i> {{ __tr('Cancel') }}
                    </a>
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-save"></i> {{ __tr('Update Product') }}
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection

@push('scripts')
<script>
    // Image preview
    document.getElementById('image').addEventListener('change', function(e) {
        const reader = new FileReader();
        reader.onload = function(event) {
            document.getElementById('imagePreview').src = event.target.result;
        }
        reader.readAsDataURL(e.target.files[0]);
    });

    // Handle remove image checkbox
    if (document.getElementById('remove_image')) {
        document.getElementById('remove_image').addEventListener('change', function(e) {
            if (this.checked) {
                document.getElementById('imagePreview').src = "{{ asset('assets/img/placeholder.jpg') }}";
                document.getElementById('image').value = '';
            } else {
                document.getElementById('imagePreview').src = "{{ $product->image_url ? asset($product->image_url) : asset('assets/img/placeholder.jpg') }}";
            }
        });
    }

    // Initialize rich text editor for description
    if (document.getElementById('description')) {
        ClassicEditor
            .create(document.getElementById('description'))
            .catch(error => {
                console.error(error);
            });
    }
</script>
@endpush 