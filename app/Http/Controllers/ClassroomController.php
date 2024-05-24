<?php

namespace App\Http\Controllers;
use App\Models\Classroom;

use Illuminate\Http\Request;

class ClassroomController extends Controller
{
    function __construct()
    {
        $this->classrooms = new Classroom();
    }

    public function index()
    {
        $classrooms = Classroom::all();
        return response()->json(['classrooms' => $classrooms]);
    }
}
