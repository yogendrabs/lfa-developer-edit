<?php	
namespace App\Models;
use \Eloquent;

class Skill extends Eloquent 
{ 
	protected $fillable = [
		'developer_id',
		'language',
		'framework',
		'library',
		'tool',
		'storage',
		'other'
	];

	public function developer(){
		return $this->belongsTo(Developer::class);
	}

}