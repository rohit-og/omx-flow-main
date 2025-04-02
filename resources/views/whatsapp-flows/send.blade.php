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
                    
                    <form id="sendFlowForm">
                        @csrf
                        <div class="mb-3">
                            <label for="phone_number" class="form-label">Phone Number (with country code)</label>
                            <input type="text" class="form-control" id="phone_number" 
                                   placeholder="e.g., 917908963371" required>
                            <div class="form-text">Include country code without '+' or '00'</div>
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
document.getElementById('sendFlowForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const sendButton = document.getElementById('sendButton');
    const phoneNumber = document.getElementById('phone_number').value;

    sendButton.disabled = true;
    sendButton.innerHTML = '<span class="spinner-border spinner-border-sm"></span> Sending...';

    fetch('/vendor-console/whatsapp/flows/{{ $flow["id"] }}/send', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value,
            'Accept': 'application/json'
        },
        body: JSON.stringify({ phone_number: phoneNumber })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        if (data.messages || data.success) {
            alert('Flow sent successfully!');
            window.location.href = '{{ route("whatsapp-flows.index") }}';
        } else {
            throw new Error(data.error || 'Failed to send flow');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('An error occurred while sending the flow: ' + error.message);
    })
    .finally(() => {
        sendButton.disabled = false;
        sendButton.innerHTML = '<i class="fa fa-paper-plane"></i> Send Flow';
    });
});
</script>
@endsection
