<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class GalleryController extends Controller
{
    public function index()
    {
        return view('gallery', ['images' => DB::table('picture')->where('location', 'gallery')->get()]);
    }
}
