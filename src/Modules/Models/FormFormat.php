<?php

namespace Lskstc\Definedform\Modules\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class FormFormat extends Model
{
    use SoftDeletes;

    protected $fillable = ['form_name','form_name_cn','form_no','field_info','menu_id','is_new','version','desc','company_id','updated_at','created_at'];

    protected $guarded = ['id'];

    protected $dates = ['deleted_at'];
}
