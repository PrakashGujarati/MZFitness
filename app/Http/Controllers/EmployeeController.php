<?php

namespace App\Http\Controllers;

use App\Employee;
use App\Workplace;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use DataTables;
use \DateTime;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $workplaces = Workplace::all();
        return view('employee.view',compact('workplaces'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
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
            'designation'=>'required',
            'birth_date'=>'',
            'contact'=>'required | max:10 | min:10',
            'email'=>'',
            'address'=>'required',
            'branch'=>'',
            'blood_group'=>'',
        ]);
        employee::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(employee $employee)
    {
        return view('employee.display',compact('employee'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(employee $employee)
    {
        $workplaces = Workplace::all();
        return view('employee.view',compact('employee','workplaces'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, employee $employee)
    {
        $request->validate([
            'name'=>'required',
            'designation'=>'required',
            'birth_date'=>'',
            'contact'=>'required | max:10 | min:10',
            'email'=>'',
            'address'=>'required',
            'branch'=>'',
            'blood_group'=>'',
        ]);
        $employee->update($request->all());
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(employee $employee)
    {

        $employee->delete();
        return response('Success');
    }

    public function getDataTable()
    {
        $employees = employee::all();
        return DataTables::of($employees)
            ->addColumn('name',function ($employee){
                return '<a href="employee/'.$employee->id.'">'.$employee->name.'</a>';
            })
            ->addColumn('text',function ($employee){
                return '<p class="form-control sampletext" style="background-color:'.$employee->bgcolor.';color:'.$employee->txtcolor.'">'.explode(' ',$employee->name)[0].'</p>';
            })
            ->addColumn('edit',function ($employee){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-name="'.$employee->name.'"
                data-designation="'.$employee->designation.'",
                data-contact="'.$employee->contact.'",
                data-email="'.$employee->email.'",
                data-address="'.$employee->address.'",
                data-branch="'.$employee->branch.'",
                data-blood_group="'.$employee->blood_group.'",
                data-birth_date="'.$employee->birth_date.'",
                data-bgcolor="'.$employee->bgcolor.'",
                data-txtcolor="'.$employee->txtcolor.'",
                data-id="'.$employee->id.'"></button>';
            })
            ->addColumn('delete',function ($employee){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$employee->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['name','text','edit','delete'])
            ->make(true);
    }
}
