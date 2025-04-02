@extends('layouts.app')

@section('content')
<div class="container py-4 mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h2>Flow Preview</h2>
                    <a href="{{ route('whatsapp-flows.index') }}" class="btn btn-outline-primary">
                        <i class="fa fa-arrow-left"></i> Back to Flows
                    </a>
                </div>

                <div class="card-body">
                    <h4 class="mb-3">{{ $flow['name'] }}</h4>
                    
                    <div id="previewContainer">
                        <div class="text-center py-4">
                            <div class="spinner-border text-primary"></div>
                            <p class="mt-2">Loading preview...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    fetch('{{ route("whatsapp-flows.preview", $flow["id"]) }}')
        .then(response => response.json())
        .then(data => {
            if (data.preview?.preview_url) {
                document.getElementById('previewContainer').innerHTML = `
                    <iframe src="${data.preview.preview_url}" 
                            style="width: 100%; height: 800px; border: none;"></iframe>`;
            } else {
                document.getElementById('previewContainer').innerHTML = `
                    <div class="alert alert-danger">
                        Failed to load preview. Please try again later.
                    </div>`;
            }
        })
        .catch(error => {
            console.error('Error:', error);
            document.getElementById('previewContainer').innerHTML = `
                <div class="alert alert-danger">
                    An error occurred while loading the preview.
                </div>`;
        });
});
</script>
@endsection
