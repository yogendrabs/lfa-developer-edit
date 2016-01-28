<?php	
namespace App\Models;
use \Eloquent;

class Project extends Eloquent 
{ 
	protected $fillable = [
		'developer_id',
		'title',
		'detail'
	];

	public function developer(){
		return $this->belongsTo(Developer::class);
	}

}