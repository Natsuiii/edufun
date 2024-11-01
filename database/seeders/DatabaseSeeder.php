<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Container\Attributes\Auth;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        $this->call([
            CategorySeeder::class,
            AuthorSeeder::class,
            PostSeeder::class,
        ]);
    }
}
