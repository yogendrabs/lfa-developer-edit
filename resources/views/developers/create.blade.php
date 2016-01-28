@extends('layouts.master')

@section('content')

    <h1>Enter Details</h1>
    <hr>
    <form class="form-group" role="form" method="POST" action="{{ route('developerCreate') }}">
        <input type="hidden" value="{{ csrf_token() }}" name="_token" />


        <input type="hidden" value="{{ $developer->id }}" name="developer_id" />
        @include('developers._form')
    </form>



    @stop