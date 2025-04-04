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
                    
                    <!-- Response Display Area (initially hidden) -->
                    <div id="responseContainer" class="mb-4" style="display:none;">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h5 class="mb-0">Server Response</h5>
                                <button type="button" class="btn-close" aria-label="Close" onclick="hideResponse()"></button>
                            </div>
                            <div class="card-body">
                                <pre id="responseData" class="bg-light p-3 rounded" style="max-height: 300px; overflow-y: auto;"></pre>
                            </div>
                        </div>
                    </div>
                    
                    <form id="sendFlowForm">
                        @csrf
                        <div class="mb-3">
                            <label for="phone_number" class="form-label">Phone Number (with country code)</label>
                            <input type="text" class="form-control" id="phone_number" name="phone_number"
                                   pattern="[0-9]+" placeholder="e.g., 917908963371" required
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
function showResponse(data) {
    // Format the JSON nicely
    const formattedJson = JSON.stringify(data, null, 2);
    // Set the response content
    document.getElementById('responseData').textContent = formattedJson;
    // Show the response container
    document.getElementById('responseContainer').style.display = 'block';
}

function hideResponse() {
    document.getElementById('responseContainer').style.display = 'none';
}

document.getElementById('sendFlowForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const sendButton = document.getElementById('sendButton');
    const phoneNumber = document.getElementById('phone_number').value;

    // Validate phone number format (numbers only)
    if (!/^[0-9]+$/.test(phoneNumber)) {
        alert('Please enter a valid phone number (numbers only)');
        return;
    }

    sendButton.disabled = true;
    sendButton.innerHTML = '<span class="spinner-border spinner-border-sm"></span> Sending...';

    // Create FormData
    const formData = new FormData();
    formData.append('phone_number', phoneNumber);
    formData.append('_token', document.querySelector('input[name="_token"]').value);

    // Use FormData in the fetch request
    fetch('/vendor-console/whatsapp/flows/{{ $flow["id"] }}/send', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value,
            'Accept': 'application/json'
        },
        body: formData
    })
    .then(response => {
        console.log('Response status:', response.status);
        return response.json();
    })
    .then(data => {
        console.log('Response data:', data);
        // Always show the response data
        showResponse(data);
        
        if (data.success) {
            sendButton.classList.remove('btn-primary');
            sendButton.classList.add('btn-success');
            sendButton.innerHTML = '<i class="fa fa-check"></i> Flow Sent Successfully';
        } else {
            sendButton.classList.remove('btn-primary');
            sendButton.classList.add('btn-danger');
            sendButton.innerHTML = '<i class="fa fa-exclamation-circle"></i> Failed to Send Flow';
            // Keep the error message displayed in the response container
        }
    })
    .catch(error => {
        console.error('Error:', error);
        showResponse({
            success: false,
            error: error.message || 'An unexpected error occurred'
        });
        
        sendButton.classList.remove('btn-primary');
        sendButton.classList.add('btn-danger');
        sendButton.innerHTML = '<i class="fa fa-exclamation-circle"></i> Error';
    })
    .finally(() => {
        // Re-enable the button after 3 seconds to allow for another attempt
        setTimeout(() => {
            sendButton.disabled = false;
            sendButton.classList.remove('btn-success', 'btn-danger');
            sendButton.classList.add('btn-primary');
            sendButton.innerHTML = '<i class="fa fa-paper-plane"></i> Send Flow';
        }, 3000);
    });
});

// Enforce numbers-only input for phone number
document.getElementById('phone_number').addEventListener('input', function(e) {
    this.value = this.value.replace(/[^0-9]/g, '');
});
</script>
@endsection
