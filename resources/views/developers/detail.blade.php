@extends('layouts.master')
@section('content')
<h1>Developer Detail </h1>
<hr>
<h3>{{ $developer->name }}</h3>

<h6>Email : {{ $developer->email }}</h6>

<h6>Available : {{ $developer->is_available }}</h6>

<p>Biodata : {{ $biodata->biodata}}</p>

<p>Education : </p><ul>
	@foreach($education as $educations)
	<li>Course : {{ $educations->course }} / University : {{ $educations->university }} / Year : {{ $educations->duration }}</li>
		@endforeach
</ul>

	<p>Skills :	</p><ul>
					<li>Language : {{ $skill->language }}</li>
					<li>Framework : {{ $skill->framework }}</li>
					<li>Library : {{ $skill->library }}</li>
					<li>Tools : {{ $skill->tool }}</li>
					<li>Storage : {{ $skill->storage }}</li>
					<li>Others : {{ $skill->other }}</li>
				</ul>
	<p>Experiences : </p><ul>
							@foreach($experiences as $experience)
							<li>{{ $experience->title }} : {{ $experience->detail }}</li>
								@endforeach
						</ul>
<p>Projects : </p><ul>
	@foreach($projects as $project)
		<li>{{ $project->title }} : {{ $project->detail }}</li>
	@endforeach
</ul>


@stop