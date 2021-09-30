@extends('layouts.app')

@section('content')
@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @include('alert')
            <div class="card">
                <div class="card-header">Thêm truyện</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="post" action="{{route('truyen.update',[$truyen->id])}}" enctype="multipart/form-data">
                      @method('PUT')
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên truyện</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tentruyen" value="{{$truyen->tentruyen}}">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">slug truyện</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="slug_truyen" value="{{$truyen->slug_truyen}}">
                          </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tóm tắt truyện</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="mota" value="{{$truyen->mota}}">
                          </div>
                          <div class="form-group">
                              <label for="">Danh mục</label>
                            <select class="custom-select" name="danhmuc">
                                @foreach ($danhmuc as $key =>$muc)
                                                     
                                <option {{$muc->id==$truyen->danhmuc_id?'selected':''}} value="{{$muc->id}}">{{$muc->tendanhmuc}}</option>
                                    
                                @endforeach
                              </select>
                          </div>
                          <div class="form-group">
                            <select class="custom-select" name="kichhoat">
                              @if ($truyen->kichhoat==1)
                                <option value="1">Kích hoạt</option>                          
                              @else
                                <option value="2">Không kích hoạt</option>                                 
                              @endif
                              </select>
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Hình ảnh</label>
                            <input type="file" class="form-control" id="exampleInputEmail1" name="hinhanh">
                            <img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" width="100" alt="">
                          </div>
                     
                       
                        <button type="submit" class="btn btn-primary">Cập nhật truyện</button>
                        @csrf
                      </form>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
