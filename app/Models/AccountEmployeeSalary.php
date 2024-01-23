<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AccountEmployeeSalary extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'date',
        'amount',
      
    ];

    public function admin(){
        return $this->belongsTo(Admin::class,'employee_id','id');
    }
}
