<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    // Specify the primary key column
    protected $primaryKey = 'lrn';
    
    // Disable auto-incrementing because 'lrn' might not be an auto-incrementing field
    public $incrementing = false;

    // If the primary key is not an integer, specify its type
    protected $keyType = 'string';

    protected $fillable = [
        'lrn',
        'stu_lname',
        'stu_fname',
        'stu_mname',
        'stu_suffix',
        'stu_address',
        'stu_birthdate',
        'stu_gender',
        'stu_form137',
        'stu_birthcerti',
        'grade_lvl',
        'stu_status',
    ];

    public function getFullNameAttribute()
    {
        $fullName = $this->stu_fname . ' ' . $this->stu_mname . ' ' . $this->stu_lname;
        if ($this->stu_suffix) {
            $fullName .= ' ' . $this->stu_suffix;
        }
        return $fullName;
    }

    public function deleteStudentList($lrn)
    {
        $student = $this->find($lrn);
        $student->delete();
    }
}
