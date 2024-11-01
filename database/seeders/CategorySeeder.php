<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::factory()->create([
            'name' => 'Interactive Multimedia',
            'slug' => 'interactive-multimedia',
        ]);

        Category::factory()->create([
            'name' => 'Software Engineering',
            'slug' => 'software-engineering',
        ]);
    }
}
