<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Developer;
use App\Models\Biodata;
use App\Models\Education;
use App\Models\Skill;
use App\Models\Experience;
use App\Models\Project;
use App\Http\Requests;
use App\Http\Requests\DeveloperRequest;
use App\Http\Controllers\Controller;

class DevelopersController extends Controller
{

	public function welcome(){
		return ("Hit - lfa.co/register - to register user OR lfa.co/developer/list - to list developers");
	}
   public function lists(){
   		$developers = Developer::all();
   		return view('developers.list',compact('developers')); 
   }

   public function detail($id){
   	$developer = Developer::findOrFail($id);
   	$biodata = $developer->biodata;
   	$education = $developer->education;
	   $skill = $developer->skill;
	   $experiences = $developer->experiences;
	   $projects = $developer->projects;

	   return view('developers.detail',compact('developer', 'biodata', 'skill','experiences','projects','education'));
   }

//	public function index($id){
//		$developer = Developer::findOrFail($id);
//		//dd($developer);
//		return view('developers.create',compact('developer'));
//	}

//	public function store(DeveloperRequest $request){
//		Biodata::create($request->all());
//		Education::create($request->all());
//		Experience::create($request->all());
//		Project::create($request->all());
//		Skill::create($request->all());
//		return redirect(route('developerList'));
//	}

	public function edit($id){

		$developer=Developer::findOrFail($id);
		$biodata = $developer->biodata;
		$education = $developer->education;
		$skill = $developer->skill;
		$experiences = $developer->experiences;
		$projects = $developer->projects;

		$information=[
			'developer'=>$developer,
			'biodata'=>$biodata,
			'education'=>$education,
			'skill'=>$skill,
			'experiences'=>$experiences,
			'projects'=>$projects
		];

		return view('developers.edit',compact('information','developer'));
	}

	public function update(DeveloperRequest $request, $id){

		$developer=Developer::findOrFail($id);

		$biodata = $developer->biodata;

		dd($biodata);
		$education = $developer->education;
		$skill = $developer->skill;
		$experiences = $developer->experiences;
		$projects = $developer->projects;

		$biodata->update($request->all());
		$education->update($request->all());
		$skill->update($request->all());
		$experiences->update($request->all());
		$projects->update($request->all());

		return redirect(route('listDeveloper'));


	}
}