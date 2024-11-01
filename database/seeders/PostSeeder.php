<?php

namespace Database\Seeders;

use App\Models\Author;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\Http;

class PostSeeder extends Seeder
{
    /**
     * Jalankan database seed.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');
        $users = Author::all();
        $category = Category::all();
        for ($i = 0; $i < 10; $i++) {
            $randCategory = $category->random();
            $randQuery = $randCategory->slug;
            $apiKey = 'dtUvZeAgNv2b0MqFLl6kyEIEnBumE4uPfZez3zgBl9Y';
            $url = 'https://api.unsplash.com/search/photos?page=' . $i+1 . '&query=' . $randQuery . '&client_id=' . $apiKey;
            $response = Http::get($url);
            $find = $response->json();
            $image = $find['results'][0]['urls']['regular'];
            Post::create([
                'author_id' => $users->random()->id, // Ambil user secara acak
                'category_id' => $category->random()->id, // Ambil category secara acak
                'title' => $faker->sentence, // Judul post dalam bahasa Indonesia
                'slug' => $faker->slug,
                'body' => $faker->paragraphs(3, true), // Isi post dalam bahasa Indonesia
                'image' => $image,
                'view_count' => rand(0, 100),
            ]);
        }
    }
}
