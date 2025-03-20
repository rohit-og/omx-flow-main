<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" dir="{{ $CURRENT_LOCALE_DIRECTION ?? '' }}">
@php
$appName = getAppSettings('name');
@endphp
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title> {{ (isset($title) and $title) ? ' - ' . $title : __tr('Welcome') }} - {{ $appName }}</title>
    <!-- Primary Meta Tags -->
    <meta name="title" content="{{ $appName }}" />
    <meta name="description" content="{{ getAppSettings('description') }}" />
    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="{{ $appName }}" />
    <meta property="og:url" content="{{ url('/') }}" />
    <meta property="og:title" content="{{ $appName }}" />
    <meta property="og:description" content="{{ getAppSettings('description') }}" />
    <meta property="og:image" content="{{ getAppSettings('logo_image_url') }}" />

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image" />
    <meta property="twitter:url" content="{{ url('/') }}" />
    <meta property="twitter:title" content="{{ $appName }}" />
    <meta property="twitter:description" content="{{ getAppSettings('description') }}" />
    <meta property="twitter:image" content="{{ getAppSettings('logo_image_url') }}" />

    <!-- FAVICON -->
    <link href="{{ getAppSettings('favicon_image_url') }}" rel="icon">
    {!! __yesset([
    'static-assets/packages/fontawesome/css/all.css',
    'static-assets/packages/bootstrap-icons/font/bootstrap-icons.css',
    ]) !!}
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
        rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <!-- /Google fonts-->
    <style>
        section {
            background-color: #F2F4F7;
        }
        .text-primary {
            color: #232fcc !important;
        }   
        .bg-primary {
            background-color: #232fcc !important;
        }
        .card:hover h5 {
            color:rgb(8, 128, 54) !important; 
            transition: color 0.3s ease; 
        }
      
        .inner {
            padding: 20px;
            align-items: center;
            background-color: #ecf0ff;
            padding-top: 40px;
            position: relative;
            border-radius: 12px;
        }
        .card i {
            color: #0866FF !important;
        }
        .go-corner {
            padding:20px;
            align-items: center;
            justify-content: center;
            position: absolute;
            
            height: 32px;
            overflow: hidden;
            display: flex;
            right: 0;
            top: 0;
            border-radius: 0 4px 0 32px;
            background-color: #00838d;
}

        .go-arrow {
            margin-right: -4px;
            margin-top: -4px;
           
            font-weight:400;
            color: white;
}


        .gradient-icon-1 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #41C6B5, #1771E6); 
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .rounded-icon {
            background-color: #fff;
            width: 60px;
            height: 60px; 
            border-radius: 50%; 
            display: inline-flex; 
            align-items: center; 
            justify-content: center;
        }
        .gradient-icon-2 {
            font-size: 30px !important;
            background: linear-gradient(90deg,  #9eefe6, #2dbcab);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-3 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #D32E9A, #8D5DEA);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-4 {
            font-size: 30px !important;
            background: linear-gradient(45deg, #F19946, #E34F95);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-5 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #1765C9, #55BFF0);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-6 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #707d8e, #021C42);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-7 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #c4c4c4, #6C757D);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-8 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #b5d1ff, #0866FF);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-9 {
            font-size: 30px !important;
            background: linear-gradient(135deg, #22D571, #21d3c7);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .gradient-icon-10 {
            font-size: 30px !important;
            background: linear-gradient(45deg, #A136E6, #5eb4ff);
            -webkit-background-clip: text; 
            -webkit-text-fill-color: transparent; 
            display: inline-block; 
        }
        .features:hover h3,
        .features:hover h5 {
            color: #0866FF !important; 
            transition: color 0.3s ease; 
        }
        .bg-lime{
            background-color:rgba(110, 210, 163, 0.42);
        }
        .accordion-button:not(.collapsed) {
        background-color:#6ed2a438 !important;
        color: black !important;
        outline : none;
    }
     .toggle-container {
            background-color: #6ed2a438; /* Light green background */
            padding: 5px;
            border-radius: 50px; /* Oval shape */
            display: inline-flex;
            justify-content: center;
            align-items: center;
        }
        .btn-toggle {
            border: none;
            border-radius: 50px; /* Oval buttons */
            padding: 10px 20px;
            font-weight: bold;
            color: #333;
            background: transparent;
            transition: all 0.3s ease;
        }
        .btn-toggle.active {
            background-color: #6dc65c !important;
            color: white !important;
            border-radius: 50px;
        }
        .btnn{
            background: linear-gradient(
      15deg,
        rgb(0, 136, 68),
        rgb(32, 170, 129),
        rgb(13, 90, 67),
        rgb(26, 160, 131),
        rgb(8, 136, 97),
        rgb(17, 119, 68),
        rgb(63, 204, 169),
        rgb(9, 95, 62),
        rgb(0, 136, 95)
    )
            no-repeat;
            background-size: 300%;
            background-position: left center;
            transition: background 1s ease;
            color: white !important;
            animation: gradientMove 4s linear infinite;
  
}
.btnn:after {
  background-size: 320%;
  background-position: right center;
  transition: 1s ease;
}
@keyframes gradientMove {
    0% {
        background-position: right center;
    }
    100% {
        background-position: center left;
    }
}
        
    </style>

<body class="lw-outer-home-page">
    {!! __yesset(['dist/css/app-home.css'], true) !!}
    <body id="page-top">
        <!-- Navigation-->
        <header class="lw-top-navbar">
            <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top border-bottom" id="mainNav">
                <div class="container px-5">
                    <!-- Logo -->
                    <!-- Brand -->
                    <a class="navbar-brand pt-0" href="">
                        <img src="{{ getAppSettings('logo_image_url') }}" class="navbar-brand-img" alt="">
                    </a>
                    <!-- Logo -->
                    <button class="navbar-toggler lw-btn-block-mobile" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="{{ __tr('Toggle navigation') }}">
                        {{ __tr('Menu') }}
                        <i class="bi-list"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0 text-center">
                            <!-- Menu -->
                            <!-- Features -->
                            <li class="nav-item"><a class="nav-link me-lg-3" href="/">{{ __tr('Home') }}</a>
                            </li>
                            <!-- /Features -->
                            <!-- Pricing -->
                            <li class="nav-item"><a class="nav-link me-lg-3" href="#pricing">{{ __tr('Pricing') }}</a>
                            </li>
                            <!-- /Pricing -->
                            <!-- Contact -->
                            <li class="nav-item"><a class="nav-link me-lg-3"
                                    href="{{ route('user.contact.form') }}">{{ __tr('Contact') }}</a></li>
                            <!-- /Contact -->
                             <!-- pages -->
                            @include('layouts.navbars.navs.pages-menu-partial')    
                            <!-- /pages -->
                               <!-- /pages -->
                            @if (!isLoggedIn())
                            <!-- Register -->
                            <li class="nav-item"><a class="nav-link me-lg-3 btn text-success" style="border: 1px solid #198754;" href="{{ route('auth.register') }}">{{ __tr('Register') }}</a></li>
                            <!-- /Register -->
                            @if (getAppSettings('enable_vendor_registration') or
                            getAppSettings('message_for_disabled_registration'))
                            <!-- Login -->
                            <li class="nav-item"><a class="nav-link me-lg-3 btn btn-success text-white" href="{{ route('auth.login') }}">{{ __tr('Login') }}</a></li>
                            <!-- /Login -->
                            @endif
                            @endif
                            <!-- Dashboard -->
                            @if (isLoggedIn())
                            <li class="nav-item"><a class="nav-link me-lg-3 btn btn-primary text-white fw-bold "
                                    href="{{ route('central.console') }}">{{ __tr('Dashboard') }}</a></li>
                            @endif
                            <!-- /Dashboard -->
                            @include('layouts.navbars.locale-menu')
                            <!-- /Menu -->
                        </ul>

                    </div>
                </div>
            </nav>
        </header>
        <!-- /Navigation -->
        <!-- masthead section -->
        <section class="position-relative overflow-hidden py-7">
            <div class="container mt-5">
                <div class="row align-items-center">
                    <!-- Left Content -->
                    <div class="col-lg-6 position-relative">
                        <div class="pe-lg-4">
                            <!-- Gradient Badge -->
                            <div class="d-inline-block position-relative mb-3">
                                <span class="badge bg-success-subtle text-success px-3 py-2 rounded-pill" 
                                      style="background: linear-gradient(135deg, rgba(34, 213, 113, 0.1), rgba(0, 188, 81, 0.1));">
                                    <i class="fab fa-whatsapp me-2"></i>Official WhatsApp Business Solution
                                </span>
                            </div>

                            <!-- Main Heading with Gradient -->
                            <h1 class="display-5 fw-bold mb-3">
                                {!! __tr(' __appName__', ['__appName__' => $appName]) !!}
                                <span class="d-block text-gradient fs-2" 
                                      style="background: linear-gradient(135deg, #22D571, #00bc51); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">
                                    Ultimate Solution for WhatsApp Marketing
                                </span>
                            </h1>

                            <!-- Description with Custom Background -->
                            <div class="p-3 rounded-3 mb-3" style="background: rgba(34, 213, 113, 0.05);">
                                <p class="mb-0 fs-6">
                                    {{ __tr(
                                        'Our  __appName__  is a trusted and efficient platform designed to revolutionize the way businesses connect with their customers. With official verification by Meta our portal ensures secure reliable and compliant communication solutions.',
                                        [
                                            '__appName__' => $appName,
                                        ],
                                    ) }}
                                </p>
                                
                            </div>

                            <!-- CTA Buttons -->
                            <div class="d-flex flex-wrap gap-2 mb-4">
                                <a href="{{ route('auth.register') }}" class="btn px-4 py-2 btnn">
                                    <i class="fas fa-rocket me-2"></i>Get Started
                                </a>
                                <a href="#pricing" class="btn btn-outline-success px-4 py-2">
                                    <i class="fas fa-play-circle me-2"></i>Watch Demo
                                </a>
                            </div>

                            <!-- Stats Section -->
                            <div class="row g-3">
                                <div class="col-4">
                                    <h4 class="fw-bold text-success mb-0">10K+</h4>
                                    <p class="text-muted small mb-0">Active Users</p>
                                </div>
                                <div class="col-4">
                                    <h4 class="fw-bold text-success mb-0">98%</h4>
                                    <p class="text-muted small mb-0">Satisfaction</p>
                                </div>
                                <div class="col-4">
                                    <h4 class="fw-bold text-success mb-0">24/7</h4>
                                    <p class="text-muted small mb-0">Support</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Right Image with Effects -->
                    <div class="col-lg-6 position-relative mt-4 mt-lg-0">
                        <div class="position-relative" style="max-width: 500px; margin: 0 auto;">
                            <!-- Main Image -->
                            <img class="img-fluid rounded-4 shadow-lg" 
                                 src="{{ getAppSettings('hero_image')}}"
                                 alt="Dashboard Preview"
                                 style="transform: perspective(1000px) rotateY(-10deg) rotateX(5deg);">
                            
                            <!-- Floating Elements -->
                            <div class="position-absolute top-0 start-0 translate-middle-y p-3 bg-white rounded-3 shadow-sm" 
                                 style="animation: float 3s ease-in-out infinite;">
                                <div class="d-flex align-items-center gap-2">
                                    <i class="fas fa-check-circle text-success fs-4"></i>
                                    <span class="fw-semibold">Meta Verified</span>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>

            <!-- Background Elements -->
            <div class="position-absolute top-0 end-0 mt-4 me-4 d-none d-lg-block">
                <div style="width: 200px; height: 200px; background: linear-gradient(135deg, rgba(34, 213, 113, 0.1), rgba(0, 188, 81, 0.1)); border-radius: 50%; filter: blur(40px);"></div>
            </div>
            <div class="position-absolute bottom-0 start-0 mb-4 ms-4 d-none d-lg-block">
                <div style="width: 150px; height: 150px; background: linear-gradient(135deg, rgba(34, 213, 113, 0.1), rgba(0, 188, 81, 0.1)); border-radius: 50%; filter: blur(30px);"></div>
            </div>
        </section>
        <!-- /masthead section -->
        <!-- Features Section-->
        <section id="features">
            <div class="container">
            <h2 class="text-center mb-5 fw-bold">Features of<span class="lw-highlight text-success">{!! __tr(' __appName__', ['__appName__' => $appName]) !!}</span>
            </h2>
            <div class="row gap-5 justify-content-center mb-5 p-3">

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fab fa-facebook gradient-icon-8"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Embedded Signup') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Integrated Embedded Signup System that makes Customers Onboard easy.') }}</div>
                </div>

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fas fa-comments gradient-icon-9"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Integrated WhatsApp Chat') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Seamlessly connect with customers through Integrated WhatsApp Chat.') }}</div>
                </div>
                

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fas fa-qrcode gradient-icon-3"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('QR Code') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Quickly generate QR codes for your WhatsApp phone number with ease.') }}</div>
                </div>
            </div>
            

            <div class="row gap-5 justify-content-center mb-5 p-3">

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fas fa-brain gradient-icon-4"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Chat-Bot') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Engage customers 24/7 with intelligent chatbot responses effortlessly.') }}</div>
                </div>

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fa fa-layer-group gradient-icon-2"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Manage Templates') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Create and manage templates directly in the app without visiting Meta.') }}</div>
                </div>
                

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fas fas fa-random gradient-icon-5"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Flow Maker') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Build Bot conversions easily and effectively with Advance Flow Maker.') }}</div>
                </div>
            </div>

           <div class="row gap-5 justify-content-center mb-5 p-3">

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                           <i class="fas fa-cogs gradient-icon-7"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('API Integration') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('APIs enable smooth integration and data sharing between services.') }}</div>
                </div>

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fas fa-chart-line gradient-icon-1"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Live Analysis') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Get Realtime Analysis and Status of your Campaigns and Messages.s') }}</div>
                </div>
                

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                            <i class="fas fa-user-tie gradient-icon-6"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Assign Agents') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Assign Chats to Agents or your Team Members with Agents Feature.') }}</div>
                </div>
            </div>

            <div class="row gap-5 justify-content-center mb-5 p-3">

                <div class="col-sm-10 col-lg-3 p-4 d-flex flex-column features rounded shadow bg-lime">
                    <!-- Icon and Heading on the same line -->
                    <div class="d-flex align-items-center">
                        <a class="text-decoration-none rounded-icon p-4">
                        <i class="fa fa-rocket gradient-icon-10"></i>
                        </a>
                        <h3 class="fw-bold text-muted ms-3 fs-5">{{ __tr('Campaigns') }}</h3>
                    </div>
                
                    <!-- Description starts exactly below the heading -->
                    <div class="text-dark mt-2">{{ __tr('Effortlessly manage your campaigns with Campaign Management Feature.') }}</div>
                </div>
            </div>
            </div>
        </section>
        <!-- About Us Section -->
        <section style="background-color: #fff;">
            <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 text-center">
                <img src="{{ asset('imgs/pqomx.jpg') }}" alt="Logo" style="width: 100%; height: 50vh; object-fit: contain; border-radius: 10px;">
                </div>
                <div class="col-md-6">
                    <div class="description text-muted" style="text-align: justify;"><span class="fw-bold text-success">{!! __tr(' __appName__', ['__appName__' => $appName]) !!} </span> integrates with the <span class="fw-bold text-success">Official WhatsApp Cloud API</span>, providing a streamlined solution for businesses to enhance customer communication. This powerful integration allows for real-time messaging, automated responses, and easy management of WhatsApp interactions. With full access to the WhatsApp Cloud API, businesses can send and receive messages, share multimedia, and maintain secure conversations with customers worldwide. The panel simplifies the process of connecting to the WhatsApp platform, offering features like automated workflows, data analytics, and template management. Experience the flexibility and efficiency of <span class="fw-bold text-success">WhatsApp business communications</span>, all within one unified interface.</div>
                </div>
                </div>
            </div>
        </section>
        <!-- pricing block -->
        <section id="pricing" style="background-color: #fff">
            <!-- Button block -->
            <div class="container text-center mt-5">
                <div class="toggle-container">
                    <button type="button" class="btn btn-toggle active" data-value="monthly" onclick="setActive(this)">Monthly</button>
                    <button type="button" class="btn btn-toggle" data-value="quarterly" onclick="setActive(this)">Quarterly</button>
                    <button type="button" class="btn btn-toggle" data-value="yearly" onclick="setActive(this)">Yearly</button>
                </div>
                <p class="mt-3"><strong>Selected Plan:</strong> <span id="selectedPlan">Monthly</span></p>
            </div>

            <div class="container py-5 ">
                <div class="row g-4 d-flex justify-content-md-evenly ">
                    <!-- OMX Sync - Task Automations -->
                    <div class="col-md-4">
                        <div class="card shadow-lg price-card" style="border-radius:1.25rem;">
                            
                            <div class="card-body">
                                
                            <div class="inner">
                            <div class="go-corner" href="#">
                             <div class="go-arrow">
                                 Standard
                            </div>
                            </div>
                                
                                <h5 class="card-title text-success">OMX Flow</h5>
                                
                                <h3 class="text-primary amount">₹15,000.00</h3>
                                <p class="text-muted original-price"><del>₹20,999</del></p>
                                <p class="text-muted subscription-period">Monthly Subscription</p>
                                <button class="btn  btn-success w-100">Book Demo</button>
                                <hr>
                                <ul class="list-unstyled " style="font-size:0.75em">
                                    <li >✅ 1000 Contacts</li>
                                    <li>✅ 50 Campaigns Per Month</li>
                                    <li>✅ 100 Bot Replies</li>
                                    <li>✅ 10 Team Members/Agents</li>
                                    <li>✅ 10 Bot Flows</li>
                                    <li>✅ 100 Contact Custom Fields</li>
                                    <li>✅ AI Chat Bot</li>
                                    <li>✅ API and Webhook Access</li>
                                </ul>
                            </div>
                            </div>
                        </div>
                    </div>
            
                    <!-- OMX Sync - Attendance & Leave Automations -->
                    <div class="col-md-4">
                        <div class="card shadow-lg price-card" style="border-radius:1.25rem;">
                            <div class="card-body product-header">
                                <div class="inner">
                                <div class="go-corner btnn" href="#">
                             <div class="go-arrow">
                             Premium
                            </div>
                            </div>
                                <h5 class="card-title text-success">OMX Flow</h5>
                                
                              
                                <h3 class="text-primary amount">₹20,000.00</h3>
                                <p class="text-muted original-price"><del>₹24,999.00</del></p>
                                <p class="text-muted subscription-period">1-Year Subscription</p>
                                <button class="btn btn-success w-100">Book Demo</button>
                                <hr>
                                <ul class="list-unstyled"  style="font-size:0.75em">
                                    <li>✅ Unlimited Contacts</li>
                                    <li>✅ Unlimited Campaigns Per Month</li>
                                    <li>✅ Unlimited Bot Replies</li>
                                    <li>✅ Unlimited Bot Flows</li>
                                    <li>✅ Unlimited Contact Custom Fields</li>
                                    <li>✅ Unlimited Team Members/Agents</li>
                                    <li>✅ AI Chat Bot</li>
                                    <li>✅ API and Webhook Access</li>
                                </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            
                    <!-- OMX Sales - Automate Sales CRM -->
                   
            
        </section>
        <!-- pricing block -->

         <!-- FAQ's section -->
         <section>
            <div class="container">
                <div class="text-center">
                    <h1 class="fw-bold"><span class=" text-success">{!! __tr(' __appName__', ['__appName__' => $appName]) !!}</span> FAQ's</h1>
                </div>
                <div class="accordion p-3" id="faqAccordion" style="border-radius: 10px;">
                    <div class="accordion-item" style="border-radius: 10px;">
                        <h2 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                {{ __tr('1. How can I integrate WhatsApp with my business account?') }}
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#faqAccordion">
                            <div class="accordion-body text-muted p-3" style="text-align: justify; border-radius: 10px;">
                                {{ __tr('To integrate WhatsApp with your business account, simply sign up for our app, connect your WhatsApp Business Account, and follow the step-by-step guide provided in the dashboard. The integration works directly with the WhatsApp Cloud API.') }}
                            </div>
                        </div>
                    </div>
                    
                    <div class="accordion-item" style="border-radius: 10px;">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                {{ __tr('2. Can I manage multiple phone numbers on the same WhatsApp Business Account?') }}
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                            <div class="accordion-body text-muted p-3" style="text-align: justify; border-radius: 10px;">
                                {{ __tr('Yes, our app supports managing multiple phone numbers for the same WhatsApp Business Account, enabling you to handle communication from different channels in a single interface.') }}
                            </div>
                        </div>
                    </div>
                    
                    <div class="accordion-item" style="border-radius: 10px;">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                {{ __tr('3. How do I create and manage message templates?') }}
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                            <div class="accordion-body text-muted p-3" style="text-align: justify; border-radius: 10px;">
                                {{ __tr('You can easily create and manage WhatsApp message templates directly within our app, without needing to visit Meta platform. Simply navigate to the templates section, create your template, and use it in your campaigns.') }}
                            </div>
                        </div>
                    </div>
                    
                    <div class="accordion-item" style="border-radius: 10px;">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                {{ __tr('4. What kind of data analytics does the app provide?') }}
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                            <div class="accordion-body text-muted p-3" style="text-align: justify; border-radius: 10px;">
                                {{ __tr('The app provides real-time analytics on message delivery, open rates, response times, and user engagement. You can track the performance of your WhatsApp campaigns and optimize them based on these insights.') }}
                            </div>
                        </div>
                    </div>
                    
                    <div class="accordion-item" style="border-radius: 10px;">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed " type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                {{ __tr('5. Is my data secure when using this app?') }}
                            </button>
                        </h2>
                        <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                            <div class="accordion-body text-muted p-3" style="text-align: justify; border-radius: 10px;">
                                {{ __tr('Yes, we prioritize security and use industry-standard encryption to protect your data. All communications through the app are fully compliant with WhatsApp privacy and security policies, ensuring your business and customer data is safe.') }}
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>
      
        <!-- Add this section after the FAQ section and before the footer -->
        <section style="background-color: #fff;" class="py-5">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Left side - Contact heading and text -->
                    <div class="col-md-5">
                        <h1 class="fw-bold mb-4">Contact <span class="text-success">Us</span></h1>
                        <p class="text-muted mb-4">Have questions about our WhatsApp Business solutions? We're here to help! Reach out to us for personalized support, demo requests, or any inquiries about our services.</p>
                        
                        <!-- Additional contact info -->
                        <div class="contact-info mt-4">
                        @if (getAppSettings('contact_details'))
                <div class="lw-ws-pre-line" style="width:188px;">
                    {!! getAppSettings('contact_details') !!}
                </div>
                    <hr>
                @endif
                        </div>
                    </div>

                    <!-- Right side - Contact form -->
                    <div class="col-md-6 offset-md-1">
                        <div class="bg-white rounded-3 shadow-sm">
                            <form class="p-4">
                                <div class="form-floating mb-4">
                                    <input type="text" class="form-control" id="floatingName" placeholder=" " 
                                        style="background-color: #F2F4F7; border: none; height: 60px;">
                                    <label for="floatingName" class="text-muted">Name</label>
                                </div>
                                <div class="form-floating mb-4">
                                    <input type="tel" class="form-control" id="floatingPhone" placeholder=" " 
                                        style="background-color: #F2F4F7; border: none; height: 60px;">
                                    <label for="floatingPhone" class="text-muted">Phone Number</label>
                                </div>
                                <div class="form-floating mb-4">
                                    <textarea class="form-control" id="floatingComment" placeholder=" " 
                                        style="background-color: #F2F4F7; border: none; height: 150px;"></textarea>
                                    <label for="floatingComment" class="text-muted">Comment</label>
                                </div>
                                <button type="submit" class="btn btn-success w-100 p-3" 
                                    style="background: linear-gradient(135deg, #22D571, #00bc51);">
                                    <strong>Submit</strong>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- footer -->
        <footer class="footer-section text-center d-none">
            <div class="container">
                <div class="footer-content p-5 pb-0">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-widget">
                                <div class="footer-logo">
                                    <a href="{{ url('/') }}"><img src="{{ getAppSettings('logo_image_url') }}"
                                            alt="{{ getAppSettings('name') }}" class="img-fluid" alt="logo"></a>
                                </div>
                                <div class="footer-social-icon my-4">
                                    <h3 class="ubuntu-bold">{{ __tr('Follow us') }}</h3>
                                    <a href="#"><i class="fab fa-facebook"></i></a>
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                            <div class="footer-widget">
                                <div class="footer-widget-heading">
                                    <h3 class="ubuntu-bold"> {{ __tr('Useful Links') }}</h3>
                                    <div class="border-bottom w-25 m-auto"></div>
                                </div>
                                <ul>
                                    <li><a href="#"> {{ __tr('Home') }}</a></li>
                                    <li><a href="#"> {{ __tr('About') }}</a></li>
                                    <li><a href="#"> {{ __tr('Careers') }}</a></li>
                                    <li><a href="#"> {{ __tr('Our Services') }}</a></li>
                                    <li><a href="#"> {{ __tr('Privacy policy') }}</a></li>
                                    <li><a href="#"> {{ __tr('terms and conditions') }}</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                            <div class="footer-widget">
                                <div class="footer-widget-heading">
                                    <h3 class="ubuntu-bold"> {{ __tr('Contact') }}</h3>
                                    <div class="border-bottom w-25 m-auto"></div>
                                </div>
                                <ul>
                                    @if (getAppSettings('contact_details'))
                                    <div class="lw-ws-pre-line">
                                        <li> {!! getAppSettings('contact_details') !!}</li>
                                    </div>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="copyright-text text-center pb-3">
                    <p> &copy;{{ getAppSettings('name') }} {{ __tr(date('Y')) }}.
                        {{ __tr('All Rights Reserved.') }}</p>
                </div>
            </div>
        </footer>
        <footer class="text-center py-3 bg-success">
            <div class="container px-5">
                <div class="text-white mt-3 small">
                    <div class="mb-2">&copy; {{ getAppSettings('name') }} {{ __tr(date('Y')) }}.
                        {{ __tr('All Rights Reserved.') }}</div>
                </div>
            </div>
        </footer>
        <!-- footer -->
        <script>
        (function() {
            'use strict';
            window.appConfig = {
                debug: "{{ config('app.debug') }}",
                csrf_token: "{{ csrf_token() }}",
                locale: '{{ app()->getLocale() }}',
            }
        })();
        document.addEventListener('DOMContentLoaded', () => {
            // Price configuration for different plans
            const priceConfig = {
                monthly: {
                    premium: {
                        price: 1499,
                        original: 1999
                    },
                    ultimate: {
                        price: 2499,
                        original: 2999
                    }
                },
                quarterly: {
                    premium: {
                        price: 3999,  // ~3 months price with some discount
                        original: 5997  // 3 x monthly original price
                    },
                    ultimate: {
                        price: 6999,
                        original: 8997
                    }
                },
                yearly: {
                    premium: {
                        price: 14999,  // ~12 months price with significant discount
                        original: 23988  // 12 x monthly original price
                    },
                    ultimate: {
                        price: 20000,
                        original: 30988
                    }
                }
            };

            // Function to format number with commas
            function formatPrice(number) {
                return new Intl.NumberFormat('en-IN').format(number);
            }

            // Function to update prices
            function updatePrices(period) {
                const cards = document.querySelectorAll('.price-card');
                
                cards.forEach((card, index) => {
                    const planType = index === 0 ? 'premium' : 'ultimate';
                    const prices = priceConfig[period][planType];
                    
                    const amountElement = card.querySelector('.amount');
                    const originalPriceElement = card.querySelector('.original-price');
                    const subscriptionPeriodElement = card.querySelector('.subscription-period');

                    // Update the prices
                    amountElement.textContent = `₹${formatPrice(prices.price)}`;
                    originalPriceElement.innerHTML = `<del>₹${formatPrice(prices.original)}</del>`;
                    
                    // Update subscription period text
                    const periodText = period.charAt(0).toUpperCase() + period.slice(1);
                    subscriptionPeriodElement.textContent = `${periodText} Subscription`;
                });
            }

            // Add click handlers to toggle buttons
            const toggleButtons = document.querySelectorAll('.btn-toggle');
            toggleButtons.forEach(button => {
                button.addEventListener('click', function() {
                    // Remove active class from all buttons
                    toggleButtons.forEach(btn => btn.classList.remove('active'));
                    
                    // Add active class to clicked button
                    this.classList.add('active');
                    
                    // Get the selected period and update prices
                    const period = this.getAttribute('data-value').toLowerCase();
                    updatePrices(period);
                    
                    // Update the selected plan text
                    document.getElementById('selectedPlan').textContent = 
                        period.charAt(0).toUpperCase() + period.slice(1);
                });
            });

            // Initialize with monthly prices
            updatePrices('monthly');
        });
 

        function setActive(selectedBtn) {
            // Remove active class from all buttons
            document.querySelectorAll(".btn-toggle").forEach(btn => {
                btn.classList.remove("active");
            });
    
            // Add active class to the selected button
            selectedBtn.classList.add("active");
    
            // Update the displayed selected plan
            document.getElementById("selectedPlan").innerText = selectedBtn.getAttribute("data-value").charAt(0).toUpperCase() + selectedBtn.getAttribute("data-value").slice(1);
        }
        </script>
        {!! __yesset([
        'dist/js/common-vendorlibs.js',
        'dist/js/vendorlibs.js',
        'dist/packages/bootstrap/js/bootstrap.bundle.min.js',
        'dist/js/jsware.js',
        ]) !!}
        {!! getAppSettings('page_footer_code_all') !!}
        @if (isLoggedIn())
        {!! getAppSettings('page_footer_code_logged_user_only') !!}
        @endif
    </body>

</html>