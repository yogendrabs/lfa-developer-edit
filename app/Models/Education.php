<?php	
namespace App\Models;
use \Eloquent;

class Education extends Eloquent 
{ 
	protected $fillable = [
		'developer_id',
		'course',
		'university',
		'duration'
	];

	public function developer(){
		return $this->belongsTo(Developer::class);
	}

}