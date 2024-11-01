@extends('layouts.main')

@section('content')
    <main class="main flex-grow-1">
        <div class="container-fluid pt-4 d-flex gap-3">
            <img src="{{ $author->avatar }}" alt="content" class="img-fluid object-fit-cover mb-2 rounded-circle" style="width: 10%">
            <a href="{{ route('author.index') }}" class="text-center d-flex flex-column justify-content-between py-3 text-decoration-none text-dark">
                    <h3>{{ $author->name }}</h3>
                    <p class="">Spesialis {{ $author->posts->first()->category->name }}</p>
            </a>
        </div>

        <div class="container-fluid">
            <div class="row py-2 g-5 m-0">
                @forelse ($posts as $post)
                    <div class="col-lg-5 p-0">
                        <img src="{{ $post->image }}" alt="content" class="img-fluid w-100 rounded-5"
                            style="max-height: 200px;">
                    </div>
                    <div class="col-lg-7">
                        <h3>{{ $post->title }}</h1>
                            <p class="text-muted">
                                {{ $post->created_at->format('d M Y') . ' | ' . $post->author->name . '' }}</p>
                            <p class="text-truncate">
                                {{ $post->body }}
                            </p>
                            <a href="{{ route('posts.index', $post->slug) }}" class="btn btn-dark px-5 rounded-5 float-end">Read more...</a>
                    </div>
                @empty
                    <p class="text-center">No posts yet</p>
                @endforelse
            </div>
        </div>
    </main>
@endsection
