<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('gigs', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('description');
            $table->string('location')->nullable();
            $table->string('salary')->nullable();
            $table->string('experience')->nullable();
            $table->enum('job_type', ['full-time', 'part-time', 'contract']);
            $table->string('company_name')->nullable();
            $table->text('responsibilities')->nullable();
            $table->string('internal_link')->nullable();
            $table->string('technology')->nullable();
            $table->string('state')->nullable();
            $table->string('country')->nullable();
            $table->string('city')->nullable();
            $table->string('address')->nullable();
            $table->text('short_description')->nullable();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->enum('status', ['inactive', 'active'])->default('inactive');
            $table->enum('checked', ['0', '1'])->default('0');
            $table->timestamps();
            $table->foreign('created_by')->references('id')->on('users');
   
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('gigs');
    }
};

