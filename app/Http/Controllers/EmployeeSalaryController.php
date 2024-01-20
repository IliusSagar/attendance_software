<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\EmployeeSallaryLog;
use Illuminate\Http\Request;

class EmployeeSalaryController extends Controller
{
    public function SalaryView(){
        $data['allData'] = Admin::where('usertype','Employee')->get();
        return view('backend.employee.employee_salary.employee_salary_view',$data);
    } // End Method

    public function SalaryIncrement($id){
        $data['editData'] = Admin::find($id);
        return view('backend.employee.employee_salary.employee_salary_increment',$data);
    } // End Method

    public function SalaryStore(Request $request, $id){
        $admin = Admin::find($id);
        $previous_salary = $admin->salary;
        $present_salary = (float)$previous_salary+(float)$request->increment_salary;
        $admin->salary = $present_salary;
        $admin->save();

        $salaryData = new EmployeeSallaryLog();
        $salaryData->employee_id = $id;
        $salaryData->previous_salary = $previous_salary;
        $salaryData->increment_salary = $request->increment_salary;
        $salaryData->present_salary = $present_salary;
        $salaryData->effected_salary = date('Y-m-d',strtotime($request->effected_salary));
        $salaryData->save();

        return redirect()->route('employee.salary.view')->with('success', 'Employee Salary Increment Successfully');

    } // End Method

    public function SalaryDetails($id){
        $data['details'] = Admin::find($id);
        $data['salary_log'] = EmployeeSallaryLog::where('employee_id',$data['details']->id)->get();
        //dd($data['salary_log']->toArray());
        return view('backend.employee.employee_salary.employee_salary_details',$data);
    } // End Method

}
