<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmployeeAttendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'employee_id',
        'date',
        'attend_status',
      
    ];

    public function admin(){
        return $this->belongsTo(Admin::class,'employee_id','id');
    }
}
