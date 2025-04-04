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
                                            <tr class="{{ $flow['status'] === 'PUBLISHED' ? 'table-success' : '' }}">
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
                                                               class="btn btn-sm btn-danger lw-ajax-link-action-via-confirm" 
                                                               data-method="delete"
                                                               data-confirm="#lwDeleteFlow-template"
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

        // Define callback function for delete action
        window.flowDeleteCallback = function(response) {
            if (response.success) {
                // Show success notification if available
                if (window.__Utils && window.__Utils.notification) {
                    window.__Utils.notification('{{ __tr("Flow deleted successfully") }}', 'success');
                } else {
                    alert('{{ __tr("Flow deleted successfully") }}');
                }
                // Reload the page
                window.location.reload();
            } else {
                // Show error notification
                const errorMessage = response.message || '{{ __tr("Failed to delete flow") }}';
                if (window.__Utils && window.__Utils.notification) {
                    window.__Utils.notification(errorMessage, 'error');
                } else {
                    alert(errorMessage);
                }
            }
        };

        // Initialize delete buttons
        document.querySelectorAll('.lw-ajax-link-action-via-confirm').forEach(button => {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                
                // Get the URL from the href attribute
                const url = this.getAttribute('href');
                console.log('Delete URL:', url);
                
                // Get the confirmation template ID
                const confirmTemplateId = this.getAttribute('data-confirm');
                const confirmTemplate = document.querySelector(confirmTemplateId);
                const confirmContent = confirmTemplate ? confirmTemplate.innerHTML : '{{ __tr("Are you sure you want to delete this flow?") }}';
                
                // Show confirmation
                if (confirm(confirmContent.replace(/<[^>]*>/g, ''))) {
                    // Use fetch API to send DELETE request
                    fetch(url, {
                        method: 'DELETE',
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json',
                            'X-Requested-With': 'XMLHttpRequest'
                        }
                    })
                    .then(response => {
                        console.log('Response status:', response.status);
                        return response.json();
                    })
                    .then(data => {
                        console.log('Delete response:', data);
                        if (data.success) {
                            // Show success notification
                            if (window.__Utils && window.__Utils.notification) {
                                window.__Utils.notification('{{ __tr("Flow deleted successfully") }}', 'success');
                            } else {
                                alert('{{ __tr("Flow deleted successfully") }}');
                            }
                            // Reload the page
                            window.location.reload();
                        } else {
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
                        if (window.__Utils && window.__Utils.notification) {
                            window.__Utils.notification('{{ __tr("An error occurred while deleting the flow") }}', 'error');
                        } else {
                            alert('{{ __tr("An error occurred while deleting the flow") }}');
                        }
                    });
                }
            });
        });

        // Refresh Functionality
        if (refreshBtn) {
            refreshBtn.addEventListener('click', function() {
                loadingElement.classList.remove('d-none');
                flowsContainer.classList.add('d-none');

                fetch('{{ route("whatsapp-flows.refresh") }}', {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}',
                        'Accept': 'application/json',
                    }
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        window.location.reload();
                    } else {
                        if (window.__Utils && window.__Utils.notification) {
                            window.__Utils.notification('{{ __tr("Error refreshing flows: ") }}' + data.message, 'error');
                        } else {
                            alert('{{ __tr("Error refreshing flows: ") }}' + data.message);
                        }
                        loadingElement.classList.add('d-none');
                        flowsContainer.classList.remove('d-none');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    if (window.__Utils && window.__Utils.notification) {
                        window.__Utils.notification('{{ __tr("An error occurred while refreshing flows") }}', 'error');
                    } else {
                        alert('{{ __tr("An error occurred while refreshing flows") }}');
                    }
                    loadingElement.classList.add('d-none');
                    flowsContainer.classList.remove('d-none');
                });
            });
        }
    });
</script>
@endsection