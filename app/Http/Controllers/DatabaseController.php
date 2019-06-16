<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\Schema;

class DatabaseController extends Controller
{
    public function up()
    {
    	Schema::create('employee_schedules', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('workplace',50);
            $table->string('session',30);
            $table->date('work_start');
            $table->date('work_end');
            $table->string('duration',30);
            $table->string('remark');
            $table->timestamps();
        });
    	return 'up';
    }

    public function down()
    {
    	return 'down';	
    }
}
