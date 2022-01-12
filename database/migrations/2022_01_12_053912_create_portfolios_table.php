<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePortfoliosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('portfolios', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('package_id')->nullable()->index();
            $table->foreign('package_id')->references('id')->on('packages')->onDelete('cascade');
            $table->string('name')->unique();
            $table->string('event_planner')->nullable();
            $table->string('photographer_name')->nullable();
            $table->string('location')->nullable();
            $table->string('thumbnail')->nullable();
            $table->text('videos')->nullable();
            $table->text('pictures')->nullable();
            $table->text('description')->nullable();
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
        Schema::dropIfExists('portfolios');
    }
}
