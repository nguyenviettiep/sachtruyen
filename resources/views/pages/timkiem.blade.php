@extends('../layout')
@section('content')
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
    </ol>
    <h3>Bạn tìm kiếm với từ khoá là:{{$tukhoa}}</h3>
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
                            src="{{'/public/uploads/truyen/'.$truyen->hinhanh}}">
                        <div class="card-body">

                            <h5>{{$truyen->tentruyen}}</h5>

                            <p class="card-text">
                                {{$truyen->mota}}
                            </p>

                            <a href="https://sachtruyen247.com/danh-muc/truyen-cuoi"><span class="badge badge-dark">
                               {{$truyen->danhmuctruyen->tendanhmuc}}
                                </span>
                                </a>

                            <div class="d-flex justify-content-between align-items-center">

                                <div class="btn-group">

                                    <a href="{{'/xem-truyen/'.$truyen->slug_truyen}}"
                                        class="btn btn-sm btn-outline-secondary">Xem truyện</a>

                                    <a class="btn btn-sm btn-outline-secondary"><i class="fas fa-eye"></i>2.1k</a>

                                </div>

                                <small class="text-muted"></small>

                            </div>

                        </div>
                    </div>
                </div>
                @endforeach
              
            </div>
        </div>
    </div>
@endsection
