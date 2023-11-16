@extends('layouts.main')

@section('container')
<h1 class="mb-5">Post Category</h1> 
{{-- $category dapet dari web (category = $category->name) --}}
    @foreach ($categories as $category)
<ul>
    <li>
        <a href="/categories/{{ ($category->slug) }}">{{ $category->name }}</a>
    </li>
</ul>
    @endforeach
@endsection