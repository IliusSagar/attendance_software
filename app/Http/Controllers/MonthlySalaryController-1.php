<?php

namespace App\Http\Controllers;

use App\Models\EmployeeAttendance;
use Illuminate\Http\Request;

class MonthlySalaryController extends Controller
{
    public function MonthlySalaryView(){
        return view('backend.employee.monthly_salary.monthly_salary_view');
    } // End Method

    public function MonthlySalaryGet(Request $request){
        $date = date('Y-m',strtotime($request->date));
    	 if ($date !='') {
    	 	$where[] = ['date','like',$date.'%'];
    	 }
    	
    	 $data = EmployeeAttendance::select('employee_id')->groupBy('employee_id')->with(['admin'])->where($where)->get();
    	 // dd($allStudent);
    	 $html['thsource']  = '<th>SL</th>';
    	 $html['thsource'] .= '<th>Employee Name</th>';
    	 $html['thsource'] .= '<th>Basic Salary</th>';
    	 $html['thsource'] .= '<th>Salary This Month</th>';
    	 $html['thsource'] .= '<th>Action</th>';


    	 foreach ($data as $key => $attend) {
    	 	$totalattend = EmployeeAttendance::with(['admin'])->where($where)->where('employee_id',$attend->employee_id)->get();
			$absentcount = count($totalattend->where('attend_status','Absent'));

    	 	$color = 'success';
    	 	$html[$key]['tdsource']  = '<td>'.($key+1).'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$attend['admin']['name'].'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$attend['admin']['salary'].'</td>';
    	 	
    	 	
    	 	$salary = (float)$attend['admin']['salary'];
    	 	$salaryperday = (float)$salary/30;
    	 	$totalsalaryminus = (float)$absentcount*(float)$salaryperday;
    	 	$totalsalary = (float)$salary-(float)$totalsalaryminus;

    	 	$html[$key]['tdsource'] .='<td>'.$totalsalary.'$'.'</td>';
    	 	$html[$key]['tdsource'] .='<td>';
    	 	$html[$key]['tdsource'] .='<a class="btn btn-sm btn-'.$color.'" title="PaySlip" target="_blanks" href="'.route("#",$attend->employee_id).'">Fee Slip</a>';
    	 	$html[$key]['tdsource'] .= '</td>';

    	 }  
    	return response()->json(@$html);
    } // End Method
}
