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
    
             echo "success";
     }

     function delete(Request $request){
         DB::table('picture')->where('picture', $request->input('id'))->delete();
         echo "deleted";
     }

     function change_slider(Request $request){
        $location = DB::table('picture')
                        ->select('location')
                        ->where('picture', $request->input('id'))
                        ->first();
     
        Log::info($location->location);
        if($location->location == "slider"){
            DB::table('picture')
             ->where('picture', $request->input('id'))
             ->update(['location' => 'gallery']);
        }else{
            DB::table('picture')
            ->where('picture', $request->input('id'))
            ->update(['location' => 'slider']);
        }

        $new_location =DB::table('picture')
                        ->select('location')
                        ->where('picture', $request->input('id'))
                        ->first();
        echo $new_location->location;
    }

}