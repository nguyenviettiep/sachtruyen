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
                                    <th scope="col">Tên truyện</th>
                                    <th scope="col">Hình ảnh</th>
                                    <th scope="col">Slug_truyện</th>
                                    <th scope="col">Mô tả</th>
                                    <th scope="col">Kích hoạt</th>
                                    <th scope="col">Danh mục</th>
                                    <th scope="col">Tác giả</th>
                                    <th scope="col">Quản lý</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($list_truyen as $key => $truyen)
                                    <tr>
                                        <th scope="row">{{ $key }}</th>
                                        <td>{{ $truyen->tentruyen }}</td>
                                        <td><img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" width="100"></td>
                                        <td>{{ $truyen->slug_truyen }}</td>
                                        <td>{{ $truyen->mota }}</td>
                                        <td>
                                            @if ($truyen->kichhoat == 1)
                                                <span class="text text-success">Kích hoạt</span>
                                            @else
                                                <span class="text text-danger">Không kích hoạt</span>
                                            @endif
                                        </td>
                                        <td>{{ $truyen->danhmuctruyen->tendanhmuc }}</td>
                                        <td>{{ $truyen->tacgia }}</td>

                                        <td>
                                            <form action="{{ route('truyen.destroy', [$truyen->id]) }}"
                                                method="post">
                                                @method('DELETE')
                                                @csrf
                                                <button onclick="return confirm('Bạn muốn xoá danh mục truyện này không');"
                                                    class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                        <td>
                                            <a href="{{route('truyen.edit',[$truyen->id])}}" class="btn btn-primary">Edit</a>
                                            <form action="{{ route('truyen.destroy', [ $truyen->id]) }}"
                                                method="post">
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
