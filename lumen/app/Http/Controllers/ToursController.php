<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class ToursController extends Controller
{
    public function index()
    {

        return view('tours', ['itinerary' => DB::table('itinerary')->get()]);
    }

    public function single($id)
    {
        // return DB::table('itinerary')->where('itinerary', $id)->get();
        return view('single', ['itinerary' => DB::table('itinerary')->where('itinerary', $id)->first()]);
    }
}
