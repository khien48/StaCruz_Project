<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classroom extends Model
{
    use HasFactory;

    protected $fillable = [
        'classroom_id',
        'buildingName',
        'roomNumber',
    ];

    public function getClassrooms(){
        return $this->all();
    }
}
