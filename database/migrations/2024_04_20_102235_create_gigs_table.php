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
            $table->unsignedInteger('created_by')->nullable();
            $table->enum('status', ['inactive', 'active'])->default('inactive');
            $table->timestamps();
   
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

