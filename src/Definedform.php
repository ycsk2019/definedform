<?php


namespace Lskstc\Definedform;

use Lskstc\Definedform\Models\FormFormat;


class Definedform
{
    public static function printRunning()
    {
        echo 'running';
    }

    public function all($columns = ['*'])
    {
        return FormFormat::get();
    }
}