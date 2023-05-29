@extends('dashboard.layouts.main')

@section('container')
<div class="container my-5">
    <div class="row mb-5">
        <div class="col-lg-8">

            <h2 class="mb-3">{{ $post->title }}</h2>

            <a href="/dashboard/posts" class="btn btn-info text-light"><span data-feather="arrow-left"></span> Back To Posts</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-success"><span data-feather="edit"></span> Edit</a>
          

            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger " onclick="return confirm('Are You Sure??');"><span data-feather="trash-2"></span> Delete</button>
            </form>

            @if ($post->image)
                <div style="max-height: 300px; overflow:hidden;">
                    <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid mt-3" alt="{{ $post->category->name }}"> 
                </div>    
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid mt-3" alt="{{ $post->category->name }}">
            @endif


            <article class="my-2 fs-5">
                <p>{!! $post->body !!}</p>
            </article>
        </div>
    </div>
</div>

@endsection