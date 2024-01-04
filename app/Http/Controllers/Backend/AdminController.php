<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function adminLoginForm(){
        return view('admin.login');
    }

    public function adminDashboard(){
        return view('admin.dashboard');
    }

    public function adminLogin(Request $request){
        $request->validate([
            'email'=>'required',
            'password'=>'required',
        ]);

        if(Auth::guard('admin')->attempt(['email'=>$request->email,'password'=>$request->password])){
            return redirect('/admin/dashboard');
        }else{
            // Session::flash('error-msg','Invalid Email or Password');
            return redirect()->back();
        }
    }

    public function adminLogout(){
        Auth::guard('admin')->logout();
        return redirect('admin/login');
    }
}
