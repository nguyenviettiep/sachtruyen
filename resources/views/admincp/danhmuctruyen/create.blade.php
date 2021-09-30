@extends('layouts.app')

@section('content')
@include('layouts.nav')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @include('alert')
            <div class="card">
                <div class="card-header">Thêm danh mục</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="post" action="{{route('danhmuc.store')}}">
                      
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên danh mục</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="tendanhmuc">
                          </div>
                         
                        <div class="form-group">
                            <label for="exampleInputEmail1">Mô tả danh mục</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="mota">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Slug danh mục</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="slug_danhmuc">
                          </div>
                          <div class="form-group">
                            <select class="custom-select" name="kichhoat">
                                <option value="1">Kích hoạt</option>
                                <option value="2">Không kích hoạt</option>
                              </select>
                          </div>
                        
                       
                        <button type="submit" class="btn btn-primary">Thêm danh mục</button>
                        @csrf
                      </form>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
