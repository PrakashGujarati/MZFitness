<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeWorkout extends Model
{
    protected $fillable = ['employee_schedule_id','workout','workout_description','workout_duration'];
    public $timestamps = false;

    public function employee_schedule()
    {
        return $this->belongsTo(EmployeeSchedule::class);
    }
}
