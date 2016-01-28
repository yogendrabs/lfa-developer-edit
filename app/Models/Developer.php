<?php	
namespace App\Models;
use \Eloquent;

class Developer extends Eloquent 
{ 
	protected $fillable = [
		'name',
		'email',
		'password',
		'image',
		'is_available',
		'del_flag'
	];

	public function biodata(){
		return $this->hasOne(Biodata::class);
	}

	public function education(){
		return $this->hasMany(Education::class);
	}

	public function skill(){
		return $this->hasOne(Skill::class);
	}

    public function experiences(){
        return $this->hasMany(Experience::class);
    }

    public function projects(){
        return $this->hasMany(Project::class);
    }

}