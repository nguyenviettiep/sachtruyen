@extends('layouts.app')

@section('content')
@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @include('alert')
            <div class="card">
                <div class="card-header">Cập nhật danh mục</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{route('danhmuc.update',[$danhmuc->id])}}">
                         @method('PUT')
                        <div class="form-group">
                          <label for="exampleInputEmail1">Tên danh mục</label>
                          <input type="text" class="form-control" value="{{$danhmuc->tendanhmuc}}" id="exampleInputEmail1" name="tendanhmuc">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Mô tả danh mục</label>
                            <input type="text" class="form-control"  value="{{$danhmuc->mota}}" id="exampleInputEmail1" name="mota">
                          </div>
                          <div class="form-group">
                            <select class="custom-select" name="kichhoat">
                                @if ($danhmuc->kichhoat==1)
                                <option selected value="1">Kích hoạt</option>
                                @else
                                <option value="2">Không kích hoạt</option>
                                @endif
                              </select>
                          </div>
                     
                       
                        <button type="submit" class="btn btn-primary">Cập nhật danh mục</button>
                        @csrf
                      </form>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
