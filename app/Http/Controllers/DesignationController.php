<?php

namespace App\Http\Controllers;

use App\Models\Designation;
use Illuminate\Http\Request;

class DesignationController extends Controller
{
    public function ViewDesignation(){

        $data['allData'] = Designation::latest()->get();
        return view('backend.setup.designation.view_designation',$data);
  

    } // End Mathod

    public function DesignationAdd(){

        return view('backend.setup.designation.add_designation');

    } // End Mathod

    public function DesignationStore(Request $request){

        $validatedData = $request->validate([
            'name' => 'required|unique:designations,name',
        ]);

        $data = new Designation();
        $data->name = $request->name;
        $data->save();

       

        return redirect()->route('designation.view')->with('success', 'Designation Inserted Successfully');

    } // End Mathod

    public function DesignationDelete($id){

        $user = Designation::find($id);
        $user->delete();

       

        return redirect()->route('designation.view')->with('success', 'Designation Deleted Successfully');

    } // End Mathod

    public function DesignationUpdate(Request $request,$id){

        $data = Designation::find($id);
        $validatedData = $request->validate([
            'name' => 'required|unique:designations,name,'.$data->id,
        ]);


        $data->name = $request->name;
        $data->save();

       
        return redirect()->route('designation.view')->with('success', 'Designation UpdatedSuccessfully');

    } // End Mathod

    public function DesignationEdit($id){

        $editData = Designation::find($id);
        return view('backend.setup.designation.edit_designation',compact('editData'));

    } // End Mathod
}
