<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name',50);
            $table->tinyInteger('age')->nullable();
            $table->string('contact',14)->nullable();
            $table->string('email')->nullable();
            $table->text('address')->nullable();
            $table->integer('height')->nullable();          
            $table->integer('weight')->nullable();  
            $table->date('birth_date')->nullable();         
            $table->string('reference',50)->nullable();
            $table->string('married',10)->nullable();
            $table->string('status',20)->nullable();
            $table->string('goal')->nullable();
            $table->text('medical')->nullable();
            $table->text('comments')->nullable();
            $table->string('updateson')->nullable();
            $table->date('joining_date')->nullable();
            $table->string('followupby')->nullable();            
            $table->string('nextfollowup')->nullable();
            $table->text('remarks')->nullable();
            $table->text('service')->nullable();
            $table->text('servicecomment')->nullable();    
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('members');
    }
}
