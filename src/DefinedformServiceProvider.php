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
        $this->publishes([
            __DIR__.'/Modules/Definedform/Repositories/FormFormatRepositoryInterface.php' => app_path('Modules/Definedform/Repositories/FormFormatRepositoryInterface.php'),
            __DIR__.'/Modules/Definedform/Repositories/FormFormatRepository.php' => app_path('Modules/Definedform/Repositories/FormFormatRepository.php'),
            __DIR__.'/Modules/Definedform/Services/FormFormatServiceInterface.php' => app_path('Modules/Definedform/Services/FormFormatServiceInterface.php'),
            __DIR__.'/Modules/Definedform/Services/FormFormatService.php' => app_path('Modules/Definedform/Services/FormFormatService.php')
        ], 'repository');
    }

    public function register()
    {
        $this->app->singleton(\App\Modules\Definedform\Services\FormFormatServiceInterface::class,\App\Modules\Definedform\Services\FormFormatService::class);
        $this->app->singleton(\App\Modules\Definedform\Repositories\FormFormatRepositoryInterface::class,\App\Modules\Definedform\Repositories\FormFormatRepository::class);
        //$this->app->singleton(\Lskstc\Definedform\Modules\Definedform\Services\FormFormatServiceInterface::class,\Lskstc\Definedform\Modules\Definedform\Services\FormFormatService::class);
        //$this->app->singleton(\Lskstc\Definedform\Modules\Definedform\Repositories\FormFormatRepositoryInterface::class,\Lskstc\Definedform\Modules\Definedform\Repositories\FormFormatRepository::class);
        /*$this->app->singleton('definedform', function () {
            return new Definedform;
        });
        $this->app->singleton('\Lskstc\Definedform\Modules\Definedform\Services\FormFormatServiceInterface', function()
        {
            return new \Lskstc\Definedform\Modules\Definedform\Services\FormFormatService;
        });
        $this->app->singleton('\Lskstc\Definedform\Modules\Definedform\Services\FormFormatRepositoryInterface', function()
        {
            return new \Lskstc\Definedform\Modules\Definedform\Services\FormFormatRepository;
        });*/

    }
}