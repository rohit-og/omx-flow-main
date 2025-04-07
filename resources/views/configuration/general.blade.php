@extends('layouts.app')
@section('content')
@include('layouts.headers.cards')
@push('head')
<?= __yesset(['dist/css/dashboard.css'],true)?>
@endpush
<style>
    /* Modern Card Styling */
    .card {
        background: white;
        border: none;
        border-radius: 16px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
        transition: all 0.3s ease;
        overflow: hidden;
        position: relative;
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        background: linear-gradient( rgba(34, 213, 112, 0.08), rgba(34, 213, 112, 0));
        transition: 0.30s ease-in-out;
    }

    /* Form Styling */
    .form-group {
        margin-bottom: 1.5rem;
    }

    .form-control {
        border-radius: 12px;
        border: 1px solid rgba(0, 0, 0, 0.1);
        padding: 0.75rem 1rem;
        transition: all 0.3s ease;
    }

    .form-control:focus {
        border-color: #22D571;
        box-shadow: 0 0 0 0.2rem rgba(34, 213, 113, 0.25);
    }

    .form-control-user {
        padding-left: 1rem;
    }

    label {
        font-weight: 600;
        color:rgb(63, 241, 9);
        margin-bottom: 0.5rem;
    }

    .help-text {
        color: #718096;
        font-size: 0.875rem;
        margin-top: 0.25rem;
    }

    /* Fieldset Styling */
    fieldset {
        border: none;
        border-radius: 16px;
        background: white;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
        padding: 1.5rem;
        margin-bottom: 2rem;
        transition: all 0.3s ease;
    }

    fieldset:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
    }

    legend {
        font-size: 1.25rem;
        font-weight: 700;
        color:rgb(74, 247, 6);
        padding: 0 1rem;
        margin-bottom: 1.5rem;
        border-bottom: 1px solid rgba(64, 245, 9, 0.17);
        width: 100%;
    }

    /* Button Styling */
    .btn-primary {
        background: linear-gradient(135deg, #22D571, #14A84E);
        border: none;
        border-radius: 12px;
        padding: 0.75rem 1.5rem;
        font-weight: 600;
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(34, 213, 113, 0.2);
    }

    /* Alert Styling */
    .alert {
        border-radius: 12px;
        border: none;
        padding: 1rem 1.5rem;
    }

    .alert-default {
        background: rgba(34, 213, 113, 0.1);
        color: #22D571;
    }

    /* Page Header Styling */
    .page-header {
        margin-bottom: 2rem;
    }

    .page-header h1 {
        font-size: 1.75rem;
        font-weight: 700;
        color: #2D3748;
        margin-bottom: 0.5rem;
    }

    /* Upload Section Styling */
    .upload-section {
        background: white;
        border-radius: 16px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
        padding: 1.5rem;
        margin-bottom: 2rem;
        transition: all 0.3s ease;
    }

    .upload-section:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
    }

    .upload-title {
        font-size: 1.25rem;
        font-weight: 700;
        color: #2D3748;
        margin-bottom: 1.5rem;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        padding-bottom: 1rem;
    }

    /* File Uploader Styling */
    .lw-uploader {
        border-radius: 12px;
        border: 1px dashed rgba(0, 0, 0, 0.1);
        padding: 1.5rem;
        transition: all 0.3s ease;
    }

    .lw-uploader:hover {
        border-color: #22D571;
        background: rgba(34, 213, 113, 0.05);
    }
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-header">
                <h1><?= __tr('General Settings') ?></h1>
                <p class="text-muted"><?= __tr('Configure your application settings') ?></p>
            </div>
        </div>
    </div>

    <!-- General setting form -->
    <form class="lw-ajax-form lw-form" method="post" action="<?= route('manage.configuration.write', ['pageType' => request()->pageType]) ?>">
        <div class="row">
            <div class="col-12">
                <div class="upload-section">
                    <div class="upload-title">
                        <i class="fas fa-image mr-2"></i><?= __tr('Brand Assets') ?>
                    </div>
                    <div class="alert alert-default">
                        <i class="fas fa-info-circle mr-2"></i>{{  __tr('Upload will be processed automatically on valid selection.') }}
                    </div>
                    <div class="row">
                        <!-- upload logo -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="lwUploadLogo"><?= __tr('Logo') ?></label>
                                <input type="file" data-lw-plugin="lwUploader" data-label-idle="{{ __tr('Select New Logo') }}" data-allow-revert="true" data-instant-upload="true" data-action="<?= route('media.upload_logo') ?>" id="lwUploadLogo" data-callback="afterUploadedFile" data-default-image-url="<?= getAppSettings('logo_image_url') ?>">
                            </div>
                        </div>
                        <!-- /upload logo -->
                        <!-- upload small logo -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="lwUploadSmallLogo"><?= __tr('Small Logo') ?></label>
                                <input type="file" data-lw-plugin="lwUploader" data-label-idle="{{ __tr('Select New Small Logo') }}" data-allow-revert="true" data-instant-upload="true" data-action="<?= route('media.upload_small_logo') ?>" id="lwUploadSmallLogo" data-callback="afterUploadedFile" data-default-image-url="<?= getAppSettings('small_logo_image_url') ?>">
                            </div>
                        </div>
                        <!-- /upload small logo -->
                        <!-- upload favicon -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="lwUploadFavicon"><?= __tr('Favicon') ?></label>
                                <input type="file" data-lw-plugin="lwUploader" data-label-idle="{{ __tr('Select New Favicon') }}" data-instant-upload="true" data-action="<?= route('media.upload_favicon') ?>" data-callback="afterUploadedFile" id="lwUploadFavicon" data-default-image-url="<?= getAppSettings('favicon_image_url') ?>">
                            </div>
                        </div>
                        <!-- /upload favicon -->
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <fieldset>
                    <legend><i class="fas fa-globe mr-2"></i><?= __tr('Website Information') ?></legend>
                    <!-- Website Name -->
                    <div class="form-group">
                        <label for="lwWebsiteName"><?= __tr('Your Website Name') ?></label>
                        <input type="text" class="form-control form-control-user" name="name" id="lwWebsiteName" value="<?= $configurationData['name'] ?>" required>
                    </div>
                    <!-- /Website Name -->
                    <!-- Website Description -->
                    <div class="form-group">
                        <label for="lwWebsiteDescription"><?= __tr('Your Website Description') ?></label>
                        <textarea name="description" id="lwWebsiteDescription" class="form-control" rows="2"><?= $configurationData['description'] ?></textarea>
                    </div>
                    <!-- /Website Description -->
                </fieldset>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <fieldset>
                    <legend><i class="fas fa-envelope mr-2"></i><?= __tr('Contact Settings') ?></legend>
                    <!-- Contact Email -->
                    <div class="form-group">
                        <label for="lwContactEmail"><?= __tr('Contact Email') ?></label>
                        <input type="email" class="form-control form-control-user" name="contact_email" id="lwContactEmail" value="<?= $configurationData['contact_email'] ?>">
                        <small class="help-text">{{  __tr('It will be used to receive contact form emails') }}</small>
                    </div>
                    <!-- /Contact Email -->
                    <!-- Contact details -->
                    <div class="form-group">
                        <label for="lwContactDetails"><?= __tr('Contact Details') ?></label>
                        <textarea class="form-control form-control-user" name="contact_details" rows="4" id="lwContactDetails">{!! $configurationData['contact_details'] !!}</textarea>
                        <small class="help-text">{{  __tr('Details added here will be shown on contact page') }}</small>
                    </div>
                    <!-- /Contact details -->
                </fieldset>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <fieldset>
                    <legend><i class="fas fa-cog mr-2"></i><?= __tr('Additional Settings') ?></legend>
                    <!-- Demo Video Link -->
                    <div class="form-group">
                        <label for="lwDemoVideoLink"><?= __tr('Demo Video Link') ?></label>
                        <input type="text" class="form-control form-control-user" name="demo_video_link" id="lwDemoVideoLink" value="<?= $configurationData['demo_video_link'] ?>">
                        <small class="help-text">{{  __tr('It will be used to display Demo Video button in Homepage ') }}</small>
                    </div>
                    <!-- /Demo Video Link -->
                    <!-- WhatsApp Demo Link -->
                    <div class="form-group">
                        <label for="lwWhatsAppDemoLink"><?= __tr('WhatsApp Demo Link') ?></label>
                        <input type="text" class="form-control form-control-user" name="whatsapp_demo_link" id="lwWhatsAppDemoLink" value="<?= $configurationData['whatsapp_demo_link'] ?>">
                        <small class="help-text">{{  __tr('It will be used to add link for Book Demo Button in Homepage ') }}</small>
                    </div>
                    <!-- /WhatsApp Demo Link -->
                    
                    <div class="row">
                        <!-- Hero Image Upload -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="lwUploadHeroImage"><?= __tr('Hero Image') ?></label>
                                <input type="file" 
                                    data-lw-plugin="lwUploader" 
                                    data-label-idle="{{ __tr('Select New Hero Image') }}" 
                                    data-instant-upload="true" 
                                    data-action="<?= route('media.upload_hero_image') ?>" 
                                    data-callback="afterUploadedFile" 
                                    id="lwUploadHeroImage" 
                                    data-default-image-url="<?= getAppSettings('hero_image') ?>">
                                <small class="help-text">{{ __tr('Recommended size: 1200x1200 pixels') }}</small>
                            </div>
                        </div>
                        <!-- /Hero Image Upload -->

                        <!-- WhatsApp QR Code Upload -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="lwUploadWhatsAppQR"><?= __tr('WhatsApp QR Code') ?></label>
                                <input type="file" 
                                    data-lw-plugin="lwUploader" 
                                    data-label-idle="{{ __tr('Select WhatsApp QR Code') }}" 
                                    data-instant-upload="true" 
                                    data-action="<?= route('media.upload_whatsapp_qr') ?>" 
                                    data-callback="afterUploadedFile" 
                                    id="lwUploadWhatsAppQR" 
                                    data-default-image-url="<?= getAppSettings('whatsapp_qr_image') ?>">
                                <small class="help-text">{{ __tr('Upload your WhatsApp QR code image for easy scanning') }}</small>
                            </div>
                        </div>
                        <!-- /WhatsApp QR Code Upload -->
                    </div>
                </fieldset>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <fieldset>
                    <legend><i class="fas fa-globe-americas mr-2"></i><?= __tr('Localization') ?></legend>
                    <!-- Select Timezone -->
                    <div class="form-group">
                        <label for="lwSelectTimezone"><?= __tr('Select Timezone') ?></label>
                        <select data-lw-plugin="lwSelectize" data-label-field="name" data-selected="{{ $configurationData['timezone'] }}" data-search-field="{{ json_encode(['id','name']) }}" data-value-field="id" id="lwSelectTimezone" class="form-control form-control-user" name="timezone" required>
                            @foreach($configurationData['timezone_list'] as $timezone)
                            <option value="<?= $timezone['value'] ?>"><?= $timezone['text'] ?></option>
                            @endforeach
                        </select>
                    </div>
                    <!-- /Select Timezone -->

                    <!-- Select Default language -->
                    <div class="form-group">
                        <label for="lwSelectDefaultLanguage"><?= __tr('Default Language') ?></label>
                        <select id="lwSelectDefaultLanguage" data-lw-plugin="lwSelectize" placeholder="Default Language..." name="default_language">
                            @if(!__isEmpty($configurationData['languageList']))
                            @foreach($configurationData['languageList'] as $key => $language)
                            <option value="<?= $language['id'] ?>" <?= $configurationData['default_language'] == $language['id'] ? 'selected' : '' ?> required><?= $language['name'] ?></option>
                            @endforeach
                            @endif
                        </select>
                    </div>
                    <!-- /Select Default language -->
                </fieldset>
            </div>
        </div>

        <!-- Update Button -->
        <div class="row mt-4">
            <div class="col-12">
                <a href class="lw-ajax-form-submit-action btn btn-primary btn-user">
                    <i class="fas fa-save mr-2"></i><?= __tr('Save Settings') ?>
                </a>
            </div>
        </div>
        <!-- /Update Button -->
    </form>
    <!-- /General setting form -->
</div>

@include('layouts.footers.auth')
@endsection

@push('js')
<?= __yesset(['dist/js/dashboard.js'],true)?>
@endpush

@push('appScripts')
<script>
    (function($) {
        'use strict';
        // After file successfully uploaded then this function is called
        window.afterUploadedFile = function (responseData) {
            var requestData = responseData.data;
            $('#lwUploadedLogo').attr('src', requestData.path);
        }
    })(jQuery);
</script>
@endpush