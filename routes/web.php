<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Backend\AdminController;
use App\Http\Controllers\DesignationController;
use App\Http\Controllers\EmployeeAttendanceController;
use App\Http\Controllers\EmployeeLeaveController;
use App\Http\Controllers\EmployeeLeavePurposeController;
use App\Http\Controllers\EmployeeRegController;
use App\Http\Controllers\EmployeeSalaryController;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return view('admin.login');
});

// backend routes
Route::get('/admin/login', [AdminController::class, 'adminLoginForm'])->name('admin.login.form');
Route::post('/admin-login', [AdminController::class, 'adminLogin'])->name('admin.login');


Route::group(['middleware'=>'admin'],function(){
    Route::get('/admin/dashboard', [AdminController::class, 'adminDashboard'])->name('admin.dashboard');
    Route::get('/admin/logout', [AdminController::class, 'adminLogout'])->name('admin.logout');

    // Designation All Routes
    Route::get('/designation/view', [DesignationController::class, 'ViewDesignation'])->name('designation.view');
    Route::get('/designation/add', [DesignationController::class, 'DesignationAdd'])->name('designation.add');
    Route::post('/designation/store', [DesignationController::class, 'DesignationStore'])->name('store.designation');
    Route::get('/designation/delete/{id}', [DesignationController::class, 'DesignationDelete'])->name('designation.delete');
    Route::get('/designation/edit/{id}', [DesignationController::class, 'DesignationEdit'])->name('designation.edit');
    Route::post('/designation/update/{id}', [DesignationController::class, 'DesignationUpdate'])->name('update.designation');

    // Employee Registration Routes
    Route::get('reg/employee/view', [EmployeeRegController::class, 'EmployeeView'])->name('employee.registration.view');
    Route::get('reg/employee/add', [EmployeeRegController::class, 'EmployeeAdd'])->name('employee.registration.add');
    Route::post('reg/employee/store', [EmployeeRegController::class, 'EmployeeStore'])->name('store.employee.registration');
    Route::get('reg/employee/edit/{id}', [EmployeeRegController::class, 'EmployeeEdit'])->name('employee.registration.edit');
    Route::post('reg/employee/update/{id}', [EmployeeRegController::class, 'EmployeeUpdate'])->name('update.employee.registration');
    Route::get('reg/employee/details/{id}', [EmployeeRegController::class, 'EmployeeDetails'])->name('employee.registration.details');

    // Employee Salary All Routes
    Route::get('salary/employee/view', [EmployeeSalaryController::class, 'SalaryView'])->name('employee.salary.view');
    Route::get('salary/employee/increment/{id}', [EmployeeSalaryController::class, 'SalaryIncrement'])->name('employee.salary.increment');
    Route::post('salary/employee/store/{id}', [EmployeeSalaryController::class, 'SalaryStore'])->name('update.increment.store');
    Route::get('salary/employee/details/{id}', [EmployeeSalaryController::class, 'SalaryDetails'])->name('employee.salary.details');

    // Employee Leave Purpose All Routes
    Route::get('leave/purpose/employee/view', [EmployeeLeavePurposeController::class, 'LeavePurposeView'])->name('employee.leave.purpose.view');
    Route::get('leave/purpose/employee/add', [EmployeeLeavePurposeController::class, 'LeavePurposeAdd'])->name('employee.leave.purpose.add');
    Route::post('leave/purpose/employee/store', [EmployeeLeavePurposeController::class, 'LeavePurposeStore'])->name('employee.leave.purpose.store');
    Route::get('leave/purpose/employee/delete/{id}', [EmployeeLeavePurposeController::class, 'LeavePurposeDelete'])->name('employee.leave.purpose.delete');
    Route::get('leave/purpose/employee/edit/{id}', [EmployeeLeavePurposeController::class, 'LeavePurposeEdit'])->name('employee.leave.purpose.edit');
    Route::post('leave/purpose/employee/update/{id}', [EmployeeLeavePurposeController::class, 'LeavePurposeUpdate'])->name('employee.leave.purpose.update');

    // Employee Leave All Routes
    Route::get('leave/employee/view', [EmployeeLeaveController::class, 'LeaveView'])->name('employee.leave.view');
    Route::get('leave/employee/add', [EmployeeLeaveController::class, 'LeaveAdd'])->name('employee.leave.add');
    Route::post('leave/employee/store', [EmployeeLeaveController::class, 'LeaveStore'])->name('store.employee.leave');
    Route::get('leave/employee/delete/{id}', [EmployeeLeaveController::class, 'LeaveDelete'])->name('employee.leave.delete');
    Route::get('leave/employee/edit/{id}', [EmployeeLeaveController::class, 'LeaveEdit'])->name('employee.leave.edit');
    Route::post('leave/employee/update/{id}', [EmployeeLeaveController::class, 'LeaveUpdate'])->name('update.employee.leave');

    // Employee Attendance All Routes
    Route::get('attendance/employee/view', [EmployeeAttendanceController::class, 'AttendanceView'])->name('employee.attendance.view');
    Route::get('attendance/employee/add', [EmployeeAttendanceController::class, 'AttendanceAdd'])->name('employee.attendance.add');
    Route::post('attendance/employee/store', [EmployeeAttendanceController::class, 'AttendanceStore'])->name('store.employee.attendance');
    Route::get('attendance/employee/details/{date}', [EmployeeAttendanceController::class, 'AttendanceDetails'])->name('employee.attendance.details');
    Route::get('attendance/employee/edit/{date}', [EmployeeAttendanceController::class, 'AttendanceEdit'])->name('employee.attendance.edit');
    Route::post('attendance/employee/update/{date}', [EmployeeAttendanceController::class, 'AttendanceUpdate'])->name('employee.attendance.update');

}); 

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
