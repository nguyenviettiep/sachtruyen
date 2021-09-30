@extends('../layout')
@section('content')
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
            <li class="breadcrumb-item">{{ $truyens->danhmuctruyen->tendanhmuc }}
            </li>
            <li class="breadcrumb-item">{{ $truyens->tentruyen }}</li>
        </ol>
    </nav>
    <div class="row">
        <div class="col-md-9">
            <div class="row">
                <div class="col-md-5">
                    <img class="card-img-top" src="{{ url('/public/uploads/truyen/' . $truyens->hinhanh) }}">
                </div>
                <div class="col-md-7">
                    <style type="text/css">
                        .infotruyen {
                            list-style: none;
                            padding: 0;
                        }

                        ul.mucluctruyen li a {
                            color: #000;
                            font-size: 16px;
                        }

                        .tomtat-truyen {
                            padding: 0;
                            margin: 20px 0;
                            line-height: 31px;
                            font-size: 17px;
                            box-shadow: 2px 2px 3px #ddd;
                        }

                    </style>
                    <ul class="infotruyen">

                        <li>Tên truyện :{{ $truyens->tentruyen }}</li>
                        <li>Loại truyện :
                            <span class="text-primary">{{ $truyens->danhmuctruyen->tendanhmuc }}</span>
                        </li>
                        <li>Tác giả : {{ $truyens->tacgia }}</li>

                        <li>Số lượt xem :10.2k </li>
                        @if ($chapter_dau)
                        <li>
                            <a href="{{ url('xem-chapter/' . $chapter_dau->slug_chapter) }}" class="btn btn-primary">Đọc
                                Truyện</a>
                        </li>
                        @else
                        <a class="btn btn-danger">Hiện tại chưa có chương</a>
                        @endif

                    </ul>
                    {{-- sach cung chuyen muc --}}


                </div>

            </div>
            <hr>
            <style type="text/css">
                .tagcloud05 ul {
                    margin: 0;
                    padding: 0;
                    list-style: none;
                }

                .tagcloud05 ul li {
                    display: inline-block;
                    margin: 0 0 .3em 1em;
                    padding: 0;
                }

                .tagcloud05 ul li a {
                    position: relative;
                    display: inline-block;
                    height: 30px;
                    line-height: 30px;
                    padding: 0 1em;
                    background-color: #3498db;
                    border-radius: 0 3px 3px 0;
                    color: #fff;
                    font-size: 13px;
                    text-decoration: none;
                    -webkit-transition: .2s;
                    transition: .2s;
                }

                .tagcloud05 ul li a::before {
                    position: absolute;
                    top: 0;
                    left: -15px;
                    content: '';
                    width: 0;
                    height: 0;
                    border-color: transparent #3498db transparent transparent;
                    border-style: solid;
                    border-width: 15px 15px 15px 0;
                    -webkit-transition: .2s;
                    transition: .2s;
                }

                .tagcloud05 ul li a::after {
                    position: absolute;
                    top: 50%;
                    left: 0;
                    z-index: 2;
                    display: block;
                    content: '';
                    width: 6px;
                    height: 6px;
                    margin-top: -3px;
                    background-color: #fff;
                    border-radius: 100%;
                }

                .tagcloud05 ul li span {
                    display: block;
                    max-width: 100px;
                    white-space: nowrap;
                    text-overflow: ellipsis;
                    overflow: hidden;
                }

                .tagcloud05 ul li a:hover {
                    background-color: #555;
                    color: #fff;
                }

                .tagcloud05 ul li a:hover::before {
                    border-right-color: #555;
                }

            </style>
            {{-- muc luc --}}
            <h3>Mục lục</h3>
            <style type="text/css">
                ul.mucluctruyen {
                    -moz-column-count: 3;
                    -moz-column-gap: 20px;
                    -webkit-column-count: 3;
                    -webkit-column-gap: 20px;
                    column-count: 3;
                    column-gap: 20px;
                    list-style-type: decimal;
                    font-weight: bold;
                    content: "• ";
                    color: red;
                }

            </style>
            <ul class="mucluctruyen">
                @php
                    $mucluc = count($chapters);
                @endphp
                @if ($mucluc > 0)
                    @foreach ($chapters as $key => $chapter)
                        <li>
                            <a href="{{ url('xem-chapter/' . $chapter->slug_chapter) }}">
                                {{ $chapter->tieude }}
                            </a>
                        </li>
                    @endforeach

                @else
                    <li>
                        Đang cập nhật
                    </li>
                @endif


            </ul>
            <h4>Sách cùng danh mục</h4>
            <div class="row">
                @foreach ($cungdanhmuc as $truyencdm)
                    <div class="col-md-3">
                        <div class="card mb-3 box-shadow">
                            <img class="card-img-top" src="{{ '/public/uploads/truyen/' . $truyencdm->hinhanh }}">
                            <div class="card-body">
                                <h5>TRUYỆN MA: {{ $truyencdm->tentruyen }}</h5>
                                <p class="card-text">
                                    {{ $truyencdm->mota }}
                                </p>

                                <a href="{{ '/danh-muc/' . $truyencdm->danhmuctruyen->slug_danhmuc }}"><span
                                        class="badge badge-dark">Truyện
                                        Ma ám</span></a>
                                <div class="d-flex justify-content-between align-items-center">

                                    <div class="btn-group">

                                        <a href="{{ '/xem-truyen/' . $truyencdm->slug_truyen }}"
                                            class="btn btn-sm btn-outline-secondary">Xem truyện</a>

                                        <a class="btn btn-sm btn-outline-secondary"><i class="fas fa-eye"></i>103</a>
                                    </div>
                                    <small class="text-muted"></small>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="col-md-3">
            <style type="text/css">
                .col-md-7.sidebar a {
                    /* padding: 0; */
                    font-size: 15px;
                    text-decoration: none;
                    color: #000;
                }

                .col-md-7.sidebar {
                    padding: 0;
                }

                .card-header {
                    background: #3490dc !important;
                }

            </style>
            </div>
        </div>
    </div>

@endsection
</div>
