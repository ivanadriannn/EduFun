@extends('layouts.master')

@section('content')

<div class="container d-flex flex-column p-5 align-items-center">
    <h1>Our Writers:</h1>
    <div class="container d-flex flex-wrap gap-4 justify-content-center mt-4">
        @foreach ($writers as $writer)
        <div class="card border-0 text-center" style="width: 18rem;">
            <a href="{{ route('writerDetail', $writer->id) }}" class="bg-white shadow p-3 mb-3 bg-body rounded-circle d-inline-block" style="width: 300px; height: 300px; overflow: hidden;">
                <img src="{{ asset('img/writers/' . $writer->image_path .'.png') }}" class="card-img-top rounded-circle" alt="{{ $writer->name }}" style="object-fit: cover; width: 100%; height: 100%;">
            </a>
            <div class="card-body">
                <p class="card-text fw-bold">{{ $writer->name }}</p>
                <p class="card-text">{{ $writer->field }}</p>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
