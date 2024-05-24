<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faculty extends Model
{
    use HasFactory;

    protected $fillable = [
        'faculty_id',
        'fac_lname',
        'fac_fname',
        'fac_mname',
        'fac_suffix',
        'fac_address',
        'fac_birthdate',
        'fac_gender',
        'fac_contactNo',
        'fac_position',
        'fac_pds',
        'fac_status',
        
    ];

    
}
