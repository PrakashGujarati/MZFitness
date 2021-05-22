<?php

namespace App\Http\Controllers;

use App\Batch;
use App\BatchMember;
use App\Member;
use App\Package;
use DataTables;
use Carbon\Carbon;
use Illuminate\Http\Request;

class BatchMemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $members = Member::all();
        $batches = Batch::all();
        $packages = Package::all();
        return view('batch_member.view',compact('members','batches','packages'));
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
            'member_id' =>'required',
            'batch_id'  =>'required',
            'joiningdate'   =>'required',
            'validupto' =>'required',
            'duration'  =>'required',
            'package'   =>'required',
            'fees'  =>'required',
            'paymentdetails'    =>'required',
        ]);
        $i=0;
        foreach($request->member_id as $memberid)
        {
            $request->merge(['member_id'=>$memberid]);
            BatchMember::create($request->all());
        }
        //BatchMember::create($request->all());
        return redirect()->back();
    }
    /**
     * Display the specified resource.
     *
     * @param  BatchMember  $batch_member
     * @return \Illuminate\Http\Response
     */
    public function show(BatchMember $batch_member)
    {
        return view('batch_member.display',compact('batch_member'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  BatchMember  $batch_member
     * @return \Illuminate\Http\Response
     */
    public function edit(BatchMember $batch_member)
    {
        return view('batch_member.view',compact('batch_member'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\BatchMember  $batch_member
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BatchMember $batch_member)
    {
        $request->validate([
            'membername' =>'required',
            'batch'  =>'required',
            'joiningdate'   =>'required',
            'validupto' =>'required',
            'duration'  =>'required',
            'package'   =>'required',
            'fees'  =>'required',
            'paymentdetails'    =>'required',
        ]);
        $batch_member->update($request->all());
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  BatchMember  $batch_member
     * @return \Illuminate\Http\Response
     */
    public function destroy(BatchMember $batch_member)
    {

        $batch_member->delete();
        return response('Success');
    }
    public function getDataTable()
    {
        $batch_members = BatchMember::with('member')->get();
        return DataTables::of($batch_members)
            ->addColumn('name',function ($batch_member){
                return '<a href="member/'.$batch_member->member->id.'">'.$batch_member->member->name.'</a>';
            })
            ->addColumn('edit',function ($batch_member){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-membername="'.$batch_member->membername.'"
                data-batch="'.$batch_member->batch.'",
                data-joiningdate="'.$batch_member->joiningdate.'",
                data-validupto="'.$batch_member->validupto.'",
                data-duration="'.$batch_member->duration.'",
                data-package="'.$batch_member->package.'",
                data-fees="'.$batch_member->fees.'",
                data-paymentdetails="'.$batch_member->paymentdetails.'",
                data-id="'.$batch_member->id.'"></button>';
            })
            ->addColumn('delete',function ($batch_member){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$batch_member->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['name','edit','delete'])
            ->make(true);
    }

    public function getPrice($package)
    {
        $result = Package::where('id',$package)->get();
        return $result[0]->price;
    }
}
