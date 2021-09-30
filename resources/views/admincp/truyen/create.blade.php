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
                    <form method="post" action="{{route('truyen.store')}}" enctype="multipart/form-data">
                      
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên truyện</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tentruyen">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">slug truyện</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="slug_truyen">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Tóm tắt truyện</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="mota">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Tác giả</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tacgia">
                          </div>
                          <div class="form-group">
                              <label for="">Danh mục</label>
                            <select class="custom-select" name="danhmuc">
                                @foreach ($danhmuc as $key =>$muc)
                                <option value="{{$muc->id}}">{{$muc->tendanhmuc}}</option>
                                    
                                @endforeach
                              </select>
                          </div>
                          <div class="form-group">
                            <select class="custom-select" name="kichhoat">
                                <option value="1">Kích hoạt</option>
                                <option value="2">Không kích hoạt</option>
                              </select>
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Hình ảnh</label>
                            <input type="file" class="form-control" id="exampleInputEmail1" name="hinhanh">
                          </div>
                        
                       
                        <button type="submit" class="btn btn-primary">Thêm truyện</button>
                        @csrf
                      </form>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
