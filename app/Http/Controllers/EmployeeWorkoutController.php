<?php

namespace App\Http\Controllers;

use App\EmployeeWorkout;
use App\EmployeeSchedule;
use Illuminate\Http\Request;

class EmployeeWorkoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\EmployeeWorkout  $employeeWorkout
     * @return \Illuminate\Http\Response
     */
    public function show(EmployeeWorkout $employeeWorkout)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\EmployeeWorkout  $employeeWorkout
     * @return \Illuminate\Http\Response
     */
    public function edit(EmployeeWorkout $employeeWorkout)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\EmployeeWorkout  $employeeWorkout
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //$request->all();
        //$employeeSchedule = EmployeeSchedule::findOrFail($id);
        $request->merge(['employee_schedule_id'=>$id]);
        $i=0;
        foreach($request->workout as $ew)
        {
            if($request->empworkid[$i]<=0)
            {   EmployeeWorkout::insert(['employee_schedule_id'=>$id,
                'workout'=>$request->workout[$i],
                'workout_description'=>$request->workout_description[$i],
                'workout_duration'=>$request->workout_duration[$i]]);
            }
            else{
                EmployeeWorkout::where('id',$request->empworkid[$i])->update(['employee_schedule_id'=>$id,
                    'workout'=>$request->workout[$i],
                    'workout_description'=>$request->workout_description[$i],
                    'workout_duration'=>$request->workout_duration[$i]]);
            }
            $i++;
        }
        
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\EmployeeWorkout  $employeeWorkout
     * @return \Illuminate\Http\Response
     */
    public function destroy(EmployeeWorkout $employeeWorkout)
    {
        //
    }

    public function getEmployeeWorkoutData($employee_schedule_id)
    {
        return EmployeeWorkout::where('employee_schedule_id',$employee_schedule_id)->get();
    }
}
