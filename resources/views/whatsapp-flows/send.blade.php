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

    fetch('{{ route("whatsapp-flows.send", $flow["id"]) }}', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': '{{ csrf_token() }}',
            'Accept': 'application/json'
        },
        body: JSON.stringify({ phone_number: phoneNumber })
    })
    .then(response => response.json())
    .then(data => {
        if (data.messages) {
            alert('Flow sent successfully!');
            window.location.href = '{{ route("whatsapp-flows.index") }}';
        } else {
            alert('Failed to send flow: ' + (data.error || 'Unknown error'));
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('An error occurred while sending the flow');
    })
    .finally(() => {
        sendButton.disabled = false;
        sendButton.innerHTML = '<i class="fa fa-paper-plane"></i> Send Flow';
    });
});
</script>
@endsection
