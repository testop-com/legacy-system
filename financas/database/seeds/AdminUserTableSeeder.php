<?php
use Illuminate\Database\Seeder;

class AdminUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$user = array(
                'email'=>'demo@n3.co.mz',
                'password'=>'$2y$10$GbgX0Z2DGHOJIWAkFbkXaOPGH1Fu8QBqktctseholx3RLlKHGM/Y6',
                'real_name'=>'Admin',
                'role_id'=>1,
                'inactive'=>0,
                'empresa_id'=>0,
                'remember_token'=>'XbPj4olmc87dlLBoQL2e3v9LJc23EEnoRAI5Pfv8MnGEUFq0ZYpaZAd5JuaW'
        );
        DB::table('users')->truncate();
        DB::table('users')->insert($user);
        

        DB::table('tipo_de_contas')->truncate();

        DB::table('tipo_de_contas')->insert([
                   ['nome' => 'conta em dinheiro'],
                   ['nome' => 'conta em cheque'],
                   ['nome' => 'conta em corrente'],
                   ['nome' => 'conta em poupanca'],

         ]);
         
         DB::table('versoes')->truncate();
         
         $versoesOld = array( 'nome' => 'Beta',
         'nr_versao' => '0001',
         'data' => '2020-12-01',
         'estado' => 'activo',
         'descricao' => 'A versao do facturacao com  a base de dados estruturada e one DB',);

         DB::table('versoes')->insert($versoesOld);

         DB::table('taxas')->truncate();

         $moeda['data_cambio']='1980-01-01';
         $moeda['compra']=1;
         $moeda['venda']=1;
         $moeda['status']='activo';
         $moeda['moedas_id']=1;
         $moeda['empresa_id']=null;
         DB::table('taxas')->insert($moeda);
         
         //
        //DB::table('moedas')->truncate();
 /*
         DB::table('moedas')->insert([
          ['id' => '1', 'nome' => 'MZN', 'singular' => 'Metical', 'plural' => 'Meticais', 'casas_decimais_sing'=>'','empresa_id'=>null],
          ['id' => '2', 'nome' => 'USD', 'singular' => 'Dollar', 'plural' => 'Dollars', 'casas_decimais_sing'=>'','empresa_id'=>null],
          ['id' => '3', 'nome' => 'EUR', 'singular' => 'Euro', 'plural' => 'Euros', 'casas_decimais_sing'=>'','empresa_id'=>null],
          ['id' => '4', 'nome' => 'GBP', 'singular' => 'Libra', 'plural' => 'Libra', 'casas_decimais_sing'=>'','empresa_id'=>null],
          ['id' => '5', 'nome' => 'ZAR', 'singular' => 'Rand', 'plural' => 'Rand', 'casas_decimais_sing'=>'','empresa_id'=>null],
          
          ]);

         */
          DB::table('categoria_vendas')->truncate();
          DB::table('termo_pagamento')->truncate();
          DB::table('tipo_imposto')->truncate();
          DB::table('marca')->truncate();
          DB::table('categoria')->truncate();
         
            DB::table('categoria_vendas')->insert([
            ['id' => '1', 'nome' => 'Vendas', 'descricao' => 'Vendas', 'tipo' => 'income','empresa_id'=>null],
            ['id' => '2', 'nome' => 'Compras', 'descricao' => 'Compras', 'tipo' => 'expense', 'empresa_id'=>null],
            ['id' => '3', 'nome' => 'Transferencias(entradas)', 'descricao' => 'Transferencias(entradas)', 'tipo' => 'income', 'empresa_id'=>null],
            ['id' => '4', 'nome' => 'Transferencia(Saida)', 'descricao' => 'Transferencia(Saida)', 'tipo' => 'expense', 'empresa_id'=>null],
           
            ]);

            DB::table('termo_pagamento')->insert([
            ['id' => '1', 'nome' => 'Pagamento na Entrega', 'dias_vencimento' => 0, 'default' => '','empresa_id'=>null],
            ['id' => '2', 'nome' => 'Apos 15 dias', 'dias_vencimento' => 15, 'default' => '', 'empresa_id'=>null],
            ['id' => '3', 'nome' => 'Apos 30 dias', 'dias_vencimento' => 30, 'default' => '', 'empresa_id'=>null],
            
            ]);

            DB::table('tipo_imposto')->insert([
              ['id' => '1', 'nome' => 'Isento', 'taxa_imposto' => 0, 'default' => 'yes','empresa_id'=>null],
              ['id' => '2', 'nome' => 'Regime Simplificado', 'taxa_imposto' => 3, 'default' => 'no', 'empresa_id'=>null],
              ['id' => '3', 'nome' => 'Iva', 'taxa_imposto' => 17, 'default' => 'no', 'empresa_id'=>null],
              
              ]);

              DB::table('marca')->insert([
                [ 'nome' => 'Sem Marca','empresa_id'=>null],
               ]);

                DB::table('categoria')->insert([
                  [ 'nome' => 'Sem Categoria','empresa_id'=>null,'status'=>'activo'],
                ]);

                DB::table('unidade_medida')->insert([
                  [ 'nome' => 'Unidade','empresa_id'=>null,'abreviatura'=>'UN'],
                ]);

              
              
    }
}