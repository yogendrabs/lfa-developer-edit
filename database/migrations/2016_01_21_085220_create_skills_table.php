<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSkillsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('skills',function(Blueprint $table){
            $table->increments('id');
            $table->integer('developer_id')->index()->unsigned();
            $table->foreign('developer_id')->on('developers')->references('id');
            $table->string('language');
            $table->string('framework');
            $table->string('library');
            $table->string('tool');
            $table->string('storage');
            $table->string('other');
            $table->timestamps();
        }); 
    
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('skills');
    }
}
