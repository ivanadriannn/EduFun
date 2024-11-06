@extends('layouts.master')

@section('content')

<div class="container p-5">
    {{-- Profile Writer --}}
    <div class="profile d-flex align-items-center gap-3 rounded-circle">
        <img src="{{ asset('img/writers/' . $writer->image_path .'.png') }}" alt="Profile Image" width="100" class="rounded-circle img-thumbnail shadow bg-body">
        <div class="d-flex flex-column">
            <div class="fs-5">{{ $writer->name }}</div>
            <div class="text-secondary">{{ $writer->field }}</div>
        </div>
    </div>

    {{-- Courses by Writer --}}
    @if ($writer->courses->isNotEmpty())
        @include('course.courseCard', ['courses' => $writer->courses])
    @else
        <div class="d-flex justify-content-center p-5"><span class="text-secondary">There is no course here!</span></div>
    @endif
</div>

@endsection
