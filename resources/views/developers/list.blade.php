@extends('layouts.master')
@section('content')
<h1>Developers List </h1>
<table class="table table-bordered">
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Available</th>
		<th>Action</th>
	</tr>
@foreach($developers as $developer)	
	<tr> 
		<td><a href="{{route('detailDeveloper', $developer->id)}}">{{$developer->name}}</a></td>
		<td>{{$developer->email}}</td>
		<td>{{$developer->is_available}}</td>
		<td><a href="{{route('editDeveloper', [$developer->id])}}">Edit</a></td>
	</tr>	
@endforeach
</table>
@stop
