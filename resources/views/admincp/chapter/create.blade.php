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
                    <form method="post" action="{{route('chapter.store')}}" enctype="multipart/form-data">
                      
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên chapter</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tieude">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">slug chapter</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="slug_chapter">
                          </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tóm tắt chapter</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tomtat">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Nội dung</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="noidung">
                          </div>
                          <div class="form-group">
                              <label for="">Thuộc truyện</label>
                            <select class="custom-select" name="truyen_id">
                                @foreach ($truyen as $key =>$truyenvalue)
                                <option value="{{$truyenvalue->id}}">{{$truyenvalue->tentruyen}}</option>
                                    
                                @endforeach
                              </select>
                          </div>
                          <div class="form-group">
                            <select class="custom-select" name="kichhoat">
                                <option value="1">Kích hoạt</option>
                                <option value="2">Không kích hoạt</option>
                              </select>
                          </div>
                          {{-- <div class="form-group">
                            <label for="exampleInputEmail1">Hình ảnh</label>
                            <input type="file" class="form-control" id="exampleInputEmail1" name="hinhanh">
                          </div> --}}
                     
                       
                        <button type="submit" class="btn btn-primary">Thêm chapter</button>
                        @csrf
                      </form>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
