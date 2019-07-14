<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeWorkoutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_workouts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('employee_schedule_id');
            $table->foreign('employee_schedule_id')->references('id')->on('employee_schedules');
            $table->string('workout');
            $table->date('workout_description');
            $table->string('workout_duration');
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_workouts');
    }
}
