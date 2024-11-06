<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;

class WriterController extends Controller
{
    // Ambil semua writer
    public function getWriter(){
        $writers = Writer::all();
        return view('writer.writers', compact('writers'));
    }

    // Ambil detail writer
    public function getWriterDetail($id){
        $writer = Writer::find($id);
        return view('writer.writerDetail', compact('writer'));
    }
}
