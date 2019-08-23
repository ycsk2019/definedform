<?php
namespace Lskstc\Definedform;
use Illuminate\Support\ServiceProvider;

class DefinedformServiceProvider extends ServiceProvider
{
    public function boot()
    {
        //$this->loadRoutesFrom(__DIR__ . '/routes.php');
        //$this->loadMigrationsFrom(__DIR__.'/database/migrations/');
        /*if ($this->app->runningInConsole()) {
            $this->commands([
                DefinedformInstall::class
            ]);
        }*/
        
        /*$this->publishes([
            __DIR__.'/config/definedform.php' => config_path('definedform.php'),
        ], 'config');*/
        /*$this->publishes([
            __DIR__.'/database/migrations/' => database_path('migrations')
        ], 'migrations');*/
    }

    public function register()
    {
        $this->app->singleton(\Lskstc\Definedform\Modules\Services\FormFormatServiceInterface::class,\Lskstc\Definedform\Modules\Services\FormFormatService::class);
        $this->app->singleton(\Lskstc\Definedform\Modules\Repositories\FormFormatRepositoryInterface::class,\Lskstc\Definedform\Modules\Repositories\FormFormatRepository::class);
        /*$this->app->singleton('definedform', function () {
            return new Definedform;
        });
        $this->app->singleton('\Lskstc\Definedform\Modules\Services\FormFormatServiceInterface', function()
        {
            return new \Lskstc\Definedform\Modules\Services\FormFormatService;
        });
        $this->app->singleton('\Lskstc\Definedform\Modules\Services\FormFormatRepositoryInterface', function()
        {
            return new \Lskstc\Definedform\Modules\Services\FormFormatRepository;
        });*/

    }
}