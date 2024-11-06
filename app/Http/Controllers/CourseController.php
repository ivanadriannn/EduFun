<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    // Ambil detail course
    public function getCourse($id){
        $course = Course::with(['category','writer'])->find($id);
        return view('course.courseDetail', compact('course'));
    }

    // Ambil course populer
    public function getPopular(){
        $courses = Course::with(['category','writer'])->paginate(3);
        return view('course.popular', compact('courses'));
    }
}
