<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\EmployeeLeave;
use App\Models\LeavePurpose;
use Illuminate\Http\Request;

class EmployeeLeaveController extends Controller
{
    public function LeaveView(){
        $data['allData'] = EmployeeLeave::orderBy('id','desc')->get();
        return view('backend.employee.employee_leave.employee_leave_view',$data);
    }  // End Method

    public function LeaveAdd(){
        $data['employees'] = Admin::where('usertype','employee')->get();
        // $data['leave_purpose'] = LeavePurpose::all();
        // return view('backend.employee.employee_leave.employee_leave_add',$data);

        return view('backend.employee.employee_leave.employee_leave_add',$data);

    }  // End Method
}
