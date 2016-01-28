<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\RegisterForm;
use App\Models\Developer;

class RegistrationController extends Controller
{
    public function register(){
        return view('registration.register');
    }

    public function postRegister(RegisterForm $request)
    {
        Developer::create($request->all());

        return redirect(route('listDeveloper'));
    }
}
