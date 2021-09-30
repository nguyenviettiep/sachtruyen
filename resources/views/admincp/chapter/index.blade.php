@extends('layouts.app')

@section('content')
    @include('layouts.nav')

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Danh mục</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">Thuộc truyện</th>
                                    <th scope="col">Tiêu đề</th>
                                    <th scope="col">Tóm tắt</th>
                                    <th scope="col">Nội dung</th>
                                    <th scope="col">Kích hoạt</th>
                                    <th scope="col">Slug</th>
                                    <th scope="col">Quản lý</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($chapters as $key => $chapter)
                                    <tr>
                                        <th scope="row">{{ $key }}</th>
                                        <td>{{ $chapter->truyen->tentruyen }}</td>
                                        <td>{{ $chapter->tieude }}</td>
                                        <td>{{ $chapter->tomtat }}</td>
                                        <td>
                                            <textarea cols="40" rows="5">
                                        {{ $chapter->noidung }}
                                    </textarea>
                                        </td>
                                        <td>
                                            @if ($chapter->kichhoat == 1)
                                                <span class="text text-success">Kích hoạt</span>
                                            @else
                                                <span class="text text-danger">Không kích hoạt</span>
                                            @endif
                                        </td>
                                        <td>{{ $chapter->slug_chapter }}</td>

                                        <td>
                                            <form action="{{ route('chapter.destroy', [$chapter->id]) }}" method="post">
                                                @method('DELETE')
                                                @csrf
                                                <button onclick="return confirm('Bạn muốn xoá danh mục truyện này không');"
                                                    class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                        <td>
                                            <a href="{{ route('chapter.edit', [$chapter->id]) }}"
                                                class="btn btn-primary">Edit</a>
                                            <form action="{{ route('truyen.destroy', [$chapter->id]) }}" method="post">
                                                @method('PUT')
                                                @csrf

                                            </form>
                                        </td>
                                    </tr>

                                @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
