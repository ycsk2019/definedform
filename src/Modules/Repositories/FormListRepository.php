<?php


namespace Lskstc\Definedform\Modules\Repositories;

use Lskstc\Definedform\Modules\Models\FormList;

class FormListRepository implements FormListRepositoryInterface
{

    public function all($columns = ['*'])
    {
        return FormList::get();
    }

    public function paginate($perPage = 15, $columns = ['*'])
    {
        // TODO: Implement paginate() method.
    }

    public function create(array $data)
    {
        return FormList::create($data);
    }

    public function save(array $data)
    {
        // TODO: Implement save() method.
    }

    public function delete($id)
    {
        return FormList::where('id',$id)->delete();
    }

    public function deleteWhere($data)
    {
        return FormList::where($data)->delete();
    }

    public function update(array $data, $id)
    {
        return FormList::where('id',$id)->update($data);
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
        return FormList::select($columns)->where('id',$id)->first();
    }

    public function findBy($field, $value, $columns = ['*'],$order = 'id')
    {
        return FormList::select($columns)->where($field,$value)->orderBy($order)->get();
    }

    public function findWhere($where, $columns = ['*'])
    {
        return FormList::select($columns)->where($where)->get();
    }

    public function findFirstBy($field, $value, $columns = ['*'])
    {
        // TODO: Implement findFirstBy() method.
    }

    public function findFirstWhere($where, $columns = ['*'])
    {
        // TODO: Implement findFirstWhere() method.
    }

    public function insert(array $data)
    {
        return FormList::insert($data);
    }
}