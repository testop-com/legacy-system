-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16-Maio-2022 às 01:16
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `autobas2_financas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ag`
--

CREATE TABLE `ag` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ag`
--

INSERT INTO `ag` (`id`, `nome`, `status`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Entidade teste', 'inactivo', 1, NULL, NULL, '2020-11-25 12:53:02', '2021-06-28 12:24:46'),
(2, 'Entity', 'activo', 1, NULL, NULL, '2020-11-25 12:53:12', NULL),
(3, 'entidade de saida', 'activo', 1, NULL, NULL, '2020-11-25 13:12:59', NULL),
(4, 'entidade de entrada', 'activo', 1, NULL, NULL, '2020-11-25 13:13:11', NULL),
(5, 'entidade de transferencia', 'activo', 1, NULL, NULL, '2020-11-25 13:13:40', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `armazem`
--

CREATE TABLE `armazem` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `armazem`
--

INSERT INTO `armazem` (`id`, `nome`, `abreviatura`, `endereco`, `email`, `telefone`, `fax`, `celular`, `status`, `default`, `user_registar`, `user_update`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Armazem', 'AMZ', 'Local', NULL, NULL, NULL, NULL, 'activo', 'no', NULL, NULL, 1, '2020-11-23 16:20:12', NULL),
(25, 'Loja1', '15121121', 'Eduardo mandlane', '', '', '', '', 'activo', 'yes', NULL, NULL, 1, '2021-05-18 15:45:08', NULL),
(28, 'Loja2', '1512112111', 'Eduardo mandlane', '', '', '', '', 'activo', 'no', NULL, NULL, 1, '2021-05-28 11:50:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bi`
--

CREATE TABLE `bi` (
  `id` int(10) UNSIGNED NOT NULL,
  `bo_id` int(10) UNSIGNED NOT NULL,
  `codigo_produto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_id` int(11) NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `is_inventory` int(11) DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bl`
--

CREATE TABLE `bl` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_de_conta_id` int(11) DEFAULT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta_padrao` int(11) DEFAULT NULL,
  `excluida` int(11) NOT NULL DEFAULT '0',
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rodape` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nib` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swift` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `moeda_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bl`
--

INSERT INTO `bl` (`id`, `tipo_de_conta_id`, `fornecedor_id`, `nome`, `numero`, `nome_do_banco`, `endereco_do_banco`, `conta_padrao`, `excluida`, `descricao`, `rodape`, `nib`, `iban`, `swift`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `moeda_id`) VALUES
(1, 2, 0, 'Millennium bim', '366356197', 'Millennium bim', '', 1, 0, '', 'no', '', '', '', 1, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bo`
--

CREATE TABLE `bo` (
  `id` int(10) UNSIGNED NOT NULL,
  `entidade_id` int(11) DEFAULT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `localizacao_destino_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `taxa_total` double DEFAULT NULL,
  `referencia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxa_cambio` double DEFAULT NULL,
  `contra_valor` double DEFAULT NULL,
  `moedas_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_medida_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `status`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `unidade_medida_id`) VALUES
(1, 'Sem Categoria', 'activo', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_vendas`
--

CREATE TABLE `categoria_vendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `categoria_vendas`
--

INSERT INTO `categoria_vendas` (`id`, `nome`, `descricao`, `tipo`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Vendas', 'Vendas', 'income', NULL, NULL, NULL, NULL, NULL),
(2, 'Compras', 'Compras', 'expense', NULL, NULL, NULL, NULL, NULL),
(3, 'Transferencias(entradas)', 'Transferencias(entradas)', 'income', NULL, NULL, NULL, NULL, NULL),
(4, 'Transferencia(Saida)', 'Transferencia(Saida)', 'expense', NULL, NULL, NULL, NULL, NULL),
(5, 'DESPESAS ADMINISTRATIVAS', 'DESPESAS ADMINISTRATIVAS', 'expense', 1, NULL, NULL, NULL, NULL),
(6, 'MANUTENÇÃO E REPARAÇÃO', 'MANUTENÇÃO E REPARAÇÃO', 'expense', 1, NULL, NULL, NULL, NULL),
(7, 'IMPOSTOS E TAXAS', 'IMPOSTOS E TAXAS', 'expense', 1, NULL, NULL, NULL, NULL),
(8, 'LEVANTAMENTOS', 'LEVANTAMENTOS', 'expense', 1, NULL, NULL, NULL, NULL),
(9, 'SEGUROS', 'SEGUROS', 'expense', 1, NULL, NULL, NULL, NULL),
(10, 'APOIO SOCIAL', 'APOIO SOCIAL', 'expense', 1, NULL, NULL, NULL, NULL),
(11, 'AQUISIÇÃO DE MATERIAL E EQUIPAMENTOS', 'AQUISIÇÃO DE MATERIAL E EQUIPAMENTOS', 'expense', 1, NULL, NULL, NULL, NULL),
(12, 'REMUNERAÇÃO DE TRABALHADORES', 'REMUNERAÇÃO DE TRABALHADORES', 'expense', 1, NULL, NULL, NULL, NULL),
(13, 'REMUNERAÇÃO DE ORGÃOS SOCIAIS', 'REMUNERAÇÃO DE ORGÃOS SOCIAIS', 'expense', 1, NULL, NULL, NULL, NULL),
(14, 'FUNDO DE MANEIO', 'FUNDO DE MANEIO', 'expense', 1, NULL, NULL, NULL, NULL),
(15, 'RECARREGAMENTO DE CARTÕES', 'RECARREGAMENTO DE CARTÕES', 'expense', 1, NULL, NULL, NULL, NULL),
(16, 'TRANSPORTES', 'TRANSPORTES', 'expense', 1, NULL, NULL, NULL, NULL),
(17, 'HORAS EXTRAS', 'HORAS EXTRAS', 'expense', 1, NULL, NULL, NULL, NULL),
(18, 'PRÉMIOS/BONUS/SUBSÍDIOS', 'PRÉMIOS/BONUS/SUBSÍDIOS', 'expense', 1, NULL, NULL, NULL, NULL),
(19, 'COMBUSTÍVEL', 'COMBUSTÍVEL', 'expense', 1, NULL, NULL, NULL, NULL),
(20, 'RENDAS', 'RENDAS', 'expense', 1, NULL, NULL, NULL, NULL),
(21, 'PEÇAS, ACESSÓRIOS E LUBRIFICANTES', 'PEÇAS, ACESSÓRIOS E LUBRIFICANTES', 'expense', 1, NULL, NULL, NULL, NULL),
(22, 'AJUDAS DE CUSTOS', 'AJUDAS DE CUSTOS', 'expense', 1, NULL, NULL, NULL, NULL),
(23, 'DESPESAS OPERACIONAIS', 'DESPESAS OPERACIONAIS', 'expense', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cc`
--

CREATE TABLE `cc` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_documento` double DEFAULT NULL,
  `data` date DEFAULT NULL,
  `por_pagar` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pago` double NOT NULL DEFAULT '0',
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cl`
--

CREATE TABLE `cl` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imposto` int(11) NOT NULL,
  `desconto` double NOT NULL,
  `motivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_generico` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `doc_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cl_temp`
--

CREATE TABLE `cl_temp` (
  `debtor_no` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `status_debtor` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo_cliente` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `campo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `countries`
--

INSERT INTO `countries` (`id`, `country`, `code`) VALUES
(147, 'Moçambique', 'MZ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` char(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `currency`
--

INSERT INTO `currency` (`id`, `name`, `symbol`) VALUES
(1, 'Metical', 'Mt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cust_empresa`
--

CREATE TABLE `cust_empresa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_inicio` date DEFAULT NULL,
  `dia_fim` date DEFAULT NULL,
  `pacote_id` int(11) DEFAULT NULL,
  `idioma_default` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imposto_default` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `moeda_nativa` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cust_empresa`
--

INSERT INTO `cust_empresa` (`id`, `nome`, `email`, `nuit`, `caixa_postal`, `contacto_1`, `contacto_2`, `morada`, `logo`, `dia_inicio`, `dia_fim`, `pacote_id`, `idioma_default`, `imposto_default`, `empresa_id`, `user_registar`, `user_update`, `moeda_nativa`) VALUES
(1, 'TES-TOP, LDA', 'rh@testop.co.mz', '400670021', NULL, '21328056', '21328057', 'AV. KARL MARX, Nº1877 R/C-MAPUTO', 'tesLogo.jpeg', NULL, NULL, 1, 'po', NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`id`, `nome`) VALUES
(1, 'Informatica'),
(2, 'Comercial'),
(3, 'Financeiro'),
(4, 'RH'),
(5, 'Procurment'),
(6, 'Projetos'),
(7, 'Produção'),
(8, 'Qualidade'),
(9, 'Armazem'),
(10, 'Transporte'),
(11, 'Infra-Estrutura'),
(12, 'Secretaria'),
(13, 'Contabilidade'),
(14, 'Administração');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ds`
--

CREATE TABLE `ds` (
  `id` int(10) UNSIGNED NOT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `referencia` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anexo` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ds_categoria`
--

CREATE TABLE `ds_categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL,
  `nome` char(120) NOT NULL,
  `iniciais` varchar(10) DEFAULT NULL,
  `cidade` bigint(20) NOT NULL,
  `observacoes` longtext,
  `logo` varchar(255) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT '0',
  `prefix_id` int(11) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `nuit` varchar(60) DEFAULT NULL,
  `contacto` varchar(60) DEFAULT NULL,
  `morada` varchar(120) DEFAULT NULL,
  `conta_bancaria` varchar(60) DEFAULT NULL,
  `excel_name_folha` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id`, `nome`, `iniciais`, `cidade`, `observacoes`, `logo`, `removido`, `prefix_id`, `email`, `nuit`, `contacto`, `morada`, `conta_bancaria`, `excel_name_folha`) VALUES
(10, 'TES-TOP LDA', 'TT', 1, NULL, NULL, 0, 1, 'rh@testop.co.mz', '400670021', '21328056 ', 'AV. KARL MARX, Nº1877 R/C-MAPUTO', NULL, 'TESTOP_FOLHA_SALARIO.xlsx'),
(11, 'EA- ELECTRO ÁFRICA LDA', 'EA', 1, NULL, NULL, 0, 2, 'rh@electroafrica.co.mz', '400643741', '21421532  ', 'Rua Salipa norte  Nº37 , 1° Andar', NULL, 'ELECTROAFRICA_FOLHA_SALARIO.xlsx'),
(12, 'ELECTRO VERDE LDA', 'EV', 1, NULL, NULL, 0, 3, 'electroverde2016@gmail.com', '400633282', '21321672', 'Rua Salipa Norte Nr. 37 1º Andar, Bairro da Malhangalene, Maputo-Moçambique', NULL, 'ELECTROVERDE_FOLHA_SALARIO.xlsx'),
(13, 'MRCL LDA', 'MR', 13, NULL, NULL, 0, 4, NULL, NULL, NULL, NULL, NULL, 'MRCLLDA_FOLHA_SALARIO.xlsx'),
(14, 'REA LDA', 'RE', 1, NULL, NULL, 0, 6, NULL, NULL, NULL, NULL, NULL, 'GENERIC_FOLHA_SALARIO.xlsx'),
(15, 'MAS CONSTRUÇÕES LDA', 'MC', 1, NULL, NULL, 0, 7, NULL, NULL, NULL, NULL, NULL, 'GENERIC_FOLHA_SALARIO.xlsx'),
(16, 'Q99 LDA', 'Q99', 1, NULL, NULL, 0, 5, 'info@q99.co.mz', '400550761', NULL, 'Av. Karl Marx Nº 1978 1ºAndar Dtº Maputo', NULL, 'Q99SA_FOLHA_SALARIO.xlsx');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contabancaria_1` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contabancaria_2` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entidades`
--

CREATE TABLE `entidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `endereco` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'activo',
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fc`
--

CREATE TABLE `fc` (
  `id` int(10) UNSIGNED NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_documento` double DEFAULT NULL,
  `pago` double NOT NULL DEFAULT '0',
  `data` date DEFAULT NULL,
  `tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `por_pagar` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'nao',
  `debito` double DEFAULT NULL,
  `credito` double DEFAULT NULL,
  `simulacao` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `empresa_register` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `fc`
--

INSERT INTO `fc` (`id`, `fornecedor_id`, `usuario_id`, `documento_id`, `referencia_documento`, `total_documento`, `pago`, `data`, `tipo`, `por_pagar`, `debito`, `credito`, `simulacao`, `estado`, `user_registar`, `user_update`, `empresa_id`, `empresa_register`, `created_at`, `updated_at`) VALUES
(1, 1, 105, 1, 'TT-0001/2022', 81.9, 0, '2022-05-09', 'oc', 'sim', 81.9, NULL, 0, 'activo', 105, NULL, 1, 10, '2022-05-09 16:48:08', NULL),
(2, 1, 106, 2, 'TT-0002/2022', 81900, 0, '2022-05-09', 'oc', 'sim', 81900, NULL, 0, 'activo', 106, NULL, 1, 10, '2022-05-09 17:27:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fi`
--

CREATE TABLE `fi` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_produto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_id` int(11) NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `is_inventory` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_servico` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `ft_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nr_serie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fl`
--

CREATE TABLE `fl` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `fl`
--

INSERT INTO `fl` (`id`, `nome`, `email`, `telefone`, `celular`, `morada`, `cidade`, `provincia`, `nuit`, `pais`, `status`, `caixa_postal`, `empresa_id`, `fornecedor_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Click Computer', 'infclickcomputer@gmail.com', '863529865', '848529865', 'Av. Maguiguana nr 456 RC', 'Maputo', 'Maputo', '400938407', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-09 16:19:40', NULL),
(2, 'somofer', 'somofer.vendas.@unicomo.co.mz', '21303348 ', '823044000', 'Maputo', 'Maputo', 'Maputo', '400007675', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-09 16:42:13', NULL),
(3, 'MHL AUTO SA', 'vendas@mozambiqueholdings.com', '21466061', '21466002', 'Av.angola', 'Maputo', 'Maputo', '400691657', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-09 17:00:10', NULL),
(4, 'A M Multiserviçoes e Investimentos', 'ammultiservinvest@gmail.com', '843619809', '873619809', 'Av. Josina Machel, Nº 42 R/C', 'Maputo', '', '400907834', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-10 19:26:10', '2022-05-10 19:28:55'),
(5, 'Moz Computer', 'sales@mozcomputer', '21329298', '820329298', 'Rua Ngungunhane, Nº 85, 2º Andar', 'Maputo', 'Maputo', '400164721', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-10 20:30:21', '2022-05-10 20:30:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fn`
--

CREATE TABLE `fn` (
  `id` int(10) UNSIGNED NOT NULL,
  `fo_id` int(10) UNSIGNED NOT NULL,
  `codigo_produto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `is_inventory` int(11) DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lote` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_servico` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_id` int(11) NOT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cambioTotal` float NOT NULL,
  `moeda_id` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `fn`
--

INSERT INTO `fn` (`id`, `fo_id`, `codigo_produto`, `descricao`, `quantidade`, `preco_unitario`, `preco_custo`, `tipo_taxa_id`, `valor_taxa`, `is_inventory`, `percentagem_desconto`, `taxa_inclusa_valor`, `lote`, `item_servico`, `st_id`, `user_registar`, `user_update`, `empresa_id`, `created_at`, `updated_at`, `cambioTotal`, `moeda_id`) VALUES
(1, 1, 'zero', 'Computador completo', 1, 70, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(2, 2, 'zero', 'computador', 1, 70000, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fo`
--

CREATE TABLE `fo` (
  `id` int(10) UNSIGNED NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `banco_fornecedor` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `taxa_total` double DEFAULT NULL,
  `referencia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aprovacao` int(11) NOT NULL DEFAULT '2' COMMENT '0 - Nao aprovado 1 - Aprovado 2 - Aguardando Avaliacao',
  `prioridade` int(11) NOT NULL DEFAULT '3',
  `departamento_id` int(11) NOT NULL DEFAULT '1',
  `documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localizacao_id` int(11) NOT NULL,
  `requisicao` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `taxa_cambio` double DEFAULT '1',
  `contra_valor` double DEFAULT NULL,
  `simulacao` int(11) NOT NULL DEFAULT '0',
  `moedas_id` int(10) UNSIGNED DEFAULT '1',
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `empresa_register` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alert_new_doc` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `fo`
--

INSERT INTO `fo` (`id`, `fornecedor_id`, `banco_fornecedor`, `usuario_id`, `data`, `taxa_total`, `referencia`, `comentario`, `total`, `estado`, `aprovacao`, `prioridade`, `departamento_id`, `documento`, `localizacao_id`, `requisicao`, `user_registar`, `user_update`, `taxa_cambio`, `contra_valor`, `simulacao`, `moedas_id`, `empresa_id`, `empresa_register`, `created_at`, `updated_at`, `alert_new_doc`) VALUES
(1, 1, NULL, 105, '2022-05-09', 11.9, 'TT- 0001 /2022', 'Para dona Gilu Nemane', 81.9, 'activo', 2, 1, 1, 'oc', 0, NULL, 105, NULL, NULL, 81.9, 0, NULL, 1, 10, '2022-05-09 16:48:08', NULL, 1),
(2, 1, NULL, 106, '2022-05-09', 11900, 'TT-0002/2022', 'D. Gilu', 81900, 'activo', 2, 1, 1, 'oc', 0, NULL, 106, NULL, NULL, 81900, 0, NULL, 1, 10, '2022-05-09 17:27:26', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ft`
--

CREATE TABLE `ft` (
  `id` int(10) UNSIGNED NOT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `factura_id` int(11) DEFAULT NULL,
  `cotacao_id` int(11) DEFAULT NULL,
  `conta_bancaria_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `requisicao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `termo_pagamento_id` int(11) NOT NULL DEFAULT '1',
  `data` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `local_entrega` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_motorista` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carta_conducao` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricula_carro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `taxa_total` double DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `taxa_cambio` double DEFAULT NULL,
  `contra_valor` double DEFAULT NULL,
  `moedas_id` int(10) UNSIGNED DEFAULT '1',
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `impresso_original` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moeda_nativa` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lotes_validades`
--

CREATE TABLE `lotes_validades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id`, `nome`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Sem Marca', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Puma', 1, NULL, NULL, '2021-05-18 14:51:53', NULL, NULL),
(23, 'Arroz Marcs', 1, NULL, NULL, '2021-05-28 11:46:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `meses`
--

CREATE TABLE `meses` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `metodos_pagamento`
--

CREATE TABLE `metodos_pagamento` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `metodos_pagamento`
--

INSERT INTO `metodos_pagamento` (`id`, `nome`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Numerário', NULL, NULL, NULL),
(2, 'M-Pesa', NULL, NULL, NULL),
(3, 'POS', NULL, NULL, NULL),
(4, 'Transferência', NULL, NULL, NULL),
(5, 'Cheque', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `moedas`
--

CREATE TABLE `moedas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singular` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plural` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `casas_decimais_sing` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `casas_decimais_plu` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_price` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `empresa_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `moedas`
--

INSERT INTO `moedas` (`id`, `nome`, `singular`, `plural`, `casas_decimais_sing`, `casas_decimais_plu`, `show_price`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'MZN', 'Metical', 'Meticais', '', NULL, 'no', NULL, NULL, NULL),
(2, 'USD', 'Dollar', 'Dollars', '', NULL, 'yes', NULL, NULL, NULL),
(3, 'EUR', 'Euro', 'Euros', '', NULL, 'no', NULL, NULL, NULL),
(4, 'GBP', 'Libra', 'Libra', '', NULL, 'no', NULL, NULL, NULL),
(5, 'ZAR', 'Rand', 'Rand', '', NULL, 'no', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ultimo_visto` date DEFAULT NULL,
  `destinatario_id` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prioridade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registado_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `notificacoes`
--

INSERT INTO `notificacoes` (`id`, `tipo`, `descricao`, `data`, `ultimo_visto`, `destinatario_id`, `estado`, `prioridade`, `registado_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'sistema', 'O Usuario Admin  fez login na data 2022-04-29 23:39:03', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-04-30 04:39:03', NULL),
(2, 'sistema', 'O Usuario PANKAJ JEENTILAL  fez login na data 2022-04-29 23:43:26', NULL, NULL, 92, 'vista', NULL, 92, NULL, NULL, '2022-04-30 04:43:26', NULL),
(3, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-04-30 11:11:52', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-04-30 16:11:52', NULL),
(4, 'sistema', 'O Usuario Admin  fez login na data 2022-04-30 11:14:03', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-04-30 16:14:03', NULL),
(5, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-04-30 11:15:31', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-04-30 16:15:31', NULL),
(6, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-04-30 11:18:31', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-04-30 16:18:31', NULL),
(7, 'sistema', 'O Usuario CHEILA QUILAMBO  fez login na data 2022-04-30 11:34:14', NULL, NULL, 99, 'vista', NULL, 99, NULL, NULL, '2022-04-30 16:34:14', NULL),
(8, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-04-30 11:45:06', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-04-30 16:45:06', NULL),
(9, 'sistema', 'O Usuario CHEILA QUILAMBO  fez login na data 2022-04-30 11:48:28', NULL, NULL, 99, 'vista', NULL, 99, NULL, NULL, '2022-04-30 16:48:28', NULL),
(10, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-04-30 11:55:52', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-04-30 16:55:52', NULL),
(11, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-04-30 12:01:35', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-04-30 17:01:35', NULL),
(12, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-05-05 10:58:11', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-05-05 15:58:11', NULL),
(13, 'sistema', 'O Usuario Admin  fez login na data 2022-05-05 11:19:51', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-05 16:19:51', NULL),
(14, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-05-09 10:32:34', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-05-09 15:32:34', NULL),
(15, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-09 10:55:53', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-09 15:55:53', NULL),
(16, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-09 10:56:22', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-09 15:56:22', NULL),
(17, 'sistema', 'O Usuario MARCIA MATSIMBE  fez login na data 2022-05-09 10:57:34', NULL, NULL, 100, 'vista', NULL, 100, NULL, NULL, '2022-05-09 15:57:34', NULL),
(18, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-09 11:00:51', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-09 16:00:51', NULL),
(19, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-09 11:09:01', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-09 16:09:01', NULL),
(20, 'sistema', 'O Usuario EDSON PAPORO  fez login na data 2022-05-09 11:15:02', NULL, NULL, 96, 'vista', NULL, 96, NULL, NULL, '2022-05-09 16:15:02', NULL),
(21, 'sistema', 'O Usuario ADEEL DAUDE  fez login na data 2022-05-09 11:36:43', NULL, NULL, 108, 'vista', NULL, 108, NULL, NULL, '2022-05-09 16:36:43', NULL),
(22, 'sistema', 'O Usuario ADEEL DAUDE  fez login na data 2022-05-09 11:36:44', NULL, NULL, 108, 'vista', NULL, 108, NULL, NULL, '2022-05-09 16:36:44', NULL),
(23, 'sistema', 'O Usuario ADEEL DAUDE  fez login na data 2022-05-09 11:37:33', NULL, NULL, 108, 'vista', NULL, 108, NULL, NULL, '2022-05-09 16:37:33', NULL),
(24, 'sistema', 'O Usuario LUANA GOULAP  fez login na data 2022-05-09 11:41:20', NULL, NULL, 105, 'vista', NULL, 105, NULL, NULL, '2022-05-09 16:41:20', NULL),
(25, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-09 11:55:10', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-09 16:55:10', NULL),
(26, 'sistema', 'O Usuario GLORIA COME  fez login na data 2022-05-09 12:09:24', NULL, NULL, 115, 'vista', NULL, 115, NULL, NULL, '2022-05-09 17:09:24', NULL),
(27, 'sistema', 'O Usuario RAYHAN KHALID  fez login na data 2022-05-09 12:25:10', NULL, NULL, 106, 'vista', NULL, 106, NULL, NULL, '2022-05-09 17:25:10', NULL),
(28, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-09 12:29:13', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-09 17:29:13', NULL),
(29, 'sistema', 'O Usuario CHALEMBA GUAMBE  fez login na data 2022-05-09 12:31:25', NULL, NULL, 118, 'vista', NULL, 118, NULL, NULL, '2022-05-09 17:31:25', NULL),
(30, 'sistema', 'O Usuario MARCIA MATSIMBE  fez login na data 2022-05-09 15:30:13', NULL, NULL, 100, 'vista', NULL, 100, NULL, NULL, '2022-05-09 20:30:13', NULL),
(31, 'sistema', 'O Usuario MUHAMMAD KHALIL  fez login na data 2022-05-09 15:53:48', NULL, NULL, 122, 'vista', NULL, 122, NULL, NULL, '2022-05-09 20:53:48', NULL),
(32, 'sistema', 'O Usuario RAYHAN KHALID  fez login na data 2022-05-10 08:54:09', NULL, NULL, 106, 'vista', NULL, 106, NULL, NULL, '2022-05-10 13:54:09', NULL),
(33, 'sistema', 'O Usuario LENA DOS SANTOS  fez login na data 2022-05-10 11:14:23', NULL, NULL, 98, 'vista', NULL, 98, NULL, NULL, '2022-05-10 16:14:23', NULL),
(34, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-10 14:10:43', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-10 19:10:43', NULL),
(35, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-10 14:11:27', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-10 19:11:27', NULL),
(36, 'sistema', 'O Usuario EDSON PAPORO  fez login na data 2022-05-10 14:21:42', NULL, NULL, 96, 'vista', NULL, 96, NULL, NULL, '2022-05-10 19:21:42', NULL),
(37, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-10 14:28:06', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-10 19:28:06', NULL),
(38, 'sistema', 'O Usuario MARCIA MATSIMBE  fez login na data 2022-05-10 16:45:49', NULL, NULL, 100, 'vista', NULL, 100, NULL, NULL, '2022-05-10 21:45:49', NULL),
(39, 'sistema', 'O Usuario Admin  fez login na data 2022-05-10 17:25:07', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-10 22:25:07', NULL),
(40, 'sistema', 'O Usuario MARCIA MATSIMBE  fez login na data 2022-05-11 11:41:24', NULL, NULL, 100, 'vista', NULL, 100, NULL, NULL, '2022-05-11 16:41:24', NULL),
(41, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-11 12:00:34', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-11 17:00:34', NULL),
(42, 'sistema', 'O Usuario Admin  fez login na data 2022-05-11 15:14:51', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-11 20:14:51', NULL),
(43, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-11 15:52:01', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-11 20:52:01', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ol`
--

CREATE TABLE `ol` (
  `id` int(10) UNSIGNED NOT NULL,
  `montante` double DEFAULT NULL,
  `tipo_de_transacao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_transacao` date DEFAULT NULL,
  `referencia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta_bancaria_id` int(11) DEFAULT NULL,
  `conta_destino_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `anexos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacote`
--

CREATE TABLE `pacote` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `nr_usuarios` int(11) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pacote`
--

INSERT INTO `pacote` (`id`, `nome`, `role_id`, `nr_usuarios`, `estado`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Pro', 1, 12, 'activo', NULL, NULL, NULL, NULL),
(2, 'Boost', 4, 10, 'activo', NULL, NULL, NULL, NULL),
(3, 'Start Up', 3, 12, 'activo', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento_prestacoes`
--

CREATE TABLE `pagamento_prestacoes` (
  `id` int(11) NOT NULL,
  `documento_id` int(11) NOT NULL,
  `data_pagamento` date NOT NULL,
  `valor` int(11) NOT NULL,
  `user_registar` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1' COMMENT '1 - Activo; 0 - Inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `categoria`, `created_at`, `updated_at`) VALUES
(1, 'listagem_dashboard', 'Visuar Dashbord', 'Visuar Dashbord', 'Dashborad', NULL, NULL),
(2, 'dashbord_qt_stock', 'Mostrar qtd stock', 'Mostrar qtd stock', 'Dashborad', NULL, NULL),
(3, 'dashbord_vd_dia', 'Mostrar total vendas diarias', 'Mostrar total vendas diarias', 'Dashborad', NULL, NULL),
(4, 'dashbord_expirar', 'Mostar stock a expirar', 'Mostar stock a expirar', 'Dashborad', NULL, NULL),
(5, 'dashbord_user', 'Mostrar total usuarios', 'Mostrar total usuarios', 'Dashborad', NULL, NULL),
(7, 'dashbord_fact', 'Mostrar resumos dos facturacao', 'Mostrar resumos dos facturacao', 'Dashborad', NULL, NULL),
(8, 'dashbord_alert_stock', 'Mostrar alerta stock', 'Mostrar alerta stock', 'Dashborad', NULL, NULL),
(9, 'dashbord_alert_expirar', 'Mostrar stock a expirar em meses', 'Mostrar stock a expirar em meses', 'Dashborad', NULL, NULL),
(10, 'listagem_terceiros', 'listar  terceiros', 'listar  terceiros', 'Terceiros', NULL, NULL),
(11, 'criar_clientes', 'criar clientes', 'criar clientes', 'Clientes', NULL, NULL),
(12, 'listar_clientes', 'listar clientes', 'listar clientes', 'Clientes', NULL, NULL),
(13, 'remover_clientes', 'remover clientes', 'remover clientes', 'Clientes', NULL, NULL),
(14, 'editar_clientes', 'editar clientes', 'editar clientes', 'Clientes', NULL, NULL),
(15, 'listar_fornecedores', 'listar fornecedores', 'listar fornecedores', 'Fornecedores', NULL, NULL),
(16, 'criar_fornecedores', 'criar fornecedores', 'criar_fornecedores', 'Fornecedores', NULL, NULL),
(17, 'remover_fornecedores', 'remover fornecedores', 'remover fornecedores', 'Fornecedores', NULL, NULL),
(18, 'editar_fornecedores', 'editar fornecedores', 'editar fornecedores', 'Fornecedores', NULL, NULL),
(44, 'listar_vendar', 'Mostrar vendas', 'Mostrar vendas', 'Vendas', NULL, NULL),
(49, 'listar_vds', 'Mostrar VDs', 'Mostrar Vendas a dinheiro', 'VDs', NULL, NULL),
(50, 'criar_vds', 'Criar VDs', 'Criar Vendas a dinheiro', 'VDs', NULL, NULL),
(51, 'remover_vds', 'Remover VDs', 'Remover Vendas a dinheiro', 'VDs', NULL, NULL),
(52, 'manage_setting', 'Gerir Definicoes', 'Gerir Definicoes', 'Definicoes', NULL, NULL),
(53, 'manage_company_setting', 'Gerir Definicoes da empresa', 'Gerir Definicoes da empresa', 'Definicoes', NULL, NULL),
(54, 'manage_team_member', 'Listar Usuarios', 'Listar Usuarios', 'Definicoes', NULL, NULL),
(55, 'add_team_member', 'Adicionar Usuario', 'Adicionar Usuario', 'Definicoes', NULL, NULL),
(56, 'edit_team_member', 'Editar usuarios', 'Edit Usuario', 'Definicoes', NULL, NULL),
(57, 'delete_team_member', 'Eliminar usuarios', 'Eliminar Usuario', 'Definicoes', NULL, NULL),
(58, 'manage_role', 'Listar Perfil', 'Listar Perfil', 'Definicoes', NULL, NULL),
(59, 'add_role', 'Adicionar Perfil', 'Adicionar Perfil', 'Definicoes', NULL, NULL),
(60, 'edit_role', 'Editar Perfil', 'Editar Perfil', 'Definicoes', NULL, NULL),
(61, 'delete_role', 'Remover Perfil', 'Remover Perfil', 'Definicoes', NULL, NULL),
(62, 'manage_general_setting', 'Listar Definicoes', 'Listar Definicoes', 'Definicoes', NULL, NULL),
(63, 'manage_db_backup', 'Listar Database Backup', 'Listar Database Backup', 'Definicoes', NULL, NULL),
(64, 'add_db_backup', 'Criar Database Backup', 'Criar Database Backup', 'Definicoes', NULL, NULL),
(65, 'delete_db_backup', 'Delete Database Backup', 'Delete Database Backup', 'Definicoes', NULL, NULL),
(66, 'manage_email_setup', 'Manage Email Setup', 'Manage Email Setup', 'Definicoes', NULL, NULL),
(67, 'manage_preference', 'Manage Preference', 'Manage Preference', 'Definicoes', NULL, NULL),
(68, 'atribuir_user_empresa', 'Atribuir Empresa a Usuario', 'Atribuir Empresa a Usuario', 'Definicoes', NULL, NULL),
(69, 'editar_user_empresa', 'Editar Empresa a Usuario', 'Editar Empresa a Usuario', 'Definicoes', NULL, NULL),
(74, 'gerir_painel_admin', 'Gerir Painel Administrativo', 'Gerir Painel Administrativo', 'Admin', NULL, NULL),
(75, 'manage_company', 'Dados da empresa', 'Dados Principais da empresa', 'Gestao tabelas Auxiliares', NULL, NULL),
(76, 'manage_aux_table', 'Dados T. Auxiliar', 'Dados tableas Auxilares', 'Gestao tabelas Auxiliares', NULL, NULL),
(77, 'list_perfil_usuarios', 'Visualizar Perfil Usuarios', 'Visualizar Perfil Usuarios', 'usuarios perfil nas empresas', NULL, NULL),
(78, 'remove_perfil_empresa', 'Remover Perfil Usuarios', 'Remover Perfil usuarios', 'usuarios perfil nas empresas', NULL, NULL),
(79, 'edit_perfil_empresa', 'Editar Perfil Usuarios', 'Editar Perfil usuarios', 'usuarios perfil nas empresas', NULL, NULL),
(80, 'add_perfil_empresa', 'Adicionar Perfil a usuarios', 'Adicionar Perfil a usuarios', 'usuarios perfil nas empresas', NULL, NULL),
(81, 'manage_perfil', 'Gerir Perfil', 'Gerir Perfil', 'usuarios perfil nas empresas', NULL, NULL),
(82, 'list_usuarios', 'Visualizar Usuarios', 'visualizar usuarios', 'usuarios empresas', NULL, NULL),
(83, 'remove_usuarios', 'Remover Usuarios', 'Remover usuarios', 'usuarios empresas', NULL, NULL),
(84, 'edit_usuarios', 'Editar Usuarios', 'Editar usuarios', 'usuarios empresas', NULL, NULL),
(85, 'add_usuarios', 'Adicionar usuarios', 'Adicionar usuarios', 'usuarios empresas', NULL, NULL),
(86, 'manage_usuarios', 'Gerir usuarios', 'Gerir usuarios', 'usuarios empresas', NULL, NULL),
(87, 'editar_vds', 'Editar VDs', 'Editar Vendas a dinheiro', 'VDs', NULL, NULL),
(88, 'cancelar_vds', 'Cancelar VDs', 'Cancelar Vendas a dinheiro', 'VDs', NULL, NULL),
(89, 'listar_cotacoes', 'Mostrar cotacoes', 'Mostrar cotacoes', 'Cotacoes', NULL, NULL),
(90, 'criar_cotacoes', 'Criar cotacoes', 'Criar cotacoes', 'Cotacoes', NULL, NULL),
(91, 'remover_cotacoes', 'Remover cotacoes', 'Remover cotacoes', 'Cotacoes', NULL, NULL),
(92, 'editar_cotacoes', 'Editar cotacoes', 'Editar cotacoes', 'Cotacoes', NULL, NULL),
(93, 'cancelar_cotacoes', 'Cancelar cotacoes', 'Cancelar cotacoes', 'Cotacoes', NULL, NULL),
(94, 'listar_facturas', 'Mostrar facturas', 'Mostrar facturas', 'Facturas', NULL, NULL),
(95, 'criar_facturas', 'Criar facturas', 'Criar cotacoes', 'Facturas', NULL, NULL),
(96, 'remover_facturas', 'Remover facturas', 'Remover facturas', 'Facturas', NULL, NULL),
(97, 'editar_facturas', 'Editar facturas', 'Editar facturas', 'Facturas', NULL, NULL),
(98, 'cancelar_facturas', 'Cancelar facturas', 'Cancelar facturas', 'Facturas', NULL, NULL),
(99, 'listar_recibos', 'Mostrar Recibos', 'Mostrar Recibos', 'Recibos', NULL, NULL),
(100, 'criar_recibos', 'Criar Recibos', 'Criar cotacoes', 'Recibos', NULL, NULL),
(101, 'remover_recibos', 'Remover Recibos', 'Remover Recibos', 'Recibos', NULL, NULL),
(102, 'editar_recibos', 'Editar Recibos', 'Editar Recibos', 'Recibos', NULL, NULL),
(103, 'cancelar_recibos', 'Cancelar Recibos', 'Cancelar Recibos', 'Recibos', NULL, NULL),
(104, 'listar_menu_compras', 'Mostrar Menu Requisições', 'Mostrar Menu Requisições', 'Requisições', NULL, NULL),
(105, 'listar_compras', 'Mostrar Requisições', 'Mostrar Requisições', 'Requisições', NULL, NULL),
(106, 'criar_compras', 'Criar Requisições', 'Criar Requisições', 'Requisições', NULL, NULL),
(107, 'remover_compras', 'Remover Requisições', 'Remover Requisições', 'Requisições', NULL, NULL),
(108, 'editar_compras', 'Editar Requisições', 'Editar Requisições', 'Requisições', NULL, NULL),
(109, 'cancelar_compras', 'Cancelar Requisições', 'Cancelar Requisições', 'Requisições', NULL, NULL),
(110, 'listar_pagamentos', 'Mostrar Pagamentos', 'Mostrar Pagamentos', 'Pagamentos', NULL, NULL),
(111, 'criar_pagamentos', 'Criar Pagamentos', 'Criar Pagamentos', 'Pagamentos', NULL, NULL),
(112, 'remover_pagamentos', 'Remover Pagamentos', 'Remover Pagamentos', 'Pagamentos', NULL, NULL),
(113, 'editar_pagamentos', 'Editar Pagamentos', 'Editar Pagamentos', 'Pagamentos', NULL, NULL),
(114, 'cancelar_pagamentos', 'Cancelar Pagamentos', 'Cancelar Pagamentos', 'Pagamentos', NULL, NULL),
(137, 'listar_menu_tesouraria', 'Mostrar Menu Tesouraria', 'Mostrar Menu Tesouraria', 'Tesouraria', NULL, NULL),
(138, 'listar_ContasBancarias', 'Mostrar Cont. Banc', 'Mostrar Contas Bancarias', 'ContasBancarias', NULL, NULL),
(139, 'criar_ContasBancarias', 'Criar Cont. Banc', 'Criar Contas Bancarias', 'ContasBancarias', NULL, NULL),
(140, 'remover_ContasBancarias', 'Remover Cont. Banc', 'Remover Contas Bancarias', 'ContasBancarias', NULL, NULL),
(141, 'editar_ContasBancarias', 'Editar Cont. Banc', 'Editar Contas Bancarias', 'ContasBancarias', NULL, NULL),
(142, 'listar_Depositos', 'Mostrar Depositos', 'Mostrar Depositos', 'Depositos', NULL, NULL),
(143, 'criar_Depositos', 'Criar Depositos', 'Criar Depositos', 'Depositos', NULL, NULL),
(144, 'remover_Depositos', 'Remover Depositos', 'Remover Depositos', 'Depositos', NULL, NULL),
(145, 'editar_Depositos', 'Editar Depositos', 'Editar Depositos', 'Depositos', NULL, NULL),
(146, 'listar_transferencias', 'Mostrar Transferencias', 'Mostrar Transferencias', 'Transferencias', NULL, NULL),
(147, 'criar_transferencias', 'Criar Transferencias', 'Criar Transferencias', 'Transferencias', NULL, NULL),
(148, 'remover_transferencias', 'Remover Transferencias', 'Remover Transferencias', 'Transferencias', NULL, NULL),
(149, 'editar_transferencias', 'Editar Transferencias', 'Editar Transferencias', 'Transferencias', NULL, NULL),
(150, 'listar_transacoes', 'Mostrar Transacoes', 'Mostrar Transacoes', 'Transacoes', NULL, NULL),
(151, 'filtrar_transacoes', 'Filtrar Transacoes', 'Filtrar Transacoes', 'Transacoes', NULL, NULL),
(152, 'listar_nota_credito', 'Mostrar Nota de Credito', 'Mostrar  Nota Credito', 'Nota Credito', NULL, NULL),
(153, 'criar_nota_credito', 'Criar Nota Credito', 'Criar Nota Credito', 'Nota Credito', NULL, NULL),
(154, 'editar_nota_credito', 'Editar Nota Credito', 'Editar Nota Credito', 'Nota Credito', NULL, NULL),
(155, 'remover_nota_credito', 'Remover Nota Credito', 'Remover Nota Credito', 'Nota Credito', NULL, NULL),
(156, 'listar_nota_debito', 'Mostrar Nota Debito', 'Mostrar Nota Debito', 'Nota Debito', NULL, NULL),
(157, 'criar_nota_debito', 'Criar Nota Debito', 'Criar Nota Debito', 'Nota Debito', NULL, NULL),
(158, 'remover_nota_debito', 'Remover Nota Debito', 'Remover Nota Debito', 'Nota Debito', NULL, NULL),
(159, 'editar_nota_debito', 'Editar Nota Debito', 'Editar Nota Debito', 'Nota Debito', NULL, NULL),
(160, 'cancelar_nota_debito', 'Cancelar Nota Debito', 'Cancelar Nota Debito', 'Nota Debito', NULL, NULL),
(174, 'listar_adiantamentos', 'Mostrar Recibo de adiantamento', 'Mostrar Recibo de adiantamento', 'Recibo de Adiantamento', NULL, NULL),
(175, 'criar_adiantamentos', 'Criar Recibo de Adiantamento', 'Criar Recibo de Adiantamento', 'Recibo de Adiantamento', NULL, NULL),
(176, 'remover_adiantamentos', 'Remover Recibo de Adiantamento', 'Remover Recibo de Adiantamento', 'Recibo de Adiantamento', NULL, NULL),
(177, 'editar_adiantamentos', 'Editar Recibo de Adiantamento', 'Editar Recibo de Adiantamento', 'Recibo de Adiantamento', NULL, NULL),
(178, 'listar_ordem_compra', 'Mostrar Ordem de Compras', 'Mostrar Ordem de Compras', 'Ordem de Compras', NULL, NULL),
(179, 'criar_ordem_compra', 'Criar Ordem de Compras', 'Criar Ordem de Compras', 'Ordem de Compras', NULL, NULL),
(180, 'remover_ordem_compra', 'Remover Ordem de Compras', 'Remover Ordem de Compras', 'Ordem de Compras', NULL, NULL),
(181, 'editar_ordem_compra', 'Editar Ordem de Compras', 'Editar Ordem de Compras', 'Ordem de Compras', NULL, NULL),
(182, 'report_mostrar', 'Mostrar Relatorio', 'Mostrar Relatorio', 'Relatorio', NULL, NULL),
(183, 'report_stock', 'Mostrar relatorio de Stock', 'Mostrar relatorio de Stock', 'Relatorio', NULL, NULL),
(184, 'report_clientes', 'Relatorio de clientes', 'Relatorio de clientes', 'Relatorio', NULL, NULL),
(185, 'report_fornecedores', 'Relatorio de fornecedores', 'Relatorio de fornecedores', 'Relatorio', NULL, NULL),
(186, 'report_vendas', 'Relatorio de vendas', 'Relatorio de vendas', 'Relatorio', NULL, NULL),
(187, 'report_compras', 'Relatorio de Requisições', 'Relatorio de Requisições', 'Relatorio', NULL, NULL),
(188, 'report_despesas', 'Relatorio de despesas', 'Relatorio de despesas', 'Relatorio', NULL, NULL),
(189, 'criar_despesas', 'Criar Despesas', 'Criar Despesas', 'Despesas', NULL, NULL),
(190, 'remover_despesas', 'Remover Despesas', 'Remover Despesas', 'Despesas', NULL, NULL),
(191, 'editar_despesas', 'Editar Despesas', 'Editar Despesas', 'Despesas', NULL, NULL),
(192, 'listar_despesas', 'Mostrar Despesas', 'Mostrar Despesas', 'Despesas', NULL, NULL),
(193, 'gerir_despesas_categoria', 'Mostrar,Registar,editar a categoria das Despesas', 'Mostrar,Registar,editar a categoria das Despesas', 'Despesas', NULL, NULL),
(194, 'criar_taxa', 'Criar taxa', 'Criar Taxas', 'Taxas', NULL, NULL),
(195, 'remover_taxa', 'Remover taxa', 'Remover Taxas', 'Taxas', NULL, NULL),
(196, 'editar_taxa', 'Editar taxa', 'Editar Taxas', 'Taxas', NULL, NULL),
(197, 'listar_taxa', 'Mostrar taxa', 'Mostrar Taxas', 'Taxas', NULL, NULL),
(198, 'gerir_paramentros', 'Gerir diversos parametros', 'Gerir diversos parametros', 'Parametros', NULL, NULL),
(199, 'moeda_nativa', 'Mostrar Moeda Nativa', 'Mostrar Moeda Nativa', 'Moedas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL),
(40, 40, 1, NULL, NULL),
(41, 41, 1, NULL, NULL),
(42, 42, 1, NULL, NULL),
(43, 43, 1, NULL, NULL),
(44, 44, 1, NULL, NULL),
(45, 45, 1, NULL, NULL),
(46, 46, 1, NULL, NULL),
(47, 47, 1, NULL, NULL),
(48, 48, 1, NULL, NULL),
(49, 49, 1, NULL, NULL),
(50, 50, 1, NULL, NULL),
(51, 51, 1, NULL, NULL),
(52, 52, 1, NULL, NULL),
(53, 53, 1, NULL, NULL),
(54, 54, 1, NULL, NULL),
(55, 55, 1, NULL, NULL),
(56, 56, 1, NULL, NULL),
(57, 57, 1, NULL, NULL),
(58, 58, 1, NULL, NULL),
(59, 59, 1, NULL, NULL),
(60, 60, 1, NULL, NULL),
(61, 61, 1, NULL, NULL),
(62, 62, 1, NULL, NULL),
(63, 63, 1, NULL, NULL),
(64, 64, 1, NULL, NULL),
(65, 65, 1, NULL, NULL),
(66, 66, 1, NULL, NULL),
(67, 67, 1, NULL, NULL),
(68, 68, 1, NULL, NULL),
(69, 69, 1, NULL, NULL),
(70, 70, 1, NULL, NULL),
(71, 71, 1, NULL, NULL),
(72, 72, 1, NULL, NULL),
(73, 73, 1, NULL, NULL),
(74, 74, 1, NULL, NULL),
(75, 75, 1, NULL, NULL),
(76, 76, 1, NULL, NULL),
(77, 77, 1, NULL, NULL),
(78, 78, 1, NULL, NULL),
(79, 79, 1, NULL, NULL),
(80, 80, 1, NULL, NULL),
(81, 81, 1, NULL, NULL),
(82, 82, 1, NULL, NULL),
(83, 83, 1, NULL, NULL),
(84, 84, 1, NULL, NULL),
(85, 85, 1, NULL, NULL),
(86, 86, 1, NULL, NULL),
(87, 87, 1, NULL, NULL),
(88, 88, 1, NULL, NULL),
(89, 89, 1, NULL, NULL),
(90, 90, 1, NULL, NULL),
(91, 91, 1, NULL, NULL),
(92, 92, 1, NULL, NULL),
(93, 93, 1, NULL, NULL),
(94, 94, 1, NULL, NULL),
(95, 95, 1, NULL, NULL),
(96, 96, 1, NULL, NULL),
(97, 97, 1, NULL, NULL),
(98, 98, 1, NULL, NULL),
(99, 99, 1, NULL, NULL),
(100, 100, 1, NULL, NULL),
(101, 101, 1, NULL, NULL),
(102, 102, 1, NULL, NULL),
(103, 103, 1, NULL, NULL),
(104, 104, 1, NULL, NULL),
(105, 105, 1, NULL, NULL),
(106, 106, 1, NULL, NULL),
(107, 107, 1, NULL, NULL),
(108, 108, 1, NULL, NULL),
(109, 109, 1, NULL, NULL),
(110, 110, 1, NULL, NULL),
(111, 111, 1, NULL, NULL),
(112, 112, 1, NULL, NULL),
(113, 113, 1, NULL, NULL),
(114, 114, 1, NULL, NULL),
(115, 115, 1, NULL, NULL),
(116, 116, 1, NULL, NULL),
(117, 117, 1, NULL, NULL),
(118, 118, 1, NULL, NULL),
(119, 119, 1, NULL, NULL),
(120, 120, 1, NULL, NULL),
(121, 121, 1, NULL, NULL),
(122, 122, 1, NULL, NULL),
(123, 123, 1, NULL, NULL),
(124, 124, 1, NULL, NULL),
(125, 125, 1, NULL, NULL),
(126, 126, 1, NULL, NULL),
(127, 127, 1, NULL, NULL),
(128, 128, 1, NULL, NULL),
(129, 129, 1, NULL, NULL),
(130, 130, 1, NULL, NULL),
(131, 131, 1, NULL, NULL),
(132, 132, 1, NULL, NULL),
(133, 133, 1, NULL, NULL),
(134, 134, 1, NULL, NULL),
(135, 135, 1, NULL, NULL),
(136, 136, 1, NULL, NULL),
(137, 137, 1, NULL, NULL),
(138, 138, 1, NULL, NULL),
(139, 139, 1, NULL, NULL),
(140, 140, 1, NULL, NULL),
(141, 141, 1, NULL, NULL),
(142, 142, 1, NULL, NULL),
(143, 143, 1, NULL, NULL),
(144, 144, 1, NULL, NULL),
(145, 145, 1, NULL, NULL),
(146, 146, 1, NULL, NULL),
(147, 147, 1, NULL, NULL),
(148, 148, 1, NULL, NULL),
(149, 149, 1, NULL, NULL),
(150, 150, 1, NULL, NULL),
(151, 151, 1, NULL, NULL),
(152, 152, 1, NULL, NULL),
(153, 153, 1, NULL, NULL),
(154, 154, 1, NULL, NULL),
(155, 155, 1, NULL, NULL),
(156, 156, 1, NULL, NULL),
(157, 157, 1, NULL, NULL),
(158, 158, 1, NULL, NULL),
(159, 159, 1, NULL, NULL),
(160, 160, 1, NULL, NULL),
(161, 161, 1, NULL, NULL),
(162, 162, 1, NULL, NULL),
(163, 163, 1, NULL, NULL),
(164, 164, 1, NULL, NULL),
(165, 165, 1, NULL, NULL),
(166, 166, 1, NULL, NULL),
(167, 167, 1, NULL, NULL),
(168, 168, 1, NULL, NULL),
(169, 169, 1, NULL, NULL),
(170, 170, 1, NULL, NULL),
(171, 171, 1, NULL, NULL),
(172, 172, 1, NULL, NULL),
(173, 173, 1, NULL, NULL),
(174, 174, 1, NULL, NULL),
(175, 175, 1, NULL, NULL),
(176, 176, 1, NULL, NULL),
(177, 177, 1, NULL, NULL),
(178, 178, 1, NULL, NULL),
(179, 179, 1, NULL, NULL),
(180, 180, 1, NULL, NULL),
(181, 181, 1, NULL, NULL),
(182, 182, 1, NULL, NULL),
(183, 183, 1, NULL, NULL),
(184, 184, 1, NULL, NULL),
(185, 185, 1, NULL, NULL),
(186, 186, 1, NULL, NULL),
(187, 187, 1, NULL, NULL),
(188, 188, 1, NULL, NULL),
(189, 189, 1, NULL, NULL),
(190, 190, 1, NULL, NULL),
(191, 191, 1, NULL, NULL),
(192, 192, 1, NULL, NULL),
(193, 193, 1, NULL, NULL),
(194, 194, 1, NULL, NULL),
(195, 195, 1, NULL, NULL),
(196, 196, 1, NULL, NULL),
(197, 197, 1, NULL, NULL),
(198, 198, 1, NULL, NULL),
(428, 32, 4, NULL, NULL),
(429, 33, 4, NULL, NULL),
(430, 34, 4, NULL, NULL),
(431, 35, 4, NULL, NULL),
(432, 11, 4, NULL, NULL),
(433, 12, 4, NULL, NULL),
(434, 13, 4, NULL, NULL),
(435, 14, 4, NULL, NULL),
(440, 89, 4, NULL, NULL),
(441, 90, 4, NULL, NULL),
(442, 91, 4, NULL, NULL),
(443, 92, 4, NULL, NULL),
(444, 93, 4, NULL, NULL),
(445, 1, 4, NULL, NULL),
(446, 2, 4, NULL, NULL),
(447, 3, 4, NULL, NULL),
(448, 4, 4, NULL, NULL),
(449, 5, 4, NULL, NULL),
(450, 6, 4, NULL, NULL),
(451, 7, 4, NULL, NULL),
(452, 8, 4, NULL, NULL),
(453, 9, 4, NULL, NULL),
(454, 171, 4, NULL, NULL),
(455, 52, 4, NULL, NULL),
(456, 53, 4, NULL, NULL),
(457, 54, 4, NULL, NULL),
(458, 55, 4, NULL, NULL),
(459, 56, 4, NULL, NULL),
(460, 57, 4, NULL, NULL),
(461, 58, 4, NULL, NULL),
(462, 59, 4, NULL, NULL),
(463, 60, 4, NULL, NULL),
(464, 61, 4, NULL, NULL),
(465, 62, 4, NULL, NULL),
(466, 63, 4, NULL, NULL),
(467, 64, 4, NULL, NULL),
(468, 65, 4, NULL, NULL),
(469, 66, 4, NULL, NULL),
(470, 67, 4, NULL, NULL),
(471, 68, 4, NULL, NULL),
(472, 69, 4, NULL, NULL),
(473, 121, 4, NULL, NULL),
(474, 122, 4, NULL, NULL),
(475, 123, 4, NULL, NULL),
(476, 124, 4, NULL, NULL),
(477, 125, 4, NULL, NULL),
(478, 126, 4, NULL, NULL),
(479, 127, 4, NULL, NULL),
(480, 128, 4, NULL, NULL),
(481, 133, 4, NULL, NULL),
(482, 134, 4, NULL, NULL),
(483, 135, 4, NULL, NULL),
(484, 136, 4, NULL, NULL),
(485, 19, 4, NULL, NULL),
(486, 20, 4, NULL, NULL),
(487, 21, 4, NULL, NULL),
(488, 22, 4, NULL, NULL),
(489, 120, 4, NULL, NULL),
(490, 94, 4, NULL, NULL),
(491, 95, 4, NULL, NULL),
(492, 98, 4, NULL, NULL),
(493, 15, 4, NULL, NULL),
(494, 16, 4, NULL, NULL),
(495, 17, 4, NULL, NULL),
(496, 18, 4, NULL, NULL),
(497, 75, 4, NULL, NULL),
(498, 76, 4, NULL, NULL),
(499, 166, 4, NULL, NULL),
(500, 167, 4, NULL, NULL),
(501, 168, 4, NULL, NULL),
(502, 169, 4, NULL, NULL),
(503, 170, 4, NULL, NULL),
(504, 161, 4, NULL, NULL),
(505, 162, 4, NULL, NULL),
(506, 163, 4, NULL, NULL),
(507, 164, 4, NULL, NULL),
(508, 165, 4, NULL, NULL),
(509, 24, 4, NULL, NULL),
(510, 25, 4, NULL, NULL),
(511, 26, 4, NULL, NULL),
(512, 27, 4, NULL, NULL),
(513, 172, 4, NULL, NULL),
(514, 173, 4, NULL, NULL),
(515, 28, 4, NULL, NULL),
(516, 29, 4, NULL, NULL),
(517, 30, 4, NULL, NULL),
(518, 31, 4, NULL, NULL),
(519, 36, 4, NULL, NULL),
(520, 37, 4, NULL, NULL),
(521, 38, 4, NULL, NULL),
(522, 39, 4, NULL, NULL),
(523, 152, 4, NULL, NULL),
(524, 153, 4, NULL, NULL),
(525, 156, 4, NULL, NULL),
(526, 157, 4, NULL, NULL),
(527, 160, 4, NULL, NULL),
(528, 174, 4, NULL, NULL),
(529, 175, 4, NULL, NULL),
(530, 99, 4, NULL, NULL),
(531, 100, 4, NULL, NULL),
(532, 103, 4, NULL, NULL),
(533, 182, 4, NULL, NULL),
(534, 183, 4, NULL, NULL),
(535, 184, 4, NULL, NULL),
(536, 185, 4, NULL, NULL),
(537, 186, 4, NULL, NULL),
(538, 187, 4, NULL, NULL),
(540, 194, 4, NULL, NULL),
(541, 195, 4, NULL, NULL),
(542, 196, 4, NULL, NULL),
(543, 197, 4, NULL, NULL),
(544, 10, 4, NULL, NULL),
(545, 137, 4, NULL, NULL),
(546, 150, 4, NULL, NULL),
(547, 151, 4, NULL, NULL),
(548, 146, 4, NULL, NULL),
(549, 147, 4, NULL, NULL),
(550, 149, 4, NULL, NULL),
(551, 40, 4, NULL, NULL),
(552, 41, 4, NULL, NULL),
(553, 42, 4, NULL, NULL),
(554, 43, 4, NULL, NULL),
(555, 82, 4, NULL, NULL),
(556, 83, 4, NULL, NULL),
(557, 84, 4, NULL, NULL),
(558, 85, 4, NULL, NULL),
(559, 86, 4, NULL, NULL),
(560, 77, 4, NULL, NULL),
(561, 78, 4, NULL, NULL),
(562, 79, 4, NULL, NULL),
(563, 80, 4, NULL, NULL),
(564, 81, 4, NULL, NULL),
(565, 49, 4, NULL, NULL),
(566, 50, 4, NULL, NULL),
(567, 88, 4, NULL, NULL),
(568, 44, 4, NULL, NULL),
(759, 23, 4, NULL, NULL),
(1075, 104, 4, NULL, NULL),
(1076, 105, 4, NULL, NULL),
(1077, 106, 4, NULL, NULL),
(1078, 107, 4, NULL, NULL),
(1079, 108, 4, NULL, NULL),
(1080, 109, 4, NULL, NULL),
(1081, 178, 4, NULL, NULL),
(1082, 179, 4, NULL, NULL),
(1083, 180, 4, NULL, NULL),
(1084, 181, 4, NULL, NULL),
(1085, 110, 4, NULL, NULL),
(1086, 111, 4, NULL, NULL),
(1089, 114, 4, NULL, NULL),
(1438, 199, 1, NULL, NULL),
(2028, 199, 4, NULL, NULL),
(2039, 138, 11, NULL, NULL),
(2040, 139, 11, NULL, NULL),
(2051, 15, 11, NULL, NULL),
(2052, 16, 11, NULL, NULL),
(2053, 17, 11, NULL, NULL),
(2054, 18, 11, NULL, NULL),
(2055, 182, 11, NULL, NULL),
(2056, 183, 11, NULL, NULL),
(2058, 185, 11, NULL, NULL),
(2059, 186, 11, NULL, NULL),
(2060, 187, 11, NULL, NULL),
(2062, 137, 11, NULL, NULL),
(2065, 10, 11, NULL, NULL),
(2066, 140, 11, NULL, NULL),
(2067, 141, 11, NULL, NULL),
(2068, 104, 11, NULL, NULL),
(2069, 105, 11, NULL, NULL),
(2070, 106, 11, NULL, NULL),
(2071, 107, 11, NULL, NULL),
(2072, 108, 11, NULL, NULL),
(2073, 109, 11, NULL, NULL),
(2074, 104, 12, NULL, NULL),
(2075, 105, 12, NULL, NULL),
(2076, 109, 12, NULL, NULL),
(2077, 1, 12, NULL, NULL),
(2078, 2, 12, NULL, NULL),
(2079, 3, 12, NULL, NULL),
(2080, 7, 12, NULL, NULL),
(2081, 9, 12, NULL, NULL),
(2098, 15, 14, NULL, NULL),
(2099, 16, 14, NULL, NULL),
(2100, 17, 14, NULL, NULL),
(2101, 18, 14, NULL, NULL),
(2102, 182, 14, NULL, NULL),
(2103, 185, 14, NULL, NULL),
(2104, 187, 14, NULL, NULL),
(2105, 104, 14, NULL, NULL),
(2106, 105, 14, NULL, NULL),
(2107, 106, 14, NULL, NULL),
(2108, 108, 14, NULL, NULL),
(2109, 109, 14, NULL, NULL),
(2110, 10, 14, NULL, NULL),
(2111, 110, 11, NULL, NULL),
(2112, 111, 11, NULL, NULL),
(2113, 113, 11, NULL, NULL),
(2114, 114, 11, NULL, NULL),
(2115, 89, 11, NULL, NULL),
(2116, 90, 11, NULL, NULL),
(2117, 93, 11, NULL, NULL),
(2118, 142, 11, NULL, NULL),
(2119, 143, 11, NULL, NULL),
(2120, 144, 11, NULL, NULL),
(2121, 145, 11, NULL, NULL),
(2122, 189, 11, NULL, NULL),
(2123, 190, 11, NULL, NULL),
(2124, 191, 11, NULL, NULL),
(2125, 192, 11, NULL, NULL),
(2126, 193, 11, NULL, NULL),
(2127, 150, 11, NULL, NULL),
(2128, 151, 11, NULL, NULL),
(2129, 146, 11, NULL, NULL),
(2130, 147, 11, NULL, NULL),
(2131, 148, 11, NULL, NULL),
(2132, 149, 11, NULL, NULL),
(2133, 5, 12, NULL, NULL),
(2134, 182, 12, NULL, NULL),
(2135, 185, 12, NULL, NULL),
(2136, 187, 12, NULL, NULL),
(2137, 188, 12, NULL, NULL),
(2138, 189, 12, NULL, NULL),
(2139, 190, 12, NULL, NULL),
(2140, 191, 12, NULL, NULL),
(2141, 192, 12, NULL, NULL),
(2142, 193, 12, NULL, NULL),
(2143, 138, 12, NULL, NULL),
(2144, 89, 12, NULL, NULL),
(2145, 4, 12, NULL, NULL),
(2146, 8, 12, NULL, NULL),
(2147, 142, 12, NULL, NULL),
(2148, 94, 12, NULL, NULL),
(2149, 15, 12, NULL, NULL),
(2150, 152, 12, NULL, NULL),
(2151, 156, 12, NULL, NULL),
(2152, 178, 12, NULL, NULL),
(2153, 110, 12, NULL, NULL),
(2154, 113, 12, NULL, NULL),
(2155, 174, 12, NULL, NULL),
(2156, 99, 12, NULL, NULL),
(2157, 184, 12, NULL, NULL),
(2158, 186, 12, NULL, NULL),
(2159, 106, 12, NULL, NULL),
(2160, 10, 12, NULL, NULL),
(2161, 137, 12, NULL, NULL),
(2162, 150, 12, NULL, NULL),
(2163, 151, 12, NULL, NULL),
(2164, 146, 12, NULL, NULL),
(2165, 82, 12, NULL, NULL),
(2166, 86, 12, NULL, NULL),
(2167, 49, 12, NULL, NULL),
(2168, 50, 12, NULL, NULL),
(2169, 87, 12, NULL, NULL),
(2170, 88, 12, NULL, NULL),
(2171, 44, 12, NULL, NULL),
(2172, 189, 14, NULL, NULL),
(2173, 191, 14, NULL, NULL),
(2174, 192, 14, NULL, NULL),
(2175, 1, 11, NULL, NULL),
(2176, 2, 11, NULL, NULL),
(2177, 3, 11, NULL, NULL),
(2178, 4, 11, NULL, NULL),
(2179, 5, 11, NULL, NULL),
(2180, 7, 11, NULL, NULL),
(2181, 8, 11, NULL, NULL),
(2182, 9, 11, NULL, NULL),
(2183, 94, 11, NULL, NULL),
(2184, 76, 11, NULL, NULL),
(2185, 152, 11, NULL, NULL),
(2186, 156, 11, NULL, NULL),
(2187, 174, 11, NULL, NULL),
(2188, 175, 11, NULL, NULL),
(2189, 99, 11, NULL, NULL),
(2190, 100, 11, NULL, NULL),
(2191, 184, 11, NULL, NULL),
(2192, 188, 11, NULL, NULL),
(2193, 194, 11, NULL, NULL),
(2194, 195, 11, NULL, NULL),
(2195, 196, 11, NULL, NULL),
(2196, 197, 11, NULL, NULL),
(2197, 49, 11, NULL, NULL),
(2198, 50, 11, NULL, NULL),
(2199, 51, 11, NULL, NULL),
(2200, 87, 11, NULL, NULL),
(2201, 88, 11, NULL, NULL),
(2202, 44, 11, NULL, NULL),
(2203, 190, 14, NULL, NULL),
(2204, 193, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pl`
--

CREATE TABLE `pl` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor_pago` double DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `po`
--

CREATE TABLE `po` (
  `id` int(10) UNSIGNED NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `codigo_movimento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `preference`
--

CREATE TABLE `preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `preference`
--

INSERT INTO `preference` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '10'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '-'),
(4, 'preference', 'soft_name', 'goBilling'),
(5, 'company', 'site_short_name', 'FT'),
(6, 'preference', 'percentage', '0'),
(7, 'preference', 'quantity', '0'),
(8, 'preference', 'date_format_type', 'dd-mm-yyyy'),
(9, 'company', 'company_name', 'TES-TOP, LDA'),
(10, 'company', 'company_email', 'rh@testop.co.mz'),
(11, 'company', 'company_phone', '21328056'),
(12, 'company', 'company_street', 'AV. KARL MARX, Nº1877 R/C-MAPUTO'),
(13, 'company', 'company_city', 'Cidade de Maputo'),
(14, 'company', 'company_state', 'Maputo'),
(15, 'company', 'company_zipCode', '1100'),
(16, 'company', 'company_country_id', 'Moçambique'),
(17, 'company', 'dflt_lang', 'po'),
(18, 'company', 'dflt_currency_id', '1'),
(19, 'company', 'sates_type_id', '1'),
(20, 'company', 'company_nuit', '400670021'),
(23, 'payroll', 'tipo_salario', 'por_data'),
(24, 'payroll', 'dia_inicio', '15'),
(25, 'payroll', 'dia_fim', '14'),
(26, 'payroll', ' h_semana', '48'),
(22, 'preference', 'date_version', '26032019'),
(21, 'preference', 'version', '0.993');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prioridade`
--

CREATE TABLE `prioridade` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `prioridade`
--

INSERT INTO `prioridade` (`id`, `nome`) VALUES
(1, 'Alta '),
(2, 'Media'),
(3, 'Baixa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ra`
--

CREATE TABLE `ra` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo_movimento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re`
--

CREATE TABLE `re` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `codigo_movimento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rn`
--

CREATE TABLE `rn` (
  `id` int(10) UNSIGNED NOT NULL,
  `re_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor_pago` double DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `display_name`, `name`, `description`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin User', NULL, NULL, NULL, NULL, NULL),
(11, 'Facturação de Requisições', 'Facturação de Requisições', 'Facturação e Requisições', 42, NULL, NULL, NULL, NULL),
(12, 'Aprovador de Requisições', 'Aprovador de Requisições', 'Aprovador de Requisições', NULL, NULL, NULL, NULL, NULL),
(14, 'Criador de Requisições', 'Criador de Requisições', 'Requisições', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_armazem`
--

CREATE TABLE `role_armazem` (
  `id` int(10) UNSIGNED NOT NULL,
  `armazem_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `role_armazem`
--

INSERT INTO `role_armazem` (`id`, `armazem_id`, `role_id`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 2, 6, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, NULL, NULL, NULL, NULL),
(4, 3, 5, NULL, NULL, NULL, NULL, NULL),
(6, 5, 1, NULL, NULL, NULL, NULL, NULL),
(7, 6, 4, NULL, NULL, NULL, NULL, NULL),
(8, 7, 4, NULL, NULL, NULL, NULL, NULL),
(11, 10, 2, NULL, NULL, NULL, NULL, NULL),
(16, 15, 2, NULL, NULL, NULL, NULL, NULL),
(19, 8, 7, NULL, NULL, NULL, '2021-03-17 08:51:27', '2021-03-17 08:51:27'),
(20, 9, 7, NULL, NULL, NULL, '2021-03-18 11:17:55', '2021-03-18 11:17:55'),
(21, 18, 1, NULL, NULL, NULL, NULL, NULL),
(24, 21, 4, NULL, NULL, NULL, NULL, NULL),
(27, 26, 4, NULL, NULL, NULL, NULL, NULL),
(28, 27, 4, NULL, NULL, NULL, NULL, NULL),
(29, 29, 3, NULL, NULL, NULL, NULL, NULL),
(30, 30, 1, NULL, NULL, NULL, NULL, NULL),
(32, 32, 1, NULL, NULL, NULL, NULL, NULL),
(35, 36, 1, NULL, NULL, NULL, NULL, NULL),
(38, 39, 4, NULL, NULL, NULL, NULL, NULL),
(39, 40, 4, NULL, NULL, NULL, NULL, NULL),
(40, 41, 4, NULL, NULL, NULL, NULL, NULL),
(43, 12, 16, NULL, NULL, NULL, NULL, NULL),
(44, 45, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 6, NULL, NULL),
(3, 2, 6, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 4, 5, NULL, NULL),
(6, 5, 5, NULL, NULL),
(8, 7, 3, NULL, NULL),
(9, 8, 1, NULL, NULL),
(10, 9, 10, NULL, NULL),
(11, 10, 9, NULL, NULL),
(12, 11, 9, NULL, NULL),
(13, 12, 9, NULL, NULL),
(14, 13, 9, NULL, NULL),
(15, 14, 7, NULL, NULL),
(16, 15, 3, NULL, NULL),
(17, 16, 1, NULL, NULL),
(18, 17, 2, NULL, NULL),
(19, 18, 2, NULL, NULL),
(20, 19, 2, NULL, NULL),
(21, 20, 2, NULL, NULL),
(22, 21, 3, NULL, NULL),
(23, 22, 3, NULL, NULL),
(24, 23, 3, NULL, NULL),
(25, 24, 3, NULL, NULL),
(28, 27, 2, NULL, NULL),
(29, 28, 6, NULL, NULL),
(30, 29, 3, NULL, NULL),
(31, 30, 3, NULL, NULL),
(32, 31, 3, NULL, NULL),
(33, 32, 2, NULL, NULL),
(34, 33, 2, NULL, NULL),
(35, 34, 2, NULL, NULL),
(36, 35, 3, NULL, NULL),
(37, 36, 7, NULL, NULL),
(38, 37, 1, NULL, NULL),
(39, 38, 17, NULL, NULL),
(40, 39, 8, NULL, NULL),
(41, 40, 3, NULL, NULL),
(42, 41, 3, NULL, NULL),
(43, 42, 2, NULL, NULL),
(44, 43, 2, NULL, NULL),
(45, 44, 3, NULL, NULL),
(46, 45, 3, NULL, NULL),
(48, 47, 4, NULL, NULL),
(50, 49, 4, NULL, NULL),
(51, 50, 2, NULL, NULL),
(52, 51, 3, NULL, NULL),
(53, 52, 2, NULL, NULL),
(54, 53, 1, NULL, NULL),
(55, 54, 3, NULL, NULL),
(56, 55, 2, NULL, NULL),
(57, 56, 2, NULL, NULL),
(58, 57, 2, NULL, NULL),
(59, 58, 2, NULL, NULL),
(60, 59, 1, NULL, NULL),
(61, 60, 3, NULL, NULL),
(62, 61, 3, NULL, NULL),
(63, 62, 2, NULL, NULL),
(64, 63, 3, NULL, NULL),
(66, 65, 2, NULL, NULL),
(67, 66, 3, NULL, NULL),
(68, 67, 3, NULL, NULL),
(69, 68, 4, NULL, NULL),
(70, 69, 4, NULL, NULL),
(71, 70, 4, NULL, NULL),
(72, 71, 12, NULL, NULL),
(73, 72, 4, NULL, NULL),
(74, 73, 13, NULL, NULL),
(75, 74, 14, NULL, NULL),
(76, 75, 3, NULL, NULL),
(77, 76, 4, NULL, NULL),
(78, 77, 4, NULL, NULL),
(79, 78, 16, NULL, NULL),
(80, 79, 3, NULL, NULL),
(81, 80, 1, NULL, NULL),
(82, 81, 11, NULL, NULL),
(83, 82, 12, NULL, NULL),
(84, 83, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `se`
--

CREATE TABLE `se` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('79e8bbbbe449e3448bfae812ec810d102f9dbaf2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0RUWjY2bUYyZlpLNVFqdkdQTnZqRmp3Mk5pdzNzZTJSWThTU1dWMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvdHQvZGVzcGVzYXMvdGVzdG9fZGVzcGVzYXNfZmluYW5jYXMiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTY1MTE3OTYzMjtzOjE6ImMiO2k6MTY1MTE3OTYzMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1651179632),
('a05b532c09cc6d6bcdff021dca11fda1f3144783', 82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.50', 'YToxOTp7czo2OiJfdG9rZW4iO3M6NDA6IjVVcUtWVWJJOERaaGd4cnpySWJEc2lvYm1CbDljblV0UzZ1SnNpYXkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYyOiJodHRwOi8vbG9jYWxob3N0L3R0L2Rlc3Blc2FzL3Rlc3RvX2Rlc3Blc2FzX2ZpbmFuY2FzL2Rhc2hib2FyZCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODI7czo3OiJ2ZXJzaW9uIjtzOjQ6IkJldGEiO3M6MTI6ImRhdGVfdmVyc2lvbiI7czoxMDoiMjAyMC0xMi0wMSI7czoxMjoicm93X3Blcl9wYWdlIjtpOjEwO3M6OToiZGZsdF9sYW5nIjtzOjI6InBvIjtzOjEyOiJjdXN0X2VtcHJlc2EiO3M6MTI6IlRFUy1UT1AsIExEQSI7czoxNToic2l0ZV9zaG9ydF9uYW1lIjtzOjEyOiJURVMtVE9QLCBMREEiO3M6MTU6ImN1c3RfZW1wcmVzYV9pZCI7aToxO3M6NToiZW1haWwiO3M6MTU6InJoQHRlc3RvcC5jby5teiI7czo0OiJudWl0IjtzOjk6IjQwMDY3MDAyMSI7czoxMjoiY2FpeGFfcG9zdGFsIjtOO3M6MTI6ImNvbXBhbnlfbmFtZSI7czoxMjoiVEVTLVRPUCwgTERBIjtzOjg6ImVuZGVyZWNvIjtzOjMzOiJBVi4gS0FSTCBNQVJYLCBOwroxODc3IFIvQy1NQVBVVE8iO3M6MTA6ImNvbnRhY3RvXzEiO3M6ODoiMjEzMjgwNTYiO3M6MTA6ImNvbnRhY3RvXzIiO3M6ODoiMjEzMjgwNTciO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNjUxMTc4NTkxO3M6MToiYyI7aToxNjUxMTc4NDUzO3M6MToibCI7czoxOiIwIjt9fQ==', 1651178592),
('ca14b65e01038ccf0005f5546fb8d74a243b993c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia2JMTnpROFhWbFhUdGxVdUdUbURWTkVLSGt2QjFuMlpmOEVaV2RHVSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo2NzoiaHR0cDovL2xvY2FsaG9zdC90dC9kZXNwZXNhcy90ZXN0b19kZXNwZXNhc19maW5hbmNhcy9wYWdhbWVudG9zL2FkZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwOi8vbG9jYWxob3N0L3R0L2Rlc3Blc2FzL3Rlc3RvX2Rlc3Blc2FzX2ZpbmFuY2FzL3BhZ2FtZW50b3MvYWRkIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE2NTExNzk2MzI7czoxOiJjIjtpOjE2NTExNzk2MzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1651179632),
('de0f1605eb0812c9250eb18ad3ad6845afee9fbd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YToyMTp7czo2OiJfdG9rZW4iO3M6NDA6InJFaXhjYllNSlN4MkNKWWpBZk1yczRLaGg1VVdCNE9Ea0JvcVVBMWoiO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MDoiaHR0cDovL2xvY2FsaG9zdC90dC9kZXNwZXNhcy90ZXN0b19kZXNwZXNhc19maW5hbmNhcy9jb3RhY2FvIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NzoidmVyc2lvbiI7czo0OiJCZXRhIjtzOjEyOiJkYXRlX3ZlcnNpb24iO3M6MTA6IjIwMjAtMTItMDEiO3M6MTI6InJvd19wZXJfcGFnZSI7aToxMDtzOjk6ImRmbHRfbGFuZyI7czoyOiJwbyI7czoxNToiY3VzdF9lbXByZXNhX2lkIjtpOjE7czoxMjoiY3VzdF9lbXByZXNhIjtzOjEyOiJURVMtVE9QLCBMREEiO3M6NToiZW1haWwiO3M6MTU6InJoQHRlc3RvcC5jby5teiI7czoxMDoiY29udGFjdG9fMSI7czo4OiIyMTMyODA1NiI7czoxMDoiY29udGFjdG9fMiI7czo4OiIyMTMyODA1NyI7czo4OiJlbmRlcmVjbyI7czozMzoiQVYuIEtBUkwgTUFSWCwgTsK6MTg3NyBSL0MtTUFQVVRPIjtzOjQ6ImxvZ28iO3M6MTI6InRlc0xvZ28uanBlZyI7czoxNDoiaWRpb21hX2RlZmF1bHQiO3M6MjoicG8iO3M6NDoibnVpdCI7czo5OiI0MDA2NzAwMjEiO3M6MTI6ImNhaXhhX3Bvc3RhbCI7TjtzOjEyOiJjb21wYW55X25hbWUiO3M6MTI6IlRFUy1UT1AsIExEQSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE2NTEyMzc0NzI7czoxOiJjIjtpOjE2NTEyMzU2ODU7czoxOiJsIjtzOjE6IjAiO319', 1651237472),
('fe8dcbe5a064351f289ab4887b6777256ec22ccd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YToyMTp7czo2OiJfdG9rZW4iO3M6NDA6IklFRDV4c1RPMllybkp5T0NTcFp2MHptRkkwSnBXYmtxV2s5ZUEzZEciO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MjoiaHR0cDovL2xvY2FsaG9zdC90dC9kZXNwZXNhcy90ZXN0b19kZXNwZXNhc19maW5hbmNhcy9kYXNoYm9hcmQiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo3OiJ2ZXJzaW9uIjtzOjQ6IkJldGEiO3M6MTI6ImRhdGVfdmVyc2lvbiI7czoxMDoiMjAyMC0xMi0wMSI7czoxMjoicm93X3Blcl9wYWdlIjtpOjEwO3M6OToiZGZsdF9sYW5nIjtzOjI6InBvIjtzOjE1OiJjdXN0X2VtcHJlc2FfaWQiO2k6MTtzOjEyOiJjdXN0X2VtcHJlc2EiO3M6MTI6IlRFUy1UT1AsIExEQSI7czo1OiJlbWFpbCI7czoxNToicmhAdGVzdG9wLmNvLm16IjtzOjEwOiJjb250YWN0b18xIjtzOjg6IjIxMzI4MDU2IjtzOjEwOiJjb250YWN0b18yIjtzOjg6IjIxMzI4MDU3IjtzOjg6ImVuZGVyZWNvIjtzOjMzOiJBVi4gS0FSTCBNQVJYLCBOwroxODc3IFIvQy1NQVBVVE8iO3M6NDoibG9nbyI7czoxMjoidGVzTG9nby5qcGVnIjtzOjE0OiJpZGlvbWFfZGVmYXVsdCI7czoyOiJwbyI7czo0OiJudWl0IjtzOjk6IjQwMDY3MDAyMSI7czoxMjoiY2FpeGFfcG9zdGFsIjtOO3M6MTI6ImNvbXBhbnlfbmFtZSI7czoxMjoiVEVTLVRPUCwgTERBIjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTY1MTE4MTIwNjtzOjE6ImMiO2k6MTY1MTE3NDU5MztzOjE6ImwiO3M6MToiMCI7fX0=', 1651181207);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sl`
--

CREATE TABLE `sl` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_produto` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_id` int(11) NOT NULL,
  `tipo_movimento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proveniente` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'ft',
  `usuario_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `armazem_id` int(11) NOT NULL,
  `referencia_armazem` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `st`
--

CREATE TABLE `st` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco_venda` double DEFAULT '0',
  `preco_compra` double DEFAULT '0',
  `inclusao_iva` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `unidade_medida_id` int(11) DEFAULT NULL,
  `tipo_imposto_id` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscricoes`
--

CREATE TABLE `subscricoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_inicio` date DEFAULT NULL,
  `dia_fim` date DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `pacote_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `notas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `taxas`
--

CREATE TABLE `taxas` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_cambio` date DEFAULT NULL,
  `compra` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venda` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moedas_id` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `moeda_nativa` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `taxas`
--

INSERT INTO `taxas` (`id`, `data_cambio`, `compra`, `venda`, `moedas_id`, `status`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `moeda_nativa`) VALUES
(49, '2021-09-23', '63.14', '64.41', 1, 'activo', 1, 1, 1, NULL, NULL, 2),
(50, '2021-09-23', '1', '1', 2, 'activo', 1, 1, 1, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `termo_pagamento`
--

CREATE TABLE `termo_pagamento` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dias_vencimento` int(11) DEFAULT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `termo_pagamento`
--

INSERT INTO `termo_pagamento` (`id`, `nome`, `dias_vencimento`, `default`, `status`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Pagamento na Entrega', 0, '', NULL, NULL, NULL, NULL),
(2, 'Apos 15 dias', 15, '', NULL, NULL, NULL, NULL),
(3, 'Apos 30 dias', 30, '', NULL, NULL, NULL, NULL),
(4, 'Apos 7 dias', 7, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_contas`
--

CREATE TABLE `tipo_de_contas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipo_de_contas`
--

INSERT INTO `tipo_de_contas` (`id`, `nome`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Conta Interna', NULL, NULL, NULL),
(2, 'Conta de Fornecedor', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_imposto`
--

CREATE TABLE `tipo_imposto` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxa_imposto` double NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipo_imposto`
--

INSERT INTO `tipo_imposto` (`id`, `nome`, `taxa_imposto`, `default`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Isento', 0, 'yes', NULL, NULL, NULL, NULL, NULL),
(2, 'Regime Simplificado', 3, 'no', NULL, NULL, NULL, NULL, NULL),
(3, 'Iva', 17, 'no', NULL, NULL, NULL, NULL, NULL),
(4, 'ISPC', 5, 'no', 1, NULL, NULL, '2022-04-28 19:38:14', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_medida`
--

CREATE TABLE `unidade_medida` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `unidade_medida`
--

INSERT INTO `unidade_medida` (`id`, `nome`, `abreviatura`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Unidade', 'UN', NULL, NULL, NULL, NULL, NULL),
(2, 'Cada', 'CD', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `armazem_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `email`, `picture`, `inactive`, `remember_token`, `phone`, `role_id`, `armazem_id`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, NULL, '$2y$10$FhJ6Co9QmCNS0mPaOHgH2ueWQ/ToJeE9FOQWUndDIW55glTTu5EwO', 'Admin', 'demo@n3.co.mz', NULL, '0', 'blxx1hMfwJHABaYeCQpYtHUIUsCZswUoOu9tRmv5JWFVUsgd7QdzPYycAYWL', '8455225225', 1, NULL, 0, NULL, NULL, '2021-07-02 15:22:11', '2022-04-11 09:38:12'),
(83, NULL, '$2y$10$112jfly4Myvr10kH/AXaWehXkvPGna.cPIrZdbCF1b/aHM622nCbO', 'SADIA DAUD', 'financas@testop.co.mz', NULL, NULL, 'xdOJ3ryGJUCBxBXDNbmcJbmckChQIboM9Fmgodp3TF8A222JBq7YZ3XNmZWM', '21328056', 1, NULL, 0, NULL, NULL, '2022-04-11 17:12:27', '2022-04-30 17:01:32'),
(90, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'MUHAMMAD YOUNUS', 'younus@autobas.co.mz', NULL, NULL, NULL, '843030477', 1, NULL, 0, NULL, NULL, '2022-04-14 17:31:32', '2022-04-14 17:32:00'),
(91, NULL, '$2y$10$PRrrPAAKBRRojPwuAixW6OlDjwDTqaBfLs7zDXaHTgOio2zO1UyxK', 'MUNIR SACOOR', 'testop@testop.co.mz', NULL, NULL, NULL, '824301030', 1, NULL, 0, NULL, NULL, '2022-04-14 17:34:17', '2022-04-14 17:34:45'),
(92, NULL, '$2y$10$OhZYqJ6ohNL3.g.joT/uHuwkWYIRAucYpUvi7K7W5OKe5sS/E9EkW', 'PANKAJ JEENTILAL', 'pankaj-jeentilal@hotmail.com', NULL, NULL, 'uifj3Vu95dBgvpzAgKRXY4QXgQxdFZPpEPO6AsjBx0bfm85XZ6qFsDBhXSfc', '842792540', 12, NULL, 0, NULL, NULL, '2022-04-14 17:42:04', '2022-04-27 19:16:19'),
(93, NULL, '$2y$10$Sd8Qp3XoA1kvTdM/GTyOoOpMgfXG7zx6rP.nMHKXbjPJ/cncA9LTO', 'GILU NEMANE', 'rh.gilu@testop.co.mz', NULL, NULL, NULL, '846517822', 14, NULL, 0, NULL, NULL, '2022-04-14 19:55:58', '2022-04-30 16:20:07'),
(94, NULL, '$2y$10$wasXX.Rj2oeKPs5hpyjHPOaedZuR.Mm08.kMXV1Yv7K1unK8VcGky', 'SAMIR MAHOMED', 'samir@q99.co.mz', NULL, NULL, NULL, '824197650', 1, NULL, 6, NULL, NULL, '2022-04-14 20:03:04', NULL),
(95, NULL, '$2y$10$OLeWdRbKrgQ71TCUferMD.X9DFK2nOHZJ7XVMBL.Dz4DDWrRQBlkq', 'NUNES PEDRO', 'it.nunes@q99.co.mz', NULL, NULL, NULL, '845877172', 14, NULL, 6, NULL, NULL, '2022-04-14 20:07:30', NULL),
(96, NULL, '$2y$10$HHgqf2D2zkzomBPj6ubkN.UBQLiDwg/Pn1pYcvIaGmkdWVDa2d2VO', 'EDSON PAPORO', 'it.paporo@q99.co.mz', NULL, NULL, NULL, '848186229', 14, NULL, 1, NULL, NULL, '2022-04-14 20:08:31', '2022-04-30 16:19:05'),
(97, NULL, '$2y$10$uq8urFDJBmItiI47KVfxSOP1SBifukgeR1YpHqw45ucL9Mvioew5y', 'DANYA FREITAS', 'rh.danya@testop.co.mz', NULL, NULL, NULL, '847416408', 14, NULL, 0, NULL, NULL, '2022-04-14 20:12:00', '2022-04-14 20:12:13'),
(98, NULL, '$2y$10$ynzhCFsfSvtwUkfy46qjDubz5.wjV8jiK4.z45XXUI9csDZPDSL9S', 'LENA DOS SANTOS', 'rh.lena@testop.co.mz', NULL, NULL, NULL, '829150694', 14, NULL, 0, NULL, NULL, '2022-04-14 21:06:40', '2022-04-14 21:06:55'),
(99, NULL, '$2y$10$b3k8sRW15ReLIdgsxP1hYeoyjSLVnGxNx0Zi8Rs9e7EMIaVu6DW6y', 'CHEILA QUILAMBO', 'rh.proenergia@testop.co.mz', NULL, NULL, 'vMJLo6pD8AQsmfpTrzxuWlvz9rh2SoOpSXGllIG4cZYeOASfPXoEOXwRkP6R', '869925390', 14, NULL, 0, NULL, NULL, '2022-04-14 21:08:20', '2022-04-30 16:55:34'),
(100, NULL, '$2y$10$yU4g2B8E4iGKsEiYWpNGX.tQsDD8VplGtaM4QxD3syVfVc3KTk7GO', 'MARCIA MATSIMBE', 'seguros@testop.co.mz', NULL, NULL, 'csuLp8MBoroQx3nytVGXeBIBqceKkFXXrc2XgwyyQirUamwklkk88k7hDn9T', '826885128', 14, NULL, 0, NULL, NULL, '2022-04-14 21:14:52', '2022-05-10 21:47:14'),
(101, NULL, '$2y$10$vcv9n05B2JeCUCVy7SQ7Ju2LnVhriqpmHA3FYI4hFLEWK10p95hoi', 'MARCIA BATA', 'proenergia@testop.co.mz', NULL, NULL, NULL, '863666967', 14, NULL, 0, NULL, NULL, '2022-04-14 21:22:55', '2022-04-14 21:23:09'),
(102, NULL, '$2y$10$LpNu5f6bA3lxoFMsAYZtmOjIHC48WOo4weuDK.LkFoDF/V0rYaOGe', 'ALBERTINA SALVADOR', 'procurement.albertina@testop.co.mz', NULL, NULL, NULL, '84 036 4156', 14, NULL, 0, NULL, NULL, '2022-04-22 20:30:13', '2022-04-22 20:35:29'),
(103, NULL, '$2y$10$8kj1wL2/8EscMX0scbKzEOA6hjphvVqFdqbk7f1vxZ9S50jo8oKLW', 'FATIMA BIBI KARIM', 'financas.fatima@testop.co.mz', NULL, NULL, NULL, '84 673 1706', 11, NULL, 1, NULL, NULL, '2022-04-22 20:35:16', '2022-04-30 16:47:20'),
(104, NULL, '$2y$10$H/Rz.pTtpDlUT1VmBzdhseHwkeaOuVZ3XvBuwNvfNTVK1FRzhJPPC', 'CARLOS SENDA', 'financas.carlos@testop.co.mz', NULL, NULL, NULL, '84 633 8603', 11, NULL, 1, NULL, NULL, '2022-04-22 20:38:12', '2022-04-30 16:47:39'),
(105, NULL, '$2y$10$AYd7Ry7Qxhu/xP9slhPLMuxgvGotJcvpzRVurbqEOWRkiC8y0vu7y', 'LUANA GOULAP', 'financas.luana@testop.co.mz', NULL, NULL, NULL, '82 777 3545', 14, NULL, 0, NULL, NULL, '2022-04-22 20:40:23', '2022-04-22 20:40:35'),
(106, NULL, '$2y$10$72Np6sRgkqeipkuNYt6j.eqvZszyZJsuwEMfllWd49rwPKRqfVaIG', 'RAYHAN KHALID', 'procurement.rayhan@testop.co.mz', NULL, NULL, NULL, '84 745 4545', 14, NULL, 0, NULL, NULL, '2022-04-22 20:43:09', '2022-04-22 20:43:21'),
(107, NULL, '$2y$10$FfIR6PJQpTgbgwgzVnnBiulXUYFfgV5Sjjc9sNTNARQcjby8b/7Q2', 'LEOPOLDO VALENTIM', 'procurement.valentim@testop.co.mz', NULL, NULL, NULL, '87 787 8634', 14, NULL, 0, NULL, NULL, '2022-04-22 20:44:48', '2022-04-22 20:45:06'),
(108, NULL, '$2y$10$mmHfqLmGwCrIq4ZGuETQFe1wkFIw2CnZg/KIPHq2JoYwLsnH7ZMYa', 'ADEEL DAUDE', 'infraestrutura.adeel@testop.co.mz', NULL, NULL, NULL, '820059049', 14, NULL, 0, NULL, NULL, '2022-04-22 20:46:49', '2022-04-22 20:47:04'),
(109, NULL, '$2y$10$o2YTZPzrpsNC1oN0gnJvQe4w.yL1Jr2IYREMalt0YT2NELMD6QyEO', 'SIACA ADAMOGY', 'infraestrutura.siaca@testop.co.mz', NULL, NULL, NULL, '84 243 7566', 14, NULL, 0, NULL, NULL, '2022-04-22 20:50:24', '2022-04-22 20:50:35'),
(110, NULL, '$2y$10$k7pb62S9rX9o4Fom1vQvYeVUfY7I.2ft5k9GQoYveHCGXlftxjlIe', 'SILVESTRE GOVENE', 'transportes.proenergia@testop.co.mz', NULL, NULL, NULL, '84 661 5116', 14, NULL, 0, NULL, NULL, '2022-04-22 20:52:18', '2022-04-22 20:52:31'),
(111, NULL, '$2y$10$YCGFQZbVhIqutt0nKvT2tuJ2udIC8LUnxmxevr41.rzsvGkbSzc0.', 'JONAS MAZIVE', 'transportes.jonas@testop.co.mz', NULL, NULL, NULL, '84 407 1823', 14, NULL, 0, NULL, NULL, '2022-04-22 20:54:24', '2022-04-22 20:54:36'),
(112, NULL, '$2y$10$vEcP2QhA9n5Jn9x1moh5wOPIvDbz/f6PvKE1me8U7SYbEdScmkPu2', 'ALEXANDRE SAIA', 'qualidade.saia@testop.co.mz', NULL, NULL, NULL, '84 562 4028', 14, NULL, 0, NULL, NULL, '2022-04-22 20:56:20', '2022-04-22 20:56:31'),
(113, NULL, '$2y$10$ArabE5H5l/z4OqPC727kdunaFxJCmLImLF3wg9L4MFdiF67FWQKnO', 'ESMENIO ZUALO', 'qualidade.esmenio@testop.co.mz', NULL, NULL, NULL, '84 264 3241', 14, NULL, 0, NULL, NULL, '2022-04-22 20:58:12', '2022-04-22 20:58:23'),
(114, NULL, '$2y$10$ywGoF.e/LtSP2uR9dO1.XuGuGntnr2ZAz.WPCJRj1dwbDJP7EwaQa', 'HELDER CHABELA', 'producao.helder@testop.co.mz', NULL, NULL, NULL, '84 695 6865', 14, NULL, 0, NULL, NULL, '2022-04-22 21:00:14', '2022-04-22 21:00:29'),
(115, NULL, '$2y$10$/dycXpdbLpUpzp1zzQWX9On.KgtHRr0fM7UyXAMcedo.jS80oDBBa', 'GLORIA COME', 'producao.gloria@testop.co.mz', NULL, NULL, NULL, '844912846', 14, NULL, 0, NULL, NULL, '2022-04-22 21:02:30', '2022-04-22 21:02:41'),
(116, NULL, '$2y$10$E.f3I7ibkG1dZTnsVLyHseqf1XIaoooLQ/s8GwP0abmaINkhzxHOm', 'LEONOR CHICHANGO', 'producao.leonor@testop.co.mz', NULL, NULL, NULL, '847056119', 14, NULL, 0, NULL, NULL, '2022-04-22 21:05:00', '2022-04-22 21:05:12'),
(117, NULL, '$2y$10$o605D0jJHYyLdkJsJcJhr.LFmvqUI08/GZU5XPMjPoxq/qh1p1chq', 'MUHAMMAD ISSAK', 'procurement.issak@testop.co.mz', NULL, NULL, NULL, '868819574', 14, NULL, 0, NULL, NULL, '2022-04-22 21:07:56', '2022-04-22 21:08:10'),
(118, NULL, '$2y$10$WEVxr.3rat/Mt7fV4lgZVuIbm7abUwaiX2dVKjTB68s9KALolzV5u', 'CHALEMBA GUAMBE', 'procurement.chalemba@testop.co.mz', NULL, NULL, NULL, '842637869', 14, NULL, 0, NULL, NULL, '2022-04-22 21:09:55', '2022-04-22 21:10:07'),
(119, NULL, '$2y$10$V.s.tj46MgtO66TpwbeTQedBi/JiI47LlfatoBntrKGt7YQCZO.5q', 'JAIME CUAMBA', 'projectos.jaime@testop.co.mz', NULL, NULL, NULL, '84 256 5607', 14, NULL, 0, NULL, NULL, '2022-04-22 21:12:19', '2022-04-22 21:12:35'),
(120, NULL, '$2y$10$NsGgg3OzZvqp644mK2POJ.Mv9ZYKL417G7of1x0vEXqtDLxckJqw.', 'EULEUTERIO GUAMBE', 'projectos.euleuterio@testop.co.mz', NULL, NULL, NULL, '84 259 2507', 14, NULL, 0, NULL, NULL, '2022-04-22 21:15:50', '2022-04-22 21:16:09'),
(121, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'JESSICA RANGANHA', 'projectos.jessica@testop.co.mz', NULL, NULL, NULL, '82 618 7735', 14, NULL, 0, NULL, NULL, '2022-04-22 21:19:38', '2022-04-22 21:19:50'),
(122, NULL, '$2y$10$dG9Gyy2X9fqDg8YmwzyJCuD6AA914.mvvsidr6P9Inyr2Qoy42Kuu', 'MOHAMMAD KHALIL', 'projectos.khalil@testop.co.mz', NULL, NULL, NULL, '828526660', 14, NULL, 14, NULL, NULL, '2022-04-22 21:22:02', '2022-05-09 21:09:41'),
(123, NULL, '$2y$10$FlCYf9nkZDhv7..81iuapO4WDsLaGbihlmEllkr6WREEFPxh1i7EK', 'ORLANDO CHAUQUE', 'armazem@testop.co.mz', NULL, NULL, NULL, '84 678 5202', 14, NULL, 0, NULL, NULL, '2022-04-22 21:27:19', '2022-04-22 21:27:30'),
(124, NULL, '$2y$10$JHV1wu3I8LqtnO9NcB.wXu4VPQeywDdWo/xdhTjG./nP1APQjoGui', 'SECRETARIA', 'secretaria@testop.co.mz', NULL, NULL, NULL, '82 715 4615', 14, NULL, 0, NULL, NULL, '2022-04-22 21:33:59', '2022-04-22 21:34:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `versoes`
--

CREATE TABLE `versoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_versao` double(8,2) DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `registado_id` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `versoes`
--

INSERT INTO `versoes` (`id`, `nome`, `nr_versao`, `descricao`, `registado_id`, `estado`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Beta', 1.00, 'A versao do facturacao com  a base de dados estruturada e one DB', NULL, 'activo', '2020-12-01', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ag`
--
ALTER TABLE `ag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ag_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `armazem`
--
ALTER TABLE `armazem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `armazem_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `bi`
--
ALTER TABLE `bi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bi_empresa_id_foreign` (`empresa_id`),
  ADD KEY `bi_bo_id_foreign` (`bo_id`);

--
-- Índices para tabela `bl`
--
ALTER TABLE `bl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bl_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `bo`
--
ALTER TABLE `bo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bo_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_empresa_id_foreign` (`empresa_id`),
  ADD KEY `categoria_unidade_medida_id_foreign` (`unidade_medida_id`);

--
-- Índices para tabela `categoria_vendas`
--
ALTER TABLE `categoria_vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_vendas_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cl`
--
ALTER TABLE `cl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cust_empresa`
--
ALTER TABLE `cust_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ds`
--
ALTER TABLE `ds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ds_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `ds_categoria`
--
ALTER TABLE `ds_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ds_categoria_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entidades_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `fc`
--
ALTER TABLE `fc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `fi`
--
ALTER TABLE `fi`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fl`
--
ALTER TABLE `fl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fl_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `fn`
--
ALTER TABLE `fn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fn_empresa_id_foreign` (`empresa_id`),
  ADD KEY `fn_fo_id_foreign` (`fo_id`);

--
-- Índices para tabela `fo`
--
ALTER TABLE `fo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fo_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `ft`
--
ALTER TABLE `ft`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `lotes_validades`
--
ALTER TABLE `lotes_validades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lotes_validades_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `metodos_pagamento`
--
ALTER TABLE `metodos_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metodos_pagamento_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `moedas`
--
ALTER TABLE `moedas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ol`
--
ALTER TABLE `ol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ol_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `pacote`
--
ALTER TABLE `pacote`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagamento_prestacoes`
--
ALTER TABLE `pagamento_prestacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pl`
--
ALTER TABLE `pl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pl_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`id`),
  ADD KEY `po_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `prioridade`
--
ALTER TABLE `prioridade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ra`
--
ALTER TABLE `ra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ra_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `re`
--
ALTER TABLE `re`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `rn`
--
ALTER TABLE `rn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rn_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_armazem`
--
ALTER TABLE `role_armazem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `se`
--
ALTER TABLE `se`
  ADD PRIMARY KEY (`id`),
  ADD KEY `se_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Índices para tabela `sl`
--
ALTER TABLE `sl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sl_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `st`
--
ALTER TABLE `st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `st_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `subscricoes`
--
ALTER TABLE `subscricoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `taxas`
--
ALTER TABLE `taxas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `termo_pagamento`
--
ALTER TABLE `termo_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termo_pagamento_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `tipo_de_contas`
--
ALTER TABLE `tipo_de_contas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_de_contas_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `tipo_imposto`
--
ALTER TABLE `tipo_imposto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_imposto_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `unidade_medida`
--
ALTER TABLE `unidade_medida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidade_medida_empresa_id_foreign` (`empresa_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `versoes`
--
ALTER TABLE `versoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ag`
--
ALTER TABLE `ag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `armazem`
--
ALTER TABLE `armazem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `bi`
--
ALTER TABLE `bi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bl`
--
ALTER TABLE `bl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `bo`
--
ALTER TABLE `bo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categoria_vendas`
--
ALTER TABLE `categoria_vendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `cc`
--
ALTER TABLE `cc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cl`
--
ALTER TABLE `cl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de tabela `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cust_empresa`
--
ALTER TABLE `cust_empresa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `ds`
--
ALTER TABLE `ds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ds_categoria`
--
ALTER TABLE `ds_categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `entidades`
--
ALTER TABLE `entidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fc`
--
ALTER TABLE `fc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fi`
--
ALTER TABLE `fi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fl`
--
ALTER TABLE `fl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fn`
--
ALTER TABLE `fn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fo`
--
ALTER TABLE `fo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ft`
--
ALTER TABLE `ft`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lotes_validades`
--
ALTER TABLE `lotes_validades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `meses`
--
ALTER TABLE `meses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `metodos_pagamento`
--
ALTER TABLE `metodos_pagamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `moedas`
--
ALTER TABLE `moedas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `ol`
--
ALTER TABLE `ol`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pacote`
--
ALTER TABLE `pacote`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pagamento_prestacoes`
--
ALTER TABLE `pagamento_prestacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de tabela `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2205;

--
-- AUTO_INCREMENT de tabela `pl`
--
ALTER TABLE `pl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `po`
--
ALTER TABLE `po`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de tabela `prioridade`
--
ALTER TABLE `prioridade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `ra`
--
ALTER TABLE `ra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `re`
--
ALTER TABLE `re`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rn`
--
ALTER TABLE `rn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `role_armazem`
--
ALTER TABLE `role_armazem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de tabela `se`
--
ALTER TABLE `se`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sl`
--
ALTER TABLE `sl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `st`
--
ALTER TABLE `st`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `subscricoes`
--
ALTER TABLE `subscricoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `taxas`
--
ALTER TABLE `taxas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `termo_pagamento`
--
ALTER TABLE `termo_pagamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tipo_de_contas`
--
ALTER TABLE `tipo_de_contas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_imposto`
--
ALTER TABLE `tipo_imposto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `unidade_medida`
--
ALTER TABLE `unidade_medida`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de tabela `versoes`
--
ALTER TABLE `versoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `ag`
--
ALTER TABLE `ag`
  ADD CONSTRAINT `ag_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `armazem`
--
ALTER TABLE `armazem`
  ADD CONSTRAINT `armazem_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `bi`
--
ALTER TABLE `bi`
  ADD CONSTRAINT `bi_bo_id_foreign` FOREIGN KEY (`bo_id`) REFERENCES `bo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bi_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `bl`
--
ALTER TABLE `bl`
  ADD CONSTRAINT `bl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `bo`
--
ALTER TABLE `bo`
  ADD CONSTRAINT `bo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categoria_unidade_medida_id_foreign` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `categoria_vendas`
--
ALTER TABLE `categoria_vendas`
  ADD CONSTRAINT `categoria_vendas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `cl`
--
ALTER TABLE `cl`
  ADD CONSTRAINT `cl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `ds`
--
ALTER TABLE `ds`
  ADD CONSTRAINT `ds_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `ds_categoria`
--
ALTER TABLE `ds_categoria`
  ADD CONSTRAINT `ds_categoria_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `entidades`
--
ALTER TABLE `entidades`
  ADD CONSTRAINT `entidades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `fc`
--
ALTER TABLE `fc`
  ADD CONSTRAINT `fc_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `fl`
--
ALTER TABLE `fl`
  ADD CONSTRAINT `fl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `fn`
--
ALTER TABLE `fn`
  ADD CONSTRAINT `fn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fn_fo_id_foreign` FOREIGN KEY (`fo_id`) REFERENCES `fo` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `fo`
--
ALTER TABLE `fo`
  ADD CONSTRAINT `fo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `lotes_validades`
--
ALTER TABLE `lotes_validades`
  ADD CONSTRAINT `lotes_validades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `marca`
--
ALTER TABLE `marca`
  ADD CONSTRAINT `marca_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `metodos_pagamento`
--
ALTER TABLE `metodos_pagamento`
  ADD CONSTRAINT `metodos_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `ol`
--
ALTER TABLE `ol`
  ADD CONSTRAINT `ol_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `pl`
--
ALTER TABLE `pl`
  ADD CONSTRAINT `pl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `po`
--
ALTER TABLE `po`
  ADD CONSTRAINT `po_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `ra`
--
ALTER TABLE `ra`
  ADD CONSTRAINT `ra_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `re`
--
ALTER TABLE `re`
  ADD CONSTRAINT `re_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `rn`
--
ALTER TABLE `rn`
  ADD CONSTRAINT `rn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `se`
--
ALTER TABLE `se`
  ADD CONSTRAINT `se_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `sl`
--
ALTER TABLE `sl`
  ADD CONSTRAINT `sl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `st`
--
ALTER TABLE `st`
  ADD CONSTRAINT `st_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `termo_pagamento`
--
ALTER TABLE `termo_pagamento`
  ADD CONSTRAINT `termo_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tipo_de_contas`
--
ALTER TABLE `tipo_de_contas`
  ADD CONSTRAINT `tipo_de_contas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tipo_imposto`
--
ALTER TABLE `tipo_imposto`
  ADD CONSTRAINT `tipo_imposto_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `unidade_medida`
--
ALTER TABLE `unidade_medida`
  ADD CONSTRAINT `unidade_medida_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
