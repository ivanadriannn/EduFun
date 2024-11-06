<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $name = [
            'Abi Firmansyah',
            'Raka Putra Wicaksono',
            'Bia Mecca Annisa'
        ];

        $field = [
            'Spesialis Network Security',
            'Speasialis Data Science',
            'Spesialis Data Science'
        ];

        for ($i=0; $i < 3 ; $i++) { 
            Writer::create([
                'name' => $name[$i],
                'image_path' => $i+1,
                'field' => $field[$i]
            ]);
        }
    }
}
