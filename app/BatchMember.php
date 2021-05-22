<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class BatchMember extends Model
{
	protected $fillable = [
		'member_id',
    	'batch_id',
        'joiningdate',
        'validupto',
        'duration',
        'package',
        'fees',
        'paymentdetails',
    ];

    public function member()
    {
        return $this->belongsTo(Member::class);
    }

    public function setJoiningDateAttribute($value)
    {
        if(strlen($value)) {
            $this->attributes['joiningdate'] = Carbon::parse($value)->format('Y-m-d');
        }
    }
    public function getJoiningDateAttribute($value)
    {
        if(strlen($value))
        {
            return Carbon::parse($value)->format('d-m-Y');
        }
    }
    public function setvaliduptoAttribute($value)
    {
        if(strlen($value)) {
            $this->attributes['validupto'] = Carbon::parse($value)->format('Y-m-d');
        }
    }
    public function getvaliduptoAttribute($value)
    {
        if(strlen($value))
        {
            return Carbon::parse($value)->format('d-m-Y');
        }
    }
}
