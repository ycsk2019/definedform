<?php

namespace Lskstc\Definedform\Modules\Definedform\Models;

use Illuminate\Database\Eloquent\Model;

class FormListHead extends Model
{
    protected $fillable = ['menu_id','name','name_cn','order'];
}
