<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.* Run the migrations.
     */
    public function up(): void
    {
        Schema::create('faculties', function (Blueprint $table) {
            $table->id('faculty_id'); // Assuming 'id' as auto-incrementing primary key
            $table->string('fac_lname', 10); // Primary key cannot be duplicated, so it's unusual to have multiple primary keys
            $table->string('fac_fname', 10); // Changed from 'stu_fname' to 'fac_fname'
            $table->string('fac_mname', 10);
            $table->string('fac_suffix', 5);
            $table->string('fac_address', 50);
            $table->date('fac_birthdate');
            $table->char('fac_gender', 1);
            $table->string('fac_contactNo', 12); // Assuming contact number as string
            $table->string('fac_position', 5); // Corrected 'fac_postion' to 'fac_position'
            $table->binary('fac_pds');
            $table->string('fac_status', 6);
            $table->timestamps();
            
            // Setting composite primary key is not supported directly in Laravel migration. Consider using unique constraint instead
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('faculties');
    }
};
