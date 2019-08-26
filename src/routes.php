<?php

Route::prefix('definedform')->group(function () {
    // 订单
    Route::prefix('order')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\Controllers\OrderController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\Controllers\OrderController::class . '@detail');
        //    创建
        Route::post('create', \App\Modules\Definedform\Controllers\OrderController::class . '@create');
        //    更新
        Route::post('update', \App\Modules\Definedform\Controllers\OrderController::class . '@update');
        //    搜索
        Route::post('findByFieldText', \App\Modules\Definedform\Controllers\OrderController::class . '@findByFieldText');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \App\Modules\Definedform\Controllers\OrderController::class . '@findByMenuId');
    });

    // 表单
    Route::prefix('formformat')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\Controllers\FormFormatController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\Controllers\FormFormatController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\Controllers\FormFormatController::class . '@create');
        //    更新
        Route::post('update', \App\Modules\Definedform\Controllers\FormFormatController::class . '@update');
        //    删除
        Route::post('delete', \App\Modules\Definedform\Controllers\FormFormatController::class . '@delete');
        //    获取最新表单设计
        Route::get('getLastest', \App\Modules\Definedform\Controllers\FormFormatController::class . '@getLastest');
        //    获取最新表单设计列表
        Route::get('getLastestList', \App\Modules\Definedform\Controllers\FormFormatController::class . '@getLastestList');
        //    根据表单编号和菜单ID查询表单模板详情
        Route::post('findByFormNoVersion', \App\Modules\Definedform\Controllers\FormFormatController::class . '@findByFormNoVersion');
    });

    // 表单控件
    Route::prefix('formfield')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\Controllers\FormFieldController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\Controllers\FormFieldController::class . '@detail');
    });

    // 表单列表设计
    Route::prefix('formlist')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\Controllers\FormListController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\Controllers\FormListController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\Controllers\FormListController::class . '@create');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \App\Modules\Definedform\Controllers\FormListController::class . '@findByMenuId');
        //    批量新增
        Route::post('createMulti', \App\Modules\Definedform\Controllers\FormListController::class . '@createMulti');
        //    批量修改
        Route::post('updateMulti', \App\Modules\Definedform\Controllers\FormListController::class . '@updateMulti');
        //    删除
        Route::post('delete', \App\Modules\Definedform\Controllers\FormListController::class . '@delete');
    });

    // 表单列表头设计
    Route::prefix('formlisthead')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\Controllers\FormListHeadController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\Controllers\FormListHeadController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\Controllers\FormListHeadController::class . '@create');
        //    根据菜单ID查找列表
        Route::get('findByMenuId', \App\Modules\Definedform\Controllers\FormListHeadController::class . '@findByMenuId');
    });

    // 表单菜单设计
    Route::prefix('formmenu')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\Controllers\FormMenuController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\Controllers\FormMenuController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\Controllers\FormMenuController::class . '@create');
        //    修改
        Route::post('update', \App\Modules\Definedform\Controllers\FormMenuController::class . '@update');
        //    删除
        Route::post('delete', \App\Modules\Definedform\Controllers\FormMenuController::class . '@delete');
        //    根据父菜单ID查找列表
        Route::post('findByParentId', \App\Modules\Definedform\Controllers\FormMenuController::class . '@findByParentId');
    });
});

Route::prefix('definedformsrc')->group(function () {
    // 订单
    Route::prefix('order')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\Controllers\OrderController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\Controllers\OrderController::class . '@detail');
        //    创建
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\Controllers\OrderController::class . '@create');
        //    更新
        Route::post('update', \Lskstc\Definedform\Modules\Definedform\Controllers\OrderController::class . '@update');
        //    搜索
        Route::post('findByFieldText', \Lskstc\Definedform\Modules\Definedform\Controllers\OrderController::class . '@findByFieldText');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \Lskstc\Definedform\Modules\Definedform\Controllers\OrderController::class . '@findByMenuId');
    });

    // 表单
    Route::prefix('formformat')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@create');
        //    更新
        Route::post('update', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@update');
        //    删除
        Route::post('delete', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@delete');
        //    获取最新表单设计
        Route::get('getLastest', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@getLastest');
        //    获取最新表单设计列表
        Route::get('getLastestList', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@getLastestList');
        //    根据表单编号和菜单ID查询表单模板详情
        Route::post('findByFormNoVersion', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFormatController::class . '@findByFormNoVersion');
    });

    // 表单控件
    Route::prefix('formfield')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFieldController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\Controllers\FormFieldController::class . '@detail');
    });

    // 表单列表设计
    Route::prefix('formlist')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@create');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@findByMenuId');
        //    批量新增
        Route::post('createMulti', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@createMulti');
        //    批量修改
        Route::post('updateMulti', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@updateMulti');
        //    删除
        Route::post('delete', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListController::class . '@delete');
    });

    // 表单列表头设计
    Route::prefix('formlisthead')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListHeadController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListHeadController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListHeadController::class . '@create');
        //    根据菜单ID查找列表
        Route::get('findByMenuId', \Lskstc\Definedform\Modules\Definedform\Controllers\FormListHeadController::class . '@findByMenuId');
    });

    // 表单菜单设计
    Route::prefix('formmenu')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\Controllers\FormMenuController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\Controllers\FormMenuController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\Controllers\FormMenuController::class . '@create');
        //    修改
        Route::post('update', \Lskstc\Definedform\Modules\Definedform\Controllers\FormMenuController::class . '@update');
        //    删除
        Route::post('delete', \Lskstc\Definedform\Modules\Definedform\Controllers\FormMenuController::class . '@delete');
        //    根据父菜单ID查找列表
        Route::post('findByParentId', \Lskstc\Definedform\Modules\Definedform\Controllers\FormMenuController::class . '@findByParentId');
    });
});