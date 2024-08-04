@extends('admin.layouts.master')

@section('title')
    Chi tiết danh mục sản phẩm
@endsection

@section('content')
    <ul>
        <li>ID: {{$category->id}}</li>
        <li>Tên: {{$category->name}}</li>
        <li>Ảnh:
            <div style="width: 100px; height: 100px;">
                <img src="{{$category->cover}}" style="max-width: 100%; max-height: 100%;" alt="">
            </div>
        </li>
        <li>Trạng thái: {{$category->status}}</li>
        {{-- <li>Trạng thái: {{$category->is_active}}</li>
    </ul>
    <ul>
        @foreach ($category->toArray() as $key => $value)
            <li>{{$key}} : {{$value}}</li>
            
        @endforeach
    </ul> --}}
@endsection
