<!DOCTYPE html>
<html lang="en">

@include('head')
<style type="text/css">
    .item img {

        height: 230px;
        border: 3px solid #000;
        padding: 3px;
    }

    .card.mb-3.box-shadow img {
        height: 230px;
        border: 3px solid #000;
        padding: 3px;
    }

</style>

<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="navbar-brand">Sách truyện</div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Trang chủ <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Danh mục truyện
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            @foreach ($danhmucs as $key => $danhmuc)
                                <a class="dropdown-item"
                                    href="{{ url('danh-muc/' . $danhmuc->slug_danhmuc) }}">{{ $danhmuc->tendanhmuc }}</a>
                            @endforeach
                        </div>
                    </li>
                    <form class="form-inline my-2 my-lg-0" action="{{url('/tim-kiem')}}">
                        <input class="form-control mr-sm-2" name="tukhoa" type="search" placeholder="Tìm kiếm">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                      </form>


                </ul>

            </div>
        </nav>
        <div class="zalo-share-button" data-href="" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize="false"></div>
        <script src="https://apis.google.com/js/platform.js"></script>

        <div class="g-ytsubscribe" data-channel="GoogleDevelopers" data-layout="default" data-count="default"></div>
        
        @yield('slide')
        {{-- book update --}}
        @yield('content')
    </div>

</body>
@include('footer')

</html>
