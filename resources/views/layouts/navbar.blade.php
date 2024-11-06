<nav class="navbar navbar-expand-lg bs-none shadow-sm">
    <div class="container d-flex justify-content-between align-items-center">
        <a class="navbar-brand col-2" href="{{ route('home') }}">
            <img src="{{ asset('img/fixed/logo.png') }}" alt="logo" width="40">
        </a>
        
        <div class="d-flex col-10 justify-content-end">
            <ul class="navbar-nav gap-4">
                <li class="nav-item position-relative">
                    <a class="nav-link fw-bold {{ request()->routeIs('home') ? 'text-primary' : 'text-dark' }}" href="{{ route('home') }}">Home</a>
                    @if(request()->routeIs('home'))
                        <span class="position-absolute bottom-0 start-0 w-100 border-bottom border-primary"></span>
                    @endif
                </li>
                
                <li class="nav-item dropdown">
                    <button class="btn dropdown-toggle fw-bold {{ request()->routeIs('category') ? 'text-primary' : 'text-dark' }}" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('category', 1) }}">Data Science</a></li>
                        <li><a class="dropdown-item" href="{{ route('category', 2) }}">Network Security</a></li>
                    </ul>
                </li>
                
                <li class="nav-item position-relative">
                    <a class="nav-link fw-bold {{ request()->routeIs('writer') ? 'text-primary' : 'text-dark' }}" href="{{ route('writer') }}">Writers</a>
                    @if(request()->routeIs('writer'))
                        <span class="position-absolute bottom-0 start-0 w-100 border-bottom border-primary"></span>
                    @endif
                </li>
                
                <li class="nav-item position-relative">
                    <a class="nav-link fw-bold {{ request()->routeIs('about') ? 'text-primary' : 'text-dark' }}" href="{{ route('about') }}">About Us</a>
                    @if(request()->routeIs('about'))
                        <span class="position-absolute bottom-0 start-0 w-100 border-bottom border-primary"></span>
                    @endif
                </li>
                
                <li class="nav-item position-relative">
                    <a class="nav-link fw-bold {{ request()->routeIs('popular') ? 'text-primary' : 'text-dark' }}" href="{{ route('popular') }}">Popular</a>
                    @if(request()->routeIs('popular'))
                        <span class="position-absolute bottom-0 start-0 w-100 border-bottom border-primary"></span>
                    @endif
                </li>
            </ul>
        </div>
    </div>
</nav>
