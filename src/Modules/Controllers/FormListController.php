<?php


namespace Lskstc\Definedform\Modules\Controllers;

use Lskstc\Definedform\Modules\Services\FormFormatServiceInterface;
use Lskstc\Definedform\Modules\Services\FormListServiceInterface;
use Illuminate\Http\Request;
use Lskstc\Definedform\Modules\Helpers\ApiResponse;

class FormListController extends Controller
{
    protected $formListService;
    protected $formFormatService;

    public function __construct(FormListServiceInterface $formListService,FormFormatServiceInterface $formFormatService)
    {
        $this->formListService = $formListService;
        $this->formFormatService = $formFormatService;
    }

    /**
     * 查询表单列表设计列表
     *
     * @return list
     */
    public function index(){
        $result = $this->formListService->all();
        ApiResponse::output($result);
    }

    /**
     * 查询表单列表设计详情
     *
     * @return
     */
    public function detail(Request $request){
        $result = $this->formListService->find($request->input('id'));
        ApiResponse::output($result);
    }

    /**
     * 创建表单列表设计
     *
     */
    public function create(Request $request)
    {
        $input = $request->input();
        $result = $this->formListService->create($input);
        ApiResponse::output($result);
    }

    /**
     * 更新表单列表设计
     *
     */
    public function update(Request $request)
    {
        /*$this->validate($request, [
            'form_no' => "string|required"
        ]);*/
        $input = $request->input();
        $result = $this->formListService->update($input);
        ApiResponse::output($result);
    }

    /**
     * 按菜单ID查询表单列表设计
     * @param Request $request
     * @return
     */
    public function findByMenuId(Request $request)
    {
        $this->validate($request, [
            'menu_id' => "int|required"
        ]);
        $list = $this->formListService->findByMenuId($request->input('menu_id'));
        foreach ($list as $k => $v){
            $list[$k]->form_name_cn = $this->formFormatService->find($v->form_format_id,array('form_name_cn'))->form_name_cn;
        }

        return $list;
    }

    /**
     * 批量创建表单列表设计
     *
     */
    public function createMulti(Request $request)
    {
        $input = $request->input();
        $result = $this->formListService->createMulti($input);
        ApiResponse::output($result);
    }

    /**
     * 批量修改表单列表设计
     *
     */
    public function updateMulti(Request $request)
    {
        $input = $request->input();
        $result = $this->formListService->updateMulti($input);
        ApiResponse::output($result);
    }

    /**
     * 删除表单列表设计
     *
     */
    public function delete(Request $request)
    {
        $this->validate($request, [
            'id' => "int|required"
        ]);
        $input = $request->input();
        $result = $this->formListService->delete($input['id']);
        ApiResponse::output($result);
    }
}