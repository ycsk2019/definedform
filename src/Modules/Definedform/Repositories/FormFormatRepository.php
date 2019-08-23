<?php


namespace App\Modules\Definedform\Repositories;

use Lskstc\Definedform\Modules\Definedform\Models\FormFormat;


class FormFormatRepository implements FormFormatRepositoryInterface
{
    /**
     * @var FormFormat 注入的 FormFormat Model
     */
    protected $formFormat;

    public function __construct(FormFormat $formFormat)
    {
        $this->formFormat = $formFormat;
    }

    public function all($columns = ['*'])
    {
        return FormFormat::get();
    }

    public function paginate($perPage = 15, $columns = ['*'])
    {
        // TODO: Implement paginate() method.
    }

    public function create(array $data)
    {
        return FormFormat::create($data);
    }

    public function save(array $data)
    {
        // TODO: Implement save() method.
    }

    public function delete($id)
    {
        return FormFormat::where('id',$id)->delete();
    }

    public function update(array $data, $id)
    {
        return FormFormat::where('id',$id)->update($data);
    }

    public function updateBy(array $data, $field, $value, $columns = ['*'])
    {
        return FormFormat::select($columns)->where($field,$value)->update($data);
    }

    public function updateWhere(array $data, $where, $columns = ['*'])
    {
        return FormFormat::select($columns)->where($where)->update($data);
    }

    public function find($id, $columns = ['*'])
    {
        return FormFormat::select($columns)->where('id',$id)->first();
    }

    public function findBy($field, $value, $columns = ['*'])
    {
        return FormFormat::select($columns)->where($field,$value)->get();
    }

    public function findWhere($where, $columns = ['*'],$orderBy = '',$groupBy = '')
    {
        if ($orderBy){
            if ($groupBy){
                $formFormat = FormFormat::select($columns)->where($where)->orderBy($orderBy)->groupBy($groupBy)->get();
            }
            else{
                $formFormat = FormFormat::select($columns)->where($where)->orderBy($orderBy)->get();
            }
        }
        else{
            if ($groupBy){
                $formFormat = FormFormat::select($columns)->where($where)->groupBy($groupBy)->get();
            }
            else{
                $formFormat = FormFormat::select($columns)->where($where)->get();
            }
        }
        return $formFormat;
    }

    public function findFirstBy($field, $value, $columns = ['*'])
    {
        return FormFormat::select($columns)->where($field,$value)->first();
    }

    public function findFirstWhere($where, $columns = ['*'])
    {
        return FormFormat::select($columns)->where($where)->first();
    }
}