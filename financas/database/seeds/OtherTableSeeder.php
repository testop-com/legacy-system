<?php

use Illuminate\Database\Seeder;

class OtherTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */



    public function run()
    {
        //tipo_de_contas
        //tipo_de_contas
        DB::table('tipo_de_contas')->truncate();

           DB::table('tipo_de_contas')->insert([
                      ['nome' => 'conta em dinheiro'],
                      ['nome' => 'conta em cheque'],
                      ['nome' => 'conta em corrente'],
                      ['nome' => 'conta em poupanca'],

            ]);
            
            DB::table('versoes')->truncate();
            
           DB::table('tipo_de_contas')->insert([
                 ['version' => '0001'],
                 ['date_version' => '01-12-2020'],
                 ['descricao' => 'A versao do facturacao com  a base de dados estruturada e one DB'],
            ]);
            
            



    }


}
