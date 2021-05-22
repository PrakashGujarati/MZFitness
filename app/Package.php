<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $fillable = [
        'name',
        'purpose',
        'duration',
        'price',
        'package_description',
        'status',
    ];

    public $timestamps = false;
}
