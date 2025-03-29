<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Force drop tables using raw SQL
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        
        DB::statement('DROP TABLE IF EXISTS whatsapp_flow_buttons');
        DB::statement('DROP TABLE IF EXISTS whatsapp_flow_screens');
        DB::statement('DROP TABLE IF EXISTS whatsapp_flows');
        
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Nothing to do in down migration since we're just dropping tables
    }
};
