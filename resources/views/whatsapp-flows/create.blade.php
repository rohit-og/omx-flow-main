@extends('layouts.app')

@section('content')
<div class="container py-4 mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                    <h2 class="mb-0">Create WhatsApp Flow</h2>
                    <a href="{{ route('whatsapp-flows.index') }}" class="btn btn-light">
                        <i class="fa fa-arrow-left"></i> Back to Flows
                    </a>
                </div>

                <div class="card-body">
                    @if (session('error'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            {{ session('error') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif

                    <form id="createFlowForm" method="POST" action="{{ route('whatsapp.flows.create') }}">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4">
                                    <label for="name" class="form-label fw-bold">Flow Name</label>
                                    <input type="text" class="form-control form-control-lg @error('name') is-invalid @enderror" 
                                           id="name" name="name" value="{{ old('name') }}" required
                                           placeholder="Enter flow name">
                                    @error('name')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-4">
                                    <label for="categories" class="form-label fw-bold">Categories</label>
                                    <select class="form-select form-select-lg @error('categories') is-invalid @enderror" 
                                            id="categories" name="categories[]" multiple required>
                                        <option value="SIGN_UP">Sign Up</option>
                                        <option value="SIGN_IN">Sign In</option>
                                        <option value="APPOINTMENT_BOOKING">Appointment Booking</option>
                                        <option value="LEAD_GENERATION">Lead Generation</option>
                                        <option value="CONTACT_US">Contact Us</option>
                                        <option value="CUSTOMER_SUPPORT">Customer Support</option>
                                        <option value="SURVEY">Survey</option>
                                        <option value="OTHER">Other</option>
                                    </select>
                                    <div class="form-text">Hold Ctrl/Cmd to select multiple categories</div>
                                    @error('categories')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="mb-4">
                            <label for="flow_json" class="form-label fw-bold">Flow JSON</label>
                            <div class="position-relative">
                                <textarea class="form-control @error('flow_json') is-invalid @enderror" 
                                          id="flow_json" name="flow_json" rows="15" required>{{ old('flow_json', $defaultFlowJson) }}</textarea>
                                <button type="button" class="btn btn-outline-primary position-absolute top-0 end-0 m-2" id="formatJson">
                                    <i class="fa fa-code"></i> Format JSON
                                </button>
                            </div>
                            @error('flow_json')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                            <div class="form-text">Flow configuration in JSON format</div>
                        </div>

                        <div class="mb-4">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" name="publish" 
                                       id="publish" value="1" {{ old('publish') ? 'checked' : '' }}>
                                <label class="form-check-label" for="publish">
                                    Publish Flow Immediately
                                </label>
                            </div>
                        </div>

                        <div class="d-flex justify-content-end gap-2">
                            <button type="button" class="btn btn-outline-secondary" id="loadTemplate">
                                <i class="fa fa-file-code-o"></i> Load Template
                            </button>
                            <button type="submit" class="btn btn-primary">
                                <i class="fa fa-save"></i> Create Flow
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('createFlowForm');
    const categoriesSelect = document.getElementById('categories');
    const flowJsonTextarea = document.getElementById('flow_json');
    const formatJsonBtn = document.getElementById('formatJson');

    // Format JSON button handler
    formatJsonBtn.addEventListener('click', function() {
        try {
            const jsonObj = JSON.parse(flowJsonTextarea.value);
            flowJsonTextarea.value = JSON.stringify(jsonObj, null, 2);
        } catch (error) {
            alert('Invalid JSON format. Please check your flow configuration.');
        }
    });

    // Load template button handler
    document.getElementById('loadTemplate').addEventListener('click', function() {
        try {
            const defaultJson = @json($defaultFlowJson);
            flowJsonTextarea.value = JSON.stringify(defaultJson, null, 2);
        } catch (error) {
            alert('Error loading template. Please try again.');
        }
    });

    // Form validation
    form.addEventListener('submit', function(e) {
        // Validate categories
        if (categoriesSelect.selectedOptions.length === 0) {
            e.preventDefault();
            categoriesSelect.classList.add('is-invalid');
            return;
        }
        categoriesSelect.classList.remove('is-invalid');

        // Validate JSON
        try {
            const flowJson = JSON.parse(flowJsonTextarea.value);
            if (!flowJson.version || !flowJson.screens) {
                throw new Error('Invalid flow structure');
            }
        } catch (error) {
            e.preventDefault();
            flowJsonTextarea.classList.add('is-invalid');
            alert('Invalid JSON format. Please check your flow configuration.');
        }
    });

    // Clear validation on input
    categoriesSelect.addEventListener('change', function() {
        this.classList.remove('is-invalid');
    });

    flowJsonTextarea.addEventListener('input', function() {
        this.classList.remove('is-invalid');
    });

    // Initialize Select2 for categories
    $(categoriesSelect).select2({
        theme: 'bootstrap-5',
        width: '100%',
        placeholder: 'Select categories',
        allowClear: true
    });
});
</script>
@endsection 