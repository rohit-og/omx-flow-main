@extends('layouts.app', ['title' => __tr('WhatsApp Flows')])

@section('content')
@include('users.partials.header', [
    'title' => __tr('WhatsApp Flows'),
    'description' => '',
    'class' => 'col-lg-7'
])

<div class="container-fluid mt-lg--6">
    <div class="row mt-5">
        <!-- Button -->
        <div class="col-xl-12 mb-3 mt-3">
            <a class="lw-btn btn btn-primary" href="{{ route('whatsapp-flows.create') }}">
                <i class="fa fa-plus"></i> {{ __tr('Create New Flow') }}
            </a>
            <button id="refresh-btn" class="btn btn-outline-primary">
                <i class="fa fa-refresh"></i> {{ __tr('Refresh') }}
            </button>
        </div>
        <!-- /Button -->

        @if (session('status'))
            <div class="col-xl-12">
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            </div>
        @endif

        @if (session('error'))
            <div class="col-xl-12">
                <div class="alert alert-danger" role="alert">
                    {{ session('error') }}
                </div>
            </div>
        @endif

        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <div id="loading" class="text-center py-4 d-none">
                        <div class="spinner-border text-primary" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>
                        <p class="mt-2">{{ __tr('Fetching flows...') }}</p>
                    </div>

                    <div id="flows-container">
                        @if(empty($flows))
                            <div class="alert alert-info">
                                {{ __tr('No WhatsApp flows found. Try refreshing or check your API connection.') }}
                            </div>
                        @else
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>{{ __tr('ID') }}</th>
                                            <th>{{ __tr('Name') }}</th>
                                            <th>{{ __tr('Status') }}</th>
                                            <th>{{ __tr('Categories') }}</th>
                                            <th>{{ __tr('Actions') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($flows as $flow)
                                            <tr class="{{ $flow['status'] === 'PUBLISHED' ? 'table-success' : '' }}" data-flow-id="{{ $flow['id'] }}">
                                                <td>{{ $flow['id'] }}</td>
                                                <td>{{ $flow['name'] }}</td>
                                                <td>
                                                    <span class="badge badge-{{ $flow['status'] === 'PUBLISHED' ? 'success' : 'warning' }} p-2">
                                                        {{ $flow['status'] }}
                                                    </span>
                                                </td>
                                                <td>
                                                    @foreach($flow['categories'] as $category)
                                                        <span class="badge badge-info mr-1">{{ $category }}</span>
                                                    @endforeach
                                                </td>
                                                <td>
                                                    <div class="btn-group" role="group">
                                                        @if($flow['status'] === 'DRAFT')
                                                            <a href="{{ route('whatsapp-flows.edit', ['id' => $flow['id']]) }}" 
                                                               class="btn btn-sm btn-secondary" 
                                                               title="{{ __tr('Edit') }}">
                                                                <i class="fa fa-pencil"></i> {{ __tr('Edit') }}
                                                            </a>
                                                            <a href="{{ route('whatsapp-flows.delete', ['id' => $flow['id']]) }}" 
                                                               class="btn btn-sm btn-danger delete-flow-btn" 
                                                               data-flow-id="{{ $flow['id'] }}"
                                                               data-flow-name="{{ $flow['name'] }}"
                                                               title="{{ __tr('Delete') }}">
                                                                <i class="fa fa-trash"></i> {{ __tr('Delete') }}
                                                            </a>
                                                        @endif
                                                        
                                                        @if($flow['status'] !== 'DEPRECATED')
                                                            <a href="{{ route('whatsapp-flows.send', ['id' => $flow['id']]) }}" 
                                                               class="btn btn-sm btn-info" title="{{ __tr('Send') }}">
                                                                <i class="fa fa-paper-plane"></i> {{ __tr('Send') }}
                                                            </a>
                                                        @endif
                                                        
                                                        <a href="{{ route('whatsapp-flows.preview', ['id' => $flow['id']]) }}" 
                                                           class="btn btn-sm btn-dark" title="{{ __tr('Preview') }}">
                                                            <i class="fa fa-eye"></i> {{ __tr('Preview') }}
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                            
                        @endif
                    </div>
                </div>
            </div>
        </div>

        <!-- Delete Flow Template -->
        <script type="text/template" id="lwDeleteFlow-template">
            <h2>{{ __tr('Are You Sure!') }}</h2>
            <p>{{ __tr('You want to delete this WhatsApp Flow?') }}</p>
        </script>
        <!-- /Delete Flow Template -->
    </div>
</div>

<style>
    th {
        background-color: rgb(11, 119, 83) !important;
        color: white;
    }
    
    .badge {
        font-size: 85%;
    }
    
    .btn-group .btn {
        margin-right: 2px;
    }
</style>
@endsection

@section('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const refreshBtn = document.getElementById('refresh-btn');
        const loadingElement = document.getElementById('loading');
        const flowsContainer = document.getElementById('flows-container');

        // Initialize delete buttons
        document.querySelectorAll('.delete-flow-btn').forEach(button => {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                
                // Get the URL from the href attribute
                const url = this.getAttribute('href');
                
                // Get flow details from data attributes
                const flowId = this.getAttribute('data-flow-id');
                const flowName = this.getAttribute('data-flow-name');
                
                // Show confirmation
                if (confirm('{{ __tr("Are you sure you want to delete flow") }} "' + flowName + '"? {{ __tr("This action cannot be undone.") }}')) {
                    // Find the flow row before making the request
                    const flowRow = document.querySelector(`tr[data-flow-id="${flowId}"]`);
                    
                    // Remove the row immediately for better user experience
                    if (flowRow) {
                        // Store the row for potential restoration if deletion fails
                        const rowClone = flowRow.cloneNode(true);
                        
                        // Hide the row immediately
                        flowRow.style.display = 'none';
                        
                        // Check if there are any flows left
                        const remainingFlows = document.querySelectorAll('tbody tr:not([style*="display: none"])').length;
                        if (remainingFlows === 0) {
                            // If no flows left, show the empty message
                            const tbody = document.querySelector('tbody');
                            const table = tbody.closest('.table-responsive');
                            table.innerHTML = `
                                <div class="alert alert-info">
                                    {{ __tr('No WhatsApp flows found. Try refreshing or check your API connection.') }}
                                </div>
                            `;
                        }
                        
                        // Show a loading notification
                        if (window.__Utils && window.__Utils.notification) {
                            window.__Utils.notification('{{ __tr("Deleting flow...") }}', 'info');
                        }
                        
                        // Use fetch API to send DELETE request
                        fetch(url, {
                            method: 'DELETE',
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json',
                                'X-Requested-With': 'XMLHttpRequest',
                                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                            }
                        })
                        .then(response => {
                            // Check if the response is JSON
                            const contentType = response.headers.get('content-type');
                            if (contentType && contentType.includes('application/json')) {
                                return response.json();
                            } else {
                                // If not JSON, return a custom error
                                throw new Error('Server returned non-JSON response');
                            }
                        })
                        .then(data => {
                            if (data.success) {
                                // Permanently remove the flow row from the table
                                if (flowRow) {
                                    flowRow.remove();
                                }
                                
                                // Show success notification
                                if (window.__Utils && window.__Utils.notification) {
                                    window.__Utils.notification(data.message || '{{ __tr("Flow deleted successfully") }}', 'success');
                                } else {
                                    alert(data.message || '{{ __tr("Flow deleted successfully") }}');
                                }
                            } else {
                                // If deletion failed, restore the row
                                if (flowRow) {
                                    flowRow.style.display = '';
                                } else {
                                    // If the row was already removed, add it back
                                    const tbody = document.querySelector('tbody');
                                    if (tbody) {
                                        tbody.appendChild(rowClone);
                                    }
                                }
                                
                                // Show error notification
                                const errorMessage = data.message || '{{ __tr("Failed to delete flow") }}';
                                if (window.__Utils && window.__Utils.notification) {
                                    window.__Utils.notification(errorMessage, 'error');
                                } else {
                                    alert(errorMessage);
                                }
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            
                            // If there was an error, restore the row
                            if (flowRow) {
                                flowRow.style.display = '';
                            } else {
                                // If the row was already removed, add it back
                                const tbody = document.querySelector('tbody');
                                if (tbody) {
                                    tbody.appendChild(rowClone);
                                }
                            }
                            
                            // Show a more specific error message
                            let errorMessage = '{{ __tr("An error occurred while deleting the flow") }}';
                            
                            // Check for specific error types
                            if (error.message.includes('Failed to fetch')) {
                                errorMessage = '{{ __tr("Network error. Please check your internet connection and try again.") }}';
                            } else if (error.message.includes('non-JSON response')) {
                                errorMessage = '{{ __tr("Server error. Please try again later or contact support.") }}';
                            }
                            
                            if (window.__Utils && window.__Utils.notification) {
                                window.__Utils.notification(errorMessage, 'error');
                            } else {
                                alert(errorMessage);
                            }
                        });
                    }
                }
            });
        });

        // Refresh Functionality
        if (refreshBtn) {
            refreshBtn.addEventListener('click', function() {
                loadingElement.classList.remove('d-none');
                flowsContainer.classList.add('d-none');
                window.location.reload();
            });
        }
    });
</script>
@endsection