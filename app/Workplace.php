<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Batch;

class Workplace extends Model
{
    use SoftDeletes;
	
	public $timestamps=false;
    
    protected $fillable = [
        'name',
        'address',
        'person',
        'contact',
    ];

    public function batchs()
    {
        return $this->hasMany(Batch::class);
    }
}
