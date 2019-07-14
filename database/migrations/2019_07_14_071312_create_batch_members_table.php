<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBatchMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('batch_members', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('member_id');
            $table->foreign('member_id')->references('id')->on('members');
            $table->unsignedBigInteger('batch_id');
            $table->foreign('batch_id')->references('id')->on('batches');
            $table->date('joiningdate');
            $table->date('validupto');
            $table->string('duration',12);
            $table->string('package',50);
            $table->float('fees',12,2);
            $table->string('paymentdetails');
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
        Schema::dropIfExists('batch_members');
    }
}
