@extends('layouts.master')

@section('content')
    <div class="container">
        {{-- Menampilkan kategori kursus --}}
        <div class="py-5">
            <a href="{{ route('category', $course->category->id) }}" class="fs-2 fw-bold text-dark text-decoration-none">
                {{ $course->category->name }}
            </a> 
        </div>

        {{-- Gambar kursus --}}
        <div class="d-flex justify-content-center">
            <img src="{{ asset('img/courses/' . $course->image_path .'.png') }}" alt="Course Image" class="rounded-4 img-thumbnail w-80">
        </div>

        {{-- Informasi kursus --}}
        <div class="p-5">
            <div class="d-flex flex-column gap-3">
                {{-- Tanggal dan penulis kursus --}}
                <span>{{ $course->created_at->format('d M Y') }} | by: {{ strstr($course->writer->name, " ", true) }}</span>

                {{-- Deskripsi kursus --}}
                <p class="fs-5">{!! nl2br($course->description) !!}</p>
            </div>
        </div>
    </div>
@endsection
