<?php

namespace App\Http\Controllers;

use App\Package;
use DataTables;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('package.view');
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
            'purpose'=>'required',
            'duration'=>'required',
            'price'=>'required|numeric',
            'package_description'=>'required',
            'status'=>'required',
        ]);
        Package::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('package.display',compact('package'));        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //return view('package.view',compact('package'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        /*$request->validate([
            'name'=>'required',
            'purpose'=>'required',
            'duration'=>'required',
            'price'=>'required|numeric',
            'package_description'=>'required',
            'status'=>'required',
        ]);
        $package->update($request->all());
        return redirect()->back();*/
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $package->delete();
        return response('Success');
    }
    public function getDataTable()
    {
        $package = Package::all();
        return DataTables::of($package)
            ->addColumn('name',function ($package){
                return '<a href="package/'.$package->id.'">'.$package->name.'</a>';
            })
            ->addColumn('edit',function ($package){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-name="'.$package->name.'"
                data-purpose="'.$package->purpose.'",
                data-duration="'.$package->duration.'",
                data-price="'.$package->price.'",
                data-package_description="'.$package->package_description.'",
                data-status="'.$package->status.'",
                data-id="'.$package->id.'"></button>';
            })
            ->addColumn('delete',function ($package){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$package->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['name','edit','delete'])
            ->make(true);
    }
}
