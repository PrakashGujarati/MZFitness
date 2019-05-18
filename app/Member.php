<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Carbon;

class Member extends Model
{
    use SoftDeletes;
    
    protected $fillable = [
        'name',
        'age',
        'contact',
        'email',
        'address',
        'height',
        'weight',
        'birth_date',
        'reference',
        'married',
        'status',
        'goal',
        'medical',
        'comments',
        'updateson',
        'joining_date',
        'followupby',
        'nextfollowup',
        'remarks',
        'service',
        'servicecomment',
    ];

    public function setBirthDateAttribute($value)
    {
        $this->attributes['birth_date'] = Carbon::parse($value)->format('Y-m-d');
    }
    public function getBirthDateAttribute($value)
    {
        return Carbon::parse($value)->format('m/d/Y');
    }

    public function setJoiningDateAttribute($value)
    {
       $this->attributes['joining_date'] = Carbon::parse($value)->format('Y-m-d');
    }

    public function getJoiningDateAttribute($value)
    {
        return Carbon::parse($value)->format('m/d/Y');
    }  

}
