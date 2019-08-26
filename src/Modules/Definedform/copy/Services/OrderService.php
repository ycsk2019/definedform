<?php


namespace App\Modules\Definedform\Services;

use App\Modules\Definedform\Repositories\OrderRepositoryInterface;

class OrderService
{
    protected $orderRepository;

    public function __construct(OrderRepositoryInterface)
    {
        $this->orderRepository = $orderRepository;
    }

    public function all(){
        return $this->orderRepository->all();
    }

    public function find($id, $columns = ['*'])
    {
        return $this->orderRepository->find($id, $columns);
    }

    public function create($data){
        return $this->orderRepository->create($data);
    }

    public function update($data){
        return $this->orderRepository->update($data);
    }

    public function findByFieldText($value, $columns = ['*'])
    {
        return $this->orderRepository->findByFieldText($value,$columns);
    }

    public function findByMenuId($menu_id)
    {
        return $this->orderRepository->findByMenuId($menu_id);
    }
}