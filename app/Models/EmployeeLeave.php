<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmployeeLeave extends Model
{
    use HasFactory;

    protected $fillable = [
        'employee_id',
        'leave_purpose_id',
        'start_date',
        'end_date',
      
    ];

    public function user(){
        return $this->belongsTo(Admin::class,'employee_id','id');
    }

    public function purpose(){
        return $this->belongsTo(LeavePurpose::class,'leave_purpose_id','id');
    }
}
