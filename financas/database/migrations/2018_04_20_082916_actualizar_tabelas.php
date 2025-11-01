<?php
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\Schema;

class ActualizarTabelas extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {

    if (Schema::hasTable('empresas')) { } else {
      Schema::create('empresas', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome', 50)->nullable();
        $table->string('email', 50)->nullable();
        $table->string('nuit', 50)->nullable();
        $table->string('caixa_postal', 10)->nullable();
        $table->string('contacto_1', 20)->nullable();
        $table->string('contacto_2', 20)->nullable();
        $table->string('morada', 150)->nullable();
        $table->string('contabancaria_1', 150)->nullable();
        $table->string('contabancaria_2', 150)->nullable();
        $table->timestamps();
      });
    
      
   if (Schema::hasTable('cust_empresa')){ }else{
 
    Schema::create('cust_empresa', function (Blueprint $table) {
      $table->increments('id');
      $table->string('nome', 150)->nullable();
      $table->string('email', 50)->nullable();
      $table->string('nuit', 50)->nullable();
      $table->string('caixa_postal', 10)->nullable();
      $table->string('contacto_1', 20)->nullable();
      $table->string('contacto_2', 20)->nullable();
      $table->string('morada', 150)->nullable();
      $table->string('logo', 150)->nullable();
      $table->date('dia_inicio')->nullable();
      $table->date('dia_fim')->nullable();
      $table->integer('pacote_id')->nullable(); 
      $table->string('idioma_default', 50)->nullable();
      $table->integer('imposto_default')->nullable();
      $table->integer('empresa_id')->nullable();
      $table->integer('user_registar')->nullable(); 
      $table->integer('user_update')->nullable(); 
   
      
    }); 
}

if (Schema::hasTable('users')) { } else {
  Schema::create('users', function (Blueprint $table) {
    $table->increments('id');
    $table->string('user_id',60)->nullable();
    $table->string('password',100)->nullable();
    $table->string('real_name',100)->nullable();
    $table->string('email',100)->nullable();
    $table->string('picture',100)->nullable();
    $table->string('inactive',100)->nullable();
    $table->string('remember_token',100)->nullable(); 
    $table->string('phone',30)->nullable();
    $table->integer('role_id')->nullable();
    $table->integer('armazem_id')->nullable();
    $table->integer('empresa_id')->nullable(); 
    $table->integer('user_registar')->nullable(); 
    $table->integer('user_update')->nullable(); 
      $table->timestamps();
    });
 }

 
    // Entidade
    if (Schema::hasTable('ag')) { } else {

      Schema::create('ag', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome',100)->nullable(); 
        $table->string('status',20)->default('activo');  
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }




    // Cliente
    if (Schema::hasTable('cl')) { } else {

      Schema::create('cl', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable(); 
        $table->string('email',20)->nullable(); 
        $table->string('telefone',20)->nullable(); 
        $table->string('celular',20)->nullable(); 
        $table->string('morada')->nullable(); 
        $table->string('cidade',20)->nullable(); 
        $table->string('provincia',20)->nullable(); 
        $table->string('nuit',10)->nullable(); 
        $table->integer('imposto'); 
        $table->double('desconto'); 
        $table->string('motivo')->nullable(); 
        $table->string('status')->nullable(); 
        $table->string('cliente_generico',10)->nullable(); 
        $table->string('caixa_postal',10)->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }

    // Fornecedor
    if (Schema::hasTable('fl')) { } else {

      Schema::create('fl', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome',100)->nullable(); 
        $table->string('email',20)->nullable(); 
        $table->string('telefone',20)->nullable(); 
        $table->string('celular',20)->nullable(); 
        $table->string('morada')->nullable(); 
        $table->string('cidade',20)->nullable(); 
        $table->string('provincia',20)->nullable(); 
        $table->string('nuit',20)->nullable();  
        $table->string('pais',20)->nullable(); 
        $table->string('status')->nullable(); 
        $table->string('caixa_postal')->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }

    // Lotes e validades
    if (Schema::hasTable('se')) { } else {

      Schema::create('se', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable(); 
        $table->date('data_inicio')->nullable(); 
        $table->date('data_fim')->nullable();  
        $table->string('status')->nullable();  
        $table->string('codigo')->nullable();  

        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 

        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

        $table->timestamps();
      });
    }

    if (Schema::hasTable('permissions')) { } else {

      Schema::create('permissions', function (Blueprint $table) {
        $table->increments('id');
        $table->string('name')->nullable(); 
        $table->string('display_name')->nullable(); 
        $table->string('description')->nullable();
        $table->string('categoria')->nullable();   

        $table->timestamps();
      });
    }


      if (Schema::hasTable('permission_role')) { } else {
            Schema::create('permission_role', function (Blueprint $table) {
                $table->increments('id');
                $table->integer('permission_id');
                $table->integer('role_id');
                $table->timestamps();
            });
    }

    

    if (Schema::hasTable('roles')) { } else {
            Schema::create('roles', function (Blueprint $table) {
                $table->increments('id');
                $table->string('display_name', 255)->nullable();
                $table->string('name', 100);
                $table->string('description', 255)->nullable();
                $table->integer('empresa_id')->nullable(); 
                $table->integer('user_registar')->nullable(); 
                $table->integer('user_update')->nullable(); 
                $table->timestamps();
            });
    }




    if (Schema::hasTable('role_user')) { } else {

      Schema::create('role_user', function (Blueprint $table) {
        $table->increments('id');
        $table->integer('user_id')->unsigned()->nullable(); 
        $table->integer('role_id')->unsigned()->nullable();  

        $table->timestamps();
      });
    }

    // Lotes e validades
    if (Schema::hasTable('termo_pagamento')) { } else {

      Schema::create('termo_pagamento', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable(); 
        $table->integer('dias_vencimento')->nullable(); 
        $table->string('default')->default('no');  
        $table->string('status')->nullable();  
      
        $table->integer('empresa_id')->unsigned()->nullable();

        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

        $table->timestamps();
      });
    }


    //Tabela de contas bancarias,  
    if (Schema::hasTable('bl')) { } else {

        Schema::create('bl', function (Blueprint $table) {
          $table->increments('id');
    
          $table->integer('tipo_de_conta_id')->nullable();
          $table->string('nome', 100)->nullable(); 
          $table->string('numero', 100)->nullable(); 
          $table->string('nome_do_banco', 100)->nullable(); 
          $table->string('endereco_do_banco', 100)->nullable(); 
         
          $table->integer('conta_padrao')->nullable(); 
          $table->integer('excluida')->default(0); 
          $table->string('descricao')->nullable();

          $table->string('rodape', 70)->nullable();
          $table->string('nib', 70)->nullable();
          $table->string('iban', 70)->nullable();
          $table->string('swift', 70)->nullable();

          $table->integer('empresa_id')->unsigned()->nullable();
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }


    //Tabela de transacoes bancarias, 
   if (Schema::hasTable('ol')) { } else {

        Schema::create('ol', function (Blueprint $table) {
          $table->increments('id');
    
          $table->double('montante')->nullable();
          $table->string('tipo_de_transacao', 100)->nullable(); 
          $table->date('data_transacao')->nullable(); 
         
          $table->string('referencia',30)->nullable(); 
          $table->string('descricao')->nullable(); 
  
          $table->integer('conta_bancaria_id')->nullable();
          $table->integer('conta_destino_id')->nullable();  

          $table->integer('usuario_id')->nullable(); 
          $table->integer('categoria_id')->nullable();
          $table->integer('metodo_pagamento_id')->nullable();

          $table->string('anexos')->nullable();

          $table->integer('empresa_id')->unsigned()->nullable();
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 
          
          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }


       //Tabela de entidades, 
   if (Schema::hasTable('entidades')) { } else {

        Schema::create('entidades', function (Blueprint $table) {
          $table->increments('id');
    
          $table->string('nome', 70)->nullable();
          $table->integer('person_id')->nullable();

          $table->string('endereco', 70)->nullable(); 
          $table->string('estado', 20)->nullable()->default('activo'); 

          $table->integer('empresa_id')->unsigned()->nullable();
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }

     

    //Tabela de tipo de contas, 
      if (Schema::hasTable('tipo_de_contas')) { } else {

        Schema::create('tipo_de_contas', function (Blueprint $table) {
          
          $table->increments('id');
          $table->string('nome', 100)->nullable(); 

          $table->integer('empresa_id')->unsigned()->nullable();

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }


       //Tabela de metodos de pagamento, 
      if (Schema::hasTable('metodos_pagamento')) { } else {

        Schema::create('metodos_pagamento', function (Blueprint $table) {
          
          $table->increments('id');
          $table->string('nome', 70)->nullable();

          $table->integer('empresa_id')->unsigned()->nullable();

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }


      //Tabela de categoria de vendas, 
      if (Schema::hasTable('categoria_vendas')) { } else {

        Schema::create('categoria_vendas', function (Blueprint $table) {
          
          $table->increments('id');
          $table->string('nome', 70)->nullable();
          $table->string('descricao', 70)->nullable();
          $table->string('tipo', 50)->nullable();

          $table->integer('empresa_id')->unsigned()->nullable();
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }

      //Tabela de moedas, 
      if (Schema::hasTable('moedas')) { } else {

        Schema::create('moedas', function (Blueprint $table) {
          
          $table->increments('id');
          $table->string('nome', 70)->nullable();
          $table->string('singular', 70)->nullable();
          $table->string('plural', 70)->nullable();
          $table->string('casas_decimais_sing', 70)->nullable();
          $table->string('casas_decimais_plu', 70)->nullable();     
          $table->integer('empresa_id')->nullable(); 

          $table->timestamps();
        });
      }

       //Tabela de taxas, 
      if (Schema::hasTable('taxas')) { } else {

        Schema::create('taxas', function (Blueprint $table) {
          
          $table->increments('id');
          $table->date('data_cambio')->nullable();
          $table->double('compra')->nullable();
          $table->double('venda')->nullable();
          $table->integer('moedas_id')->nullable();
          $table->string('status', 50)->nullable(); 
          $table->integer('empresa_id')->nullable();
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->timestamps();
        });
      }

 

    //Cabecalho da tabela de recibos, menu de vendas, 
      if (Schema::hasTable('re')) { } else {

        Schema::create('re', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('cliente_id')->nullable(); 
          $table->integer('conta_id')->nullable();  
          $table->integer('metodo_pagamento_id')->nullable();
          $table->integer('categoria_id')->nullable(); 
          $table->date('data')->nullable(); 
          $table->string('referencia', 30)->nullable();    
          $table->double('total')->nullable();    
          $table->integer('usuario_id')->nullable();    
          $table->string('codigo_movimento', 100)->nullable();   
          $table->string('nome_do_banco', 100)->nullable();   
          $table->string('numero_do_cheque', 100)->nullable();   
          $table->integer('empresa_id')->unsigned()->nullable(); 
          
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->string('estado', 50)->nullable(); 
          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }

        //Linhas da tabela de recibos, menu de vendas, 
      if (Schema::hasTable('rn')) { } else {

        Schema::create('rn', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('re_id')->nullable(); 
          $table->integer('documento_id')->nullable(); 
          $table->string('referencia_documento',30)->nullable(); 
          $table->date('data')->nullable();  
          $table->double('valor_pago')->nullable(); 
          $table->integer('empresa_id')->unsigned()->nullable(); 
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 
          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        }); 
      }


    //Cabecalho da tabela de pagamentos, menu de compras, 
      if (Schema::hasTable('po')) { } else {

        Schema::create('po', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('fornecedor_id')->nullable(); 
          $table->integer('conta_id')->nullable();  
          $table->integer('metodo_pagamento_id')->nullable();
          $table->integer('categoria_id')->nullable(); 
          $table->date('data')->nullable(); 
          $table->string('referencia', 100)->nullable();    
          $table->double('total')->nullable();    
          $table->integer('usuario_id')->nullable();    
          $table->string('codigo_movimento', 100)->nullable();   
          $table->string('nome_do_banco', 100)->nullable();   
          $table->string('numero_do_cheque', 100)->nullable();   
          $table->integer('empresa_id')->unsigned()->nullable(); 
          
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }

        //Linhas da tabela de pagamentos, menu de compras, 
      if (Schema::hasTable('pl')) { } else {

        Schema::create('pl', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('po_id')->nullable(); 
          $table->integer('documento_id')->nullable(); 
          $table->string('referencia_documento',20)->nullable(); 
          $table->date('data')->nullable();  
          $table->double('valor_pago')->nullable(); 
          
          $table->integer('empresa_id')->unsigned()->nullable(); 
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        }); 
      }



        //Tabela de recibos de adiantamento, menu de vendas, 
      if (Schema::hasTable('ra')) { } else {

        Schema::create('ra', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('cliente_id')->nullable();  //fk
          $table->integer('conta_id')->nullable();  //fk
          $table->integer('categoria_id')->nullable(); //fk
          $table->integer('usuario_id')->nullable(); //fk
          $table->integer('metodo_pagamento_id')->nullable();  //fk
          $table->date('data')->nullable(); 
          $table->string('referencia', 30)->nullable();   
          $table->string('descricao', 100)->nullable();  
          $table->double('valor')->nullable();  
          $table->string('estado')->nullable();
              
          $table->string('codigo_movimento', 100)->nullable();   
          $table->string('nome_do_banco', 100)->nullable();   
          $table->string('numero_do_cheque', 100)->nullable();  
          
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 
          
          $table->integer('empresa_id')->unsigned()->nullable(); 
          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();
        });
      }


        //Cabecalho da tabela de compras, menu de compras, 
      if (Schema::hasTable('fo')) { } else {

        Schema::create('fo', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('fornecedor_id')->nullable(); 
          $table->integer('localizacao_id')->nullable(); 
          $table->integer('usuario_id')->nullable(); 
          $table->date('data')->nullable(); 
          $table->double('taxa_total')->nullable(); 
          $table->string('referencia',20)->nullable(); 
          $table->string('comentario')->nullable(); 
          $table->double('total')->nullable();//daily_exchange rate
          $table->integer('metodo_pagamento_id')->nullable();
          $table->integer('conta_id')->nullable(); 
          $table->string('estado')->nullable(); 
          $table->string('documento')->nullable();
          $table->string('requisicao', 20)->nullable();
          
           
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 
          // para cambio 
          $table->double('taxa_cambio')->nullable();//daily_exchange rate
          $table->double('contra_valor')->nullable();//total_foreign
          $table->integer('moedas_id')->unsigned()->nullable();
          // fim cambio 
          $table->integer('empresa_id')->unsigned()->nullable();

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();



        });
      }
      


      //Linhas da tabela de compras, menu de compras,  
      
    if (Schema::hasTable('fn')) { } else {

      Schema::create('fn', function (Blueprint $table) {
        $table->increments('id');  
        $table->integer('fo_id')->unsigned();  //referencia do cabecalho
        $table->string('codigo_produto',20)->nullable(); 
        $table->string('descricao')->nullable(); 
        $table->double('quantidade')->nullable(); 
        $table->double('preco_unitario')->nullable();  
        $table->double('preco_custo')->nullable();  
        $table->integer('tipo_taxa_id')->nullable(); 
        $table->double('valor_taxa')->nullable(); 
        $table->integer('is_inventory')->nullable();  
        $table->double('percentagem_desconto')->nullable();  
        $table->string('taxa_inclusa_valor',20)->nullable(); 
        $table->string('lote',20)->nullable();   
        $table->string('item_servico',20)->nullable();  
        $table->integer('st_id'); 
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');  

        $table->foreign('fo_id') 
          ->references('id')
          ->on('fo')
          ->onDelete('cascade');
          
          $table->timestamps();
      });
    }


      // Dossiers internos
        //Cabecalho da tabela de Entrada de stock, Saida, 
      if (Schema::hasTable('bo')) { } else {

        Schema::create('bo', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('entidade_id')->nullable(); 
          $table->integer('localizacao_id')->nullable(); 
          $table->integer('localizacao_destino_id')->nullable(); 
          $table->integer('usuario_id')->nullable(); 
          $table->date('data')->nullable(); 
          $table->double('taxa_total')->nullable(); 
          $table->string('referencia',20)->nullable(); 
          $table->string('comentario')->nullable(); 
          $table->double('total')->nullable();  
          $table->string('estado',20)->nullable(); 
          $table->string('documento')->nullable(); 
            // para cambio 
          $table->double('taxa_cambio')->nullable();//daily_exchange rate
          $table->double('contra_valor')->nullable();//total_foreign
          $table->integer('moedas_id')->unsigned()->nullable();
           // fim cambio 

           $table->integer('user_registar')->nullable(); 
           $table->integer('user_update')->nullable(); 

          $table->integer('empresa_id')->unsigned()->nullable();

          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

          $table->timestamps();

        });
      }

      //Linhas da tabela de Entrada de stock e Saida stock, 
      if (Schema::hasTable('bi')) { } else {

        Schema::create('bi', function (Blueprint $table) {
          
          $table->increments('id');  
          $table->integer('bo_id')->unsigned();  //referencia do cabecalho
          $table->string('codigo_produto',20)->nullable(); 
          $table->integer('st_id'); 
          $table->string('descricao')->nullable(); 
          $table->double('quantidade')->nullable(); 
          $table->double('preco_unitario')->nullable();  
          $table->double('preco_custo')->nullable();  
          $table->integer('tipo_taxa_id')->nullable(); 
          $table->double('valor_taxa')->nullable(); 
          $table->integer('is_inventory')->nullable();  
          $table->double('percentagem_desconto')->nullable();  
          $table->string('taxa_inclusa_valor',10)->nullable(); 
          $table->string('lote')->nullable();      
  
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

          $table->integer('empresa_id')->unsigned()->nullable(); 
          $table->foreign('empresa_id')
            ->references('id')
            ->on('cust_empresa')
            ->onDelete('cascade');  
  
          $table->foreign('bo_id') 
            ->references('id')
            ->on('bo')
            ->onDelete('cascade');
            
            $table->timestamps();

        });
      }

    //Tabela de Despesas, 
      if (Schema::hasTable('ds')) { } else {

        Schema::create('ds', function (Blueprint $table) {
          
          $table->increments('id');
          $table->integer('conta_id')->nullable();
          $table->date('data')->nullable();
          $table->string('descricao', 70)->nullable();
          $table->double('total')->nullable();
          $table->integer('categoria_id')->nullable();
          $table->integer('metodo_pagamento_id')->nullable();
          $table->string('referencia', 70)->nullable();
          $table->string('anexo', 70)->nullable();
          $table->string('estado',30)->nullable(); 

          $table->integer('empresa_id')->unsigned()->nullable();
          $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 
          $table->timestamps();

        });
      }





    // cotacao/factura/nota de debito/nota de credito/guia de entrega/guia de transporte/venda a dinheiro/pagamentos/recibos de adiantamento
    if (Schema::hasTable('ft')) { } else {

      Schema::create('ft', function (Blueprint $table) {

        $table->increments('id');
        $table->string('referencia')->nullable();
        $table->integer('cliente_id')->nullable(); 
        $table->integer('factura_id')->nullable(); //para nota de debito /credito /guia
        $table->integer('cotacao_id')->nullable(); //para conversao da cotacao em factura
        $table->integer('conta_bancaria_id')->nullable(); //para venda a dinheiro 
        $table->string('referencia_documento')->nullable(); //questoes de integridade 
        $table->integer('usuario_id')->nullable(); 
        $table->integer('localizacao_id')->nullable();
        $table->string('requisicao')->nullable(); //cotacao
        $table->integer('metodo_pagamento_id')->nullable();
        $table->integer('termo_pagamento_id')->nullable();
        $table->date('data')->nullable();   
        $table->date('data_fim')->nullable();   
        $table->string('local_entrega')->nullable(); //guias
        $table->string('nome_motorista',20)->nullable(); //guias
        $table->string('carta_conducao',20)->nullable(); //guias
        $table->string('matricula_carro',20)->nullable(); //guias
        $table->double('total')->nullable();  
        $table->double('taxa_total')->nullable();   
        $table->string('comentario')->nullable();
        $table->string('estado')->nullable();
        $table->string('documento')->nullable();

        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 

         // para cambio
         $table->double('taxa_cambio')->nullable();//daily_exchange rate
         $table->double('contra_valor')->nullable();//total_foreign
         $table->integer('moedas_id')->unsigned()->nullable();
        // fim cambio 

        $table->integer('empresa_id')->unsigned()->nullable(); 

        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
 
        $table->foreign('moedas_id')
          ->references('id')
          ->on('moedas')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }



// Os detalhes  de  cotacao/factura/nota de debito/nota de credito/guia de entrega/guia de transporte/venda a dinheiro/pagamentos/recibos de adiantamento

    if (Schema::hasTable('fi')) { } else {

      Schema::create('fi', function (Blueprint $table) {
        $table->increments('id');  
        $table->string('codigo_produto',20)->nullable(); 
        $table->integer('st_id'); 
        $table->string('descricao')->nullable(); 
        $table->double('quantidade')->nullable(); 
        $table->double('preco_unitario')->nullable();  
        $table->double('preco_custo')->nullable();  
        $table->integer('tipo_taxa_id')->nullable(); 
        $table->integer('is_inventory')->nullable(); 
        $table->double('valor_taxa')->nullable();  
        $table->double('percentagem_desconto')->nullable();  
        $table->string('taxa_inclusa_valor',10)->nullable(); 
        $table->string('lote')->nullable();   
        $table->string('item_servico',20)->nullable();   
        
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 

        $table->integer('empresa_id')->unsigned()->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade'); 

        $table->integer('ft_id')->unsigned();  //referencia do cabecalho
        $table->foreign('ft_id')

          ->references('id')
          ->on('ft')
          ->onDelete('cascade');
          
          $table->timestamps();
      });
    }


     //Tabela de conta corrente dos clientes, 
     if (Schema::hasTable('cc')) { } else {

        Schema::create('cc', function (Blueprint $table) { 
        $table->increments('id');
        $table->integer('cliente_id')->nullable(); 
        $table->integer('usuario_id')->nullable();
        $table->integer('documento_id')->nullable();
        $table->string('referencia_documento',70)->nullable();
        $table->double('total_documento')->nullable(); 
        $table->date('data')->nullable();  
        $table->string('por_pagar',20)->nullable();
        $table->double('pago')->default(0);
        $table->string('tipo')->nullable(); 
        $table->string('debito')->nullable();
        $table->string('credito')->nullable();
        $table->string('estado',50)->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable(); 
        $table->foreign('empresa_id')

        ->references('id')
        ->on('cust_empresa')
        ->onDelete('cascade');

        $table->timestamps();
      });
    }

     //Tabela de conta corrente dos clientes, 
     if (Schema::hasTable('fc')) { } else {

      Schema::create('fc', function (Blueprint $table) { 
      $table->increments('id');
      $table->integer('fornecedor_id')->nullable(); 
      $table->integer('usuario_id')->nullable();
      $table->integer('documento_id')->nullable();
      $table->string('referencia_documento',70)->nullable();
      $table->double('total_documento')->nullable();
      $table->double('pago')->default(0); 
      $table->date('data')->nullable();  
      $table->string('tipo',20)->nullable(); 
      $table->string('por_pagar',20)->nullable()->default('nao');
      $table->double('debito')->nullable();
      $table->double('credito')->nullable();
      $table->string('estado',50)->nullable();
      $table->integer('user_registar')->nullable(); 
      $table->integer('user_update')->nullable(); 
      $table->integer('empresa_id')->unsigned()->nullable(); 
      $table->foreign('empresa_id')
      ->references('id')
      ->on('cust_empresa')
      ->onDelete('cascade');

      $table->timestamps();
    });
  }


     //Tabela de movimento de stock, 
     if (Schema::hasTable('sl')) { } else {

        Schema::create('sl', function (Blueprint $table) { 
        $table->increments('id');
        $table->string('codigo_produto',30)->nullable(); 
        $table->integer('st_id'); 
        $table->string('tipo_movimento')->nullable();  
        $table->string('proveniente')->nullable()->default('ft');
        $table->integer('usuario_id')->nullable();
        $table->date('data')->nullable();
        $table->integer('documento_id')->nullable();
        $table->string('referencia_documento',70)->nullable();
        $table->integer('armazem_id');
        $table->string('referencia_armazem',70)->nullable(); 
        $table->double('quantidade')->nullable();  
        $table->integer('empresa_id')->unsigned()->nullable(); 
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->foreign('empresa_id')
        ->references('id')
        ->on('cust_empresa')
        ->onDelete('cascade');

        $table->timestamps();
      });
    }

    if (Schema::hasTable('meses')) { } else { 
      Schema::create('meses', function (Blueprint $table) { 
      $table->increments('id'); 
      $table->string('nome',15)->nullable();  
    });
  }

    

    // localizacao
    if (Schema::hasTable('armazem')) { } else {

      Schema::create('armazem', function (Blueprint $table) {
        $table->increments('id'); 
        $table->string('nome',100)->nullable(); 
        $table->string('abreviatura',20)->nullable(); 
        $table->string('endereco')->nullable(); 
        $table->string('email',20)->nullable(); 
        $table->string('telefone',20)->nullable(); 
        $table->string('fax',20)->nullable(); 
        $table->string('celular',20)->nullable(); 
        $table->string('status')->default('activo');
        $table->string('default')->default('no');
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');

        $table->timestamps();
      });
    }
    

    
    if (Schema::hasTable('role_armazem')) { } else {

      Schema::create('role_armazem', function (Blueprint $table) {
        $table->increments('id'); 
        $table->integer('armazem_id')->nullable(); 
        $table->integer('role_id')->nullable();  
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
       $table->timestamps();
      });
    }





    if (Schema::hasTable('unidade_medida')) { } else {

      Schema::create('unidade_medida', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable(); 
        $table->string('abreviatura')->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }

    if (Schema::hasTable('marca')) { } else {

      Schema::create('marca', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable();  
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 

        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }

    if (Schema::hasColumn('marca', 'status')) { } else {
      Schema::table('marca', function ($table) {
        $table->string('status', 20)->nullable();
      });
    }
    
    

    if (Schema::hasTable('tipo_imposto')) { } else {

      Schema::create('tipo_imposto', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable();  
        $table->double('taxa_imposto');  
        $table->string('default');  
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->timestamps();
      });
    }


    //categoria
    if (Schema::hasTable('categoria')) { } else {

      Schema::create('categoria', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome',100)->nullable(); 
        $table->string('status')->nullable();  

        $table->integer('empresa_id')->unsigned()->nullable();  
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->timestamps();
        $table->integer('unidade_medida_id')->unsigned()->nullable(); 
        $table->foreign('unidade_medida_id')
          ->references('id')
          ->on('unidade_medida')
          ->onDelete('cascade');
        
      });
    }


    if (Schema::hasTable('st')) { } else {

      Schema::create('st', function (Blueprint $table) {

        $table->increments('id');
        $table->string('codigo')->nullable(); 
        $table->string('nome')->nullable();  
        $table->string('tipo')->nullable();  
        $table->string('lotes')->nullable();  
        $table->string('descricao',200)->nullable();  
        $table->string('imagem',200)->nullable();  
        $table->double('preco_venda')->nullable()->default(0); 
        $table->double('preco_compra')->nullable()->default(0);
        $table->integer('inclusao_iva')->nullable();     
        $table->integer('marca_id')->nullable(); 
        $table->string('status')->nullable();  
        $table->integer('categoria_id')->nullable();  
        $table->integer('unidade_medida_id')->nullable();  
        $table->integer('tipo_imposto_id')->nullable();  
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->foreign('empresa_id')
            ->references('id')
            ->on('cust_empresa')
            ->onDelete('cascade');
            
        $table->timestamps();
      });
    } 
 
    //grupo de pacotes //pacote
    if (Schema::hasTable('pacote')) { } else {

      Schema::create('pacote', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome', 50)->nullable();
        $table->integer('role_id')->nullable();
        $table->integer('nr_usuarios')->nullable();
        $table->string('estado', 50)->default('activo');
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->timestamps();
      });
    };
     

    if (Schema::hasTable('lotes_validades')) { } else {

      Schema::create('lotes_validades', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome', 50)->nullable();
        $table->string('codigo',100)->nullable();
        $table->date('data_inicio')->nullable();
        $table->date('data_fim')->nullable();
        $table->string('estado', 50)->default('activo');
        $table->string('status')->nullable(); 
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->timestamps();
        $table->foreign('empresa_id')
          ->references('id')
          ->on('cust_empresa')
          ->onDelete('cascade');
      });
    };


    //notificacoes
    //Mensagem
    if (Schema::hasTable('versoes')) { } else {

      Schema::create('versoes', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable();
        $table->float('nr_versao')->nullable();
        $table->text('descricao')->nullable();
        $table->integer('registado_id')->nullable();
        $table->string('estado')->nullable();
        $table->date('data')->nullable();
        $table->timestamps();
      });
    }
 
    //notificacoes
    //Mensagem
    if (Schema::hasTable('notificacoes')) { } else {

      Schema::create('notificacoes', function (Blueprint $table) {
        $table->increments('id');
        $table->string('tipo')->nullable();
        $table->string('descricao')->nullable();
        $table->date('data')->nullable();
        $table->date('ultimo_visto')->nullable();
        $table->integer('destinatario_id')->nullable();
        $table->string('estado')->nullable();
        $table->string('prioridade')->nullable();
        $table->integer('registado_id')->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->timestamps();
      });
    }

    if (Schema::hasTable('preference')) { } else {

      Schema::create('preference', function (Blueprint $table) {
        $table->increments('id');
        $table->string('category',60)->nullable();
        $table->string('field',100)->nullable(); 
        $table->string('value',100)->nullable(); 
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->timestamps();
      });
    }



    if (Schema::hasTable('configuracoes')) { } else {

      Schema::create('configuracoes', function (Blueprint $table) {
        $table->increments('id');
        $table->string('campo', 20)->nullable();
        $table->string('valor', 20)->nullable();
        $table->integer('empresa_id')->unsigned()->nullable();
        $table->integer('user_registar')->nullable(); 
        $table->integer('user_update')->nullable(); 
        $table->timestamps();
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
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 
          $table->timestamps();
      });
    }


    if (Schema::hasTable('versoes')) {
    }else{

        Schema::create('versoes', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nome')->nullable();
        $table->float('nr_versao')->nullable(); 
        $table->text('descricao')->nullable();
        $table->integer('registado_id')->nullable(); 
        $table->string('estado')->nullable();
        $table->date('data')->nullable();
        $table->timestamps();
        });
     }
 



      /*configuracao de email
      if (Schema::hasColumn('email_config', 'empresa_id')) { } else {

        Schema::table('email_config', function (Blueprint $table) {
            $table->integer('empresa_id')->unsigned()->nullable();
            $table->foreign('empresa_id')
              ->references('id')
              ->on('cust_empresa')
              ->onDelete('cascade');
            $table->timestamps();

        });
      }*/
      

         
   if (Schema::hasTable('subscricoes')){ }else{
  
      Schema::create('subscricoes', function (Blueprint $table) {
      $table->increments('id');
      $table->string('cliente', 150)->nullable();
      $table->date('dia_inicio')->nullable();
      $table->date('dia_fim')->nullable();
      $table->integer('empresa_id')->nullable(); 
      $table->integer('pacote_id')->nullable(); 
      $table->integer('user_registar')->nullable(); 
      $table->integer('user_update')->nullable(); 
      $table->string('notas')->nullable();
      $table->string('estado',20)->nullable();
      
    }); 
}



      if (Schema::hasColumn('cl', 'user_registar')) { } else {

        Schema::table('cl', function (Blueprint $table) {
          $table->integer('user_registar')->nullable(); 
          $table->integer('user_update')->nullable(); 

        });

      }

      
      if (Schema::hasColumn('cc', 'estado')) { } else {

        Schema::table('cc', function (Blueprint $table) {
          $table->string('estado',20)->default('activo');
      
        });

      }

      




  }
  
}

   
}
