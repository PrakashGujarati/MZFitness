<?php

namespace App\Http\Controllers;

use App\Batch;
use App\Workplace;
use Illuminate\Support\Carbon;
use Illuminate\Http\Request;
use DataTables;
use \DateTime;

class BatchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $workplaces = Workplace::all();
        return view('batch.view',compact('workplaces'));
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
        $request->validate([
            'workplace_id'=>'required',
            'starttime'=>'required',
            'endtime'=>'required',
            'duration'=>'required',
            'startdate'=>'required',
            'enddate'=>'required',
            'description'=>'required',
        ]);
        //return $request->all();
        Batch::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function show(batch $batch)
    {
        return view('batch.display',compact('batch'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function edit(batch $batch)
    {
       // return view('batch.view',compact('batch'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, batch $batch)
    {
       /* $request->validate([
            'workplace_id'=>'required',
            'starttime'=>'required',
            'endtime'=>'required',
            'duration'=>'required',
            'startdate'=>'required',
            'enddate'=>'required',
            'description'=>'required',
        ]);
        $batch->update($request->all());*/
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function destroy(batch $batch)
    {

        $batch->delete();
        return response('Success');
    }
    public function getDataTable()
    {
        $batch = Batch::with('workplace')->get();
        return DataTables::of($batch)
            ->addColumn('workplace',function ($batch){
                return '<a href="batch/'.$batch->id.'">'.$batch->workplace->name.'</a>';
            })
            ->addColumn('edit',function ($batch){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-workplace_id="'.$batch->workplace_id.'"
                data-starttime="'.$batch->starttime.'",
                data-endtime="'.$batch->endtime.'",
                data-duration="'.$batch->duration.'",
                data-startdate="'.$batch->startdate.'",
                data-enddate="'.$batch->enddate.'",
                data-description="'.$batch->description.'",
                data-id="'.$batch->id.'"></button>';
            })
            ->addColumn('delete',function ($batch){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$batch->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['workplace','edit','delete'])
            ->make(true);
    }
}
