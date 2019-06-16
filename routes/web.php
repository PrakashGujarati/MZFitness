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
Route::get('/register', 'HomeController@index')->name('home');

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

    Route::get('employeeSchedule/getDataTable','EmployeeScheduleController@getDataTable');
    Route::resource('employeeSchedule','EmployeeScheduleController');


    // Database Operations 
	Route::get('dbup','DatabaseController@up');
	Route::get('dbdown','DatabaseController@down');

});


