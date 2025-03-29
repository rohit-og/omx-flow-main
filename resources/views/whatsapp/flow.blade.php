<!-- resources/views/whatsapp/flow.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container-fluid mt-5 pt-5">
    <div class="row">
        <div class="col-12">
            @if(session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif

            @if(session('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('error') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif

            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4 class="mb-0">WhatsApp Flows</h4>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createFlowModal">
                        <i class="fas fa-plus-circle"></i> Create New Flow
                    </button>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Category</th>
                                <th>Status</th>
                                    <th>Created At</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                                @forelse($flows as $flow)
                                <tr>
                                    <td>{{ $flow->name }}</td>
                                    <td>{{ $flow->category }}</td>
                                    <td>
                                            <span class="badge bg-{{ $flow->status === 'published' ? 'success' : 'warning' }}">
                                            {{ ucfirst($flow->status) }}
                                        </span>
                                    </td>
                                        <td>{{ $flow->created_at->format('M d, Y H:i') }}</td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('vendor.flow.builder.read.view', ['id' => $flow->_id]) }}" 
                                                   class="btn btn-sm btn-outline-primary" 
                                                   title="Edit Flow">
                                                    <i class="fas fa-edit"></i>
                                                </a>
                                                <a href="{{ route('vendor.flow.read.preview', ['id' => $flow->_id]) }}" 
                                                   class="btn btn-sm btn-outline-info" 
                                                   title="Preview Flow">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                        @if($flow->status !== 'published')
                                                    <form action="{{ route('vendor.flow.write.publish', ['id' => $flow->_id]) }}" 
                                                          method="POST" 
                                                          class="d-inline">
                                                @csrf
                                                        <button type="submit" 
                                                                class="btn btn-sm btn-outline-success" 
                                                                title="Publish Flow">
                                                            <i class="fas fa-cloud-upload-alt"></i>
                                                        </button>
                                            </form>
                                                @endif
                                                @if($flow->status === 'published')
                                                    <button type="button" 
                                                            class="btn btn-sm btn-outline-secondary start-flow" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#startFlowModal" 
                                                            data-flow-id="{{ $flow->_id }}"
                                                            title="Start Flow">
                                                        <i class="fas fa-play-circle"></i>
                                            </button>
                                                @endif
                                                <a href="javascript:void(0)" 
                                                   class="btn btn-sm btn-outline-danger lw-ajax-link-action"
                                                   data-method="post"
                                                   data-action="{{ route('vendor.flow.write.delete', ['id' => $flow->_id]) }}"
                                                   data-callback="onFlowDeleted"
                                                   data-flow-name="{{ $flow->name }}"
                                                   data-confirm="#deleteFlowConfirm-template"
                                                   title="Delete Flow">
                                                    <i class="fas fa-trash"></i>
                                                </a>
                                            </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                        <td colspan="5" class="text-center">
                                            <p class="text-muted my-3">No flows available</p>
                                            <button type="button" 
                                                    class="btn btn-primary" 
                                                    data-bs-toggle="modal" 
                                                    data-bs-target="#createFlowModal">
                                                <i class="fas fa-plus-circle"></i> Create Your First Flow
                                            </button>
                                        </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Create Flow Modal -->
<div class="modal fade" id="createFlowModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{{ route('vendor.flow.write.store.process') }}" method="POST" id="createFlowForm">
                @csrf
            <div class="modal-header">
                    <h5 class="modal-title">Create New Flow</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                    <div class="mb-3">
                        <label for="flowName" class="form-label">Flow Name</label>
                        <input type="text" 
                               class="form-control @error('name') is-invalid @enderror" 
                               id="flowName" 
                               name="name" 
                               required>
                        @error('name')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="mb-3">
                        <label for="flowCategory" class="form-label">Category</label>
                        <select class="form-select @error('category') is-invalid @enderror" 
                                id="flowCategory" 
                                name="category" 
                                required>
                            <option value="">Select a category</option>
                            <option value="CUSTOMER_SERVICE">Customer Service</option>
                            <option value="SALES">Sales</option>
                            <option value="SUPPORT">Support</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="OTHER">Other</option>
                        </select>
                        @error('category')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="mb-3">
                        <label for="flowDescription" class="form-label">Description (Optional)</label>
                        <textarea class="form-control @error('description') is-invalid @enderror" 
                                  id="flowDescription" 
                                  name="description" 
                                  rows="3"></textarea>
                        @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Create Flow</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Start Flow Modal -->
<div class="modal fade" id="startFlowModal" tabindex="-1" aria-labelledby="startFlowModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="startFlowForm" method="POST">
                @csrf
                <input type="hidden" name="flow_id" value="">
            <div class="modal-header">
                    <h5 class="modal-title" id="startFlowModalLabel">Start Flow</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                    <div class="mb-3">
                        <label for="phone_number" class="form-label">Phone Number</label>
                        <input type="text" class="form-control" id="phone_number" name="phone_number" required>
                        <div class="form-text">Enter the phone number with country code (e.g., +1234567890)</div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Start Flow</button>
            </div>
            </form>
        </div>
    </div>
</div>

@push('scripts')
<script type="text/template" id="deleteFlowConfirm-template">
    <h3>{{ __tr('Delete Flow') }}</h3>
    <p>{{ __tr('Are you sure you want to delete flow') }} "<strong>__flowName__</strong>"? {{ __tr('This action cannot be undone.') }}</p>
</script>

<script>
    function onFlowDeleted(response, $this) {
        if (response.reaction === 1) {
            const flowName = $this.attr('data-flow-name');
            window.__Utils.notification(`Flow "${flowName}" deleted successfully`, 'success');
            setTimeout(() => {
                window.location.reload();
            }, 1500);
        } else {
            window.__Utils.notification(response.data.message || 'Failed to delete flow', 'error');
        }
    }

    $(document).ready(function() {
        // Handle dynamic confirmation message
        $(document).on('click', '.lw-ajax-link-action', function() {
            const flowName = $(this).attr('data-flow-name');
            const template = $('#deleteFlowConfirm-template').html();
            const message = template.replace('__flowName__', flowName);
            $(this).attr('data-confirm-message', message);
        });

        // Store all route URLs in JavaScript variables
        const routes = {
            builderUrl: "{{ route('vendor.flow.builder.read.view', ['id' => ':id']) }}",
            startUrl: "{{ route('vendor.flow.write.start') }}",
            storeUrl: "{{ route('vendor.flow.write.store.process') }}"
        };

        $('.start-flow').click(function() {
            const flowId = $(this).data('flow-id');
            $('#startFlowForm').attr('action', routes.startUrl);
            $('#startFlowForm input[name="flow_id"]').val(flowId);
        });

        $('#createFlowForm').on('submit', function(e) {
            e.preventDefault();
            const form = $(this);
            
            $.ajax({
                url: form.attr('action'),
                type: 'POST',
                data: form.serialize(),
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (response.reaction === 1) {
                        const flowId = response.data.flow._id;
                        const redirectUrl = routes.builderUrl.replace(':id', flowId);
                        window.location.href = redirectUrl;
                    } else {
                        alert(response.data.message || 'Error creating flow');
                    }
                },
                error: function(xhr) {
                    const errors = xhr.responseJSON.errors;
                    for (const field in errors) {
                        $(`#${field}`).addClass('is-invalid');
                        $(`#${field}`).after(`<div class="invalid-feedback">${errors[field]}</div>`);
                    }
                }
            });
        });
    });
</script>
@endpush

@endsection