-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jun-2022 às 16:56
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `autobas2_testop_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `id` int(11) NOT NULL,
  `nome` varchar(33) NOT NULL,
  `provincia` int(11) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`id`, `nome`, `provincia`, `removido`) VALUES
(1, 'Mocone', 1, 0),
(2, 'Namavungo', 1, 0),
(3, 'Nauaia', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `baixada`
--

CREATE TABLE `baixada` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `bairro_id` int(11) NOT NULL,
  `contador` varchar(60) NOT NULL,
  `quadro_electrico` int(11) DEFAULT NULL,
  `coordenadas` varchar(33) DEFAULT NULL,
  `tipo_instalacao` int(11) NOT NULL,
  `caixa_protecao` int(11) DEFAULT NULL,
  `pf` varchar(60) DEFAULT NULL,
  `cabo_abc_dm1` int(11) DEFAULT 0 COMMENT 'Cabos ABC (m)\r\n2x10 mm2',
  `cabo_abc_dm2` int(11) DEFAULT 0 COMMENT 'Cabos ABC (m)\r\n4x16 mm2',
  `pinca_dm1` int(11) DEFAULT 0 COMMENT 'Pinças de Amarração\r\n2x16 mm2',
  `pinca_dm2` int(11) DEFAULT 0 COMMENT 'Pinças de Amarração\r\n4x25 mm2',
  `ligadores_pc1` int(11) DEFAULT 0 COMMENT 'Ligadores\r\nPC 1',
  `ligadores_pc2` int(11) DEFAULT 0 COMMENT 'Ligadores\r\nPC 2',
  `projecto` int(11) NOT NULL,
  `site` int(11) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cambios`
--

CREATE TABLE `cambios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metical` double DEFAULT NULL,
  `rand` double DEFAULT NULL,
  `dolar` double DEFAULT NULL,
  `euro` double DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `parent_id`, `nome`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'FERRAMENTAS E EQUIPAMENTOS', 1, '2021-12-15 14:32:39', '2021-12-15 14:32:39'),
(2, 1, 'ESCADAS', 1, '2021-12-15 14:33:02', '2021-12-15 14:33:02'),
(3, 1, 'ESTRIBOS', 1, '2021-12-15 20:18:32', '2021-12-16 19:48:08'),
(4, 1, 'VARRA DE MANOBRA', 1, '2021-12-15 20:24:31', '2021-12-15 20:24:31'),
(5, 1, 'CINTOS DE SEGURANÇA', 1, '2021-12-16 15:00:52', '2021-12-16 15:00:52'),
(6, 1, 'BROCAS E TRADOS', 1, '2021-12-16 15:05:58', '2021-12-16 15:05:58'),
(7, 0, 'MATERIAL ELECTRICO', 1, '2021-12-16 15:20:54', '2021-12-16 15:20:54'),
(8, 7, 'TERMINAIS', 1, '2021-12-16 15:21:21', '2021-12-16 15:21:21'),
(9, 7, 'UNIÕES', 1, '2021-12-16 15:21:54', '2021-12-16 15:21:54'),
(10, 7, 'FERRO GANCHO/ARGOLA', 1, '2021-12-16 15:22:32', '2021-12-16 15:22:32'),
(11, 7, 'CAIXAS TERMINAIS', 1, '2021-12-16 15:23:04', '2021-12-16 15:23:04'),
(12, 7, 'CAIXAS DE JUNÇÃO', 1, '2021-12-16 15:23:29', '2021-12-16 15:23:29'),
(13, 7, 'PERFIL (L/U)', 1, '2021-12-16 15:24:34', '2021-12-16 15:24:34'),
(14, 7, 'ESPIAS', 1, '2021-12-16 15:25:06', '2021-12-16 15:25:06'),
(15, 7, 'FUSIVEL TUBULAR', 1, '2021-12-16 15:25:29', '2021-12-16 15:25:29'),
(16, 7, 'FUSIVEL LINK', 1, '2021-12-16 15:25:50', '2021-12-16 15:25:50'),
(17, 7, 'BASE E FUSIVEL HRC', 1, '2021-12-16 15:26:21', '2021-12-16 15:26:21'),
(18, 7, 'CONTACTORES', 1, '2021-12-16 15:26:51', '2021-12-16 15:26:51'),
(19, 7, 'DISJUNTORES', 1, '2021-12-16 15:27:07', '2021-12-16 15:27:07'),
(20, 7, 'QUADRO GERAL', 1, '2021-12-16 15:27:30', '2021-12-16 15:27:30'),
(21, 7, 'TRANSFORMADOR', 1, '2021-12-16 15:27:56', '2021-12-16 15:27:56'),
(22, 7, 'LUMINARIAS', 1, '2021-12-16 15:30:17', '2021-12-16 15:30:17'),
(23, 7, 'LIGADORES', 1, '2021-12-16 15:31:37', '2021-12-16 15:31:37'),
(24, 7, 'PINÇAS', 1, '2021-12-16 15:32:58', '2021-12-16 15:32:58'),
(25, 7, 'ISOLADORES', 1, '2021-12-16 15:33:33', '2021-12-16 15:33:33'),
(26, 7, 'ABRAÇADEIRAS E BUCHAS', 1, '2021-12-16 15:34:39', '2021-12-16 15:34:39'),
(27, 7, 'CONTADORES E CAIXAS DE PROTEÇÃO', 1, '2021-12-16 15:35:16', '2021-12-16 15:35:16'),
(28, 7, 'FITA ISOLADORA', 1, '2021-12-16 15:35:44', '2021-12-16 15:35:44'),
(29, 7, 'SERRA CABO', 1, '2021-12-16 15:36:04', '2021-12-16 15:36:04'),
(30, 1, 'GUINCHO/MORDENTE', 1, '2021-12-16 15:36:26', '2021-12-16 15:36:26'),
(31, 7, 'CINTAS', 1, '2021-12-16 15:36:54', '2021-12-16 15:36:54'),
(32, 1, 'VEDAÇÃO', 1, '2021-12-16 15:37:21', '2021-12-16 15:37:21'),
(33, 7, 'POSTE', 1, '2021-12-16 15:37:38', '2021-12-16 15:37:38'),
(34, 1, 'PARAFUSO', 1, '2021-12-16 15:38:19', '2021-12-16 15:38:19'),
(35, 1, 'DIVERSOS', 1, '2021-12-16 15:38:37', '2021-12-16 15:38:37'),
(36, 7, 'SAPATILHOS', 1, '2021-12-16 15:39:04', '2021-12-16 15:39:04'),
(37, 7, 'CABOS', 1, '2021-12-16 15:39:23', '2021-12-16 15:39:23'),
(38, 0, 'DIVERSO MATERIAL ELECTRICO E FERRAMENTAS', 1, '2022-01-13 14:09:33', '2022-01-13 14:09:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` bigint(20) NOT NULL,
  `nome` char(50) NOT NULL,
  `provincia` bigint(20) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id`, `nome`, `provincia`, `removido`) VALUES
(1, 'Maputo', 1, 0),
(2, 'Xai-Xai', 2, 0),
(3, 'Lichinga', 3, 0),
(4, 'Matola', NULL, 0),
(5, 'Nampula', NULL, 0),
(6, 'Beira', NULL, 0),
(7, 'Chimoio', NULL, 0),
(8, 'Quelimane	', NULL, 0),
(9, 'Nacala', NULL, 0),
(10, 'Mocuba', NULL, 0),
(11, 'Tete', NULL, 0),
(12, 'Gurué', NULL, 0),
(13, 'Lichinga', NULL, 0),
(14, 'Pemba', NULL, 0),
(15, 'Maxixe', NULL, 0),
(16, 'Angoche', NULL, 0),
(17, 'Cuamba', NULL, 0),
(18, 'Montepuez', NULL, 0),
(19, 'Dondo', NULL, 0),
(20, 'Inhambane', NULL, 0),
(21, 'Chibuto', NULL, 0),
(22, 'Chócue', NULL, 0),
(23, 'Ilha de Moçambique', NULL, 0),
(24, 'Manica', NULL, 0),
(25, 'Moatize', NULL, 0),
(26, 'Vilanculos', NULL, 0),
(27, 'Zambézia', NULL, 0),
(28, 'Gaza', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nuit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representante_do_cliente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_do_representante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone_do_representante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `nuit`, `endereco1`, `endereco2`, `representante_do_cliente`, `email_do_representante`, `telefone_do_representante`, `pais`, `provincia`, `status`, `removido`, `created_at`, `updated_at`) VALUES
(1, 'PROENERGIA', 'rh.proenergia@testop.co.mz', '844545454', '454556665', 'dddddd', 'dddd', 'dddddd', NULL, '45545', 'ddddd', 'ddddd', 1, 0, '2021-12-24 13:53:40', '2021-12-24 13:53:40'),
(2, 'EDM BEIRA', 'albino.mutendi@edm.co.mz', '21353623', '600000063', 'Rua Companhia de Moçambique nº 240', 'Rua Companhia de Moçambique nº 240', 'Albino Dinis Mutendi', 'albino.mutendi@edm.co.mz', '828665470', 'Moçambique', 'Sofala', 1, 0, '2021-12-30 16:12:13', '2021-12-30 16:12:13'),
(3, 'EDM DRCM', 'florencio.chongo@edm.co.mz', '21353623', '600000063', 'AV.Milagre Mabote nº 3660', 'AV.Milagre Mabote nº 3660', 'Florencio Amana Chongo', 'florencio.chongo@edm.co.mz', '845853718', 'Moçambique', 'Maputo', 1, 0, '2021-12-30 16:18:10', '2021-12-30 16:18:10'),
(4, 'EDM NACALA', 'rodrigues.manuel@edm.co.mz', '26526568', '600000063', 'Rua da Vigilancia nº13 CPnº31', 'Rua da Vigilancia nº13 CPnº31', 'Rodrigues Manuel', 'rodrigues.manuel@edm.co.mz', '845511926', 'Moçambique', 'Nampula', 1, 0, '2022-01-04 13:17:50', '2022-01-04 13:17:50'),
(5, 'EDM PEMBA', 'gildo.marques@edm.co.mz', '27220086', '600000063', 'Av.Josina Machel nº 1C042', 'Av.Josina Machel nº 1C042', 'Gildo Marques', 'gildo.marques@edm.co.mz', '846898312', 'Moçambique', 'Cabo Delgado', 1, 0, '2022-01-04 13:34:56', '2022-01-04 13:34:56'),
(6, 'EDM DAL', 'procurment.dia@edm.co.mz', '21481508', '600000063', 'Av.Eduardo Mondlane nº1398,7º andar', 'Av.Eduardo Mondlane nº1398,7º andar', 'João Aleluia', 'joao.aleluia@edm.co.mz', '846813602', 'Moçambique', 'Maputo', 1, 0, '2022-01-04 15:55:33', '2022-01-04 15:55:33'),
(7, 'EDM DAL', 'procurment.dia@edm.co.mz', '21481508', '600000063', 'Av.Eduardo Mondlane nº1398,7º andar', 'Av.Eduardo Mondlane nº1398,7º andar', 'João Aleluia', 'joao.aleluia@edm.co.mz', '846813602', 'Moçambique', 'Maputo', 1, 0, '2022-01-04 15:55:33', '2022-01-04 15:55:33'),
(8, 'EDM DRPM', 'crimildo.langane@edm.co.mz', '21720689', '600000063', 'Av.Nelson Mandela nº319', 'Av.Nelson Mandela nº319', 'Crimildo Langane', 'crimildo.langane@edm.co.mz', '848903273', 'Moçambique', 'Maputo', 1, 0, '2022-01-04 15:58:23', '2022-01-04 15:58:23'),
(9, 'EDM CHOKWE', 'jochua.lumbela@edm.co.mz', '28120126', '600000063', 'Av.Moçambique nº4 CP.48', 'Av.Moçambique nº4 CP.48', 'Jochua Lumbela', 'jochua.lumbela@edm.co.mz', '878877994', 'Moçambique', 'Gaza', 1, 0, '2022-01-04 16:04:01', '2022-01-04 16:04:01'),
(10, 'EDM XAI-XAI', 'herminio.paunde@edm.co.mz', '28225610', '600000063', 'Av.Martires de Moeda CP.160', 'Av.Martires de Moeda CP.160', 'Herminio Paunde', 'herminio.paunde@edm.co.mz', '845870070', 'Moçambique', 'Gaza', 1, 0, '2022-01-04 16:06:56', '2022-01-04 16:06:56'),
(11, 'EDM INHAMBANE', 'agostinho.chicomo@edm.co.mz', '29320512', '600000063', 'Av. Moçambique nº 168', 'Av. Moçambique nº 168', 'Agostinho Chicomo', 'agostinho.chicomo@edm.co.mz', '842785127', 'Moçambique', 'Inhambane', 1, 0, '2022-01-04 16:16:00', '2022-01-04 16:16:00'),
(12, 'EDM CHIMOIO', 'solange.jossai@edm.co.mz', '21353623', '600000063', 'Rua Patrice Lumumba nº 232', 'Rua Patrice Lumumba nº 232', 'Solange Jossai', 'solange.jossai@edm.co.mz', '865786894', 'Moçambique', 'Manica', 1, 0, '2022-01-04 16:20:29', '2022-01-04 16:20:29'),
(13, 'EDM QUELIMANE', 'alcidio.goveia@edm.co.mz', '24212519', '600000063', 'Av.Eduardo Mondlane nº38', 'Av.Eduardo Mondlane nº38', 'Alcidio Goveia', 'alcidio.goveia@edm.co.mz', '827110827', 'Moçambique', 'Zambezia', 1, 0, '2022-01-05 12:38:43', '2022-01-05 12:38:43'),
(14, 'EDM NAMPULA', 'ludovico.carrilho@edm.co.mz', '26214504', '600000063', 'Av. de Trabalho nº3', 'Av. de Trabalho nº3', 'Ludovico Carrilho', 'ludovico.carrilho@edm.co.mz', '842985720', 'Moçambique', 'Nampula', 1, 0, '2022-01-05 12:50:50', '2022-01-05 12:50:50'),
(15, 'EDM TETE', 'leonel.correia@edm.co.mz', '23032', '600000063', 'Av. De Independência R/C', 'Av. De Independência R/C', 'Leonel Correia', 'leonel.correia@edm.co.mz', '845429680', 'Moçambique', 'TETE', 1, 0, '2022-01-05 13:18:56', '2022-01-05 13:18:56'),
(16, 'EDM LICHINGA', 'belque.silva@edm.co.mz', '27120944', '600000063', 'Av.FPLM nº120', 'Av.FPLM nº120', 'Belque Silva', 'belque.silva@edm.co.mz', '820830040', 'Moçambique', 'Niassa', 1, 0, '2022-01-05 13:24:39', '2022-01-05 13:24:39'),
(17, 'EDM MOCUBA', 'belmiro.mateus@edm.co.mz', '24810548', '600000063', 'Av.Patrice Lumumba CP.º73', 'Av.Patrice Lumumba CP.º73', 'Belmiro Mateus', 'belmiro.mateus@edm.co.mz', '843050161', 'Moçambique', 'Zambezia', 1, 0, '2022-01-05 13:38:39', '2022-01-05 13:38:39'),
(18, 'ELECTRO VERDE,LDA', 'procurement@electroverde.co.mz', '21423119', '400633282', 'Rua salipa norte nº37 1º andar', 'Rua salipa norte nº37 1º andar', 'Solange Duarte', 'procurement@electroverde.co.mz', '844902317', 'Moçambique', 'Maputo', 1, 0, '2022-01-13 14:04:57', '2022-01-13 14:04:57'),
(19, 'PROJECTO ZOBUE TES-TOP', 'projectos@testop.co.mz', '876125047', '400670021', 'Zobue', 'Zobue', 'Jaime', 'projectos@testop.co.mz', '876125047', 'Moçambique', 'TETE', 1, 0, '2022-01-17 14:39:50', '2022-01-17 14:39:50'),
(20, 'PROJECTO MUCUMBURA TES-TOP', 'projectos@testop.co.mz', '876125047', '400670021', 'Mucumbura', 'Mucumbura', 'Jaime', 'projectos@testop.co.mz', '876125047', 'Moçambique', 'TETE', 1, 0, '2022-01-17 14:43:27', '2022-01-17 14:43:27'),
(21, 'ALTO LIGONHA TES-TOP', 'projectos@testop.co.mz', '876125047', '400670021', 'Alto ligonha', 'Alto ligonha', 'Jaime', 'projectos@testop.co.mz', '876125047', 'Moçambique', 'Zambezia', 1, 0, '2022-01-17 14:45:45', '2022-01-17 14:45:45'),
(22, 'AUTO BAS', 'autobas@gmail.com', '843030477', '400680140', 'Marracuene', 'Marracuene', 'younus', 'autobas@gmail.com', '843030477', 'Moçambique', 'Maputo', 1, 0, '2022-01-17 15:09:52', '2022-01-17 15:09:52'),
(23, 'PROJECTO REVIMO TES-TOP', 'procurement@testop.co.mz', '868819574', '400670021', 'Circular', 'Circular', 'Issak', 'procurement@testop.co.mz', '868819574', 'Moçambique', 'Maputo', 1, 0, '2022-01-17 15:13:39', '2022-01-17 15:13:39'),
(24, 'ARMAZÉM MACHAVA', 'procurement@testop.co.mz', '877878634', '400670021', 'Machava', 'Machava', 'Leopoldo Muluco', 'procurement@testop.co.mz', '877878634', 'Moçambique', 'Maputo', 1, 0, '2022-01-17 15:18:19', '2022-01-17 15:18:19'),
(25, 'ARMAZÉM MARRACUENE', 'armazem@testop.co.mz', '862811279', '400670021', 'Marracuene', 'Marracuene', 'Ibrahim', 'armazem@testop.co.mz', '862811279', 'Moçambique', 'Maputo', 1, 0, '2022-01-17 15:21:26', '2022-01-17 15:21:26'),
(26, 'PROJECTO PROENERGIA CUAMBA', 'proenergia@testop.co.mz', '872592507', '400670021', 'Cuamba', 'Cuamba', 'Euleuterio Guambe', 'proenergia@testop.co.mz', '872592507', 'Moçambique', 'Niassa', 1, 0, '2022-01-25 16:34:31', '2022-01-25 16:34:31'),
(27, 'PROJECTO PROENERGIA NACALA', 'proenergia@testop.co.mz', '872592507', '400670021', 'Nacala', 'Nacala', 'Euleuterio Guambe', 'proenergia@testop.co.mz', '872592507', 'Moçambique', 'Nampula', 1, 0, '2022-01-25 16:38:18', '2022-01-25 16:38:18'),
(28, 'PROJECTO PROENERGIA PEMBA', 'proenergia@testop.co.mz', '872592507', '400670021', 'Pemba', 'Pemba', 'Euleuterio Guambe', 'proenergia@testop.co.mz', '872592507', 'Moçambique', 'Cabo Delgado', 1, 0, '2022-01-25 16:40:33', '2022-01-25 16:40:33'),
(29, 'PROJECTO PROENERGIA LICHINGA', 'proenergia@testop.co.mz', '872592507', '400670021', 'Lichinga', 'Lichinga', 'Euleuterio Guambe', 'proenergia@testop.co.mz', '872592507', 'Moçambique', 'Niassa', 1, 0, '2022-01-25 16:41:57', '2022-01-25 16:41:57'),
(30, 'PROJECTO RESSANO GARCIA', 'projectos@testop.co.mz', '842565607', '400670021', 'Ressano Garcia', 'Ressano Garcia', 'Jaime', 'projectos@testop.co.mz', '842565607', 'Moçambique', 'Maputo', 1, 0, '2022-01-25 16:45:19', '2022-01-25 16:45:19'),
(31, 'ADMINISTRACAO CAMIOES', 'producao@testop.co.mz', '220', '400670021', 'Rua de Aveiro nº35', 'Rua de Aveiro nº35', 'Helder Chabela', 'producao@testop.co.mz', '220', 'Moçambique', 'Maputo', 1, 0, '2022-02-11 21:39:15', '2022-02-11 21:39:15'),
(32, 'PROJECTO NHAMADZI', 'projectos@testop.co.mz', '842565607', '400670021', 'Nhamadzi', 'Nhamadzi', 'Jaime', 'projectos@testop.co.mz', '842565607', 'Moçambique', 'Tete', 1, 0, '2022-02-11 23:07:23', '2022-02-11 23:07:23'),
(33, 'retificadora', 'fertel21@gmail.com', '848284505', '401086056', 'AV.Lurdes Mutola nº 306', 'AV.Lurdes Mutola nº 306 Maputo', NULL, 'fertel21@gmail.com', NULL, 'Moçambique', 'Maputo', 1, 0, '2022-02-15 17:35:55', '2022-02-15 17:35:55'),
(34, 'PROJECTO NAMALA', 'projectos@testop.co.mz', '876125047', '400670021', 'Namala', 'Namala', 'Jaime', 'projectos@testop.co.mz', '876125047', 'Moçambique', 'Nampula', 1, 0, '2022-02-24 22:24:40', '2022-02-24 22:24:40'),
(35, 'MARRACUENE MACANETA', 'projectos@testop.co.mz', '876125047', '400670021', 'Macaneta', 'Macaneta', 'Jaime', 'projectos@testop.co.mz', '876125047', 'Moçambique', 'Maputo', 1, 0, '2022-02-24 23:14:22', '2022-02-24 23:14:22'),
(36, 'PROJECTO CHIPUTO TESTOP', 'projectos@testop.co.mz', '876125047', '400670021', 'Chiputo', 'Chiputo', 'Jaime', 'projectos@testop.co.mz', '876125047', 'Moçambique', 'Tete', 1, 0, '2022-03-07 21:13:54', '2022-03-07 21:13:54'),
(37, 'GRUPO TESTOP', 'procurement@testop.co.mz', '849464657', '400670021', 'AV.Karl  Marx', 'AV.Karl  Marx', 'Munir', 'procurement@testop.co.mz', '849464657', 'Moçambique', 'Maputo', 1, 0, '2022-03-28 22:04:41', '2022-03-28 22:04:41'),
(38, 'MULOTANE BILL', 'procurement@testop.co.mz', '21328056', '400670021', 'Mulotane', 'Mulotane', 'Bata', 'procurement@testop.co.mz', '213280', 'Moçambique', 'Maputo', 1, 0, '2022-03-30 15:55:33', '2022-03-30 15:55:33'),
(39, 'PROJECTO PROENERGIA PEMBA IMPIRI', 'projectos@testop.co.mz', '842592507', '400670021', 'Pemba', 'Impiri', 'Euleuterio', 'projectos@testop.co.mz', '842592507', 'Moçambique', 'Cabo Delgado', 1, 0, '2022-03-30 16:07:33', '2022-03-30 16:07:33'),
(40, 'PROJECTO PUNHADARE PAPAI', 'projectos@testop.co.mz', '87125047', '400670021', 'Punhadare', 'Punhadare', 'Jaime', 'projectos@testop.co.mz', '87125047', 'Moçambique', 'Cabo Delgado', 1, 0, '2022-03-30 16:15:45', '2022-03-30 16:15:45'),
(41, 'Candido Macuiane', 'producao@testop.co.mz', '849245144', '400670021', 'Rua de Aveiro nº35', 'Rua de Aveiro nº35', 'Candido Macuiane', 'producao@testop.co.mz', '849245144', 'Moçambique', 'Maputo', 1, 0, '2022-03-30 22:04:54', '2022-03-30 22:04:54'),
(42, 'OBRA JARDIM DA VALENTINA', 'procurement@testop.co.mz', '847878634', '400670021', 'AV.Karl  Marx', 'AV.Karl  Marx', 'Valentim', 'procurement@testop.co.mz', '847878634', 'Moçambique', 'Maputo', 1, 0, '2022-04-28 14:00:09', '2022-04-28 14:00:09'),
(43, 'ELECTRO FERRAGEM SMART SU,LDA', 'smart.electro.ferragem@gmail.com', '847828718', '401407170', 'Av.Emilia Dausse nº574', 'Av.Emilia Dausse nº574', 'Vibeque', 'smart.electro.ferragem@gmail.com', '847828718', 'Moçambique', 'Maputo', 1, 0, '2022-04-28 15:32:38', '2022-04-28 15:32:38'),
(44, 'OBRA DIRECTOR GERAL TRIUNFO', 'procurement@testop.co.mz', '21328056', '400670021', 'AV.Karl  Marx', 'AV.Karl  Marx', 'Adeel Daude', 'procurement@testop.co.mz', '21328056', 'Moçambique', 'Maputo', 1, 0, '2022-05-24 21:40:34', '2022-05-24 21:40:34'),
(45, 'SEDE NACIONAL DO PARTIDO FRELIMO', 'projectos@testop.co.mz', '870875938', '000000000', 'Cidade de Maputo', 'Cidade de Maputo', 'Bata', 'projectos@testop.co.mz', '870875938', 'Moçambique', 'Maputo', 1, 0, '2022-05-25 14:37:38', '2022-05-25 14:37:38'),
(46, 'GALAXYA CONSTRUCTION', 'galaxyaconstrucoes@gmail.com', '870697437', '102206711', 'AV. Salvador Allende', 'AV. Salvador Allende', 'Merin', 'galaxyaconstrucoes@gmail.com', '823794660', 'Moçambique', 'Maputo', 1, 0, '2022-05-25 15:23:34', '2022-05-25 15:23:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_baixadas`
--

CREATE TABLE `cliente_baixadas` (
  `id` int(11) NOT NULL,
  `nome` varchar(33) NOT NULL,
  `provincia` int(11) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `contacto` varchar(33) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente_baixadas`
--

INSERT INTO `cliente_baixadas` (`id`, `nome`, `provincia`, `bairro`, `contacto`, `removido`, `created_at`, `updated_at`) VALUES
(1, 'Mualua Amede', 3, 'Namicura', '+55 587462354285', 0, NULL, NULL),
(2, 'Elvira Viegas', 1, 'Central A', '+258 824626310', 0, NULL, NULL),
(3, 'Elton John', 1, 'B. Jardim', '+258 847668513', 0, NULL, NULL),
(4, 'Albertina', 1, 'Central A', '82225555', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedors`
--

CREATE TABLE `fornecedors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nuit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_do_representante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone_do_representante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_do_representante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fornecedors`
--

INSERT INTO `fornecedors` (`id`, `nome`, `email`, `telefone`, `nuit`, `pais`, `endereco`, `nome_do_representante`, `telefone_do_representante`, `email_do_representante`, `provincia`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PREMIER CABOS,LDA', 'amade@premiercabos.co.mz', '21724166', '400260966', 'Moçambique', 'EN2, talhão 728-D, Q-44 Matola A', 'Leon VAn Niekerk', '843337777', 'leon@premiercabos.co.mz', 'Maputo', 1, '2022-01-05 20:15:47', '2022-01-05 20:15:47'),
(2, 'ELECTRO VERDE,LDA', 'procurement@electroverde.co.mz', '21423119', '400633282', 'Moçambique', 'Rua salipa norte nº 37, 1º andar', 'Solange Duarte', '844902317', 'procurement@electroverde.co.mz', 'Maputo', 0, '2022-01-13 14:07:35', '2022-01-18 16:07:59'),
(3, 'ELECTRO VERDE,LDA', 'procurement@electroverde.co.mz', '21423119', '400633282', 'Moçambique', 'Rua salipa norte nº 37, 1º andar', 'Solange Duarte', '844902317', 'procurement@electroverde.co.mz', 'Maputo', 1, '2022-01-13 14:10:49', '2022-01-13 14:10:49'),
(4, 'TECNOELECTRICA', 'vendas@tecnoelectrica.co.mz', '21304992', '400312338', 'Moçambique', 'AV.Fernão Magalhães, 973', 'Munir Ravate', '843096846', 'mravate@tecnoelectrica.co.mz', 'Maputo', 1, '2022-01-18 16:54:06', '2022-01-18 16:54:06'),
(5, 'ELECTROCRUZ LDA', 'mussagi@ecpowergroups.com', '21492173', '400111383', 'Moçambique', 'AV.Francisco Orlando Magumbwe 998', 'Mussagy Catamo', '845243889', 'mussagi@ecpowergroups.com', 'Maputo', 1, '2022-01-18 17:19:09', '2022-01-18 17:19:09'),
(6, 'ELECTRO PLUZ LDA', 'vendas@electropluz.com', '21467784', '400076847', 'Moçambique', 'AV. De Angola, nº1874', 'Habib', '21467784', 'Habib@electrocruz.com', 'Maputo', 1, '2022-01-18 18:03:27', '2022-01-18 18:03:27'),
(7, 'ALCOREL', 'alcorel.comercial@gmail.com', '21301804', '400014221', 'Moçambique', 'AV.Josina Machel', 'Mutiasse', '846951135', 'alcorel.comercial@gmail.com', 'Maputo', 1, '2022-01-18 18:21:40', '2022-01-18 18:21:40'),
(8, 'AFRICA BOLT & TOOL,LDA', 'abtlda@tvcabo.co.mz', '21403035', '400124094', 'Moçambique', 'AV.Mohomed Siad Barre nº776 r/c', 'Soyeb Khalifa', '843917557', 'vendas@africabolt.co.mz', 'Maputo', 1, '2022-01-19 17:33:36', '2022-01-19 17:33:36'),
(9, 'COSPJ', 'comercial@cospjelectroferragem.co.mz', '827575167', '400699542', 'Moçambique', 'AV.Guerra Popular nº 1477 R/C', 'Sidalia', '866575167', 'comercial@cospjelectroferragem.co.mz', 'Maputo', 1, '2022-01-19 17:43:32', '2022-01-19 17:43:32'),
(10, 'MIDAL CABLES', 'leonardo@midalcable.com', '21737400', '400408858', 'Moçambique', 'Parque Industrial Beluluane', 'Leonardo Schwalbach', '845172158', 'leonardo@midalcable.com', 'Maputo', 1, '2022-01-19 17:55:57', '2022-01-19 17:55:57'),
(11, 'EA-ELECTRO AFRICA,LDA', 'procurement@electroafrica.co.mz', '21421532', '400643741', 'Moçambique', 'Rua do Aveiro, nº25 R/C', 'Rayhan Khalid', '841163113', 'procurement@electroafrica.co.mz', 'Maputo', 1, '2022-01-19 22:08:34', '2022-01-19 22:08:34'),
(12, 'RETIFICADORA', 'fertel21@gmail.com', '848284505', NULL, 'Moçambique', 'AV.Lurdes Mutola nº306', 'Rui Bene', '848284505', 'fertel21@gmail.com', 'Maputo', 1, '2022-03-05 16:29:11', '2022-03-05 16:29:11'),
(13, 'ELECTROTEC', 'fernandocosta@electrotec.co.mz', '846607943', NULL, 'Moçambique', 'AV.De Moçambique', 'Francisco electrotec', '846607943', 'fernandocosta@electrotec.co.mz', 'Maputo', 1, '2022-03-05 17:30:36', '2022-03-05 17:30:36'),
(14, 'NIGBO MARSHINE POWER', 'sales@marshine.net', '008657486887181', NULL, 'China', 'Baoshar Road, Beilur', 'Garfield', '008657486887181', 'sales@marshine.net', 'Nigbo', 1, '2022-03-05 17:47:33', '2022-03-05 17:47:33'),
(15, 'BLACK AND WHITE', 'jorge@r2trucks.co.za', '845643680', NULL, 'Africa do sul', 'Durban', 'Jorge Fumo', '845643680', 'jorge@r2trucks.co.za', 'Johanesburg', 1, '2022-03-07 18:01:53', '2022-03-07 18:01:53'),
(16, 'QINDAO POWTECH ELECTRONICS', 'nicole.guo@powtech-cn.com', '86532859183678613608965318', NULL, 'China', 'QINGDAO', 'Nicole', '86532859183678613608965318', 'nicole.guo@powtech-cn.com', 'QINGDAO', 1, '2022-03-08 16:00:52', '2022-03-08 16:00:52'),
(17, 'GRUPO TESTOP', 'procurement@testop.co.mz', '849464657', NULL, 'Moçambique', 'AV.Karl Marx', 'Munir Sacoor', '849464657', 'procurement@testop.co.mz', 'Maputo', 1, '2022-03-28 15:35:20', '2022-03-28 15:35:20'),
(18, 'YONGJIU ELECTRIC POWER FITTING CO., LTD', 'sales5@yojiu.com', '8657761750086', NULL, 'China', 'Jiaxi Industrial Zone', 'Joyce', '8657761750086', 'sales5@yojiu.com', 'Zhejiang', 1, '2022-03-30 16:35:05', '2022-03-30 16:35:05'),
(19, 'FM EXIM', 'hiten@fmexim.com', '919820132902', NULL, 'India', 'Phadke Road Andheri East', 'Hitenn R Mehta', '919820132902', 'hiten@fmexim.com', 'Mumbai', 1, '2022-04-27 15:46:13', '2022-04-27 15:46:13'),
(20, 'PROENERGIA BAIXADAS XAI XA', 'projectos@testop.co.mz', '872592507', NULL, 'Moçambique', 'AV.Karl Marx', 'Euleuterio Guambe', '872592507', 'projectos@testop.co.mz', 'Maputo', 1, '2022-04-27 15:50:52', '2022-04-27 15:50:52'),
(21, 'PROENERGIA BAIXADAS CHOKWE', 'projectos@testop.co.mz', '872592507', NULL, 'Moçambique', 'AV.Karl Marx', 'Euleuterio Guambe', '872592507', 'projectos@testop.co.mz', 'Maputo', 1, '2022-04-27 15:57:35', '2022-04-27 15:57:35'),
(22, 'PROENERGIA BAIXADAS INHAMBANE', 'projectos@testop.co.mz', '872592507', NULL, 'Moçambique', 'AV.Karl Marx', 'Euleuterio Guambe', '872592507', 'projectos@testop.co.mz', 'Maputo', 1, '2022-04-27 16:05:42', '2022-04-27 16:05:42'),
(23, 'AUTO BAS', 'info@autobas.co.mz', '843030477', NULL, 'Moçambique', 'AV.De Moçambique', 'Mohamad Younus', '843030477', 'info@autobas.co.mz', 'Maputo', 1, '2022-04-27 16:24:12', '2022-04-27 16:24:12'),
(24, 'PROJECTO CHIPUTO TESTOP', 'projectos@testop.co.mz', '842592507', NULL, 'Moçambique', 'Chiputo', 'Euleuterio Guambe', '842592507', 'projectos@testop.co.mz', 'TETE', 1, '2022-05-11 20:00:59', '2022-05-11 20:00:59'),
(25, 'ADMINISTRACAO CAMIOES', 'projectos@testop.co.mz', '21328056', NULL, 'Moçambique', 'Rua do Aveiro nº35', 'Helder Chabela', '21328056', 'projectos@testop.co.mz', 'Maputo', 1, '2022-05-25 19:57:50', '2022-05-25 19:57:50'),
(26, 'DAWNLIGHTING', 'rachel@dawnlighting.net', '8615625371767', NULL, 'China', 'Guzhen,Zhongshan', 'Rachel Chen', '8615625371767', 'rachel@dawnlighting.net', 'Luosha Industrial Avenue', 1, '2022-05-31 21:09:56', '2022-05-31 21:09:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor_categorias`
--

CREATE TABLE `fornecedor_categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fornecedor_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fornecedor_categorias`
--

INSERT INTO `fornecedor_categorias` (`id`, `fornecedor_id`, `categoria_id`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 35, 1, 1, '2022-01-05 20:18:22', '2022-01-05 20:18:22'),
(2, 1, 37, 7, 1, '2022-01-06 13:43:00', '2022-01-06 13:43:00'),
(3, 3, 22, 7, 1, '2022-01-13 14:11:57', '2022-01-13 14:11:57'),
(4, 1, 8, 7, 1, '2022-01-18 15:49:32', '2022-01-18 15:49:32'),
(5, 1, 9, 7, 1, '2022-01-18 15:56:40', '2022-01-18 15:56:40'),
(6, 1, 10, 7, 1, '2022-01-18 15:56:53', '2022-01-18 15:56:53'),
(7, 1, 11, 7, 1, '2022-01-18 15:57:06', '2022-01-18 15:57:06'),
(8, 1, 12, 7, 1, '2022-01-18 15:57:19', '2022-01-18 15:57:19'),
(9, 1, 13, 7, 1, '2022-01-18 15:57:36', '2022-01-18 15:57:36'),
(10, 1, 14, 7, 1, '2022-01-18 15:57:48', '2022-01-18 15:57:48'),
(11, 1, 15, 7, 1, '2022-01-18 15:58:01', '2022-01-18 15:58:01'),
(12, 1, 16, 7, 1, '2022-01-18 15:58:15', '2022-01-18 15:58:15'),
(13, 1, 17, 7, 1, '2022-01-18 15:58:26', '2022-01-18 15:58:26'),
(14, 1, 18, 7, 1, '2022-01-18 15:58:40', '2022-01-18 15:58:40'),
(15, 1, 19, 7, 1, '2022-01-18 15:58:52', '2022-01-18 15:58:52'),
(16, 1, 20, 7, 1, '2022-01-18 15:59:05', '2022-01-18 15:59:05'),
(17, 1, 21, 7, 1, '2022-01-18 15:59:17', '2022-01-18 15:59:17'),
(18, 1, 22, 7, 1, '2022-01-18 15:59:29', '2022-01-18 15:59:29'),
(19, 1, 23, 7, 1, '2022-01-18 15:59:40', '2022-01-18 15:59:40'),
(20, 1, 24, 7, 1, '2022-01-18 15:59:54', '2022-01-18 15:59:54'),
(21, 1, 25, 7, 1, '2022-01-18 16:00:06', '2022-01-18 16:00:06'),
(22, 1, 26, 7, 1, '2022-01-18 16:00:27', '2022-01-18 16:00:27'),
(23, 1, 27, 7, 1, '2022-01-18 16:00:46', '2022-01-18 16:00:46'),
(24, 1, 28, 7, 1, '2022-01-18 16:01:01', '2022-01-18 16:01:01'),
(25, 1, 29, 7, 1, '2022-01-18 16:01:14', '2022-01-18 16:01:14'),
(26, 1, 31, 7, 1, '2022-01-18 16:01:25', '2022-01-18 16:01:25'),
(27, 1, 33, 7, 1, '2022-01-18 16:01:37', '2022-01-18 16:01:37'),
(28, 1, 36, 7, 1, '2022-01-18 16:01:51', '2022-01-18 16:01:51'),
(29, 1, 37, 7, 0, '2022-01-18 16:02:09', '2022-01-18 16:19:21'),
(30, 1, 2, 1, 1, '2022-01-18 16:06:13', '2022-01-18 16:06:13'),
(31, 1, 3, 1, 1, '2022-01-18 16:06:22', '2022-01-18 16:06:22'),
(32, 1, 4, 1, 1, '2022-01-18 16:06:28', '2022-01-18 16:06:28'),
(33, 1, 5, 1, 1, '2022-01-18 16:06:39', '2022-01-18 16:06:39'),
(34, 1, 6, 1, 1, '2022-01-18 16:06:46', '2022-01-18 16:06:46'),
(35, 1, 30, 1, 1, '2022-01-18 16:06:54', '2022-01-18 16:06:54'),
(36, 1, 32, 1, 1, '2022-01-18 16:07:03', '2022-01-18 16:07:03'),
(37, 1, 34, 1, 1, '2022-01-18 16:07:10', '2022-01-18 16:07:10'),
(38, 1, 35, 1, 0, '2022-01-18 16:07:18', '2022-01-18 16:18:35'),
(39, 3, 8, 7, 1, '2022-01-18 16:08:32', '2022-01-18 16:08:32'),
(40, 3, 9, 7, 1, '2022-01-18 16:08:42', '2022-01-18 16:08:42'),
(41, 3, 10, 7, 1, '2022-01-18 16:08:51', '2022-01-18 16:08:51'),
(42, 3, 11, 7, 1, '2022-01-18 16:09:06', '2022-01-18 16:09:06'),
(43, 3, 12, 7, 1, '2022-01-18 16:09:17', '2022-01-18 16:09:17'),
(44, 3, 13, 7, 1, '2022-01-18 16:09:27', '2022-01-18 16:09:27'),
(45, 3, 14, 7, 1, '2022-01-18 16:09:38', '2022-01-18 16:09:38'),
(46, 3, 14, 7, 0, '2022-01-18 16:09:50', '2022-01-18 16:17:15'),
(47, 3, 15, 7, 1, '2022-01-18 16:10:00', '2022-01-18 16:10:00'),
(48, 3, 16, 7, 1, '2022-01-18 16:10:16', '2022-01-18 16:10:16'),
(49, 3, 17, 7, 1, '2022-01-18 16:10:26', '2022-01-18 16:10:26'),
(50, 3, 18, 7, 1, '2022-01-18 16:10:36', '2022-01-18 16:10:36'),
(51, 3, 18, 7, 0, '2022-01-18 16:10:55', '2022-01-18 16:17:29'),
(52, 3, 19, 7, 1, '2022-01-18 16:11:06', '2022-01-18 16:11:06'),
(53, 3, 19, 7, 0, '2022-01-18 16:11:20', '2022-01-18 16:17:42'),
(54, 3, 20, 7, 1, '2022-01-18 16:11:30', '2022-01-18 16:11:30'),
(55, 3, 21, 7, 1, '2022-01-18 16:11:44', '2022-01-18 16:11:44'),
(56, 3, 22, 7, 0, '2022-01-18 16:11:55', '2022-01-18 16:16:57'),
(57, 3, 23, 7, 1, '2022-01-18 16:12:06', '2022-01-18 16:12:06'),
(58, 3, 24, 7, 1, '2022-01-18 16:12:18', '2022-01-18 16:12:18'),
(59, 3, 25, 7, 1, '2022-01-18 16:12:29', '2022-01-18 16:12:29'),
(60, 3, 26, 7, 1, '2022-01-18 16:12:49', '2022-01-18 16:12:49'),
(61, 3, 27, 7, 1, '2022-01-18 16:13:04', '2022-01-18 16:13:04'),
(62, 3, 28, 7, 1, '2022-01-18 16:13:18', '2022-01-18 16:13:18'),
(63, 3, 29, 7, 1, '2022-01-18 16:13:38', '2022-01-18 16:13:38'),
(64, 3, 31, 7, 1, '2022-01-18 16:13:59', '2022-01-18 16:13:59'),
(65, 3, 31, 7, 0, '2022-01-18 16:14:26', '2022-01-18 16:17:56'),
(66, 3, 33, 7, 1, '2022-01-18 16:14:37', '2022-01-18 16:14:37'),
(67, 3, 36, 7, 1, '2022-01-18 16:14:50', '2022-01-18 16:14:50'),
(68, 3, 37, 7, 1, '2022-01-18 16:15:07', '2022-01-18 16:15:07'),
(69, 3, 2, 1, 1, '2022-01-18 16:15:17', '2022-01-18 16:15:17'),
(70, 3, 3, 1, 1, '2022-01-18 16:15:25', '2022-01-18 16:15:25'),
(71, 3, 4, 1, 1, '2022-01-18 16:15:35', '2022-01-18 16:15:35'),
(72, 3, 5, 1, 1, '2022-01-18 16:15:43', '2022-01-18 16:15:43'),
(73, 3, 6, 1, 1, '2022-01-18 16:15:50', '2022-01-18 16:15:50'),
(74, 3, 30, 1, 1, '2022-01-18 16:15:58', '2022-01-18 16:15:58'),
(75, 3, 32, 1, 1, '2022-01-18 16:16:06', '2022-01-18 16:16:06'),
(76, 3, 34, 1, 1, '2022-01-18 16:16:16', '2022-01-18 16:16:16'),
(77, 3, 35, 1, 1, '2022-01-18 16:16:24', '2022-01-18 16:16:24'),
(78, 4, 8, 7, 1, '2022-01-18 16:54:22', '2022-01-18 16:54:22'),
(79, 4, 9, 7, 1, '2022-01-18 16:54:33', '2022-01-18 16:54:33'),
(80, 4, 10, 7, 1, '2022-01-18 16:54:42', '2022-01-18 16:54:42'),
(81, 4, 11, 7, 1, '2022-01-18 16:54:52', '2022-01-18 16:54:52'),
(82, 4, 12, 7, 1, '2022-01-18 16:55:02', '2022-01-18 16:55:02'),
(83, 4, 13, 7, 1, '2022-01-18 16:55:10', '2022-01-18 16:55:10'),
(84, 4, 14, 7, 1, '2022-01-18 16:55:19', '2022-01-18 16:55:19'),
(85, 4, 15, 7, 1, '2022-01-18 16:55:28', '2022-01-18 16:55:28'),
(86, 4, 16, 7, 1, '2022-01-18 16:55:37', '2022-01-18 16:55:37'),
(87, 4, 16, 7, 1, '2022-01-18 16:55:56', '2022-01-18 16:55:56'),
(88, 4, 17, 7, 1, '2022-01-18 16:56:08', '2022-01-18 16:56:08'),
(89, 4, 18, 7, 1, '2022-01-18 16:56:21', '2022-01-18 16:56:21'),
(90, 4, 19, 7, 1, '2022-01-18 16:56:30', '2022-01-18 16:56:30'),
(91, 4, 20, 7, 1, '2022-01-18 16:56:40', '2022-01-18 16:56:40'),
(92, 4, 21, 7, 1, '2022-01-18 16:56:49', '2022-01-18 16:56:49'),
(93, 4, 22, 7, 1, '2022-01-18 16:56:59', '2022-01-18 16:56:59'),
(94, 4, 23, 7, 1, '2022-01-18 16:57:07', '2022-01-18 16:57:07'),
(95, 4, 24, 7, 1, '2022-01-18 16:57:18', '2022-01-18 16:57:18'),
(96, 4, 25, 7, 1, '2022-01-18 16:57:32', '2022-01-18 16:57:32'),
(97, 4, 26, 7, 1, '2022-01-18 16:57:41', '2022-01-18 16:57:41'),
(98, 4, 27, 7, 1, '2022-01-18 16:57:55', '2022-01-18 16:57:55'),
(99, 4, 28, 7, 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(100, 4, 29, 7, 1, '2022-01-18 16:58:16', '2022-01-18 16:58:16'),
(101, 4, 31, 7, 1, '2022-01-18 16:58:28', '2022-01-18 16:58:28'),
(102, 4, 33, 7, 1, '2022-01-18 16:58:41', '2022-01-18 16:58:41'),
(103, 4, 36, 7, 1, '2022-01-18 16:58:50', '2022-01-18 16:58:50'),
(104, 4, 37, 7, 1, '2022-01-18 16:59:00', '2022-01-18 16:59:00'),
(105, 4, 2, 1, 1, '2022-01-18 16:59:09', '2022-01-18 16:59:09'),
(106, 4, 3, 1, 1, '2022-01-18 16:59:20', '2022-01-18 16:59:20'),
(107, 4, 4, 1, 1, '2022-01-18 16:59:26', '2022-01-18 16:59:26'),
(108, 4, 5, 1, 1, '2022-01-18 16:59:33', '2022-01-18 16:59:33'),
(109, 4, 6, 1, 1, '2022-01-18 16:59:41', '2022-01-18 16:59:41'),
(110, 4, 30, 1, 1, '2022-01-18 16:59:47', '2022-01-18 16:59:47'),
(111, 4, 32, 1, 1, '2022-01-18 16:59:52', '2022-01-18 16:59:52'),
(112, 4, 34, 1, 1, '2022-01-18 16:59:59', '2022-01-18 16:59:59'),
(113, 4, 35, 1, 1, '2022-01-18 17:00:04', '2022-01-18 17:00:04'),
(114, 5, 2, 1, 1, '2022-01-18 17:19:20', '2022-01-18 17:19:20'),
(115, 5, 3, 1, 1, '2022-01-18 17:19:27', '2022-01-18 17:19:27'),
(116, 5, 4, 1, 1, '2022-01-18 17:19:33', '2022-01-18 17:19:33'),
(117, 5, 5, 1, 1, '2022-01-18 17:19:39', '2022-01-18 17:19:39'),
(118, 5, 6, 1, 1, '2022-01-18 17:19:46', '2022-01-18 17:19:46'),
(119, 5, 30, 1, 1, '2022-01-18 17:19:54', '2022-01-18 17:19:54'),
(120, 5, 32, 1, 1, '2022-01-18 17:20:00', '2022-01-18 17:20:00'),
(121, 5, 34, 1, 1, '2022-01-18 17:20:06', '2022-01-18 17:20:06'),
(122, 5, 35, 1, 1, '2022-01-18 17:20:15', '2022-01-18 17:20:15'),
(123, 5, 8, 7, 1, '2022-01-18 17:20:29', '2022-01-18 17:20:29'),
(124, 5, 9, 7, 1, '2022-01-18 17:20:37', '2022-01-18 17:20:37'),
(125, 5, 10, 7, 1, '2022-01-18 17:20:44', '2022-01-18 17:20:44'),
(126, 5, 11, 7, 1, '2022-01-18 17:20:51', '2022-01-18 17:20:51'),
(127, 5, 12, 7, 1, '2022-01-18 17:20:59', '2022-01-18 17:20:59'),
(128, 5, 13, 7, 1, '2022-01-18 17:21:06', '2022-01-18 17:21:06'),
(129, 5, 14, 7, 1, '2022-01-18 17:21:14', '2022-01-18 17:21:14'),
(130, 5, 15, 7, 1, '2022-01-18 17:21:31', '2022-01-18 17:21:31'),
(131, 5, 16, 7, 1, '2022-01-18 17:21:41', '2022-01-18 17:21:41'),
(132, 5, 17, 7, 1, '2022-01-18 17:21:51', '2022-01-18 17:21:51'),
(133, 5, 18, 7, 1, '2022-01-18 17:21:58', '2022-01-18 17:21:58'),
(134, 5, 19, 7, 1, '2022-01-18 17:22:07', '2022-01-18 17:22:07'),
(135, 5, 20, 7, 1, '2022-01-18 17:22:16', '2022-01-18 17:22:16'),
(136, 5, 21, 7, 1, '2022-01-18 17:22:26', '2022-01-18 17:22:26'),
(137, 5, 22, 7, 1, '2022-01-18 17:22:35', '2022-01-18 17:22:35'),
(138, 5, 23, 7, 1, '2022-01-18 17:22:43', '2022-01-18 17:22:43'),
(139, 5, 24, 7, 1, '2022-01-18 17:22:56', '2022-01-18 17:22:56'),
(140, 5, 25, 7, 1, '2022-01-18 17:23:04', '2022-01-18 17:23:04'),
(141, 5, 26, 7, 1, '2022-01-18 17:23:12', '2022-01-18 17:23:12'),
(142, 5, 27, 7, 1, '2022-01-18 17:23:22', '2022-01-18 17:23:22'),
(143, 5, 28, 7, 1, '2022-01-18 17:23:31', '2022-01-18 17:23:31'),
(144, 5, 29, 7, 1, '2022-01-18 17:23:42', '2022-01-18 17:23:42'),
(145, 5, 29, 7, 1, '2022-01-18 17:24:00', '2022-01-18 17:24:00'),
(146, 5, 31, 7, 1, '2022-01-18 17:24:13', '2022-01-18 17:24:13'),
(147, 5, 33, 7, 1, '2022-01-18 17:24:26', '2022-01-18 17:24:26'),
(148, 5, 36, 7, 1, '2022-01-18 17:24:35', '2022-01-18 17:24:35'),
(149, 5, 37, 7, 1, '2022-01-18 17:24:51', '2022-01-18 17:24:51'),
(150, 6, 2, 1, 1, '2022-01-18 18:05:07', '2022-01-18 18:05:07'),
(151, 6, 3, 1, 1, '2022-01-18 18:05:13', '2022-01-18 18:05:13'),
(152, 6, 4, 1, 1, '2022-01-18 18:05:21', '2022-01-18 18:05:21'),
(153, 6, 2, 1, 1, '2022-01-18 18:05:24', '2022-01-18 18:05:24'),
(154, 6, 5, 1, 1, '2022-01-18 18:05:33', '2022-01-18 18:05:33'),
(155, 6, 6, 1, 1, '2022-01-18 18:05:45', '2022-01-18 18:05:45'),
(156, 6, 30, 1, 1, '2022-01-18 18:05:50', '2022-01-18 18:05:50'),
(157, 6, 32, 1, 1, '2022-01-18 18:05:58', '2022-01-18 18:05:58'),
(158, 6, 32, 1, 1, '2022-01-18 18:06:05', '2022-01-18 18:06:05'),
(159, 6, 34, 1, 1, '2022-01-18 18:06:13', '2022-01-18 18:06:13'),
(160, 6, 35, 1, 1, '2022-01-18 18:06:21', '2022-01-18 18:06:21'),
(161, 6, 8, 7, 1, '2022-01-18 18:06:34', '2022-01-18 18:06:34'),
(162, 6, 9, 7, 1, '2022-01-18 18:06:42', '2022-01-18 18:06:42'),
(163, 6, 10, 7, 1, '2022-01-18 18:06:51', '2022-01-18 18:06:51'),
(164, 6, 11, 7, 1, '2022-01-18 18:06:59', '2022-01-18 18:06:59'),
(165, 6, 12, 7, 1, '2022-01-18 18:07:07', '2022-01-18 18:07:07'),
(166, 6, 13, 7, 1, '2022-01-18 18:07:16', '2022-01-18 18:07:16'),
(167, 6, 14, 7, 1, '2022-01-18 18:07:28', '2022-01-18 18:07:28'),
(168, 6, 15, 7, 1, '2022-01-18 18:07:36', '2022-01-18 18:07:36'),
(169, 6, 16, 7, 1, '2022-01-18 18:07:45', '2022-01-18 18:07:45'),
(170, 6, 17, 7, 1, '2022-01-18 18:07:55', '2022-01-18 18:07:55'),
(171, 6, 18, 7, 1, '2022-01-18 18:08:05', '2022-01-18 18:08:05'),
(172, 6, 19, 7, 1, '2022-01-18 18:08:15', '2022-01-18 18:08:15'),
(173, 6, 20, 7, 1, '2022-01-18 18:08:45', '2022-01-18 18:08:45'),
(174, 6, 21, 7, 1, '2022-01-18 18:09:00', '2022-01-18 18:09:00'),
(175, 6, 21, 7, 1, '2022-01-18 18:09:17', '2022-01-18 18:09:17'),
(176, 6, 22, 7, 1, '2022-01-18 18:09:27', '2022-01-18 18:09:27'),
(177, 6, 23, 7, 1, '2022-01-18 18:09:36', '2022-01-18 18:09:36'),
(178, 6, 24, 7, 1, '2022-01-18 18:09:54', '2022-01-18 18:09:54'),
(179, 6, 25, 7, 1, '2022-01-18 18:11:59', '2022-01-18 18:11:59'),
(180, 6, 26, 7, 1, '2022-01-18 18:12:08', '2022-01-18 18:12:08'),
(181, 6, 27, 7, 1, '2022-01-18 18:12:20', '2022-01-18 18:12:20'),
(182, 6, 28, 7, 1, '2022-01-18 18:12:29', '2022-01-18 18:12:29'),
(183, 6, 29, 7, 1, '2022-01-18 18:12:38', '2022-01-18 18:12:38'),
(184, 6, 31, 7, 1, '2022-01-18 18:12:48', '2022-01-18 18:12:48'),
(185, 6, 33, 7, 1, '2022-01-18 18:12:57', '2022-01-18 18:12:57'),
(186, 6, 36, 7, 1, '2022-01-18 18:13:08', '2022-01-18 18:13:08'),
(187, 6, 37, 7, 1, '2022-01-18 18:13:19', '2022-01-18 18:13:19'),
(188, 8, 2, 1, 1, '2022-01-19 17:33:45', '2022-01-19 17:33:45'),
(189, 8, 3, 1, 1, '2022-01-19 17:33:51', '2022-01-19 17:33:51'),
(190, 8, 4, 1, 1, '2022-01-19 17:33:57', '2022-01-19 17:33:57'),
(191, 8, 5, 1, 1, '2022-01-19 17:34:03', '2022-01-19 17:34:03'),
(192, 8, 6, 1, 1, '2022-01-19 17:34:10', '2022-01-19 17:34:10'),
(193, 8, 30, 1, 1, '2022-01-19 17:34:17', '2022-01-19 17:34:17'),
(194, 8, 32, 1, 1, '2022-01-19 17:34:23', '2022-01-19 17:34:23'),
(195, 8, 34, 1, 1, '2022-01-19 17:34:29', '2022-01-19 17:34:29'),
(196, 8, 35, 1, 1, '2022-01-19 17:34:35', '2022-01-19 17:34:35'),
(197, 8, 8, 7, 1, '2022-01-19 17:34:45', '2022-01-19 17:34:45'),
(198, 8, 9, 7, 1, '2022-01-19 17:34:54', '2022-01-19 17:34:54'),
(199, 8, 10, 7, 1, '2022-01-19 17:35:09', '2022-01-19 17:35:09'),
(200, 8, 11, 7, 1, '2022-01-19 17:35:16', '2022-01-19 17:35:16'),
(201, 8, 12, 7, 1, '2022-01-19 17:35:25', '2022-01-19 17:35:25'),
(202, 8, 13, 7, 1, '2022-01-19 17:35:37', '2022-01-19 17:35:37'),
(203, 8, 14, 7, 1, '2022-01-19 17:35:45', '2022-01-19 17:35:45'),
(204, 8, 15, 7, 1, '2022-01-19 17:35:56', '2022-01-19 17:35:56'),
(205, 8, 16, 7, 1, '2022-01-19 17:36:06', '2022-01-19 17:36:06'),
(206, 8, 17, 7, 1, '2022-01-19 17:36:15', '2022-01-19 17:36:15'),
(207, 8, 18, 7, 1, '2022-01-19 17:36:25', '2022-01-19 17:36:25'),
(208, 8, 19, 7, 1, '2022-01-19 17:36:35', '2022-01-19 17:36:35'),
(209, 8, 20, 7, 1, '2022-01-19 17:36:44', '2022-01-19 17:36:44'),
(210, 8, 21, 7, 1, '2022-01-19 17:36:56', '2022-01-19 17:36:56'),
(211, 8, 22, 7, 1, '2022-01-19 17:37:05', '2022-01-19 17:37:05'),
(212, 8, 23, 7, 1, '2022-01-19 17:37:13', '2022-01-19 17:37:13'),
(213, 8, 24, 7, 1, '2022-01-19 17:37:24', '2022-01-19 17:37:24'),
(214, 8, 25, 7, 1, '2022-01-19 17:37:33', '2022-01-19 17:37:33'),
(215, 8, 26, 7, 1, '2022-01-19 17:37:43', '2022-01-19 17:37:43'),
(216, 8, 27, 7, 1, '2022-01-19 17:37:55', '2022-01-19 17:37:55'),
(217, 8, 28, 7, 1, '2022-01-19 17:38:06', '2022-01-19 17:38:06'),
(218, 8, 29, 7, 1, '2022-01-19 17:38:18', '2022-01-19 17:38:18'),
(219, 8, 31, 7, 1, '2022-01-19 17:38:32', '2022-01-19 17:38:32'),
(220, 8, 33, 7, 1, '2022-01-19 17:38:42', '2022-01-19 17:38:42'),
(221, 8, 36, 7, 1, '2022-01-19 17:38:53', '2022-01-19 17:38:53'),
(222, 8, 37, 7, 1, '2022-01-19 17:39:02', '2022-01-19 17:39:02'),
(223, 9, 2, 1, 1, '2022-01-19 17:43:42', '2022-01-19 17:43:42'),
(224, 9, 3, 1, 1, '2022-01-19 17:43:48', '2022-01-19 17:43:48'),
(225, 9, 4, 1, 1, '2022-01-19 17:43:54', '2022-01-19 17:43:54'),
(226, 9, 5, 1, 1, '2022-01-19 17:44:01', '2022-01-19 17:44:01'),
(227, 9, 6, 1, 1, '2022-01-19 17:44:07', '2022-01-19 17:44:07'),
(228, 9, 30, 1, 1, '2022-01-19 17:44:13', '2022-01-19 17:44:13'),
(229, 9, 32, 1, 1, '2022-01-19 17:44:30', '2022-01-19 17:44:30'),
(230, 9, 34, 1, 1, '2022-01-19 17:44:36', '2022-01-19 17:44:36'),
(231, 9, 35, 1, 1, '2022-01-19 17:44:41', '2022-01-19 17:44:41'),
(232, 9, 8, 7, 1, '2022-01-19 17:44:53', '2022-01-19 17:44:53'),
(233, 9, 9, 7, 1, '2022-01-19 17:45:00', '2022-01-19 17:45:00'),
(234, 9, 10, 7, 1, '2022-01-19 17:45:09', '2022-01-19 17:45:09'),
(235, 9, 11, 7, 1, '2022-01-19 17:45:20', '2022-01-19 17:45:20'),
(236, 9, 12, 7, 1, '2022-01-19 17:45:29', '2022-01-19 17:45:29'),
(237, 9, 13, 7, 1, '2022-01-19 17:45:39', '2022-01-19 17:45:39'),
(238, 9, 14, 7, 1, '2022-01-19 17:45:51', '2022-01-19 17:45:51'),
(239, 9, 15, 7, 1, '2022-01-19 17:46:02', '2022-01-19 17:46:02'),
(240, 9, 16, 7, 1, '2022-01-19 17:46:14', '2022-01-19 17:46:14'),
(241, 9, 17, 7, 1, '2022-01-19 17:46:24', '2022-01-19 17:46:24'),
(242, 9, 18, 7, 1, '2022-01-19 17:46:34', '2022-01-19 17:46:34'),
(243, 9, 19, 7, 1, '2022-01-19 17:46:44', '2022-01-19 17:46:44'),
(244, 9, 20, 7, 1, '2022-01-19 17:47:00', '2022-01-19 17:47:00'),
(245, 9, 21, 7, 1, '2022-01-19 17:47:19', '2022-01-19 17:47:19'),
(246, 9, 22, 7, 1, '2022-01-19 17:47:33', '2022-01-19 17:47:33'),
(247, 9, 23, 7, 1, '2022-01-19 17:47:42', '2022-01-19 17:47:42'),
(248, 9, 24, 7, 1, '2022-01-19 17:47:51', '2022-01-19 17:47:51'),
(249, 9, 25, 7, 1, '2022-01-19 17:48:00', '2022-01-19 17:48:00'),
(250, 9, 26, 7, 1, '2022-01-19 17:48:15', '2022-01-19 17:48:15'),
(251, 9, 28, 7, 1, '2022-01-19 17:48:28', '2022-01-19 17:48:28'),
(252, 9, 27, 7, 1, '2022-01-19 17:48:45', '2022-01-19 17:48:45'),
(253, 9, 28, 7, 1, '2022-01-19 17:48:56', '2022-01-19 17:48:56'),
(254, 9, 29, 7, 1, '2022-01-19 17:49:09', '2022-01-19 17:49:09'),
(255, 9, 29, 7, 1, '2022-01-19 17:49:28', '2022-01-19 17:49:28'),
(256, 9, 31, 7, 1, '2022-01-19 17:49:47', '2022-01-19 17:49:47'),
(257, 9, 33, 7, 1, '2022-01-19 17:50:03', '2022-01-19 17:50:03'),
(258, 9, 36, 7, 1, '2022-01-19 17:50:13', '2022-01-19 17:50:13'),
(259, 9, 37, 7, 1, '2022-01-19 17:50:24', '2022-01-19 17:50:24'),
(260, 10, 37, 7, 1, '2022-01-19 17:56:12', '2022-01-19 17:56:12'),
(261, 11, 2, 1, 1, '2022-01-19 22:08:43', '2022-01-19 22:08:43'),
(262, 11, 3, 1, 1, '2022-01-19 22:08:50', '2022-01-19 22:08:50'),
(263, 11, 4, 1, 1, '2022-01-19 22:09:01', '2022-01-19 22:09:01'),
(264, 11, 5, 1, 1, '2022-01-19 22:09:06', '2022-01-19 22:09:06'),
(265, 11, 6, 1, 1, '2022-01-19 22:09:15', '2022-01-19 22:09:15'),
(266, 11, 30, 1, 1, '2022-01-19 22:09:23', '2022-01-19 22:09:23'),
(267, 11, 32, 1, 1, '2022-01-19 22:09:35', '2022-01-19 22:09:35'),
(268, 11, 34, 1, 1, '2022-01-19 22:09:43', '2022-01-19 22:09:43'),
(269, 11, 35, 1, 1, '2022-01-19 22:09:50', '2022-01-19 22:09:50'),
(270, 11, 8, 7, 1, '2022-01-19 22:10:03', '2022-01-19 22:10:03'),
(271, 11, 9, 7, 1, '2022-01-19 22:10:13', '2022-01-19 22:10:13'),
(272, 11, 10, 7, 1, '2022-01-19 22:10:21', '2022-01-19 22:10:21'),
(273, 11, 12, 7, 1, '2022-01-19 22:10:36', '2022-01-19 22:10:36'),
(274, 11, 11, 7, 1, '2022-01-19 22:10:45', '2022-01-19 22:10:45'),
(275, 11, 13, 7, 1, '2022-01-19 22:10:55', '2022-01-19 22:10:55'),
(276, 11, 14, 7, 1, '2022-01-19 22:11:05', '2022-01-19 22:11:05'),
(277, 11, 15, 7, 1, '2022-01-19 22:11:15', '2022-01-19 22:11:15'),
(278, 11, 16, 7, 1, '2022-01-19 22:11:24', '2022-01-19 22:11:24'),
(279, 11, 17, 7, 1, '2022-01-19 22:11:40', '2022-01-19 22:11:40'),
(280, 11, 18, 7, 1, '2022-01-19 22:11:52', '2022-01-19 22:11:52'),
(281, 11, 19, 7, 1, '2022-01-19 22:12:06', '2022-01-19 22:12:06'),
(282, 11, 20, 7, 1, '2022-01-19 22:12:43', '2022-01-19 22:12:43'),
(283, 11, 21, 7, 1, '2022-01-19 22:12:53', '2022-01-19 22:12:53'),
(284, 11, 22, 7, 1, '2022-01-19 22:13:02', '2022-01-19 22:13:02'),
(285, 11, 23, 7, 1, '2022-01-19 22:13:11', '2022-01-19 22:13:11'),
(286, 11, 24, 7, 1, '2022-01-19 22:13:22', '2022-01-19 22:13:22'),
(287, 11, 25, 7, 1, '2022-01-19 22:13:31', '2022-01-19 22:13:31'),
(288, 11, 26, 7, 1, '2022-01-19 22:13:40', '2022-01-19 22:13:40'),
(289, 11, 27, 7, 1, '2022-01-19 22:13:50', '2022-01-19 22:13:50'),
(290, 11, 28, 7, 1, '2022-01-19 22:14:02', '2022-01-19 22:14:02'),
(291, 11, 29, 7, 1, '2022-01-19 22:14:13', '2022-01-19 22:14:13'),
(292, 11, 31, 7, 1, '2022-01-19 22:14:23', '2022-01-19 22:14:23'),
(293, 11, 33, 7, 1, '2022-01-19 22:14:31', '2022-01-19 22:14:31'),
(294, 11, 36, 7, 1, '2022-01-19 22:14:41', '2022-01-19 22:14:41'),
(295, 11, 37, 7, 1, '2022-01-19 22:14:51', '2022-01-19 22:14:51'),
(296, 12, 10, 7, 1, '2022-03-05 16:32:37', '2022-03-05 16:32:37'),
(297, 13, 23, 7, 1, '2022-03-05 17:30:52', '2022-03-05 17:30:52'),
(298, 14, 6, 1, 1, '2022-03-05 17:47:49', '2022-03-05 17:47:49'),
(299, 15, 35, 1, 1, '2022-03-07 18:02:13', '2022-03-07 18:02:13'),
(300, 16, 10, 7, 1, '2022-03-08 16:01:44', '2022-03-08 16:01:44'),
(301, 16, 8, 7, 1, '2022-03-08 16:01:59', '2022-03-08 16:01:59'),
(302, 16, 9, 7, 1, '2022-03-08 16:02:10', '2022-03-08 16:02:10'),
(303, 16, 11, 7, 1, '2022-03-08 16:02:21', '2022-03-08 16:02:21'),
(304, 16, 12, 7, 1, '2022-03-08 16:02:31', '2022-03-08 16:02:31'),
(305, 16, 13, 7, 1, '2022-03-08 16:02:40', '2022-03-08 16:02:40'),
(306, 16, 14, 7, 1, '2022-03-08 16:02:49', '2022-03-08 16:02:49'),
(307, 16, 15, 7, 1, '2022-03-08 16:03:02', '2022-03-08 16:03:02'),
(308, 16, 16, 7, 1, '2022-03-08 16:03:12', '2022-03-08 16:03:12'),
(309, 16, 17, 7, 1, '2022-03-08 16:03:23', '2022-03-08 16:03:23'),
(310, 16, 18, 7, 1, '2022-03-08 16:03:35', '2022-03-08 16:03:35'),
(311, 16, 19, 7, 1, '2022-03-08 16:03:46', '2022-03-08 16:03:46'),
(312, 16, 20, 7, 1, '2022-03-08 16:03:59', '2022-03-08 16:03:59'),
(313, 16, 21, 7, 1, '2022-03-08 16:04:09', '2022-03-08 16:04:09'),
(314, 16, 22, 7, 1, '2022-03-08 16:04:20', '2022-03-08 16:04:20'),
(315, 16, 23, 7, 1, '2022-03-08 16:04:31', '2022-03-08 16:04:31'),
(316, 16, 24, 7, 1, '2022-03-08 16:04:47', '2022-03-08 16:04:47'),
(317, 16, 25, 7, 1, '2022-03-08 16:05:03', '2022-03-08 16:05:03'),
(318, 16, 26, 7, 1, '2022-03-08 16:05:29', '2022-03-08 16:05:29'),
(319, 16, 6, 1, 1, '2022-03-08 16:06:20', '2022-03-08 16:06:20'),
(320, 16, 3, 1, 1, '2022-03-08 16:06:37', '2022-03-08 16:06:37'),
(321, 16, 6, 1, 1, '2022-03-08 16:06:53', '2022-03-08 16:06:53'),
(322, 16, 34, 1, 1, '2022-03-08 16:07:18', '2022-03-08 16:07:18'),
(323, 16, 30, 1, 1, '2022-03-08 16:07:33', '2022-03-08 16:07:33'),
(324, 16, 30, 1, 1, '2022-03-08 16:07:35', '2022-03-08 16:07:35'),
(325, 16, 5, 1, 1, '2022-03-08 16:07:54', '2022-03-08 16:07:54'),
(326, 18, 3, 1, 1, '2022-03-30 16:35:32', '2022-03-30 16:35:32'),
(327, 18, 4, 1, 1, '2022-03-30 16:35:40', '2022-03-30 16:35:40'),
(328, 18, 5, 1, 1, '2022-03-30 16:35:49', '2022-03-30 16:35:49'),
(329, 18, 6, 1, 1, '2022-03-30 16:35:57', '2022-03-30 16:35:57'),
(330, 18, 30, 1, 1, '2022-03-30 16:36:05', '2022-03-30 16:36:05'),
(331, 18, 32, 1, 1, '2022-03-30 16:36:12', '2022-03-30 16:36:12'),
(332, 18, 34, 1, 1, '2022-03-30 16:36:19', '2022-03-30 16:36:19'),
(333, 18, 35, 1, 1, '2022-03-30 16:36:26', '2022-03-30 16:36:26'),
(334, 18, 8, 7, 1, '2022-03-30 16:36:37', '2022-03-30 16:36:37'),
(335, 18, 9, 7, 1, '2022-03-30 16:36:45', '2022-03-30 16:36:45'),
(336, 18, 10, 7, 1, '2022-03-30 16:36:55', '2022-03-30 16:36:55'),
(337, 18, 11, 7, 1, '2022-03-30 16:37:06', '2022-03-30 16:37:06'),
(338, 18, 12, 7, 1, '2022-03-30 16:37:16', '2022-03-30 16:37:16'),
(339, 18, 13, 7, 1, '2022-03-30 16:37:25', '2022-03-30 16:37:25'),
(340, 18, 14, 7, 1, '2022-03-30 16:37:35', '2022-03-30 16:37:35'),
(341, 18, 15, 7, 1, '2022-03-30 16:37:46', '2022-03-30 16:37:46'),
(342, 18, 16, 7, 1, '2022-03-30 16:37:56', '2022-03-30 16:37:56'),
(343, 18, 17, 7, 1, '2022-03-30 16:38:06', '2022-03-30 16:38:06'),
(344, 18, 18, 7, 1, '2022-03-30 16:38:16', '2022-03-30 16:38:16'),
(345, 18, 19, 7, 1, '2022-03-30 16:38:27', '2022-03-30 16:38:27'),
(346, 18, 20, 7, 1, '2022-03-30 16:38:36', '2022-03-30 16:38:36'),
(347, 18, 21, 7, 1, '2022-03-30 16:38:47', '2022-03-30 16:38:47'),
(348, 18, 22, 7, 1, '2022-03-30 16:38:57', '2022-03-30 16:38:57'),
(349, 18, 23, 7, 1, '2022-03-30 16:39:06', '2022-03-30 16:39:06'),
(350, 18, 24, 7, 1, '2022-03-30 16:39:17', '2022-03-30 16:39:17'),
(351, 18, 25, 7, 1, '2022-03-30 16:39:27', '2022-03-30 16:39:27'),
(352, 18, 26, 7, 1, '2022-03-30 16:39:36', '2022-03-30 16:39:36'),
(353, 18, 27, 7, 1, '2022-03-30 16:39:50', '2022-03-30 16:39:50'),
(354, 18, 28, 7, 1, '2022-03-30 16:40:01', '2022-03-30 16:40:01'),
(355, 18, 29, 7, 1, '2022-03-30 16:40:11', '2022-03-30 16:40:11'),
(356, 18, 31, 7, 1, '2022-03-30 16:40:21', '2022-03-30 16:40:21'),
(357, 18, 33, 7, 1, '2022-03-30 16:40:32', '2022-03-30 16:40:32'),
(358, 18, 36, 7, 1, '2022-03-30 16:40:43', '2022-03-30 16:40:43'),
(359, 18, 37, 7, 1, '2022-03-30 16:40:55', '2022-03-30 16:40:55'),
(360, 19, 8, 7, 1, '2022-04-27 15:46:40', '2022-04-27 15:46:40'),
(361, 19, 9, 7, 1, '2022-04-27 15:46:49', '2022-04-27 15:46:49'),
(362, 19, 22, 7, 1, '2022-04-27 15:47:14', '2022-04-27 15:47:14'),
(363, 19, 37, 7, 1, '2022-04-27 15:47:29', '2022-04-27 15:47:29'),
(364, 20, 8, 7, 1, '2022-04-27 15:51:13', '2022-04-27 15:51:13'),
(365, 20, 10, 7, 1, '2022-04-27 15:51:24', '2022-04-27 15:51:24'),
(366, 20, 23, 7, 1, '2022-04-27 15:51:48', '2022-04-27 15:51:48'),
(367, 20, 24, 7, 1, '2022-04-27 15:51:58', '2022-04-27 15:51:58'),
(368, 20, 27, 7, 1, '2022-04-27 15:52:18', '2022-04-27 15:52:18'),
(369, 20, 28, 7, 1, '2022-04-27 15:52:32', '2022-04-27 15:52:32'),
(370, 20, 31, 7, 1, '2022-04-27 15:52:53', '2022-04-27 15:52:53'),
(371, 20, 33, 7, 1, '2022-04-27 15:53:05', '2022-04-27 15:53:05'),
(372, 20, 37, 7, 1, '2022-04-27 15:53:17', '2022-04-27 15:53:17'),
(373, 20, 2, 1, 1, '2022-04-27 15:53:55', '2022-04-27 15:53:55'),
(374, 20, 3, 1, 1, '2022-04-27 15:54:05', '2022-04-27 15:54:05'),
(375, 20, 5, 1, 1, '2022-04-27 15:54:13', '2022-04-27 15:54:13'),
(376, 20, 2, 1, 1, '2022-04-27 15:54:28', '2022-04-27 15:54:28'),
(377, 21, 8, 7, 1, '2022-04-27 15:58:09', '2022-04-27 15:58:09'),
(378, 21, 10, 7, 1, '2022-04-27 15:58:20', '2022-04-27 15:58:20'),
(379, 21, 23, 7, 1, '2022-04-27 15:58:36', '2022-04-27 15:58:36'),
(380, 21, 24, 7, 1, '2022-04-27 15:58:46', '2022-04-27 15:58:46'),
(381, 21, 23, 7, 1, '2022-04-27 15:59:08', '2022-04-27 15:59:08'),
(382, 21, 27, 7, 1, '2022-04-27 15:59:28', '2022-04-27 15:59:28'),
(383, 21, 28, 7, 1, '2022-04-27 16:02:48', '2022-04-27 16:02:48'),
(384, 21, 31, 7, 1, '2022-04-27 16:03:00', '2022-04-27 16:03:00'),
(385, 21, 33, 7, 1, '2022-04-27 16:03:11', '2022-04-27 16:03:11'),
(386, 21, 37, 7, 1, '2022-04-27 16:03:26', '2022-04-27 16:03:26'),
(387, 21, 2, 1, 1, '2022-04-27 16:03:33', '2022-04-27 16:03:33'),
(388, 21, 3, 1, 1, '2022-04-27 16:03:40', '2022-04-27 16:03:40'),
(389, 21, 5, 1, 1, '2022-04-27 16:03:49', '2022-04-27 16:03:49'),
(390, 22, 2, 1, 1, '2022-04-27 16:05:47', '2022-04-27 16:05:47'),
(391, 22, 3, 1, 1, '2022-04-27 16:05:54', '2022-04-27 16:05:54'),
(392, 22, 5, 1, 1, '2022-04-27 16:06:00', '2022-04-27 16:06:00'),
(393, 22, 8, 7, 1, '2022-04-27 16:06:10', '2022-04-27 16:06:10'),
(394, 22, 10, 7, 1, '2022-04-27 16:06:24', '2022-04-27 16:06:24'),
(395, 22, 23, 7, 1, '2022-04-27 16:06:41', '2022-04-27 16:06:41'),
(396, 22, 24, 7, 1, '2022-04-27 16:06:58', '2022-04-27 16:06:58'),
(397, 22, 27, 7, 1, '2022-04-27 16:07:18', '2022-04-27 16:07:18'),
(398, 22, 28, 7, 1, '2022-04-27 16:07:35', '2022-04-27 16:07:35'),
(399, 22, 31, 7, 1, '2022-04-27 16:08:02', '2022-04-27 16:08:02'),
(400, 22, 33, 7, 1, '2022-04-27 16:08:16', '2022-04-27 16:08:16'),
(401, 22, 37, 7, 1, '2022-04-27 16:08:43', '2022-04-27 16:08:43'),
(402, 23, 8, 7, 1, '2022-04-27 16:24:31', '2022-04-27 16:24:31'),
(403, 23, 9, 7, 1, '2022-04-27 16:24:41', '2022-04-27 16:24:41'),
(404, 23, 10, 7, 1, '2022-04-27 16:24:50', '2022-04-27 16:24:50'),
(405, 23, 11, 7, 1, '2022-04-27 16:25:00', '2022-04-27 16:25:00'),
(406, 23, 12, 7, 1, '2022-04-27 16:25:09', '2022-04-27 16:25:09'),
(407, 23, 13, 7, 1, '2022-04-27 16:25:18', '2022-04-27 16:25:18'),
(408, 23, 14, 7, 1, '2022-04-27 16:25:26', '2022-04-27 16:25:26'),
(409, 23, 15, 7, 1, '2022-04-27 16:25:35', '2022-04-27 16:25:35'),
(410, 23, 16, 7, 1, '2022-04-27 16:25:49', '2022-04-27 16:25:49'),
(411, 23, 17, 7, 1, '2022-04-27 16:26:00', '2022-04-27 16:26:00'),
(412, 23, 18, 7, 1, '2022-04-27 16:26:20', '2022-04-27 16:26:20'),
(413, 23, 19, 7, 1, '2022-04-27 16:26:33', '2022-04-27 16:26:33'),
(414, 23, 20, 7, 1, '2022-04-27 16:26:46', '2022-04-27 16:26:46'),
(415, 23, 21, 7, 1, '2022-04-27 16:26:56', '2022-04-27 16:26:56'),
(416, 23, 21, 7, 1, '2022-04-27 16:27:07', '2022-04-27 16:27:07'),
(417, 23, 22, 7, 1, '2022-04-27 16:27:17', '2022-04-27 16:27:17'),
(418, 23, 23, 7, 1, '2022-04-27 16:27:27', '2022-04-27 16:27:27'),
(419, 23, 24, 7, 1, '2022-04-27 16:27:36', '2022-04-27 16:27:36'),
(420, 23, 25, 7, 1, '2022-04-27 16:27:54', '2022-04-27 16:27:54'),
(421, 23, 26, 7, 1, '2022-04-27 16:28:04', '2022-04-27 16:28:04'),
(422, 23, 27, 7, 1, '2022-04-27 16:29:31', '2022-04-27 16:29:31'),
(423, 23, 28, 7, 1, '2022-04-27 16:29:42', '2022-04-27 16:29:42'),
(424, 23, 29, 7, 1, '2022-04-27 16:29:56', '2022-04-27 16:29:56'),
(425, 23, 31, 7, 1, '2022-04-27 16:30:08', '2022-04-27 16:30:08'),
(426, 23, 33, 7, 1, '2022-04-27 16:30:21', '2022-04-27 16:30:21'),
(427, 23, 36, 7, 1, '2022-04-27 16:30:35', '2022-04-27 16:30:35'),
(428, 23, 37, 7, 1, '2022-04-27 16:30:51', '2022-04-27 16:30:51'),
(429, 24, 8, 7, 1, '2022-05-11 20:01:17', '2022-05-11 20:01:17'),
(430, 24, 9, 7, 1, '2022-05-11 20:01:27', '2022-05-11 20:01:27'),
(431, 24, 10, 7, 1, '2022-05-11 20:01:36', '2022-05-11 20:01:36'),
(432, 24, 11, 7, 1, '2022-05-11 20:01:46', '2022-05-11 20:01:46'),
(433, 24, 12, 7, 1, '2022-05-11 20:01:57', '2022-05-11 20:01:57'),
(434, 24, 13, 7, 1, '2022-05-11 20:02:06', '2022-05-11 20:02:06'),
(435, 24, 14, 7, 1, '2022-05-11 20:02:17', '2022-05-11 20:02:17'),
(436, 24, 15, 7, 1, '2022-05-11 20:02:28', '2022-05-11 20:02:28'),
(437, 24, 16, 7, 1, '2022-05-11 20:02:39', '2022-05-11 20:02:39'),
(438, 24, 17, 7, 1, '2022-05-11 20:02:48', '2022-05-11 20:02:48'),
(439, 24, 18, 7, 1, '2022-05-11 20:03:03', '2022-05-11 20:03:03'),
(440, 24, 19, 7, 1, '2022-05-11 20:03:29', '2022-05-11 20:03:29'),
(441, 24, 20, 7, 1, '2022-05-11 20:03:41', '2022-05-11 20:03:41'),
(442, 24, 21, 7, 1, '2022-05-11 20:03:50', '2022-05-11 20:03:50'),
(443, 24, 21, 7, 1, '2022-05-11 20:05:45', '2022-05-11 20:05:45'),
(444, 24, 22, 7, 1, '2022-05-11 20:05:54', '2022-05-11 20:05:54'),
(445, 24, 23, 7, 1, '2022-05-11 20:06:05', '2022-05-11 20:06:05'),
(446, 24, 24, 7, 1, '2022-05-11 20:06:15', '2022-05-11 20:06:15'),
(447, 24, 25, 7, 1, '2022-05-11 20:06:24', '2022-05-11 20:06:24'),
(448, 24, 26, 7, 1, '2022-05-11 20:06:34', '2022-05-11 20:06:34'),
(449, 24, 27, 7, 1, '2022-05-11 20:06:47', '2022-05-11 20:06:47'),
(450, 24, 28, 7, 1, '2022-05-11 20:06:58', '2022-05-11 20:06:58'),
(451, 24, 29, 7, 1, '2022-05-11 20:07:12', '2022-05-11 20:07:12'),
(452, 24, 31, 7, 1, '2022-05-11 20:07:23', '2022-05-11 20:07:23'),
(453, 24, 33, 7, 1, '2022-05-11 20:07:32', '2022-05-11 20:07:32'),
(454, 24, 36, 7, 1, '2022-05-11 20:07:43', '2022-05-11 20:07:43'),
(455, 24, 37, 7, 1, '2022-05-11 20:07:54', '2022-05-11 20:07:54'),
(456, 26, 22, 7, 1, '2022-05-31 21:10:23', '2022-05-31 21:10:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guiadeentradas`
--

CREATE TABLE `guiadeentradas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MD057',
  `fornecedor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `responsavel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_da_fatura` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outros_documentos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `pendente` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Stock de normal 2 - Equipamento e Infrastrutura	',
  `projecto` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `origem` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Projecto 2 - Equipamento e Infraestrutura',
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envio` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `guiadeentradas`
--

INSERT INTO `guiadeentradas` (`id`, `numero_do_folheto`, `codigo_do_folheto`, `fornecedor_id`, `responsavel`, `numero_da_fatura`, `packing_list`, `outros_documentos`, `data`, `data_aprovacao`, `categoria_id`, `parent_id`, `pendente`, `status`, `elaborado_por`, `aprovado_por`, `editado_por`, `cancelado_por`, `impresso`, `nrDocumento`, `tipo`, `projecto`, `site`, `origem`, `motivo`, `envio`, `created_at`, `updated_at`) VALUES
(1, '0001/2022', 'MD057', 1, 'Osvaldo Banze', '485', NULL, NULL, '2022-06-21', '2022-06-21', NULL, NULL, 2, 1, 'Osvaldo Data: 21/06/2022  -  Hora: 15 : 54 : 00', 'Sadia DaudData: 21/06/2022  -  Hora: 16 : 17 : 17', NULL, NULL, NULL, '3953851', 1, NULL, NULL, 2, NULL, 1, '2022-06-21 13:54:00', '2022-06-21 14:17:17'),
(2, '0001/2022', 'MD057', NULL, 'Celso Banze', NULL, NULL, NULL, '2022-06-21', '2022-06-21', NULL, NULL, 2, 1, 'Celso Banze Data: 21/06/2022  -  Hora: 16 : 26 : 36', 'Osvaldo Data: 21/06/2022  -  Hora: 16 : 31 : 19', NULL, NULL, NULL, '4850175R', 1, 14, NULL, 1, NULL, 0, '2022-06-21 14:26:36', '2022-06-21 14:31:19'),
(3, '0002/2022', 'MD057', NULL, 'Celso Banze', NULL, NULL, NULL, '2022-06-22', '2022-06-22', NULL, NULL, 2, 1, 'Celso Banze Data: 22/06/2022  -  Hora: 14 : 23 : 07', 'Osvaldo Data: 22/06/2022  -  Hora: 14 : 24 : 59', NULL, NULL, NULL, '4850175R', 1, 14, NULL, 1, NULL, 0, '2022-06-22 12:23:07', '2022-06-22 12:24:59'),
(4, NULL, 'MD057', NULL, 'Osvaldo Banze', NULL, NULL, NULL, '2022-06-22', '2022-06-22', NULL, NULL, 2, 1, 'Osvaldo Data: 22/06/2022  -  Hora: 14 : 48 : 55', 'Osvaldo ', NULL, NULL, NULL, NULL, 1, 2, NULL, 1, 'w', 0, '2022-06-22 12:48:55', '2022-06-22 12:49:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_de_saidas`
--

CREATE TABLE `guia_de_saidas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisicaoArmazem_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MD057',
  `destino_do_material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requisitante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documentos_assoc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `data_do_documento` date DEFAULT NULL,
  `data_do_fornecimento` date DEFAULT NULL,
  `data_do_recebimento` date DEFAULT NULL,
  `levantado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fiel_do_armazem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assistente_do_armazem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Stock normal 2 - Equipamento e Infrastrutura',
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `projecto` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `origem` int(11) NOT NULL DEFAULT 1,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1-Projecto 2-Procurment',
  `pendente` int(11) NOT NULL DEFAULT 1,
  `envio` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `guia_de_saidas`
--

INSERT INTO `guia_de_saidas` (`id`, `requisicaoArmazem_id`, `numero_do_folheto`, `codigo_do_folheto`, `destino_do_material`, `requisitante`, `departamento`, `documentos_assoc`, `data`, `data_aprovacao`, `data_do_documento`, `data_do_fornecimento`, `data_do_recebimento`, `levantado_por`, `fiel_do_armazem`, `assistente_do_armazem`, `elaborado_por`, `aprovado_por`, `editado_por`, `cancelado_por`, `nrDocumento`, `tipo`, `impresso`, `status`, `projecto`, `site`, `origem`, `motivo`, `pendente`, `envio`, `created_at`, `updated_at`) VALUES
(1, 1, '0001/2022', 'MD057', NULL, 'Celso Banze', 'TI', '4850', NULL, '2022-06-21', '2022-06-21', '2022-06-21', '2022-06-21', 'Silvestre Banze', 'Celso', 'Deciderio Banze', 'Celso BanzeData: 21/06/2022  -  Hora: 16 : 22 : 33', 'Celso Banze Data: 21/06/2022  -  Hora: 16 : 26 : 36', NULL, NULL, '4850175R', 1, NULL, 1, 14, NULL, 2, NULL, 2, 0, '2022-06-21 14:22:33', '2022-06-21 14:26:36'),
(2, 2, '0002/2022', 'MD057', NULL, 'Celso Banze', 'TI', '4850', NULL, '2022-06-22', '2022-06-22', '2022-06-22', '2022-06-23', 'Silvestre Banze', 'Celso', 'Deciderio Banze', 'Celso BanzeData: 22/06/2022  -  Hora: 14 : 22 : 57', 'Celso Banze Data: 22/06/2022  -  Hora: 14 : 23 : 07', NULL, NULL, '4850175R', 1, NULL, 1, 14, NULL, 2, NULL, 2, 0, '2022-06-22 12:22:57', '2022-06-22 12:23:07'),
(3, NULL, NULL, 'MD057', NULL, 'Osvaldo ', NULL, NULL, NULL, '2022-06-22', '2022-06-22', NULL, '2022-06-22', NULL, NULL, NULL, 'Osvaldo Data: 22/06/2022  -  Hora: 14 : 43 : 12', 'Osvaldo ', NULL, NULL, NULL, 1, NULL, 1, 2, NULL, 1, 'Testes', 2, 0, '2022-06-22 12:43:12', '2022-06-22 12:44:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_de_transportes`
--

CREATE TABLE `guia_de_transportes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guiaSaida_id` bigint(20) UNSIGNED NOT NULL,
  `numero_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MD057',
  `local_de_descarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_de_carga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinatario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date NOT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `responsavel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendente` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `nuit_do_destinatario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viatura_marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motorista` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carta_de_conducao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_de_emissao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1-Stock normal 2 - Equipamento e Infraestrutura',
  `projecto` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_entrada__produtos`
--

CREATE TABLE `guia_entrada__produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guiaEntrada_id` bigint(20) UNSIGNED NOT NULL,
  `produto_id` bigint(20) UNSIGNED NOT NULL,
  `quantidade` double DEFAULT NULL,
  `custo_unitario` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `guia_entrada__produtos`
--

INSERT INTO `guia_entrada__produtos` (`id`, `guiaEntrada_id`, `produto_id`, `quantidade`, `custo_unitario`, `valor`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 5000, NULL, 1, '2022-06-21 13:54:11', '2022-06-21 13:54:11'),
(2, 1, 2, 200, NULL, NULL, 1, '2022-06-21 13:54:18', '2022-06-21 13:54:18'),
(3, 1, 3, 300, NULL, NULL, 1, '2022-06-21 13:54:23', '2022-06-21 13:54:23'),
(4, 1, 4, 400, NULL, NULL, 1, '2022-06-21 13:54:29', '2022-06-21 13:54:29'),
(5, 1, 5, 500, NULL, NULL, 1, '2022-06-21 13:54:35', '2022-06-21 13:54:35'),
(6, 2, 1, 10, NULL, NULL, 1, '2022-06-21 14:26:36', '2022-06-21 14:26:36'),
(7, 2, 2, 10, NULL, NULL, 1, '2022-06-21 14:26:36', '2022-06-21 14:26:36'),
(8, 2, 3, 10, NULL, NULL, 1, '2022-06-21 14:26:36', '2022-06-21 14:26:36'),
(9, 2, 4, 10, NULL, NULL, 1, '2022-06-21 14:26:36', '2022-06-21 14:26:36'),
(10, 2, 5, 10, NULL, NULL, 1, '2022-06-21 14:26:36', '2022-06-21 14:26:36'),
(11, 3, 3, 65, NULL, NULL, 1, '2022-06-22 12:23:07', '2022-06-22 12:23:07'),
(12, 3, 4, 96, NULL, NULL, 1, '2022-06-22 12:23:07', '2022-06-22 12:23:07'),
(13, 4, 2, 8, NULL, NULL, 1, '2022-06-22 12:49:04', '2022-06-22 12:49:04'),
(14, 4, 2, 8, NULL, NULL, 0, '2022-06-22 12:49:04', '2022-06-22 12:49:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_remessas`
--

CREATE TABLE `guia_remessas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guiaSaida_id` bigint(20) UNSIGNED NOT NULL,
  `numero_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MD057',
  `local_de_descarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_de_carga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinatario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date NOT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `responsavel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendente` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `nuit_do_destinatario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viatura_marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motorista` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carta_de_conducao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_de_emissao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Stock normal 2-Equipamento \r\ne Infraestrutura',
  `projecto` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_saida_produtos`
--

CREATE TABLE `guia_saida_produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guiaSaida_id` bigint(20) UNSIGNED NOT NULL,
  `produto_id` bigint(20) UNSIGNED NOT NULL,
  `quantidade` double DEFAULT NULL,
  `custo_unitario` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `guia_saida_produtos`
--

INSERT INTO `guia_saida_produtos` (`id`, `guiaSaida_id`, `produto_id`, `quantidade`, `custo_unitario`, `valor`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, NULL, NULL, 1, '2022-06-21 14:22:33', '2022-06-21 14:22:33'),
(2, 1, 2, 10, NULL, NULL, 1, '2022-06-21 14:22:33', '2022-06-21 14:22:33'),
(3, 1, 3, 10, NULL, NULL, 1, '2022-06-21 14:22:33', '2022-06-21 14:22:33'),
(4, 1, 4, 10, NULL, NULL, 1, '2022-06-21 14:22:33', '2022-06-21 14:22:33'),
(5, 1, 5, 10, NULL, NULL, 1, '2022-06-21 14:22:33', '2022-06-21 14:22:33'),
(6, 2, 3, 65, NULL, NULL, 1, '2022-06-22 12:22:57', '2022-06-22 12:22:57'),
(7, 2, 4, 96, NULL, NULL, 1, '2022-06-22 12:22:57', '2022-06-22 12:22:57'),
(8, 3, 1, 2, NULL, NULL, 1, '2022-06-22 12:43:31', '2022-06-22 12:43:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_02_211454_create_categorias_table', 1),
(5, '2021_07_07_194411_create_clientes_table', 1),
(6, '2021_07_08_131122_create_fornecedors_table', 1),
(7, '2021_07_08_131613_create_fornecedor_categorias_table', 1),
(8, '2021_07_11_203010_create_produtos_table', 1),
(9, '2021_07_15_192713_create_guiadeentradas_table', 1),
(10, '2021_07_18_230730_create_guia_entrada__produtos_table', 1),
(11, '2021_07_23_100704_create_requisicao_armazems_table', 1),
(12, '2021_07_24_221922_create_requisicao_armazem__produtos_table', 1),
(13, '2021_07_25_083135_create_propostas_table', 1),
(14, '2021_07_25_212817_create_proposta_produtos_table', 1),
(15, '2021_08_29_183104_create_guia_de_saidas_table', 1),
(16, '2021_09_17_064802_create_cambios_table', 1),
(17, '2021_09_17_245467_create_guia_de_transportes_table', 1),
(18, '2021_09_24_101843_create_guia_remessas_table', 1),
(19, '2021_11_10_130135_create_guia_saida_produtos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `unidade_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localozacao_no_armazem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Stock de normal 2 - Equipamento e Infrastrutura	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `nome`, `categoria_id`, `parent_id`, `unidade_total`, `localozacao_no_armazem`, `imagem`, `status`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'ESV12M', 'escada vermelha 12 M', 2, 1, 'UN', 'A', '', 1, 1, '2021-12-15 20:06:17', '2021-12-16 14:06:00'),
(2, 'EST ML', 'Estribo meia lua', 3, 1, 'un', 'B', '', 1, 1, '2021-12-15 20:20:53', '2021-12-15 20:20:53'),
(3, 'EST SP', 'ESTRIBO SAPATOS', 3, 1, 'UN', 'B', '', 1, 1, '2021-12-15 20:23:25', '2021-12-15 20:23:25'),
(4, 'VM12M', 'Varra de manobra 12 metros', 4, 1, 'un', 'C', '', 1, 1, '2021-12-15 20:25:40', '2021-12-15 20:25:40'),
(5, 'VM9M', 'Varra de manobra 9 metros', 4, 1, 'un', 'C', '', 1, 1, '2021-12-15 20:25:41', '2022-01-06 13:03:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projecto`
--

CREATE TABLE `projecto` (
  `id` bigint(20) NOT NULL,
  `nome` char(120) NOT NULL,
  `empresa` bigint(20) DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `criado_por` bigint(20) NOT NULL,
  `provincia` bigint(20) DEFAULT NULL,
  `cidade` bigint(20) DEFAULT NULL,
  `observacoes` varchar(160) DEFAULT NULL,
  `activo` bigint(20) NOT NULL DEFAULT 0,
  `removido` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projecto`
--

INSERT INTO `projecto` (`id`, `nome`, `empresa`, `responsavel`, `criado_por`, `provincia`, `cidade`, `observacoes`, `activo`, `removido`) VALUES
(1, 'PROJECTO 31 - ZOBUE', 10, 'ARISTIDES MUANDO', 17, NULL, 11, 'COORDENADOR - DANIEL LAMO', 1, 0),
(2, 'PROJECTO 31 - MUCUMBURA', 10, 'AGEM - JORGICA', 17, NULL, 11, NULL, 1, 0),
(3, 'PROJECTO NAMALA', 10, 'JERÓNIMO SITOE', 17, NULL, 8, NULL, 1, 0),
(4, 'PROJECTO PAPAI - PUNDANHARE', 10, 'AGEM - JORGICA', 17, NULL, 14, 'RESPONSÁVEL - HÉLIO LANGA', 1, 0),
(5, 'PROJECTO RESSANO GARCIA', 10, 'M.ISSAK', 17, NULL, 4, NULL, 1, 0),
(6, 'PROJECTO ALTO LIGONHA', 10, 'YOLANDO MAVIRA', 17, NULL, 10, NULL, 1, 0),
(7, 'PROJECTO MUEDUMBE', 10, 'JAIME CUAMBA', 17, NULL, 14, 'NÃO INICIOU', 1, 0),
(8, 'PROJECTO MULELA CARAVELA', 10, 'JAIME CUAMBA', 17, NULL, 8, 'NÃO INICIOU', 1, 0),
(9, 'PROJECTO 709', 10, 'JAIME CUAMBA', 17, NULL, 11, 'NÃO INICIOU', 1, 0),
(10, 'PRO-ENERGIA PEMBA', 10, 'SOZINHO MAHANJANE', 17, NULL, 14, 'BANCO MUNDIAL', 1, 1),
(11, 'PRO-ENERGIA NACALA', 10, 'SOZINHO MAHANJANE', 17, NULL, 9, 'BANCO MUNDIAL', 1, 1),
(12, 'PRO-ENERGIA LICHINGA', 10, 'LEWIS GUIBUNDA', 17, NULL, 3, 'BANCO MUNDIAL', 1, 1),
(13, 'PRO-ENERGIA CUAMBA', 10, 'LEWIS GUIBUNDA', 17, NULL, 17, 'BANCO MUNDIAL', 1, 1),
(14, 'PRO-ENERGIA', 10, 'ALBERTINO MOURINHO', 17, NULL, 1, 'COORDENADOR OPERACIONAL- EULEUTÉRIO GUAMBE', 1, 0),
(17, 'PROJECTO 31 - CHIPUTO', 10, 'CARLOS CATINHANE', 17, NULL, 28, NULL, 1, 0),
(18, 'PROJECTO REVIMO', 10, 'M.ISSAK', 17, NULL, 4, NULL, 1, 0),
(19, 'ADMINISTRAÇÃO', 10, 'RUI BENE', 17, NULL, 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `propostas`
--

CREATE TABLE `propostas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `proposta_numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `pagamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entrega` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `pendente` int(11) NOT NULL DEFAULT 1,
  `endereco_empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enviado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proposta_produtos`
--

CREATE TABLE `proposta_produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposta_id` bigint(20) UNSIGNED NOT NULL,
  `produto_id` bigint(20) UNSIGNED NOT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_total` double DEFAULT NULL,
  `entrega` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proveniencia`
--

CREATE TABLE `proveniencia` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `proveniencia`
--

INSERT INTO `proveniencia` (`id`, `nome`) VALUES
(1, 'Procurment'),
(2, 'Marracuene'),
(3, 'Projetos'),
(4, 'Baixadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `provincias`
--

CREATE TABLE `provincias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `provincias`
--

INSERT INTO `provincias` (`id`, `nome`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maputo', 'Imhambane', '2021-01-10 09:59:29', '2021-01-10 09:59:29'),
(2, 'Gaza', '1', '2021-01-10 09:59:29', '2021-01-10 09:59:29'),
(3, 'Imhambane', '1', '2021-01-10 09:59:29', '2021-01-10 09:59:29'),
(4, 'Niassa', '1', '2021-01-10 09:59:29', '2021-01-10 09:59:29'),
(5, 'Zambezia', '1', '2021-01-10 09:59:29', '2021-01-10 09:59:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicao_armazems`
--

CREATE TABLE `requisicao_armazems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MD001',
  `aplicacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalidade` int(11) DEFAULT NULL,
  `motivo_de_requisicao` int(11) DEFAULT NULL,
  `motivo_descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requisitante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time DEFAULT NULL,
  `obs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendente` int(11) NOT NULL DEFAULT 1 COMMENT '0- Cancelado\r\n1 - Pendente\r\n2 - Aprovado',
  `data_aprovacao` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `laborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autorizado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_requisicao` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Armazem\r\n2 - Projectos\r\n',
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Stock de normal\r\n2 - Equipamento e Infrastrutura',
  `projecto` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `proveniencia` int(11) NOT NULL,
  `envio` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `requisicao_armazems`
--

INSERT INTO `requisicao_armazems` (`id`, `numero_do_folheto`, `codigo_do_folheto`, `aplicacao`, `finalidade`, `motivo_de_requisicao`, `motivo_descricao`, `requisitante`, `data`, `hora`, `obs`, `pendente`, `data_aprovacao`, `status`, `laborado_por`, `autorizado_por`, `elaborado_por`, `aprovado_por`, `editado_por`, `cancelado_por`, `impresso`, `nrDocumento`, `tipo_requisicao`, `tipo`, `projecto`, `site`, `removido`, `proveniencia`, `envio`, `created_at`, `updated_at`) VALUES
(1, '0001/2022', 'MD001', NULL, 3, 4, NULL, 'Osvaldo Gamer', '2022-06-21', '14:46:00', '...........', 3, '2022-06-21', 1, 'Osvaldo Gamer', 'Osvaldo Gamer', 'Osvaldo Data: 21/06/2022  -  Hora: 14 : 46 : 11', 'Sadia Daud Data: 21/06/2022  -  Hora: 15 : 49 : 36', NULL, NULL, NULL, '4850175R', 1, 1, 14, NULL, 0, 3, 1, '2022-06-21 12:46:11', '2022-06-21 14:24:28'),
(2, '0002/2022', 'MD001', NULL, 3, 1, NULL, 'Osvaldo Gamer', '2022-06-21', '16:50:00', NULL, 3, '2022-06-21', 1, 'Osvaldo Gamer', 'Osvaldo Gamer', 'Osvaldo Data: 21/06/2022  -  Hora: 16 : 50 : 15', 'Osvaldo  Data: 21/06/2022  -  Hora: 16 : 51 : 27', NULL, NULL, NULL, '4850175R', 1, 1, 14, NULL, 0, 3, 0, '2022-06-21 14:50:15', '2022-06-22 12:23:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicao_armazems_projectos`
--

CREATE TABLE `requisicao_armazems_projectos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_do_folheto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MD001',
  `aplicacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalidade` int(11) DEFAULT NULL,
  `motivo_de_requisicao` int(11) DEFAULT NULL,
  `motivo_descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requisitante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time DEFAULT NULL,
  `obs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendente` int(11) NOT NULL DEFAULT 1 COMMENT '0- Cancelado\r\n1 - Pendente\r\n2 - Aprovado',
  `data_aprovacao` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `laborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autorizado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elaborado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprovado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelado_por` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impresso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrDocumento` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_requisicao` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Armazem\r\n2 - Projectos\r\n',
  `tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Stock de normal\r\n2 - Equipamento e Infrastrutura',
  `projecto` int(11) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicao_armazem_projectos_produtos`
--

CREATE TABLE `requisicao_armazem_projectos_produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisicao_armazem_projectos_id` bigint(20) UNSIGNED NOT NULL,
  `produto_id` bigint(20) UNSIGNED NOT NULL,
  `quantidade` double DEFAULT NULL,
  `custo_unitario` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicao_armazem__produtos`
--

CREATE TABLE `requisicao_armazem__produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisicaoArmazem_id` bigint(20) UNSIGNED NOT NULL,
  `produto_id` bigint(20) UNSIGNED NOT NULL,
  `quantidade` double DEFAULT NULL,
  `custo_unitario` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `requisicao_armazem__produtos`
--

INSERT INTO `requisicao_armazem__produtos` (`id`, `requisicaoArmazem_id`, `produto_id`, `quantidade`, `custo_unitario`, `valor`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, NULL, NULL, 1, '2022-06-21 12:46:19', '2022-06-21 12:46:19'),
(2, 1, 2, 10, NULL, NULL, 1, '2022-06-21 12:46:28', '2022-06-21 12:46:28'),
(3, 1, 3, 10, NULL, NULL, 1, '2022-06-21 12:46:33', '2022-06-21 12:46:33'),
(4, 1, 4, 10, NULL, NULL, 1, '2022-06-21 12:46:38', '2022-06-21 12:46:38'),
(5, 1, 5, 10, NULL, NULL, 1, '2022-06-21 12:46:43', '2022-06-21 12:46:43'),
(6, 2, 3, 65, NULL, NULL, 1, '2022-06-21 14:50:25', '2022-06-21 14:50:25'),
(7, 2, 4, 96, NULL, NULL, 1, '2022-06-21 14:50:30', '2022-06-21 14:50:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `projecto` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `cidade` int(11) NOT NULL,
  `responsavel` varchar(60) DEFAULT NULL,
  `criado_por` int(11) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `site`
--

INSERT INTO `site` (`id`, `projecto`, `nome`, `cidade`, `responsavel`, `criado_por`, `observacoes`, `activo`, `removido`) VALUES
(6, 14, 'PEMBA', 14, 'SOZINHO MAHANJANE', 17, NULL, 1, 0),
(7, 14, 'NACALA', 9, 'SOZINHO MAHANJANE', 17, NULL, 1, 0),
(8, 14, 'LICHINGA', 3, 'LEWIS GUIBUNDA', 17, NULL, 1, 0),
(9, 14, 'CUAMBA', 17, 'LEWIS GUIBUNDA', 17, NULL, 1, 0),
(10, 14, 'CHOKWE', 28, 'CÂNDIDO MACUIANE', 17, NULL, 1, 0),
(11, 14, 'INHAMBANE', 20, 'CÂNDIDO MACUIANE', 17, NULL, 1, 0),
(12, 14, 'XAI-XAI', 2, 'CÂNDIDO MACUIANE', 17, NULL, 1, 0),
(13, 16, 'LICHINGA', 3, 'LEWIS GUIBUNDA', 17, NULL, 1, 0),
(14, 16, 'CUAMBA', 17, 'LEWIS GUIBUNDA', 17, NULL, 1, 0),
(15, 1, 'ZOBUE', 11, 'ARISTIDES MUANDO', 17, NULL, 1, 0),
(16, 17, 'CHIPUTO', 28, 'ARISTIDES MUANDO', 17, NULL, 1, 0),
(17, 6, 'ALTO LIGONHA', 10, 'YOLANDO MAVIRA', 17, NULL, 1, 0),
(18, 3, 'NAMALA', 8, 'JERÓNIMO SITOE', 17, NULL, 1, 0),
(19, 8, 'MULELA', 8, 'JAIME CUAMBA', 17, NULL, 1, 0),
(20, 18, 'REVIMO', 4, 'M.ISSAK', 17, NULL, 1, 0),
(21, 19, 'ADMINISTRAÇÃO', 1, 'RUI BENE', 17, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stock_projectado`
--

CREATE TABLE `stock_projectado` (
  `id` int(11) NOT NULL,
  `projecto` int(11) NOT NULL,
  `requisitante` varchar(60) NOT NULL,
  `data` date NOT NULL,
  `observacoes` varchar(120) DEFAULT NULL,
  `user_register` int(11) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `stock_projectado`
--

INSERT INTO `stock_projectado` (`id`, `projecto`, `requisitante`, `data`, `observacoes`, `user_register`, `removido`) VALUES
(1, 14, 'Osvaldo Gamer', '2022-06-21', 'Sem Observações', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stock_projectado_produtos`
--

CREATE TABLE `stock_projectado_produtos` (
  `id` int(11) NOT NULL,
  `projectado_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `qtd_requisitada` int(11) NOT NULL DEFAULT 0,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `stock_projectado_produtos`
--

INSERT INTO `stock_projectado_produtos` (`id`, `projectado_id`, `produto_id`, `quantidade`, `qtd_requisitada`, `removido`) VALUES
(1, 1, 1, 100, 10, 0),
(2, 1, 2, 200, 10, 0),
(3, 1, 3, 300, 75, 0),
(4, 1, 4, 400, 106, 0),
(5, 1, 5, 500, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_instalacao`
--

CREATE TABLE `tipo_instalacao` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_instalacao`
--

INSERT INTO `tipo_instalacao` (`id`, `nome`) VALUES
(1, 'Baixa tensão (BT)'),
(2, 'Alta tensão (AT)'),
(3, 'Corrente contínua'),
(4, 'Corrente alternada monofásica'),
(5, 'Corrente alternada trifásica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

CREATE TABLE `unidade` (
  `id` int(11) NOT NULL,
  `unidade` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade`
--

INSERT INTO `unidade` (`id`, `unidade`) VALUES
(1, 'Kg'),
(2, 'Un'),
(3, 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `telefone` int(11) NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_de_usuario` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `telefone`, `departamento`, `tipo_de_usuario`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Osvaldo ', 'osvaldo', 'osvaldobanze008@gmail.com', NULL, 847668513, 'PROENERGIA', 1, '$2y$10$nmcP/naAjITOR6B.ckar7e/LR7Ya5dX1onnoe3puB0IK9Ap/Dm.LO', 1, 'nQT2pGUzEchoavnU1SfcAb3lgdxZvZoKsiB42kmGeBkMklsXcb4LFpgy3nOO', '2021-12-24 13:45:03', '2022-01-12 20:22:39'),
(2, 'Admin', '', 'adminprocurement@gmail.com', NULL, 840000000, 'Procurement', 1, '$2y$10$Ymw1hhvfg/EEaEspHFedmOiOoliq/9Jc4lSp5/y6naTOQX2YUUup2', 1, NULL, '2021-12-13 11:33:52', '2021-12-13 11:36:35'),
(3, 'Rayhan Khalid', 'rkhalid', 'procurement@testop.co.mz', NULL, 847454545, 'procurement', 1, '$2y$10$KVU0lEoA7inKUALDy0t/fObFFjQP6pyDZByaaf7.x6UowWRPPMFWa', 1, 'BFjEorT8jEW28Hfn6Ts1Y5VIfblGP6ueVXvmehB04M2Rko4t6a4hyPd2ujM3', '2021-12-13 16:13:52', '2021-12-13 16:13:52'),
(4, 'Albertina Salvador', 'albertina', 'procurement@testop.co.mz', NULL, 840364156, 'Procurement', 2, '$2y$10$U1vaXi7Cvyg7mtd5M0FFQ.xRx8MbPLYWuPlIVvKXbN.wONDH9fEli', 1, 'pIXPzzB3K9MLVNUbWouCkRcthcTgpcG0VXiAXhNrtDGq4ZuxLaK38tfm0z3h', '2021-12-13 22:58:57', '2022-05-17 15:15:22'),
(7, 'Muhammad Younus', 'myounus', 'younus@autobas.co.mz', NULL, 843030477, 'AUTOBAS ADMIN', 1, '$2y$10$1CVpRHT9fjHxdHd42fk5K.JugTLx9TynN/sMJ733vtwgufqH9wlAC', 1, '8D0wq4y3p8HrxtXFXjHzhJHbswBNUjj3b2XfndbHo8T38P34EK07NSvbbJPz', '2021-12-16 13:00:10', '2021-12-16 13:00:10'),
(8, 'Munir Sacoor', 'msacoor', 'testop@testop.co.mz', NULL, 824301030, 'TES-TOP CEO', 2, '$2y$10$/9vcyBKZllZIddToPppXauEvOwQoNd.8scyWfwZ2Zv8RDlpusAs2K', 1, NULL, '2021-12-17 12:44:10', '2021-12-17 12:44:10'),
(9, 'Sadia Daud', 'pankaj', 'rh.proenergia@testop.co.mz', NULL, 877607000, 'PROENERGIA', 4, '$2y$10$nmcP/naAjITOR6B.ckar7e/LR7Ya5dX1onnoe3puB0IK9Ap/Dm.LO', 1, 'SRXhK11UykJgxiHXk8ueTbJ2IlvdLVuPTfY2XfuPUS1kzsJkhZtFwYxSbuw0', '2021-12-24 13:45:03', '2022-01-12 20:22:39'),
(11, 'Celso Banze', 'celso', 'testop@testop.co.mz', NULL, 842792540, 'Gerente', 0, '$2y$10$nmcP/naAjITOR6B.ckar7e/LR7Ya5dX1onnoe3puB0IK9Ap/Dm.LO', 1, 'Cg1G0s6XU3FXTW1rb7WLXdRqF85TF0oClKguH1pbgZWsdxKaQU6huT0cfCtl', '2022-04-22 21:53:02', '2022-04-22 21:53:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_projectos`
--

CREATE TABLE `usuario_projectos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `projecto_id` int(11) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario_projectos`
--

INSERT INTO `usuario_projectos` (`id`, `user_id`, `projecto_id`, `removido`, `created_at`, `updated_at`) VALUES
(2, 1, 14, 0, '2022-05-10 10:12:19', '2022-05-10 10:12:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_sites`
--

CREATE TABLE `usuario_sites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `projecto_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario_sites`
--

INSERT INTO `usuario_sites` (`id`, `user_id`, `projecto_id`, `site_id`, `removido`, `created_at`, `updated_at`) VALUES
(3, 1, 14, 6, 0, '2022-05-24 08:28:57', '2022-05-24 08:28:57');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cambios`
--
ALTER TABLE `cambios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente_baixadas`
--
ALTER TABLE `cliente_baixadas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices para tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedor_categorias`
--
ALTER TABLE `fornecedor_categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fornecedor_categorias_fornecedor_id_foreign` (`fornecedor_id`),
  ADD KEY `fornecedor_categorias_categoria_id_foreign` (`categoria_id`);

--
-- Índices para tabela `guiadeentradas`
--
ALTER TABLE `guiadeentradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guiadeentradas_fornecedor_id_foreign` (`fornecedor_id`),
  ADD KEY `guiadeentradas_categoria_id_foreign` (`categoria_id`);

--
-- Índices para tabela `guia_de_saidas`
--
ALTER TABLE `guia_de_saidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_de_saidas_requisicaoarmazem_id_foreign` (`requisicaoArmazem_id`);

--
-- Índices para tabela `guia_de_transportes`
--
ALTER TABLE `guia_de_transportes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_de_transportes_guiasaida_id_foreign` (`guiaSaida_id`);

--
-- Índices para tabela `guia_entrada__produtos`
--
ALTER TABLE `guia_entrada__produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_entrada__produtos_guiaentrada_id_foreign` (`guiaEntrada_id`),
  ADD KEY `guia_entrada__produtos_produto_id_foreign` (`produto_id`);

--
-- Índices para tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_remessas_guiasaida_id_foreign` (`guiaSaida_id`);

--
-- Índices para tabela `guia_saida_produtos`
--
ALTER TABLE `guia_saida_produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_saida_produtos_guiasaida_id_foreign` (`guiaSaida_id`),
  ADD KEY `guia_saida_produtos_produto_id_foreign` (`produto_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_categoria_id_foreign` (`categoria_id`);

--
-- Índices para tabela `projecto`
--
ALTER TABLE `projecto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `propostas`
--
ALTER TABLE `propostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propostas_cliente_id_foreign` (`cliente_id`);

--
-- Índices para tabela `proposta_produtos`
--
ALTER TABLE `proposta_produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proposta_produtos_proposta_id_foreign` (`proposta_id`),
  ADD KEY `proposta_produtos_produto_id_foreign` (`produto_id`);

--
-- Índices para tabela `proveniencia`
--
ALTER TABLE `proveniencia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisicao_armazems`
--
ALTER TABLE `requisicao_armazems`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisicao_armazems_projectos`
--
ALTER TABLE `requisicao_armazems_projectos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisicao_armazem_projectos_produtos`
--
ALTER TABLE `requisicao_armazem_projectos_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisicao_armazem__produtos`
--
ALTER TABLE `requisicao_armazem__produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requisicao_armazem__produtos_requisicaoarmazem_id_foreign` (`requisicaoArmazem_id`),
  ADD KEY `requisicao_armazem__produtos_produto_id_foreign` (`produto_id`);

--
-- Índices para tabela `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `stock_projectado`
--
ALTER TABLE `stock_projectado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `stock_projectado_produtos`
--
ALTER TABLE `stock_projectado_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_instalacao`
--
ALTER TABLE `tipo_instalacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario_projectos`
--
ALTER TABLE `usuario_projectos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario_sites`
--
ALTER TABLE `usuario_sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairro`
--
ALTER TABLE `bairro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cambios`
--
ALTER TABLE `cambios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `cliente_baixadas`
--
ALTER TABLE `cliente_baixadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `fornecedor_categorias`
--
ALTER TABLE `fornecedor_categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT de tabela `guiadeentradas`
--
ALTER TABLE `guiadeentradas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `guia_de_saidas`
--
ALTER TABLE `guia_de_saidas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `guia_de_transportes`
--
ALTER TABLE `guia_de_transportes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `guia_entrada__produtos`
--
ALTER TABLE `guia_entrada__produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `guia_saida_produtos`
--
ALTER TABLE `guia_saida_produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT de tabela `projecto`
--
ALTER TABLE `projecto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `propostas`
--
ALTER TABLE `propostas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proposta_produtos`
--
ALTER TABLE `proposta_produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proveniencia`
--
ALTER TABLE `proveniencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `requisicao_armazems`
--
ALTER TABLE `requisicao_armazems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `requisicao_armazems_projectos`
--
ALTER TABLE `requisicao_armazems_projectos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `requisicao_armazem_projectos_produtos`
--
ALTER TABLE `requisicao_armazem_projectos_produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `requisicao_armazem__produtos`
--
ALTER TABLE `requisicao_armazem__produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `stock_projectado`
--
ALTER TABLE `stock_projectado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `stock_projectado_produtos`
--
ALTER TABLE `stock_projectado_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipo_instalacao`
--
ALTER TABLE `tipo_instalacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuario_sites`
--
ALTER TABLE `usuario_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fornecedor_categorias`
--
ALTER TABLE `fornecedor_categorias`
  ADD CONSTRAINT `fornecedor_categorias_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `fornecedor_categorias_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`);

--
-- Limitadores para a tabela `guiadeentradas`
--
ALTER TABLE `guiadeentradas`
  ADD CONSTRAINT `guiadeentradas_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `guiadeentradas_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`);

--
-- Limitadores para a tabela `guia_de_saidas`
--
ALTER TABLE `guia_de_saidas`
  ADD CONSTRAINT `guia_de_saidas_requisicaoarmazem_id_foreign` FOREIGN KEY (`requisicaoArmazem_id`) REFERENCES `requisicao_armazems` (`id`);

--
-- Limitadores para a tabela `guia_de_transportes`
--
ALTER TABLE `guia_de_transportes`
  ADD CONSTRAINT `guia_de_transportes_guiasaida_id_foreign` FOREIGN KEY (`guiaSaida_id`) REFERENCES `guia_de_saidas` (`id`);

--
-- Limitadores para a tabela `guia_entrada__produtos`
--
ALTER TABLE `guia_entrada__produtos`
  ADD CONSTRAINT `guia_entrada__produtos_guiaentrada_id_foreign` FOREIGN KEY (`guiaEntrada_id`) REFERENCES `guiadeentradas` (`id`),
  ADD CONSTRAINT `guia_entrada__produtos_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Limitadores para a tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  ADD CONSTRAINT `guia_remessas_guiasaida_id_foreign` FOREIGN KEY (`guiaSaida_id`) REFERENCES `guia_de_saidas` (`id`);

--
-- Limitadores para a tabela `guia_saida_produtos`
--
ALTER TABLE `guia_saida_produtos`
  ADD CONSTRAINT `guia_saida_produtos_guiasaida_id_foreign` FOREIGN KEY (`guiaSaida_id`) REFERENCES `guia_de_saidas` (`id`),
  ADD CONSTRAINT `guia_saida_produtos_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Limitadores para a tabela `propostas`
--
ALTER TABLE `propostas`
  ADD CONSTRAINT `propostas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Limitadores para a tabela `proposta_produtos`
--
ALTER TABLE `proposta_produtos`
  ADD CONSTRAINT `proposta_produtos_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `proposta_produtos_proposta_id_foreign` FOREIGN KEY (`proposta_id`) REFERENCES `propostas` (`id`);

--
-- Limitadores para a tabela `requisicao_armazem__produtos`
--
ALTER TABLE `requisicao_armazem__produtos`
  ADD CONSTRAINT `requisicao_armazem__produtos_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `requisicao_armazem__produtos_requisicaoarmazem_id_foreign` FOREIGN KEY (`requisicaoArmazem_id`) REFERENCES `requisicao_armazems` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
