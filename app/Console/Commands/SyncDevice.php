<?php

namespace App\Console\Commands;

use App\Models\Admin;
use App\Models\EmployeeSallaryLog;
use Illuminate\Console\Command;
use App\Library\Naz24h\ZKLib;
use App\Models\EmployeeAttendance;



class SyncDevice extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'SyncDevice:run';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        $ROLES = array(
            0 => "Employee",
            14 => "Admin",
        );        
        
        $ATTEN = array(
            0 => "Check In",
            1 => "Check Out",
            2 => "Break In",
            3 => "Break Out",
            4 => "Overtime In",
            5 => "Overtime Out",
        );

        $zk = new ZKLib(config('zkteco.ip'), config('zkteco.port'));

        if ($zk->connect()) {

            // sync users
            $users = $zk->getUser();
            $last_uid = 1;

            foreach ($users as $user) {
                $dbUser = Admin::where('uid', $user[1])->first();

                if (!$dbUser) {
                    $checkYear = date('Ym');
                    $employee = Admin::where('usertype', 'Employee')->orderBy('id', 'DESC')->first();

                    if ($employee == null) {
                        $firstReg = 0;
                        $employeeId = $firstReg + 1;

                        if ($employeeId < 10) {
                            $id_no = '000' . $employeeId;
                        } elseif ($employeeId < 100) {
                            $id_no = '00' . $employeeId;
                        } elseif ($employeeId < 1000) {
                            $id_no = '0' . $employeeId;
                        } // include end elseif

                    } else {
                        $employee = Admin::where('usertype', 'Employee')->orderBy('id', 'DESC')->first()->id;
                        $employeeId = $employee + 1;
                        if ($employeeId < 10) {
                            $id_no = '000' . $employeeId;
                        } elseif ($employeeId < 100) {
                            $id_no = '00' . $employeeId;
                        } elseif ($employeeId < 1000) {
                            $id_no = '0' . $employeeId;
                        } // include end elseif

                    } // end else


                    // query start
                    $final_id_no = $checkYear . $id_no;
                    $admin = new Admin();
                    $code = rand(0000, 9999);
                    $admin->uid = $user[1];
                    $admin->id_no = $final_id_no;
                    $admin->usertype = $ROLES[$user[4]];
                    $admin->password = bcrypt($user[5]);
                    $admin->code = $code;

                    $admin->name = $user[2];
                    $admin->email = $user[2].$user[1]."@example.com";
                    // $admin->fname = $request->fname;
                    // $admin->mname = $request->mname;
                    // $admin->mobile = $request->mobile;
                    // $admin->address = $request->address;
                    // $admin->gender = $request->gender;
                    // $admin->religion = $request->religion;
                    $admin->salary = 0;


                    $admin->save();

                    $employee_salary = new EmployeeSallaryLog();
                    $employee_salary->employee_id = $admin->id;
                    $employee_salary->previous_salary = 0;
                    $employee_salary->present_salary = 0;
                    $employee_salary->increment_salary = '0';
                    $employee_salary->save();
                }
                $last_uid = $user[0];
            }

            $dbUser = Admin::where('uid', null)->get();
            foreach($dbUser as $item){
                $last_id = Admin::orderBy('uid', 'desc')->first()?->uid??10;
                $zk->setUser($last_uid+1, $last_id+1, $item->name, $item->code, array_search($item->usertype, $ROLES));
                    $item->uid = $last_id+1;
                    $item->save();
            }


            //users sync complete

            // attendace sysnc start
            $logs = $zk->getAttendance();

            foreach ($logs as $log) {
                
                EmployeeAttendance::updateOrCreate([
                    'employee_id' => $log[1],
                    'attend_status' => $ATTEN[$log[2]],
                    'date' => date('Y-m-d', strtotime($log[3])),
                ], [
                    'updated_at' => $log[3],
                ]);

            }
            // attendace sysnc complete
        } else {
            echo("Device is not connected!");
        }

        return "Sync complete!";
    }
}
