<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(Category $category)
    {
        $posts = Post::where('category_id', $category->id)->get();
        return view('category.index', [
            'category' => $category,
            'posts' => $posts
        ]);
    }
}
