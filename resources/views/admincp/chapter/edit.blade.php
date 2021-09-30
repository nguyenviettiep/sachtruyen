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
                    <form method="post" action="{{route('chapter.update',[$chapter->id])}}">
                      @method('PUT')
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên chapter</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tieude" value="{{$chapter->tieude}}">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">slug chapter</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="slug_chapter" value="{{$chapter->slug_chapter}}">
                          </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tóm tắt chapter</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tomtat" value="{{$chapter->tomtat}}">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Nội dung</label>
                            <textarea name="noidung" id="" cols="30" rows="10">
                              {{$chapter->noidung}}
                            </textarea>
                            
                          </div>
                          <div class="form-group">
                              <label for="">Thuộc truyện</label>
                            <select class="custom-select" name="truyen_id">
                                @foreach ($truyen as $key =>$truyenvalue)
                                <option {{$chapter->truyen_id==$truyenvalue->id?'selected':''}} value="{{$truyenvalue->id}}">{{$truyenvalue->tentruyen}}</option>
                                    
                                @endforeach
                              </select>
                          </div>
                          <div class="form-group">
                            <select class="custom-select" name="kichhoat">
                                <option value="1">Kích hoạt</option>
                                <option value="2">Không kích hoạt</option>
                              </select>
                          </div>
                         
                     
                       
                        <button type="submit" class="btn btn-primary">Cập nhật chapter</button>
                        @csrf
                      </form>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
