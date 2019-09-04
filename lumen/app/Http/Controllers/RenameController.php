<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class ChangeController extends Controller{
    function rename(Request $request) {
        DB::table('picture')
             ->where('picture', $request->input('id'))
             ->update(['caption' => $request->input('caption')]);
     }

     function delete(Request $request){
         DB::table('picture')->where('picture', $request->input('id'))->delete();
     }
}