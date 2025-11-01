-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 08:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autobas2_financas`
--

-- --------------------------------------------------------

--
-- Table structure for table `ag`
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
-- Dumping data for table `ag`
--

INSERT INTO `ag` (`id`, `nome`, `status`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Entidade teste', 'inactivo', 1, NULL, NULL, '2020-11-25 12:53:02', '2021-06-28 12:24:46'),
(2, 'Entity', 'activo', 1, NULL, NULL, '2020-11-25 12:53:12', NULL),
(3, 'entidade de saida', 'activo', 1, NULL, NULL, '2020-11-25 13:12:59', NULL),
(4, 'entidade de entrada', 'activo', 1, NULL, NULL, '2020-11-25 13:13:11', NULL),
(5, 'entidade de transferencia', 'activo', 1, NULL, NULL, '2020-11-25 13:13:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `armazem`
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
-- Dumping data for table `armazem`
--

INSERT INTO `armazem` (`id`, `nome`, `abreviatura`, `endereco`, `email`, `telefone`, `fax`, `celular`, `status`, `default`, `user_registar`, `user_update`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Armazem', 'AMZ', 'Local', NULL, NULL, NULL, NULL, 'activo', 'no', NULL, NULL, 1, '2020-11-23 16:20:12', NULL),
(25, 'Loja1', '15121121', 'Eduardo mandlane', '', '', '', '', 'activo', 'yes', NULL, NULL, 1, '2021-05-18 15:45:08', NULL),
(28, 'Loja2', '1512112111', 'Eduardo mandlane', '', '', '', '', 'activo', 'no', NULL, NULL, 1, '2021-05-28 11:50:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bi`
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
-- Table structure for table `bl`
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
  `excluida` int(11) NOT NULL DEFAULT 0,
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
-- Dumping data for table `bl`
--

INSERT INTO `bl` (`id`, `tipo_de_conta_id`, `fornecedor_id`, `nome`, `numero`, `nome_do_banco`, `endereco_do_banco`, `conta_padrao`, `excluida`, `descricao`, `rodape`, `nib`, `iban`, `swift`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `moeda_id`) VALUES
(2, 2, 0, 'TesTop Lda', '48521542152', 'BIM', 'Maputo', 0, 0, '', 'yes', '', '', '', 1, NULL, NULL, NULL, NULL, 1),
(3, 2, 6, 'TES - TOP', '366356197', 'M. Bim', 'Av.karl Marx 1877', 1, 0, '', 'yes', '003400000919002910152', '', 'MZN5855', 1, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bo`
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
-- Table structure for table `categoria`
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
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `status`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `unidade_medida_id`) VALUES
(1, 'Sem Categoria', 'activo', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categoria_vendas`
--

CREATE TABLE `categoria_vendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `despesa_funcionario` int(11) NOT NULL DEFAULT 0,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categoria_vendas`
--

INSERT INTO `categoria_vendas` (`id`, `nome`, `descricao`, `tipo`, `empresa_id`, `user_registar`, `user_update`, `despesa_funcionario`, `removido`, `created_at`, `updated_at`) VALUES
(1, 'Vendas', 'Vendas', 'income', NULL, NULL, NULL, 0, 0, NULL, NULL),
(2, 'Compras', 'Compras', 'expense', NULL, NULL, NULL, 0, 0, NULL, NULL),
(3, 'Transferencias(entradas)', 'Transferencias(entradas)', 'income', NULL, NULL, NULL, 0, 0, NULL, NULL),
(4, 'Transferencia(Saida)', 'Transferencia(Saida)', 'expense', NULL, NULL, NULL, 0, 0, NULL, NULL),
(5, 'DESPESAS ADMINISTRATIVAS', 'DESPESAS ADMINISTRATIVAS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(6, 'MANUTENÇÃO E REPARAÇÃO', 'MANUTENÇÃO E REPARAÇÃO', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(7, 'IMPOSTOS E TAXAS', 'IMPOSTOS E TAXAS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(8, 'LEVANTAMENTOS', 'LEVANTAMENTOS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(9, 'SEGUROS', 'SEGUROS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(10, 'APOIO SOCIAL', 'APOIO SOCIAL', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(11, 'AQUISIÇÃO DE MATERIAL E EQUIPAMENTOS', 'AQUISIÇÃO DE MATERIAL E EQUIPAMENTOS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(12, 'REMUNERAÇÃO DE TRABALHADORES', 'REMUNERAÇÃO DE TRABALHADORES', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(13, 'REMUNERAÇÃO DE ORGÃOS SOCIAIS', 'REMUNERAÇÃO DE ORGÃOS SOCIAIS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(14, 'FUNDO DE MANEIO', 'FUNDO DE MANEIO', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(15, 'RECARREGAMENTO DE CARTÕES', 'RECARREGAMENTO DE CARTÕES', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(16, 'TRANSPORTES', 'TRANSPORTES', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(17, 'HORAS EXTRAS', 'HORAS EXTRAS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(18, 'PRÉMIOS/BONUS/SUBSÍDIOS', 'PRÉMIOS/BONUS/SUBSÍDIOS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(19, 'COMBUSTÍVEL', 'COMBUSTÍVEL', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(20, 'RENDAS', 'RENDAS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(21, 'PEÇAS, ACESSÓRIOS E LUBRIFICANTES', 'PEÇAS, ACESSÓRIOS E LUBRIFICANTES', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(22, 'AJUDAS DE CUSTOS', 'AJUDAS DE CUSTOS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL),
(23, 'DESPESAS OPERACIONAIS', 'DESPESAS OPERACIONAIS', 'expense', 1, NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cc`
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
  `pago` double NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `cc`
--

INSERT INTO `cc` (`id`, `cliente_id`, `usuario_id`, `documento_id`, `referencia_documento`, `total_documento`, `data`, `por_pagar`, `pago`, `tipo`, `debito`, `credito`, `estado`, `user_registar`, `user_update`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 2, 102, 2, 'FT-0001/2022', NULL, '2022-05-26', 'sim', 93950, 'FT', NULL, NULL, NULL, 102, NULL, 1, '2022-05-26 21:03:56', NULL),
(2, 2, 102, 1, NULL, 93950, '2022-05-26', 'nao', 0, 'RE', NULL, '93950', NULL, NULL, NULL, 1, '2022-05-26 21:14:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl`
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

--
-- Dumping data for table `cl`
--

INSERT INTO `cl` (`id`, `nome`, `email`, `telefone`, `celular`, `morada`, `cidade`, `provincia`, `nuit`, `imposto`, `desconto`, `motivo`, `status`, `cliente_generico`, `caixa_postal`, `empresa_id`, `user_registar`, `user_update`, `doc_type`, `doc_number`, `created_at`, `updated_at`) VALUES
(1, 'EDM - DEP', '', '', NULL, 'AV. Filipe Sanuel Magaia nº 368, 1º andar', 'Maputo', 'Maputo', '600000063', 1, 0, NULL, 'activo', NULL, '', 1, 104, NULL, NULL, NULL, '2022-05-26 19:57:40', NULL),
(2, 'EDM DAL', 'procurment.dia@edm.co.mz', '', NULL, 'AV.Eduardo Mondlane nº 1398', 'Maputo', 'Maputo', '600000063', 1, 0, NULL, 'activo', NULL, '', 1, 102, NULL, NULL, NULL, '2022-05-26 20:55:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_temp`
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
  `inactive` tinyint(4) NOT NULL DEFAULT 0,
  `status_debtor` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo_cliente` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configuracoes`
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
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `code`) VALUES
(147, 'Moçambique', 'MZ');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` char(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `symbol`) VALUES
(1, 'Metical', 'Mt');

-- --------------------------------------------------------

--
-- Table structure for table `cust_empresa`
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
  `moeda_nativa` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cust_empresa`
--

INSERT INTO `cust_empresa` (`id`, `nome`, `email`, `nuit`, `caixa_postal`, `contacto_1`, `contacto_2`, `morada`, `logo`, `dia_inicio`, `dia_fim`, `pacote_id`, `idioma_default`, `imposto_default`, `empresa_id`, `user_registar`, `user_update`, `moeda_nativa`) VALUES
(1, 'TES-TOP, LDA', 'rh@testop.co.mz', '400670021', NULL, '21328056', '21328057', 'AV. KARL MARX, Nº1877 R/C-MAPUTO', 'tesLogo.jpeg', NULL, NULL, 1, 'po', NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id`, `nome`, `removido`) VALUES
(1, 'Informatica', 0),
(2, 'Comercial', 0),
(3, 'Financeiro', 0),
(4, 'RH', 0),
(5, 'Procurment', 0),
(6, 'Projetos', 0),
(7, 'Produção', 0),
(8, 'Qualidade', 0),
(9, 'Armazem', 0),
(10, 'Transporte', 0),
(11, 'Infra-Estrutura', 0),
(12, 'Secretaria', 0),
(13, 'Contabilidade', 0),
(14, 'Administração', 0);

-- --------------------------------------------------------

--
-- Table structure for table `documento_anexo`
--

CREATE TABLE `documento_anexo` (
  `id` int(11) NOT NULL,
  `documento_id` int(11) NOT NULL,
  `anexo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documento_anexo`
--

INSERT INTO `documento_anexo` (`id`, `documento_id`, `anexo`, `removido`, `created_at`) VALUES
(1, 3, 'WhatsApp Image 2022-05-19 at 10.32.14 (1).jpeg', 0, '2022-05-25 20:55:44'),
(2, 3, 'IMPOSTOS A PAGAR - 2022.pdf', 0, '2022-05-30 20:45:29'),
(3, 5, 'COTACAO LICHINGA.jpeg', 0, '2022-05-31 16:56:29'),
(4, 6, '873c636ef1e772adea711b1305e47820.jpg', 0, '2022-05-31 20:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `ds`
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
  `departamento_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ds`
--

INSERT INTO `ds` (`id`, `conta_id`, `data`, `descricao`, `total`, `categoria_id`, `metodo_pagamento_id`, `referencia`, `anexo`, `estado`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `departamento_id`, `funcionario_id`) VALUES
(1, 1, '2022-05-25', 'Despesa de Pagamento de Requisição', -388.44, 2, NULL, 'RE-0001/2022', NULL, NULL, 1, NULL, NULL, '2022-05-25 20:57:23', NULL, NULL, NULL),
(2, 3, '2022-05-31', 'Despesa de Pagamento de Requisição', -62010.64, 2, NULL, 'RE-0001/2022', NULL, NULL, 1, NULL, NULL, '2022-05-31 20:08:33', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ds_categoria`
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
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL,
  `nome` char(120) NOT NULL,
  `iniciais` varchar(10) DEFAULT NULL,
  `cidade` bigint(20) NOT NULL,
  `observacoes` longtext DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `prefix_id` int(11) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `nuit` varchar(60) DEFAULT NULL,
  `contacto` varchar(60) DEFAULT NULL,
  `morada` varchar(120) DEFAULT NULL,
  `conta_bancaria` varchar(60) DEFAULT NULL,
  `excel_name_folha` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empresa`
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
-- Table structure for table `empresas`
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
-- Table structure for table `entidades`
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
-- Table structure for table `fc`
--

CREATE TABLE `fc` (
  `id` int(10) UNSIGNED NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_documento` double DEFAULT NULL,
  `pago` double NOT NULL DEFAULT 0,
  `data` date DEFAULT NULL,
  `tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `por_pagar` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'nao',
  `debito` double DEFAULT NULL,
  `credito` double DEFAULT NULL,
  `simulacao` int(11) NOT NULL DEFAULT 0,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `empresa_register` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fc`
--

INSERT INTO `fc` (`id`, `fornecedor_id`, `usuario_id`, `documento_id`, `referencia_documento`, `total_documento`, `pago`, `data`, `tipo`, `por_pagar`, `debito`, `credito`, `simulacao`, `estado`, `user_registar`, `user_update`, `empresa_id`, `empresa_register`, `created_at`, `updated_at`) VALUES
(1, 2, 102, 1, 'TT-0001/2022', 10050.3, 0, '2022-05-26', 'oc', 'sim', 10050.3, NULL, 0, 'activo', 102, NULL, 1, 10, '2022-05-26 21:24:58', NULL),
(3, 6, 97, 2, 'TT-0002/2022', 9180.23, 0, '2022-05-30', 'oc', 'sim', 9180.23, NULL, 0, 'activo', 97, NULL, 1, 10, NULL, '2022-05-30 20:02:55'),
(5, 2, 108, 3, 'EA-1', 533, 0, '2022-05-30', NULL, 'sim', 533, NULL, 0, 'activo', NULL, NULL, 1, 11, NULL, '2022-05-30 20:45:55'),
(7, 2, 101, 5, 'EA-0002/2022', 27958, 0, '2022-05-31', 'oc', 'sim', 27958, NULL, 0, 'activo', 101, NULL, 1, 11, '2022-05-31 16:56:29', NULL),
(9, 8, 110, 6, 'TT-0004/2022', 62010.64, 60000, '2022-05-31', NULL, 'sim', 62010.64, NULL, 1, 'activo', NULL, NULL, 1, 10, NULL, '2022-05-31 20:06:04'),
(10, 8, 90, 2, 'RE-0001/2022', 62010.64, 0, '2022-05-31', NULL, 'nao', NULL, 62010.64, 0, 'activo', NULL, NULL, 1, 0, '2022-05-31 20:08:33', NULL),
(11, 5, 90, 7, 'EA-0003/2022', 5674.5, 0, '2022-05-31', 'oc', 'sim', 5674.5, NULL, 0, 'activo', 90, NULL, 1, 11, '2022-05-31 21:11:41', NULL),
(12, 3, 90, 8, 'EA-0004/2022', 200, 0, '2022-05-31', 'oc', 'sim', 200, NULL, 0, 'activo', 90, NULL, 1, 11, '2022-05-31 21:12:25', NULL),
(13, 3, 90, 9, 'MR-0001/2022', 5674.5, 0, '2022-05-31', 'oc', 'sim', 5674.5, NULL, 0, 'activo', 90, NULL, 1, 13, '2022-05-31 21:12:57', NULL),
(14, 2, 97, 10, 'EV-0001/2022', 56746.17, 0, '2022-05-31', 'oc', 'sim', 56746.17, NULL, 0, 'activo', 97, NULL, 1, 12, '2022-05-31 19:51:54', NULL),
(20, 3, 90, 12, 'MR-0003/2022', 58462, 0, '2022-06-01', 'oc', 'sim', 58462, NULL, 0, 'activo', 90, NULL, 1, 13, '2022-06-01 20:15:07', '2022-06-01 20:15:07'),
(26, 3, 90, 11, 'MR-0002/2022', 19764.81, 0, '2022-06-01', 'oc', 'sim', 19764.81, NULL, 0, 'activo', 90, NULL, 1, 13, '2022-06-01 20:19:38', '2022-06-01 20:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `fi`
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

--
-- Dumping data for table `fi`
--

INSERT INTO `fi` (`id`, `codigo_produto`, `st_id`, `descricao`, `quantidade`, `preco_unitario`, `preco_custo`, `tipo_taxa_id`, `is_inventory`, `valor_taxa`, `percentagem_desconto`, `taxa_inclusa_valor`, `lote`, `item_servico`, `user_registar`, `user_update`, `empresa_id`, `ft_id`, `created_at`, `updated_at`, `nr_serie`) VALUES
(1, 'zero', 0, 'Transformador de potencia 315KVA', 1, 935000, NULL, 3, 0, 0, 0, 'no', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(2, 'zero', 0, 'Transformador de potencia 315KVA', 1, 935000, NULL, 3, 0, 0, 0, 'no', NULL, NULL, NULL, NULL, 1, 2, '2022-05-26 21:03:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fl`
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
-- Dumping data for table `fl`
--

INSERT INTO `fl` (`id`, `nome`, `email`, `telefone`, `celular`, `morada`, `cidade`, `provincia`, `nuit`, `pais`, `status`, `caixa_postal`, `empresa_id`, `fornecedor_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Click Computer', 'infclickcomputer@gmail.com', '863529865', '848529865', 'Av. Maguiguana nr 456 RC', 'Maputo', 'Maputo', '400938407', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-09 16:19:40', NULL),
(2, 'somofer', 'somofer.vendas.@unicomo.co.mz', '21303348 ', '823044000', 'Maputo', 'Maputo', 'Maputo', '400007675', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-09 16:42:13', NULL),
(3, 'MHL AUTO SA', 'vendas@mozambiqueholdings.com', '21466061', '21466002', 'Av.angola', 'Maputo', 'Maputo', '400691657', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-09 17:00:10', NULL),
(4, 'A M Multiserviçoes e Investimentos', 'ammultiservinvest@gmail.com', '843619809', '873619809', 'Av. Josina Machel, Nº 42 R/C', 'Maputo', '', '400907834', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-10 19:26:10', '2022-05-10 19:28:55'),
(5, 'Moz Computer', 'sales@mozcomputer', '21329298', '820329298', 'Rua Ngungunhane, Nº 85, 2º Andar', 'Maputo', 'Maputo', '400164721', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-10 20:30:21', '2022-05-10 20:30:40'),
(6, 'TES - TOP', 'testop2008@gmail.com', '', '', 'Av.karl Marx 1877', 'Maputo', 'Maputo', '400670021', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-30 19:42:45', NULL),
(7, 'Nem Chem', '', '21749426/7', '', 'Joaquim Chissano Nr. 2305 RC', 'Matola', '', '400080763', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-31 15:36:47', NULL),
(8, 'cfao', 'cfao@gmail.com', '21400471', '21227200', 'Maputo', 'Maputo', '', '40119664', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-31 20:02:00', NULL),
(9, 'CDM', '', '+258852532000', '', 'Maputo Cidade', 'Maputo C', 'Maputo', '48856266', NULL, 'activo', '1100', 1, NULL, NULL, NULL, '2022-05-31 21:10:26', NULL),
(10, 'CDM', '', '+258852532000', '', 'Maputo Cidade', 'Maputo C', 'Maputo', '48856266', NULL, 'activo', '1100', 1, NULL, NULL, NULL, '2022-05-31 21:10:48', NULL),
(11, 'EURORENT', '', '', '', 'RUA KAMBA SIMANGO N358', 'MAPUTO', '', '400157987', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-31 21:14:28', NULL),
(12, 'MKGB SERVIÇOS LDA', '', '', '', 'AV. 25 DE SETEMBRO N1147 2 ANDAR', 'MAPUTO', '', '400969930', NULL, 'activo', '', 1, NULL, NULL, NULL, '2022-05-31 21:17:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fn`
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
-- Dumping data for table `fn`
--

INSERT INTO `fn` (`id`, `fo_id`, `codigo_produto`, `descricao`, `quantidade`, `preco_unitario`, `preco_custo`, `tipo_taxa_id`, `valor_taxa`, `is_inventory`, `percentagem_desconto`, `taxa_inclusa_valor`, `lote`, `item_servico`, `st_id`, `user_registar`, `user_update`, `empresa_id`, `created_at`, `updated_at`, `cambioTotal`, `moeda_id`) VALUES
(1, 1, 'zero', 'Computador completo', 1, 70, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(5, 5, 'zero', '- Lenovo ThinkCentre M90Q i5-10500 8GB 512GB SSD', 1, 23, NULL, 4, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(7, 7, 'zero', 'HP 410A Black Laserjet Toner Cartridge', 1, 4434, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(8, 1, 'zero', 'Tubo PVC 110', 10, 859, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(14, 2, 'zero', 'Descrição', 9, 153.85, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(15, 2, 'zero', 'Descrição', 10, 153.85, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(16, 2, 'zero', 'Descrição', 14, 153.85, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(17, 2, 'zero', 'Descrição', 4, 153.85, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(18, 2, 'zero', 'Descrição', 14, 153.85, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(21, 3, 'zero', 'grout', 1, 358, NULL, 1, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(22, 3, 'zero', 'stick', 1, 175, NULL, 1, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(24, 5, 'zero', 'Compra de peças para samil 50 AKA 696 MC', 1, 27958, NULL, 1, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(26, 6, 'zero', 'Solicitação do pagamento da revisão', 1, 62010.64, NULL, 1, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(27, 7, 'zero', 'Pedido de pagamento de SSD 512gb', 1, 4850, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(28, 8, 'zero', '- Lenovo ThinkCentre M90Q i5-10500 8GB 512GB SSD', 1, 200, NULL, 1, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(29, 9, 'zero', 'pdf', 1, 4850, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(30, 10, 'zero', 'Euro Cast', 1, 48501, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(36, 12, 'zero', 'ffgd', 1, 58462, NULL, 1, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0),
(42, 11, 'zero', 'grout cast', 3, 5631, NULL, 3, 0, 0, 0, 'no', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fo`
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
  `aprovacao` int(11) NOT NULL DEFAULT 2 COMMENT '0 - Nao aprovado 1 - Aprovado 2 - Aguardando Avaliacao',
  `prioridade` int(11) NOT NULL DEFAULT 3,
  `departamento_id` int(11) NOT NULL DEFAULT 1,
  `documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localizacao_id` int(11) NOT NULL,
  `requisicao` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `taxa_cambio` double DEFAULT 1,
  `contra_valor` double DEFAULT NULL,
  `simulacao` int(11) NOT NULL DEFAULT 0,
  `moedas_id` int(10) UNSIGNED DEFAULT 1,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `empresa_register` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alert_new_doc` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fo`
--

INSERT INTO `fo` (`id`, `fornecedor_id`, `banco_fornecedor`, `usuario_id`, `data`, `taxa_total`, `referencia`, `comentario`, `total`, `estado`, `aprovacao`, `prioridade`, `departamento_id`, `documento`, `localizacao_id`, `requisicao`, `user_registar`, `user_update`, `taxa_cambio`, `contra_valor`, `simulacao`, `moedas_id`, `empresa_id`, `empresa_register`, `created_at`, `updated_at`, `alert_new_doc`) VALUES
(1, 2, NULL, 102, '2022-05-26', 1460.3, 'TT-1', '', 10050.3, 'activo', 1, 1, 5, 'oc', 0, NULL, 102, NULL, NULL, 10050.3, 0, NULL, 1, 10, '2022-05-26 21:24:58', NULL, 1),
(2, 6, NULL, 97, '2022-05-30', 1333.8795, 'TT-0002/2022', '', 9180.23, 'activo', 1, 2, 4, 'oc', 0, NULL, 97, NULL, NULL, 9180.23, 0, 1, 1, 10, '2022-05-30 20:01:42', NULL, 1),
(3, 2, NULL, 108, '2022-05-30', 0, 'EA-1', '', 533, 'cancelado', 0, 2, 11, 'oc', 0, NULL, 108, NULL, NULL, 533, 0, 1, 1, 11, '2022-05-30 20:45:29', NULL, 1),
(5, 2, NULL, 101, '2022-05-31', 0, 'EA-0002/2022', '', 27958, 'activo', 2, 1, 6, 'oc', 0, NULL, 101, NULL, NULL, 27958, 0, NULL, 1, 11, '2022-05-31 16:56:29', NULL, 1),
(6, 8, NULL, 110, '2022-05-31', 0, 'TT-0004/2022', '', 62010.64, 'activo', 1, 1, 6, 'oc', 0, NULL, 110, NULL, NULL, 62010.64, 1, 1, 1, 10, '2022-05-31 20:05:38', NULL, 1),
(7, 5, NULL, 90, '2022-05-31', 824.5, 'EA-0003/2022', '', 5674.5, 'activo', 2, 2, 1, 'oc', 0, NULL, 90, NULL, NULL, 5674.5, 0, NULL, 1, 11, '2022-05-31 21:11:41', NULL, 1),
(8, 3, NULL, 90, '2022-05-31', 0, 'EA-0004/2022', '', 200, 'activo', 2, 2, 4, 'oc', 0, NULL, 90, NULL, NULL, 200, 0, NULL, 1, 11, '2022-05-31 21:12:25', NULL, 1),
(9, 3, NULL, 90, '2022-05-31', 824.5, 'MR-1', '', 5674.5, 'activo', 2, 2, 4, 'oc', 0, NULL, 90, NULL, NULL, 5674.5, 0, NULL, 1, 13, '2022-05-31 21:12:57', NULL, 1),
(10, 2, NULL, 97, '2022-05-31', 8245.17, 'EV-1', '', 56746.17, 'activo', 1, 2, 2, 'oc', 0, NULL, 97, NULL, NULL, 56746.17, 0, NULL, 1, 12, '2022-05-31 19:51:54', NULL, 1),
(11, 3, NULL, 90, '2022-05-03', 2871.81, 'MR-0002/2022', '', 19764.81, 'activo', 1, 2, 10, 'oc', 0, NULL, 97, NULL, NULL, 19764.81, 0, 1, 1, 13, '2022-05-31 20:16:44', NULL, 1),
(12, 3, NULL, 90, '2022-06-01', 0, 'MR-0003/2022', '', 58462, 'activo', 1, 2, 3, 'oc', 0, NULL, 90, NULL, NULL, 58462, 0, 1, 1, 13, '2022-06-01 20:11:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ft`
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
  `termo_pagamento_id` int(11) NOT NULL DEFAULT 1,
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
  `moedas_id` int(10) UNSIGNED DEFAULT 1,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `impresso_original` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moeda_nativa` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ft`
--

INSERT INTO `ft` (`id`, `referencia`, `cliente_id`, `factura_id`, `cotacao_id`, `conta_bancaria_id`, `referencia_documento`, `usuario_id`, `localizacao_id`, `requisicao`, `metodo_pagamento_id`, `termo_pagamento_id`, `data`, `data_fim`, `local_entrega`, `nome_motorista`, `carta_conducao`, `matricula_carro`, `total`, `taxa_total`, `comentario`, `estado`, `documento`, `user_registar`, `user_update`, `taxa_cambio`, `contra_valor`, `moedas_id`, `empresa_id`, `created_at`, `updated_at`, `impresso_original`, `moeda_nativa`) VALUES
(1, 'COT-0001/2022', 2, NULL, NULL, NULL, NULL, 102, 25, '02.001.2022.0000063', NULL, 3, '2022-05-26', '2022-06-25', NULL, NULL, NULL, NULL, NULL, 0, '', 'activo', 'cot', 102, NULL, 64.41, NULL, 1, 1, '2022-05-26 21:00:24', NULL, NULL, 1),
(2, 'FT-0001/2022', 2, NULL, 1, NULL, 'COT-0001/2022', 102, 25, '02.001.2022.0000063', NULL, 3, '2022-05-26', '2022-06-25', NULL, NULL, NULL, NULL, NULL, 0, '', 'activo', 'ft', 102, NULL, 64.41, NULL, 1, 1, '2022-05-26 21:03:56', '2022-05-26 21:05:31', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `internal_id` bigint(20) DEFAULT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apelido` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_nacimento` date DEFAULT NULL,
  `tipo_documento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_documento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local_de_emissao` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_arquivo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nacionalidade` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `naturalidade` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_alternativo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distrito` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria` int(30) DEFAULT NULL,
  `categoria_id` int(180) DEFAULT NULL,
  `grau_academico` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fotografia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `codigo_interno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salario_base` double DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `nuit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inss` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'normal',
  `irps` varchar(60) COLLATE utf8_unicode_ci DEFAULT 'normal',
  `nr_conta` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_banco` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_dependentes` int(11) DEFAULT NULL,
  `observacoes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vencimento_dia` double DEFAULT NULL,
  `vencimento_hora` double DEFAULT NULL,
  `sindicato` double DEFAULT NULL,
  `local_referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencia_irps` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_contrato_id` int(11) DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL,
  `nr_renovacoes` int(11) DEFAULT NULL,
  `motivo_entrada` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_inss` int(11) DEFAULT NULL,
  `estado_civil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_socio` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cota` double DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  `tipo_funcionario` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Interno',
  `id_banco` int(11) DEFAULT NULL,
  `pag_via_banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'nao',
  `nib` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `cal_hora` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `pensionista` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `tipo_trabalho` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal',
  `moedas_base` int(11) DEFAULT NULL,
  `moeda_base` int(11) NOT NULL DEFAULT 1,
  `descontos_percentual` double NOT NULL DEFAULT 0,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `internal_id`, `nome`, `apelido`, `genero`, `data_nacimento`, `tipo_documento`, `nr_documento`, `local_de_emissao`, `nome_do_arquivo`, `nacionalidade`, `naturalidade`, `contacto`, `contacto_alternativo`, `distrito`, `categoria`, `categoria_id`, `grau_academico`, `fotografia`, `estado`, `created_at`, `updated_at`, `codigo_interno`, `salario_base`, `data_admissao`, `nuit`, `inss`, `irps`, `nr_conta`, `nome_banco`, `nr_dependentes`, `observacoes`, `vencimento_dia`, `vencimento_hora`, `sindicato`, `local_referencia`, `referencia_irps`, `tipo_contrato_id`, `duracao`, `nr_renovacoes`, `motivo_entrada`, `nr_inss`, `estado_civil`, `morada`, `nr_socio`, `cota`, `sector_id`, `grupo_id`, `tipo_funcionario`, `id_banco`, `pag_via_banco`, `nib`, `empresa_id`, `codigo`, `cal_hora`, `pensionista`, `tipo_trabalho`, `moedas_base`, `moeda_base`, `descontos_percentual`, `empresa`) VALUES
(19, 10001, 'RUI RICARDO', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 43, NULL, NULL, 'activo', '2022-03-23 14:12:39', '2022-04-22 13:01:19', '7 10001', 7300, NULL, NULL, 'normal', 'normal', '', NULL, NULL, NULL, 243.33, 30.42, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Interno', 0, 'nao', '', 15, 1, 'no', 'no', 'normal', 1, 1, 0, 15),
(20, 10002, 'RAYHAN KHALID', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 44, NULL, NULL, 'activo', '2022-03-23 14:13:35', '2022-04-22 13:01:01', '7 10002', 7300, NULL, NULL, 'normal', 'normal', '', NULL, NULL, NULL, 243.33, 30.42, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Interno', 0, 'nao', '', 15, 2, 'no', 'no', 'normal', 1, 1, 0, 15),
(21, 10001, 'JAIME CUAMBA', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 0, NULL, NULL, 'activo', '2022-03-23 14:14:02', '2022-04-22 13:08:13', '6 10001', 7300, NULL, NULL, 'normal', 'normal', '', NULL, NULL, NULL, 243.33, 30.42, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Interno', 0, 'nao', '', 14, 3, 'no', 'no', 'normal', 1, 1, 0, 14),
(22, 10001, 'PANCAJE JEENTILAL', NULL, 'masculino', '1967-10-31', 'BI', '110300047242C', NULL, NULL, 'Mocambicana', 'Nampula', '', NULL, NULL, NULL, 43, NULL, NULL, 'activo', '2022-03-23 14:14:29', '2022-04-20 19:40:23', '5 10001', 21091.95, NULL, NULL, 'normal', 'normal', '', NULL, 2, NULL, 703.07, 87.88, 0, '1', '2', 4, 3, NULL, NULL, NULL, 'Solteiro', 'Alto Mae', '', 0, NULL, NULL, 'Efectivo', 0, 'nao', '', 16, 4, 'no', 'no', '', 1, 1, 0, 16),
(24, 10002, 'SAMIR MAHOMED HANIF', NULL, 'masculino', '1986-07-30', 'BI', '110100014213I', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '874197655', NULL, NULL, NULL, 45, NULL, NULL, 'activo', '2022-03-23 14:15:34', '2022-04-20 19:45:25', '5 10002', 73003.47, '2020-07-01', '101455351', 'normal', 'normal', '919002910001', NULL, 2, '', 2433.45, 304.18, 0, '1', '2', 5, 0, 0, 'Aumento do pessoal', 911918235, 'Casado', 'Malhangalene', '', 0, NULL, NULL, 'Efectivo', 3, 'sim', '003400000919002910152', 16, 5, 'no', 'no', '', 1, 1, 0, 16),
(25, 10001, 'MÁRCIA MARIA BATA', NULL, 'masculino', '1982-01-30', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 14:16:54', '2022-04-19 19:47:24', '4 10001', 15928, '2017-12-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 530.93, 66.37, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 4, NULL, 'Efectivo', 0, 'nao', '', 13, 6, 'no', 'no', '', 1, 1, 0, 13),
(26, 10002, 'MOHAMMAD ABDUL SACUR KARIM ISSAK', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 46, NULL, NULL, 'activo', '2022-03-23 14:17:35', '2022-04-20 18:07:36', '4 10002', 21178.16, NULL, NULL, 'normal', 'normal', '', NULL, NULL, NULL, 705.94, 88.24, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Interno', 0, 'nao', '', 13, 7, 'no', 'no', 'normal', 1, 1, 0, 13),
(27, 10003, 'MUNIR ABDUL SACOOR', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 43, NULL, NULL, 'activo', '2022-03-23 14:17:53', '2022-04-20 17:54:04', '4 10003', 21091.95, NULL, NULL, 'normal', 'normal', '', NULL, 2, NULL, 703.07, 87.88, 0, '1', '2', 4, 3, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, 'Interno', 0, 'nao', '', 13, 8, 'no', 'no', 'normal', 1, 1, 0, 13),
(28, 10004, 'SANJAY SINGH', NULL, 'masculino', '1971-09-05', 'DIRE', '', NULL, NULL, 'Estrangeira ', '', '', NULL, NULL, NULL, 46, NULL, NULL, 'activo', '2022-03-23 14:18:16', '2022-04-20 18:06:54', '4 10004', 129402.08, '2018-10-24', NULL, 'normal', 'normal', '', NULL, 1, '', 4313.4, 539.18, 0, '1', '', 4, 24, 0, '', NULL, 'Solteiro', NULL, '', 0, 13, NULL, 'Efectivo', 0, 'nao', '', 13, 9, 'no', 'no', '', 1, 1, 0, 13),
(29, 10005, 'SIACA ADAMOGY SIACA', NULL, NULL, '1986-12-12', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 44, NULL, NULL, 'activo', '2022-03-23 14:18:31', '2022-04-20 18:06:15', '4 10005', 13990, '2017-05-02', NULL, 'normal', 'normal', '', NULL, 0, '', 466.33, 58.29, 0, '1', '', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, NULL, NULL, 'Efectivo', 0, 'nao', '', 13, 10, 'no', 'no', '', 1, 1, 0, 13),
(30, 10001, 'ADIL SIRAGE GANY', NULL, 'masculino', '2001-03-10', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 47, NULL, NULL, 'activo', '2022-03-23 14:19:26', '2022-04-20 18:35:06', '3 10001', 9362, '2020-11-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 312.07, 39.01, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 9, NULL, 'Efectivo', 0, 'nao', '', 12, 11, 'no', 'no', '', 1, 1, 0, 12),
(31, 10002, 'ADILSON CONSTANTINO MATSINHE', NULL, 'masculino', '1981-06-01', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 48, NULL, NULL, 'activo', '2022-03-23 14:20:06', '2022-04-20 18:35:42', '3 10002', 17990, '2020-09-10', NULL, 'normal', 'normal', '', NULL, NULL, '', 599.67, 74.96, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 17, NULL, 'Efectivo', 0, 'nao', '', 12, 12, 'no', 'no', '', 1, 1, 0, 12),
(32, 10003, 'ANSELMO FRANCISCO P. MACHAVA', NULL, NULL, '1965-03-01', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 31, NULL, NULL, 'activo', '2022-03-23 14:21:30', '2022-04-20 18:36:11', '3 10003', 12835, '2019-09-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 427.83, 53.48, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 12, 13, 'no', 'no', '', 1, 1, 0, 12),
(33, 10004, 'BERNARDINO LOURENÇO', NULL, 'masculino', '1973-03-08', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 25, NULL, NULL, 'activo', '2022-03-23 14:21:56', '2022-04-20 18:37:53', '3 10004', 7300, '2021-04-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 0, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 5, NULL, 'Não Efectivo', 0, 'nao', '', 12, 14, 'no', 'no', '', 1, 1, 0, 12),
(34, 10005, 'CHEILA DA GRACA BERNARDO QUILAMBO', NULL, 'femenino', '1991-04-29', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 21, NULL, NULL, 'activo', '2022-03-23 14:22:14', '2022-04-20 18:45:06', '3 10005', 39837.66, '2021-02-01', NULL, 'normal', 'normal', '', NULL, 0, '', 1327.92, 165.99, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 4, NULL, 'Efectivo', 0, 'nao', '', 12, 15, 'no', 'no', '', 1, 1, 0, 12),
(35, 10006, 'EDSON ALBERTO NHAPULO', NULL, 'masculino', '1980-06-05', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 14:22:36', '2022-04-20 18:41:37', '3 10006', 15464, '2021-07-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 515.47, 64.43, NULL, NULL, NULL, 4, 6, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 4, NULL, 'Efectivo', 0, 'nao', '', 12, 16, 'no', 'no', '', 1, 1, 0, 12),
(36, 10007, 'FRANCISCA AGOSTINHO', NULL, NULL, '1982-06-28', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 25, NULL, NULL, 'activo', '2022-03-23 14:23:08', '2022-04-20 18:42:06', '3 10007', 7300, '2021-12-17', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 5, NULL, 'Efectivo', 0, 'nao', '', 12, 17, 'no', 'no', '', 1, 1, 0, 12),
(37, 10008, 'JÉSSICA JOÃO GONÇALO RANGANHA', NULL, 'masculino', '1996-01-19', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 50, NULL, NULL, 'activo', '2022-03-23 14:23:40', '2022-04-20 18:44:43', '3 10008', 27210.37, '2020-03-02', NULL, 'normal', 'normal', '', NULL, 0, '', 907.01, 113.38, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 12, 18, 'no', 'no', '', 1, 1, 0, 12),
(38, 10009, 'JONAS GERSON ANDRÉ MAZIVE', NULL, 'masculino', '1994-04-26', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 51, NULL, NULL, 'activo', '2022-03-23 14:24:29', '2022-04-20 18:42:37', '3 10009', 7300, '2020-11-18', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 12, 19, 'no', 'no', '', 1, 1, 0, 12),
(39, 10010, 'MOHAMMED KHALIL ABDUL LATIF', NULL, 'masculino', '2022-05-04', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 27, NULL, NULL, 'activo', '2022-03-23 14:25:07', '2022-05-04 17:22:18', '3 10010', 59318.18, '2019-10-21', NULL, 'normal', 'normal', '', NULL, 0, '', 1977.27, 247.16, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 12, 20, 'no', 'no', '', 1, 1, 0, 12),
(40, 10011, 'NELSON CALANE CHIRINDZA', NULL, 'masculino', '1987-07-25', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 40, NULL, NULL, 'activo', '2022-03-23 14:25:52', '2022-04-20 18:57:38', '3 10011', 9227, '2019-12-25', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 12, 21, 'no', 'no', '', 1, 1, 0, 12),
(41, 10012, 'PANCAJE JEENTILAL', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 43, NULL, NULL, 'activo', '2022-03-23 14:26:24', '2022-04-20 19:01:19', '3 10012', 21091.95, NULL, NULL, 'normal', 'normal', '', NULL, 2, NULL, 703.07, 87.88, 0, '1', '2', 4, 3, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, 'Interno', 0, 'nao', '', 12, 22, 'no', 'no', 'normal', 1, 1, 0, 12),
(42, 10013, 'PINTO FRANCISCO UANE', NULL, 'masculino', '1982-10-16', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 49, NULL, NULL, 'activo', '2022-03-23 14:26:43', '2022-04-20 19:01:53', '3 10013', 10773, '2020-10-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 359.1, 44.89, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 12, 23, 'no', 'no', '', 1, 1, 0, 12),
(43, 10014, 'SALOMÃO PAULUANE TUISSENE GUAMBE', NULL, 'masculino', '1993-12-08', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:27:13', '2022-04-20 19:02:19', '3 10014', 7300, '2020-11-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 17, NULL, 'Efectivo', 0, 'nao', '', 12, 24, 'no', 'no', '', 1, 1, 0, 12),
(44, 10015, 'SOLANGE AFONSO A. DUARTE', NULL, NULL, '1970-01-01', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 32, NULL, NULL, 'Demitido', '2022-03-23 14:27:31', '2022-04-20 18:33:17', '3 10015', NULL, NULL, NULL, 'normal', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, 'Solteiro', NULL, NULL, NULL, NULL, NULL, 'Efectivo', NULL, 'nao', NULL, 12, 25, 'no', 'no', '', NULL, 1, 0, 12),
(45, 10016, 'YARA ERMELINDA CORDEIRO SIMANGO', NULL, 'femenino', '1997-04-28', 'BI', '110100290970F', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:27:53', '2022-04-20 19:02:51', '3 10016', 10773, '2020-08-10', NULL, 'normal', 'normal', '', NULL, NULL, '', 359.1, 44.89, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, NULL, NULL, 'Efectivo', 0, 'nao', '', 12, 26, 'no', 'no', '', 1, 1, 0, 12),
(46, 10001, 'Bélton Salomão Nhancume', NULL, 'masculino', '1995-01-20', 'BI', '110101714672M', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 14:35:51', '2022-04-20 19:25:23', '2 10001', 8247, '2018-07-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 274.9, 34.36, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 6, NULL, 'Efectivo', 0, 'nao', '', 11, 27, 'no', 'no', '', 1, 1, 0, 11),
(47, 10002, 'Carlos Francisco Senda Júnior', NULL, 'masculino', '1987-07-02', 'BI', '110104635081F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 23, NULL, NULL, 'activo', '2022-03-23 14:39:18', '2022-04-21 03:49:38', '2 10002', 27859.15, '2017-12-01', NULL, 'normal', 'normal', '', NULL, 1, '', 928.64, 116.08, 0, '1', '1', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 28, 'no', 'no', '', 1, 1, 0, 11),
(48, 10003, 'Edson Francisco Paporo Inrebo', NULL, 'masculino', '1991-05-11', 'BI', '110100125552P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 24, NULL, NULL, 'activo', '2022-03-23 14:39:55', '2022-04-21 04:29:56', '2 10003', 12835, '2022-04-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 427.83, 53.48, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 29, 'no', 'no', '', 1, 1, 0, 11),
(49, 10004, 'Nunes Filipe Pedro', NULL, 'masculino', '1985-12-05', 'BI', '110101824058J', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 24, NULL, NULL, 'activo', '2022-03-23 14:40:16', '2022-04-21 03:52:03', '2 10004', 27210.37, '2020-12-01', NULL, 'normal', 'normal', '', NULL, 0, '', 907.01, 113.38, 0, '1', '0', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 30, 'no', 'no', '', 1, 1, 0, 11),
(50, 10005, 'Marcia Natalia Matsinhe', NULL, 'femenino', '1981-04-03', 'BI', '110101519717J', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 14:40:43', '2022-04-21 03:54:46', '2 10005', 20660.92, '2022-01-05', NULL, 'normal', 'normal', '', NULL, 0, '', 688.7, 86.09, 0, '1', '0', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 31, 'no', 'no', '', 1, 1, 0, 11),
(51, 10006, 'Leonor José Chichango', NULL, 'femenino', '1982-11-10', 'BI', '110400303649A', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 14:41:03', '2022-04-20 19:16:11', '2 10006', 11954, '2011-03-14', NULL, 'normal', 'normal', '', NULL, NULL, '', 398.47, 49.81, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 32, 'no', 'no', '', 1, 1, 0, 11),
(52, 10007, 'Isaura Alexandre', NULL, 'femenino', '1992-10-22', 'BI', '100102086156C', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 25, NULL, NULL, 'activo', '2022-03-23 14:41:25', '2022-04-20 19:13:53', '2 10007', 7300, '2018-11-13', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 33, 'no', 'no', '', 1, 1, 0, 11),
(53, 10008, 'Domingos  Micas Ualacane Zita', NULL, 'masculino', '1978-01-01', 'BI', '110100893008I', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 22, NULL, NULL, 'activo', '2022-03-23 14:41:53', '2022-04-20 19:12:13', '2 10008', 10773, '2022-04-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 359.1, 44.89, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 1, NULL, 'Efectivo', 0, 'nao', '', 11, 34, 'no', 'no', '', 1, 1, 0, 11),
(55, 10010, 'Lena Arnaldo dos Santos', NULL, NULL, '2000-10-07', 'BI', '080105145342A', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 14:42:31', '2022-04-20 19:11:05', '2 10010', 10773, '2021-03-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 359.1, 44.89, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 12, NULL, 'Efectivo', 0, 'nao', '', 11, 36, 'no', 'no', '', 1, 1, 0, 11),
(56, 10009, 'Sádia Daúd', NULL, 'femenino', '1997-05-03', 'BI', '020100821199I', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 23, NULL, NULL, 'activo', '2022-03-23 14:43:39', '2022-04-21 03:56:11', '2 10009', 39837.66, '2022-04-19', NULL, 'normal', 'normal', '', NULL, 0, '', 1327.92, 165.99, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 9, NULL, 'Efectivo', 0, 'nao', '', 11, 37, 'no', 'no', '', 1, 1, 0, 11),
(57, 20001, 'Alberto Alexandre Mondlane', NULL, 'masculino', '1982-03-22', 'BI', '110400245431M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:45:21', '2022-04-20 19:02:53', '2 20001', 7300, '2012-05-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 38, 'no', 'no', '', 1, 1, 0, 11),
(58, 20002, 'Aurélio Benjamim Uarela', NULL, 'masculino', '1978-04-08', 'BI', '110302399342I', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:46:51', '2022-04-20 19:02:04', '2 20002', 7300, '2007-08-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 39, 'no', 'no', '', 1, 1, 0, 11),
(59, 20003, 'Daniel Pinto Alei Lamo', NULL, 'masculino', '1991-08-20', 'BI', '040100646690A', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 27, NULL, NULL, 'activo', '2022-03-23 14:47:55', '2022-04-21 03:56:58', '2 20003', 35012.99, NULL, NULL, 'normal', 'normal', '', NULL, 0, NULL, 1167.1, 145.89, 0, '1', '0', 4, 3, NULL, NULL, NULL, 'Solteiro', NULL, '', 0, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 40, 'no', 'no', '', 1, 1, 0, 11),
(60, 20004, 'Geraldo Bila', NULL, 'masculino', '1978-07-27', 'BI', '110405058933S', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:48:23', '2022-04-20 19:00:33', '2 20004', 7300, '2011-07-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 41, 'no', 'no', '', 1, 1, 0, 11),
(61, 20005, 'Gloria Nassone Comé', NULL, 'femenino', '1992-08-26', 'BI', '100101884015N', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:48:49', '2022-04-20 18:59:32', '2 20005', 8314, '2013-05-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 277.13, 34.64, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 42, 'no', 'no', '', 1, 1, 0, 11),
(62, 20006, 'Hélder Pedro Chabela', NULL, 'masculino', '1991-02-12', 'BI', '110202114165M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 28, NULL, NULL, 'activo', '2022-03-23 14:49:12', '2022-04-21 04:38:00', '2 20006', 10036, '2011-05-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 334.53, 41.82, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 43, 'no', 'no', '', 1, 1, 0, 11),
(63, 20007, 'José De Castro Rafael Machava', NULL, 'masculino', '1985-10-17', 'BI', '090204748262S', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:49:37', '2022-04-20 18:58:50', '2 20007', 7300, '2020-12-08', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 44, 'no', 'no', '', 1, 1, 0, 11),
(64, 20008, 'Lewis Domingos Guibunda', NULL, 'masculino', '1985-12-13', 'BI', '110104577024Q', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 27, NULL, NULL, 'activo', '2022-03-23 14:50:12', '2022-04-21 03:57:51', '2 20008', 33344.16, '2020-08-03', NULL, 'normal', 'normal', '', NULL, 0, '', 1111.47, 138.93, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 45, 'no', 'no', '', 1, 1, 0, 11),
(65, 20009, 'Manuel Manuel Costa Reis', NULL, 'masculino', '1976-11-17', 'BI', '100105654370N', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:50:48', '2022-04-20 18:57:34', '2 20009', 7300, '2017-11-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 46, 'no', 'no', '', 1, 1, 0, 11),
(66, 20010, 'Rafael Carlos Tembe', NULL, 'masculino', '1982-12-17', 'BI', '100104620559I', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:51:19', '2022-04-20 18:56:57', '2 20010', 12835, '2012-05-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 427.83, 53.48, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 47, 'no', 'no', '', 1, 1, 0, 11),
(67, 20011, 'Sérgio Fernando Chilaúle ', NULL, 'masculino', '1975-01-02', 'BI', '100102271968J', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 46, NULL, NULL, 'activo', '2022-03-23 14:52:13', '2022-04-21 03:59:10', '2 20011', 39837.66, '2017-07-15', NULL, 'normal', 'normal', '', NULL, 0, '', 1327.92, 165.99, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 48, 'no', 'no', '', 1, 1, 0, 11),
(68, 20012, 'Vicente Dos Santos Muianga', NULL, 'masculino', '1956-09-24', 'BI', '110302488762B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 14:52:57', '2022-04-21 04:19:09', '2 20012', 0, '2007-05-25', NULL, 'normal', 'normal', '', NULL, NULL, '', 0, 0, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 49, 'no', 'no', '', 1, 1, 0, 11),
(69, 20013, 'Zeca Mariamo Manuel Nota', NULL, 'masculino', '1982-03-03', 'BI', '110500767600F', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 52, NULL, NULL, 'activo', '2022-03-23 14:53:21', '2022-04-21 04:00:05', '2 20013', 80052.08, '2021-02-18', NULL, 'normal', 'normal', '', NULL, 0, '', 2668.4, 333.55, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 2, NULL, 'Efectivo', 0, 'nao', '', 11, 50, 'no', 'no', '', 1, 1, 0, 11),
(70, 30001, 'Adérito Sérgio Muchanga', NULL, 'masculino', '1994-02-05', 'BI', '100101088198Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 33, NULL, NULL, 'activo', '2022-03-23 14:56:46', '2022-04-20 18:53:48', '2 30001', 7300, '2020-10-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 51, 'no', 'no', '', 1, 1, 0, 11),
(71, 30002, 'Ednízio Armando', NULL, 'masculino', '1996-03-29', 'BI', '110108891811M', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 33, NULL, NULL, 'activo', '2022-03-23 14:58:22', '2022-04-20 18:52:41', '2 30002', 7300, '2020-10-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 52, 'no', 'no', '', 1, 1, 0, 11),
(72, 30003, 'Eugenio Mardia Virginia Malate', NULL, 'masculino', '1990-09-10', 'BI', '110101105158B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 34, NULL, NULL, 'activo', '2022-03-23 14:59:15', '2022-04-20 18:51:34', '2 30003', 7300, '2021-05-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 53, 'no', 'no', '', 1, 1, 0, 11),
(73, 30004, 'Artur Rui Libombo', NULL, 'masculino', '1995-05-24', 'BI', '100102022060S', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 29, NULL, NULL, 'activo', '2022-03-23 14:59:46', '2022-04-20 18:51:11', '2 30004', 7300, '2021-11-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 0, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 54, 'no', 'no', '', 1, 1, 0, 11),
(74, 30005, 'Celso Luis Da Costa Ginote', NULL, 'masculino', '1987-11-11', 'BI', '100104675232M', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 29, NULL, NULL, 'activo', '2022-03-23 15:00:29', '2022-04-20 18:50:20', '2 30005', 7300, '2021-11-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 0, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 55, 'no', 'no', '', 1, 1, 0, 11),
(75, 30006, 'Claudio Romeu Pelembe', NULL, 'masculino', '1983-11-23', 'BI', '110101747962S', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 29, NULL, NULL, 'activo', '2022-03-23 15:00:48', '2022-04-20 18:49:56', '2 30006', 7300, '2021-11-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 0, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 56, 'no', 'no', '', 1, 1, 0, 11),
(76, 30007, 'João Sebastião Machel', NULL, 'masculino', '1976-02-19', 'BI', '110104266769I', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 35, NULL, NULL, 'activo', '2022-03-23 15:01:07', '2022-04-20 18:49:24', '2 30007', 7300, '2021-05-31', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 57, 'no', 'no', '', 1, 1, 0, 11),
(77, 30008, 'Julio Gerente Racide', NULL, 'masculino', '1987-06-04', 'BI', '110101613361S', NULL, NULL, 'Mocambicana', 'Tete', '', NULL, NULL, NULL, 36, NULL, NULL, 'activo', '2022-03-23 15:01:29', '2022-04-20 18:49:02', '2 30008', 7300, '2021-05-25', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 0, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 58, 'no', 'no', '', 1, 1, 0, 11),
(78, 30009, 'Olímpio Colaço Alfredo', NULL, 'masculino', '1963-10-10', 'BI', '040908867810J', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 37, NULL, NULL, 'activo', '2022-03-23 15:01:56', '2022-04-20 18:48:23', '2 30009', 7300, '2016-06-12', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 59, 'no', 'no', '', 1, 1, 0, 11),
(79, 30010, 'Zenicio Rosario Felix Mutengo', NULL, 'masculino', '1997-05-08', 'BI', '110102387306F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 29, NULL, NULL, 'activo', '2022-03-23 15:02:12', '2022-04-20 18:47:53', '2 30010', 7300, '2021-11-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 6, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 60, 'no', 'no', '', 1, 1, 0, 11),
(80, 30011, 'Orlando Adriano Mathe', NULL, 'masculino', '1983-05-18', 'BI', '110304156502M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 38, NULL, NULL, 'activo', '2022-03-23 15:02:35', '2022-04-20 18:47:29', '2 30011', 9611, '2012-07-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 320.37, 40.05, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 61, 'no', 'no', '', 1, 1, 0, 11),
(81, 30012, 'Orlando Alfredo Chaúque', NULL, NULL, '1991-09-03', 'BI', '110102158298A', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 39, NULL, NULL, 'activo', '2022-03-23 15:03:00', '2022-04-20 19:37:22', '2 30012', 17010, '2014-01-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 567, 70.88, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 62, 'no', 'no', '', 1, 1, 0, 11),
(82, 30013, 'Hélia Tlemo Matine', NULL, 'femenino', '1985-07-15', 'BI', '110104223297A', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 30, NULL, NULL, 'activo', '2022-03-23 15:03:33', '2022-04-20 18:46:16', '2 30013', 7300, '2020-10-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 63, 'no', 'no', '', 1, 1, 0, 11),
(83, 30014, 'Hassane Jamaldine Abdul', NULL, NULL, '1995-10-06', 'BI', '100101028187S', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 31, NULL, NULL, 'activo', '2022-03-23 15:03:55', '2022-04-20 18:45:55', '2 30014', 10309, '2020-07-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 343.63, 42.95, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 64, 'no', 'no', '', 1, 1, 0, 11),
(84, 30015, 'Nélio Damião Macie', NULL, 'masculino', '1992-09-19', 'BI', '110101667302P', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 31, NULL, NULL, 'activo', '2022-03-23 15:04:19', '2022-04-20 18:45:18', '2 30015', 7300, '2020-10-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 65, 'no', 'no', '', 1, 1, 0, 11),
(85, 30016, 'Abdul Razaque Abdul', NULL, 'masculino', '1972-05-19', 'BI', '110100011319I', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 31, NULL, NULL, 'activo', '2022-03-23 15:04:38', '2022-04-20 18:44:57', '2 30016', 10773, '2020-10-16', NULL, 'normal', 'normal', '', NULL, NULL, '', 359.1, 44.89, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 66, 'no', 'no', '', 1, 1, 0, 11),
(86, 30017, 'Augusto Alfredo Box', NULL, 'masculino', '1984-08-25', 'BI', '110101459254M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 40, NULL, NULL, 'activo', '2022-03-23 15:04:54', '2022-04-20 18:44:24', '2 30017', 10309, '2021-09-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 343.63, 42.95, NULL, NULL, NULL, 4, 6, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 67, 'no', 'no', '', 1, 1, 0, 11),
(87, 30018, 'Jorge Fabião Manjate', NULL, 'masculino', '1989-12-11', 'BI', '110101823397B', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 40, NULL, NULL, 'activo', '2022-03-23 15:05:36', '2022-04-20 18:44:05', '2 30018', 10309, '2021-09-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 343.63, 42.95, NULL, NULL, NULL, 4, 6, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 68, 'no', 'no', '', 1, 1, 0, 11),
(88, 30019, 'Stelio Armando Manhique', NULL, 'masculino', '1984-12-25', 'BI', '100105458951P', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 40, NULL, NULL, 'activo', '2022-03-23 15:05:51', '2022-04-20 18:43:40', '2 30019', 10309, '2021-09-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 343.63, 42.95, NULL, NULL, NULL, 4, 6, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 69, 'no', 'no', '', 1, 1, 0, 11),
(89, 30020, 'Ricardo Alberto Mapumula', NULL, 'masculino', '1968-03-03', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 41, NULL, NULL, 'activo', '2022-03-23 15:06:24', '2022-04-20 18:42:46', '2 30020', 7300, '2013-06-05', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 70, 'no', 'no', '', 1, 1, 0, 11),
(90, 30021, 'Vasco Geraldina Uqueio', NULL, 'masculino', '1995-12-31', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 42, NULL, NULL, 'Demitido', '2022-03-23 15:06:43', '2022-04-22 16:52:53', '2 30021', 10773, '2021-08-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 359.1, 44.89, NULL, NULL, NULL, 4, 6, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 71, 'no', 'no', '', 1, 1, 0, 11),
(91, 30022, 'Ziyaad Daud', NULL, 'masculino', '1994-01-14', '', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 15:06:59', '2022-04-21 04:01:09', '2 30022', 32698.17, '2021-10-12', NULL, 'normal', 'normal', '', NULL, 1, '', 1089.94, 136.24, 0, '1', '1', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 3, NULL, 'Efectivo', 0, 'nao', '', 11, 72, 'no', 'no', '', 1, 1, 0, 11),
(92, 10001, 'AMADE  SAHAL', NULL, 'masculino', '1981-03-24', 'BI', '110404898961Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:09:02', '2022-04-21 19:52:43', '1 10001', 17253, '2006-06-27', NULL, 'normal', 'normal', '', NULL, NULL, '', 575.1, 71.89, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 20, NULL, 'Efectivo', 0, 'nao', '', 10, 72, 'no', 'no', '', 1, 1, 0, 10),
(93, 10002, 'ARISTIDES MUANDO ', NULL, NULL, '1980-01-24', 'BI', '', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:09:29', '2022-04-21 17:21:28', '1 10002', 7820, '2008-11-11', NULL, 'normal', 'normal', '', NULL, NULL, '', 260.67, 32.58, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 20, NULL, 'Efectivo', 0, 'nao', '', 10, 73, 'no', 'no', '', 1, 1, 0, 10),
(94, 10003, 'CÂNDIDO MACUIANE', NULL, 'masculino', '1976-11-11', 'BI', '110404898962F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 53, NULL, NULL, 'activo', '2022-03-23 15:10:09', '2022-04-21 20:07:11', '1 10003', 15707, '2004-04-08', NULL, 'normal', 'normal', '', NULL, NULL, '', 523.57, 65.45, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 20, NULL, 'Efectivo', 0, 'nao', '', 10, 74, 'no', 'no', '', 1, 1, 0, 10),
(95, 10004, 'EMĺDEO  MANJATE', NULL, 'masculino', '1984-04-23', 'BI', '110304685692S', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:10:43', '2022-04-22 13:15:22', '1 10004', 7300, '2006-03-02', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 20, NULL, 'Efectivo', 0, 'nao', '', 10, 75, 'no', 'no', '', 1, 1, 0, 10),
(96, 10005, 'HÉLDER BANZE', NULL, 'masculino', '1981-04-10', 'BI', '110200833326C', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:11:04', '2022-04-22 15:36:55', '1 10005', 7300, '2012-08-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 20, NULL, 'Efectivo', 0, 'nao', '', 10, 76, 'no', 'no', '', 1, 1, 0, 10),
(97, 10006, 'SALOMÃO DINIS LANGA', NULL, 'masculino', '1978-10-24', 'BI', '110101367118A', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:11:20', '2022-04-22 16:46:36', '1 10006', 7820, '2009-08-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 260.67, 32.58, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 20, NULL, 'Efectivo', 0, 'nao', '', 10, 77, 'no', 'no', '', 1, 1, 0, 10),
(98, 12001, 'CORNÉLIO NHACALE', NULL, 'masculino', '1964-04-07', 'BI', '110100894352', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:11:47', '2022-04-21 20:02:45', '1 12001', 7300, '2014-08-03', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 19, NULL, 'Efectivo', 0, 'nao', '', 10, 78, 'no', 'no', '', 1, 1, 0, 10),
(99, 12002, 'GABRIEL QUECHENE', NULL, 'masculino', '1990-04-08', 'BI', '110301826746P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:12:41', '2022-04-22 15:48:52', '1 12002', 7300, '2017-11-29', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 19, NULL, 'Efectivo', 0, 'nao', '', 10, 79, 'no', 'no', '', 1, 1, 0, 10),
(100, 13001, 'HERMĺNIO MUINHE', NULL, 'masculino', '1982-04-30', '', '110105528751M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 54, NULL, NULL, 'activo', '2022-03-23 15:13:35', '2022-04-22 15:04:31', '1 13001', 9376, '2009-06-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 312.53, 39.07, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 18, NULL, 'Efectivo', 0, 'nao', '', 10, 80, 'no', 'no', '', 1, 1, 0, 10),
(101, 13002, 'FINAI  MATOLA', NULL, 'masculino', '1976-03-21', 'BI', '110100126610Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 55, NULL, NULL, 'activo', '2022-03-23 15:14:52', '2022-04-22 14:02:13', '1 13002', 11373, '2019-02-13', NULL, 'normal', 'normal', '', NULL, NULL, '', 379.1, 47.39, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 18, NULL, 'Efectivo', 0, 'nao', '', 10, 81, 'no', 'no', '', 1, 1, 0, 10),
(102, 13003, 'TOMÁS MULUNGO', NULL, 'masculino', '1958-02-15', 'BI', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 55, NULL, NULL, 'activo', '2022-03-23 15:15:17', '2022-04-22 16:42:59', '1 13003', 9694, '2013-04-01', NULL, 'insecto', 'normal', '', NULL, 0, '', 323.13, 40.39, 0, '1', '', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 18, NULL, 'Efectivo', 0, 'nao', '', 10, 82, 'no', 'no', '', 1, 1, 0, 10),
(103, 14001, 'ERNESTO  MACHOE', NULL, 'masculino', '1963-04-04', 'BI', '110400238327P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:15:41', '2022-04-22 13:31:53', '1 14001', 7300, '2014-03-04', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 17, NULL, 'Efectivo', 0, 'nao', '', 10, 83, 'no', 'no', '', 1, 1, 0, 10),
(104, 14002, 'JOSÉ  BATA', NULL, 'masculino', '1966-04-18', 'BI', '110102275322M', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 52, NULL, NULL, 'activo', '2022-03-23 15:16:26', '2022-04-22 16:34:19', '1 14002', 27210.37, '2022-04-22', NULL, 'normal', 'normal', '', NULL, 0, '', 907.01, 113.38, 0, '1', '0', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 17, NULL, 'Efectivo', 0, 'nao', '', 10, 84, 'no', 'no', '', 1, 1, 0, 10),
(105, 14003, 'JOSSIAS  SITOE', NULL, 'masculino', '1963-09-25', 'BI', '110400204572B', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:17:00', '2022-04-22 16:30:14', '1 14003', 8525, '2013-03-26', NULL, 'normal', 'normal', '', NULL, NULL, '', 284.17, 35.52, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 17, NULL, 'Efectivo', 0, 'nao', '', 10, 85, 'no', 'no', '', 1, 1, 0, 10),
(106, 14004, 'NONITO  JASTENE', NULL, 'masculino', '1993-01-15', 'BI', '110100198456M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:17:20', '2022-04-22 17:12:32', '1 14004', 7300, '2013-10-23', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 17, NULL, 'Efectivo', 0, 'nao', '', 10, 86, 'no', 'no', '', 1, 1, 0, 10),
(107, 14005, 'REGINALDO  LANGA', NULL, 'masculino', '1989-01-15', 'BI', '110100129045P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:17:36', '2022-04-22 16:59:41', '1 14005', 9376, '2012-06-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 312.53, 39.07, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 17, NULL, 'Efectivo', 0, 'nao', '', 10, 87, 'no', 'no', '', 1, 1, 0, 10),
(108, 15001, 'ALFEU  NHATSOMBA', NULL, 'masculino', '1980-11-29', 'BI', '110501283146M', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:18:20', '2022-04-21 17:33:22', '1 15001', 7300, '2014-07-05', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 88, 'no', 'no', '', 1, 1, 0, 10),
(109, 15002, 'AMARILDO CASTIGO MULA', NULL, 'masculino', '1988-02-09', 'BI', '110501328802Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:19:05', '2022-04-21 19:56:46', '1 15002', 7300, '2020-06-18', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 89, 'no', 'no', '', 1, 1, 0, 10),
(110, 15003, 'ARTUR  AUZO', NULL, 'masculino', '1962-02-03', 'BI', '110200244847J', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:28:45', '2022-04-21 17:34:13', '1 15003', 7820, '2007-10-05', NULL, 'normal', 'normal', '', NULL, NULL, '', 260.67, 32.58, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 90, 'no', 'no', '', 1, 1, 0, 10),
(111, 15004, 'CARLOS AMISSE ', NULL, 'masculino', '1979-04-14', 'BI', '11020451228P', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:29:07', '2022-04-21 20:04:49', '1 15004', 7300, '2012-07-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 91, 'no', 'no', '', 1, 1, 0, 10),
(112, 15005, 'GILBERTO  CHISSICO', NULL, 'masculino', '1980-10-07', 'BI', '100101046137N', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 27, NULL, NULL, 'activo', '2022-03-23 15:29:28', '2022-04-22 15:43:30', '1 15005', 11177, '2018-08-13', NULL, 'normal', 'normal', '', NULL, NULL, '', 372.57, 46.57, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 92, 'no', 'no', '', 1, 1, 0, 10),
(113, 15006, 'HÉLIO LANGA', NULL, 'masculino', '1986-10-11', 'BI', '', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:29:47', '2022-04-22 14:48:35', '1 15006', 7300, '2010-02-02', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 93, 'no', 'no', '', 1, 1, 0, 10),
(114, 15007, 'HENRIQUE NHALEVILO', NULL, 'masculino', '1984-02-10', 'BI', '110500701461P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:30:01', '2022-04-22 15:33:51', '1 15007', 11180, '2018-06-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 372.67, 46.58, NULL, NULL, NULL, 4, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 94, 'no', 'no', '', 1, 1, 0, 10),
(115, 15008, 'JERÓNIMO  SITOE', NULL, 'masculino', '1977-02-22', 'BI', '110304390740Q', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:30:16', '2022-04-22 16:25:44', '1 15008', 11220, '2011-07-11', NULL, 'normal', 'normal', '', NULL, NULL, '', 374, 46.75, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 95, 'no', 'no', '', 1, 1, 0, 10),
(116, 15009, 'JOSÉ ENOQUE HOWANA', NULL, 'masculino', '1985-01-01', 'BI', '100102145040I', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:30:31', '2022-04-22 16:36:28', '1 15009', 9521, '2008-03-11', NULL, 'normal', 'normal', '', NULL, NULL, '', 317.37, 39.67, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 96, 'no', 'no', '', 1, 1, 0, 10),
(117, 15010, 'NASCIMENTO TIMBA', NULL, 'masculino', '1973-08-23', 'BI', '', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:30:48', '2022-04-22 17:14:33', '1 15010', 11428, '2009-08-13', NULL, 'normal', 'normal', '', NULL, NULL, '', 380.93, 47.62, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 97, 'no', 'no', '', 1, 1, 0, 10),
(118, 15011, 'PLÁCIDO DA CONCEIÇÃO', NULL, 'masculino', '1984-08-06', 'BI', '110101695420N', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:31:11', '2022-04-22 17:10:08', '1 15011', 12098, '2011-03-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 403.27, 50.41, NULL, NULL, NULL, 5, 1, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 98, 'no', 'no', '', 1, 1, 0, 10),
(119, 15012, 'SÉRGIO SITOE', NULL, 'masculino', '1973-04-23', 'BI', '110202329073B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:31:25', '2022-04-22 16:48:36', '1 15012', 7300, '2017-08-11', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 99, 'no', 'no', '', 1, 1, 0, 10),
(120, 15013, 'YOLANDO MAVIRA', NULL, 'masculino', '1988-01-21', 'BI', '110501679262F', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 26, NULL, NULL, 'activo', '2022-03-23 15:31:37', '2022-04-22 16:44:46', '1 15013', 9742, '2019-09-10', NULL, 'normal', 'normal', '', NULL, NULL, '', 324.73, 40.59, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 100, 'no', 'no', '', 1, 1, 0, 10),
(121, 16001, 'BENTO  NZUCULE', NULL, 'masculino', '1977-04-06', 'BI', '110304221354I', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 33, NULL, NULL, 'activo', '2022-03-23 15:32:04', '2022-04-21 20:00:42', '1 16001', 13402, '2013-06-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 446.73, 55.84, NULL, NULL, NULL, 4, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 15, NULL, 'Efectivo', 0, 'nao', '', 10, 101, 'no', 'no', '', 1, 1, 0, 10),
(122, 16002, 'DAVID CHINGUVO', NULL, 'masculino', '1996-08-05', 'BI', '110102049012M', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 21, NULL, NULL, 'activo', '2022-03-23 15:33:09', '2022-04-21 20:15:23', '1 16002', 7300, '2018-07-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 15, NULL, 'Efectivo', 0, 'nao', '', 10, 102, 'no', 'no', '', 1, 1, 0, 10),
(123, 16003, 'MUHAMMAD  IBRAHIM', NULL, 'masculino', '1971-12-10', 'DIRE', '11PK00033434C', NULL, NULL, 'Estrangeira ', '', '', NULL, NULL, NULL, 56, NULL, NULL, 'activo', '2022-03-23 15:33:48', '2022-04-22 15:59:43', '1 16003', 92842.36, '2012-01-03', NULL, 'normal', 'normal', '', NULL, 0, '', 3094.75, 386.84, 0, '1', '0', 4, 24, 0, '', NULL, 'Solteiro', NULL, '', 0, 15, NULL, 'Efectivo', 0, 'nao', '', 10, 103, 'no', 'no', '', 1, 1, 0, 10),
(124, 16004, 'RUBDINO ARMANDO', NULL, 'masculino', '1999-01-19', 'BI', '100107849685M', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 33, NULL, NULL, 'activo', '2022-03-23 15:34:08', '2022-04-22 17:02:56', '1 16004', 7300, '2019-03-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 15, NULL, 'Efectivo', 0, 'nao', '', 10, 104, 'no', 'no', '', 1, 1, 0, 10),
(125, 16005, 'ZEFERINO MARCOS', NULL, 'masculino', '1995-09-13', 'BI', '110100996087F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 33, NULL, NULL, 'activo', '2022-03-23 15:34:26', '2022-04-22 16:41:23', '1 16005', 7300, '2019-03-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 15, NULL, 'Efectivo', 0, 'nao', '', 10, 105, 'no', 'no', '', 1, 1, 0, 10),
(126, 17001, 'ALFREDO EMÍLIO', NULL, 'masculino', '1982-08-10', 'BI', '100106084949J', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:37:31', '2022-04-22 14:39:37', '1 17001', 7300, '2017-11-17', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 106, 'no', 'no', '', 1, 1, 0, 10),
(127, 17002, 'ALBERTO RODRIGUES JAMAL', NULL, NULL, '1978-04-12', 'BI', '040905913451D', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 58, NULL, NULL, 'activo', '2022-03-23 15:38:35', '2022-04-22 15:40:48', '1 17002', 7300, '2021-07-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 107, 'no', 'no', '', 1, 1, 0, 10),
(128, 17003, 'ANTÓNIO DANIEL NANDJA', NULL, 'masculino', '1943-02-06', 'BI', '100506007841F', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:38:52', '2022-04-22 14:42:41', '1 17003', 7300, '2014-04-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 108, 'no', 'no', '', 1, 1, 0, 10),
(129, 17004, 'ARMINDO MABJAIA', NULL, 'masculino', '1947-03-15', 'BI', '100507443766B', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:39:08', '2022-04-22 14:48:06', '1 17004', 7300, '2014-04-20', NULL, 'insecto', 'normal', '', NULL, 0, '', 243.33, 30.42, 0, '1', '', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 109, 'no', 'no', '', 1, 1, 0, 10);
INSERT INTO `funcionarios` (`id`, `internal_id`, `nome`, `apelido`, `genero`, `data_nacimento`, `tipo_documento`, `nr_documento`, `local_de_emissao`, `nome_do_arquivo`, `nacionalidade`, `naturalidade`, `contacto`, `contacto_alternativo`, `distrito`, `categoria`, `categoria_id`, `grau_academico`, `fotografia`, `estado`, `created_at`, `updated_at`, `codigo_interno`, `salario_base`, `data_admissao`, `nuit`, `inss`, `irps`, `nr_conta`, `nome_banco`, `nr_dependentes`, `observacoes`, `vencimento_dia`, `vencimento_hora`, `sindicato`, `local_referencia`, `referencia_irps`, `tipo_contrato_id`, `duracao`, `nr_renovacoes`, `motivo_entrada`, `nr_inss`, `estado_civil`, `morada`, `nr_socio`, `cota`, `sector_id`, `grupo_id`, `tipo_funcionario`, `id_banco`, `pag_via_banco`, `nib`, `empresa_id`, `codigo`, `cal_hora`, `pensionista`, `tipo_trabalho`, `moedas_base`, `moeda_base`, `descontos_percentual`, `empresa`) VALUES
(130, 17005, 'ARMINDO  WAGITE', NULL, 'masculino', '1976-06-25', 'BI', '110302740792Q', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 58, NULL, NULL, 'activo', '2022-03-23 15:39:31', '2022-04-22 14:45:06', '1 17005', 7300, '2018-08-20', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 110, 'no', 'no', '', 1, 1, 0, 10),
(131, 17006, 'AUDÉNCIO  MAFUNGA', NULL, 'masculino', '1988-12-30', 'BI', '070104623420B', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 41, NULL, NULL, 'activo', '2022-03-23 15:39:58', '2022-04-22 13:30:41', '1 17006', 7300, '2017-01-17', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 111, 'no', 'no', '', 1, 1, 0, 10),
(132, 17007, 'BENJAMIM RENO', NULL, 'masculino', '1991-03-08', 'BI', '110105965861J', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 35, NULL, NULL, 'activo', '2022-03-23 15:40:43', '2022-04-22 13:29:56', '1 17007', 7300, '2018-05-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 112, 'no', 'no', '', 1, 1, 0, 10),
(133, 17008, 'BENTO AMERICO ZAVALE', NULL, 'masculino', '1995-08-12', 'BI', '090104782406B', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 59, NULL, NULL, 'activo', '2022-03-23 15:41:12', '2022-04-22 15:06:14', '1 17008', 7300, '2021-07-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 113, 'no', 'no', '', 1, 1, 0, 10),
(134, 17009, 'BONE WAGITE', NULL, 'masculino', '1986-06-26', 'BI', '110104984388J', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 36, NULL, NULL, 'activo', '2022-03-23 15:41:33', '2022-04-22 13:30:19', '1 17009', 7300, '2019-01-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 114, 'no', 'no', '', 1, 1, 0, 10),
(135, 17010, 'FRANCISCO  MATOLA', NULL, 'masculino', '1960-01-03', 'BI', '100101028477A', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 60, NULL, NULL, 'activo', '2022-03-23 15:43:10', '2022-04-22 14:35:15', '1 17010', 7300, '2017-11-28', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 115, 'no', 'no', '', 1, 1, 0, 10),
(136, 17011, 'GUIDO JOAQUIM ANTONIO MURRUMBIRRA', NULL, NULL, '1997-03-05', 'Cedula', '3748095', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 58, NULL, NULL, 'activo', '2022-03-23 15:43:26', '2022-04-22 15:03:29', '1 17011', 7300, '2021-07-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 116, 'no', 'no', '', 1, 1, 0, 10),
(137, 17012, 'GUSTAVO  CUAMBE', NULL, 'masculino', '1960-08-01', 'BI', '100106085402I', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 61, NULL, NULL, 'activo', '2022-03-23 15:44:09', '2022-04-22 14:31:08', '1 17012', 7300, '2018-05-03', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 117, 'no', 'no', '', 1, 1, 0, 10),
(138, 17013, 'JOSE  FUMO', NULL, NULL, '1968-04-05', 'BI', '110100832369N', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 61, NULL, NULL, 'activo', '2022-03-23 15:44:30', '2022-04-22 14:52:29', '1 17013', 7300, '2021-05-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 118, 'no', 'no', '', 1, 1, 0, 10),
(139, 17014, 'JOSÉ  SITOLE', NULL, 'masculino', '1992-09-01', 'BI', '110502637737S', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:44:46', '2022-04-22 13:32:28', '1 17014', 7300, '2018-11-13', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 119, 'no', 'no', '', 1, 1, 0, 10),
(140, 17015, 'JORGE BENZANE', NULL, 'masculino', '1993-06-09', 'BI', '090106284360F', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:45:09', '2022-04-22 13:45:15', '1 17015', 7300, '2018-03-18', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 120, 'no', 'no', '', 1, 1, 0, 10),
(141, 17016, 'JORGE  MABOTE', NULL, 'masculino', '1968-11-26', 'BI', '110504883865M', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:45:30', '2022-04-22 13:47:46', '1 17016', 7300, '2014-07-04', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 121, 'no', 'no', '', 1, 1, 0, 10),
(142, 17017, 'JOSÉ MALUANA', NULL, 'masculino', '1971-08-16', 'BI', '110505477503Q', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:46:05', '2022-04-22 13:42:25', '1 17017', 7300, '2020-03-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 122, 'no', 'no', '', 1, 1, 0, 10),
(143, 17018, 'JULIÃO  FUNJUA', NULL, 'masculino', '1937-04-08', 'BI', '110102423626C', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 60, NULL, NULL, 'activo', '2022-03-23 15:46:47', '2022-04-22 13:35:30', '1 17018', 7300, '2018-01-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 123, 'no', 'no', '', 1, 1, 0, 10),
(144, 17019, 'JUSTINO JOAQUIM ', NULL, 'masculino', '1958-10-23', 'BI', '100705449838S', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 60, NULL, NULL, 'activo', '2022-03-23 15:47:04', '2022-04-22 13:37:34', '1 17019', 7300, '2017-12-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 124, 'no', 'no', '', 1, 1, 0, 10),
(145, 17020, 'LUIS  NHAMAZANE', NULL, 'masculino', '1974-06-10', 'BI', '100506723074F', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:47:25', '2022-04-22 13:50:05', '1 17020', 7300, '2018-10-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 125, 'no', 'no', '', 1, 1, 0, 10),
(146, 17021, 'MAGALHÃES  PAULINO', NULL, 'masculino', '1964-09-21', 'BI', '110304084345Q', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 62, NULL, NULL, 'activo', '2022-03-23 15:47:59', '2022-04-22 14:26:01', '1 17021', 7300, '2016-05-19', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 126, 'no', 'no', '', 1, 1, 0, 10),
(147, 17022, 'MARCELINO REMANE', NULL, 'masculino', '1984-06-29', 'BI', '110105942295D', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 41, NULL, NULL, 'activo', '2022-03-23 15:48:19', '2022-04-22 14:23:00', '1 17022', 7300, '2017-10-16', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 127, 'no', 'no', '', 1, 1, 0, 10),
(148, 17023, 'MÁRIO DAMIÃO ', NULL, NULL, '1984-04-04', 'BI', '110100893601C', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 36, NULL, NULL, 'activo', '2022-03-23 15:48:38', '2022-04-22 14:29:16', '1 17023', 7300, '2013-06-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 128, 'no', 'no', '', 1, 1, 0, 10),
(149, 17024, 'MATEUS FRANCISCO MATOLA', NULL, NULL, '1987-09-28', 'BI', '100101084880N', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 63, NULL, NULL, 'activo', '2022-03-23 15:49:14', '2022-04-22 15:08:11', '1 17024', 7300, '2021-05-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 129, 'no', 'no', '', 1, 1, 0, 10),
(150, 17025, 'NOVALDO   ISAC', NULL, 'masculino', '1990-12-03', 'BI', '110304156513M', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 63, NULL, NULL, 'activo', '2022-03-23 15:49:32', '2022-04-22 14:12:11', '1 17025', 7300, '2022-04-22', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 130, 'no', 'no', '', 1, 1, 0, 10),
(151, 17026, 'OZIAS JUSTINO LANGA', NULL, 'masculino', '1975-04-24', 'BI', '100101145301I', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 60, NULL, NULL, 'activo', '2022-03-23 15:49:47', '2022-04-22 15:34:17', '1 17026', 7300, '2020-10-03', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 131, 'no', 'no', '', 1, 1, 0, 10),
(152, 17027, 'PAULO FUMO', NULL, 'masculino', '1968-06-15', 'BI', '100701464099N', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 60, NULL, NULL, 'activo', '2022-03-23 15:50:03', '2022-04-22 14:19:15', '1 17027', 7300, '2017-11-28', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 132, 'no', 'no', '', 1, 1, 0, 10),
(153, 17028, 'PAULO JULIO CUBASSA', NULL, NULL, '2022-04-22', 'BI', '', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 57, NULL, NULL, 'activo', '2022-03-23 15:50:20', '2022-04-22 14:14:33', '1 17028', 7300, '2020-03-18', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 133, 'no', 'no', '', 1, 1, 0, 10),
(154, 17029, 'ROSÁRIO MUTENGO', NULL, 'masculino', '1972-11-30', 'BI', '110300121200N', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 36, NULL, NULL, 'activo', '2022-03-23 15:50:39', '2022-04-22 13:52:33', '1 17029', 7300, '2019-01-16', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 134, 'no', 'no', '', 1, 1, 0, 10),
(155, 17030, 'RUI  MACIE', NULL, 'masculino', '1960-02-06', 'BI', '1102026965069I', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 41, NULL, NULL, 'activo', '2022-03-23 15:50:57', '2022-04-22 14:02:32', '1 17030', 7300, '2015-06-04', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 135, 'no', 'no', '', 1, 1, 0, 10),
(156, 17031, 'SILVESTRE CONSTANTINO COSSA', NULL, NULL, '1966-01-10', 'BI', '100106085292F', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 58, NULL, NULL, 'activo', '2022-03-23 15:51:13', '2022-04-22 15:37:50', '1 17031', 7300, '2021-05-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 136, 'no', 'no', '', 1, 1, 0, 10),
(157, 17032, 'SOARES GONÇALVES', NULL, 'masculino', '1983-03-30', 'BI', '110104985517A', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 63, NULL, NULL, 'activo', '2022-03-23 15:51:37', '2022-04-22 14:06:06', '1 17032', 7300, '2022-04-22', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 137, 'no', 'no', '', 1, 1, 0, 10),
(158, 17033, 'TITOS ANTONIO', NULL, 'masculino', '1987-05-01', 'BI', '110304436460I', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 62, NULL, NULL, 'activo', '2022-03-23 15:51:54', '2022-04-22 14:08:49', '1 17033', 7300, '2015-04-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 146, NULL, 'Efectivo', 0, 'nao', '', 10, 138, 'no', 'no', '', 1, 1, 0, 10),
(159, 18001, 'ADEEL DAUD', NULL, 'masculino', '1993-06-27', 'BI', '110100477826Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 64, NULL, NULL, 'activo', '2022-03-23 15:54:24', '2022-04-21 19:46:36', '1 18001', 12835, '2020-02-04', NULL, 'normal', 'normal', '', NULL, NULL, '', 427.83, 53.48, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 139, 'no', 'no', '', 1, 1, 0, 10),
(160, 18002, 'AIMAN ISTIAK ISMAIL', NULL, 'masculino', '1993-07-15', 'BI', '1101008517108', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 64, NULL, NULL, 'activo', '2022-03-23 15:55:51', '2022-04-21 19:41:51', '1 18002', 26661.59, '2019-05-02', NULL, 'normal', 'normal', '', NULL, 0, '', 888.72, 111.09, 0, '1', '0', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 140, 'no', 'no', '', 1, 1, 0, 10),
(161, 18003, 'ARÃO MACUACUA', NULL, 'masculino', '1987-01-26', 'BI', '110100098489F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 15:57:18', '2022-04-21 21:31:12', '1 18003', 16495, '2014-05-24', NULL, 'normal', 'normal', '', NULL, NULL, '', 549.83, 68.73, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 141, 'no', 'no', '', 1, 1, 0, 10),
(162, 18004, 'ALBERTO ZUCANE MUIANGA', NULL, 'masculino', '1990-12-03', 'BI', '', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 69, NULL, NULL, 'activo', '2022-03-23 15:58:00', '2022-04-21 20:07:38', '1 18004', 9227, '2020-01-28', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 142, 'no', 'no', '', 1, 1, 0, 10),
(163, 18005, 'CRIMILDO LUIS SIMONE', NULL, 'masculino', '1988-03-06', 'BI', '110200350116S', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 40, NULL, NULL, 'activo', '2022-03-23 15:59:23', '2022-04-21 21:32:15', '1 18005', 9227, '2020-03-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 143, 'no', 'no', '', 1, 1, 0, 10),
(164, 18006, 'ÉLCIO DOS SANTOS EUSÉBIO', NULL, 'masculino', '1991-10-04', 'BI', '100102413940C', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 66, NULL, NULL, 'activo', '2022-03-23 15:59:55', '2022-04-21 19:57:07', '1 18006', 9610, '2019-04-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 320.33, 40.04, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 144, 'no', 'no', '', 1, 1, 0, 10),
(165, 18007, 'ERCÍLIO GUIRRUNGO', NULL, 'masculino', '1984-01-31', 'BI', '110100556669F', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:00:11', '2022-04-21 21:47:01', '1 18007', 9227, '2015-03-02', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 145, 'no', 'no', '', 1, 1, 0, 10),
(166, 18008, 'EURICO MAGOMBE', NULL, 'masculino', '1967-11-17', 'BI', '1101011474619C', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 67, NULL, NULL, 'activo', '2022-03-23 16:00:25', '2022-04-21 21:45:59', '1 18008', 9227, '2017-12-22', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 146, 'no', 'no', '', 1, 1, 0, 10),
(167, 18009, 'ENOQUE JOÃO MATAVELE', NULL, 'masculino', '1980-02-14', 'BI', '110300433495I', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:00:45', '2022-04-21 20:22:44', '1 18009', 10342, '2018-10-29', NULL, 'normal', 'normal', '', NULL, NULL, '', 344.73, 43.09, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 147, 'no', 'no', '', 1, 1, 0, 10),
(168, 18010, 'FABIÃO ANTÓNIO CHAÚQUE', NULL, 'masculino', '1968-08-24', 'BI', '100100226161B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:01:03', '2022-04-21 20:44:17', '1 18010', 9227, '2019-03-26', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 148, 'no', 'no', '', 1, 1, 0, 10),
(169, 18011, 'FERNANDO ARAÚJO', NULL, 'masculino', '1969-01-10', 'BI', '110101198875N', NULL, NULL, 'Mocambicana', 'Nampula', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:01:18', '2022-04-21 21:49:27', '1 18011', 9227, '2017-09-14', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 149, 'no', 'no', '', 1, 1, 0, 10),
(170, 18012, 'FRANCISCO MANJATE ', NULL, 'masculino', '1982-09-09', 'BI', '110105197909M', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 68, NULL, NULL, 'activo', '2022-03-23 16:01:33', '2022-04-21 21:51:54', '1 18012', 8196, '2017-11-15', NULL, 'normal', 'normal', '', NULL, NULL, '', 273.2, 34.15, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 150, 'no', 'no', '', 1, 1, 0, 10),
(171, 18013, 'HERMÍNIO ZAVALA', NULL, 'masculino', '1982-07-07', 'BI', '100105987655F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 70, NULL, NULL, 'activo', '2022-03-23 16:02:09', '2022-04-21 21:52:59', '1 18013', 27920.12, '2018-08-06', NULL, 'normal', 'normal', '', NULL, 0, '', 930.67, 116.33, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 151, 'no', 'no', '', 1, 1, 0, 10),
(172, 18014, 'JULIÃO MOISÉS MANOCA', NULL, 'masculino', '1989-09-26', 'BI', '100201392162F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 40, NULL, NULL, 'activo', '2022-03-23 16:02:26', '2022-04-21 20:17:06', '1 18014', 10309, '2021-11-25', NULL, 'normal', 'normal', '', NULL, NULL, '', 343.63, 42.95, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 152, 'no', 'no', '', 1, 1, 0, 10),
(173, 18015, 'LUCRÉCIO SITOE', NULL, 'masculino', '1976-04-26', 'BI', '100104164462P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 71, NULL, NULL, 'activo', '2022-03-23 16:02:55', '2022-04-21 20:54:58', '1 18015', 8196, '2018-04-16', NULL, 'normal', 'normal', '', NULL, NULL, '', 273.2, 34.15, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 153, 'no', 'no', '', 1, 1, 0, 10),
(174, 18016, 'LUCILIO  CALENE CHIRINDZA', NULL, 'masculino', '1992-04-20', 'BI', '110500700322J', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 72, NULL, NULL, 'activo', '2022-03-23 16:03:26', '2022-04-21 20:59:54', '1 18016', 10309, '2020-01-07', NULL, 'normal', 'normal', '', NULL, NULL, '', 343.63, 42.95, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 154, 'no', 'no', '', 1, 1, 0, 10),
(175, 18017, 'NORBERTO DA AIDA CUMBANA', NULL, 'masculino', '1993-03-20', 'BI', '080100462539B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 38, NULL, NULL, 'activo', '2022-03-23 16:03:42', '2022-04-21 20:19:37', '1 18017', 12835, '2021-06-28', NULL, 'normal', 'normal', '', NULL, NULL, '', 427.83, 53.48, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 155, 'no', 'no', '', 1, 1, 0, 10),
(176, 18018, 'RUI RICARDO', NULL, 'masculino', '1976-12-25', 'BI', '110101966268Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 73, NULL, NULL, 'activo', '2022-03-23 16:04:18', '2022-04-22 16:57:43', '1 18018', 39837.66, '2006-06-02', NULL, 'normal', 'normal', '', NULL, 0, '', 1327.92, 165.99, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 156, 'no', 'no', '', 1, 1, 0, 10),
(177, 18019, 'SAMUEL MABJAIA', NULL, 'masculino', '1968-11-17', 'BI', '110200397194M', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:04:38', '2022-04-21 21:55:58', '1 18019', 9227, '2017-07-13', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 157, 'no', 'no', '', 1, 1, 0, 10),
(178, 18020, 'SAMUEL MASSALELE', NULL, 'masculino', '1975-09-24', 'BI', '110200628980S', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:05:01', '2022-04-21 21:26:35', '1 18020', 9227, '2018-05-03', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 158, 'no', 'no', '', 1, 1, 0, 10),
(179, 18021, 'SILVESTE  BILA', NULL, 'masculino', '1978-12-22', 'BI', '100102792790I', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 65, NULL, NULL, 'activo', '2022-03-23 16:05:16', '2022-04-22 15:57:22', '1 18021', 9227, '2017-11-08', NULL, 'normal', 'normal', '', NULL, NULL, '', 307.57, 38.45, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 159, 'no', 'no', '', 1, 1, 0, 10),
(180, 18022, 'ZACARIAS MONJANE', NULL, 'masculino', '1982-11-29', 'BI', '110102295854C', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 66, NULL, NULL, 'activo', '2022-03-23 16:05:33', '2022-04-21 20:12:55', '1 18022', 13264, '2008-02-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 442.13, 55.27, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 10, 160, 'no', 'no', '', 1, 1, 0, 10),
(181, 20001, 'GILÚ  NEMANE', NULL, 'masculino', '1973-01-05', 'BI', '110100206372Q', NULL, NULL, 'Mocambicana', 'Inhambane', '', NULL, NULL, NULL, 74, NULL, NULL, 'activo', '2022-03-23 16:06:16', '2022-04-22 15:46:41', '1 20001', 73107.64, '2011-01-02', NULL, 'normal', 'normal', '', NULL, 0, '', 2436.92, 304.62, 0, '1', '0', 5, 1, 0, '', NULL, 'Solteiro', NULL, '', 0, 1, NULL, 'Efectivo', 0, 'nao', '', 10, 161, 'no', 'no', '', 1, 1, 0, 10),
(182, 20002, 'MUHAMMAD FAIZAN YOUNUS', NULL, 'masculino', '1992-11-14', 'DIRE', '11CA00108104B', NULL, NULL, 'Estrangeira ', '', '', NULL, NULL, NULL, 32, NULL, NULL, 'activo', '2022-03-23 16:06:56', '2022-04-22 16:02:46', '1 20002', 90538.19, '2019-02-07', NULL, 'normal', 'normal', '', NULL, 0, '', 3017.94, 377.24, 0, '1', '0', 4, 24, 0, '', NULL, 'Solteiro', NULL, '', 0, 1, NULL, 'Efectivo', 0, 'nao', '', 10, 162, 'no', 'no', '', 1, 1, 0, 10),
(183, 10001, 'MUNIR SACOOR', NULL, 'masculino', '1971-04-20', 'BI', '030100343946N', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 75, NULL, NULL, 'activo', '2022-03-23 16:07:31', '2022-04-22 16:12:53', '1 10001', 62068.75, '2002-01-13', NULL, 'normal', 'normal', '', NULL, 2, '', 2068.96, 258.62, 0, '1', '2', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 13, NULL, 'Efectivo', 0, 'nao', '', 10, 163, 'no', 'no', '', 1, 1, 0, 10),
(184, 10002, 'PANCAJE  JEENTILAL', NULL, 'masculino', '1967-10-31', 'BI', '110300047242C', NULL, NULL, 'Mocambicana', 'Nampula', '', NULL, NULL, NULL, 43, NULL, NULL, 'activo', '2022-03-23 16:08:37', '2022-04-22 17:05:57', '1 10002', 128559.03, '2015-01-01', NULL, 'normal', 'normal', '', NULL, 2, '', 4285.3, 535.66, 0, '1', '2', 5, 1, 0, '', NULL, 'Solteiro', NULL, '', 0, 13, NULL, 'Efectivo', 0, 'nao', '', 10, 164, 'no', 'no', '', 1, 1, 0, 10),
(185, 30001, 'DANYA FREITAS', NULL, 'femenino', '1997-01-28', 'BI', '110104930901B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 76, NULL, NULL, 'activo', '2022-03-23 16:09:17', '2022-04-21 20:19:25', '1 30001', 27149.39, '2018-02-05', NULL, 'normal', 'normal', '', NULL, 1, '', 904.98, 113.12, 0, '1', '1', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 12, NULL, 'Efectivo', 0, 'nao', '', 10, 165, 'no', 'no', '', 1, 1, 0, 10),
(186, 40001, 'ALEXANDRE SAIA', NULL, 'masculino', '1978-11-04', 'BI', '110300314419B', NULL, NULL, 'Mocambicana', 'Gaza', '', NULL, NULL, NULL, 77, NULL, NULL, 'activo', '2022-03-23 16:10:23', '2022-04-21 19:43:24', '1 40001', 33344.16, '2018-07-02', NULL, 'normal', 'normal', '', NULL, 0, '', 1111.47, 138.93, 0, '1', '0', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 11, NULL, 'Efectivo', 0, 'nao', '', 10, 166, 'no', 'no', '', 1, 1, 0, 10),
(187, 50001, 'FÁTIMA BIBI KARIM', NULL, 'femenino', '1997-01-13', 'BI', '110100099907N', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 47, NULL, NULL, 'activo', '2022-03-23 16:11:23', '2022-04-22 14:25:58', '1 50001', 27920.12, '2018-12-06', NULL, 'normal', 'normal', '', NULL, 0, '', 930.67, 116.33, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 9, NULL, 'Efectivo', 0, 'nao', '', 10, 167, 'no', 'no', '', 1, 1, 0, 10),
(188, 50002, 'FRANCINA DE ARAÚJO', NULL, 'femenino', '1990-09-18', 'BI', '030105137764A', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 78, NULL, NULL, 'activo', '2022-03-23 16:12:01', '2022-04-22 14:06:45', '1 50002', 15928, '2019-10-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 530.93, 66.37, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 9, NULL, 'Efectivo', 0, 'nao', '', 10, 168, 'no', 'no', '', 1, 1, 0, 10),
(189, 50003, 'ISAC SIMONE MAGALO', NULL, 'masculino', '1983-08-08', 'BI', '110100164770S', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 47, NULL, NULL, 'activo', '2022-03-23 16:12:16', '2022-04-22 14:46:00', '1 50003', 12133, '2012-05-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 404.43, 50.55, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 9, NULL, 'Efectivo', 0, 'nao', '', 10, 169, 'no', 'no', '', 1, 1, 0, 10),
(190, 50004, 'LÉNIA MINDO', NULL, 'femenino', '1991-01-02', 'BI', '110101264656F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 78, NULL, NULL, 'activo', '2022-03-23 16:12:34', '2022-04-22 16:20:38', '1 50004', 16959, '2014-10-06', NULL, 'normal', 'normal', '', NULL, NULL, '', 565.3, 70.66, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 9, NULL, 'Efectivo', 0, 'nao', '', 10, 170, 'no', 'no', '', 1, 1, 0, 10),
(191, 50005, 'LUANA  GOULAP', NULL, 'femenino', '1996-04-30', 'BI', '110102661449B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 78, NULL, NULL, 'activo', '2022-03-23 16:12:52', '2022-04-22 16:18:45', '1 50005', 16528, '2018-06-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 550.93, 68.87, NULL, NULL, NULL, 5, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 9, NULL, 'Efectivo', 0, 'nao', '', 10, 171, 'no', 'no', '', 1, 1, 0, 10),
(192, 60001, 'ALBERTINA SALVADOR', NULL, 'femenino', '1987-03-03', 'BI', '110101302809B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 79, NULL, NULL, 'activo', '2022-03-23 16:13:22', '2022-04-21 19:49:45', '1 60001', 11438, '2014-11-17', NULL, 'normal', 'normal', '', NULL, NULL, '', 381.27, 47.66, NULL, NULL, NULL, 4, 3, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 10, NULL, 'Efectivo', 0, 'nao', '', 10, 172, 'no', 'no', '', 1, 1, 0, 10),
(193, 60002, 'CHALEMBA GUAMBE', NULL, 'masculino', '1984-12-30', 'BI', '110104170152B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 79, NULL, NULL, 'activo', '2022-03-23 16:14:09', '2022-04-21 20:12:25', '1 60002', 30320.12, '2001-03-11', NULL, 'normal', 'normal', '', NULL, 0, '', 1010.67, 126.33, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 10, NULL, 'Efectivo', 0, 'nao', '', 10, 173, 'no', 'no', '', 1, 1, 0, 10),
(194, 60003, 'LEOPOLDO  MULUCO', NULL, 'masculino', '1977-12-22', 'BI', '110100943645I', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 80, NULL, NULL, 'activo', '2022-03-23 16:14:50', '2022-04-22 16:16:49', '1 60003', 59220.78, '2002-05-01', NULL, 'normal', 'normal', '', NULL, 2, '', 1974.03, 246.75, 0, '1', '2', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 10, NULL, 'Efectivo', 0, 'nao', '', 10, 174, 'no', 'no', '', 1, 1, 0, 10),
(195, 60004, 'PEDRO JOSSEFA TAMELE', NULL, 'masculino', '1961-05-12', 'BI', '110107029367F', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 79, NULL, NULL, 'activo', '2022-03-23 16:15:14', '2022-04-22 17:08:22', '1 60004', 11373, '2018-08-01', NULL, 'normal', 'normal', '', NULL, NULL, '', 379.1, 47.39, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 10, NULL, 'Efectivo', 0, 'nao', '', 10, 175, 'no', 'no', '', 1, 1, 0, 10),
(196, 60005, 'RAYHAN KHALID', NULL, 'masculino', '1989-04-18', 'BI', '040100040768S', NULL, NULL, 'Mocambicana', 'Zambézia', '', NULL, NULL, NULL, 44, NULL, NULL, 'activo', '2022-03-23 16:15:30', '2022-04-22 16:55:39', '1 60005', 39164.94, '2019-01-02', NULL, 'normal', 'normal', '', NULL, 1, '', 1305.5, 163.19, 0, '1', '1', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 10, NULL, 'Efectivo', 0, 'nao', '', 10, 176, 'no', 'no', '', 1, 1, 0, 10),
(197, 70001, 'ALBERTINO MOURINHO', NULL, 'masculino', '1959-05-10', 'BI', '030100040407M', NULL, NULL, 'Mocambicana', 'Tete', '', NULL, NULL, NULL, 81, NULL, NULL, 'activo', '2022-03-23 16:16:09', '2022-04-21 17:55:24', '1 70001', 128593.75, '2020-09-08', NULL, 'normal', 'normal', '', NULL, 1, '', 4286.46, 535.81, 0, '1', '1', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 10, 177, 'no', 'no', '', 1, 1, 0, 10),
(198, 70002, 'EULEUTÉRIO GUAMBE', NULL, 'masculino', '1987-08-14', 'BI', '100102237053C', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '', NULL, NULL, NULL, 82, NULL, NULL, 'activo', '2022-03-23 16:17:14', '2022-04-22 13:34:57', '1 70002', 41012.99, '2017-12-27', NULL, 'normal', 'normal', '', NULL, 1, '', 1367.1, 170.89, 0, '1', '1', 5, 1, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 10, 178, 'no', 'no', '', 1, 1, 0, 10),
(199, 70003, 'HELDER SADOQUE  NHARRELUGO', NULL, 'masculino', '1989-05-27', 'BI', '110104630591M', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 82, NULL, NULL, 'activo', '2022-03-23 16:17:37', '2022-04-22 15:31:24', '1 70003', 33344.16, '2020-02-05', NULL, 'normal', 'normal', '', NULL, 0, '', 1111.47, 138.93, 0, '1', '0', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 10, 179, 'no', 'no', '', 1, 1, 0, 10),
(200, 70004, 'JAIME CUAMBA ', NULL, 'masculino', '1989-01-26', 'BI', '110102501200J', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 81, NULL, NULL, 'activo', '2022-03-23 16:17:52', '2022-04-22 16:27:48', '1 70004', 52727.27, '2009-08-13', NULL, 'normal', 'normal', '', NULL, 2, '', 1757.58, 219.7, 0, '1', '2', 5, 1, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 10, 180, 'no', 'no', '', 1, 1, 0, 10),
(201, 70005, 'RAFAEL MANUEL FUZANA', NULL, 'masculino', '1994-01-21', 'BI', '110100503713A', NULL, NULL, 'Mocambicana', '', '', NULL, NULL, NULL, 82, NULL, NULL, 'activo', '2022-03-23 16:18:07', '2022-04-22 17:01:26', '1 70005', 21178.16, '2020-06-01', NULL, 'normal', 'normal', '', NULL, 0, '', 705.94, 88.24, 0, '1', '0', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 10, 181, 'no', 'no', '', 1, 1, 0, 10),
(202, 70006, 'SOZINHO JOÃO MANJATE', NULL, 'masculino', '1988-12-25', 'BI', '110100943919B', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 82, NULL, NULL, 'activo', '2022-03-23 16:18:25', '2022-04-22 16:51:44', '1 70006', 33344.16, '2020-02-05', NULL, 'normal', 'normal', '', NULL, 0, '', 1111.47, 138.93, 0, '1', '0', 5, 0, 0, '', NULL, 'Solteiro', NULL, '', 0, 8, NULL, 'Efectivo', 0, 'nao', '', 10, 182, 'no', 'no', '', 1, 1, 0, 10),
(203, 80001, 'ANGELINA CARVALHO', NULL, NULL, '0000-00-00', '', '', NULL, NULL, '', '', '', '', NULL, NULL, 21, NULL, NULL, 'activo', '2022-03-23 16:18:51', '2022-04-21 18:13:29', '1 80001', 22271.34, NULL, NULL, 'normal', 'normal', '', NULL, 1, NULL, 742.38, 92.8, 0, '1', '1', 4, 3, NULL, NULL, NULL, NULL, NULL, '', 0, 7, NULL, 'Interno', 0, 'nao', '', 10, 183, 'no', 'no', 'normal', 1, 1, 0, 10),
(204, 80002, 'HELENA VILAMAO', NULL, 'masculino', '1988-11-01', 'BI', '110100170166Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 21, NULL, NULL, 'activo', '2022-03-23 16:19:39', '2022-04-22 14:59:14', '1 80002', 18505, '2014-11-20', NULL, 'normal', 'normal', '', NULL, NULL, '', 616.83, 77.1, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 7, NULL, 'Efectivo', 0, 'nao', '', 10, 184, 'no', 'no', '', 1, 1, 0, 10),
(205, 80003, 'SORAYA MAHOMED', NULL, 'masculino', '1993-07-10', 'BI', '110100365230Q', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 83, NULL, NULL, 'activo', '2022-03-23 16:20:12', '2022-04-22 16:50:09', '1 80003', 39090.91, '2010-10-07', NULL, 'normal', 'normal', '', NULL, 2, '', 1303.03, 162.88, 0, '1', '2', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 7, NULL, 'Efectivo', 0, 'nao', '', 10, 185, 'no', 'no', '', 1, 1, 0, 10),
(206, 90001, 'SILVESTRE JAIME GOVENE', NULL, 'masculino', '1980-12-02', 'BI', '110102210432N', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 74, NULL, NULL, 'activo', '2022-03-23 16:20:38', '2022-04-22 16:53:32', '1 90001', 27118.9, '2020-08-24', NULL, 'normal', 'normal', '', NULL, 2, '', 903.96, 113, 0, '1', '2', 5, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 6, NULL, 'Efectivo', 0, 'nao', '', 10, 186, 'no', 'no', '', 1, 1, 0, 10),
(207, 10001, 'CÉLIA JULIANA OWANA', NULL, 'femenino', '1979-08-07', 'BI', '100105414856F', NULL, NULL, 'Mocambicana', 'Sofala', '840425439', NULL, NULL, NULL, 84, NULL, NULL, 'activo', '2022-03-23 16:21:53', '2022-04-05 15:19:38', '1 10001', 7300, '2015-02-10', '138399567', 'normal', 'normal', '17683711210001', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 5, 0, 0, '', NULL, 'Solteiro', 'Nkobe', NULL, NULL, 5, NULL, 'Efectivo', 4, 'sim', '', 10, 187, 'no', 'no', '', 1, 1, 0, 10),
(208, 25001, ' Iván Díaz Pelegrin ', NULL, 'masculino', '1972-09-14', 'BI', '110104187600B', NULL, NULL, 'Estrangeira ', '', '842254156', NULL, NULL, NULL, 85, NULL, NULL, 'activo', '2022-03-23 16:22:41', '2022-04-21 18:50:31', '1 25001', 59318.18, '2021-02-01', NULL, 'normal', 'normal', '21721830910001', NULL, 0, '', 1977.27, 247.16, 0, '1', '0', 4, 24, 2, '', 910807066, 'Casado', 'Polana Caniço A', '', 0, 4, NULL, 'Efectivo', 4, 'sim', '000800001721830910113', 10, 188, 'no', 'no', '', 1, 1, 0, 10),
(209, 25002, ' Nilsa Aida José Acácio Vissonate Mucavele ', NULL, 'femenino', '1981-09-18', '', '', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '847247409', NULL, NULL, NULL, 25, NULL, NULL, 'activo', '2022-03-23 16:23:36', '2022-04-22 17:14:58', '1 25002', 7300, '2022-02-09', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 4, 3, 3, 'Substituição', 921535944, 'Solteiro', 'Patrice Lumumba', NULL, NULL, 4, NULL, 'Efectivo', 4, 'nao', '', 10, 189, 'no', 'no', '', 1, 1, 0, 10),
(210, 25003, 'Osvaldo SIlvestre Banze', NULL, NULL, '1998-03-12', 'BI', '345789903456k', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '8476685131', NULL, NULL, NULL, 46, NULL, NULL, 'Inactivo', '2022-04-13 15:24:20', '2022-04-21 18:56:45', '1 25003', 35000, NULL, NULL, 'normal', 'normal', '', NULL, NULL, NULL, 1166.67, 145.83, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, 'Solteiro', NULL, NULL, NULL, 16, NULL, 'Efectivo', 0, 'nao', '', 10, 119, 'no', 'no', '', 1, 1, 0, 10),
(211, 30023, 'Edmilson Miguel', NULL, 'masculino', '1990-08-11', 'BI', '110106449932P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 31, NULL, NULL, 'activo', '2022-04-19 16:41:42', '2022-04-20 18:40:38', '2 30023', 7300, '2022-03-18', NULL, 'normal', 'normal', '', NULL, NULL, '', 243.33, 30.42, NULL, NULL, NULL, 0, 0, 0, '', NULL, 'Solteiro', NULL, NULL, NULL, 14, NULL, 'Efectivo', 0, 'nao', '', 11, 46, 'no', 'no', '', 1, 1, 0, 11),
(212, 25004, 'ESMENIO ZUALO', NULL, 'masculino', '1991-07-15', 'BI', '110100842861P', NULL, NULL, 'Mocambicana', 'Maputo Cidade', '', NULL, NULL, NULL, 22, NULL, NULL, 'activo', '2022-04-21 18:51:48', '2022-04-22 13:18:02', '1 25004', 39253.25, '2022-04-01', NULL, 'normal', 'normal', '', NULL, 0, '', 1308.44, 163.56, 0, '1', '0', 4, 3, 0, '', NULL, 'Solteiro', NULL, '', 0, 4, NULL, 'Efectivo', 0, 'nao', '', 10, 120, 'no', 'no', '', 1, 1, 0, 10),
(213, 10002, 'ZECA ', NULL, NULL, '1970-01-01', 'BI', '', NULL, NULL, 'Mocambicana', 'Maputo Provincia', '842374564', '', NULL, NULL, 32, NULL, NULL, 'activo', '2022-04-23 15:37:18', '2022-04-23 15:38:24', '6 10002', 26661.59, NULL, NULL, 'normal', 'normal', '', NULL, 0, NULL, 888.72, 111.09, 0, '1', '0', 4, 3, NULL, NULL, NULL, NULL, NULL, '', 0, 1, NULL, 'Interno', 0, 'nao', '', 14, 2, 'no', 'no', 'normal', 1, 1, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `lotes_validades`
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
-- Table structure for table `marca`
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
-- Dumping data for table `marca`
--

INSERT INTO `marca` (`id`, `nome`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Sem Marca', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Puma', 1, NULL, NULL, '2021-05-18 14:51:53', NULL, NULL),
(23, 'Arroz Marcs', 1, NULL, NULL, '2021-05-28 11:46:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meses`
--

CREATE TABLE `meses` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metodos_pagamento`
--

CREATE TABLE `metodos_pagamento` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `metodos_pagamento`
--

INSERT INTO `metodos_pagamento` (`id`, `nome`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Numerário', NULL, NULL, NULL),
(2, 'M-Pesa', NULL, NULL, NULL),
(3, 'POS', NULL, NULL, NULL),
(4, 'Transferência', NULL, NULL, NULL),
(5, 'Cheque', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moedas`
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
-- Dumping data for table `moedas`
--

INSERT INTO `moedas` (`id`, `nome`, `singular`, `plural`, `casas_decimais_sing`, `casas_decimais_plu`, `show_price`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'MZN', 'Metical', 'Meticais', '', NULL, 'no', NULL, NULL, NULL),
(2, 'USD', 'Dollar', 'Dollars', '', NULL, 'yes', NULL, NULL, NULL),
(3, 'EUR', 'Euro', 'Euros', '', NULL, 'no', NULL, NULL, NULL),
(4, 'GBP', 'Libra', 'Libra', '', NULL, 'no', NULL, NULL, NULL),
(5, 'ZAR', 'Rand', 'Rand', '', NULL, 'no', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notificacoes`
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
-- Dumping data for table `notificacoes`
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
(43, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-11 15:52:01', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-11 20:52:01', NULL),
(44, 'sistema', 'O Usuario Admin  fez login na data 2022-05-17 11:10:41', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-17 16:10:41', NULL),
(45, 'sistema', 'O Usuario Admin  fez login na data 2022-05-18 11:14:17', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-18 16:14:17', NULL),
(46, 'sistema', 'O Usuario Admin  fez login na data 2022-05-18 11:59:45', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-18 16:59:45', NULL),
(47, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-18 16:20:19', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-18 21:20:19', NULL),
(48, 'sistema', 'O Usuario MARCIA MATSIMBE  fez login na data 2022-05-18 16:21:44', NULL, NULL, 100, 'vista', NULL, 100, NULL, NULL, '2022-05-18 21:21:44', NULL),
(49, 'sistema', 'O Usuario Admin  fez login na data 2022-05-18 16:44:19', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-18 21:44:19', NULL),
(50, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-05-23 14:48:16', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-05-23 19:48:16', NULL),
(51, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-05-24 10:35:45', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-05-24 15:35:45', NULL),
(52, 'sistema', 'O Usuario Admin  fez login na data 2022-05-24 11:52:54', NULL, NULL, 1, 'vista', NULL, 1, NULL, NULL, '2022-05-24 16:52:54', NULL),
(53, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-05-24 14:12:16', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-05-24 19:12:16', NULL),
(54, 'sistema', 'O Usuario MOHAMMAD KHALIL  fez login na data 2022-05-24 14:14:06', NULL, NULL, 122, 'vista', NULL, 122, NULL, NULL, '2022-05-24 19:14:06', NULL),
(55, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-24 14:15:39', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-24 19:15:39', NULL),
(56, 'sistema', 'O Usuario ORLANDO CHAUQUE  fez login na data 2022-05-24 14:16:47', NULL, NULL, 123, 'vista', NULL, 123, NULL, NULL, '2022-05-24 19:16:47', NULL),
(57, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-24 14:31:08', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-24 19:31:08', NULL),
(58, 'sistema', 'O Usuario ORLANDO CHAUQUE  fez login na data 2022-05-24 14:37:39', NULL, NULL, 123, 'vista', NULL, 123, NULL, NULL, '2022-05-24 19:37:39', NULL),
(59, 'sistema', 'O Usuario ADEEL DAUDE  fez login na data 2022-05-24 14:38:36', NULL, NULL, 108, 'vista', NULL, 108, NULL, NULL, '2022-05-24 19:38:36', NULL),
(60, 'sistema', 'O Usuario SADIA DAUD  fez login na data 2022-05-24 14:48:18', NULL, NULL, 83, 'vista', NULL, 83, NULL, NULL, '2022-05-24 19:48:18', NULL),
(61, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-24 14:48:54', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-24 19:48:54', NULL),
(62, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-24 14:58:40', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-24 19:58:40', NULL),
(63, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-24 14:58:42', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-24 19:58:42', NULL),
(64, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-24 15:00:33', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-24 20:00:33', NULL),
(65, 'sistema', 'O Usuario EDSON PAPORO  fez login na data 2022-05-24 15:17:26', NULL, NULL, 96, 'vista', NULL, 96, NULL, NULL, '2022-05-24 20:17:26', NULL),
(66, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-24 15:22:19', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-24 20:22:19', NULL),
(67, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-24 15:27:07', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-24 20:27:07', NULL),
(68, 'sistema', 'O Usuario ALEXANDRE SAIA  fez login na data 2022-05-24 15:46:17', NULL, NULL, 112, 'vista', NULL, 112, NULL, NULL, '2022-05-24 20:46:17', NULL),
(69, 'sistema', 'O Usuario ALEXANDRE SAIA  fez login na data 2022-05-24 15:50:00', NULL, NULL, 112, 'vista', NULL, 112, NULL, NULL, '2022-05-24 20:50:00', NULL),
(70, 'sistema', 'O Usuario LENA DOS SANTOS  fez login na data 2022-05-24 16:11:54', NULL, NULL, 98, 'vista', NULL, 98, NULL, NULL, '2022-05-24 21:11:54', NULL),
(71, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-25 08:37:25', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-25 13:37:25', NULL),
(72, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-25 11:55:40', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-25 16:55:40', NULL),
(73, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-25 15:46:24', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-25 20:46:24', NULL),
(74, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-25 17:02:08', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-25 22:02:08', NULL),
(75, 'sistema', 'O Usuario HELDER CHABELA  fez login na data 2022-05-25 17:02:10', NULL, NULL, 114, 'vista', NULL, 114, NULL, NULL, '2022-05-25 22:02:10', NULL),
(76, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-26 08:26:31', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-26 13:26:31', NULL),
(77, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-26 09:01:52', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-26 14:01:52', NULL),
(78, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-26 09:02:25', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-26 14:02:25', NULL),
(79, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-26 14:34:55', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-26 19:34:55', NULL),
(80, 'sistema', 'O Usuario CARLOS SENDA  fez login na data 2022-05-26 14:36:11', NULL, NULL, 104, 'vista', NULL, 104, NULL, NULL, '2022-05-26 19:36:11', NULL),
(81, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-26 15:34:58', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-26 20:34:58', NULL),
(82, 'sistema', 'O Usuario ALBERTINA SALVADOR  fez login na data 2022-05-26 15:51:29', NULL, NULL, 102, 'vista', NULL, 102, NULL, NULL, '2022-05-26 20:51:29', NULL),
(83, 'sistema', 'O Usuario JONAS MAZIVE  fez login na data 2022-05-27 14:11:13', NULL, NULL, 111, 'vista', NULL, 111, NULL, NULL, '2022-05-27 19:11:13', NULL),
(84, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-30 14:36:57', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-30 19:36:57', NULL),
(85, 'sistema', 'O Usuario LENA DOS SANTOS  fez login na data 2022-05-30 14:37:38', NULL, NULL, 98, 'vista', NULL, 98, NULL, NULL, '2022-05-30 19:37:38', NULL),
(86, 'sistema', 'O Usuario DANYA FREITAS  fez login na data 2022-05-30 14:38:25', NULL, NULL, 97, 'vista', NULL, 97, NULL, NULL, '2022-05-30 19:38:25', NULL),
(87, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-30 14:54:38', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-30 19:54:38', NULL),
(88, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-30 15:35:57', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-30 20:35:57', NULL),
(89, 'sistema', 'O Usuario ADEEL DAUDE  fez login na data 2022-05-30 15:38:01', NULL, NULL, 108, 'vista', NULL, 108, NULL, NULL, '2022-05-30 20:38:01', NULL),
(90, 'sistema', 'O Usuario ADEEL DAUDE  fez login na data 2022-05-30 15:39:07', NULL, NULL, 108, 'vista', NULL, 108, NULL, NULL, '2022-05-30 20:39:07', NULL),
(91, 'sistema', 'O Usuario SIACA ADAMOGY  fez login na data 2022-05-30 15:58:00', NULL, NULL, 109, 'vista', NULL, 109, NULL, NULL, '2022-05-30 20:58:00', NULL),
(92, 'sistema', 'O Usuario MOHAMMAD KHALIL  fez login na data 2022-05-30 16:04:48', NULL, NULL, 122, 'vista', NULL, 122, NULL, NULL, '2022-05-30 21:04:48', NULL),
(93, 'sistema', 'O Usuario DANYA FREITAS  fez login na data 2022-05-30 19:00:16', NULL, NULL, 97, 'vista', NULL, 97, NULL, NULL, '2022-05-31 00:00:16', NULL),
(94, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-31 10:14:05', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-31 15:14:05', NULL),
(95, 'sistema', 'O Usuario MARCIA BATA  fez login na data 2022-05-31 10:15:39', NULL, NULL, 101, 'vista', NULL, 101, NULL, NULL, '2022-05-31 15:15:39', NULL),
(96, 'sistema', 'O Usuario MARCIA BATA  fez login na data 2022-05-31 10:17:41', NULL, NULL, 101, 'vista', NULL, 101, NULL, NULL, '2022-05-31 15:17:41', NULL),
(97, 'sistema', 'O Usuario SECRETARIA  fez login na data 2022-05-31 10:18:59', NULL, NULL, 124, 'vista', NULL, 124, NULL, NULL, '2022-05-31 15:18:59', NULL),
(98, 'sistema', 'O Usuario SECRETARIA  fez login na data 2022-05-31 10:23:41', NULL, NULL, 124, 'vista', NULL, 124, NULL, NULL, '2022-05-31 15:23:41', NULL),
(99, 'sistema', 'O Usuario SECRETARIA  fez login na data 2022-05-31 10:31:33', NULL, NULL, 124, 'vista', NULL, 124, NULL, NULL, '2022-05-31 15:31:33', NULL),
(100, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-31 14:51:26', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-31 19:51:26', NULL),
(101, 'sistema', 'O Usuario SILVESTRE GOVENE  fez login na data 2022-05-31 14:57:37', NULL, NULL, 110, 'vista', NULL, 110, NULL, NULL, '2022-05-31 19:57:37', NULL),
(102, 'sistema', 'O Usuario NUNES PEDRO  fez login na data 2022-05-31 15:10:43', NULL, NULL, 95, 'vista', NULL, 95, NULL, NULL, '2022-05-31 20:10:43', NULL),
(103, 'sistema', 'O Usuario SECRETARIA  fez login na data 2022-05-31 15:42:41', NULL, NULL, 124, 'vista', NULL, 124, NULL, NULL, '2022-05-31 20:42:41', NULL),
(104, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-31 16:09:42', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-31 21:09:42', NULL),
(105, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-31 17:26:23', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-31 15:26:23', NULL),
(106, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-05-31 21:48:24', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-05-31 19:48:24', NULL),
(107, 'sistema', 'O Usuario DANYA FREITAS  fez login na data 2022-05-31 21:51:15', NULL, NULL, 97, 'vista', NULL, 97, NULL, NULL, '2022-05-31 19:51:15', NULL),
(108, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-01 07:51:00', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-01 05:51:00', NULL),
(109, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-01 10:38:17', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-01 08:38:17', NULL),
(110, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-01 11:15:13', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-01 09:15:13', NULL),
(111, 'sistema', 'O Usuario PANKAJ JEENTILAL  fez login na data 2022-06-01 11:20:00', NULL, NULL, 92, 'vista', NULL, 92, NULL, NULL, '2022-06-01 09:20:00', NULL),
(112, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-01 11:21:37', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-01 09:21:37', NULL),
(113, 'sistema', 'O Usuario PANKAJ JEENTILAL  fez login na data 2022-06-01 11:26:49', NULL, NULL, 92, 'vista', NULL, 92, NULL, NULL, '2022-06-01 09:26:49', NULL),
(114, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-01 15:15:43', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-01 13:15:43', NULL),
(115, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-01 20:43:44', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-01 18:43:44', NULL),
(116, 'sistema', 'O Usuario MUHAMMAD YOUNUS  fez login na data 2022-06-02 07:36:38', NULL, NULL, 90, 'vista', NULL, 90, NULL, NULL, '2022-06-02 05:36:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ol`
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
  `funcionario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ol`
--

INSERT INTO `ol` (`id`, `montante`, `tipo_de_transacao`, `data_transacao`, `referencia`, `descricao`, `conta_bancaria_id`, `conta_destino_id`, `usuario_id`, `categoria_id`, `metodo_pagamento_id`, `anexos`, `empresa_id`, `user_registar`, `user_update`, `funcionario_id`, `created_at`, `updated_at`) VALUES
(2, 2000000, 'abertura', '2022-05-26', 'Abertura da conta', 'Abertura da conta', 2, NULL, 102, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(3, 93950, 'entrada', '2022-05-26', 'FT-0001/2022', 'Pagamento referente a FT-0001/2022', 2, NULL, 102, 1, 4, NULL, 1, NULL, NULL, NULL, '2022-05-26 21:14:15', NULL),
(4, 0, 'abertura', '2022-05-30', 'Abertura da conta', 'Abertura da conta', 3, NULL, 97, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(5, -60000, 'saida', '2022-05-31', 'TT-0004/2022', 'Pagamento ao fornecedor TT-0004/2022', 3, NULL, 90, 2, 1, NULL, 1, NULL, NULL, NULL, '2022-05-31 20:08:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pacote`
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
-- Dumping data for table `pacote`
--

INSERT INTO `pacote` (`id`, `nome`, `role_id`, `nr_usuarios`, `estado`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Pro', 1, 12, 'activo', NULL, NULL, NULL, NULL),
(2, 'Boost', 4, 10, 'activo', NULL, NULL, NULL, NULL),
(3, 'Start Up', 3, 12, 'activo', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagamento_prestacoes`
--

CREATE TABLE `pagamento_prestacoes` (
  `id` int(11) NOT NULL,
  `documento_id` int(11) NOT NULL,
  `data_pagamento` date NOT NULL,
  `valor` int(11) NOT NULL,
  `user_registar` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Activo; 0 - Inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagamento_prestacoes`
--

INSERT INTO `pagamento_prestacoes` (`id`, `documento_id`, `data_pagamento`, `valor`, `user_registar`, `estado`) VALUES
(1, 1, '2022-05-31', 10000, 90, 1),
(2, 1, '2022-06-10', 50, 90, 1),
(3, 11, '2022-06-03', 2000, 92, 1),
(4, 12, '2022-06-09', 1000, 90, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
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
-- Dumping data for table `permissions`
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
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
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
(2205, 11, 11, NULL, NULL),
(2206, 12, 11, NULL, NULL),
(2207, 13, 11, NULL, NULL),
(2208, 14, 11, NULL, NULL),
(2209, 91, 11, NULL, NULL),
(2210, 92, 11, NULL, NULL),
(2211, 95, 11, NULL, NULL),
(2212, 96, 11, NULL, NULL),
(2213, 97, 11, NULL, NULL),
(2214, 98, 11, NULL, NULL),
(2215, 153, 11, NULL, NULL),
(2216, 154, 11, NULL, NULL),
(2217, 155, 11, NULL, NULL),
(2218, 157, 11, NULL, NULL),
(2219, 158, 11, NULL, NULL),
(2220, 159, 11, NULL, NULL),
(2221, 160, 11, NULL, NULL),
(2222, 176, 11, NULL, NULL),
(2223, 177, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pl`
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

--
-- Dumping data for table `pl`
--

INSERT INTO `pl` (`id`, `po_id`, `documento_id`, `referencia_documento`, `data`, `valor_pago`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(2, 2, 6, 'TT-0004/2022', '2022-05-31', 60000, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `po`
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

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`id`, `fornecedor_id`, `conta_id`, `metodo_pagamento_id`, `categoria_id`, `data`, `referencia`, `total`, `usuario_id`, `codigo_movimento`, `nome_do_banco`, `numero_do_cheque`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(2, 8, 3, 1, NULL, '2022-05-31', 'RE-0001/2022', 62010.64, 90, '', '', '', 1, NULL, NULL, '2022-05-31 20:08:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preference`
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
-- Table structure for table `prioridade`
--

CREATE TABLE `prioridade` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prioridade`
--

INSERT INTO `prioridade` (`id`, `nome`) VALUES
(1, 'Alta '),
(2, 'Media'),
(3, 'Baixa');

-- --------------------------------------------------------

--
-- Table structure for table `ra`
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
-- Table structure for table `re`
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

--
-- Dumping data for table `re`
--

INSERT INTO `re` (`id`, `cliente_id`, `conta_id`, `metodo_pagamento_id`, `categoria_id`, `data`, `referencia`, `total`, `usuario_id`, `codigo_movimento`, `nome_do_banco`, `numero_do_cheque`, `empresa_id`, `user_registar`, `user_update`, `estado`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 4, 1, '2022-05-26', 'RE-0001/2022', 93950, 102, '000', 'BIM', '', 1, NULL, NULL, NULL, '2022-05-26 21:14:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rn`
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

--
-- Dumping data for table `rn`
--

INSERT INTO `rn` (`id`, `re_id`, `documento_id`, `referencia_documento`, `data`, `valor_pago`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'FT-0001/2022', '2022-05-26', 93950, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
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
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `display_name`, `name`, `description`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin User', NULL, NULL, NULL, NULL, NULL),
(11, 'Facturação de Requisições', 'Facturação de Requisições', 'Facturação e Requisições', 42, NULL, NULL, NULL, NULL),
(12, 'Aprovador de Requisições', 'Aprovador de Requisições', 'Aprovador de Requisições', NULL, NULL, NULL, NULL, NULL),
(14, 'Criador de Requisições', 'Criador de Requisições', 'Requisições', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_armazem`
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
-- Dumping data for table `role_armazem`
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
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
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
-- Table structure for table `se`
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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('79e8bbbbe449e3448bfae812ec810d102f9dbaf2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0RUWjY2bUYyZlpLNVFqdkdQTnZqRmp3Mk5pdzNzZTJSWThTU1dWMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvdHQvZGVzcGVzYXMvdGVzdG9fZGVzcGVzYXNfZmluYW5jYXMiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTY1MTE3OTYzMjtzOjE6ImMiO2k6MTY1MTE3OTYzMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1651179632),
('a05b532c09cc6d6bcdff021dca11fda1f3144783', 82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.50', 'YToxOTp7czo2OiJfdG9rZW4iO3M6NDA6IjVVcUtWVWJJOERaaGd4cnpySWJEc2lvYm1CbDljblV0UzZ1SnNpYXkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYyOiJodHRwOi8vbG9jYWxob3N0L3R0L2Rlc3Blc2FzL3Rlc3RvX2Rlc3Blc2FzX2ZpbmFuY2FzL2Rhc2hib2FyZCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODI7czo3OiJ2ZXJzaW9uIjtzOjQ6IkJldGEiO3M6MTI6ImRhdGVfdmVyc2lvbiI7czoxMDoiMjAyMC0xMi0wMSI7czoxMjoicm93X3Blcl9wYWdlIjtpOjEwO3M6OToiZGZsdF9sYW5nIjtzOjI6InBvIjtzOjEyOiJjdXN0X2VtcHJlc2EiO3M6MTI6IlRFUy1UT1AsIExEQSI7czoxNToic2l0ZV9zaG9ydF9uYW1lIjtzOjEyOiJURVMtVE9QLCBMREEiO3M6MTU6ImN1c3RfZW1wcmVzYV9pZCI7aToxO3M6NToiZW1haWwiO3M6MTU6InJoQHRlc3RvcC5jby5teiI7czo0OiJudWl0IjtzOjk6IjQwMDY3MDAyMSI7czoxMjoiY2FpeGFfcG9zdGFsIjtOO3M6MTI6ImNvbXBhbnlfbmFtZSI7czoxMjoiVEVTLVRPUCwgTERBIjtzOjg6ImVuZGVyZWNvIjtzOjMzOiJBVi4gS0FSTCBNQVJYLCBOwroxODc3IFIvQy1NQVBVVE8iO3M6MTA6ImNvbnRhY3RvXzEiO3M6ODoiMjEzMjgwNTYiO3M6MTA6ImNvbnRhY3RvXzIiO3M6ODoiMjEzMjgwNTciO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNjUxMTc4NTkxO3M6MToiYyI7aToxNjUxMTc4NDUzO3M6MToibCI7czoxOiIwIjt9fQ==', 1651178592),
('ca14b65e01038ccf0005f5546fb8d74a243b993c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia2JMTnpROFhWbFhUdGxVdUdUbURWTkVLSGt2QjFuMlpmOEVaV2RHVSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo2NzoiaHR0cDovL2xvY2FsaG9zdC90dC9kZXNwZXNhcy90ZXN0b19kZXNwZXNhc19maW5hbmNhcy9wYWdhbWVudG9zL2FkZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwOi8vbG9jYWxob3N0L3R0L2Rlc3Blc2FzL3Rlc3RvX2Rlc3Blc2FzX2ZpbmFuY2FzL3BhZ2FtZW50b3MvYWRkIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE2NTExNzk2MzI7czoxOiJjIjtpOjE2NTExNzk2MzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1651179632),
('de0f1605eb0812c9250eb18ad3ad6845afee9fbd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YToyMTp7czo2OiJfdG9rZW4iO3M6NDA6InJFaXhjYllNSlN4MkNKWWpBZk1yczRLaGg1VVdCNE9Ea0JvcVVBMWoiO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MDoiaHR0cDovL2xvY2FsaG9zdC90dC9kZXNwZXNhcy90ZXN0b19kZXNwZXNhc19maW5hbmNhcy9jb3RhY2FvIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NzoidmVyc2lvbiI7czo0OiJCZXRhIjtzOjEyOiJkYXRlX3ZlcnNpb24iO3M6MTA6IjIwMjAtMTItMDEiO3M6MTI6InJvd19wZXJfcGFnZSI7aToxMDtzOjk6ImRmbHRfbGFuZyI7czoyOiJwbyI7czoxNToiY3VzdF9lbXByZXNhX2lkIjtpOjE7czoxMjoiY3VzdF9lbXByZXNhIjtzOjEyOiJURVMtVE9QLCBMREEiO3M6NToiZW1haWwiO3M6MTU6InJoQHRlc3RvcC5jby5teiI7czoxMDoiY29udGFjdG9fMSI7czo4OiIyMTMyODA1NiI7czoxMDoiY29udGFjdG9fMiI7czo4OiIyMTMyODA1NyI7czo4OiJlbmRlcmVjbyI7czozMzoiQVYuIEtBUkwgTUFSWCwgTsK6MTg3NyBSL0MtTUFQVVRPIjtzOjQ6ImxvZ28iO3M6MTI6InRlc0xvZ28uanBlZyI7czoxNDoiaWRpb21hX2RlZmF1bHQiO3M6MjoicG8iO3M6NDoibnVpdCI7czo5OiI0MDA2NzAwMjEiO3M6MTI6ImNhaXhhX3Bvc3RhbCI7TjtzOjEyOiJjb21wYW55X25hbWUiO3M6MTI6IlRFUy1UT1AsIExEQSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE2NTEyMzc0NzI7czoxOiJjIjtpOjE2NTEyMzU2ODU7czoxOiJsIjtzOjE6IjAiO319', 1651237472),
('fe8dcbe5a064351f289ab4887b6777256ec22ccd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YToyMTp7czo2OiJfdG9rZW4iO3M6NDA6IklFRDV4c1RPMllybkp5T0NTcFp2MHptRkkwSnBXYmtxV2s5ZUEzZEciO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MjoiaHR0cDovL2xvY2FsaG9zdC90dC9kZXNwZXNhcy90ZXN0b19kZXNwZXNhc19maW5hbmNhcy9kYXNoYm9hcmQiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo3OiJ2ZXJzaW9uIjtzOjQ6IkJldGEiO3M6MTI6ImRhdGVfdmVyc2lvbiI7czoxMDoiMjAyMC0xMi0wMSI7czoxMjoicm93X3Blcl9wYWdlIjtpOjEwO3M6OToiZGZsdF9sYW5nIjtzOjI6InBvIjtzOjE1OiJjdXN0X2VtcHJlc2FfaWQiO2k6MTtzOjEyOiJjdXN0X2VtcHJlc2EiO3M6MTI6IlRFUy1UT1AsIExEQSI7czo1OiJlbWFpbCI7czoxNToicmhAdGVzdG9wLmNvLm16IjtzOjEwOiJjb250YWN0b18xIjtzOjg6IjIxMzI4MDU2IjtzOjEwOiJjb250YWN0b18yIjtzOjg6IjIxMzI4MDU3IjtzOjg6ImVuZGVyZWNvIjtzOjMzOiJBVi4gS0FSTCBNQVJYLCBOwroxODc3IFIvQy1NQVBVVE8iO3M6NDoibG9nbyI7czoxMjoidGVzTG9nby5qcGVnIjtzOjE0OiJpZGlvbWFfZGVmYXVsdCI7czoyOiJwbyI7czo0OiJudWl0IjtzOjk6IjQwMDY3MDAyMSI7czoxMjoiY2FpeGFfcG9zdGFsIjtOO3M6MTI6ImNvbXBhbnlfbmFtZSI7czoxMjoiVEVTLVRPUCwgTERBIjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTY1MTE4MTIwNjtzOjE6ImMiO2k6MTY1MTE3NDU5MztzOjE6ImwiO3M6MToiMCI7fX0=', 1651181207);

-- --------------------------------------------------------

--
-- Table structure for table `sl`
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
-- Table structure for table `st`
--

CREATE TABLE `st` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco_venda` double DEFAULT 0,
  `preco_compra` double DEFAULT 0,
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
-- Table structure for table `subscricoes`
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
-- Table structure for table `taxas`
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
  `moeda_nativa` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxas`
--

INSERT INTO `taxas` (`id`, `data_cambio`, `compra`, `venda`, `moedas_id`, `status`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`, `moeda_nativa`) VALUES
(49, '2021-09-23', '63.14', '64.41', 1, 'activo', 1, 1, 1, NULL, NULL, 2),
(50, '2021-09-23', '1', '1', 2, 'inactivo', 1, 1, 1, NULL, NULL, 2),
(51, '2022-05-24', '64', '67', 2, 'activo', 1, NULL, NULL, '2022-05-24 20:38:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `termo_pagamento`
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
-- Dumping data for table `termo_pagamento`
--

INSERT INTO `termo_pagamento` (`id`, `nome`, `dias_vencimento`, `default`, `status`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Pagamento na Entrega', 0, '', NULL, NULL, NULL, NULL),
(2, 'Apos 15 dias', 15, '', NULL, NULL, NULL, NULL),
(3, 'Apos 30 dias', 30, '', NULL, NULL, NULL, NULL),
(4, 'Apos 7 dias', 7, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_de_contas`
--

CREATE TABLE `tipo_de_contas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipo_de_contas`
--

INSERT INTO `tipo_de_contas` (`id`, `nome`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 'Conta Interna', NULL, NULL, NULL),
(2, 'Conta de Fornecedor', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_imposto`
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
-- Dumping data for table `tipo_imposto`
--

INSERT INTO `tipo_imposto` (`id`, `nome`, `taxa_imposto`, `default`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Isento', 0, 'yes', NULL, NULL, NULL, NULL, NULL),
(2, 'Regime Simplificado', 3, 'no', NULL, NULL, NULL, NULL, NULL),
(3, 'Iva', 17, 'no', NULL, NULL, NULL, NULL, NULL),
(4, 'ISPC', 5, 'no', 1, NULL, NULL, '2022-04-28 19:38:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unidade_medida`
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
-- Dumping data for table `unidade_medida`
--

INSERT INTO `unidade_medida` (`id`, `nome`, `abreviatura`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, 'Unidade', 'UN', NULL, NULL, NULL, NULL, NULL),
(2, 'Cada', 'CD', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `email`, `picture`, `inactive`, `remember_token`, `phone`, `role_id`, `armazem_id`, `empresa_id`, `user_registar`, `user_update`, `created_at`, `updated_at`) VALUES
(1, NULL, '$2y$10$FhJ6Co9QmCNS0mPaOHgH2ueWQ/ToJeE9FOQWUndDIW55glTTu5EwO', 'Admin', 'demo@n3.co.mz', NULL, '0', 'blxx1hMfwJHABaYeCQpYtHUIUsCZswUoOu9tRmv5JWFVUsgd7QdzPYycAYWL', '8455225225', 1, NULL, 0, NULL, NULL, '2021-07-02 15:22:11', '2022-04-11 09:38:12'),
(83, NULL, '$2y$10$112jfly4Myvr10kH/AXaWehXkvPGna.cPIrZdbCF1b/aHM622nCbO', 'SADIA DAUD', 'financas@testop.co.mz', NULL, NULL, 'k7MUiB0jvsyWnWDPNLfagepmDxR5pG3Ukaud8dfItysaMxWh3wCDkgNgTOw1', '21328056', 1, NULL, 0, NULL, NULL, '2022-04-11 17:12:27', '2022-05-24 19:48:45'),
(90, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'MUHAMMAD YOUNUS', 'younus@autobas.co.mz', NULL, NULL, '8Kp6rK5woq5Pf0p4X23ecrSrK7UYlfznfFvkw7rqQeLEXOl5SpctUuxs26a2', '843030477', 1, NULL, 0, NULL, NULL, '2022-04-14 17:31:32', '2022-06-01 09:25:33'),
(91, NULL, '$2y$10$PRrrPAAKBRRojPwuAixW6OlDjwDTqaBfLs7zDXaHTgOio2zO1UyxK', 'MUNIR SACOOR', 'testop@testop.co.mz', NULL, NULL, NULL, '824301030', 1, NULL, 0, NULL, NULL, '2022-04-14 17:34:17', '2022-04-14 17:34:45'),
(92, NULL, '$2y$10$OhZYqJ6ohNL3.g.joT/uHuwkWYIRAucYpUvi7K7W5OKe5sS/E9EkW', 'PANKAJ JEENTILAL', 'pankaj-jeentilal@hotmail.com', NULL, NULL, 'g0MAMhrBgt98ZsQc1UEfxFiqkgcteK2RKD91f1PEKFfxVKCsSnK1iT53NDlC', '842792540', 12, NULL, 1, NULL, NULL, '2022-04-14 17:42:04', '2022-06-01 09:21:35'),
(93, NULL, '$2y$10$Sd8Qp3XoA1kvTdM/GTyOoOpMgfXG7zx6rP.nMHKXbjPJ/cncA9LTO', 'GILU NEMANE', 'rh.gilu@testop.co.mz', NULL, NULL, NULL, '846517822', 14, NULL, 1, NULL, NULL, '2022-04-14 19:55:58', '2022-04-30 16:20:07'),
(94, NULL, '$2y$10$wasXX.Rj2oeKPs5hpyjHPOaedZuR.Mm08.kMXV1Yv7K1unK8VcGky', 'SAMIR MAHOMED', 'samir@q99.co.mz', NULL, NULL, NULL, '824197650', 14, NULL, 1, NULL, NULL, '2022-04-14 20:03:04', NULL),
(95, NULL, '$2y$10$OLeWdRbKrgQ71TCUferMD.X9DFK2nOHZJ7XVMBL.Dz4DDWrRQBlkq', 'NUNES PEDRO', 'it.nunes@q99.co.mz', NULL, NULL, NULL, '845877172', 14, NULL, 1, NULL, NULL, '2022-04-14 20:07:30', NULL),
(96, NULL, '$2y$10$HHgqf2D2zkzomBPj6ubkN.UBQLiDwg/Pn1pYcvIaGmkdWVDa2d2VO', 'EDSON PAPORO', 'it.paporo@q99.co.mz', NULL, NULL, NULL, '848186229', 14, NULL, 1, NULL, NULL, '2022-04-14 20:08:31', '2022-04-30 16:19:05'),
(97, NULL, '$2y$10$uq8urFDJBmItiI47KVfxSOP1SBifukgeR1YpHqw45ucL9Mvioew5y', 'DANYA FREITAS', 'rh.danya@testop.co.mz', NULL, NULL, NULL, '847416408', 14, NULL, 1, NULL, NULL, '2022-04-14 20:12:00', '2022-04-14 20:12:13'),
(98, NULL, '$2y$10$ynzhCFsfSvtwUkfy46qjDubz5.wjV8jiK4.z45XXUI9csDZPDSL9S', 'LENA DOS SANTOS', 'rh.lena@testop.co.mz', NULL, NULL, NULL, '829150694', 14, NULL, 1, NULL, NULL, '2022-04-14 21:06:40', '2022-04-14 21:06:55'),
(99, NULL, '$2y$10$b3k8sRW15ReLIdgsxP1hYeoyjSLVnGxNx0Zi8Rs9e7EMIaVu6DW6y', 'CHEILA QUILAMBO', 'rh.proenergia@testop.co.mz', NULL, NULL, 'vMJLo6pD8AQsmfpTrzxuWlvz9rh2SoOpSXGllIG4cZYeOASfPXoEOXwRkP6R', '869925390', 14, NULL, 1, NULL, NULL, '2022-04-14 21:08:20', '2022-04-30 16:55:34'),
(100, NULL, '$2y$10$yU4g2B8E4iGKsEiYWpNGX.tQsDD8VplGtaM4QxD3syVfVc3KTk7GO', 'MARCIA MATSIMBE', 'seguros@testop.co.mz', NULL, NULL, 'pTktHqC3i9D1Qrtar1UJTLyZhbpEqIkul9v1c4RtPXjC5j7ByDKxxsnaDOuI', '826885128', 14, NULL, 1, NULL, NULL, '2022-04-14 21:14:52', '2022-05-18 21:27:10'),
(101, NULL, '$2y$10$vcv9n05B2JeCUCVy7SQ7Ju2LnVhriqpmHA3FYI4hFLEWK10p95hoi', 'MARCIA BATA', 'proenergia@testop.co.mz', NULL, NULL, 'nZo8NK4hVouF4SNPs4ZDWkFbOYwRKRValPNCkeAZMQ4GlhuWjC1cEEizSKN2', '863666967', 14, NULL, 1, NULL, NULL, '2022-04-14 21:22:55', '2022-05-31 15:15:49'),
(102, NULL, '$2y$10$LpNu5f6bA3lxoFMsAYZtmOjIHC48WOo4weuDK.LkFoDF/V0rYaOGe', 'ALBERTINA SALVADOR', 'procurement.albertina@testop.co.mz', NULL, NULL, NULL, '84 036 4156', 11, NULL, 1, NULL, NULL, '2022-04-22 20:30:13', '2022-05-26 20:51:54'),
(103, NULL, '$2y$10$8kj1wL2/8EscMX0scbKzEOA6hjphvVqFdqbk7f1vxZ9S50jo8oKLW', 'FATIMA BIBI KARIM', 'financas.fatima@testop.co.mz', NULL, NULL, NULL, '84 673 1706', 11, NULL, 1, NULL, NULL, '2022-04-22 20:35:16', '2022-04-30 16:47:20'),
(104, NULL, '$2y$10$H/Rz.pTtpDlUT1VmBzdhseHwkeaOuVZ3XvBuwNvfNTVK1FRzhJPPC', 'CARLOS SENDA', 'financas.carlos@testop.co.mz', NULL, NULL, NULL, '84 633 8603', 11, NULL, 1, NULL, NULL, '2022-04-22 20:38:12', '2022-04-30 16:47:39'),
(105, NULL, '$2y$10$AYd7Ry7Qxhu/xP9slhPLMuxgvGotJcvpzRVurbqEOWRkiC8y0vu7y', 'LUANA GOULAP', 'financas.luana@testop.co.mz', NULL, NULL, NULL, '82 777 3545', 14, NULL, 1, NULL, NULL, '2022-04-22 20:40:23', '2022-04-22 20:40:35'),
(106, NULL, '$2y$10$72Np6sRgkqeipkuNYt6j.eqvZszyZJsuwEMfllWd49rwPKRqfVaIG', 'RAYHAN KHALID', 'procurement.rayhan@testop.co.mz', NULL, NULL, NULL, '84 745 4545', 14, NULL, 1, NULL, NULL, '2022-04-22 20:43:09', '2022-04-22 20:43:21'),
(107, NULL, '$2y$10$FfIR6PJQpTgbgwgzVnnBiulXUYFfgV5Sjjc9sNTNARQcjby8b/7Q2', 'LEOPOLDO VALENTIM', 'procurement.valentim@testop.co.mz', NULL, NULL, NULL, '87 787 8634', 14, NULL, 1, NULL, NULL, '2022-04-22 20:44:48', '2022-04-22 20:45:06'),
(108, NULL, '$2y$10$mmHfqLmGwCrIq4ZGuETQFe1wkFIw2CnZg/KIPHq2JoYwLsnH7ZMYa', 'ADEEL DAUDE', 'infraestrutura.adeel@testop.co.mz', NULL, NULL, NULL, '820059049', 14, NULL, 1, NULL, NULL, '2022-04-22 20:46:49', '2022-04-22 20:47:04'),
(109, NULL, '$2y$10$o2YTZPzrpsNC1oN0gnJvQe4w.yL1Jr2IYREMalt0YT2NELMD6QyEO', 'SIACA ADAMOGY', 'infraestrutura.siaca@testop.co.mz', NULL, NULL, NULL, '84 243 7566', 14, NULL, 1, NULL, NULL, '2022-04-22 20:50:24', '2022-04-22 20:50:35'),
(110, NULL, '$2y$10$k7pb62S9rX9o4Fom1vQvYeVUfY7I.2ft5k9GQoYveHCGXlftxjlIe', 'SILVESTRE GOVENE', 'transportes.proenergia@testop.co.mz', NULL, NULL, NULL, '84 661 5116', 14, NULL, 1, NULL, NULL, '2022-04-22 20:52:18', '2022-04-22 20:52:31'),
(111, NULL, '$2y$10$YCGFQZbVhIqutt0nKvT2tuJ2udIC8LUnxmxevr41.rzsvGkbSzc0.', 'JONAS MAZIVE', 'transportes.jonas@testop.co.mz', NULL, NULL, 'Vyik6ml0ojchesXLSBgXQtP6aVms6Q6K1W8UO8APFhTikKCmHMOSvzzhZcPH', '84 407 1823', 14, NULL, 1, NULL, NULL, '2022-04-22 20:54:24', '2022-05-24 20:21:51'),
(112, NULL, '$2y$10$vEcP2QhA9n5Jn9x1moh5wOPIvDbz/f6PvKE1me8U7SYbEdScmkPu2', 'ALEXANDRE SAIA', 'qualidade.saia@testop.co.mz', NULL, NULL, NULL, '84 562 4028', 14, NULL, 1, NULL, NULL, '2022-04-22 20:56:20', '2022-04-22 20:56:31'),
(113, NULL, '$2y$10$ArabE5H5l/z4OqPC727kdunaFxJCmLImLF3wg9L4MFdiF67FWQKnO', 'ESMENIO ZUALO', 'qualidade.esmenio@testop.co.mz', NULL, NULL, NULL, '84 264 3241', 14, NULL, 1, NULL, NULL, '2022-04-22 20:58:12', '2022-04-22 20:58:23'),
(114, NULL, '$2y$10$ywGoF.e/LtSP2uR9dO1.XuGuGntnr2ZAz.WPCJRj1dwbDJP7EwaQa', 'HELDER CHABELA', 'producao.helder@testop.co.mz', NULL, NULL, NULL, '84 695 6865', 14, NULL, 1, NULL, NULL, '2022-04-22 21:00:14', '2022-04-22 21:00:29'),
(115, NULL, '$2y$10$/dycXpdbLpUpzp1zzQWX9On.KgtHRr0fM7UyXAMcedo.jS80oDBBa', 'GLORIA COME', 'producao.gloria@testop.co.mz', NULL, NULL, NULL, '844912846', 14, NULL, 1, NULL, NULL, '2022-04-22 21:02:30', '2022-04-22 21:02:41'),
(116, NULL, '$2y$10$E.f3I7ibkG1dZTnsVLyHseqf1XIaoooLQ/s8GwP0abmaINkhzxHOm', 'LEONOR CHICHANGO', 'producao.leonor@testop.co.mz', NULL, NULL, NULL, '847056119', 14, NULL, 1, NULL, NULL, '2022-04-22 21:05:00', '2022-04-22 21:05:12'),
(117, NULL, '$2y$10$o605D0jJHYyLdkJsJcJhr.LFmvqUI08/GZU5XPMjPoxq/qh1p1chq', 'MUHAMMAD ISSAK', 'procurement.issak@testop.co.mz', NULL, NULL, NULL, '868819574', 14, NULL, 1, NULL, NULL, '2022-04-22 21:07:56', '2022-04-22 21:08:10'),
(118, NULL, '$2y$10$WEVxr.3rat/Mt7fV4lgZVuIbm7abUwaiX2dVKjTB68s9KALolzV5u', 'CHALEMBA GUAMBE', 'procurement.chalemba@testop.co.mz', NULL, NULL, NULL, '842637869', 14, NULL, 1, NULL, NULL, '2022-04-22 21:09:55', '2022-04-22 21:10:07'),
(119, NULL, '$2y$10$V.s.tj46MgtO66TpwbeTQedBi/JiI47LlfatoBntrKGt7YQCZO.5q', 'JAIME CUAMBA', 'projectos.jaime@testop.co.mz', NULL, NULL, NULL, '84 256 5607', 14, NULL, 1, NULL, NULL, '2022-04-22 21:12:19', '2022-04-22 21:12:35'),
(120, NULL, '$2y$10$NsGgg3OzZvqp644mK2POJ.Mv9ZYKL417G7of1x0vEXqtDLxckJqw.', 'EULEUTERIO GUAMBE', 'projectos.euleuterio@testop.co.mz', NULL, NULL, NULL, '84 259 2507', 14, NULL, 1, NULL, NULL, '2022-04-22 21:15:50', '2022-04-22 21:16:09'),
(121, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'JESSICA RANGANHA', 'projectos.jessica@testop.co.mz', NULL, NULL, NULL, '82 618 7735', 14, NULL, 1, NULL, NULL, '2022-04-22 21:19:38', '2022-04-22 21:19:50'),
(122, NULL, '$2y$10$dG9Gyy2X9fqDg8YmwzyJCuD6AA914.mvvsidr6P9Inyr2Qoy42Kuu', 'MOHAMMAD KHALIL', 'projectos.khalil@testop.co.mz', NULL, NULL, NULL, '828526660', 14, NULL, 1, NULL, NULL, '2022-04-22 21:22:02', '2022-05-09 21:09:41'),
(123, NULL, '$2y$10$FlCYf9nkZDhv7..81iuapO4WDsLaGbihlmEllkr6WREEFPxh1i7EK', 'ORLANDO CHAUQUE', 'armazem@testop.co.mz', NULL, NULL, 'cOHEJtTuE6gWeFjkA4xKWqX2l6CaX2DNr9Lc6QKFGTl84mR39sIopVWbf1W8', '84 678 5202', 14, NULL, 1, NULL, NULL, '2022-04-22 21:27:19', '2022-05-24 19:45:09'),
(124, NULL, '$2y$10$JHV1wu3I8LqtnO9NcB.wXu4VPQeywDdWo/xdhTjG./nP1APQjoGui', 'SECRETARIA', 'secretaria@testop.co.mz', NULL, NULL, NULL, '82 715 4615', 14, NULL, 1, NULL, NULL, '2022-04-22 21:33:59', '2022-04-22 21:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `versoes`
--

CREATE TABLE `versoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_versao` double(8,2) DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `registado_id` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `versoes`
--

INSERT INTO `versoes` (`id`, `nome`, `nr_versao`, `descricao`, `registado_id`, `estado`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Beta', 1.00, 'A versao do facturacao com  a base de dados estruturada e one DB', NULL, 'activo', '2020-12-01', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ag`
--
ALTER TABLE `ag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ag_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `armazem`
--
ALTER TABLE `armazem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `armazem_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `bi`
--
ALTER TABLE `bi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bi_empresa_id_foreign` (`empresa_id`),
  ADD KEY `bi_bo_id_foreign` (`bo_id`);

--
-- Indexes for table `bl`
--
ALTER TABLE `bl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bl_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `bo`
--
ALTER TABLE `bo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bo_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_empresa_id_foreign` (`empresa_id`),
  ADD KEY `categoria_unidade_medida_id_foreign` (`unidade_medida_id`);

--
-- Indexes for table `categoria_vendas`
--
ALTER TABLE `categoria_vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_vendas_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl`
--
ALTER TABLE `cl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_empresa`
--
ALTER TABLE `cust_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documento_anexo`
--
ALTER TABLE `documento_anexo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ds`
--
ALTER TABLE `ds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ds_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `ds_categoria`
--
ALTER TABLE `ds_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ds_categoria_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entidades_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `fc`
--
ALTER TABLE `fc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `fi`
--
ALTER TABLE `fi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fl`
--
ALTER TABLE `fl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fl_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `fn`
--
ALTER TABLE `fn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fn_empresa_id_foreign` (`empresa_id`),
  ADD KEY `fn_fo_id_foreign` (`fo_id`);

--
-- Indexes for table `fo`
--
ALTER TABLE `fo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fo_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `ft`
--
ALTER TABLE `ft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotes_validades`
--
ALTER TABLE `lotes_validades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lotes_validades_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metodos_pagamento`
--
ALTER TABLE `metodos_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metodos_pagamento_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `moedas`
--
ALTER TABLE `moedas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ol`
--
ALTER TABLE `ol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ol_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `pacote`
--
ALTER TABLE `pacote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagamento_prestacoes`
--
ALTER TABLE `pagamento_prestacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl`
--
ALTER TABLE `pl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pl_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`id`),
  ADD KEY `po_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prioridade`
--
ALTER TABLE `prioridade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra`
--
ALTER TABLE `ra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ra_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `re`
--
ALTER TABLE `re`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `rn`
--
ALTER TABLE `rn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rn_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_armazem`
--
ALTER TABLE `role_armazem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `se`
--
ALTER TABLE `se`
  ADD PRIMARY KEY (`id`),
  ADD KEY `se_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `sl`
--
ALTER TABLE `sl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sl_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `st`
--
ALTER TABLE `st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `st_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `subscricoes`
--
ALTER TABLE `subscricoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxas`
--
ALTER TABLE `taxas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termo_pagamento`
--
ALTER TABLE `termo_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termo_pagamento_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `tipo_de_contas`
--
ALTER TABLE `tipo_de_contas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_de_contas_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `tipo_imposto`
--
ALTER TABLE `tipo_imposto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_imposto_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `unidade_medida`
--
ALTER TABLE `unidade_medida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidade_medida_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `versoes`
--
ALTER TABLE `versoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ag`
--
ALTER TABLE `ag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `armazem`
--
ALTER TABLE `armazem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bi`
--
ALTER TABLE `bi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bl`
--
ALTER TABLE `bl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bo`
--
ALTER TABLE `bo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoria_vendas`
--
ALTER TABLE `categoria_vendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cc`
--
ALTER TABLE `cc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cl`
--
ALTER TABLE `cl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cust_empresa`
--
ALTER TABLE `cust_empresa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `documento_anexo`
--
ALTER TABLE `documento_anexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ds`
--
ALTER TABLE `ds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ds_categoria`
--
ALTER TABLE `ds_categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entidades`
--
ALTER TABLE `entidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc`
--
ALTER TABLE `fc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `fi`
--
ALTER TABLE `fi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fl`
--
ALTER TABLE `fl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fn`
--
ALTER TABLE `fn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `fo`
--
ALTER TABLE `fo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ft`
--
ALTER TABLE `ft`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `lotes_validades`
--
ALTER TABLE `lotes_validades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `meses`
--
ALTER TABLE `meses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metodos_pagamento`
--
ALTER TABLE `metodos_pagamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `moedas`
--
ALTER TABLE `moedas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `ol`
--
ALTER TABLE `ol`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pacote`
--
ALTER TABLE `pacote`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagamento_prestacoes`
--
ALTER TABLE `pagamento_prestacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2224;

--
-- AUTO_INCREMENT for table `pl`
--
ALTER TABLE `pl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `po`
--
ALTER TABLE `po`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `prioridade`
--
ALTER TABLE `prioridade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ra`
--
ALTER TABLE `ra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re`
--
ALTER TABLE `re`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rn`
--
ALTER TABLE `rn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role_armazem`
--
ALTER TABLE `role_armazem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `se`
--
ALTER TABLE `se`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sl`
--
ALTER TABLE `sl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st`
--
ALTER TABLE `st`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscricoes`
--
ALTER TABLE `subscricoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxas`
--
ALTER TABLE `taxas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `termo_pagamento`
--
ALTER TABLE `termo_pagamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tipo_de_contas`
--
ALTER TABLE `tipo_de_contas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_imposto`
--
ALTER TABLE `tipo_imposto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unidade_medida`
--
ALTER TABLE `unidade_medida`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `versoes`
--
ALTER TABLE `versoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ag`
--
ALTER TABLE `ag`
  ADD CONSTRAINT `ag_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `armazem`
--
ALTER TABLE `armazem`
  ADD CONSTRAINT `armazem_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bi`
--
ALTER TABLE `bi`
  ADD CONSTRAINT `bi_bo_id_foreign` FOREIGN KEY (`bo_id`) REFERENCES `bo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bi_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bl`
--
ALTER TABLE `bl`
  ADD CONSTRAINT `bl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bo`
--
ALTER TABLE `bo`
  ADD CONSTRAINT `bo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categoria_unidade_medida_id_foreign` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categoria_vendas`
--
ALTER TABLE `categoria_vendas`
  ADD CONSTRAINT `categoria_vendas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cl`
--
ALTER TABLE `cl`
  ADD CONSTRAINT `cl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ds`
--
ALTER TABLE `ds`
  ADD CONSTRAINT `ds_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ds_categoria`
--
ALTER TABLE `ds_categoria`
  ADD CONSTRAINT `ds_categoria_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entidades`
--
ALTER TABLE `entidades`
  ADD CONSTRAINT `entidades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fc`
--
ALTER TABLE `fc`
  ADD CONSTRAINT `fc_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fl`
--
ALTER TABLE `fl`
  ADD CONSTRAINT `fl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fn`
--
ALTER TABLE `fn`
  ADD CONSTRAINT `fn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fn_fo_id_foreign` FOREIGN KEY (`fo_id`) REFERENCES `fo` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fo`
--
ALTER TABLE `fo`
  ADD CONSTRAINT `fo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lotes_validades`
--
ALTER TABLE `lotes_validades`
  ADD CONSTRAINT `lotes_validades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marca`
--
ALTER TABLE `marca`
  ADD CONSTRAINT `marca_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metodos_pagamento`
--
ALTER TABLE `metodos_pagamento`
  ADD CONSTRAINT `metodos_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ol`
--
ALTER TABLE `ol`
  ADD CONSTRAINT `ol_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pl`
--
ALTER TABLE `pl`
  ADD CONSTRAINT `pl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `po`
--
ALTER TABLE `po`
  ADD CONSTRAINT `po_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ra`
--
ALTER TABLE `ra`
  ADD CONSTRAINT `ra_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `re`
--
ALTER TABLE `re`
  ADD CONSTRAINT `re_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rn`
--
ALTER TABLE `rn`
  ADD CONSTRAINT `rn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se`
--
ALTER TABLE `se`
  ADD CONSTRAINT `se_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sl`
--
ALTER TABLE `sl`
  ADD CONSTRAINT `sl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `st`
--
ALTER TABLE `st`
  ADD CONSTRAINT `st_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `termo_pagamento`
--
ALTER TABLE `termo_pagamento`
  ADD CONSTRAINT `termo_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tipo_de_contas`
--
ALTER TABLE `tipo_de_contas`
  ADD CONSTRAINT `tipo_de_contas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tipo_imposto`
--
ALTER TABLE `tipo_imposto`
  ADD CONSTRAINT `tipo_imposto_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unidade_medida`
--
ALTER TABLE `unidade_medida`
  ADD CONSTRAINT `unidade_medida_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
