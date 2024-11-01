@extends('layouts.main')

@section('content')
    <main class="flex-grow-1">
        <div class="container-fluid pt-4">
            <a href="{{ route('category.index', $post->category->slug) }}" class="text-decoration-none text-dark">
                <h1>{{ $post->category->name }}</h1>
            </a>
        </div>

        <div class="container-fluid p-0 d-flex justify-content-center p-5 flex-column">
            <img src="{{ $post->image }}" alt="content" class="img-fluid w-100 rounded-5" style="max-height: 300px;">
            <p class="text-muted pt-2">
                {{ $post->created_at->format('d M Y') . ' | ' . $post->author->name . '' }}</p>
            <p class="">
                {{ $post->body }}
            </p>
        </div>

        <div class="container-fluid">

        </div>
    </main>
@endsection
