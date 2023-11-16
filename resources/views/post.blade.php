@extends('layouts.main')

@section('container')
<article>
    <h2>{{ $post->title }}</h2>
    <p>By: <a href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
    {{-- {{ $post->body }}  --}}
    {{-- Tag p nya bakalan dicetak juga, dia bakal escape soalnya --}}

    {!! $post->body !!} 
    {{-- Tag p nya ga bakalan dicetak --}}
    <a href="/posts" class="d-block mt-3">Back</a>
</article>
@endsection