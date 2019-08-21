<?php
namespace Lskstc\Definedform;
use Illuminate\Support\ServiceProvider;

class DefinedformServiceProvider extends ServiceProvider
{
    public function boot()
    {
        //
    }

    public function register()
    {
        $this->app->singleton('definedform', function () {
            return new Definedform;
        });
    }
}