<nav class="navbar navbar-expand-lg bg-body-tertiary fw-bold">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('home.index') }}">
            <img src="{{ asset('logo/logo.png') }}" alt="Bootstrap" width="40" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link me-3 {{ request()->routeIs('home.index') ? 'active' : '' }}" aria-current="page" href="{{ route('home.index') }}">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle me-3 {{ request()->routeIs('category.index') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        @foreach ($categories as $category)
                            <li><a class="dropdown-item" href="{{ route('category.index', $category->slug) }}">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link me-3 {{ request()->routeIs(['author.index', 'author.show']) ? 'active' : '' }}" aria-current="page" href="{{ route('author.index') }}">Writers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link me-3 {{ request()->routeIs('about.index') ? 'active' : '' }}" aria-current="page" href="{{ route('about.index') }}">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link me-3 {{ request()->routeIs('popular.index') ? 'active' : '' }}" aria-current="page" href="{{ route('popular.index') }}">Popular</a>
                </li>
            </ul>
        </div>
    </div>
</nav>