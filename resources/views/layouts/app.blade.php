@php
$hasActiveLicense = true;
if(isLoggedIn() and (request()->route()->getName() != 'manage.configuration.product_registration') and (!getAppSettings('product_registration', 'registration_id') or sha1(array_get($_SERVER, 'HTTP_HOST', '') . getAppSettings('product_registration', 'registration_id') . '4.5+') !== getAppSettings('product_registration', 'signature'))) {
    $hasActiveLicense = false;
    if(hasCentralAccess()) {
        header("Location: " . route('manage.configuration.product_registration'));
        exit;
    }
}
@endphp
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" dir="{{ $CURRENT_LOCALE_DIRECTION }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title> {{ (isset($title) and $title) ? $title : __tr('Welcome') }} - {{ getAppSettings('name') }}</title>
    <!-- Favicon -->
    <link href="{{getAppSettings('favicon_image_url') }}" rel="icon">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Nunito+Sans:ital,opsz,wght@0,6..12,200..1000;1,6..12,200..1000&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    @stack('head')
    {!! __yesset([
        'static-assets/packages/fontawesome/css/all.css',
        'dist/css/common-vendorlibs.css',
        'dist/css/vendorlibs.css',
        'argon/css/argon.min.css',
        'dist/css/app.css',
    ]) !!}
    {{-- custom app css --}}
    <link href="{{ route('app.load_custom_style') }}" rel="stylesheet" />
    <style>
        /* Navbar Styling */
        #navbar-main {
            background-color: #ffffff !important;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }
        
        .navbar-brand {
            color: #2D3748 !important;
            font-weight: 600;
        }
        
        .navbar-nav .nav-link {
            color: #4A5568 !important;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        .navbar-nav .nav-link:hover {
            color: #22D571 !important;
        }
        
        .navbar-nav .nav-link.active {
            color: #22D571 !important;
            font-weight: 600;
        }
        
        .navbar-toggler {
            border: none;
            padding: 0.5rem;
        }
        
        .navbar-toggler:focus {
            box-shadow: none;
        }
        
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(45, 55, 72, 0.75)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }
        
        /* Super Admin Payment Text Color */
        .super-admin-payment-text {
            color: #000000 !important;
        }
        
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
        }

        /* Form Controls */
        .form-control {
            border-radius: 12px;
            border: 1px solid rgba(0, 0, 0, 0.1);
            padding: 12px 16px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: rgb(241, 245, 242);
            box-shadow: 0 0 0 3px rgba(34, 213, 113, 0.1);
            transform: translateY(-2px);
        }

        /* Buttons */
        .btn {
            border-radius: 12px;
            padding: 12px 24px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background: linear-gradient(135deg, #22D571, #14A84E);
            border: none;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(34, 213, 113, 0.2);
        }

        /* Fieldset Styling */
        fieldset {
            border: none;
            border-radius: 16px;
            padding: 24px;
            margin-bottom: 24px;
            background: white;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        fieldset:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        fieldset::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 150px;
            height: 150px;
            background: linear-gradient(45deg, rgba(34, 213, 113, 0.03), rgba(34, 213, 113, 0.08));
            border-radius: 50%;
            transform: translate(40%, -40%);
            z-index: 0;
            transition: all 0.3s ease;
        }

        fieldset:hover::before {
            transform: translate(30%, -30%) scale(1.1);
        }

        legend {
            -webkit-background-clip: text;
            -webkit-text-fill-color: ;
            font-weight: 600;
            font-size: 18px;
            padding: 0 12px;
            margin-bottom: 20px;
            display: inline-block;
            position: relative;
            z-index: 1;
        }

        /* Form Groups */
        .form-group {
            margin-bottom: 20px;
            position: relative;
            z-index: 1;
        }

        .form-group label {
            font-weight: 500;
            color: #2D3748;
            margin-bottom: 8px;
        }

        /* Alerts */
        .alert {
            border: none;
            border-radius: 12px;
            padding: 16px 24px;
            margin-bottom: 24px;
            position: relative;
            overflow: hidden;
        }

        .alert::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 100px;
            height: 100px;
            background: linear-gradient(45deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
            border-radius: 50%;
            transform: translate(30%, -30%);
        }

        .alert-danger {
            background: linear-gradient(135deg, #F56565, #E53E3E);
            color: white;
        }

        .alert-warning {
            background: linear-gradient(135deg, #F6AD55, #DD6B20);
            color: white;
        }

        .alert-success {
            background: linear-gradient(135deg, #22D571, #14A84E);
            color: white;
        }

        /* Tables */
        .table {
            margin: 0;
        }

        .table th {
            background: linear-gradient(135deg, #22D571, #14A84E);
            color: white;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 13px;
            letter-spacing: 0.5px;
            padding: 16px 25px;
            border: none;
        }

        .table td {
            padding: 16px 25px;
            color: #2D3748;
            font-weight: 500;
            vertical-align: middle;
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }

        .table tr {
            transition: all 0.2s ease;
        }

        .table tr:hover {
            background-color: rgba(34, 213, 113, 0.02);
        }

        /* Icons */
        .gradient-icon {
            background: linear-gradient(135deg, #22D571, #14A84E);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-size: 24px;
            margin-right: 8px;
        }

        /* Upload Sections */
        .upload-section {
            border: 2px dashed rgba(34, 213, 113, 0.2);
            border-radius: 16px;
            padding: 24px;
            text-align: center;
            transition: all 0.3s ease;
            background: white;
            margin-bottom: 24px;
        }

        .upload-section:hover {
            border-color: #22D571;
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .upload-title {
            font-weight: 600;
            color: #2D3748;
            margin-bottom: 12px;
            transition: all 0.3s ease;
        }

        .upload-section:hover .upload-title {
            color: #22D571;
            transform: scale(1.05);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .card, fieldset, .upload-section {
                margin-bottom: 16px;
            }

            .btn {
                width: 100%;
                margin-bottom: 8px;
            }

            .form-group {
                margin-bottom: 16px;
            }
        }
    </style>
</head>
<body class="@if(hasVendorAccess() or hasVendorUserAccess()) empty @endif pb-5 @if(isLoggedIn()) lw-authenticated-page @else lw-guest-page @endif {{ $class ?? '' }}" x-cloak x-data="{disableSoundForMessageNotification:{{ getVendorSettings('is_disabled_message_sound_notification') ? 1 : 0 }},unreadMessagesCount:null}">
    @auth()
    @include('layouts.navbars.sidebar')
    @endauth

    <div class="main-content">
        @include('layouts.navbars.navbar')
        @if(isDemo())
        <div class="container">
            <div class="row">
                <a class="alert alert-danger col-12 mt-md-8 mt-sm-4 mb-sm--3 text-center text-white" target="_blank" href="https://codecanyon.net/item/whatsjet-saas-a-whatsapp-marketing-platform-with-bulk-sending-campaigns-chat-bots/51167362">
                    {{  __tr('Please Note: We sell this script only through CodeCanyon.net at ') }} https://codecanyon.net/item/whatsjet-saas-a-whatsapp-marketing-platform-with-bulk-sending-campaigns-chat-bots/51167362
                </a>
            </div>
        </div>
        @endif
            @if ($hasActiveLicense)
            @if(hasVendorAccess())
            <div class="container">
                <div class="row">
                    <div class="col-12 mt-5 mb--7 pt-5 text-center">
                        @php
                        $vendorPlanDetails = vendorPlanDetails(null, null, getVendorId());
                        @endphp
                        @if(!$vendorPlanDetails->hasActivePlan())
                            <div class="alert alert-danger">
                                {{  $vendorPlanDetails->message }}
                            </div>
                        @elseif($vendorPlanDetails->is_expiring)
                            <div class="alert alert-warning">
                                {{  __tr('Your subscription plan is expiring on __endAt__', [
                                    '__endAt__' => formatDate($vendorPlanDetails->ends_at)
                                ]) }}
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        @endif
            @yield('content')
            @else
            <div class="container">
                <div class="row">
                    <div class="col-12 my-5 py-5 text-center">
                       <div class="card my-5 p-5">
                        <i class="fas fa-exclamation-triangle fa-6x mb-4 text-warning"></i>
                        <div class="alert alert-danger my-5">
                            {{ __tr('Product has not been verified yet, please contact via profile or product page.') }}
                        </div>
                       </div>
                    </div>
                </div>
            </div>
            @endif
    </div>
    @guest()
    @include('layouts.footers.guest')
    @endguest
    <?= __yesset(['dist/js/common-vendorlibs.js','dist/js/vendorlibs.js', 'argon/bootstrap/dist/js/bootstrap.bundle.min.js', 'argon/js/argon.js'], true) ?>
    @stack('js')
    @if (hasVendorAccess() or hasVendorUserAccess())
    {{-- QR CODE model --}}
    <x-lw.modal id="lwScanMeDialog" :header="__tr('Scan QR Code to Start Chat')">
        @if (getVendorSettings('current_phone_number_number'))
        <div class="alert alert-dark text-center text-success">
            {{  __tr('You can use following QR Codes to invite people to get connect with you on this platform.') }}
        </div>
        @if (!empty(getVendorSettings('whatsapp_phone_numbers')))
        @foreach (getVendorSettings('whatsapp_phone_numbers') as $whatsappPhoneNumber)
        <fieldset class="text-center">
            <legend class="text-center">{{ $whatsappPhoneNumber['verified_name'] }} ({{ $whatsappPhoneNumber['display_phone_number'] }})</legend>
        <div class="text-center">
            <img class="lw-qr-image" src="{{ route('vendor.whatsapp_qr', [
            'vendorUid' => getVendorUid(),
            'phoneNumber' => cleanDisplayPhoneNumber($whatsappPhoneNumber['display_phone_number']),
        ]) }}">
        </div>
        <div class="form-group">
            <h3 class="text-muted">{{  __tr('Phone Number') }}</h3>
            <h3 class="text-success">{{ $whatsappPhoneNumber['display_phone_number'] }}</h3>
            <label for="lwWhatsAppQRImage{{ $loop->index }}">{{ __tr('URL for QR Image') }}</label>
            <div class="input-group">
                <input type="text" class="form-control" readonly id="lwWhatsAppQRImage{{ $loop->index }}" value="{{ route('vendor.whatsapp_qr', [
                    'vendorUid' => getVendorUid(),
                    'phoneNumber' => cleanDisplayPhoneNumber($whatsappPhoneNumber['display_phone_number']),
                ]) }}">
                <div class="input-group-append">
                    <button class="btn btn-outline-light" type="button"
                        onclick="lwCopyToClipboard('lwWhatsAppQRImage{{ $loop->index }}')">
                        <?= __tr('Copy') ?>
                    </button>
                </div>
            </div>
        </div>
        <div class="form-group">
            <h3 class="text-muted">{{  __tr('WhatsApp URL') }}</h3>
            <div class="input-group">
                <input type="text" class="form-control" readonly id="lwWhatsAppUrl{{ $loop->index }}" value="https://wa.me/{{ cleanDisplayPhoneNumber($whatsappPhoneNumber['display_phone_number']) }}">
                <div class="input-group-append">
                    <button class="btn btn-outline-light" type="button"
                        onclick="lwCopyToClipboard('lwWhatsAppUrl{{ $loop->index }}')">
                        <?= __tr('Copy') ?>
                    </button>
                    <a type="button" class="btn btn-outline-success" target="_blank" href="https://api.whatsapp.com/send?phone={{ cleanDisplayPhoneNumber($whatsappPhoneNumber['display_phone_number']) }}"><i class="fab fa-whatsapp"></i>  {{ __tr('WhatsApp Now') }}</a>
                </div>
            </div>
        </div>
        </fieldset>
        @endforeach
        @else
        <div class="alert alert-info">{{  __tr('Please resync phone numbers.') }}</div>
        @endif
        @else
        <div class="text-danger">
            {{  __tr('Phone number does not configured yet.') }}
        </div>
        @endif
    </x-lw.modal>
    {{-- /QR CODE model --}}
    <template x-if="!disableSoundForMessageNotification">
        <audio id="lwMessageAlertTone">
            <source src="<?= asset('/static-assets/audio/whatsapp-notification-tone.mp3'); ?>" type="audio/mpeg">
        </audio>
     </template>
    @endif
    <script>
        (function($) {
            'use strict';
            window.appConfig = {
                debug: "{{ config('app.debug') }}",
                csrf_token: "{{ csrf_token() }}",
                locale : '{{ app()->getLocale() }}',
                vendorUid : '{{ getVendorUid() }}',
                broadcast_connection_driver: "{{ getAppSettings('broadcast_connection_driver') }}",
                pusher : {
                    key : "{{ config('broadcasting.connections.pusher.key') }}",
                    cluster : "{{ config('broadcasting.connections.pusher.options.cluster') }}",
                    host : "{{ config('broadcasting.connections.pusher.options.host') }}",
                    port : "{{ config('broadcasting.connections.pusher.options.port') }}",
                    useTLS : "{{ config('broadcasting.connections.pusher.options.useTLS') }}",
                    encrypted : "{{ config('broadcasting.connections.pusher.options.encrypted') }}",
                    authEndpoint : "{{ url('/broadcasting/auth') }}"
                },
            }
        })(jQuery);
    </script>
    <?= __yesset(
        [
            'dist/js/jsware.js',
            'dist/js/app.js',
            // keep it last
            'dist/js/alpinejs.min.js',
        ],
        true,
    ) ?>
    @if(hasVendorAccess() or hasVendorUserAccess())
    {{-- app bootstrap --}}
    {!! __yesset('dist/js/bootstrap.js', true) !!}
    @endif
    @stack('vendorLibs')
    <script src="{{ route('vendor.load_server_compiled_js') }}"></script>
    @stack('footer')
    @stack('appScripts')
    <script>
    (function($) {
        'use strict';
        @if (session('alertMessage'))
            showAlert("{{ session('alertMessage') }}", "{{ session('alertMessageType') ?? 'info' }}");
            @php
                session('alertMessage', null);
                session('alertMessageType', null);
            @endphp
        @endif
        @php
        $isRestrictedVendorUser = (!hasVendorAccess() ? hasVendorAccess('assigned_chats_only') : false);
        @endphp
        var isRestrictedVendorUser = {{ $isRestrictedVendorUser ? 1 : 0 }},
            loggedInUserId = '{{ getUserId() }}';
        __Utils.setTranslation({
            'processing': "{{ __tr('processing') }}",
            'uploader_default_text': "<span class='filepond--label-action'>{{ __tr('Drag & Drop Files or Browse') }}</span>",
            "confirmation_yes": "{{ __tr('Yes') }}",
            "confirmation_no": "{{ __tr('No') }}"
        });

        @if(hasVendorAccess() or hasVendorUserAccess())
            var broadcastActionDebounce,
                campaignActionDebounce,
                lastEventData,
                lastCampaignStatus;
            window.Echo.private(`vendor-channel.${window.appConfig.vendorUid}`).listen('.VendorChannelBroadcast', function (data) {
                // if the event data matched does not need to process it
                if(_.isEqual(lastEventData, data)) {
                    return true;
                }
                if(!data.campaignUid && (!isRestrictedVendorUser || (isRestrictedVendorUser && (data.assignedUserId == loggedInUserId)))) {
                    // chat updates
                    if(data.contactUid && $('[data-contact-uid=' + data.contactUid + ']').length) {
                        __DataRequest.get(__Utils.apiURL("{{ route('vendor.chat_message.data.read', ['contactUid', 'way']) }}{{ ((isset($assigned) and $assigned) ? '?assigned=to-me' : '') }}", {'contactUid': data.contactUid, 'way':'prepend'}),{}, function(responseData) {
                            __DataRequest.updateModels({
                                '@whatsappMessageLogs' : 'append',
                                'whatsappMessageLogs':responseData.client_models.whatsappMessageLogs
                            });
                            window.lwScrollTo('#lwEndOfChats', true);
                        });
                    } else if((!isRestrictedVendorUser || (isRestrictedVendorUser && (data.assignedUserId == loggedInUserId)))) {
                        // play the sound for incoming message notifications
                        if(data.isNewIncomingMessage && $('#lwMessageAlertTone').length) {
                            $('#lwMessageAlertTone')[0].play();
                        };
                    };
                }
                lastEventData = _.cloneDeep(data);
                clearTimeout(broadcastActionDebounce);
                broadcastActionDebounce = setTimeout(function() {
                    // generic model updates
                    if(data.eventModelUpdate) {
                        __DataRequest.updateModels(data.eventModelUpdate);
                    }
                    @if(hasVendorAccess('messaging'))
                    if(!data.campaignUid && (!isRestrictedVendorUser || (isRestrictedVendorUser && (data.assignedUserId == loggedInUserId)))) {
                        // is incoming message
                        if(data.isNewIncomingMessage) {
                            __DataRequest.get("{{ route('vendor.chat_message.read.unread_count') }}",{}, function(responseData) {});
                        };
                        // contact list update
                        if($('.lw-whatsapp-chat-window').length) {
                            __DataRequest.get(__Utils.apiURL("{!! route('vendor.contacts.data.read', ['contactUid','way' => 'append','request_contact' => '', 'assigned'=> ($assigned ?? '')]); !!}", {'contactUid': $('#lwWhatsAppChatWindow').data('contact-uid'),'request_contact' : 'request_contact=' + data.contactUid + '&'}),{}, function() {});
                        }
                    }
                    @endif
                }, 1000);
                @if(hasVendorAccess('messaging'))
                // 10 seconds for campaign
                    clearTimeout(campaignActionDebounce);
                    campaignActionDebounce = setTimeout(function() {
                        // campaign data update
                        if(data.campaignUid && $('.lw-campaign-window-' + data.campaignUid).length) {
                            __DataRequest.get(__Utils.apiURL("{{ route('vendor.campaign.status.data', ['campaignUid']) }}", {'campaignUid': data.campaignUid}),{}, function(responseData) {
                                if(responseData.data.campaignStatus != lastCampaignStatus) {
                                    window.reloadDT('#lwCampaignQueueLog');
                                }
                                lastCampaignStatus = responseData.data.campaignStatus;
                            });
                        };
                    }, 10000);
                @endif
            });
        @if(hasVendorAccess('messaging'))
        // initially get the unread count on page loads
        __DataRequest.get("{{ route('vendor.chat_message.read.unread_count') }}",{}, function() {});
        @endif
    @endif
    })(jQuery);
    </script>
    {!! getAppSettings('page_footer_code_all') !!}
    @if(isLoggedIn())
    {!! getAppSettings('page_footer_code_logged_user_only') !!}
    @endif
</body>
</html>