<?php

namespace App\Http\Controllers;

use App\Workplace;
use DataTables;
use Illuminate\Http\Request;

class WorkplaceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('workplace.view');
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
            'name'=>'required',
            'address'=>'required',
            'person'=>'required',
            'contact'=>'required | max:10 | min:10',
        ]);
        workplace::create($request->all());
        return redirect()->back();
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Workplace  $workplace
     * @return \Illuminate\Http\Response
     */
    public function show(Workplace $workplace)
    {
        return view('workplace.display',compact('workplace'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Workplace  $workplace
     * @return \Illuminate\Http\Response
     */
    public function edit(Workplace $workplace)
    {
        return view('workplace.view',compact('workplace'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Workplace  $workplace
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Workplace $workplace)
    {
        $request->validate([
            'name'=>'required',
            'address'=>'required',
            'person'=>'required',
            'contact'=>'required | max:10 | min:10',
        ]);
        $workplace->update($request->all());
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Workplace  $workplace
     * @return \Illuminate\Http\Response
     */
    public function destroy(Workplace $workplace)
    {
        $workplace->delete();
        return response('Success');
    }
    public function getDataTable()
    {
        $workplaces = workplace::all();
        return DataTables::of($workplaces)
            ->addColumn('name',function ($workplace){
                return '<a href="workplace/'.$workplace->id.'">'.$workplace->name.'</a>';
            })
            ->addColumn('edit',function ($workplace){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-name="'.$workplace->name.'"
                data-address="'.$workplace->address.'",
                data-person="'.$workplace->person.'",
                data-contact="'.$workplace->contact.'",
                data-id="'.$workplace->id.'"></button>';
            })
            ->addColumn('delete',function ($workplace){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$workplace->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['name','edit','delete'])
            ->make(true);
    }
}
