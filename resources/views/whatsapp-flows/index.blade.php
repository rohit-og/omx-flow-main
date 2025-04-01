@extends('layouts.app')

@section('content')
<div class="container py-4 mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h2>WhatsApp Flows</h2>
                    <div>
                        <a href="{{ route('whatsapp-flows.create') }}" class="btn btn-primary me-2">
                            <i class="fa fa-plus"></i> Create New Flow
                        </a>
                        <button id="refresh-btn" class="btn btn-outline-primary">
                            <i class="fa fa-refresh"></i> Refresh
                        </button>
                    </div>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if (session('error'))
                        <div class="alert alert-danger" role="alert">
                            {{ session('error') }}
                        </div>
                    @endif

                    <div id="loading" class="text-center py-4 d-none">
                        <div class="spinner-border text-primary" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>
                        <p class="mt-2">Fetching flows...</p>
                    </div>

                    <div id="flows-container">
                        @if(empty($flows))
                            <div class="alert alert-info">
                                No WhatsApp flows found. Try refreshing or check your API connection.
                            </div>
                        @else
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Status</th>
                                            <th>Categories</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($flows as $flow)
                                            <tr class="{{ $flow['status'] === 'PUBLISHED' ? 'table-success' : '' }}">
                                                <td>{{ $flow['id'] }}</td>
                                                <td>{{ $flow['name'] }}</td>
                                                <td>
                                                    <span class="badge bg-{{ $flow['status'] === 'PUBLISHED' ? 'success' : 'warning' }}">
                                                        {{ $flow['status'] }}
                                                    </span>
                                                </td>
                                                <td>
                                                    @foreach($flow['categories'] as $category)
                                                        <span class="badge bg-info me-1">{{ $category }}</span>
                                                    @endforeach
                                                </td>
                                                <td>
                                                    <div class="btn-group" role="group">
                                                        <a href="{{ route('whatsapp-flows.show', $flow['id']) }}" class="btn btn-sm btn-outline-primary">
                                                            <i class="fa fa-eye"></i> View
                                                        </a>
                                                        @if($flow['status'] === 'DRAFT')
                                                            <a href="{{ route('whatsapp-flows.edit', $flow['id']) }}" class="btn btn-sm btn-outline-secondary">
                                                                <i class="fa fa-pencil"></i> Edit
                                                            </a>
                                                            <a href="{{ route('whatsapp-flows.delete', $flow['id']) }}" 
                                                               class="btn btn-sm btn-outline-danger delete-flow"
                                                               onclick="return confirm('Are you sure you want to delete the flow \"{{ $flow['name'] }}\"? This action cannot be undone.');">
                                                                <i class="fa fa-trash"></i> Delete
                                                            </a>
                                                        @endif
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                            @if(isset($pagination))
                                <div class="d-flex justify-content-between mt-4">
                                    @if(isset($pagination['before']))
                                        <a href="{{ route('whatsapp-flows.index', ['cursor' => $pagination['before']]) }}" class="btn btn-outline-primary">
                                            <i class="fa fa-arrow-left"></i> Previous
                                        </a>
                                    @else
                                        <div></div>
                                    @endif

                                    @if(isset($pagination['after']))
                                        <a href="{{ route('whatsapp-flows.index', ['cursor' => $pagination['after']]) }}" class="btn btn-outline-primary">
                                            Next <i class="fa fa-arrow-right"></i>
                                        </a>
                                    @endif
                                </div>
                            @endif
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="deleteFlowModal" tabindex="-1" aria-labelledby="deleteFlowModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteFlowModalLabel">Delete Flow</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete the flow "<span id="flowNameToDelete"></span>"?
                This action cannot be undone.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger" id="confirmDelete">Delete</button>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const refreshBtn = document.getElementById('refresh-btn');
        const loadingElement = document.getElementById('loading');
        const flowsContainer = document.getElementById('flows-container');
        const deleteFlowModal = new bootstrap.Modal(document.getElementById('deleteFlowModal'));
        let flowIdToDelete = null;

        // Delete flow button click handler
        document.querySelectorAll('.delete-flow').forEach(button => {
            button.addEventListener('click', function() {
                flowIdToDelete = this.dataset.flowId;
                document.getElementById('flowNameToDelete').textContent = this.dataset.flowName;
                deleteFlowModal.show();
            });
        });

        // Confirm delete button click handler
        document.getElementById('confirmDelete').addEventListener('click', function() {
            if (!flowIdToDelete) return;

            // Show loading state
            const deleteButton = this;
            const originalText = deleteButton.innerHTML;
            deleteButton.disabled = true;
            deleteButton.innerHTML = '<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Deleting...';

            // Make delete request
            fetch(`{{ route('whatsapp-flows.index') }}/${flowIdToDelete}`, {
                method: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}',
                    'Accept': 'application/json',
                },
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Close modal and refresh page
                    deleteFlowModal.hide();
                    window.location.reload();
                } else {
                    alert(data.message || 'Failed to delete flow');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred while deleting the flow');
            })
            .finally(() => {
                // Reset button state
                deleteButton.disabled = false;
                deleteButton.innerHTML = originalText;
            });
        });

        if (refreshBtn) {
            refreshBtn.addEventListener('click', function() {
                loadingElement.classList.remove('d-none');
                flowsContainer.classList.add('d-none');

                // Ajax request to refresh flows
                fetch('{{ route("whatsapp-flows.refresh") }}', {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}',
                        'Accept': 'application/json',
                    },
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        // Redirect to refresh the page with new data
                        window.location.reload();
                    } else {
                        alert('Error refreshing flows: ' + data.message);
                        loadingElement.classList.add('d-none');
                        flowsContainer.classList.remove('d-none');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('An error occurred while refreshing flows.');
                    loadingElement.classList.add('d-none');
                    flowsContainer.classList.remove('d-none');
                });
            });
        }
    });
</script>
@endsection