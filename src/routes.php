<?php

Route::prefix('definedform')->group(function () {
    // 订单
    Route::prefix('order')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\OrderController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\OrderController::class . '@detail');
        //    创建
        Route::post('create', \App\Modules\Definedform\OrderController::class . '@create');
        //    更新
        Route::post('update', \App\Modules\Definedform\OrderController::class . '@update');
        //    搜索
        Route::post('findByFieldText', \App\Modules\Definedform\OrderController::class . '@findByFieldText');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \App\Modules\Definedform\OrderController::class . '@findByMenuId');
    });

    // 表单
    Route::prefix('formformat')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\FormFormatController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\FormFormatController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\FormFormatController::class . '@create');
        //    更新
        Route::post('update', \App\Modules\Definedform\FormFormatController::class . '@update');
        //    删除
        Route::post('delete', \App\Modules\Definedform\FormFormatController::class . '@delete');
        //    获取最新表单设计
        Route::get('getLastest', \App\Modules\Definedform\FormFormatController::class . '@getLastest');
        //    获取最新表单设计列表
        Route::get('getLastestList', \App\Modules\Definedform\FormFormatController::class . '@getLastestList');
        //    根据表单编号和菜单ID查询表单模板详情
        Route::post('findByFormNoVersion', \App\Modules\Definedform\FormFormatController::class . '@findByFormNoVersion');
    });

    // 表单控件
    Route::prefix('formfield')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\FormFieldController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\FormFieldController::class . '@detail');
    });

    // 表单列表设计
    Route::prefix('formlist')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\FormListController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\FormListController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\FormListController::class . '@create');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \App\Modules\Definedform\FormListController::class . '@findByMenuId');
        //    批量新增
        Route::post('createMulti', \App\Modules\Definedform\FormListController::class . '@createMulti');
        //    批量修改
        Route::post('updateMulti', \App\Modules\Definedform\FormListController::class . '@updateMulti');
        //    删除
        Route::post('delete', \App\Modules\Definedform\FormListController::class . '@delete');
    });

    // 表单列表头设计
    Route::prefix('formlisthead')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\FormListHeadController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\FormListHeadController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\FormListHeadController::class . '@create');
        //    根据菜单ID查找列表
        Route::get('findByMenuId', \App\Modules\Definedform\FormListHeadController::class . '@findByMenuId');
    });

    // 表单菜单设计
    Route::prefix('formmenu')->group(function () {
        //    列表
        Route::get('index', \App\Modules\Definedform\FormMenuController::class . '@index');
        //    详情
        Route::get('detail', \App\Modules\Definedform\FormMenuController::class . '@detail');
        //    新增
        Route::post('create', \App\Modules\Definedform\FormMenuController::class . '@create');
        //    修改
        Route::post('update', \App\Modules\Definedform\FormMenuController::class . '@update');
        //    删除
        Route::post('delete', \App\Modules\Definedform\FormMenuController::class . '@delete');
        //    根据父菜单ID查找列表
        Route::post('findByParentId', \App\Modules\Definedform\FormMenuController::class . '@findByParentId');
    });
});

Route::prefix('definedformsrc')->group(function () {
    // 订单
    Route::prefix('order')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\OrderController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\OrderController::class . '@detail');
        //    创建
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\OrderController::class . '@create');
        //    更新
        Route::post('update', \Lskstc\Definedform\Modules\Definedform\OrderController::class . '@update');
        //    搜索
        Route::post('findByFieldText', \Lskstc\Definedform\Modules\Definedform\OrderController::class . '@findByFieldText');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \Lskstc\Definedform\Modules\Definedform\OrderController::class . '@findByMenuId');
    });

    // 表单
    Route::prefix('formformat')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@create');
        //    更新
        Route::post('update', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@update');
        //    删除
        Route::post('delete', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@delete');
        //    获取最新表单设计
        Route::get('getLastest', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@getLastest');
        //    获取最新表单设计列表
        Route::get('getLastestList', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@getLastestList');
        //    根据表单编号和菜单ID查询表单模板详情
        Route::post('findByFormNoVersion', \Lskstc\Definedform\Modules\Definedform\FormFormatController::class . '@findByFormNoVersion');
    });

    // 表单控件
    Route::prefix('formfield')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\FormFieldController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\FormFieldController::class . '@detail');
    });

    // 表单列表设计
    Route::prefix('formlist')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@create');
        //    根据菜单ID查找列表
        Route::post('findByMenuId', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@findByMenuId');
        //    批量新增
        Route::post('createMulti', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@createMulti');
        //    批量修改
        Route::post('updateMulti', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@updateMulti');
        //    删除
        Route::post('delete', \Lskstc\Definedform\Modules\Definedform\FormListController::class . '@delete');
    });

    // 表单列表头设计
    Route::prefix('formlisthead')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\FormListHeadController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\FormListHeadController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\FormListHeadController::class . '@create');
        //    根据菜单ID查找列表
        Route::get('findByMenuId', \Lskstc\Definedform\Modules\Definedform\FormListHeadController::class . '@findByMenuId');
    });

    // 表单菜单设计
    Route::prefix('formmenu')->group(function () {
        //    列表
        Route::get('index', \Lskstc\Definedform\Modules\Definedform\FormMenuController::class . '@index');
        //    详情
        Route::get('detail', \Lskstc\Definedform\Modules\Definedform\FormMenuController::class . '@detail');
        //    新增
        Route::post('create', \Lskstc\Definedform\Modules\Definedform\FormMenuController::class . '@create');
        //    修改
        Route::post('update', \Lskstc\Definedform\Modules\Definedform\FormMenuController::class . '@update');
        //    删除
        Route::post('delete', \Lskstc\Definedform\Modules\Definedform\FormMenuController::class . '@delete');
        //    根据父菜单ID查找列表
        Route::post('findByParentId', \Lskstc\Definedform\Modules\Definedform\FormMenuController::class . '@findByParentId');
    });
});