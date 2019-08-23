<?php


namespace Lskstc\Definedform\Modules\Definedform\Services;

use Lskstc\Definedform\Modules\Definedform\Repositories\FormListRepositoryInterface;

class FormListService implements FormListServiceInterface
{
    protected $formListRepository;

    public function __construct(FormListRepositoryInterface $formListRepository)
    {
        $this->formListRepository = $formListRepository;
    }

    public function all(){
        return $this->formListRepository->all();
    }

    public function find($id, $columns = ['*'])
    {
        return $this->formListRepository->find($id, $columns);
    }

    public function create(array $data)
    {
        return $this->formListRepository->create($data);
    }

    public function update(array $data, $id)
    {
        return $this->formListRepository->update($data, $id);
    }

    public function findBy($field, $value, $columns = ['*'])
    {
        return $this->formListRepository->findBy($field, $value, $columns);
    }

    public function findWhere($where, $columns = ['*'])
    {
        return $this->formListRepository->findWhere($where, $columns);
    }

    public function delete($id)
    {
        return $this->formListRepository->delete($id);
    }

    public function findByMenuId($menu_id, $columns = ['*'])
    {
        return $this->formListRepository->findBy('menu_id', $menu_id, $columns,'item_order');

    }

    public function createMulti(array $data)
    {
        return $this->formListRepository->insert($data);
    }

    public function updateMulti(array $data)
    {
        try{
            $i = 0;
            foreach($data as $k => $v){
                $this->formListRepository->update($v,$v['id']);
                $i++;
            }
            return $i;
        }catch(\Exception $e){
            return $e;
        }
    }

}