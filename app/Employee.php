<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Carbon;


class Employee extends Model
{
	use SoftDeletes;
    protected $table = 'employees';
    protected $fillable = [
        'name',
        'designation',
        'contact',
        'email',
        'address',
        'branch',
        'blood_group',
        'birth_date',
    ];

    public function setBirthDateAttribute($value)
    {
        if(strlen($value)) {
            $this->attributes['birth_date'] = Carbon::parse($value)->format('Y-m-d');
        }
    }
    public function getBirthDateAttribute($value)
    {
        if(strlen($value))
        {
            return Carbon::parse($value)->format('d-m-Y');
        }
    }
}
