<?php

namespace App\Providers;

use App\Yantrana\Components\Vendor\Models\VendorModel;
use Illuminate\Support\ServiceProvider;
use Laravel\Cashier\Cashier;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // Register ECommerce Interface
        $this->app->bind(
            \App\Yantrana\Components\ECommerce\Interfaces\ECommerceEngineInterface::class,
            \App\Yantrana\Components\ECommerce\ECommerceEngine::class
        );

        // Register WhatsApp ECommerce Service
        $this->app->singleton('App\Yantrana\Components\ECommerce\ECommerceEngine', function ($app) {
            return new \App\Yantrana\Components\ECommerce\ECommerceEngine(
                $app->make(\App\Yantrana\Components\ECommerce\Repositories\ProductRepository::class),
                $app->make(\App\Yantrana\Components\ECommerce\Repositories\CartRepository::class),
                $app->make(\App\Yantrana\Components\ECommerce\Repositories\OrderRepository::class),
                $app->make(\App\Yantrana\Components\Contact\Repositories\ContactRepository::class),
                $app->make(\App\Yantrana\Components\ECommerce\Services\WhatsAppECommerceService::class)
            );
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        if(config('__tech.force_https', false)) {
            \URL::forceScheme('https');
        }

        require app_path('Yantrana/__Laraware/Support/helpers.php');
        require app_path('Yantrana/Support/app-helpers.php');
        require app_path('Yantrana/Support/extended-validations.php');
        // config items requires gettext helper function to work
        require app_path('Yantrana/Support/custom-tech-config.php');
        require app_path('Yantrana/Support/extended-blade-directive.php');
        Cashier::useCustomerModel(VendorModel::class);
        if (getAppSettings('enable_stripe') and getAppSettings('stripe_enable_calculate_taxes')) {
            Cashier::calculateTaxes();
        }
    }
}
