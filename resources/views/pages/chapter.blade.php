@extends('../layout')
@section('content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                <li class="breadcrumb-item active" aria-current="page">{{ $chapter->tieude }}</li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-md-12">
                <h4>{{ $chapter->truyen->tentruyen }}</h4>
                <p>Chương hiện tại : {{ $chapter->tieude }}</p>
                <div class="col-md-5">
                    <style type="text/css">
                        .isDisabled {

                            color: currentColor;

                            pointer-events: none;

                            opacity: 0.5;

                            text-decoration: none;

                        }

                        .noidungchuong {
                            padding: 20px;
                            background: #fff;
                            color: #000;

                        }

                    </style>
                    <div class="form-group">



                        <label for="exampleInputEmail1">Chọn chương</label>



                        <p> <a class="btn btn-primary  {{$chapter->id==$min_id->id?'isDisabled':''}}" href="{{ url('xem-chapter/' . $previous_chapter) }}">Tập
                                Trước</a></p>
                        <select name="select-chapter" id="select-chapter" class="custom-select select-chapter">

                            @foreach ($all_chapter as $chap)
                                <option value="{{ url('xem-chapter/' . $chap->slug_chapter) }}">
                                    {{ $chap->tieude }}</option>
                            @endforeach
                        </select>
                        <p class="mt-4"><a class="btn btn-primary {{$chapter->id==$max_id->id?'isDisabled':''}}"
                                href="{{ url('xem-chapter/' . $next_chapter) }}">Tập
                                Sau</a></p>
                    </div>
                </div>
                <div class="noidungchuong">
                    {!! $chapter->noidung !!}
                </div>





                <h3>Lưu và chia sẻ truyện : </h3>

                <div class="fb-share-button"
                    data-href="localhost/xem-chapter/tam-quoc-dien-nghia/chuong-1-hoi-%C3%B0ao-vien-anh-hung-ket-nghia-%C3%B0anh-huynh-can-hao-kiet-lap-cong"
                    data-layout="button_count" data-size="large"><a target="_blank"
                        href="https://www.facebook.com/sharer/sharer.php?u=localhost/xem-chapter/tam-quoc-dien-nghia/chuong-1-hoi-%C3%B0ao-vien-anh-hung-ket-nghia-%C3%B0anh-huynh-can-hao-kiet-lap-cong"
                        class="fb-xfbml-parse-ignore">Chia sẻ</a></div>

                <div class="row">
                    <div class="col-md-12">
                        <div data-width="100%" class="fb-comments"
                            data-href="https://sachtruyen247.com/xem-chapter/tam-quoc-dien-nghia/chuong-1-hoi-%C3%B0ao-vien-anh-hung-ket-nghia-%C3%B0anh-huynh-can-hao-kiet-lap-cong"
                            data-width="" data-numposts="10"></div>
                    </div>
                </div>





            </div>


        </div>
    </div>
@endsection
