@extends('layouts.app')

@section('content')
<div class="container py-4 mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <!-- Page Heading -->
            <h1>Create WhatsApp Flow</h1>
            <!-- Page Heading -->
            <hr>
            
            <div id="statusNotification" style="display: none;" class="alert" role="alert"></div>

            <!-- General setting form -->
            <form method="POST" action="{{ route('whatsapp.flows.create') }}" id="createFlowForm">
                @csrf
                
                <fieldset>
                    <legend>General Information</legend>
                    <div class="row">
                        <!-- Flow Name -->
                        <div class="form-group col-md-6">
                            <label for="name">Flow Name</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" 
                                   name="name" id="name" value="{{ old('name') }}" required>
                            @error('name')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Categories - Single select dropdown -->
                        <div class="form-group col-md-6">
                            <label for="category">Category</label>
                            <select class="form-control @error('categories') is-invalid @enderror" 
                                    id="category" name="categories[]" required>
                                <option value="">Select a category</option>
                                <option value="SIGN_UP">Sign Up</option>
                                <option value="SIGN_IN">Sign In</option>
                                <option value="APPOINTMENT_BOOKING">Appointment Booking</option>
                                <option value="LEAD_GENERATION">Lead Generation</option>
                                <option value="CONTACT_US">Contact Us</option>
                                <option value="CUSTOMER_SUPPORT">Customer Support</option>
                                <option value="SURVEY">Survey</option>
                                <option value="OTHER">Other</option>
                            </select>
                            <small class="form-text text-muted">Select a category for your flow</small>
                            @error('categories')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                </fieldset>

                <fieldset class="mt-4">
                    <legend>Flow Configuration</legend>
                    <!-- Flow JSON -->
                    <div class="form-group">
                        <label for="flow_json">Flow JSON</label>
                        <div class="position-relative">
                            <textarea class="form-control @error('flow_json') is-invalid @enderror" 
                                    id="flow_json" name="flow_json" rows="12" required>{{ old('flow_json', $defaultFlowJson) }}</textarea>
                            <div class="mt-2 text-end">
                                <button type="button" class="btn btn-outline-secondary" id="formatJson">
                                    <i class="fa fa-code"></i> Format JSON
                                </button>
                                <a type="button" class="btn btn-outline-primary" href="https://developers.facebook.com/docs/whatsapp/flows/playground" target="_blank">
                                    <i class="fa fa-code"></i> Generate Flow JSON
                                </a>
                            </div>
                        </div>
                        @error('flow_json')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                        <small class="form-text text-muted">Flow configuration in JSON format</small>
                    </div>

                    <!-- Publish Setting -->
                    <div class="form-group mt-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="publish" 
                                id="publish" value="1" {{ old('publish') ? 'checked' : '' }}>
                            <label class="form-check-label" for="publish">
                                Publish Flow Immediately
                            </label>
                        </div>
                    </div>
                </fieldset>

                <!-- Submit Buttons -->
                <div class="mt-4">
                    <div class="d-flex justify-content-between">
                        <a href="{{ route('whatsapp-flows.index') }}" class="btn btn-secondary">
                            <i class="fa fa-arrow-left"></i> Back to Flows
                        </a>
                        <button type="submit" class="btn btn-primary" id="submitBtn">
                            <i class="fa fa-save"></i> Create Flow
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('createFlowForm');
    const categorySelect = document.getElementById('category');
    const flowJsonTextarea = document.getElementById('flow_json');
    const formatJsonBtn = document.getElementById('formatJson');
    const submitBtn = document.getElementById('submitBtn');

    // Check for flash messages and display them using notification
    @if(session('error'))
        showNotification("{{ session('error') }}", 'error');
    @endif

    @if(session('success'))
        showNotification("{{ session('success') }}", 'success');
    @endif

    // Function to show notifications
    function showNotification(message, type) {
        const statusNotification = document.getElementById('statusNotification');
        statusNotification.innerText = message;
        statusNotification.style.display = 'block';
        
        if (type === 'error') {
            statusNotification.classList.add('alert-danger');
            statusNotification.classList.remove('alert-success');
        } else {
            statusNotification.classList.add('alert-success');
            statusNotification.classList.remove('alert-danger');
        }

        // Automatically hide after 5 seconds
        setTimeout(() => {
            statusNotification.style.display = 'none';
        }, 5000);
    }

    // Format JSON button handler
    formatJsonBtn.addEventListener('click', function() {
        try {
            const jsonObj = JSON.parse(flowJsonTextarea.value);
            flowJsonTextarea.value = JSON.stringify(jsonObj, null, 2);
        } catch (error) {
            showNotification('Invalid JSON format. Please check your flow configuration.', 'error');
        }
    });

    // Form validation
    form.addEventListener('submit', function(e) {
        submitBtn.disabled = true;
        
        // Validate category
        if (!categorySelect.value) {
            e.preventDefault();
            categorySelect.classList.add('is-invalid');
            submitBtn.disabled = false;
            return;
        }
        categorySelect.classList.remove('is-invalid');

        // Validate JSON
        try {
            const flowJson = JSON.parse(flowJsonTextarea.value);
            if (!flowJson.version || !flowJson.screens) {
                throw new Error('Invalid flow structure');
            }
        } catch (error) {
            e.preventDefault();
            flowJsonTextarea.classList.add('is-invalid');
            showNotification('Invalid JSON format. Please check your flow configuration.', 'error');
            submitBtn.disabled = false;
            return;
        }
        
        // Allow form submission if validation passes
    });

    // Clear validation on input
    categorySelect.addEventListener('change', function() {
        this.classList.remove('is-invalid');
    });

    flowJsonTextarea.addEventListener('input', function() {
        this.classList.remove('is-invalid');
    });
});
</script>
@endsection

@push('styles')
<style>
    fieldset {
        border: 0;
        padding: 0;
        margin-bottom: 1.5rem;
    }
    
    legend {
        font-size: 1.2rem;
        font-weight: 500;
        margin-bottom: 1rem;
        border-bottom: 1px solid #dee2e6;
        width: 100%;
        padding-bottom: 0.5rem;
    }
    
    textarea#flow_json {
        font-family: monospace;
    }
    
    /* Toast notification styles */
    #statusNotification {
        position: fixed;
        top: 20px;
        right: 20px;
        z-index: 9999;
        max-width: 350px;
    }
</style>
@endpush 