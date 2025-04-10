@extends('vendors.layouts.default')
@section('page-title', __tr('Product Details'))
@section('content-header')
    <h4>{{ __tr('Product Details') }}</h4>
    <!-- breadcrumb content -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">{{ __tr('Home') }}</li>
        <li class="breadcrumb-item">{{ __tr('eCommerce') }}</li>
        <li class="breadcrumb-item"><a href="{{ route('vendor.ecommerce.products.index') }}">{{ __tr('Products') }}</a></li>
        <li class="breadcrumb-item active">{{ __tr('Details') }}</li>
    </ol>
    <!-- /breadcrumb content -->
@endsection

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="mb-0">{{ $product->name }}</h5>
                <div>
                    <a href="{{ route('vendor.ecommerce.products.edit', $product->id) }}" class="btn btn-sm btn-primary">
                        <i class="fas fa-edit"></i> {{ __tr('Edit') }}
                    </a>
                    <a href="{{ route('vendor.ecommerce.products.index') }}" class="btn btn-sm btn-secondary">
                        <i class="fas fa-arrow-left"></i> {{ __tr('Back to List') }}
                    </a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <!-- Product Image -->
                    <div class="col-md-4 text-center">
                        <img src="{{ $product->image ? asset($product->image) : asset('assets/img/placeholder.jpg') }}" 
                            alt="{{ $product->name }}" class="img-fluid mb-3" style="max-height: 300px;">
                        
                        <div class="product-status mt-3">
                            @if($product->status)
                                <span class="badge badge-success">{{ __tr('Active') }}</span>
                            @else
                                <span class="badge badge-danger">{{ __tr('Inactive') }}</span>
                            @endif

                            @if($product->featured)
                                <span class="badge badge-warning">{{ __tr('Featured') }}</span>
                            @endif
                        </div>
                    </div>
                    
                    <!-- Product Details -->
                    <div class="col-md-8">
                        <div class="product-info">
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <th style="width: 150px;">{{ __tr('SKU') }}:</th>
                                        <td>{{ $product->sku }}</td>
                                    </tr>
                                    <tr>
                                        <th>{{ __tr('Category') }}:</th>
                                        <td>{{ $product->category->name ?? __tr('Uncategorized') }}</td>
                                    </tr>
                                    <tr>
                                        <th>{{ __tr('Price') }}:</th>
                                        <td>
                                            @if($product->sale_price && $product->sale_price < $product->price)
                                                <span class="text-danger font-weight-bold">${{ number_format($product->sale_price, 2) }}</span>
                                                <span class="text-muted"><del>${{ number_format($product->price, 2) }}</del></span>
                                            @else
                                                <span class="font-weight-bold">${{ number_format($product->price, 2) }}</span>
                                            @endif
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>{{ __tr('Stock') }}:</th>
                                        <td>
                                            {{ $product->stock }}
                                            @if($product->stock <= $product->stock_threshold)
                                                <span class="badge badge-warning">{{ __tr('Low Stock') }}</span>
                                            @endif
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>{{ __tr('Created') }}:</th>
                                        <td>{{ $product->created_at->format('M d, Y H:i') }}</td>
                                    </tr>
                                    <tr>
                                        <th>{{ __tr('Last Updated') }}:</th>
                                        <td>{{ $product->updated_at->format('M d, Y H:i') }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <div class="product-description mt-4">
                            <h6>{{ __tr('Description') }}</h6>
                            <div class="p-3 bg-light rounded">
                                {!! $product->description ?: __tr('No description available') !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Order History Card -->
<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header">
                <h5 class="mb-0">{{ __tr('Order History') }}</h5>
            </div>
            <div class="card-body">
                @if(count($orders) > 0)
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>{{ __tr('Order #') }}</th>
                                    <th>{{ __tr('Date') }}</th>
                                    <th>{{ __tr('Customer') }}</th>
                                    <th>{{ __tr('Quantity') }}</th>
                                    <th>{{ __tr('Price') }}</th>
                                    <th>{{ __tr('Total') }}</th>
                                    <th>{{ __tr('Status') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $order)
                                    <tr>
                                        <td>
                                            <a href="{{ route('vendor.ecommerce.orders.show', $order->id) }}">
                                                #{{ $order->order_number }}
                                            </a>
                                        </td>
                                        <td>{{ $order->created_at->format('M d, Y') }}</td>
                                        <td>{{ $order->customer_name }}</td>
                                        <td>{{ $order->quantity }}</td>
                                        <td>${{ number_format($order->price, 2) }}</td>
                                        <td>${{ number_format($order->total, 2) }}</td>
                                        <td>
                                            @if($order->status == 'completed')
                                                <span class="badge badge-success">{{ __tr('Completed') }}</span>
                                            @elseif($order->status == 'processing')
                                                <span class="badge badge-info">{{ __tr('Processing') }}</span>
                                            @elseif($order->status == 'pending')
                                                <span class="badge badge-warning">{{ __tr('Pending') }}</span>
                                            @elseif($order->status == 'cancelled')
                                                <span class="badge badge-danger">{{ __tr('Cancelled') }}</span>
                                            @else
                                                <span class="badge badge-secondary">{{ $order->status }}</span>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    <div class="alert alert-info">
                        {{ __tr('No orders found for this product.') }}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection 