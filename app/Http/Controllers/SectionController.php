<?php
// app/Http/Controllers/SectionController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Section;

class SectionController extends Controller
{
    function __construct()
    {
        $this->section = new Section;
    }

    function delete($id){
        $this->section->deleteSectionList($id);
        return back();
        
    }

    function open($id){
        print($id);
      }

    public function index()
    {
        $sections = Section::all();
        return response()->json(['sections' => $sections]);
    }

    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'SectionName' => 'required|string|max:255',
            'SectionGradeLvl' => 'required|string|max:255',
            'SectionAd' => 'required|string|max:255',
            'SectionRoomNo' => 'required|string|max:255',
        ]);
        // Create a new section
        $section = Section::create($validatedData);
        // Return a response
        return response()->json(['message' => 'Section created successfully!', 'section' => $section], 201);
    }



}
