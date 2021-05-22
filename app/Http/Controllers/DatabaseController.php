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
    	Schema::table('employees', function (Blueprint $table) {
            $table->string('bgcolor',20)->nullable();
            $table->string('txtcolor',20)->nullable();
        });
    	return 'up';
    }

    public function down()
    {
    	return 'down';	
    }
}
