<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddRequisicaoToFoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasColumn('fo', 'requisicao')) { } else {

            Schema::table('fo', function (Blueprint $table) {
                $table->string('requisicao', 20)->nullable();

            });
         }

         
    if (Schema::hasTable('role_armazem')) { } else {

        Schema::create('role_armazem', function (Blueprint $table) {
          $table->increments('id'); 
          $table->integer('armazem_id')->nullable(); 
          $table->integer('role_id')->nullable();  
          $table->string('status')->nullable(); 
          $table->integer('empresa_id')->unsigned()->nullable();
          $table->foreign('empresa_id')
            ->references('id')
            ->on('cust_empresa')
            ->onDelete('cascade');
          $table->timestamps();
        });
      }

      if (Schema::hasTable('ds_categoria')) { } else {

        Schema::create('ds_categoria', function (Blueprint $table) {
          $table->increments('id'); 
          $table->string('nome')->nullable(); 
          $table->string('status')->nullable(); 
          $table->integer('empresa_id')->unsigned()->nullable();
          $table->foreign('empresa_id')
            ->references('id')
            ->on('cust_empresa')
            ->onDelete('cascade');
          $table->timestamps();
        });
      }

      
  
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('fo', function (Blueprint $table) {
            $table->dropColumn('requisicao', 20)->nullable();
        });
    }
}
