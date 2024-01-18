<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EmployeeRegController extends Controller
{
    public function EmployeeView(){
        // $data['allData'] = User::where('usertype','Employee')->get();
        // return view('backend.employee.employee_reg.employee_view',$data);
        return view('backend.employee.employee_reg.employee_view');
    } //End Method

    public function EmployeeAdd(){
        // $data['designation'] = Designation::all();
        // return view('backend.employee.employee_reg.employee_add',$data);
        return view('backend.employee.employee_reg.employee_add');
    } //End Method

}
