<?php

namespace App\Http\Controllers;

use App\Models\LeavePurpose;
use Illuminate\Http\Request;

class EmployeeLeavePurposeController extends Controller
{
    public function LeavePurposeView(){

        $data['allData'] = LeavePurpose::latest()->get();
        return view('backend.employee.employee_leave_purpose.employee_leave_purpose_view',$data);
  

    } // End Mathod

    public function LeavePurposeAdd(){

        return view('backend.employee.employee_leave_purpose.employee_leave_purpose_add');

    } // End Mathod

    public function LeavePurposeStore(Request $request){

        $validatedData = $request->validate([
            'name' => 'required|unique:leave_purposes,name',
        ]);

        $data = new LeavePurpose();
        $data->name = $request->name;
        $data->save();

       

        return redirect()->route('employee.leave.purpose.view')->with('success', 'Employee Leave Purpose Inserted Successfully');

    } // End Mathod

    public function LeavePurposeDelete($id){

        $leavepurpose = LeavePurpose::find($id);
        $leavepurpose->delete();

       

        return redirect()->route('employee.leave.purpose.view')->with('success', 'Employee Leave Purpose Deleted Successfully');

    } // End Mathod

    public function LeavePurposeEdit($id){

        $editData = LeavePurpose::find($id);
        return view('backend.employee.employee_leave_purpose.employee_leave_purpose_edit',compact('editData'));

    } // End Mathod

    public function LeavePurposeUpdate(Request $request,$id){

        $data = LeavePurpose::find($id);
        $validatedData = $request->validate([
            'name' => 'required|unique:leave_purposes,name,'.$data->id,
        ]);


        $data->name = $request->name;
        $data->save();

       
        return redirect()->route('employee.leave.purpose.view')->with('success', 'Employee Leave Purpose UpdatedSuccessfully');

    } // End Mathod

}
