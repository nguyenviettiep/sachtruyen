<?php

namespace App\Http\Controllers;

use App\Models\DanhmucTruyen;
use App\Models\Truyen;
use Illuminate\Http\Request;

class TruyenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list_truyen=Truyen::with('danhmuctruyen')->orderBy('id','DESC')->get();
        return view('admincp.truyen.index')->with(compact('list_truyen'));
    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $danhmuc=DanhmucTruyen::orderBy('id','DESC')->get();
        return view('admincp.truyen.create')->with(compact('danhmuc'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=$request->validate([
            'tentruyen'=>'required',
            'mota'=>'required',
            'danhmuc'=>'required',
            'hinhanh'=>'required',
            'slug_truyen'=>'required',
            'kichhoat'=>'required',
            'tacgia'=>'required',
        ],
        [
            'tendanhmuc.required'=>'Tên danh mục phải có',
            'mota.required'=>'Mô tả phải có',
            'kichhoat.required'=>'Kích hoạt phải có',
            'slug_truyen.required'=>'Slug truyện phải có',
            'hinhanh.required'=>'Hình ảnh truyện phải có',
            'tacgia.required'=>'Tác giả truyện phải có',
        ]
    );
        $truyen=new Truyen();
        $truyen->tentruyen=$data['tentruyen'];
        $truyen->mota=$data['mota'];
        $truyen->danhmuc_id=$data['danhmuc'];
        $truyen->slug_truyen=$data['slug_truyen'];
        $truyen->kichhoat=$data['kichhoat'];
        $truyen->tacgia=$data['tacgia'];
        $path='public/uploads/truyen/';
        $get_image=$request->hinhanh;
        $get_name_image=$get_image->getClientOriginalName();
        $name_image=current(explode('.',$get_name_image));
        $new_image=$name_image.rand(0,99).','.$get_image->getClientOriginalExtension();
        $get_image->move($path,$new_image);
        $truyen->hinhanh=$new_image;
        $truyen->save();
        return redirect()->back()->with('status','Thêm truyện mới thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $truyen=Truyen::find($id);
        $danhmuc=DanhmucTruyen::orderBy('id','DESC')->get();
        return view('admincp.truyen.edit')->with(compact('truyen','danhmuc'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data=$request->validate([
            'tentruyen'=>'required',
            'mota'=>'required',
            'danhmuc'=>'required',
            'slug_truyen'=>'required',
            'kichhoat'=>'required',
        ],
        [
            'tendanhmuc.required'=>'Tên danh mục phải có',
            'mota.required'=>'Mô tả phải có',
            'kichhoat.required'=>'Kích hoạt phải có',
            'slug_truyen.required'=>'Slug truyện phải có',
        ]
    );
        $truyen= Truyen::find($id);
        $truyen->tentruyen=$data['tentruyen'];
        $truyen->mota=$data['mota'];
        $truyen->danhmuc_id=$data['danhmuc'];
        $truyen->slug_truyen=$data['slug_truyen'];
        $truyen->kichhoat=$data['kichhoat'];
        $path='public/uploads/truyen/';
        $get_image=$request->hinhanh;
        if($get_image){
            $get_name_image=$get_image->getClientOriginalName();
            $name_image=current(explode('.',$get_name_image));
            $new_image=$name_image.rand(0,99).','.$get_image->getClientOriginalExtension();
            $get_image->move($path,$new_image);
            $truyen->hinhanh=$new_image;
        }
        $truyen->save();
        return redirect()->back()->with('status','Cập nhật truyện mới thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $truyen=Truyen::find($id);
        $path='public/uploads/truyen/'.$truyen->hinhanh;
        if(file_exists($path)){
            unlink($path);
        }
        Truyen::find($id)->delete();
        return redirect()->back()->with('status','Xoá truyện thành công');
    }
}
