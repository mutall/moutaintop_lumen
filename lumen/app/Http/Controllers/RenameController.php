<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class RenameController extends Controller{
    function index() {
        
        $pictures = DB::table('picture')
                ->get();
        
        return view('rename', ['pictures'=>$pictures]);
        
    }
    
    function update(Request $request) {
        DB::table('picture')
             ->where('picture', $request->input('id'))
             ->update(['caption' => $request->input('caption')]);
     }
}

