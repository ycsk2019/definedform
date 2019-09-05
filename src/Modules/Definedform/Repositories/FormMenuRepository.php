<?php


namespace Lskstc\Definedform\Modules\Definedform\Repositories;


use Lskstc\Definedform\Modules\Definedform\Models\FormFormatFormList;
use Lskstc\Definedform\Modules\Definedform\Models\FormMenu;
use Lskstc\Definedform\Modules\Definedform\Models\FormSystemField;

class FormMenuRepository implements FormMenuRepositoryInterface
{

    public function all($columns = ['*'])
    {
        return FormMenu::get();
    }

    public function paginate($perPage = 15, $columns = ['*'])
    {
        // TODO: Implement paginate() method.
    }

    public function create(array $data)
    {
        return FormMenu::create($data);
    }

    public function save(array $data)
    {
        // TODO: Implement save() method.
    }

    public function delete($id)
    {
        return FormMenu::where('id',$id)->delete();
    }

    public function update(array $data, $id)
    {
        return FormMenu::where('id',$id)->update($data);
    }

    public function updateBy(array $data, $field, $value, $columns = ['*'])
    {
        // TODO: Implement updateBy() method.
    }

    public function updateWhere(array $data, $where, $columns = ['*'])
    {
        // TODO: Implement updateWhere() method.
    }

    public function find($id, $columns = ['*'])
    {
        return FormMenu::select($columns)->where('id',$id)->first();
    }

    public function findProcess($id, $columns = ['*'])
    {
        return FormMenu::select($columns)->where('id',$id)->process()->get();
    }


    public function findBy($field, $value, $columns = ['*'])
    {
        return FormMenu::select($columns)->where($field,$value)->get();
    }

    public function findWhere($where, $columns = ['*'])
    {
        return FormMenu::select($columns)->where($where)->get();
    }

    public function findFirstBy($field, $value, $columns = ['*'])
    {
        // TODO: Implement findFirstBy() method.
    }

    public function findFirstWhere($where, $columns = ['*'])
    {
        // TODO: Implement findFirstWhere() method.
    }

    public function createAttach(array $data,array $process_ids)
    {
        $form_menu = FormMenu::create($data);
        $r = $form_menu->process()->attach($process_ids);
        return $form_menu;
    }

    public function updateAttach(array $data, $id,array $process_ids)
    {
        $form_menu = FormMenu::find($id);
        $r_update = $form_menu->update($data);
        $r = $form_menu->process()->sync($process_ids);
        return $form_menu;
    }

    public function deleteAttach($id)
    {
        $form_menu = FormMenu::find($id);
        $form_menu->process()->detach();
        $r =$form_menu->delete();
        return $r;
    }

    public function findAttach($id, $columns = ['*'])
    {
        $form_menu = FormMenu::select($columns)->where('id',$id)->first();
        $process = $form_menu->process;
        return $form_menu;
    }

    public function lists()
    {
        $form_menu = FormMenu::leftJoin('form_lists', 'form_lists.menu_id', '=', 'form_menus.id')->select('form_menus.*','form_lists.type as lists_type','form_lists.system_field_id')->orderBy('form_menus.type')->groupBy('form_menus.id')->get();
        $form_menu_array = $form_menu->toArray();
        foreach($form_menu_array as $k => $v){
            if($v['lists_type'] == 'form'){
                $field_labels = FormFormatFormList::select('field_label')->where(array('form_list_id'=>$v['id']))->get()->toArray();
                $form_menu_array[$k]['field_label'] = array_column($field_labels,'field_label');
            }
            else{
                $field_labels = FormSystemField::select('system_field_name_cn')->where(array('id'=>$v['system_field_id']))->get()->toArray();
                $form_menu_array[$k]['field_label'] = array_column($field_labels,'system_field_name_cn');
            }

        }
        return $form_menu_array;
    }
}