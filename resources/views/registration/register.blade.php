@extends('layouts.master')

@section('content')

    <h1>Registraion</h1>

    <hr>

    <div class="row col-lg-8">

        {!! Form::open(['url' => route('postRegister') ]) !!}

        <div class="form-group">
            <input type="text" class="form-control" name="name" placeholder="Name">
            <span>{{ $errors->first('name') }}</span>
        </div>

        <div class="form-group">
            <input type="text" class="form-control" name="email" placeholder="Email">
            <span>{{ $errors->first('email') }}</span>
        </div>

        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password">
            <span>{{ $errors->first('password') }}</span>
        </div>

        <div class="form-group">
            <input type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password">
            <span>{{ $errors->first('password_confirmation') }}</span>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-info btn-md">Register</button>
        </div>

        {!! Form::close() !!}

    </div>

@stop