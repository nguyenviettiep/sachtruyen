<?php

namespace App\Http\Controllers;
use App\Models\Chapter;
use App\Models\Truyen;
use Illuminate\Http\Request;

class ChapterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $chapters=Chapter::with('truyen')->orderBy('id','DESC')->get();
        return view('admincp.chapter.index')->with(compact('chapters'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $truyen=Truyen::orderBy('id','DESC')->get();
        return view('admincp.chapter.create')->with(compact('truyen'));
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
            'truyen_id'=>'required',
            'tieude'=>'required',
            'slug_chapter'=>'required',
            'tomtat'=>'required',
            'noidung'=>'required',
            'kichhoat'=>'required',
        ],
        [
            'tenchapter.required'=>'Tên chapter không được để trống',
            'tenchapter.unique'=>'Tên chapter đã có',
            'slug_chapter.required'=>'slug không được để trống',
            'tomtat.required'=>'Tóm tắt không được để trống',
            'noidung.required'=>'Nội dung không được để trống',
        ]
    
    );
    $chapter=new Chapter();
    $chapter->truyen_id=$data['truyen_id'];
    $chapter->tieude=$data['tieude'];
    $chapter->tomtat=$data['tomtat'];
    $chapter->noidung=$data['noidung'];
    $chapter->kichhoat=$data['kichhoat'];
    $chapter->slug_chapter=$data['slug_chapter'];
    $chapter->save();
    return redirect()->back()->with('status','Thêm chapter thành công');
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
         $chapter=Chapter::find($id);
         $truyen=Truyen::orderBy('id','DESC')->get();
        return view('admincp.chapter.edit')->with(compact('chapter','truyen'));

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
            'truyen_id'=>'required',
            'tieude'=>'required',
            'slug_chapter'=>'required',
            'tomtat'=>'required',
            'noidung'=>'required',
            'kichhoat'=>'required',
        ],
        [
            'tenchapter.required'=>'Tên chapter không được để trống',
            'tenchapter.unique'=>'Tên chapter đã có',
            'slug_chapter.required'=>'slug không được để trống',
            'tomtat.required'=>'Tóm tắt không được để trống',
            'noidung.required'=>'Nội dung không được để trống',
        ]
    
    );
            $chapter= Chapter::find($id);
            $chapter->truyen_id=$data['truyen_id'];
            $chapter->tieude=$data['tieude'];
            $chapter->tomtat=$data['tomtat'];
            $chapter->noidung=$data['noidung'];
            $chapter->kichhoat=$data['kichhoat'];
            $chapter->slug_chapter=$data['slug_chapter'];
            $chapter->save();
            return redirect()->back()->with('status','Cập nhật chapter thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Chapter::find($id)->delete();
        return redirect()->back()->with('status','Xoá chapter thành công');
    }
}
