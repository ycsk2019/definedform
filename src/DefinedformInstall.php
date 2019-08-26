<?php
namespace Lskstc\Definedform;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class DefinedformInstall extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'lskstc:definedform-install';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '自定义表单数据库';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $sql       = dirname(__DIR__) . '/sql/definedform.sql';
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormFormat();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormMenu();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormListHead();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormList();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormField();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormLog();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        $model     = new \Lskstc\Definedform\Modules\Definedform\Models\FormMenuProcess();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        DB::unprepared(file_get_contents($sql));
    }
}