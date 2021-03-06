<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;

class DanhmuctruyenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $danhmuctruyen=DanhmucTruyen::orderBy('id','DESC')->get();
        return view('admincp.danhmuctruyen.index')->with(compact('danhmuctruyen'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincp.danhmuctruyen.create');
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
            'tendanhmuc'=>'required',
            'mota'=>'required',
            'kichhoat'=>'required',
            'slug_danhmuc'=>'required',
        ],
        [
            'tendanhmuc.required'=>'Tên danh mục phải có',
            'mota.required'=>'Mô tả phải có',
            'slug_danhmuc.required'=>'Slug danh mục phải có',
        ]
    );
    $danhmuctruyen=new DanhmucTruyen();
    $danhmuctruyen->tendanhmuc=$data['tendanhmuc'];
    $danhmuctruyen->mota=$data['mota'];
    $danhmuctruyen->kichhoat=$data['kichhoat'];
    $danhmuctruyen->slug_danhmuc=$data['slug_danhmuc'];
    $danhmuctruyen->save();
    return redirect()->back()->with('status','Thêm danh mục thành công');
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
        //
        $danhmuc=DanhmucTruyen::find($id);
        return view('admincp.danhmuctruyen.edit')->with(compact('danhmuc'));
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
            'tendanhmuc'=>'required',
            'mota'=>'required',
            'kichhoat'=>'required',
        ],
        [
            'tendanhmuc.required'=>'Tên danh mục phải có',
            'mota.required'=>'Mô tả phải có',
        ]
    );
    $danhmuc=DanhmucTruyen::find($id);
    $danhmuc->tendanhmuc=$data['tendanhmuc'];
    $danhmuc->mota=$data['mota'];
    $danhmuc->kichhoat=$data['kichhoat'];
    $danhmuc->save();
    return redirect()->back()->with('status','Cập nhật danh mục truyện thành công');
      

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        DanhmucTruyen::find($id)->delete();
        return redirect()->back()->with('status','Xoá danh mục truyện thành công');
    }
}
