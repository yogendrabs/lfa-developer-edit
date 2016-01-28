<?php	
namespace App\Models;
use \Eloquent;

class Biodata extends Eloquent 
{ 
	protected $fillable = [
		'developer_id',
		'biodata'
	];


	public function developer(){
		return $this->belongsTo(Developer::class);
	}


}
