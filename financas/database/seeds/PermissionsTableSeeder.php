<?php

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('permissions')->truncate();

        DB::table('tipo_de_contas')->truncate();

        DB::table('tipo_de_contas')->insert([
                   ['nome' => 'conta em dinheiro'],
                   ['nome' => 'conta em cheque'],
                   ['nome' => 'conta em corrente'],
                   ['nome' => 'conta em poupanca'],

       ]);

        DB::table('permissions')->insert([
             
              // Dashborad
              ['id' => '1', 'name' => 'listagem_dashboard', 'display_name' => 'Visuar Dashbord', 'description' => 'Visuar Dashbord', 'categoria'=>'Dashborad'],

              ['id' => '2', 'name' => 'dashbord_qt_stock', 'display_name' => 'Mostrar qtd stock', 'description' => 'Mostrar qtd stock', 'categoria'=>'Dashborad'],

              ['id' => '3', 'name' => 'dashbord_vd_dia', 'display_name' => 'Mostrar total vendas diarias', 'description' => 'Mostrar total vendas diarias', 'categoria'=>'Dashborad'],

              ['id' => '4', 'name' => 'dashbord_expirar', 'display_name' => 'Mostar stock a expirar', 'description' => 'Mostar stock a expirar', 'categoria'=>'Dashborad'],

              ['id' => '5', 'name' => 'dashbord_user', 'display_name' => 'Mostrar total usuarios', 'description' => 'Mostrar total usuarios', 'categoria'=>'Dashborad'],

              ['id' => '6', 'name' => 'dashbord_categoria', 'display_name' => 'Mostar % de stock e categorias', 'description' => 'Mostar % de stock e categorias', 'categoria'=>'Dashborad'],
           
              ['id' => '7', 'name' => 'dashbord_fact', 'display_name' => 'Mostrar resumos dos facturacao', 'description' => 'Mostrar resumos dos facturacao' , 'categoria'=>'Dashborad'],
              ['id' => '8', 'name' => 'dashbord_alert_stock', 'display_name' => 'Mostrar alerta stock', 'description' => 'Mostrar alerta stock', 'categoria'=>'Dashborad'],

              ['id' => '9', 'name' => 'dashbord_alert_expirar', 'display_name' => 'Mostrar stock a expirar em meses', 'description' => 'Mostrar stock a expirar em meses', 'categoria'=>'Dashborad'],


              //Terceiros
              ['id' => '10', 'name' => 'listagem_terceiros', 'display_name' => 'listar  terceiros', 'description' => 'listar  terceiros', 'categoria'=>'Terceiros'],
              //Terceiros
              //Clientes
              ['id' => '11', 'name' => 'criar_clientes', 'display_name' => 'criar clientes', 'description' => 'criar clientes', 'categoria'=>'Clientes'],

              ['id' => '12', 'name' => 'listar_clientes', 'display_name' => 'listar clientes', 'description' => 'listar clientes', 'categoria'=>'Clientes'],

              ['id' => '13', 'name' => 'remover_clientes', 'display_name' => 'remover clientes', 'description' => 'remover clientes', 'categoria'=>'Clientes'],

              ['id' => '14', 'name' => 'editar_clientes', 'display_name' => 'editar clientes', 'description' => 'editar clientes', 'categoria'=>'Clientes'],

              //Terceiros
              //Fornecedores
              ['id' => '15', 'name' => 'listar_fornecedores', 'display_name' => 'listar fornecedores', 'description' => 'listar fornecedores', 'categoria'=>'Fornecedores'],

              ['id' => '16', 'name' => 'criar_fornecedores', 'display_name' => 'criar fornecedores', 'description' => 'criar_fornecedores', 'categoria'=>'Fornecedores'],

              ['id' => '17', 'name' => 'remover_fornecedores', 'display_name' => 'remover fornecedores', 'description' => 'remover fornecedores', 'categoria'=>'Fornecedores'],

              ['id' => '18', 'name' => 'editar_fornecedores', 'display_name' => 'editar fornecedores', 'description' => 'editar fornecedores', 'categoria'=>'Fornecedores'],

              //Terceiros
              //Entidade
              ['id' => '19', 'name' => 'listar_entidade', 'display_name' => 'listar entidade', 'description' => 'listar entidade', 'categoria'=>'Entidade'],

              ['id' => '20', 'name' => 'criar_entidade', 'display_name' => 'criar entidade', 'description' => 'criar entidade', 'categoria'=>'Entidade'],

              ['id' => '21', 'name' => 'remover_entidade', 'display_name' => 'remover entidade', 'description' => 'remover entidade', 'categoria'=>'Entidade'],

              ['id' => '22', 'name' => 'editar_entidade', 'display_name' => 'Editar entidade', 'description' => 'Editar entidade', 'categoria'=>'Entidade'],


              //Stocks e Servicos
              ['id' => '23', 'name' => 'listar_stocks_servicos', 'display_name' => 'Listar stocks e servicos', 'description' => 'Listar stocks e servicos', 'categoria'=>'Stocks Servicos'],

              //Stocks e Servicos
              //Item e servico
              ['id' => '24', 'name' => 'listar_item', 'display_name' => 'Listar item', 'description' => 'listar item servico', 'categoria'=>'Item'],

              ['id' => '25', 'name' => 'criar_item', 'display_name' => 'Criar item', 'description' => 'Criar item', 'categoria'=>'Item'],

              ['id' => '26', 'name' => 'remover_item', 'display_name' => 'Remover item', 'description' => 'Remover item', 'categoria'=>'Item'],

              ['id' => '27', 'name' => 'editar_item', 'display_name' => 'Editar item', 'description' => 'Editar item', 'categoria'=>'Item'],

              //Stocks e Servicos
              //Lotes e validades
              ['id' => '28', 'name' => 'listar_lotes', 'display_name' => 'Mostrar lotes', 'description' => 'Mostrar lotes', 'categoria'=>'Lotes'],

              ['id' => '29', 'name' => 'criar_lotes', 'display_name' => 'Criar lotes', 'description' => 'Criar lotes', 'categoria'=>'Lotes'],
              
              ['id' => '30', 'name' => 'remover_lotes', 'display_name' => 'Remover lotes', 'description' => 'Horas Extras', 'categoria'=>'Lotes'],

              ['id' => '31', 'name' => 'editar_lotes', 'display_name' => 'Editar lotes', 'description' => 'editar lotes', 'categoria'=>'Lotes'],

              //Stocks e Servicos
              //Definicao dos Items
              ['id' => '32', 'name' => 'listar_categorias', 'display_name' => 'Mostar categorias', 'description' => 'Mostar categorias', 'categoria'=>'Categoria'],
              ['id' => '33', 'name' => 'criar_categorias', 'display_name' => 'criar categorias', 'description' => 'criar categorias', 'categoria'=>'Categoria'],
              ['id' => '34', 'name' => 'remover_categorias', 'display_name' => 'Remover categorias', 'description' => 'Remover categorias', 'categoria'=>'Categoria'],
              ['id' => '35', 'name' => 'editar_categorias', 'display_name' => 'Editar categorias', 'description' => 'Editar categorias', 'categoria'=>'Categoria'],


               //Stocks e Servicos
              //Unidade dos Items
               ['id' => '36', 'name' => 'listar_marcas', 'display_name' => 'Mostrar marcas', 'description' => 'Mostrar marcas dos items', 'categoria'=>'Marcas'],

              ['id' => '37', 'name' => 'criar_marcas', 'display_name' => 'criar marcas', 'description' => 'criar marcas dos items', 'categoria'=>'Marcas'],

               ['id' => '38', 'name' => 'remover_marcas', 'display_name' => 'remover marcas', 'description' => 'remover marcas dos items', 'categoria'=>'Marcas'],

              ['id' => '39', 'name' => 'editar_marcas', 'display_name' => 'editar marcas', 'description' => 'editar marcas dos items', 'categoria'=>'Marcas'],


              //Stocks e Servicos
              //Unidade dos Items
              ['id' => '40', 'name' => 'listar_unidades', 'display_name' => 'Mostrar unidades', 'description' => 'Mostrar unidades dos items', 'categoria'=>'Unidades'],

              ['id' => '41', 'name' => 'criar_unidades', 'display_name' => 'Criar unidades', 'description' => 'Criar unidades dos items','categoria'=>'Unidades'],

              ['id' => '42', 'name' => 'remover_unidades', 'display_name' => 'Remover unidades', 'description' => 'remover unidades dos items','categoria'=>'Unidades'],

              ['id' => '43', 'name' => 'editar_unidades', 'display_name' => 'Gerir  relatorios', 'description' => 'Editar unidades dos items','categoria'=>'Unidades'],


              //Vendas
              ['id' => '44', 'name' => 'listar_vendar', 'display_name' => 'Mostrar vendas', 'description' => 'Mostrar vendas','categoria'=>'Vendas'],

              //Vendas
              //Caixas
              ['id' => '45', 'name' => 'listar_caixas', 'display_name' => 'Mostrar caixas', 'description' => 'Mostrar caixas','categoria'=>'Caixas'],

              ['id' => '46', 'name' => 'criar_caixas', 'display_name' => 'Criar caixas', 'description' => 'Criar caixas','categoria'=>'Caixas'],

              ['id' => '47', 'name' => 'remover_caixas', 'display_name' => 'Remover caixas', 'description' => 'Remover caixas','categoria'=>'Caixas'],

              ['id' => '48', 'name' => 'editar_caixas', 'display_name' => 'Editar caixas', 'description' => 'Editar caixas','categoria'=>'Caixas'],

              //Vendas
              //Vendas a dinheiro
              ['id' => '49', 'name' => 'listar_vds', 'display_name' => 'Mostrar VDs', 'description' => 'Mostrar Vendas a dinheiro','categoria'=>'VDs'],

              ['id' => '50', 'name' => 'criar_vds', 'display_name' => 'Criar VDs', 'description' => 'Criar Vendas a dinheiro','categoria'=>'VDs'],

              ['id' => '51', 'name' => 'remover_vds', 'display_name' => 'Remover VDs', 'description' => 'Remover Vendas a dinheiro','categoria'=>'VDs'],

              //Vendas
              //Vendas a dinheiro
              ['id' => '87', 'name' => 'editar_vds', 'display_name' => 'Editar VDs', 'description' => 'Editar Vendas a dinheiro','categoria'=>'VDs'],

              ['id' => '88', 'name' => 'cancelar_vds', 'display_name' => 'Cancelar VDs', 'description' => 'Cancelar Vendas a dinheiro','categoria'=>'VDs'],


              // Setiings Start
              ['id' => '52', 'name' => 'manage_setting', 'display_name' => 'Gerir Definicoes', 'description' => 'Gerir Definicoes' ,'categoria'=>'Definicoes'],
              // Company Setiings Start
              ['id' => '53', 'name' => 'manage_company_setting', 'display_name' => 'Gerir Definicoes da empresa', 'description' => 'Gerir Definicoes da empresa','categoria'=>'Definicoes'],
              ['id' => '54', 'name' => 'manage_team_member', 'display_name' => 'Listar Usuarios', 'description' => 'Listar Usuarios','categoria'=>'Definicoes'],
              ['id' => '55', 'name' => 'add_team_member', 'display_name' => 'Adicionar Usuario', 'description' => 'Adicionar Usuario','categoria'=>'Definicoes'],
              ['id' => '56', 'name' => 'edit_team_member', 'display_name' => 'Editar usuarios', 'description' => 'Edit Usuario','categoria'=>'Definicoes'],
              ['id' => '57', 'name' => 'delete_team_member', 'display_name' => 'Eliminar usuarios', 'description' => 'Eliminar Usuario','categoria'=>'Definicoes'],


              //Perfil
              ['id' => '58', 'name' => 'manage_role', 'display_name' => 'Listar Perfil', 'description' => 'Listar Perfil','categoria'=>'Definicoes'],
              ['id' => '59', 'name' => 'add_role', 'display_name' => 'Adicionar Perfil', 'description' => 'Adicionar Perfil','categoria'=>'Definicoes'],
              ['id' => '60', 'name' => 'edit_role', 'display_name' => 'Editar Perfil', 'description' => 'Editar Perfil','categoria'=>'Definicoes'],
              ['id' => '61', 'name' => 'delete_role', 'display_name' => 'Remover Perfil', 'description' => 'Remover Perfil','categoria'=>'Definicoes'],

             

              // Start General Setting
              ['id' => '62', 'name' => 'manage_general_setting', 'display_name' => 'Listar Definicoes', 'description' => 'Listar Definicoes','categoria'=>'Definicoes'],
              ['id' => '63', 'name' => 'manage_db_backup', 'display_name' => 'Listar Database Backup', 'description' => 'Listar Database Backup','categoria'=>'Definicoes'],
              ['id' => '64', 'name' => 'add_db_backup', 'display_name' => 'Criar Database Backup', 'description' => 'Criar Database Backup','categoria'=>'Definicoes'],
              ['id' => '65', 'name' => 'delete_db_backup', 'display_name' => 'Delete Database Backup', 'description' => 'Delete Database Backup','categoria'=>'Definicoes'],

              ['id' => '66', 'name' => 'manage_email_setup', 'display_name' => 'Manage Email Setup', 'description' => 'Manage Email Setup','categoria'=>'Definicoes'],
              // Start Preference
              ['id' => '67', 'name' => 'manage_preference', 'display_name' => 'Manage Preference', 'description' => 'Manage Preference','categoria'=>'Definicoes'],

              ['id' => '68', 'name' => 'atribuir_user_empresa', 'display_name' => 'Atribuir Empresa a Usuario', 'description' => 'Atribuir Empresa a Usuario','categoria'=>'Definicoes'],              
              ['id' => '69', 'name' => 'editar_user_empresa', 'display_name' => 'Editar Empresa a Usuario', 'description' => 'Editar Empresa a Usuario','categoria'=>'Definicoes'],    



              //Gestao Tabelas Auxiliares Gestao_tabelas Auxiliares
              ['id' => '74', 'name' => 'gerir_painel_admin', 'display_name' => 'Gerir Painel Administrativo', 'description' => 'Gerir Painel Administrativo','categoria'=>'Admin'],
              ['id' => '75', 'name' => 'manage_company', 'display_name' => 'Dados da empresa', 'description' => 'Dados Principais da empresa','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '76', 'name' => 'manage_aux_table', 'display_name' => 'Dados T. Auxiliar', 'description' => 'Dados tableas Auxilares','categoria'=>'Gestao tabelas Auxiliares'],



               
              /*
               //Presencas
               ['id' => '70', 'name' => 'presenca_adicionar', 'display_name' => 'Adicionar Presenca', 'description' => 'Adicionar Presenca','categoria'=>'Presencas'],    
               ['id' => '71', 'name' => 'presenca_editar', 'display_name' => 'Editar Presenca', 'description' => 'Editar Presenca','categoria'=>'Presencas'],    
               ['id' => '72', 'name' => 'presenca_importar', 'display_name' => 'Presenca Importar', 'description' => 'Presenca Importar','categoria'=>'Presencas'],    
               ['id' => '73', 'name' => 'presenca_listar', 'display_name' => 'Presenca Listar', 'description' => 'Presenca Listar','categoria'=>'Presencas'],    

              
               //

              ['id' => '77', 'name' => 'manage_discount', 'display_name' => 'Dados Desconto', 'description' => 'Dados tableas Descontos','categoria'=>'Gestao tabelas Auxiliares'],

              ['id' => '78', 'name' => 'manage_remuneration', 'display_name' => 'Dados T. remuneracao', 'description' => 'Dados tableas remuneracao','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '79', 'name' => 'manage_status', 'display_name' => 'Dados T. status', 'description' => 'Dados tableas status','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '80', 'name' => 'manage_type_extra_time', 'display_name' => 'Dados T. type_extra_time', 'description' => 'Dados tableas type_extra_time','categoria'=>'Gestao tabelas Auxiliares'],

              ['id' => '81', 'name' => 'manage_category', 'display_name' => 'Dados T. category', 'description' => 'Dados tableas category','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '82', 'name' => 'manage_sector', 'display_name' => 'Dados T. sector', 'description' => 'Dados tableas sector','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '83', 'name' => 'manage_shift', 'display_name' => 'Dados T. shift', 'description' => 'Dados tableas shift','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '84', 'name' => 'manage_type_contract', 'display_name' => 'Dados T. type_contract', 'description' => 'Dados tableas type_contract','categoria'=>'Gestao tabelas Auxiliares'],  
              ['id' => '85', 'name' => 'manage_tab_irps', 'display_name' => 'Dados T. tab_irps', 'description' => 'Dados tableas tab_irps','categoria'=>'Gestao tabelas Auxiliares'],
              ['id' => '86', 'name' => 'manage_groupo', 'display_name' => 'Dados T. groupo', 'description' => 'Dados tableas groupo','categoria'=>'Gestao tabelas Auxiliares'], 

              */


               //Permissoes do usuarios empresas gererem usuarios
              ['id' => '86', 'name' => 'manage_usuarios', 'display_name' => 'Gerir usuarios', 'description' => 'Gerir usuarios','categoria'=>'usuarios empresas'],  
              ['id' => '85', 'name' => 'add_usuarios', 'display_name' => 'Adicionar usuarios', 'description' => 'Adicionar usuarios','categoria'=>'usuarios empresas'],
              ['id' => '82', 'name' => 'list_usuarios', 'display_name' => 'Visualizar Usuarios', 'description' => 'visualizar usuarios','categoria'=>'usuarios empresas'], 
               ['id' => '83', 'name' => 'remove_usuarios', 'display_name' => 'Remover Usuarios', 'description' => 'Remover usuarios','categoria'=>'usuarios empresas'], 
               ['id' => '84', 'name' => 'edit_usuarios', 'display_name' => 'Editar Usuarios', 'description' => 'Editar usuarios','categoria'=>'usuarios empresas'], 


            //Perfil   
            ['id' => '81', 'name' => 'manage_perfil', 'display_name' => 'Gerir Perfil', 'description' => 'Gerir Perfil','categoria'=>'usuarios perfil nas empresas'],  
            ['id' => '80', 'name' => 'add_perfil_empresa', 'display_name' => 'Adicionar Perfil a usuarios', 'description' => 'Adicionar Perfil a usuarios','categoria'=>'usuarios perfil nas empresas'],
            ['id' => '77', 'name' => 'list_perfil_usuarios', 'display_name' => 'Visualizar Perfil Usuarios', 'description' => 'Visualizar Perfil Usuarios','categoria'=>'usuarios perfil nas empresas'], 
            ['id' => '78', 'name' => 'remove_perfil_empresa', 'display_name' => 'Remover Perfil Usuarios', 'description' => 'Remover Perfil usuarios','categoria'=>'usuarios perfil nas empresas'], 
            ['id' => '79', 'name' => 'edit_perfil_empresa', 'display_name' => 'Editar Perfil Usuarios', 'description' => 'Editar Perfil usuarios','categoria'=>'usuarios perfil nas empresas'], 



               //Vendas
              //Cotacoes
              ['id' => '89', 'name' => 'listar_cotacoes', 'display_name' => 'Mostrar cotacoes', 'description' => 'Mostrar cotacoes','categoria'=>'Cotacoes'],  

              ['id' => '90', 'name' => 'criar_cotacoes', 'display_name' => 'Criar cotacoes', 'description' => 'Criar cotacoes','categoria'=>'Cotacoes'], 

              ['id' => '91', 'name' => 'remover_cotacoes', 'display_name' => 'Remover cotacoes', 'description' => 'Remover cotacoes','categoria'=>'Cotacoes'],

              ['id' => '92', 'name' => 'editar_cotacoes', 'display_name' => 'Editar cotacoes', 'description' => 'Editar cotacoes','categoria'=>'Cotacoes'], 

              ['id' => '93', 'name' => 'cancelar_cotacoes', 'display_name' => 'Cancelar cotacoes', 'description' => 'Cancelar cotacoes','categoria'=>'Cotacoes'], 


               //Vendas
              //facturas
              ['id' => '94', 'name' => 'listar_facturas', 'display_name' => 'Mostrar facturas', 'description' => 'Mostrar facturas','categoria'=>'Facturas'],  

              ['id' => '95', 'name' => 'criar_facturas', 'display_name' => 'Criar facturas', 'description' => 'Criar cotacoes','categoria'=>'Facturas'], 

              ['id' => '96', 'name' => 'remover_facturas', 'display_name' => 'Remover facturas', 'description' => 'Remover facturas','categoria'=>'Facturas'],

              ['id' => '97', 'name' => 'editar_facturas', 'display_name' => 'Editar facturas', 'description' => 'Editar facturas','categoria'=>'Facturas'], 

              ['id' => '98', 'name' => 'cancelar_facturas', 'display_name' => 'Cancelar facturas', 'description' => 'Cancelar facturas','categoria'=>'Facturas'],


                 //Vendas
              //Recibos
              ['id' => '99', 'name' => 'listar_recibos', 'display_name' => 'Mostrar Recibos', 'description' => 'Mostrar Recibos','categoria'=>'Recibos'],  

              ['id' => '100', 'name' => 'criar_recibos', 'display_name' => 'Criar Recibos', 'description' => 'Criar cotacoes','categoria'=>'Recibos'], 

              ['id' => '101', 'name' => 'remover_recibos', 'display_name' => 'Remover Recibos', 'description' => 'Remover Recibos','categoria'=>'Recibos'],

              ['id' => '102', 'name' => 'editar_recibos', 'display_name' => 'Editar Recibos', 'description' => 'Editar Recibos','categoria'=>'Recibos'], 

              ['id' => '103', 'name' => 'cancelar_recibos', 'display_name' => 'Cancelar Recibos', 'description' => 'Cancelar Recibos','categoria'=>'Recibos'], 


              //Compras
              ['id' => '104', 'name' => 'listar_menu_compras', 'display_name' => 'Mostrar Menu Compras', 'description' => 'Mostrar Menu Compras','categoria'=>'Compras'],  

               //Compras
              //Compras
              ['id' => '105', 'name' => 'listar_compras', 'display_name' => 'Mostrar compras', 'description' => 'Mostrar compras','categoria'=>'compras'], 

               ['id' => '106', 'name' => 'criar_compras', 'display_name' => 'Criar compras', 'description' => 'Criar compras','categoria'=>'compras'], 

              ['id' => '107', 'name' => 'remover_compras', 'display_name' => 'Remover compras', 'description' => 'Remover compras','categoria'=>'compras'],

              ['id' => '108', 'name' => 'editar_compras', 'display_name' => 'Editar compras', 'description' => 'Editar compras','categoria'=>'compras'], 

              ['id' => '109', 'name' => 'cancelar_compras', 'display_name' => 'Cancelar compras', 'description' => 'Cancelar compras','categoria'=>'compras'],


               //Compras
              //Pagamentos
              ['id' => '110', 'name' => 'listar_pagamentos', 'display_name' => 'Mostrar Pagamentos', 'description' => 'Mostrar Pagamentos','categoria'=>'Pagamentos'], 

               ['id' => '111', 'name' => 'criar_pagamentos', 'display_name' => 'Criar Pagamentos', 'description' => 'Criar Pagamentos','categoria'=>'Pagamentos'], 

              ['id' => '112', 'name' => 'remover_pagamentos', 'display_name' => 'Remover Pagamentos', 'description' => 'Remover Pagamentos','categoria'=>'Pagamentos'],

              ['id' => '113', 'name' => 'editar_pagamentos', 'display_name' => 'Editar Pagamentos', 'description' => 'Editar Pagamentos','categoria'=>'Pagamentos'], 

              ['id' => '114', 'name' => 'cancelar_pagamentos', 'display_name' => 'Cancelar Pagamentos', 'description' => 'Cancelar Pagamentos','categoria'=>'Pagamentos'],


               //Compras
              //Compras a dinheiro
              ['id' => '115', 'name' => 'listar_cd', 'display_name' => 'Mostrar CD', 'description' => 'Mostrar Compras a dinheiro','categoria'=>'CD'], 

               ['id' => '116', 'name' => 'criar_cd', 'display_name' => 'Criar CD', 'description' => 'Criar Compras a dinheiro','categoria'=>'CD'], 

              ['id' => '117', 'name' => 'remover_cd', 'display_name' => 'Remover CD', 'description' => 'Remover Compras a dinheiro','categoria'=>'CD'],

              ['id' => '118', 'name' => 'editar_cd', 'display_name' => 'Editar CD', 'description' => 'Editar Compras a dinheiro','categoria'=>'CD'], 

              ['id' => '119', 'name' => 'cancelar_cd', 'display_name' => 'Cancelar CD', 'description' => 'Cancelar Compras a dinheiro','categoria'=>'CD'],



                //Stock
              ['id' => '120', 'name' => 'listar_menu_entrada', 'display_name' => 'Mostrar Menu Entrada', 'description' => 'Mostrar Menu Entrada','categoria'=>'Entrada'], 

                //Stock
              //Dosseier internos Entrada
              ['id' => '121', 'name' => 'listar_entrada', 'display_name' => 'Mostrar Entrada', 'description' => 'Mostrar Entrada','categoria'=>'Dossiers Internos'], 

               ['id' => '122', 'name' => 'criar_entrada', 'display_name' => 'Criar Entrada', 'description' => 'Criar Entrada','categoria'=>'Dossiers Internos'], 

              ['id' => '123', 'name' => 'remover_entrada', 'display_name' => 'Remover Entrada', 'description' => 'Remover Entrada','categoria'=>'Dossiers Internos'],

              ['id' => '124', 'name' => 'editar_entrada', 'display_name' => 'Editar Entrada', 'description' => 'Editar Entrada','categoria'=>'Dossiers Internos'], 



               //Stock
              // Dosseier internos  Saida
              ['id' => '125', 'name' => 'listar_saida', 'display_name' => 'Mostrar Saida', 'description' => 'Mostrar Saida','categoria'=>'Dossiers Internos'], 

               ['id' => '126', 'name' => 'criar_saida', 'display_name' => 'Criar Saida', 'description' => 'Criar Saida','categoria'=>'Dossiers Internos'], 

              ['id' => '127', 'name' => 'remover_saida', 'display_name' => 'Remover Saida', 'description' => 'Remover Saida','categoria'=>'Dossiers Internos'],

              ['id' => '128', 'name' => 'editar_saida', 'display_name' => 'Editar Saida', 'description' => 'Editar Saida','categoria'=>'Dossiers Internos'], 


              //Stock
              /*Saida
              ['id' => '129', 'name' => 'listar_saida', 'display_name' => 'Mostrar Saida', 'description' => 'Mostrar Saida','categoria'=>'Saida'], 

               ['id' => '130', 'name' => 'criar_saida', 'display_name' => 'Criar Saida', 'description' => 'Criar Saida','categoria'=>'Saida'], 

              ['id' => '131', 'name' => 'remover_saida', 'display_name' => 'Remover Saida', 'description' => 'Remover Saida','categoria'=>'Saida'],

              ['id' => '132', 'name' => 'editar_saida', 'display_name' => 'Editar Saida', 'description' => 'Editar Saida','categoria'=>'Saida'], 

              */

               //Stock
              //Transferencia entre Armazens
              ['id' => '133', 'name' => 'listar_transEntArmz', 'display_name' => 'Mostrar Transf. Arm', 'description' => 'Mostrar Transferencia Armazens','categoria'=>'Dossiers Internos'], 

               ['id' => '134', 'name' => 'criar_transEntArmz', 'display_name' => 'Criar Transf. Arm', 'description' => 'Criar Transferencia Armazens','categoria'=>'Dossiers Internos'], 

              ['id' => '135', 'name' => 'remover_transEntArmz', 'display_name' => 'Remover Transf. Arm', 'description' => 'Remover Transferencia Armazens','categoria'=>'Dossiers Internos'],

              ['id' => '136', 'name' => 'editar_transEntArmz', 'display_name' => 'Editar Transf. Arm', 'description' => 'Editar Transferencia Armazens','categoria'=>'Dossiers Internos'], 



                //Tesouraria
              ['id' => '137', 'name' => 'listar_menu_tesouraria', 'display_name' => 'Mostrar Menu Tesouraria', 'description' => 'Mostrar Menu Tesouraria','categoria'=>'Tesouraria'], 

              //Tesouraria
              //Contas Bancarias
              ['id' => '138', 'name' => 'listar_ContasBancarias', 'display_name' => 'Mostrar Cont. Banc', 'description' => 'Mostrar Contas Bancarias','categoria'=>'ContasBancarias'], 

               ['id' => '139', 'name' => 'criar_ContasBancarias', 'display_name' => 'Criar Cont. Banc', 'description' => 'Criar Contas Bancarias','categoria'=>'ContasBancarias'], 

              ['id' => '140', 'name' => 'remover_ContasBancarias', 'display_name' => 'Remover Cont. Banc', 'description' => 'Remover Contas Bancarias','categoria'=>'ContasBancarias'],

              ['id' => '141', 'name' => 'editar_ContasBancarias', 'display_name' => 'Editar Cont. Banc', 'description' => 'Editar Contas Bancarias','categoria'=>'ContasBancarias'], 

              //Tesouraria
              //Depositos
              ['id' => '142', 'name' => 'listar_Depositos', 'display_name' => 'Mostrar Depositos', 'description' => 'Mostrar Depositos','categoria'=>'Depositos'], 

               ['id' => '143', 'name' => 'criar_Depositos', 'display_name' => 'Criar Depositos', 'description' => 'Criar Depositos','categoria'=>'Depositos'], 

              ['id' => '144', 'name' => 'remover_Depositos', 'display_name' => 'Remover Depositos', 'description' => 'Remover Depositos','categoria'=>'Depositos'],

              ['id' => '145', 'name' => 'editar_Depositos', 'display_name' => 'Editar Depositos', 'description' => 'Editar Depositos','categoria'=>'Depositos'], 


               //Tesouraria
              //Transferencias
              ['id' => '146', 'name' => 'listar_transferencias', 'display_name' => 'Mostrar Transferencias', 'description' => 'Mostrar Transferencias','categoria'=>'Transferencias'], 

               ['id' => '147', 'name' => 'criar_transferencias', 'display_name' => 'Criar Transferencias', 'description' => 'Criar Transferencias','categoria'=>'Transferencias'], 

              ['id' => '148', 'name' => 'remover_transferencias', 'display_name' => 'Remover Transferencias', 'description' => 'Remover Transferencias','categoria'=>'Transferencias'],

              ['id' => '149', 'name' => 'editar_transferencias', 'display_name' => 'Editar Transferencias', 'description' => 'Editar Transferencias','categoria'=>'Transferencias'], 


              //Tesouraria
              //Transacoes
              ['id' => '150', 'name' => 'listar_transacoes', 'display_name' => 'Mostrar Transacoes', 'description' => 'Mostrar Transacoes','categoria'=>'Transacoes'], 

               ['id' => '151', 'name' => 'filtrar_transacoes', 'display_name' => 'Filtrar Transacoes', 'description' => 'Filtrar Transacoes','categoria'=>'Transacoes'], 


               //Nota_credito
              ['id' => '152', 'name' => 'listar_nota_credito', 'display_name' => 'Mostrar Nota de Credito', 'description' => 'Mostrar  Nota Credito','categoria'=>'Nota Credito'],  

              ['id' => '153', 'name' => 'criar_nota_credito', 'display_name' => 'Criar Nota Credito', 'description' => 'Criar Nota Credito','categoria'=>'Nota Credito'], 

              ['id' => '155', 'name' => 'remover_nota_credito', 'display_name' => 'Remover Nota Credito', 'description' => 'Remover Nota Credito','categoria'=>'Nota Credito'],

              ['id' => '154', 'name' => 'editar_nota_credito', 'display_name' => 'Editar Nota Credito', 'description' => 'Editar Nota Credito','categoria'=>'Nota Credito'], 

              //['id' => '155', 'name' => 'cancelar_nota_credito', 'display_name' => 'Cancelar Nota Credito', 'description' => 'Cancelar Nota Credito','categoria'=>'Nota Credito'],


              //Nota_credito
              ['id' => '156', 'name' => 'listar_nota_debito', 'display_name' => 'Mostrar Nota Debito', 'description' => 'Mostrar Nota Debito','categoria'=>'Nota Debito'],  

              ['id' => '157', 'name' => 'criar_nota_debito', 'display_name' => 'Criar Nota Debito', 'description' => 'Criar Nota Debito','categoria'=>'Nota Debito'], 

              ['id' => '158', 'name' => 'remover_nota_debito', 'display_name' => 'Remover Nota Debito', 'description' => 'Remover Nota Debito','categoria'=>'Nota Debito'],

              ['id' => '159', 'name' => 'editar_nota_debito', 'display_name' => 'Editar Nota Debito', 'description' => 'Editar Nota Debito','categoria'=>'Nota Debito'], 

              ['id' => '160', 'name' => 'cancelar_nota_debito', 'display_name' => 'Cancelar Nota Debito', 'description' => 'Cancelar Nota Debito','categoria'=>'Nota Debito'],


              // Guia transposte 
             ['id' => '161', 'name' => 'listar_guia_transporte', 'display_name' => 'Mostrar Guia de Transporte', 'description' => 'Mostrar  Guia de Transporte','categoria'=>'Guia de Transporte'],  

              ['id' => '162', 'name' => 'criar_guia_transporte', 'display_name' => 'Criar Guia de Transporte', 'description' => 'Criar Guia de Transporte','categoria'=>'Guia de Transporte'], 

              ['id' => '163', 'name' => 'remover_guia_transporte', 'display_name' => 'Remover Guia de Transporte', 'description' => 'Remover Guia de Transporte','categoria'=>'Guia de Transporte'],

              ['id' => '164', 'name' => 'editar_guia_transporte', 'display_name' => 'Editar Guia de Transporte', 'description' => 'Editar Guia de Transporte','categoria'=>'Guia de Transporte'], 

              ['id' => '165', 'name' => 'cancelar_guia_transporte', 'display_name' => 'Cancelar Guia de Transporte', 'description' => 'Cancelar Guia de Transporte','categoria'=>'Guia de Transporte'],


              //Nota_
              ['id' => '166', 'name' => 'listar_guia_entrega', 'display_name' => 'Mostrar Guia de Entrega', 'description' => 'Mostrar Guia de Entrega','categoria'=>'Guia de Entrega'],  

              ['id' => '167', 'name' => 'criar_guia_entrega', 'display_name' => 'Criar Guia de Entrega', 'description' => 'Criar Guia de Entrega','categoria'=>'Guia de Entrega'], 

              ['id' => '168', 'name' => 'remover_guia_entrega', 'display_name' => 'Remover Guia de Entrega', 'description' => 'Remover Guia de Entrega','categoria'=>'Guia de Entrega'],

              ['id' => '169', 'name' => 'editar_guia_entrega', 'display_name' => 'Editar Guia de Entrega', 'description' => 'Editar Guia de Entrega','categoria'=>'Guia de Entrega'], 

              ['id' => '170', 'name' => 'cancelar_guia_entrega', 'display_name' => 'Cancelar Guia de Entrega', 'description' => 'Cancelar Guia de Entrega','categoria'=>'Guia de Entrega'],
              ['id' => '171', 'name' => 'dashbord_produ_stock', 'display_name' => 'Mostar produtos mais vendidos', 'description' => 'Mostar produtos mais vendidos', 'categoria'=>'Dashborad'],
              ['id' => '172', 'name' => 'report_stock_existente', 'display_name' => 'Mostar Stcok existente', 'description' => 'Mostar Stcok existente', 'categoria'=>'Item'],
              ['id' => '173', 'name' => 'report_stock_validade', 'display_name' => 'Mostar Prazo de validade', 'description' => 'Mostar Prazo de validade', 'categoria'=>'Item'],


              //adiantamentos
              ['id' => '174', 'name' => 'listar_adiantamentos', 'display_name' => 'Mostrar Recibo de adiantamento', 'description' => 'Mostrar Recibo de adiantamento','categoria'=>'Recibo de Adiantamento'],  
              ['id' => '175', 'name' => 'criar_adiantamentos', 'display_name' => 'Criar Recibo de Adiantamento', 'description' => 'Criar Recibo de Adiantamento','categoria'=>'Recibo de Adiantamento'], 
              ['id' => '176', 'name' => 'remover_adiantamentos', 'display_name' => 'Remover Recibo de Adiantamento', 'description' => 'Remover Recibo de Adiantamento','categoria'=>'Recibo de Adiantamento'],
              ['id' => '177', 'name' => 'editar_adiantamentos', 'display_name' => 'Editar Recibo de Adiantamento', 'description' => 'Editar Recibo de Adiantamento','categoria'=>'Recibo de Adiantamento'], 
              
              //'categoria'=>'Ordem de Compras'
              ['id' => '178', 'name' => 'listar_ordem_compra', 'display_name' => 'Mostrar Ordem de Compras', 'description' => 'Mostrar Ordem de Compras','categoria'=>'Ordem de Compras'],  
              ['id' => '179', 'name' => 'criar_ordem_compra', 'display_name' => 'Criar Ordem de Compras', 'description' => 'Criar Ordem de Compras','categoria'=>'Ordem de Compras'], 
              ['id' => '180', 'name' => 'remover_ordem_compra', 'display_name' => 'Remover Ordem de Compras', 'description' => 'Remover Ordem de Compras','categoria'=>'Ordem de Compras'],
              ['id' => '181', 'name' => 'editar_ordem_compra', 'display_name' => 'Editar Ordem de Compras', 'description' => 'Editar Ordem de Compras','categoria'=>'Ordem de Compras'], 
              
   

              //'categoria'=>'relatorios'
              ['id' => '182', 'name' => 'report_mostrar', 'display_name' => 'Mostrar Relatorio', 'description' => 'Mostrar Relatorio','categoria'=>'Relatorio'], 
              ['id' => '183', 'name' => 'report_stock', 'display_name' => 'Mostrar relatorio de Stock', 'description' => 'Mostrar relatorio de Stock','categoria'=>'Relatorio'],  
              ['id' => '184', 'name' => 'report_clientes', 'display_name' => 'Relatorio de clientes', 'description' => 'Relatorio de clientes','categoria'=>'Relatorio'], 
              ['id' => '185', 'name' => 'report_fornecedores', 'display_name' => 'Relatorio de fornecedores', 'description' => 'Relatorio de fornecedores','categoria'=>'Relatorio'],
              ['id' => '186', 'name' => 'report_vendas', 'display_name' => 'Relatorio de vendas', 'description' => 'Relatorio de vendas','categoria'=>'Relatorio'], 
              ['id' => '187', 'name' => 'report_compras', 'display_name' => 'Relatorio de compras', 'description' => 'Relatorio de compras','categoria'=>'Relatorio'], 
              ['id' => '188', 'name' => 'report_despesas', 'display_name' => 'Relatorio de despesas', 'description' => 'Relatorio de despesas','categoria'=>'Relatorio'], 
              //manage_general_setting

              //'categoria das despesas'
              ['id' => '189', 'name' => 'criar_despesas', 'display_name' => 'Criar Despesas', 'description' => 'Criar Despesas','categoria'=>'Despesas'], 
              ['id' => '190', 'name' => 'remover_despesas', 'display_name' => 'Remover Despesas', 'description' => 'Remover Despesas','categoria'=>'Despesas'],
              ['id' => '191', 'name' => 'editar_despesas', 'display_name' => 'Editar Despesas', 'description' => 'Editar Despesas','categoria'=>'Despesas'], 
              ['id' => '192', 'name' => 'listar_despesas', 'display_name' => 'Mostrar Despesas', 'description' => 'Mostrar Despesas','categoria'=>'Despesas'],  
              ['id' => '193', 'name' => 'gerir_despesas_categoria', 'display_name' => 'Mostrar,Registar,editar a categoria das Despesas', 'description' => 'Mostrar,Registar,editar a categoria das Despesas','categoria'=>'Despesas'],  
              

                //taxas
                ['id' => '194', 'name' => 'criar_taxa', 'display_name' => 'Criar taxa', 'description' => 'Criar Taxas','categoria'=>'Taxas'], 
                ['id' => '195', 'name' => 'remover_taxa', 'display_name' => 'Remover taxa', 'description' => 'Remover Taxas','categoria'=>'Taxas'],
                ['id' => '196', 'name' => 'editar_taxa', 'display_name' => 'Editar taxa', 'description' => 'Editar Taxas','categoria'=>'Taxas'], 
                ['id' => '197', 'name' => 'listar_taxa', 'display_name' => 'Mostrar taxa', 'description' => 'Mostrar Taxas','categoria'=>'Taxas'],  
        

                //parametros diversos
                ['id' => '198', 'name' => 'gerir_paramentros', 'display_name' => 'Gerir diversos parametros', 'description' => 'Gerir diversos parametros','categoria'=>'Parametros'], 
               
        
                  
        ]);
    }
}
