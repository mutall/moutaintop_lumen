<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class DeleteController extends Controller{
    public function index(Request $request){
        DB::table($request->get('table'))->where($request->get('table'), $request->get('id'))->delete();
    }
    
}
