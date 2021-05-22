<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Workout;
use DataTables;

class WorkoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('workout.view');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'workout_name'=>'required',
        ]);
        workout::create($request->all());
        return redirect()->back();
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function show(Workout $workout)
    {
        return view('workout.display',compact('workout'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function edit(Workout $workout)
    {
        return view('workout.view',compact('workout'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Workout $workout)
    {
        $request->validate([
            'workout_name'=>'required',
        ]);
        $workout->update($request->all());
        return redirect()->back();
    }

    public function destroy(Workout $workout)
    {
        $workout->delete();
        return response('Success');
    }
    public function getDataTable()
    {
        $workouts = workout::all();
        return DataTables::of($workouts)
            ->addColumn('workout_name',function ($workout){
                return '<a href="workout/'.$workout->id.'">'.$workout->workout_name.'</a>';
            })
            ->addColumn('edit',function ($workout){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-workout-name="'.$workout->workout_name.'"
                data-id="'.$workout->id.'"></button>';
            })
            ->addColumn('delete',function ($workout){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$workout->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['workout_name','edit','delete'])
            ->make(true);
    }


}
