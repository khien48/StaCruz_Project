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
        Schema::create('students', function (Blueprint $table) {
            $table->id('lrn');
            $table->string('stu_lname', 10);
            $table->string('stu_fname', 10)->nullable(false);
            $table->string('stu_mname', 10)->nullable(false);
            $table->string('stu_suffix', 5)->nullable(false);
            $table->string('stu_address', 50)->nullable(false);
            $table->date('stu_birthdate')->nullable(false);
            $table->char('stu_gender', 1)->nullable(false);
            $table->binary('stu_form137')->nullable(false);
            $table->binary('stu_birthcerti', 1)->nullable(false);
            $table->string('grade_lvl', 6)->nullable(false);
            $table->boolean('stu_status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
