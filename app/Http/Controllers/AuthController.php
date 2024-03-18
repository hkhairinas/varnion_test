<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function index()
    {
        if (Auth::check()) {
            return redirect('home');
        } else {
            return view('login');
        }
    }


    public function authLogin(Request $request)
    {
        $data = [
            'email' => $request->input('email'),
            'password' => $request->input('password'),
        ];

        if (Auth::Attempt($data)) {
            return redirect('home');
        } else {
            return redirect('login')->with('error', 'Email atau Password Salah');
        }
    }

    public function authRegister(Request $request)
    {
        $user = User::create([
            'email' => $request->email,
            'name' => $request->name,
            'password' => Hash::make($request->password),
        ]);
        return redirect('/')->with('status', 'Daftar Berhasil!');
    }

    public function authLogout()
    {
        Auth::logout();
        return redirect('/');
    }
}
