@extends('layouts.main')

@section('content')
    <main class="flex-grow-1">
        <div class="container-fluid pt-4">
            <h1>Our Writers:</h1>
        </div>

        <div class="container-fluid">
            <div class="row py-2 g-5 m-0 text-center">
                @forelse ($authors as $author)
                    <div class="col-lg-4 d-flex flex-column align-items-center justify-content-center">
                        <img src="{{ $author->avatar }}" alt="content"
                        class="img-fluid object-fit-cover w-50 mb-2 rounded-circle">
                        <a href="{{ route('author.show', $author->slug) }}" class="text-decoration-none text-dark">
                            <p class="mb-0 fw-bold">{{ $author->name }}</p>
                            <p>Spesialis {{ $author->posts->first()->category->name }}</p>
                        </a>
                    </div>
                @empty
                    <p class="text-center">No authors yet</p>
                @endforelse
            </div>
        </div>
    </main>
@endsection
