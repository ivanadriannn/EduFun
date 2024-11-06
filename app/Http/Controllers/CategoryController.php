<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    // Ambil kategori dan courses
    public function getCategory(){
        $categories = Category::with(['courses.writer'])->get();
        $courses = $categories->pluck('courses')->flatten();
        return view('home', compact('categories', 'courses'));
    }

    // Ambil detail kategori
    public function getCategoryDetail($id){    
        $category = Category::with(['courses'])->find($id);
        return view('course.categoryDetail', compact('category'));
    } 
}
