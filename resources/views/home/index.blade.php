@extends('layouts.main')

@section('content')
    <main class="flex-grow-1">
        <div class="container-fluid p-0">
            <img src="{{ asset('assets/hero-image.webp') }}" alt="Main Image" class=" object-fit-cover w-100">
        </div>

        <div class="container-fluid">
            <div class="row py-4 g-5 m-0">
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
