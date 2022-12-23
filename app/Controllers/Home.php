<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        return view('home');
    }
    
    public function contact()
    {
        return view('contact');
    }

    public function errorbeli()
    {
        return view('errorbeli');
    }

    public function diskon()
    {
        return view('diskon', );
    }


}