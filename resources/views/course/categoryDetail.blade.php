@extends('layouts.master')

@section('content')
    <div class="container">
        {{-- Menampilkan Nama Kategori --}}
        <div class="pt-5 pb-3 fs-1 fw-bold">
            {{ $category->name }}
        </div>
        
        {{-- Daftar Kursus dalam Kategori --}}
        <div class="course-list">
            @include('course.courseCard', ['courses' => $category->courses])
        </div>
    </div>
@endsection
