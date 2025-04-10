@extends('vendors.layouts.default')
@section('page-title', __tr('eCommerce Dashboard'))
@section('content-header')
    <h4>{{ __tr('eCommerce Dashboard') }}</h4>
    <!-- breadcrumb content -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">{{ __tr('Home') }}</li>
        <li class="breadcrumb-item active">{{ __tr('eCommerce Dashboard') }}</li>
    </ol>
    <!-- /breadcrumb content -->
@endsection

@section('content')
<div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card h-100 py-2">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col mr-2">
                        <div class="h5 font-weight-bold text-primary mb-1">
                            {{ __tr('Total Products') }}
                        </div>
                        <div class="h3 mb-0 font-weight-bold text-gray-800" id="totalProducts">
                            <div class="spinner-border spinner-border-sm" role="status">
                                <span class="sr-only">{{ __tr('Loading...') }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-box fa-2x text-primary"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card h-100 py-2">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col mr-2">
                        <div class="h5 font-weight-bold text-success mb-1">
                            {{ __tr('Total Orders') }}
                        </div>
                        <div class="h3 mb-0 font-weight-bold text-gray-800" id="totalOrders">
                            <div class="spinner-border spinner-border-sm" role="status">
                                <span class="sr-only">{{ __tr('Loading...') }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-shopping-cart fa-2x text-success"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card h-100 py-2">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col mr-2">
                        <div class="h5 font-weight-bold text-warning mb-1">
                            {{ __tr('Pending Orders') }}
                        </div>
                        <div class="h3 mb-0 font-weight-bold text-gray-800" id="pendingOrders">
                            <div class="spinner-border spinner-border-sm" role="status">
                                <span class="sr-only">{{ __tr('Loading...') }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-clock fa-2x text-warning"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card h-100 py-2">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col mr-2">
                        <div class="h5 font-weight-bold text-info mb-1">
                            {{ __tr('Total Revenue') }}
                        </div>
                        <div class="h3 mb-0 font-weight-bold text-gray-800" id="totalRevenue">
                            <div class="spinner-border spinner-border-sm" role="status">
                                <span class="sr-only">{{ __tr('Loading...') }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-info"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h5>{{ __tr('Recent Orders') }}</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>{{ __tr('Order #') }}</th>
                                <th>{{ __tr('Customer') }}</th>
                                <th>{{ __tr('Amount') }}</th>
                                <th>{{ __tr('Status') }}</th>
                                <th>{{ __tr('Date') }}</th>
                                <th>{{ __tr('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody id="recentOrdersTable">
                            <tr>
                                <td colspan="6" class="text-center">
                                    <div class="spinner-border" role="status">
                                        <span class="sr-only">{{ __tr('Loading...') }}</span>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer text-center">
                <a href="{{ route('vendor.ecommerce.orders') }}" class="btn btn-primary">
                    {{ __tr('View All Orders') }}
                </a>
            </div>
        </div>
    </div>
</div>

<div class="row mt-4">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h5>{{ __tr('Low Stock Products') }}</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>{{ __tr('Product') }}</th>
                                <th>{{ __tr('SKU') }}</th>
                                <th>{{ __tr('Price') }}</th>
                                <th>{{ __tr('Stock') }}</th>
                                <th>{{ __tr('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody id="lowStockTable">
                            <tr>
                                <td colspan="5" class="text-center">
                                    <div class="spinner-border" role="status">
                                        <span class="sr-only">{{ __tr('Loading...') }}</span>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer text-center">
                <a href="{{ route('vendor.ecommerce.products') }}" class="btn btn-primary">
                    {{ __tr('Manage Products') }}
                </a>
            </div>
        </div>
    </div>
</div>
@endsection

@push('vendorScripts')
<script>
    $(function() {
        // Load dashboard data
        function loadDashboardData() {
            $.ajax({
                url: "{{ route('vendor.ecommerce.dashboard.data') }}",
                type: 'GET',
                dataType: 'json',
                success: function(response) {
                    if (response.success) {
                        // Update stat cards
                        $('#totalProducts').text(response.data.totalProducts);
                        $('#totalOrders').text(response.data.totalOrders);
                        $('#pendingOrders').text(response.data.pendingOrders);
                        $('#totalRevenue').text(response.data.totalRevenue);
                        
                        // Update recent orders table
                        updateRecentOrdersTable(response.data.recentOrders);
                        
                        // Update low stock table
                        updateLowStockTable(response.data.lowStockProducts);
                    }
                },
                error: function() {
                    // Show error message
                    notify.error('{{ __tr("Failed to load dashboard data") }}');
                }
            });
        }
        
        // Update recent orders table
        function updateRecentOrdersTable(orders) {
            var html = '';
            
            if (orders.length === 0) {
                html = '<tr><td colspan="6" class="text-center">{{ __tr("No recent orders found") }}</td></tr>';
            } else {
                orders.forEach(function(order) {
                    html += '<tr>';
                    html += '<td>' + order.order_number + '</td>';
                    html += '<td>' + order.customer + '</td>';
                    html += '<td>' + order.total_amount + '</td>';
                    html += '<td>' + order.status + '</td>';
                    html += '<td>' + order.created_at + '</td>';
                    html += '<td><a href="' + order.view_url + '" class="btn btn-sm btn-info">{{ __tr("View") }}</a></td>';
                    html += '</tr>';
                });
            }
            
            $('#recentOrdersTable').html(html);
        }
        
        // Update low stock table
        function updateLowStockTable(products) {
            var html = '';
            
            if (products.length === 0) {
                html = '<tr><td colspan="5" class="text-center">{{ __tr("No low stock products found") }}</td></tr>';
            } else {
                products.forEach(function(product) {
                    html += '<tr>';
                    html += '<td>' + product.name + '</td>';
                    html += '<td>' + (product.sku || 'N/A') + '</td>';
                    html += '<td>' + product.price + '</td>';
                    html += '<td><span class="badge badge-danger">' + product.stock + '</span></td>';
                    html += '<td><a href="' + product.edit_url + '" class="btn btn-sm btn-primary">{{ __tr("Edit") }}</a></td>';
                    html += '</tr>';
                });
            }
            
            $('#lowStockTable').html(html);
        }
        
        // Load dashboard data on page load
        loadDashboardData();
    });
</script>
@endpush 