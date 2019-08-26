<?php


namespace Lskstc\Definedform\Modules\Definedform\Controllers;


use App\Helpers\ApiResponse;
use App\Modules\Services\OrderServiceInterface;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    protected $orderService;

    public function __construct(OrderServiceInterface $orderService)
    {
        $this->orderService = $orderService;
    }

    /**
     * 查询订单列表
     *
     * @return list
     */
    public function index(){
        $result = $this->orderService->all();
        ApiResponse::output($result);
    }

    /**
     * 查询订单详情
     *
     * @return list
     */
    public function detail(Request $request){
        $result = $this->orderService->find($request->input('id'));
        ApiResponse::output($result);
    }

    /**
     * 创建订单
     *
     */
    public function create(Request $request){
        $result = $this->orderService->create($request->input());
        ApiResponse::output($result);
    }

    /**
     * 修改订单
     *
     */
    public function update(Request $request){
        $result = $this->orderService->update($request->input());
        ApiResponse::output($result);
    }

    /**
     * 搜索订单
     *
     */
    public function findByFieldText(Request $request){
        $result = $this->orderService->findByFieldText($request->input("search"));
        ApiResponse::output($result);
    }

    /**
     * 按菜单ID查询订单列表
     *
     * @return list
     */
    public function findByMenuId(Request $request){
        $this->validate($request, [
            'menu_id' => 'required|int',
        ]);
        $result = $this->orderService->findByMenuId($request->input("menu_id"));
        ApiResponse::output($result);
    }
}