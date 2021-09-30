
  @section('slide')
        {{-- slide --}}
  <h3>HAY NÊN ĐỌC</h3>
  <div class="owl-carousel owl-theme mb-5">
      @foreach ($truyens as $truyen)
          <div class="item">
              <div class="info_truyen">
                  <span class="badge badge-danger loaitruyen">Truyện đọc</span>

              </div>
              <img src="{{ asset('public/uploads/truyen/' . $truyen->hinhanh) }}">

              <h5>{{$truyen->tentruyen}}<br></h5>
              <p><i class="fas fa-eye"></i>10.2k</p>



              <a href="{{'danh-muc/'.$truyen->danhmuctruyen->slug_danhmuc}}"><span class="badge badge-dark">{{ $truyen->danhmuctruyen->tendanhmuc }}</span></a>
              <a class="btn btn-danger btn-sm"
                  href="{{'xem-truyen/'.$truyen->slug_truyen}}">Xem truyện</a>
          </div>
      @endforeach
  </div>
  @endsection