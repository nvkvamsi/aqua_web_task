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
        Schema::create('careers', function (Blueprint $table) {
            $table->id();
            // $table->string('name');
            // $table->string('email');
            $table->unsignedBigInteger('job_id')->nullable();
            $table->unsignedBigInteger('applied_by')->nullable();
            $table->enum('checked', ['0', '1'])->default('0');
            // $table->string('phone_number');
            $table->text('cover_letter');
            $table->string('resume_path');
            $table->timestamps();
            // $table->foreign('job_id')->references('id')->on('jobs');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('careers');
    }
};
