<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    use HasFactory;

    protected $fillable = [
        'usertype',
        'name',
        'email',
        'password',
        'mobile',
        'address',
        'gender',
        'image',
        'fname',
        'mname',
        'religion',
        'id_no',
        'dob',
        'code',
        'salary',
        'join_date',
        'designation_id',
    ];
}
