@extends('login.base')
<?php
$perusahaan = \App\Models\Perusahaan::first();
?>
@section('title', 'Login')

@section('content')

<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
    <form action="{{ route('login') }}" method="POST" class="login100-form validate-form">
        @csrf

        <span class="login100-form-title p-b-37">
            {{ $perusahaan->nama_website }}
        </span>
        <!-- //logo perusahaan yang sudah diupload -->
        <!-- <div class="text-center">
            <img src="{{ asset('storage/images/' . $perusahaan->path_logo) }}" alt="logo" width="100px" height="100px">
        </div> -->


        <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
            <input class="input100" type="text" name="email" placeholder="Email">
            <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
            <input class="input100" type="password" name="password" placeholder="Password">
            <span class="focus-input100"></span>
        </div>

        <div class="container-login100-form-btn">
            <button class="login100-form-btn">
                Sign In
            </button>
        </div>
        <div class="mt-3"></div>
        <div class="text-center">
            <a href="{{ route('forget-password.getEmail') }}" class="txt2 hov1">
                Lupa Password?
            </a>
        </div>
    </form>
</div>
@endsection