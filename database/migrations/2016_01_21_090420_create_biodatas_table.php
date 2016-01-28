<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBiodatasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::create('biodatas',function(Blueprint $table){
            $table->increments('id');
            $table->integer('developer_id')->index()->unsigned();
            $table->foreign('developer_id')->on('developers')->references('id');
            $table->string('biodata');
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
       Schema::drop('biodatas');
    }
}
