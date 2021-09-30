<?php
namespace App\Http\Controllers;

use App\Models\Chapter;
use Illuminate\Http\Request;
use App\Models\DanhmucTruyen;
use App\Models\Truyen;
class indexController extends Controller
{
  
    public function home()
    {
        return view('pages.home');
    }
    public function index()
    {
        $danhmucs=DanhmucTruyen::orderBy('id','DESC')->get();
        $truyens=Truyen::orderBy('id','DESC')->where('kichhoat',1)->get();
        return view('pages.home')->with(compact('danhmucs','truyens'));
    }
    public function danhmuc($slug)
    {
       $danhmucs=DanhmucTruyen::orderBy('id','DESC')->get();
       $danhmuc_id=DanhmucTruyen::where('slug_danhmuc',$slug)->first();
       $truyens=Truyen::orderBy('id','DESC')->where('kichhoat',1)->where('danhmuc_id',$danhmuc_id->id)->get();
        return view('pages.danhmuc')->with(compact('danhmucs','truyens','danhmuc_id'));
    }
   public function xemtruyen($slug)
   {
       $danhmucs=DanhmucTruyen::orderBy('id','DESC')->get();
       $truyens=Truyen::with('danhmuctruyen')->where('slug_truyen',$slug)->where('kichhoat',1)->first();
       $chapters=Chapter::with('truyen')->orderBy('id','DESC')->where('truyen_id',$truyens->id)->get();
       $chapter_dau=Chapter::with('truyen')->orderBy('id','ASC')->where('truyen_id',$truyens->id)->first();

       $cungdanhmuc=Truyen::with('danhmuctruyen')->where('danhmuc_id',$truyens->danhmuctruyen->id)->whereNotIn('id',[$truyens->id])->get();
       return view('pages.truyen')->with(compact('danhmucs','truyens','chapters','cungdanhmuc','chapter_dau'));

   }
   public function xemchapter($slug)
   {
    $danhmucs=DanhmucTruyen::orderBy('id','DESC')->get();
    $truyen=Chapter::where('kichhoat',1)->where('slug_chapter',$slug)->first();
    $chapter=Chapter::with('truyen')->orderBy('id','DESC')->where('slug_chapter',$slug)->where('truyen_id',$truyen->truyen_id)->first();
    $all_chapter=Chapter::with('truyen')->orderBy('id','ASC')->where('truyen_id',$truyen->truyen_id)->get();
    $next_chapter=Chapter::where('truyen_id',$truyen->truyen_id)->where('id','>',$chapter->id)->min('slug_chapter');
    $previous_chapter=Chapter::where('truyen_id',$truyen->truyen_id)->where('id','<',$chapter->id)->max('slug_chapter');
    $max_id=Chapter::where('truyen_id',$truyen->truyen_id)->orderBy('id','DESC')->first();
    $min_id=Chapter::where('truyen_id',$truyen->truyen_id)->orderBy('id','ASC')->first();
    
    return view('pages.chapter')->with(compact('danhmucs','chapter','all_chapter','next_chapter','previous_chapter','max_id','min_id'));
    
   }
   public function timkiem()
   {
       $danhmucs=DanhmucTruyen::orderBy('id','DESC')->get();
       $tukhoa=$_GET['tukhoa'];
       $truyens=Truyen::with('danhmuctruyen')->where('tentruyen','LIKE','%'.$tukhoa.'%')->get();
       return view('pages.timkiem')->with(compact('truyens','danhmucs','tukhoa'));
   }
}


?>