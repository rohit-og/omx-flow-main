@php
if(!isset($vendorViewBySuperAdmin))
$vendorViewBySuperAdmin = false;
@endphp
@if (hasCentralAccess() and !$vendorViewBySuperAdmin )
<div class="header pb-5 pt-2 pt-md-7">
    <div class="container-fluid">
    </div>
    
</div>
{{-- show.dropdown.result --}}
@elseif(hasVendorAccess() or hasVendorUserAccess() or $vendorViewBySuperAdmin )
<div class="header">
    <div class="container-fluid">
        <div class="header-body">
            <!-- Card stats -->
            <div class="row pb-0 pt-3 pt-lg-6 d-flex align-items-stretch mt-4 ">
                <div class="col-12 col-xl-3 ">
                    <div class="card text-center" style="background: linear-gradient(135deg, #41C6B5, #1771E6); box-shadow: 3px 3px 6px rgba(0, 0, 0, 0.3);">
                        <div class="card-body">
                	        <div class="h1 font-weight-bold gridient-icon-1">{{ __tr('Welcome __userFullName__ !!', [ '__userFullName__' => getUserAuthInfo('profile.first_name') ]) }}</div>
                	        <a href="{{ route('subscription.read.show') }}" class="btn bg-white font-weight-bold mt-2 text-dark">View plan</a>
                	        <a href="<?= route('vendor.settings.read', ['pageType' => 'whatsapp-cloud-api-setup']) ?>" class="btn bg-white font-weight-bold mt-2 text-dark">API Setup</a>
            	        </div>
            	    </div>
        	    </div>
        	    <div class="col-12 col-xl-9 mt-2 mt-xl-0">
        	        <div class="card h-100">
                        <div class="card-body row d-flex align-items-center">
                            <div class="col-6 col-lg-2 mt-2 mt-lg-0">
                                <div class="text-primary rounded text-center" style="background-color: #e3edf7;">
                                    <span x-cloak x-show="unreadMessagesCount" class="position-absolute bg-success text-white pl-1 pr-1 rounded font-weight-bold" x-text="unreadMessagesCount" style="right:10%;"></span>
                                    <a href="{{ route('vendor.chat_message.contact.view') }}" style=" font-size: 50px;"><i class="fas fa-comments gradient-icon-lg-9"></i></a>
                                    <div class="font-weight-bold text-dark">Live Chat</div>
                                </div>
                            </div>
                            <div class="col-6 col-lg-2 mt-2 mt-lg-0">
                                <div class="text-primary rounded text-center" style="background-color: #e3edf7;">
                                    <span class="position-absolute bg-success text-white pl-1 pr-1 rounded font-weight-bold" style="right:10%;">{{ __tr($totalTemplates) }}</span>
                                    <a href="{{ route('vendor.whatsapp_service.templates.read.list_view') }}" style=" font-size: 50px;"><i class="fa fa-layer-group gradient-icon-lg-2"></i></a>
                                    <div class="font-weight-bold text-dark">Template</div>
                                </div>
                            </div>
                            <div class="col-6 col-lg-2 mt-2 mt-lg-0">
                                <div class="text-primary rounded text-center" style="background-color: #e3edf7;">
                                    <span class="position-absolute bg-success text-white pl-1 pr-1 rounded font-weight-bold" style="right:10%;">{{ __tr($totalCampaigns) }}</span>
                                    <a href="{{ route('vendor.campaign.read.list_view') }}" style=" font-size: 50px;"><i class="fa fa-rocket gradient-icon-lg-4"></i></a>
                                    <div class="font-weight-bold text-dark">Campaign</div>
                                </div>
                            </div>
                            <div class="col-6 col-lg-2 mt-2 mt-lg-0">
                                <div class="text-primary rounded text-center" style="background-color: #e3edf7;">
                                    <span class="position-absolute bg-success text-white pl-1 pr-1 rounded font-weight-bold" style="right:10%;">{{ __tr($totalContacts) }}</span>
                                    <a href="{{ route('vendor.contact.read.list_view') }}" style=" font-size: 50px;"><i class="fa fa-users gradient-icon-lg-5"></i></a>
                                    <div class="font-weight-bold text-dark">Contacts</div>
                                </div>
                            </div>
                            <div class="col-6 col-lg-2 mt-2 mt-lg-0">
                                <div class="text-primary rounded text-center" style="background-color: #e3edf7;">
                                    <span class="position-absolute bg-success text-white pl-1 pr-1 rounded font-weight-bold" style="right:10%;">{{ __tr($totalBotReplies) }}</span>
                                    <a href="{{ route('vendor.bot_reply.read.list_view') }}" style=" font-size: 50px;"><i class="fas fa-robot gradient-icon-lg-8"></i></a>
                                    <div class="font-weight-bold text-dark">Bot Reply</div>
                                </div>
                            </div>
                            <div class="col-6 col-lg-2 mt-2 mt-lg-0">
                                <div class="text-primary rounded text-center" style="background-color: #e3edf7;">
                                    <span class="position-absolute bg-success text-white pl-1 pr-1 rounded font-weight-bold" style="right:10%;">{{ __tr($activeTeamMembers) }}</span>
                                    <a href="{{ route('vendor.user.read.list_view') }}" style=" font-size: 50px;"><i class="fa fa-user-tie gradient-icon-lg-7"></i></a>
                                    <div class="font-weight-bold text-dark">Agents</div>
                                </div>
                            </div>
                        </div>
                    </div>
        	    </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row mt-4 d-flex align-items-stretch">
        <div class="col-xl-5">
            <div class="card h-100">
                <div class="card-body">
                        <canvas id="donutChart" width="400" height="400" style="max-height:250px;"></canvas>
                </div>
            </div>
        </div>
        <div class="col-xl-7 d-flex align-items-center mt-4 mt-xl-0">
            <div class="card h-100 w-100">
                <div class="card-body row">
                    <div class="col-6">
                    @if (!empty(getVendorSettings('whatsapp_phone_numbers')))
                    @foreach (getVendorSettings('whatsapp_phone_numbers') as $whatsappPhoneNumber)
                        <div class="text-center">
                            <img class="lw-qr-image" src="{{ route('vendor.whatsapp_qr', [
                            'vendorUid' => getVendorUid(),
                            'phoneNumber' => cleanDisplayPhoneNumber($whatsappPhoneNumber['display_phone_number']),
                        ]) }}">
                            <div class="h2 text-dark font-weight-bold">{{ $whatsappPhoneNumber['verified_name'] }}</div>
                            <div class="h3 text-primary font-weight-bold">{{ $whatsappPhoneNumber['display_phone_number'] }}</div>
                        </div>
                    @endforeach
                    @endif
                    </div>
                    <div class="col-6">
                        <a href="{{ route('vendor.whatsapp_service.templates.read.new_view') }}" class="action-link template-link">
                            <div class="action-link-content">
                                <i class="fa fa-layer-group action-link-icon"></i>
                                Create New Template
                            </div>
                        </a>
                        
                        <a href="{{ route('vendor.campaign.new.view') }}" class="action-link campaign-link">
                            <div class="action-link-content">
                                <i class="fa fa-rocket action-link-icon"></i>
                                Create New Campaign
                            </div>
                        </a>
                        
                        <a href="{{ route('vendor.contact.read.list_view') }}" class="action-link contact-link">
                            <div class="action-link-content">
                                <i class="fa fa-users action-link-icon"></i>
                                Create New Contact
                            </div>
                        </a>
                        
                        <a href="{{ route('vendor.user.read.list_view') }}" class="action-link agent-link">
                            <div class="action-link-content">
                                <i class="fa fa-user-tie action-link-icon"></i>
                                Create New Agent
                            </div>
                        </a>
                        
                        <a href="{{ route('vendor.bot_reply.read.list_view') }}" class="action-link chatbot-link">
                            <div class="action-link-content">
                                <i class="fas fa-robot action-link-icon"></i>
                                Create New Chatbot
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid p-3 mt-2">
    <div class="row d-flex align-items-stretch">
        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body d-flex justify-content-between">
                    <div style="font-size:20px;">
                        Total<br><span class="font-weight-bold text-primary" style="font-size:30px;">{{ __tr($totalMessagesProcessed + $messagesInQueue) }}</span><span class="font-weight-bold text-primary"> Messages</span>
                    </div>
                    <div class="m-3"><i class="fas fa-clipboard-check gradient-icon-lg-8" style="font-size:50px; opacity: 0.5;"></i></div>
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-2 mt-md-0">
            <div class="card h-100">
                <div class="card-body d-flex justify-content-between">
                    <div style="font-size:20px;">
                        Sent<br><span class="font-weight-bold text-success" style="font-size:30px;">{{ __tr($totalMessagesProcessed) }}</span><span class="font-weight-bold text-success"> Messages</span>
                    </div>
                    <div class="m-3"><i class="fas fa-paper-plane gradient-icon-lg-9" style="font-size:50px; opacity: 0.5;"></i></div>
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-2 mt-md-0">
            <div class="card h-100">
                <div class="card-body d-flex justify-content-between">
                    <div style="font-size:20px;">
                        Pending<br><span class="font-weight-bold text-muted" style="font-size:30px;">{{ __tr($messagesInQueue) }}</span><span class="font-weight-bold text-muted"> Messages</span>
                    </div>
                    <div class="m-3"><i class="fas fa-hourglass-half gradient-icon-lg-7" style="font-size:50px; opacity: 0.5;"></i></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Get the chart canvas
        const ctx = document.getElementById('donutChart').getContext('2d');

        // Create a linear gradient for the chart
        const gradient = ctx.createLinearGradient(0, 0, 0, 400);
        gradient.addColorStop(0, "#0861F2");
        gradient.addColorStop(1, "#4C9FFD");

        // Data for the chart
        const data = {
            labels: ['Sent Messages', 'Pending Messages'],
            datasets: [{
                data: [ {{ $totalMessagesProcessed }} , {{ $messagesInQueue }} ], // Replace with your dynamic values
                backgroundColor: [gradient, '#e3edf7'], // Gradient + static color
                hoverBackgroundColor: [gradient, '#d9e6f2'], // Hover effects
                borderWidth: 1,
            }]
        };

        // Chart configuration
        const config = {
            type: 'doughnut',
            data: data,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: true,
                        position: 'bottom',
                    },
                    tooltip: {
                        callbacks: {
                            label: function (context) {
                                return context.label + ': ' + context.raw + '%';
                            }
                        }
                    }
                },
                cutout: '70%', // Inner radius for the donut
            }
        };

        // Render the chart
        new Chart(ctx, config);
    });
</script>
<style>
    /* Action Link Styling */
    .action-link {
        display: block;
        margin-bottom: 12px;
        border-radius: 12px;
        overflow: hidden;
        transition: all 0.3s ease;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        position: relative;
        z-index: 1;
    }
    
    .action-link:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
    }
    
    .action-link-content {
        display: flex;
        align-items: center;
        padding: 12px 16px;
        font-weight: 600;
        color: white;
        position: relative;
        z-index: 2;
    }
    
    .action-link-icon {
        margin-right: 10px;
        font-size: 18px;
    }
    
    /* Individual Link Styles */
    .template-link {
        background-color: #2dbcab;
    }
    
    .template-link::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(90deg, #9eefe6, #2dbcab);
        opacity: 0;
        transition: opacity 0.3s ease;
        z-index: -1;
    }
    
    .template-link:hover::before {
        opacity: 1;
    }
    
    .campaign-link {
        background-color: #E34F95;
    }
    
    .campaign-link::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(45deg, #F19946, #E34F95);
        opacity: 0;
        transition: opacity 0.3s ease;
        z-index: -1;
    }
    
    .campaign-link:hover::before {
        opacity: 1;
    }
    
    .contact-link {
        background-color: #1765C9;
    }
    
    .contact-link::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, #1765C9, #55BFF0);
        opacity: 0;
        transition: opacity 0.3s ease;
        z-index: -1;
    }
    
    .contact-link:hover::before {
        opacity: 1;
    }
    
    .agent-link {
        background-color: #6C757D;
    }
    
    .agent-link::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, #c4c4c4, #6C757D);
        opacity: 0;
        transition: opacity 0.3s ease;
        z-index: -1;
    }
    
    .agent-link:hover::before {
        opacity: 1;
    }
    
    .chatbot-link {
        background-color: #0866FF;
    }
    
    .chatbot-link::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, #b5d1ff, #0866FF);
        opacity: 0;
        transition: opacity 0.3s ease;
        z-index: -1;
    }
    
    .chatbot-link:hover::before {
        opacity: 1;
    }
    

   
    
    /* Larger icons */
    .gradient-icon-lg-1, .gradient-icon-lg-2, .gradient-icon-lg-3, 
    .gradient-icon-lg-4, .gradient-icon-lg-5, .gradient-icon-lg-6, 
    .gradient-icon-lg-7, .gradient-icon-lg-8, .gradient-icon-lg-9, 
    .gradient-icon-lg-10 {
        font-size: 50px !important;
    }
</style>
@endif