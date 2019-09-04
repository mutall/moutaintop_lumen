<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function __construct()
    {
        $this->name = "sam";
    }
    public function index()
    {
        //return the slider images
        $slider = DB::table('picture')
            ->where('location', 'slider')
            ->get();
        
        $places = DB::table('picture')
            ->where('location', 'places')
            ->get();
        
        return view('home', ['slider' => $slider, 'places'=>$places]);
    }
}
