<?php

namespace App\Http\Controllers;

use App\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use DataTables;
use \DateTime;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('member.view');
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
        return Carbon::parse($request->birth_date)->format('Y-m-d');
        //return $request->all();
        if(is_array($request->updatesons))
        {$updateson = implode(",",$request->updatesons);}
        else
        {$updateson = "";}

        if(is_array($request->services))
        {$service = implode(",",$request->services);}
        else
        {$service = "";}

        if(is_array($request->servicescomments))
        {$servicescomment = implode("|",$request->servicescomments);}
        else
        {$servicescomment = "";}

        if(isset($request->birth_date))
        {$age = date_diff(date_create(Carbon::parse($request->birth_date)->format('Y-m-d')), date_create('today'))->y;}

        $request->merge(["age"=>$age,"updateson"=>$updateson,"service"=>$service,"servicecomment"=>$servicescomment]);
        Member::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function show(Member $member)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function edit(Member $member)
    {
        return view('member.view',compact('member'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Member $member)
    {
        //return $request->all();
        if(is_array($request->updatesons))
        {$updateson = implode(",",$request->updatesons);}
        else
        {$updateson = "";}

        if(is_array($request->services))
        {$service = implode(",",$request->services);}
        else
        {$service = "";}

        if(is_array($request->servicescomments))
        {$servicescomment = implode("|",$request->servicescomments);}
        else
        {$servicescomment = "";}

        if(isset($request->birth_date))
        {$age = date_diff(date_create(Carbon::parse($request->birth_date)->format('Y-m-d')), date_create('today'))->y;}

        $request->merge(["age"=>$age,"updateson"=>$updateson,"service"=>$service,"servicecomment"=>$servicescomment]);
        $member->update($request->all());
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function destroy(Member $member)
    {
        $member->delete();
        return response('Success');
    }

    public function getDataTable()
    {
        $members = Member::all();
        return DataTables::of($members)
            ->addColumn('edit',function ($member){
                return '<button type="button" class="edit btn btn-sm btn-primary fa fa-pencil" 
                data-name="'.$member->name.'"
                data-age="'.$member->age.'",
                data-contact="'.$member->contact.'",
                data-email="'.$member->email.'",
                data-address="'.$member->address.'",
                data-height="'.$member->height.'",
                data-weight="'.$member->weight.'",
                data-birth_date="'.$member->birth_date.'",
                data-reference="'.$member->reference.'",
                data-married="'.$member->married.'",
                data-status="'.$member->status.'",
                data-goal="'.$member->goal.'",
                data-medical="'.$member->medical.'",
                data-comments="'.$member->comments.'",
                data-updateson="'.$member->updateson.'",
                data-joining_date="'.$member->joining_date.'",
                data-followupby="'.$member->followupby.'",
                data-nextfollowup="'.$member->nextfollowup.'",
                data-remarks="'.$member->remarks.'",
                data-service="'.$member->service.'",
                data-servicecomment="'.$member->servicecomment.'",
                data-id="'.$member->id.'"></button>';
            })
            ->addColumn('delete',function ($member){
                return '<button type="button" class="delete btn btn-sm btn-danger  fa fa-trash" data-delete-id="'.$member->id.'" data-token="'.csrf_token().'" ></button>';
            })
            ->rawColumns(['edit','delete'])
            ->make(true);
    }
}
