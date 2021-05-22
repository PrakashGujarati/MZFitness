<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Workplace;



class Batch extends Model
{
	protected $fillable = [
    		'workplace_id', 
    		'starttime', 
    		'endtime', 
    		'duration', 
    		'startdate', 
    		'enddate', 
    		'description'
    	]; 
    public $timestamps = false;

    public function workplace()
    {
        return $this->belongsTo(Workplace::class);
    }

    public function setStartDateAttribute($value)
    {
        if(strlen($value)) {
            $this->attributes['startdate'] = Carbon::parse($value)->format('Y-m-d');
        }
    }
    public function getStartDateAttribute($value)
    {
        if(strlen($value))
        {
            return Carbon::parse($value)->format('d-m-Y');
        }
    }
    public function setEndDateAttribute($value)
    {
        if(strlen($value)) {
            $this->attributes['enddate'] = Carbon::parse($value)->format('Y-m-d');
        }
    }
    public function getEndDateAttribute($value)
    {
        if(strlen($value))
        {
            return Carbon::parse($value)->format('d-m-Y');
        }
    }

}
