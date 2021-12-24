<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('slug');
            $table->string('category_id');
            $table->string('featured_image');
            $table->longText('description');
            $table->longText('headingone');
            $table->longText('contentone');
            $table->longText('headingtwo');
            $table->longText('contenttwo');
            $table->longText('headingthree');
            $table->longText('contentthree');
            $table->longText('headingfour');
            $table->longText('contentfour');
            $table->longText('headingfive');
            $table->longText('contentfive');
            $table->longText('headingsix');
            $table->longText('contentsix');
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
        Schema::dropIfExists('blogs');
    }
}
