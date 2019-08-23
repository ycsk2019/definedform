<?php

namespace Lskstc\Definedform\Modules\Definedform\Controllers;

use Lskstc\Definedform\Modules\Definedform\Services\FormFormatServiceInterface;
use Illuminate\Http\Request;
use Lskstc\Definedform\Modules\Definedform\Helpers\ApiResponse;
use Lskstc\Definedform\Definedform;

class FormFormatController extends Controller
{
    protected $formFormatService;

    public function __construct(FormFormatServiceInterface $formFormatService)
    {
        $this->formFormatService = $formFormatService;
    }

    /**
     * 查询表单设计列表
     *
     * @return list
     */
    public function index(){
        //$result = $this->formFormatService->all();
        Definedform::printRunning();
        $definedform = new Definedform();
        $result = $definedform->all();
        ApiResponse::output($result);
    }

    /**
     * 查询表单设计详情
     *
     * @return
     */
    public function detail(Request $request){
        $result = $this->formFormatService->find($request->input('id'));
        ApiResponse::output($result);
    }

    /**
     * 创建表单设计
     *
     */
    public function create(Request $request)
    {
        $input = $request->input();
        $result = $this->formFormatService->create($input);
        ApiResponse::output($result);
    }

    /**
     * 更新表单设计,其实是创建一个新表单设计记录
     *
     */
    public function update(Request $request)
    {
        $this->validate($request, [
            'form_no' => "string|required"
        ]);
        $input = $request->input();
        $result = $this->formFormatService->updateByFormNo($input,$input['form_no']);
        ApiResponse::output($result);
    }

    /**
     * 删除表单设计
     *
     */
    public function delete(Request $request)
    {
        $input = $request->input();
        $result = $this->formFormatService->delete($input['id']);
        ApiResponse::output($result);
    }

    /**
     * 查询最新表单设计详情
     *
     * @return list
     */
    public function getLastest(Request $request){
        $this->validate($request, [
            'form_no' => 'required|string',
        ]);
        $input = $request->input();
        $result = $this->formFormatService->getLastestByFormNo($input['form_no']);
        ApiResponse::output($result);
    }

    /**
     * 查询最新表单设计详情列表
     *
     * @return list
     */
    public function getLastestList(Request $request){
        $this->validate($request, [
            'form_no' => 'string',
            'form_name_cn' => 'string',
        ]);
        $input = $request->input();
        $result = $this->formFormatService->getLastestList($input);
        ApiResponse::output($result);
    }

    /**
     * 根据表单编号和菜单ID查询表单模板详情
     *
     * @return list
     */
    public function findByFormNoVersion(Request $request)
    {
        $this->validate($request, [
            'form_no' => 'required|string',
            'version' => 'required|int',
        ]);
        $input = $request->input();
        $result = $this->formFormatService->findByFormNoVersion($input);
        ApiResponse::output($result);
    }

}
