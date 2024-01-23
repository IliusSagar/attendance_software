<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\EmployeeAttendance;
use Illuminate\Http\Request;

class EmployeeAttendanceController extends Controller
{
    public function AttendanceView(){
        //$data['allData'] = EmployeeAttendance::orderBy('id','DESC')->get();
        $data['allData'] = EmployeeAttendance::select('date')->groupBy('date')->orderBy('id','DESC')->get();
        return view('backend.employee.employee_attendance.employee_attendance_view',$data);
    } // End Method

    public function AttendanceAdd(){
        $data['employees'] = Admin::where('usertype','Employee')->get();
        return view('backend.employee.employee_attendance.employee_attendance_add',$data);
    } // End Method

    public function AttendanceStore(Request $request){
        EmployeeAttendance::where('date', date('Y-m-d', strtotime($request->date)))->delete();

        $countemployee = count($request->employee_id);
        for ($i=0; $i <$countemployee ; $i++) { 
            $attend_status = 'attend_status'.$i;
            $attend = new EmployeeAttendance();
            $attend->date = date('Y-m-d',strtotime($request->date));
            $attend->employee_id = $request->employee_id[$i];
            $attend->attend_status = $request->$attend_status;
            $attend->save();
        } // end For Loop

        return redirect()->route('employee.attendance.view')->with('success', 'Employee Attendance Data Update Successfully');
    } // End Method

    public function AttendanceDetails($date){
        $data['details'] = EmployeeAttendance::where('date',$date)->get();
        return view('backend.employee.employee_attendance.employee_attendance_details',$data);
    } // End Method

    public function AttendanceEdit($date){
        $data['editData'] = EmployeeAttendance::where('date',$date)->get();
        $data['employees'] = Admin::where('usertype','Employee')->get();
        return view('backend.employee.employee_attendance.employee_attendance_edit',$data);
    } // End Method

    public function AttendanceUpdate(Request $request,$date){
        EmployeeAttendance::where('date', date('Y-m-d', strtotime($date)))->delete();

        $countemployee = count($request->employee_id);
        for ($i=0; $i <$countemployee ; $i++) { 
            $attend_status = 'attend_status'.$i;
            $attend = new EmployeeAttendance();
            $attend->date = date('Y-m-d',strtotime($request->date));
            $attend->employee_id = $request->employee_id[$i];
            $attend->attend_status = $request->$attend_status;
            $attend->save();
        } // end For Loop

        return redirect()->route('employee.attendance.view')->with('success', 'Employee Attendance Data Update Successfully');
    } // End Method

}
