@extends('layouts.master')

@section('content')

    <div class="">
        <img src="{{ asset('img/fixed/banner.png') }}" alt="hero" style="width: 100%; height: 20%; object-fit: cover;">
    </div>

    @include('course.courseCard', ['courses' => $courses])

@endsection