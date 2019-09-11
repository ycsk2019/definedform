```
1.composer require lskstc/definedform:dev-master -vvv
2.php artisan vendor:publish --tag=definedform --force
3.php artisan lskstc:definedform-install
4.php artisan lskstc:definedformdata-install
5.\app\Providers\RouteServiceProvider.php添加代码：
public function map() 中添加：
{

    $this->mapFormRoutes();

}
新增：
protected function mapFormRoutes()
{
    Route::namespace('')
        ->group(base_path('routes/definedform.php'));
}
```