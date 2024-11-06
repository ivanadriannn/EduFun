<div class="container d-flex flex-column p-5 gap-5">
    @foreach ($courses as $item)
    <div class="card d-flex flex-row border-0 justify-content-between align-items-center">
        <div class="col-5">
            <img src="{{ asset('img/courses/' . $item->image_path .'.png') }}" class="card-img-top rounded rounded-5 img-fluid h-75" alt="img">
        </div>
        <div class="card-body col-7">
            <h2 class="card-title">{{ $item->name }}</h2>
            <span>{{ $item->created_at->format('d M Y') }} | by: {{ strstr($item->writer->name, " ", true)}}</span>
            <div class="fs-5">{{ substr($item->description, 0, 75) }} . . .</div>
            <a href="{{ route('course', $item->id) }}" class="btn btn-dark float-end d-flex mt-3" style="border-radius: 20px;">Read more...</a>
        </div>
    </div>
    @endforeach
</div>