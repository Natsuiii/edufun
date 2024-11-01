<?php

namespace Database\Seeders;

use App\Models\Author;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class AuthorSeeder extends Seeder
{
    public function run(): void
    {
        $avatarArray = ['https://avatar.iran.liara.run/public/30', 'https://avatar.iran.liara.run/public/94', 'https://avatar.iran.liara.run/public/3'];
        $faker = Faker::create('id_ID');
        for ($i = 0; $i < 3; $i++) {
            $name = $faker->name;
            $slug = Str::slug($name);
            Author::create([
                'name' => $name, // Nama lengkap dalam bahasa Indonesia
                'email' => $faker->unique()->email, // Email unik
                'slug' => $slug,
                'avatar' => $avatarArray[$i],
            ]);
        }
    }
}
