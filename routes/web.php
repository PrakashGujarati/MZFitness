<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
//Route::get('/register', 'HomeController@index')->name('home');

Route::group( [ 'middleware' => 'auth' ], function()
{
    Route::get('/dashboard', function () {
        $members = App\Member::limit(4)->orderBy('id', 'DESC')->get();
        return view('dashboard',compact('members'));
    });

    Route::get('member/getDataTable','MemberController@getDataTable');
    Route::resource('member','MemberController');
    
    Route::get('employee/getDataTable','EmployeeController@getDataTable');
    Route::resource('employee','EmployeeController');

    Route::get('employeeSchedule/timetable/{startdate?}','EmployeeScheduleController@timeTable');
    Route::get('employeeSchedule/getDataTable','EmployeeScheduleController@getDataTable');
    Route::resource('employeeSchedule','EmployeeScheduleController');

    Route::get('EmployeeWorkout/getEmployeeWorkoutData/{employee_schedule_id}','EmployeeWorkoutController@getEmployeeWorkoutData');
    Route::get('EmployeeWorkout/getDataTable','EmployeeWorkoutController@getDataTable');
    Route::resource('employeeWorkout','EmployeeWorkoutController');

    Route::get('workplace/getDataTable','WorkplaceController@getDataTable');
    Route::resource('workplace','WorkplaceController');

    Route::get('batch/getDataTable','BatchController@getDataTable');
    Route::resource('batch','BatchController');

    Route::get('batch_member/getDataTable','BatchMemberController@getDataTable');
    Route::post('batch_member/package/{id}','BatchMemberController@getPrice');
    Route::resource('batch_member','BatchMemberController');

    Route::get('package/getDataTable','PackageController@getDataTable');
    Route::resource('package','PackageController');

    Route::get('feedback/getDataTable','FeedbackController@getDataTable');
    Route::resource('feedback','FeedbackController');

    Route::get('workout/getDataTable','WorkoutController@getDataTable');
    Route::resource('workout','WorkoutController');

    Route::get('employeeAttendance',function(){
        return view('employeeAttendance.clock');
    });

    // Database Operations 
	Route::get('dbup','DatabaseController@up');
	Route::get('dbdown','DatabaseController@down');

});
