{!! Form::label('biodata','Biodata') !!}
{{--{{dd($information)}}--}}
<div class="form-group">
    {!! Form::textarea('biodata', $information["biodata"]["biodata"],['class'=>'form-control','placeholder'=>'Biodata', 'style'=>'height:35px']) !!}
</div>

{!! Form::label('','Education') !!}
<div class="row">
    <div class="col-md-4">
        {!! Form::text('course',$information["education"][0]["course"],['class'=>'form-control','placeholder'=>'Course']) !!}
    </div>
    <div class="col-md-4">
        {!! Form::text('university',$information["education"][0]["university"],['class'=>'form-control','placeholder'=>'University']) !!}
    </div>
    <div class="col-md-4">
        {!! Form::text('duration',$information["education"][0]["duration"],['class'=>'form-control','placeholder'=>'Duration']) !!}
    </div>
</div>

{!! Form::label('','Experience') !!}
<div class="row">
    <div class="col-md-4">
        {!! Form::text('title',$information["experiences"][0]["title"],['class'=>'form-control','placeholder'=>'Title']) !!}
    </div>
    <div class="col-md-8">
        {!! Form::textarea('detail',$information["experiences"][0]["detail"],['class'=>'form-control','placeholder'=>'Detail', 'style'=>'height:35px']) !!}
    </div>
</div>

{!! Form::label('','Projects') !!}
<div class="row">
    <div class="col-md-4">
        {!! Form::text('title',$information["projects"][0]["title"],['class'=>'form-control','placeholder'=>'Title']) !!}
    </div>
    <div class="col-md-8">
        {!! Form::textarea('detail',$information["projects"][0]["detail"],['class'=>'form-control','placeholder'=>'Detail', 'style'=>'height:35px']) !!}

    </div>
</div>
{{--{{dd($information)}}--}}
{!! Form::label('','Skills') !!}
<div class="row form-group">
    <div class="col-md-4">
        {!! Form::text('language',$information["skill"]["language"],['class'=>'form-control','placeholder'=>'Languages']) !!}
    </div>
    <div class="col-md-4">
        {!! Form::text('framework',$information["skill"]["framework"],['class'=>'form-control','placeholder'=>'Frameworks']) !!}
    </div>
    <div class="col-md-4">
        {!! Form::text('library',$information["skill"]["library"],['class'=>'form-control','placeholder'=>'Libraries']) !!}
    </div>
</div>
<div class="row form-group">
    <div class="col-md-4">
        {!! Form::text('tool',$information["skill"]["tool"],['class'=>'form-control','placeholder'=>'Tools']) !!}
    </div>
    <div class="col-md-4">
        {!! Form::text('storage',$information["skill"]["storage"],['class'=>'form-control','placeholder'=>'Storage']) !!}
    </div>
    <div class="col-md-4">
        {!! Form::text('other',$information["skill"]["other"],['class'=>'form-control','placeholder'=>'Other']) !!}
    </div>

</div>
<div class="pull-right">
    <div class="">
        <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
    </div>
</div>