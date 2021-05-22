<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Carbon\Carbon;

class EmployeeSchedule extends Model
{
    use SoftDeletes;

	protected $fillable = ['employee_id','batch_id','day','date','checkin','checkout','note'];

    public function setDateAttribute($value)
    {
        if(strlen($value)) {
            $this->attributes['date'] = Carbon::parse($value)->format('Y-m-d');
        }
    }
    public function getDateAttribute($value)
    {
        if(strlen($value))
        {
            return Carbon::parse($value)->format('d-m-Y');
        }
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }

    public function employee_workouts()
    {
        return $this->hasMany(EmployeeWorkout::class);
    }
}
