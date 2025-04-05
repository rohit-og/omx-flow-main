@extends('layouts.app')

@section('content')
<div class="container py-4 mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h2>Send Flow</h2>
                    <a href="{{ route('whatsapp-flows.index') }}" class="btn btn-outline-primary">
                        <i class="fa fa-arrow-left"></i> Back to Flows
                    </a>
                </div>

                <div class="card-body">
                    <h4 class="mb-3">Flow: {{ $flow['name'] }}</h4>
                    
                    <!-- Flow Status Badge -->
                    <div class="mb-3">
                        <span class="badge {{ $flow['status'] === 'DRAFT' ? 'bg-warning' : 'bg-success' }}">
                            {{ $flow['status'] }}
                        </span>
                    </div>

                    <!-- Validation Errors -->
                    @if(!empty($flow['validation_errors']))
                        <div class="alert alert-warning mb-3">
                            <h5 class="alert-heading">Validation Warnings</h5>
                            <ul class="mb-0">
                                @foreach($flow['validation_errors'] as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    
                    <form id="sendFlowForm" method="POST" action="{{ route('whatsapp-flows.send.post', ['id' => $flow['id']]) }}">
                        @csrf
                        <div class="mb-3">
                            <label for="phone_number" class="form-label">Phone Number (with country code)</label>
                            <input type="text" class="form-control" id="phone_number" name="phone_number"
                                   pattern="[0-9]+" placeholder="e.g., 91882228282" required
                                   title="Please enter numbers only">
                            <div class="form-text">Include country code without '+' or '00'. Numbers only.</div>
                        </div>

                        <div class="text-end">
                            <button type="submit" class="btn btn-primary" id="sendButton">
                                <i class="fa fa-paper-plane"></i> Send Flow
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
    console.log('DOM loaded, initializing form handler');
    
    const form = document.getElementById('sendFlowForm');
    const sendButton = document.getElementById('sendButton');
    const phoneNumberInput = document.getElementById('phone_number');
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    if (!form || !sendButton || !phoneNumberInput) {
        console.error('Required elements not found:', {
            form: !!form,
            sendButton: !!sendButton,
            phoneNumberInput: !!phoneNumberInput
        });
        return;
    }

    console.log('Form elements found, setting up event listeners');

    // Enforce numbers-only input for phone number
    phoneNumberInput.addEventListener('input', function(e) {
        this.value = this.value.replace(/[^0-9]/g, '');
    });

    // Show toast notifications for flash messages
    @if(session('success'))
        if (window.__Utils && window.__Utils.notification) {
            window.__Utils.notification('{{ session('success') }}', 'success');
        } else {
            alert('{{ session('success') }}');
        }
    @endif

    @if(session('error'))
        if (window.__Utils && window.__Utils.notification) {
            window.__Utils.notification('{{ session('error') }}', 'error');
        } else {
            alert('{{ session('error') }}');
        }
    @endif

    // Handle form submission with AJAX
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const phoneNumber = phoneNumberInput.value;
        
        // Validate phone number format (numbers only)
        if (!/^[0-9]+$/.test(phoneNumber)) {
            if (window.__Utils && window.__Utils.notification) {
                window.__Utils.notification('Please enter a valid phone number (numbers only)', 'error');
            } else {
                alert('Please enter a valid phone number (numbers only)');
            }
            return;
        }

        // Disable the button and show loading state
        sendButton.disabled = true;
        sendButton.innerHTML = '<span class="spinner-border spinner-border-sm"></span> Sending...';

        // Create FormData
        const formData = new FormData();
        formData.append('phone_number', phoneNumber);
        formData.append('_token', csrfToken);

        // Make the API request
        fetch(form.action, {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken,
                'Accept': 'application/json',
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: new URLSearchParams(formData)
        })
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log('Response data:', data);
            
            if (data.success) {
                // Show success toast notification
                if (window.__Utils && window.__Utils.notification) {
                    if (data.toast) {
                        window.__Utils.notification(data.toast.message, data.toast.type, data.toast.title);
                    } else {
                        window.__Utils.notification(data.message || 'Flow sent successfully', 'success');
                    }
                } else {
                    alert(data.message || 'Flow sent successfully');
                }
                
                // Reset form
                phoneNumberInput.value = '';
            } else {
                // Show error toast notification
                if (window.__Utils && window.__Utils.notification) {
                    window.__Utils.notification(data.error || 'Failed to send flow', 'error');
                } else {
                    alert(data.error || 'Failed to send flow');
                }
            }
        })
        .catch(error => {
            console.error('Error:', error);
            
            // Show error toast notification
            if (window.__Utils && window.__Utils.notification) {
                window.__Utils.notification('An error occurred while sending the flow', 'error');
            } else {
                alert('An error occurred while sending the flow');
            }
        })
        .finally(() => {
            // Re-enable the button
            sendButton.disabled = false;
            sendButton.innerHTML = '<i class="fa fa-paper-plane"></i> Send Flow';
        });
    });
});
</script>
@endsection