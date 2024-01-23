<?php

namespace App\Http\Controllers;

use App\Models\AccountEmployeeSalary;
use App\Models\EmployeeAttendance;
use Illuminate\Http\Request;

class AccountSalaryController extends Controller
{
    public function AccountSalaryView(){

        $data['allData'] = AccountEmployeeSalary::all();
        return view('backend.account.employee_salary.employee_salary_view',$data);

    } // End Method

    public function AccountSalaryAdd(){

        return view('backend.account.employee_salary.employee_salary_add');

    } // End Method

    public function AccountSalaryGetEmployee(Request $request){

        $date = date('Y-m',strtotime($request->date));
    	 if ($date !='') {
    	 	$where[] = ['date','like',$date.'%'];
    	 }

    	 $data = EmployeeAttendance::select('employee_id')->groupBy('employee_id')->with(['admin'])->where($where)->get();
    	 // dd($allStudent);
    	 $html['thsource']  = '<th>SL</th>';
    	 $html['thsource'] .= '<th>ID NO</th>';
    	 $html['thsource'] .= '<th>Employee Name</th>';
    	 $html['thsource'] .= '<th>Basic Salary</th>';
    	 $html['thsource'] .= '<th>Salary This Month</th>';
    	 $html['thsource'] .= '<th>Select</th>';


    	 foreach ($data as $key => $attend) {

            $account_salary = AccountEmployeeSalary::where('employee_id',$attend->employee_id)->where('date',$date)->first();

            if($account_salary !=null) {
                $checked = 'checked';
            }else{
                $checked = '';
            }

    	 	$totalattend = EmployeeAttendance::with(['admin'])->where($where)->where('employee_id',$attend->employee_id)->get();
			$absentcount = count($totalattend->where('attend_status','Absent'));


    $html[$key]['tdsource']  = '<td>'.($key+1).'</td>';
    $html[$key]['tdsource'] .= '<td>'.$attend['admin']['id_no'].'<input type="hidden" name="date" value="'.$date.'">'.'</td>';

    $html[$key]['tdsource'] .= '<td>'.$attend['admin']['name'].'</td>';
    $html[$key]['tdsource'] .= '<td>'.$attend['admin']['salary'].'</td>';


    $salary = (float)$attend['admin']['salary'];
    $salaryperday = (float)$salary/30;
    $totalsalaryminus = (float)$absentcount*(float)$salaryperday;
    $totalsalary = (float)$salary-(float)$totalsalaryminus;

    $html[$key]['tdsource'] .='<td>'.$totalsalary.'<input type="hidden" name="amount[]" value="'.$totalsalary.'">'.'</td>';


    $html[$key]['tdsource'] .='<td>'.'<input type="hidden" name="employee_id[]" value="'.$attend->employee_id.'">'.'<input type="checkbox" name="checkmanage[]" id="'.$key.'" value="'.$key.'" '.$checked.' style="transform: scale(1.5);margin-left: 10px;"> <label for="'.$key.'"> </label> '.'</td>';

    	 } // end foreach
    	return response()->json(@$html);

    } // End Method

    public function AccountSalaryStore(Request $request){

        $date = date('Y-m',strtotime($request->date));

        AccountEmployeeSalary::where('date',$date)->delete();

$checkdata = $request->checkmanage;

if ($checkdata != null) {

    for ($i=0; $i < count($checkdata); $i++) {

        $data = new AccountEmployeeSalary();
        $data->date = $date;
        $data->employee_id = $request->employee_id[$checkdata[$i]];
        $data->amount = $request->amount[$checkdata[$i]];
        $data->save();

    } // end for loop

} // end 1st if condition

if (!empty(@$data) || empty($checkdata )) {

   
return redirect()->route('account.salary.view')->with('success', 'Well Done Data Successfully Updated');

}else{

    return redirect()->back()->with('error', 'Sorry Data Not Save');


} // end 2nd if condition

    } // End Method
}
