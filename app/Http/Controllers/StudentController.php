<?php

namespace App\Http\Controllers;
use App\Models\Student;


use Illuminate\Http\Request;

class StudentController extends Controller
{
    function __construct()
    {
        $this->students = new Student;
    }

    function delete($lrn){
        $this->students->deleteStudentList($lrn);
        return back();
    }

    public function index()
    {
        $students = Student::all();
        return response()->json(['students' => $students]);

        print('im here');
    }

    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'lrn',
            'stu_lname',
            'stu_fname',
            'stu_mname',
            'stu_suffix',
            'stu_address',
            'stu_gender',
            'grade_lvl',
  
        ]);
        // Create a new section
        $section = Section::create($validatedData);
        // Return a response
        return response()->json(['message' => 'Section created successfully!', 'section' => $section], 201);
    }


}
