@extends('layouts.app')

@section('content')
<div class="container py-4 mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h2>Edit Flow</h2>
                    <a href="{{ route('whatsapp-flows.index') }}" class="btn btn-outline-primary">
                        <i class="fa fa-arrow-left"></i> Back to Flows
                    </a>
                </div>

                <div class="card-body">
                    @if (session('error'))
                        <div class="alert alert-danger">{{ session('error') }}</div>
                    @endif

                    <form method="POST" action="{{ route('whatsapp-flows.update', $flow['id']) }}">
                        @csrf
                        @method('PUT')

                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" 
                                   value="{{ old('name', $flow['name']) }}" required>
                        </div>

                        <div class="mb-3">
                            <label for="categories" class="form-label">Categories</label>
                            <select class="form-select" id="categories" name="categories">
                                <option value="SIGN_UP" {{ in_array('SIGN_UP', $flow['categories']) ? 'selected' : '' }}>Sign Up</option>
                                <option value="SIGN_IN" {{ in_array('SIGN_IN', $flow['categories']) ? 'selected' : '' }}>Sign In</option>
                                <option value="APPOINTMENT_BOOKING" {{ in_array('APPOINTMENT_BOOKING', $flow['categories']) ? 'selected' : '' }}>Appointment Booking</option>
                                <option value="LEAD_GENERATION" {{ in_array('LEAD_GENERATION', $flow['categories']) ? 'selected' : '' }}>Lead Generation</option>
                                <option value="CONTACT_US" {{ in_array('CONTACT_US', $flow['categories']) ? 'selected' : '' }}>Contact Us</option>
                                <option value="CUSTOMER_SUPPORT" {{ in_array('CUSTOMER_SUPPORT', $flow['categories']) ? 'selected' : '' }}>Customer Support</option>
                                <option value="SURVEY" {{ in_array('SURVEY', $flow['categories']) ? 'selected' : '' }}>Survey</option>
                                <option value="OTHER" {{ in_array('OTHER', $flow['categories']) ? 'selected' : '' }}>Other</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="flow_json" class="form-label">Flow JSON</label>
                            <textarea class="form-control" id="flow_json" name="flow_json" rows="15" required>{{ old('flow_json', isset($flowJson) ? $flowJson : json_encode($flow, JSON_PRETTY_PRINT)) }}</textarea>
                        </div>

                        <div class="text-end">
                            <button type="submit" class="btn btn-primary">Update Flow</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
