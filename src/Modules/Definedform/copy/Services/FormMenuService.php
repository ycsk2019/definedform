<?php


namespace App\Modules\Definedform\Services;

use App\Modules\Definedform\Repositories\FormMenuRepositoryInterface;
use App\Modules\Definedform\Services\FormFormatServiceInterface;
use Illuminate\Support\Facades\DB;
use App\Modules\Definedform\Helpers\Util;

class FormMenuService implements FormMenuServiceInterface
{
    protected $formMenuRepository;
    protected $formFormatService;

    public function __construct(FormMenuRepositoryInterface $formMenuRepository,FormFormatServiceInterface $formFormatService)
    {
        $this->formMenuRepository = $formMenuRepository;
        $this->formFormatService = $formFormatService;
    }

    public function all(){
        return $this->formMenuRepository->all();
    }

    public function find($id, $columns = ['*'])
    {
        return $this->formMenuRepository->find($id, $columns);
    }

    public function create(array $data)
    {
        return $this->formMenuRepository->create($data);
    }

    public function update(array $data, $id)
    {
        return $this->formMenuRepository->update($data, $id);
    }

    public function findBy($field, $value, $columns = ['*'])
    {
        return $this->formMenuRepository->findBy($field, $value, $columns);
    }

    public function findWhere($where, $columns = ['*'])
    {
        return $this->formMenuRepository->findWhere($where, $columns);
    }

    public function delete($id)
    {
        return $this->formMenuRepository->delete($id);
    }

    public function findByParentId($parent_id)
    {
        return $this->formMenuRepository->findBy('parent_id', $parent_id);
    }

    public function createAttach(array $data,array $process_ids)
    {
        return $this->formMenuRepository->createAttach($data,$process_ids);
    }

    public function updateAttach(array $data, $id,array $process_ids)
    {
        return $this->formMenuRepository->updateAttach($data, $id,$process_ids);
    }

    public function deleteAttach($id)
    {
        return $this->formMenuRepository->deleteAttach($id);
    }

    public function findAttach($id, $columns = ['*'])
    {
        $form_menu = $this->formMenuRepository->findAttach($id, $columns);

        if ($form_menu->process){
            foreach($form_menu->process as $k =>$v){
                $temp = $this->formFormatService->findFirstBy('process_id', $v->id,array('id'));
                $form_menu->process[$k]->form_format_id = $temp['id'];
            }
        }

        return $form_menu;
    }
}