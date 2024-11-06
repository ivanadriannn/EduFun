<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Course;

class Writer extends Model
{
    protected $table = 'writers';
    protected $guarded = [];

    // Relasi writer ke courses
    public function courses()
    {
        return $this->hasMany(Course::class);
    }
}
