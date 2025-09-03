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
        Schema::create('prices', function (Blueprint $table) {
            $table->id();
            $table->foreignId('item_unit_id')->constrained('item_units')->onDelete('cascade');
            $table->foreignId('retailer_branch_id')->constrained('retailer_branches')->onDelete('cascade');
            $table->date('date');
            $table->decimal('price', 10, 2);
            $table->decimal('discount', 10, 2);    
            $table->decimal('sell_price', 10, 2);   
            $table->userstamps();
            $table->userstampSoftDeletes();
            $table->timestamps();
            $table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('prices');
    }
};
