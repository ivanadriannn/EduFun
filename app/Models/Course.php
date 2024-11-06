<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Course extends Model
{
    protected $table = 'courses';
    protected $guarded = [];

    // Relasi course ke category
    public function category() 
    {
        return $this->belongsTo(Category::class);
    }
    
    // Relasi course ke writer
    public function writer()
    {
        return $this->belongsTo(Writer::class);
    }
}
