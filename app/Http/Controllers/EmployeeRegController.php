<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Designation;
use App\Models\EmployeeSallaryLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class EmployeeRegController extends Controller
{
    public function EmployeeView(){
        $data['allData'] = Admin::where('usertype','Employee')->get();
        return view('backend.employee.employee_reg.employee_view',$data);
       
    } //End Method

    public function EmployeeAdd(){
        $data['designation'] = Designation::latest()->get();
        return view('backend.employee.employee_reg.employee_add',$data);
       
    } //End Method

    public function EmployeeStore(Request $request){

        $checkYear = date('Ym',strtotime($request->join_date));
        $employee = Admin::where('usertype','Employee')->orderBy('id','DESC')->first();

        if($employee == null){
            $firstReg = 0;
            $employeeId = $firstReg+1;

            if($employeeId < 10){
                $id_no = '000'.$employeeId;

            }elseif($employeeId < 100){
                $id_no = '00'.$employeeId;

            }elseif($employeeId < 1000){
                $id_no = '0'.$employeeId;

            } // include end elseif

        }else{
            $employee = Admin::where('usertype','Employee')->orderBy('id','DESC')->first()->id;
            $employeeId = $employee+1;
            if($employeeId < 10){
                $id_no = '000'.$employeeId;

            }elseif($employeeId < 100){
                $id_no = '00'.$employeeId;

            }elseif($employeeId < 1000){
                $id_no = '0'.$employeeId;

            } // include end elseif

        } // end else

        
        // query start
        $final_id_no = $checkYear.$id_no;
        $admin = new Admin();
        $code = rand(0000,9999);
        $admin->id_no = $final_id_no;
        $admin->password = bcrypt($code);
        $admin->usertype = 'Employee';
        $admin->code = $code;
       
        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->fname = $request->fname;
        $admin->mname = $request->mname;
        $admin->mobile = $request->mobile;
        $admin->address = $request->address;
        $admin->gender = $request->gender;
        $admin->religion = $request->religion;
        $admin->salary = $request->salary;
        $admin->designation_id = $request->designation_id;
        $admin->dob = date('Y-m-d',strtotime($request->dob));
        $admin->join_date = date('Y-m-d',strtotime($request->join_date));

         // insert image
         if($request->file('image')){
            $file = $request->file('image');
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/employee_images'),$filename);
            $admin['image'] = $filename;
        } // img if condition

        $admin->save();

        $employee_salary = new EmployeeSallaryLog();
        $employee_salary->employee_id = $admin->id;
        $employee_salary->effected_salary = date('Y-m-d',strtotime($request->join_date));
        $employee_salary->previous_salary = $request->salary;
        $employee_salary->present_salary = $request->salary;
        $employee_salary->increment_salary = '0';
        $employee_salary->save();

        return redirect()->route('employee.registration.view')->with('success', 'Employee Registration Inserted Successfully');
       
    } //End Method

    public function EmployeeEdit($id) {

        $data['editData'] = Admin::find($id);
        $data['designation'] = Designation::all();
        return view('backend.employee.employee_reg.employee_edit',$data);
    } //End Method

    public function EmployeeUpdate(Request $request, $id) {

        $admin = Admin::find($id);

        $admin->name = $request->name;
        $admin->fname = $request->fname;
        $admin->mname = $request->mname;
        $admin->mobile = $request->mobile;
        $admin->address = $request->address;
        $admin->gender = $request->gender;
        $admin->religion = $request->religion;

        $admin->designation_id = $request->designation_id;
        $admin->dob = date('Y-m-d',strtotime($request->dob));

         // insert image
         if($request->file('image')){
            $file = $request->file('image');
            @unlink(public_path('upload/employee_images/'.$admin->image));
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/employee_images'),$filename);
            $admin['image'] = $filename;
        } // img if condition
        $admin->save();

        return redirect()->route('employee.registration.view')->with('success', 'Employee Registration Updated Successfully');

    } //End Method

}
