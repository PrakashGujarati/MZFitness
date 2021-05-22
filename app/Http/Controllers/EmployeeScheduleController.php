<?php

namespace App\Http\Controllers;

use App\Batch;
use App\Employee;
use App\Workout;
use App\EmployeeSchedule;
use Illuminate\Http\Request;
use DataTables;
use Carbon\Carbon;

class EmployeeScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = Employee::all();
        $batches = Batch::all();
        $workouts = Workout::all();
        return view('employeeSchedule.view',compact('employees','batches','workouts'));
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
            'employee_id'=>'required',
            'batch_id'=>'required',
            'day'=>'required',
            'date'=>'required',
            'checkin'=>'required',
            'checkout'=>'required',
            'note'=>'required',
        ]);
        //return $request->all();
        EmployeeSchedule::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\EmployeeSchedule  $employeeSchedule
     * @return \Illuminate\Http\Response
     */
    public function show(EmployeeSchedule $employeeSchedule)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\EmployeeSchedule  $employeeSchedule
     * @return \Illuminate\Http\Response
     */
    public function edit(EmployeeSchedule $employeeSchedule)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\EmployeeSchedule  $employeeSchedule
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        /*$request->validate([
            'employee_id'=>'required',
            'batch_id'=>'required',
            'day'=>'required',
            'date'=>'required',
            'checkin'=>'required',
            'checkout'=>'required',
            'note'=>'required',
        ]);*/
        //return $request->all();
        EmployeeSchedule::find($id)->update($request->all())."";
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\EmployeeSchedule  $employeeSchedule
     * @return \Illuminate\Http\Response
     */
    public function destroy(EmployeeSchedule $employeeSchedule)
    {
        //
    }

    public function timetable($startdate = '')
    {
        if($startdate=='')
        {
            $weekStartDate = Carbon::now()->startOfWeek()->toDateString();
            $weekEndDate = Carbon::now()->endOfWeek()->toDateString();
        }
        else
        {
            $weekStartDate = Carbon::parse($startdate)->startOfWeek()->toDateString();
            $weekEndDate = Carbon::parse($startdate)->endOfWeek()->toDateString();
        }




        $employees = Employee::all();
        $batches = Batch::all();
        $workouts = Workout::all();
        $empSchedules = EmployeeSchedule::all();
        $batchDays = EmployeeSchedule::whereBetween('date', [$weekStartDate, $weekEndDate])
            ->orderBy('checkin')
            ->orderBy('date')
            ->get();
        /*->groupBy(function ($val) {
            return Carbon::parse($val->start_time)->format('d');
        });*/
        //whereBetween('date', [now(), now()->addDays(7)])


        $bs = EmployeeSchedule::select('checkin')->distinct()->get();
        $batches = [];
        foreach ($bs as $b)
        {
            $batches[] = $b->checkin;
        }

        $weekdays = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
        //return $batches = ["07:00 AM","08:00 AM"];

        $data = $batchDays->map(function ($value, $key) use ($weekdays,$batches){
            for($i=0;$i<count($batches);$i++) {
                for ($j = 0; $j < count($weekdays); $j++) {
                    if ($value->checkin == $batches[$i] && $value->day == $weekdays[$j]) {
                        $value['y'] = $i;
                        $value['x'] = $j;
                    }
                }
            }
            return $value;
        });



        return view('employeeSchedule.tt',compact('data','weekdays','batches','weekStartDate'));
    }

    public function getDataTable()
    {
        $employeeSchedules = EmployeeSchedule::with('employee')->get();
        return DataTables::of($employeeSchedules)
            ->addColumn('workout',function ($employeeSchedule){
                return '<button type="button" class="workout btn btn-sm btn-info fa fa-sign-language" 
                data-id="'.$employeeSchedule->id.'"
                data-empname="'.$employeeSchedule->employee->name.'" 
                data-batch="'.$employeeSchedule->checkin."-".$employeeSchedule->checkout.'" 
                data-date="'.$employeeSchedule->date.'" 
                data-day="'.$employeeSchedule->day.'" 
                data-token="'.csrf_token().'" ></button>';
            })
            ->addColumn('edit',function ($employeeSchedule){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-id="'.$employeeSchedule->id.'"
                data-employee_id="'.$employeeSchedule->employee_id.'"
                data-batch_id="'.$employeeSchedule->batch_id.'",
                data-day="'.$employeeSchedule->day.'",
                data-date="'.$employeeSchedule->date.'",
                data-checkin="'.$employeeSchedule->checkin.'",
                data-checkout="'.$employeeSchedule->checkout.'",
                data-note="'.$employeeSchedule->note.'"></button>';
            })
            ->addColumn('delete',function ($employee){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$employee->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['workout','edit','delete'])
            ->make(true);
    }
}
