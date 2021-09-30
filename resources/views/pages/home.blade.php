@extends('../layout')
@section('slide')
    @include('pages.slide')
@endsection
@section('content')
    <h3 class="title_truyen">MỚI CẬP NHẬT</h3>
    <div class="album py-2 bg-light">
        <div class="container">
            <div class="row">
                @foreach ($truyens as $truyen)
                <div class="col-md-3">
                    <div class="card mb-3 box-shadow">
                        <div class="info_truyen">
                            <span class="badge badge-danger loaitruyen">Truyện đọc</span>
                        </div>
                        <img class="card-img-top"
                            src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}">
                        <div class="card-body">
                            <h5 class="title_truyen">{{$truyen->tentruyen}}</h5>
                            <p class="card-text">
                            </p>
                            <a href="{{'danh-muc/'.$truyen->danhmuctruyen->slug_danhmuc}}"><span
                                    class="badge badge-dark">{{$truyen->danhmuctruyen->tendanhmuc}}</span></a>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group mt-4">
                                    <a href="{{url('xem-truyen/'.$truyen->slug_truyen)}}"
                                        class="btn btn-sm btn-outline-secondary">Xem truyện</a>
                                    <div class="ml-4"><i class="fas fa-eye"></i>10.2k</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
          

        </div>



    </div>

@endsection
