@extends('layouts.master')

@section('content')
    <div class="container">
        {{-- Judul Halaman Popular --}}
        <div class="pt-5 pb-3 fs-2 fw-bold">Popular</div>
        
        {{-- Menampilkan daftar kursus --}}
        <div class="course-list">
            @include('course.courseCard', ['courses' => $courses])
        </div>

        {{-- Pagination --}}
        <div class="d-flex justify-content-center mt-4">
            {{ $courses->links() }}
        </div>
    </div>
@endsection
