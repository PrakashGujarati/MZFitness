<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Workout extends Model
{

    protected $fillable = ['workout_name'];
    public $timestamps = false;
    
}
