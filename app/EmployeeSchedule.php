<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeSchedule extends Model
{
	protected $fillable = ['workplace','session','work_start','work_end','duration','remark'];
}
