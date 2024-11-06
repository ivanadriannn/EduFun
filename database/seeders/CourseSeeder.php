<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Course;
use Faker\Factory as Faker;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $name = [
            'Machine Learning',
            'Deep Learning',
            'Natural Language Processing',
            'Software Security',
            'Network Administration',
            'Popular Network Technology'
        ];

        for ($i = 0; $i < 6; $i++) {
            if ($i < 3) {
                $category_id = 1; 
                $writer_id = 2;   
            } else {
                $category_id = 2;
                $writer_id = 1;   
            }
        
            Course::create([
                'name' => $name[$i],
                'description' => $faker->paragraph(rand(10, 15)).
                "\n\n" . $faker->paragraph(rand(8, 10)),
                'image_path' => $i + 1,
                'category_id' => $category_id,
                'writer_id' => $writer_id
            ]);
        }
        
    }
}
