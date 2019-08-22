<?php

namespace Lskstc\Definedform\Modules\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class FormList extends Model
{
    use SoftDeletes;

    protected $fillable = ['menu_id','form_name_cn','field_label','field_no','form_format_id','item_order','system_field_id','type','searchable'];

    protected $guarded = ['id'];

    protected $dates = ['deleted_at'];
}
