<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    //
    public function index(){
        // Hiển thị form login
        dd('show login form');

    }
    public function register(Request $request){
        // xử lý logic register
    }
    public function login(Request $request){
        // xử lý logic login
    }
    public function logout(){
        // Xử lý logout
    }
}
