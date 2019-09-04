<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Contracts\Encryption\DecryptException;

class AuthController extends Controller {

    public function page() {
        return view('login', ['err'=> '']);
    }

    public function authenticate(Request $request) {
        $username = $request->input('username');

        $result = DB::table('users')
                ->where('name', "$username")
                ->first();
        if (isset($result->name)) {
            $password = $request->input('password');
            $decrypt_password = Crypt::decrypt($result->password);
            
            if (strcmp($decrypt_password, $password) == 0) {
                return view('dashboard', ['user' => $result->name]);
            }else{
                
                return view('login', ['err'=>"invalid password"]);
            }
        } else {
            return view('login', ['err'=>"invalid username"]);
        }
    }
    
    
    //for inserting new users to the database
    public function user(){
//        DB::table('users')->insert([
//            ['name' =>'amshel',  'email' => 'amshelhack3r@gmail.com', 'password' => Crypt::encrypt('xanthosis')],
//            ['name' =>'mountaintop',  'email' => 'mountaintopsafaris@gmail.com', 'password' => Crypt::encrypt('21zach31')]
//            ]);
    }

}
