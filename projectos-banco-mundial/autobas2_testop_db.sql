-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jun-2022 às 09:19
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `guiadeentradas`
--

INSERT INTO `guiadeentradas` (`id`, `numero_do_folheto`, `codigo_do_folheto`, `fornecedor_id`, `responsavel`, `numero_da_fatura`, `packing_list`, `outros_documentos`, `data`, `data_aprovacao`, `categoria_id`, `parent_id`, `pendente`, `status`, `elaborado_por`, `aprovado_por`, `editado_por`, `cancelado_por`, `impresso`, `nrDocumento`, `tipo`, `projecto`, `site`, `origem`, `motivo`, `created_at`, `updated_at`) VALUES
(1, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-05', NULL, NULL, NULL, 0, 0, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-05 20:19:46', '2022-01-07 15:43:37'),
(2, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-06', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-06 12:51:53', '2022-01-07 15:52:18'),
(3, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-06', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-06 13:11:38', '2022-01-07 15:51:20'),
(4, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-06', NULL, NULL, NULL, 0, 0, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-06 20:31:55', '2022-01-07 15:47:26'),
(5, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-07', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-07 15:21:43', '2022-01-07 15:46:02'),
(6, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-07', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-07 15:33:46', '2022-01-07 15:50:22'),
(7, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-07', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-07 15:36:34', '2022-01-07 15:49:50'),
(8, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-07', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-07 15:38:24', '2022-01-07 15:49:21'),
(9, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-07', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-07 15:41:20', '2022-01-07 15:48:54'),
(10, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-07', '2022-01-07', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-07 15:44:52', '2022-01-07 15:48:10'),
(11, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-10', '2022-01-13', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-10 15:18:31', '2022-01-13 13:15:49'),
(12, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 0, 0, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-13 14:13:02', '2022-01-17 19:24:25'),
(13, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 0, 0, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-13 19:26:05', '2022-01-17 19:24:59'),
(14, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-17', '2022-01-17', NULL, NULL, 2, 1, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-17 19:17:19', '2022-01-17 19:18:44'),
(15, '0001/2022', 'MD057', 1, 'Dep.Procurement', '1187', '2021-1187', 'GE-933', '2021-12-29', '2022-01-18', 35, 1, 2, 1, 'Albertina Salvador                    Data: 18/01/2022  -  Hora: 09 : 38 : 50', 'Rayhan Khalid                    Data: 18/01/2022  -  Hora: 16 : 14 : 25', 'Rayhan Khalid                    Data: 18/01/2022  -  Hora: 16 : 14 : 18', NULL, NULL, '940', 1, NULL, NULL, 1, NULL, '2022-01-18 15:38:50', '2022-01-18 22:14:25'),
(16, '0002/2022', 'MD057', 3, 'Dep.Procurement', '302', '2022-302', 'GE-937', '2022-01-11', '2022-01-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 20/01/2022  -  Hora: 09 : 37 : 20', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 09 : 53 : 44', NULL, NULL, NULL, '937', 1, NULL, NULL, 1, NULL, '2022-01-20 15:37:20', '2022-01-25 15:53:44'),
(17, '0003/2022', 'MD057', 11, 'Dep.Procurement', '934', '2022-934', 'GE-934', '2021-12-26', '2022-01-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 20/01/2022  -  Hora: 14 : 55 : 30', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 09 : 54 : 08', NULL, NULL, NULL, '934', 1, NULL, NULL, 1, NULL, '2022-01-20 20:55:30', '2022-01-25 15:54:08'),
(18, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-25', '2022-01-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 25/01/2022  -  Hora: 09 : 20 : 36', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-25 15:20:36', '2022-01-25 15:23:15'),
(19, 'AJUSTE', 'MD057', NULL, 'Albertina', NULL, NULL, NULL, '2022-01-25', '2022-01-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 25/01/2022  -  Hora: 10 : 45 : 41', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-01-25 16:45:41', '2022-01-25 16:58:50'),
(20, '0004/2022', 'MD057', 4, 'Rayhan', '25773', '2022-25773', 'GE-940', '2022-01-20', '2022-01-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 25/01/2022  -  Hora: 10 : 49 : 05', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 10 : 58 : 11', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 10 : 58 : 02', NULL, NULL, '933', 1, NULL, NULL, 1, NULL, '2022-01-25 16:49:05', '2022-01-25 16:58:11'),
(21, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-02-15', '2022-02-15', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 15/02/2022  -  Hora: 11 : 00 : 18', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-15 17:00:18', '2022-02-15 17:43:34'),
(22, '0005/2022', 'MD057', 1, 'albertina', '31', NULL, 'factura', '2022-02-01', '2022-02-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 24/02/2022  -  Hora: 15 : 53 : 13', 'Rayhan Khalid                    Data: 25/02/2022  -  Hora: 08 : 18 : 17', NULL, NULL, NULL, '942', 1, NULL, NULL, 1, NULL, '2022-02-24 21:53:13', '2022-02-25 14:18:17'),
(23, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-02-24', '2022-02-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 24/02/2022  -  Hora: 16 : 11 : 41', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-24 22:11:41', '2022-02-25 14:19:30'),
(24, '0006/2022', 'MD057', 1, 'albertina', '2', NULL, 'Guia de Entrada', '2022-02-10', '2022-02-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 24/02/2022  -  Hora: 16 : 14 : 41', 'Rayhan Khalid                    Data: 25/02/2022  -  Hora: 08 : 18 : 30', NULL, NULL, NULL, '947', 1, NULL, NULL, 1, NULL, '2022-02-24 22:14:41', '2022-02-25 14:18:30'),
(25, '0007/2022', 'MD057', 1, 'albertina', NULL, NULL, 'Guia de Entrada', '2022-02-15', '2022-02-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 24/02/2022  -  Hora: 16 : 20 : 00', 'Rayhan Khalid                    Data: 25/02/2022  -  Hora: 08 : 18 : 42', NULL, NULL, NULL, '946', 1, NULL, NULL, 1, NULL, '2022-02-24 22:20:00', '2022-02-25 14:18:42'),
(26, '0008/2022', 'MD057', 1, 'albertina', '121', NULL, 'factura', '2022-03-03', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 09 : 40 : 16', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 10 : 41 : 13', NULL, NULL, NULL, '957', 1, NULL, NULL, 1, NULL, '2022-03-05 15:40:16', '2022-03-05 16:41:13'),
(27, '0009/2022', 'MD057', 1, 'albertina', NULL, NULL, 'Transferencia', '2022-03-01', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 09 : 41 : 57', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 10 : 41 : 31', NULL, NULL, NULL, '960', 1, NULL, NULL, 1, NULL, '2022-03-05 15:41:57', '2022-03-05 16:41:31'),
(28, '00010/2022', 'MD057', 11, 'albertina', NULL, NULL, 'Transferencia', '2022-03-01', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 09 : 46 : 54', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 10 : 41 : 50', NULL, NULL, NULL, '961', 1, NULL, NULL, 1, NULL, '2022-03-05 15:46:54', '2022-03-05 16:41:50'),
(29, '00011/2022', 'MD057', 3, 'albertina', NULL, NULL, 'Transferencia', '2022-03-01', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 10 : 09 : 40', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 10 : 42 : 09', NULL, NULL, NULL, '958', 1, NULL, NULL, 1, NULL, '2022-03-05 16:09:40', '2022-03-05 16:42:09'),
(30, '00012/2022', 'MD057', 3, 'albertina', NULL, NULL, 'Transferencia', '2022-03-01', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 10 : 19 : 00', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 10 : 42 : 24', NULL, NULL, NULL, '959', 1, NULL, NULL, 1, NULL, '2022-03-05 16:19:00', '2022-03-05 16:42:24'),
(31, '00013/2022', 'MD057', 12, 'albertina', NULL, NULL, '03', '2022-03-01', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 10 : 33 : 50', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 10 : 42 : 37', NULL, NULL, NULL, '956', 1, NULL, NULL, 1, NULL, '2022-03-05 16:33:50', '2022-03-05 16:42:37'),
(32, '00014/2022', 'MD057', 1, 'albertina', NULL, NULL, 'factura', '2022-02-25', '2022-03-05', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 11 : 00 : 29', 'Rayhan Khalid                    Data: 05/03/2022  -  Hora: 11 : 35 : 30', NULL, NULL, NULL, '954', 1, NULL, NULL, 1, NULL, '2022-03-05 17:00:29', '2022-03-05 17:35:30'),
(33, '00015/2022', 'MD057', 13, 'albertina', NULL, NULL, 'factura', '2022-02-23', '2022-03-07', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 11 : 38 : 44', 'Rayhan Khalid                    Data: 07/03/2022  -  Hora: 14 : 11 : 33', NULL, NULL, NULL, '951', 1, NULL, NULL, 1, NULL, '2022-03-05 17:38:44', '2022-03-07 20:11:33'),
(34, '00016/2022', 'MD057', 4, 'albertina', '25876', NULL, 'factura', '2022-02-24', '2022-03-07', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 11 : 40 : 22', 'Rayhan Khalid                    Data: 07/03/2022  -  Hora: 14 : 11 : 55', NULL, NULL, NULL, '952', 1, NULL, NULL, 1, NULL, '2022-03-05 17:40:22', '2022-03-07 20:11:55'),
(35, '00017/2022', 'MD057', 14, 'albertina', NULL, NULL, 'factura', '2022-02-22', '2022-03-07', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 05/03/2022  -  Hora: 11 : 48 : 43', 'Rayhan Khalid                    Data: 07/03/2022  -  Hora: 14 : 12 : 28', NULL, NULL, NULL, '953', 1, NULL, NULL, 1, NULL, '2022-03-05 17:48:43', '2022-03-07 20:12:28'),
(36, '00018/2022', 'MD057', 15, 'albertina', NULL, NULL, 'Guia de Entrada', '2022-02-28', '2022-03-07', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 07/03/2022  -  Hora: 12 : 04 : 31', 'Rayhan Khalid                    Data: 07/03/2022  -  Hora: 14 : 12 : 48', NULL, NULL, NULL, '955', 1, NULL, NULL, 1, NULL, '2022-03-07 18:04:31', '2022-03-07 20:12:48'),
(37, '00019/2022', 'MD057', 16, 'albertina', '21101887', 'MZ 21101887', 'packig list', '2022-03-05', '2022-03-08', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 08/03/2022  -  Hora: 10 : 10 : 39', 'Rayhan Khalid                    Data: 08/03/2022  -  Hora: 11 : 32 : 58', NULL, NULL, NULL, '962', 1, NULL, NULL, 1, NULL, '2022-03-08 16:10:39', '2022-03-08 17:32:58'),
(38, '00020/2022', 'MD057', 16, 'albertina', '21101887', 'MZ 21101887', 'packig list', '2022-03-05', '2022-03-08', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 08/03/2022  -  Hora: 10 : 46 : 40', 'Rayhan Khalid                    Data: 08/03/2022  -  Hora: 11 : 33 : 35', NULL, NULL, NULL, '963', 1, NULL, NULL, 1, NULL, '2022-03-08 16:46:40', '2022-03-08 17:33:35'),
(39, '00021/2022', 'MD057', 16, 'albertina', '21101886', 'MZ 21101887', 'packig list', '2022-03-05', '2022-03-08', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 08/03/2022  -  Hora: 10 : 49 : 11', 'Rayhan Khalid                    Data: 08/03/2022  -  Hora: 11 : 33 : 55', NULL, NULL, NULL, '964', 1, NULL, NULL, 1, NULL, '2022-03-08 16:49:11', '2022-03-08 17:33:55'),
(40, '00022/2022', 'MD057', 11, 'Rayhan', NULL, 'HLS191216C-5', 'packig list', '2022-03-17', '2022-03-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/03/2022  -  Hora: 10 : 22 : 51', 'Rayhan Khalid                    Data: 28/03/2022  -  Hora: 10 : 51 : 44', NULL, NULL, NULL, '972', 1, NULL, NULL, 1, NULL, '2022-03-28 15:22:51', '2022-03-28 15:51:44'),
(41, '00023/2022', 'MD057', 17, 'Rayhan', NULL, NULL, 'Guia de Devolução', '2022-03-17', '2022-03-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/03/2022  -  Hora: 10 : 36 : 53', 'Rayhan Khalid                    Data: 28/03/2022  -  Hora: 10 : 51 : 14', NULL, NULL, NULL, '970', 1, NULL, NULL, 1, NULL, '2022-03-28 15:36:53', '2022-03-28 15:51:14'),
(42, '00024/2022', 'MD057', 7, 'Rayhan', NULL, NULL, 'factura', '2022-03-17', '2022-03-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/03/2022  -  Hora: 10 : 38 : 54', 'Rayhan Khalid                    Data: 28/03/2022  -  Hora: 10 : 50 : 51', NULL, NULL, NULL, '971', 1, NULL, NULL, 1, NULL, '2022-03-28 15:38:54', '2022-03-28 15:50:51'),
(43, '00025/2022', 'MD057', 16, 'Rayhan', NULL, 'MZ21101881', 'packig list', '2022-03-18', '2022-03-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/03/2022  -  Hora: 10 : 41 : 13', 'Rayhan Khalid                    Data: 28/03/2022  -  Hora: 10 : 50 : 16', NULL, NULL, NULL, '974', 1, NULL, NULL, 1, NULL, '2022-03-28 15:41:13', '2022-03-28 15:50:16'),
(44, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-03-28', '2022-03-30', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/03/2022  -  Hora: 17 : 10 : 39', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-03-28 22:10:39', '2022-03-30 16:00:32'),
(45, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-03-30', '2022-03-30', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 30/03/2022  -  Hora: 10 : 57 : 45', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-03-30 15:57:45', '2022-03-30 16:00:15'),
(46, '00026/2022', 'MD057', 18, 'Rayhan', NULL, 'YJ21359', 'packig list', '2022-03-25', '2022-03-30', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 30/03/2022  -  Hora: 11 : 57 : 34', 'Rayhan Khalid                    Data: 30/03/2022  -  Hora: 17 : 08 : 39', NULL, NULL, NULL, '977', 1, NULL, NULL, 1, NULL, '2022-03-30 16:57:34', '2022-03-30 22:08:39'),
(47, '00027/2022', 'MD057', 14, 'Rayhan', NULL, 'YJ21359', 'packig list', '2022-03-25', '2022-03-30', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 30/03/2022  -  Hora: 15 : 03 : 11', 'Rayhan Khalid                    Data: 30/03/2022  -  Hora: 17 : 08 : 26', NULL, NULL, NULL, '978', 1, NULL, NULL, 1, NULL, '2022-03-30 20:03:11', '2022-03-30 22:08:26'),
(48, '00028/2022', 'MD057', 3, 'Rayhan', NULL, 'Transferencia 306', 'Transferencia', '2022-03-25', '2022-03-30', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 30/03/2022  -  Hora: 16 : 51 : 14', 'Rayhan Khalid                    Data: 30/03/2022  -  Hora: 17 : 08 : 12', NULL, NULL, NULL, '976', 1, NULL, NULL, 1, NULL, '2022-03-30 21:51:14', '2022-03-30 22:08:12'),
(49, '00029/2022', 'MD057', 18, 'Rayhan', NULL, 'YJ21359', 'packig list', '2022-03-25', '2022-03-30', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 30/03/2022  -  Hora: 16 : 53 : 52', 'Rayhan Khalid                    Data: 30/03/2022  -  Hora: 17 : 07 : 58', NULL, NULL, NULL, '979', 1, NULL, NULL, 1, NULL, '2022-03-30 21:53:52', '2022-03-30 22:07:58'),
(50, '00030/2022', 'MD057', 19, 'Rayhan', NULL, NULL, 'packig list', '2022-04-01', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 27/04/2022  -  Hora: 11 : 34 : 56', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 18 : 48', NULL, NULL, NULL, '981', 1, NULL, NULL, 1, NULL, '2022-04-27 16:34:56', '2022-04-28 16:18:48'),
(51, '00031/2022', 'MD057', 20, 'Rayhan', NULL, NULL, 'Guia de Devolução', '2022-04-05', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 27/04/2022  -  Hora: 11 : 40 : 54', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 18 : 35', NULL, NULL, NULL, '984', 1, NULL, NULL, 1, NULL, '2022-04-27 16:40:54', '2022-04-28 16:18:35'),
(52, '00032/2022', 'MD057', 21, 'Rayhan', NULL, NULL, 'Guia de Devolução', '2022-04-05', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 27/04/2022  -  Hora: 11 : 44 : 34', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 18 : 18', NULL, NULL, NULL, '983', 1, NULL, NULL, 1, NULL, '2022-04-27 16:44:34', '2022-04-28 16:18:18'),
(53, '00033/2022', 'MD057', 22, 'Rayhan', NULL, NULL, 'Guia de Devolução', '2022-04-12', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 27/04/2022  -  Hora: 11 : 47 : 08', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 18 : 05', NULL, NULL, NULL, '991', 1, NULL, NULL, 1, NULL, '2022-04-27 16:47:08', '2022-04-28 16:18:05'),
(54, '00034/2022', 'MD057', 16, 'Rayhan', NULL, 'MZ22011782', 'packig list', '2022-04-12', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 27/04/2022  -  Hora: 11 : 49 : 00', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 17 : 52', NULL, NULL, NULL, '995', 1, NULL, NULL, 1, NULL, '2022-04-27 16:49:00', '2022-04-28 16:17:52'),
(55, '00035/2022', 'MD057', 23, 'Rayhan', NULL, NULL, 'Guia de Devolução', '2022-04-13', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 27/04/2022  -  Hora: 11 : 52 : 07', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 17 : 37', NULL, NULL, NULL, '996', 1, NULL, NULL, 1, NULL, '2022-04-27 16:52:07', '2022-04-28 16:17:37'),
(56, '00036/2022', 'MD057', 11, 'Rayhan', NULL, NULL, 'Transferencia', '2022-04-27', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/04/2022  -  Hora: 08 : 54 : 47', 'Rayhan Khalid                    Data: 28/04/2022  -  Hora: 11 : 17 : 26', NULL, NULL, NULL, '1005', 1, NULL, NULL, 1, NULL, '2022-04-28 13:54:47', '2022-04-28 16:17:26'),
(57, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-04-28', '2022-04-28', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 28/04/2022  -  Hora: 09 : 06 : 41', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-04-28 14:06:41', '2022-04-28 14:08:43'),
(58, '00037/2022', 'MD057', 16, 'Rayhan', NULL, 'MZ21112381', 'packig list', '2022-05-06', '2022-05-24', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 10/05/2022  -  Hora: 17 : 04 : 55', 'Rayhan Khalid                    Data: 24/05/2022  -  Hora: 17 : 11 : 13', NULL, NULL, NULL, '1009', 1, NULL, NULL, 1, NULL, '2022-05-10 22:04:55', '2022-05-24 22:11:13'),
(59, '00038/2022', 'MD057', 24, 'Rayhan', NULL, '6', 'Guia de Devolução', '2022-05-09', '2022-05-24', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 11/05/2022  -  Hora: 15 : 11 : 31', 'Rayhan Khalid                    Data: 24/05/2022  -  Hora: 17 : 11 : 33', NULL, NULL, NULL, '1010', 1, NULL, NULL, 1, NULL, '2022-05-11 20:11:31', '2022-05-24 22:11:33'),
(60, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-05-17', NULL, NULL, NULL, 0, 0, 'Albertina Salvador                    Data: 17/05/2022  -  Hora: 10 : 10 : 40', NULL, NULL, 'Osvaldo                     Data: 17/05/2022  -  Hora: 10 : 38 : 15', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-05-17 15:10:40', '2022-05-17 15:38:15'),
(61, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-05-17', '2022-05-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 17/05/2022  -  Hora: 10 : 18 : 18', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-05-17 15:18:18', '2022-05-25 19:43:05'),
(62, '00039/2022', 'MD057', 10, 'Rayhan', NULL, '5513220006', 'packig list', '2022-05-20', '2022-05-24', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 24/05/2022  -  Hora: 16 : 15 : 10', 'Rayhan Khalid                    Data: 24/05/2022  -  Hora: 17 : 11 : 51', NULL, NULL, NULL, '1024', 1, NULL, NULL, 1, NULL, '2022-05-24 21:15:10', '2022-05-24 22:11:51'),
(63, '00040/2022', 'MD057', 25, 'Rayhan', NULL, NULL, 'Guia de Devolução', '2022-05-21', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 25/05/2022  -  Hora: 14 : 58 : 57', NULL, 'Albertina Salvador                    Data: 25/05/2022  -  Hora: 15 : 11 : 29', NULL, NULL, '1025', 1, NULL, NULL, 1, NULL, '2022-05-25 19:58:57', '2022-05-25 20:11:29'),
(64, 'AJUSTE', 'MD057', NULL, 'albertina', NULL, NULL, NULL, '2022-05-25', '2022-05-25', NULL, NULL, 2, 1, 'Albertina Salvador                    Data: 25/05/2022  -  Hora: 15 : 15 : 36', 'Rayhan Khalid', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-05-25 20:15:36', '2022-05-25 20:18:47'),
(65, '00041/2022', 'MD057', 26, 'Rayhan', NULL, 'Amostra', 'Guia de Entrada', '2022-04-30', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 31/05/2022  -  Hora: 16 : 24 : 36', NULL, NULL, NULL, NULL, '1039', 1, NULL, NULL, 1, NULL, '2022-05-31 21:24:36', '2022-05-31 21:24:36'),
(66, '00042/2022', 'MD057', 8, 'Rayhan', '34649', 'só temos  factura', 'Guia de Entrada', '2022-05-24', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 31/05/2022  -  Hora: 16 : 27 : 58', NULL, NULL, NULL, NULL, '1037', 1, NULL, NULL, 1, NULL, '2022-05-31 21:27:58', '2022-05-31 21:27:58'),
(67, '00043/2022', 'MD057', 10, 'Rayhan', NULL, 'Guia de entrada nº9', 'Guia de Entrada', '2022-05-24', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 31/05/2022  -  Hora: 16 : 30 : 14', NULL, NULL, NULL, NULL, '1036', 1, NULL, NULL, 1, NULL, '2022-05-31 21:30:14', '2022-05-31 21:30:14'),
(68, '00044/2022', 'MD057', 16, 'Rayhan', NULL, 'Amostra', 'Guia de Entrada', '2022-05-24', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 31/05/2022  -  Hora: 16 : 32 : 30', NULL, NULL, NULL, NULL, '1040', 1, NULL, NULL, 1, NULL, '2022-05-31 21:32:30', '2022-05-31 21:32:30'),
(69, '00045/2022', 'MD057', 12, 'Rayhan', NULL, 'Guia de entrada nº11', 'Guia de Entrada', '2022-05-26', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 31/05/2022  -  Hora: 16 : 34 : 52', NULL, NULL, NULL, NULL, '1038', 1, NULL, NULL, 1, NULL, '2022-05-31 21:34:52', '2022-05-31 21:34:52'),
(70, '00046/2022', 'MD057', 17, 'Rayhan', NULL, '000000', 'Guia de Entrada', '2022-05-31', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 31/05/2022  -  Hora: 17 : 19 : 00', NULL, NULL, NULL, NULL, '1048', 1, NULL, NULL, 1, NULL, '2022-05-31 22:19:00', '2022-05-31 22:19:00'),
(71, '00047/2022', 'MD057', 24, 'Rayhan', NULL, 'Guia de entrada nº8', 'Guia de Devolução', '2022-06-27', NULL, NULL, NULL, 1, 1, 'Albertina Salvador                    Data: 01/06/2022  -  Hora: 14 : 37 : 33', NULL, NULL, NULL, NULL, '1041', 1, NULL, NULL, 1, NULL, '2022-06-01 19:37:33', '2022-06-01 19:37:33');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `guia_de_saidas`
--

INSERT INTO `guia_de_saidas` (`id`, `requisicaoArmazem_id`, `numero_do_folheto`, `codigo_do_folheto`, `destino_do_material`, `requisitante`, `departamento`, `documentos_assoc`, `data`, `data_aprovacao`, `data_do_documento`, `data_do_fornecimento`, `data_do_recebimento`, `levantado_por`, `fiel_do_armazem`, `assistente_do_armazem`, `elaborado_por`, `aprovado_por`, `editado_por`, `cancelado_por`, `nrDocumento`, `tipo`, `impresso`, `status`, `projecto`, `site`, `origem`, `motivo`, `pendente`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AJUSTE', 'MD057', NULL, 'Rayhan Khalid', 'Procurement', NULL, NULL, '2022-01-13', NULL, NULL, '2022-01-13', NULL, NULL, NULL, 'Albertina Salvador', 'Rayhan Khalid', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-01-13 13:21:15', '2022-01-13 13:25:59'),
(2, NULL, 'AJUSTE', 'MD057', NULL, 'Albertina', 'Procurement', NULL, NULL, NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, 1, NULL, 0, NULL, NULL, 1, NULL, 0, '2022-01-13 14:16:13', '2022-01-17 14:30:57'),
(3, NULL, 'AJUSTE', 'MD057', NULL, 'Albertina', 'Procurement', NULL, NULL, NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, 1, NULL, 0, NULL, NULL, 1, NULL, 0, '2022-01-13 14:20:10', '2022-01-17 14:30:31'),
(4, NULL, 'AJUSTE', 'MD057', NULL, 'Albertina', 'Procurement', NULL, NULL, NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, 1, NULL, 0, NULL, NULL, 1, NULL, 0, '2022-01-13 14:33:40', '2022-01-17 14:30:05'),
(5, NULL, 'AJUSTE', 'MD057', NULL, 'Albertina', 'Procurement', NULL, NULL, NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, 1, NULL, 0, NULL, NULL, 1, NULL, 0, '2022-01-13 14:34:56', '2022-01-17 14:29:39'),
(6, NULL, 'AJUSTE', 'MD057', NULL, 'Albertina', 'Procurement', NULL, NULL, NULL, NULL, NULL, '2022-01-13', NULL, NULL, NULL, 'Albertina Salvador', NULL, NULL, 'Rayhan Khalid', NULL, 1, NULL, 0, NULL, NULL, 1, NULL, 0, '2022-01-13 19:29:49', '2022-01-17 14:28:59'),
(7, 1, '0001/2022', 'MD057', 'Armazem Marracuene', 'Rayhan Khalid', 'PROCUREMENT', 'GS 1641', NULL, '2022-01-17', '2022-01-12', '2022-01-12', '2022-01-12', 'Reginaldo Langa', 'Ziyaad', 'Orlando', 'Rayhan Khalid', 'Rayhan Khalid', NULL, NULL, '1641', 1, '0001_2022_17-01-2022.pdf', 1, NULL, NULL, 1, NULL, 2, '2022-01-17 16:27:57', '2022-01-17 16:28:28'),
(8, NULL, 'AJUSTE', 'MD057', NULL, 'Rayhan Khalid', 'Procurement', NULL, NULL, '2022-01-25', NULL, NULL, '2022-01-20', NULL, NULL, NULL, 'Albertina Salvador                    Data: 20/01/2022  -  Hora: 14 : 57 : 05', 'Rayhan Khalid', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-01-20 20:57:05', '2022-01-25 16:24:38'),
(9, 2, '0002/2022', 'MD057', 'Auto Bas', 'Rayhan Khalid', 'Procurement', 'Req-3693', NULL, '2022-01-25', '2021-12-21', '2022-01-03', '2021-12-21', 'Langa', 'Ziyad', 'Orlando Chauque', 'Albertina Salvador                    Data: 25/01/2022  -  Hora: 11 : 32 : 57', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 12 : 22 : 08', NULL, NULL, '1627', 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-01-25 17:32:57', '2022-01-25 18:22:08'),
(10, 3, '0003/2022', 'MD057', 'Projecto Revimo', 'Rayhan Khalid', 'Procurement', 'Req-3669', NULL, '2022-01-25', '2022-01-03', '2022-01-03', '2022-01-03', 'Issak', 'Ziyad', 'Orlando Chauque', 'Albertina Salvador                    Data: 25/01/2022  -  Hora: 11 : 34 : 47', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 12 : 21 : 44', NULL, NULL, '1626', 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-01-25 17:34:47', '2022-01-25 18:21:44'),
(11, 4, '0004/2022', 'MD057', 'Projecto Zobue', 'Rayhan Khalid', 'Procurement', 'Req-3372,3375', NULL, '2022-01-25', '2022-01-05', '2022-01-05', '2022-01-05', 'Jaime', 'Ziyad', 'Orlando Chauque', 'Albertina Salvador                    Data: 25/01/2022  -  Hora: 11 : 36 : 24', 'Rayhan Khalid                    Data: 25/01/2022  -  Hora: 12 : 21 : 25', NULL, NULL, '1629', 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-01-25 17:36:24', '2022-01-25 18:21:25'),
(53, NULL, 'AJUSTE', 'MD057', NULL, 'Rayhan Khalid', 'Procurement', NULL, NULL, '2022-03-30', NULL, NULL, '2022-03-28', NULL, NULL, NULL, 'Albertina Salvador                    Data: 28/03/2022  -  Hora: 10 : 44 : 46', 'Rayhan Khalid', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-03-28 15:44:46', '2022-03-30 13:59:44'),
(54, NULL, 'AJUSTE', 'MD057', NULL, 'Rayhan Khalid', 'Procurement', NULL, NULL, '2022-03-30', NULL, NULL, '2022-03-30', NULL, NULL, NULL, 'Albertina Salvador                    Data: 30/03/2022  -  Hora: 09 : 00 : 59', 'Rayhan Khalid', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, NULL, 2, '2022-03-30 14:00:59', '2022-03-30 14:52:14'),
(109, 2, '000100/2022', 'MD057', NULL, 'Osvaldo', 'TI', '4850', NULL, NULL, '2022-06-23', '2022-06-16', '2022-06-17', 'Celso Banze', 'Silvestre', 'Deciderio Banze', 'Celso BanzeData: 16/06/2022  -  Hora: 11 : 08 : 53', NULL, NULL, NULL, NULL, 1, NULL, 1, 14, NULL, 2, NULL, 1, '2022-06-16 09:08:53', '2022-06-16 09:08:53');

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
(1, 2, 1, 12, NULL, NULL, 1, '2022-01-06 12:52:58', '2022-01-06 12:52:58'),
(2, 2, 22, 3, NULL, NULL, 1, '2022-01-06 12:53:43', '2022-01-06 12:53:43'),
(3, 2, 23, 32, NULL, NULL, 1, '2022-01-06 12:54:15', '2022-01-06 12:54:15'),
(4, 2, 24, 15, NULL, NULL, 1, '2022-01-06 12:54:40', '2022-01-06 12:54:40'),
(5, 2, 25, 4, NULL, NULL, 1, '2022-01-06 12:55:00', '2022-01-06 12:55:00'),
(6, 2, 2, 0, NULL, NULL, 1, '2022-01-06 12:55:24', '2022-01-06 12:55:24'),
(7, 2, 3, 223, NULL, NULL, 1, '2022-01-06 12:55:50', '2022-01-06 12:55:50'),
(8, 2, 4, 0, NULL, NULL, 1, '2022-01-06 12:56:06', '2022-01-06 12:56:06'),
(9, 3, 1, 12, NULL, NULL, 1, '2022-01-06 13:12:00', '2022-01-06 13:12:00'),
(10, 3, 22, 3, NULL, NULL, 1, '2022-01-06 13:12:20', '2022-01-06 13:12:20'),
(11, 3, 23, 32, NULL, NULL, 1, '2022-01-06 13:12:35', '2022-01-06 13:12:35'),
(12, 3, 24, 15, NULL, NULL, 1, '2022-01-06 13:12:53', '2022-01-06 13:12:53'),
(13, 3, 25, 4, NULL, NULL, 1, '2022-01-06 13:13:05', '2022-01-06 13:13:05'),
(14, 3, 2, 0, NULL, NULL, 1, '2022-01-06 13:13:34', '2022-01-06 13:13:34'),
(15, 3, 3, 223, NULL, NULL, 1, '2022-01-06 13:13:44', '2022-01-06 13:13:44'),
(16, 3, 4, 0, NULL, NULL, 1, '2022-01-06 13:13:59', '2022-01-06 13:13:59'),
(17, 3, 5, 0, NULL, NULL, 1, '2022-01-06 13:14:08', '2022-01-06 13:14:08'),
(18, 3, 9, 11, NULL, NULL, 1, '2022-01-06 13:14:28', '2022-01-06 13:14:28'),
(19, 3, 10, 110, NULL, NULL, 1, '2022-01-06 13:15:33', '2022-01-06 13:15:33'),
(20, 3, 11, 12, NULL, NULL, 1, '2022-01-06 13:15:53', '2022-01-06 13:15:53'),
(21, 3, 12, 11, NULL, NULL, 1, '2022-01-06 13:16:10', '2022-01-06 13:16:10'),
(22, 3, 13, 4, NULL, NULL, 1, '2022-01-06 13:17:42', '2022-01-06 13:17:42'),
(23, 3, 14, 81, NULL, NULL, 1, '2022-01-06 13:18:03', '2022-01-06 13:18:03'),
(24, 3, 15, 0, NULL, NULL, 1, '2022-01-06 13:18:18', '2022-01-06 13:18:18'),
(25, 3, 16, 0, NULL, NULL, 1, '2022-01-06 13:18:37', '2022-01-06 13:18:37'),
(26, 3, 17, 95, NULL, NULL, 1, '2022-01-06 13:18:54', '2022-01-06 13:18:54'),
(27, 3, 18, 0, NULL, NULL, 1, '2022-01-06 13:19:08', '2022-01-06 13:19:08'),
(28, 3, 19, 0, NULL, NULL, 1, '2022-01-06 13:19:27', '2022-01-06 13:19:27'),
(29, 3, 20, 0, NULL, NULL, 1, '2022-01-06 13:19:45', '2022-01-06 13:19:45'),
(30, 3, 21, 0, NULL, NULL, 1, '2022-01-06 13:20:06', '2022-01-06 13:20:06'),
(31, 3, 26, 100, NULL, NULL, 1, '2022-01-06 13:25:01', '2022-01-06 13:25:01'),
(32, 3, 27, 100, NULL, NULL, 1, '2022-01-06 13:25:19', '2022-01-06 13:25:19'),
(33, 3, 28, 100, NULL, NULL, 1, '2022-01-06 13:25:35', '2022-01-06 13:25:35'),
(34, 3, 29, 100, NULL, NULL, 1, '2022-01-06 13:25:55', '2022-01-06 13:25:55'),
(35, 3, 30, 3601, NULL, NULL, 1, '2022-01-06 13:26:25', '2022-01-06 13:26:25'),
(36, 3, 31, 364, NULL, NULL, 1, '2022-01-06 13:26:40', '2022-01-06 13:26:40'),
(37, 3, 32, 29, NULL, NULL, 1, '2022-01-06 13:26:59', '2022-01-06 13:26:59'),
(38, 3, 33, 5044, NULL, NULL, 1, '2022-01-06 13:27:23', '2022-01-06 13:27:23'),
(39, 3, 34, 7971, NULL, NULL, 1, '2022-01-06 13:27:43', '2022-01-06 13:27:43'),
(40, 3, 35, 9145, NULL, NULL, 1, '2022-01-06 13:28:06', '2022-01-06 13:28:06'),
(41, 3, 36, 6323, NULL, NULL, 1, '2022-01-06 13:28:52', '2022-01-06 13:28:52'),
(42, 3, 37, 4774, NULL, NULL, 1, '2022-01-06 13:29:15', '2022-01-06 13:29:15'),
(43, 3, 38, 1475, NULL, NULL, 1, '2022-01-06 13:29:34', '2022-01-06 13:29:34'),
(44, 3, 39, 3092, NULL, NULL, 1, '2022-01-06 13:30:06', '2022-01-06 13:30:06'),
(45, 3, 40, 2271, NULL, NULL, 1, '2022-01-06 13:30:30', '2022-01-06 13:30:30'),
(46, 3, 41, 2000, NULL, NULL, 1, '2022-01-06 13:30:45', '2022-01-06 13:30:45'),
(47, 3, 42, 1000, NULL, NULL, 1, '2022-01-06 13:31:08', '2022-01-06 13:31:08'),
(48, 3, 43, 3481, NULL, NULL, 1, '2022-01-06 13:31:24', '2022-01-06 13:31:24'),
(49, 3, 44, 5929, NULL, NULL, 1, '2022-01-06 13:31:42', '2022-01-06 13:31:42'),
(50, 3, 45, 1436, NULL, NULL, 1, '2022-01-06 13:31:57', '2022-01-06 13:31:57'),
(51, 3, 46, 64, NULL, NULL, 1, '2022-01-06 13:32:18', '2022-01-06 13:32:18'),
(52, 3, 47, 2388, NULL, NULL, 1, '2022-01-06 13:32:36', '2022-01-06 13:32:36'),
(53, 3, 48, 12850, NULL, NULL, 1, '2022-01-06 13:32:58', '2022-01-06 13:32:58'),
(54, 3, 49, 1177, NULL, NULL, 1, '2022-01-06 13:33:15', '2022-01-06 13:33:15'),
(55, 3, 50, 1898, NULL, NULL, 1, '2022-01-06 13:33:37', '2022-01-06 13:33:37'),
(56, 3, 51, 7558, NULL, NULL, 1, '2022-01-06 13:33:57', '2022-01-06 13:33:57'),
(57, 3, 52, 737, NULL, NULL, 1, '2022-01-06 13:34:12', '2022-01-06 13:34:12'),
(58, 3, 53, 240, NULL, NULL, 1, '2022-01-06 13:34:25', '2022-01-06 13:34:25'),
(59, 3, 54, 7206, NULL, NULL, 1, '2022-01-06 13:34:50', '2022-01-06 13:34:50'),
(60, 3, 55, 1779, NULL, NULL, 1, '2022-01-06 13:35:03', '2022-01-06 13:35:03'),
(61, 3, 56, 79, NULL, NULL, 1, '2022-01-06 13:35:20', '2022-01-06 13:35:20'),
(62, 3, 57, 86, NULL, NULL, 1, '2022-01-06 13:35:32', '2022-01-06 13:35:32'),
(63, 3, 58, 150, NULL, NULL, 1, '2022-01-06 13:35:46', '2022-01-06 13:35:46'),
(64, 3, 59, 1200, NULL, NULL, 1, '2022-01-06 13:36:08', '2022-01-06 13:36:08'),
(65, 3, 60, 700, NULL, NULL, 1, '2022-01-06 13:36:19', '2022-01-06 13:36:19'),
(66, 3, 61, 1576, NULL, NULL, 1, '2022-01-06 13:36:34', '2022-01-06 13:36:34'),
(67, 3, 62, 4313, NULL, NULL, 1, '2022-01-06 13:36:50', '2022-01-06 13:36:50'),
(68, 3, 63, 1867, NULL, NULL, 1, '2022-01-06 13:37:04', '2022-01-06 13:37:04'),
(69, 3, 64, 3169, NULL, NULL, 1, '2022-01-06 13:37:18', '2022-01-06 13:37:18'),
(70, 3, 65, 3950, NULL, NULL, 1, '2022-01-06 13:37:33', '2022-01-06 13:37:33'),
(71, 3, 66, 4550, NULL, NULL, 1, '2022-01-06 13:37:50', '2022-01-06 13:37:50'),
(72, 3, 67, 3820, NULL, NULL, 1, '2022-01-06 13:38:06', '2022-01-06 13:38:06'),
(73, 3, 68, 1110, NULL, NULL, 1, '2022-01-06 13:38:20', '2022-01-06 13:38:20'),
(74, 3, 69, 937, NULL, NULL, 1, '2022-01-06 13:38:34', '2022-01-06 13:38:34'),
(75, 3, 70, 500, NULL, NULL, 1, '2022-01-06 13:38:59', '2022-01-06 13:38:59'),
(76, 3, 71, 500, NULL, NULL, 1, '2022-01-06 13:39:20', '2022-01-06 13:39:20'),
(77, 3, 73, 999, NULL, NULL, 1, '2022-01-06 13:39:41', '2022-01-06 13:39:41'),
(78, 3, 74, 998, NULL, NULL, 1, '2022-01-06 13:39:57', '2022-01-06 13:39:57'),
(79, 3, 75, 1100, NULL, NULL, 1, '2022-01-06 13:40:17', '2022-01-06 13:40:17'),
(80, 3, 76, 1550, NULL, NULL, 1, '2022-01-06 13:40:38', '2022-01-06 13:40:38'),
(81, 3, 77, 3921, NULL, NULL, 1, '2022-01-06 13:41:17', '2022-01-06 13:41:17'),
(82, 3, 78, 5052, NULL, NULL, 1, '2022-01-06 13:41:34', '2022-01-06 13:41:34'),
(83, 3, 79, 4600, NULL, NULL, 1, '2022-01-06 13:42:06', '2022-01-06 13:42:06'),
(84, 3, 79, 4600, NULL, NULL, 0, '2022-01-06 13:42:07', '2022-01-06 13:50:27'),
(85, 3, 80, 5250, NULL, NULL, 1, '2022-01-06 13:51:26', '2022-01-06 13:51:26'),
(86, 3, 81, 4950, NULL, NULL, 1, '2022-01-06 13:51:51', '2022-01-06 13:51:51'),
(87, 3, 82, 1000, NULL, NULL, 1, '2022-01-06 13:52:08', '2022-01-06 13:52:08'),
(88, 3, 83, 4095, NULL, NULL, 1, '2022-01-06 13:52:30', '2022-01-06 13:52:30'),
(89, 3, 84, 1048, NULL, NULL, 1, '2022-01-06 13:52:55', '2022-01-06 13:52:55'),
(90, 3, 85, 1040, NULL, NULL, 1, '2022-01-06 13:53:13', '2022-01-06 13:53:13'),
(91, 3, 86, 811, NULL, NULL, 1, '2022-01-06 13:53:46', '2022-01-06 13:53:46'),
(92, 3, 87, 770, NULL, NULL, 1, '2022-01-06 13:54:02', '2022-01-06 13:54:02'),
(93, 3, 88, 492, NULL, NULL, 1, '2022-01-06 13:54:16', '2022-01-06 13:54:16'),
(94, 3, 89, 900, NULL, NULL, 1, '2022-01-06 13:54:32', '2022-01-06 13:54:32'),
(95, 3, 90, 841, NULL, NULL, 1, '2022-01-06 13:54:50', '2022-01-06 13:54:50'),
(96, 3, 91, 124, NULL, NULL, 1, '2022-01-06 13:55:12', '2022-01-06 13:55:12'),
(97, 3, 92, 59, NULL, NULL, 1, '2022-01-06 13:55:27', '2022-01-06 13:55:27'),
(98, 3, 93, 219, NULL, NULL, 1, '2022-01-06 13:55:42', '2022-01-06 13:55:42'),
(99, 3, 94, 0, NULL, NULL, 1, '2022-01-06 13:55:57', '2022-01-06 13:55:57'),
(100, 3, 95, 68, NULL, NULL, 1, '2022-01-06 13:56:20', '2022-01-06 13:56:20'),
(101, 3, 96, 12968, NULL, NULL, 1, '2022-01-06 13:56:36', '2022-01-06 13:56:36'),
(102, 3, 97, 19744, NULL, NULL, 1, '2022-01-06 13:56:51', '2022-01-06 13:56:51'),
(103, 3, 98, 4488, NULL, NULL, 1, '2022-01-06 13:57:11', '2022-01-06 13:57:11'),
(104, 3, 99, 2504, NULL, NULL, 1, '2022-01-06 13:57:29', '2022-01-06 13:57:29'),
(105, 3, 100, 7515, NULL, NULL, 1, '2022-01-06 13:57:53', '2022-01-06 13:57:53'),
(106, 3, 101, 467, NULL, NULL, 1, '2022-01-06 13:58:13', '2022-01-06 13:58:13'),
(107, 3, 102, 1130, NULL, NULL, 1, '2022-01-06 13:58:28', '2022-01-06 13:58:28'),
(108, 3, 103, 2536, NULL, NULL, 1, '2022-01-06 13:59:01', '2022-01-06 13:59:01'),
(109, 3, 104, 1212, NULL, NULL, 1, '2022-01-06 14:00:51', '2022-01-06 14:00:51'),
(110, 3, 105, 3700, NULL, NULL, 1, '2022-01-06 14:01:21', '2022-01-06 14:01:21'),
(111, 3, 106, 2450, NULL, NULL, 1, '2022-01-06 14:01:56', '2022-01-06 14:01:56'),
(112, 3, 107, 2246, NULL, NULL, 1, '2022-01-06 14:02:11', '2022-01-06 14:02:11'),
(113, 3, 108, 280, NULL, NULL, 1, '2022-01-06 14:02:29', '2022-01-06 14:02:29'),
(114, 3, 109, 120, NULL, NULL, 1, '2022-01-06 14:02:50', '2022-01-06 14:02:50'),
(115, 3, 110, 2294, NULL, NULL, 1, '2022-01-06 14:03:08', '2022-01-06 14:03:08'),
(116, 3, 111, 1344, NULL, NULL, 1, '2022-01-06 14:03:25', '2022-01-06 14:03:25'),
(117, 3, 112, 400, NULL, NULL, 1, '2022-01-06 14:03:37', '2022-01-06 14:03:37'),
(118, 3, 113, 590, NULL, NULL, 1, '2022-01-06 14:04:09', '2022-01-06 14:04:09'),
(119, 3, 114, 0, NULL, NULL, 1, '2022-01-06 14:04:33', '2022-01-06 14:04:33'),
(120, 3, 115, 0, NULL, NULL, 1, '2022-01-06 14:04:49', '2022-01-06 14:04:49'),
(121, 3, 116, 0, NULL, NULL, 1, '2022-01-06 14:05:06', '2022-01-06 14:05:06'),
(122, 3, 117, 0, NULL, NULL, 1, '2022-01-06 14:05:20', '2022-01-06 14:05:20'),
(123, 3, 118, 0, NULL, NULL, 1, '2022-01-06 14:05:39', '2022-01-06 14:05:39'),
(124, 3, 119, 87, NULL, NULL, 1, '2022-01-06 14:06:04', '2022-01-06 14:06:04'),
(125, 3, 120, 290, NULL, NULL, 1, '2022-01-06 14:06:27', '2022-01-06 14:06:27'),
(126, 3, 121, 500, NULL, NULL, 1, '2022-01-06 14:06:47', '2022-01-06 14:06:47'),
(127, 3, 122, 0, NULL, NULL, 1, '2022-01-06 14:07:00', '2022-01-06 14:07:00'),
(128, 3, 123, 0, NULL, NULL, 1, '2022-01-06 14:07:14', '2022-01-06 14:07:14'),
(129, 3, 124, 150, NULL, NULL, 1, '2022-01-06 14:07:29', '2022-01-06 14:07:29'),
(130, 3, 125, 150, NULL, NULL, 1, '2022-01-06 14:07:43', '2022-01-06 14:07:43'),
(131, 3, 126, 692, NULL, NULL, 1, '2022-01-06 14:07:59', '2022-01-06 14:07:59'),
(132, 3, 127, 114, NULL, NULL, 1, '2022-01-06 14:08:13', '2022-01-06 14:08:13'),
(133, 3, 128, 751, NULL, NULL, 1, '2022-01-06 14:08:36', '2022-01-06 14:08:36'),
(134, 3, 129, 385, NULL, NULL, 1, '2022-01-06 14:08:51', '2022-01-06 14:08:51'),
(135, 3, 130, 98, NULL, NULL, 1, '2022-01-06 14:09:08', '2022-01-06 14:09:08'),
(136, 3, 131, 100, NULL, NULL, 1, '2022-01-06 14:09:23', '2022-01-06 14:09:23'),
(137, 3, 132, 100, NULL, NULL, 1, '2022-01-06 14:09:42', '2022-01-06 14:09:42'),
(138, 3, 133, 88, NULL, NULL, 1, '2022-01-06 14:10:13', '2022-01-06 14:10:13'),
(139, 3, 134, 24, NULL, NULL, 1, '2022-01-06 14:10:25', '2022-01-06 14:10:25'),
(140, 3, 135, 782, NULL, NULL, 1, '2022-01-06 14:10:44', '2022-01-06 14:10:44'),
(141, 3, 136, 368, NULL, NULL, 1, '2022-01-06 14:10:58', '2022-01-06 14:10:58'),
(142, 3, 137, 100, NULL, NULL, 1, '2022-01-06 14:11:13', '2022-01-06 14:11:13'),
(143, 3, 138, 242, NULL, NULL, 1, '2022-01-06 14:11:32', '2022-01-06 14:11:32'),
(144, 3, 139, 321, NULL, NULL, 1, '2022-01-06 14:11:50', '2022-01-06 14:11:50'),
(145, 3, 140, 100, NULL, NULL, 1, '2022-01-06 14:12:06', '2022-01-06 14:12:06'),
(146, 3, 141, 100, NULL, NULL, 1, '2022-01-06 14:12:17', '2022-01-06 14:12:17'),
(147, 3, 142, 10, NULL, NULL, 1, '2022-01-06 14:12:41', '2022-01-06 14:12:41'),
(148, 3, 143, 18, NULL, NULL, 1, '2022-01-06 14:13:04', '2022-01-06 14:13:04'),
(149, 3, 144, 4, NULL, NULL, 1, '2022-01-06 14:13:19', '2022-01-06 14:13:19'),
(150, 3, 145, 14, NULL, NULL, 1, '2022-01-06 14:13:37', '2022-01-06 14:13:37'),
(151, 3, 146, 10, NULL, NULL, 1, '2022-01-06 14:13:53', '2022-01-06 14:13:53'),
(152, 3, 147, 16, NULL, NULL, 1, '2022-01-06 14:14:12', '2022-01-06 14:14:12'),
(153, 3, 148, 6, NULL, NULL, 1, '2022-01-06 14:14:29', '2022-01-06 14:14:29'),
(154, 3, 149, 26, NULL, NULL, 1, '2022-01-06 14:14:48', '2022-01-06 14:14:48'),
(155, 3, 150, 98, NULL, NULL, 1, '2022-01-06 14:15:00', '2022-01-06 14:15:00'),
(156, 3, 150, 0, NULL, NULL, 0, '2022-01-06 14:15:13', '2022-01-06 14:16:28'),
(157, 3, 151, 0, NULL, NULL, 1, '2022-01-06 14:16:47', '2022-01-06 14:16:47'),
(158, 3, 152, 400, NULL, NULL, 1, '2022-01-06 14:17:09', '2022-01-06 14:17:09'),
(159, 3, 153, 50, NULL, NULL, 1, '2022-01-06 14:17:33', '2022-01-06 14:17:33'),
(160, 3, 154, 30, NULL, NULL, 1, '2022-01-06 14:17:50', '2022-01-06 14:17:50'),
(161, 3, 155, 226, NULL, NULL, 1, '2022-01-06 14:18:13', '2022-01-06 14:18:13'),
(162, 3, 156, 0, NULL, NULL, 1, '2022-01-06 14:18:30', '2022-01-06 14:18:30'),
(163, 3, 157, 150, NULL, NULL, 1, '2022-01-06 14:18:42', '2022-01-06 14:18:42'),
(164, 3, 159, 50, NULL, NULL, 1, '2022-01-06 14:20:00', '2022-01-06 14:20:00'),
(165, 3, 160, 309, NULL, NULL, 1, '2022-01-06 14:20:27', '2022-01-06 14:20:27'),
(166, 3, 161, 40, NULL, NULL, 1, '2022-01-06 14:21:10', '2022-01-06 14:21:10'),
(167, 3, 162, 94, NULL, NULL, 1, '2022-01-06 14:21:33', '2022-01-06 14:21:33'),
(168, 3, 163, 100, NULL, NULL, 1, '2022-01-06 14:21:54', '2022-01-06 14:21:54'),
(169, 3, 164, 25, NULL, NULL, 1, '2022-01-06 14:22:13', '2022-01-06 14:22:13'),
(170, 3, 165, 25, NULL, NULL, 1, '2022-01-06 14:22:30', '2022-01-06 14:22:30'),
(171, 3, 166, 10, NULL, NULL, 0, '2022-01-06 14:22:45', '2022-01-06 14:23:32'),
(172, 3, 167, 10, NULL, NULL, 1, '2022-01-06 14:23:26', '2022-01-06 14:23:26'),
(173, 3, 168, 3, NULL, NULL, 1, '2022-01-06 14:23:50', '2022-01-06 14:23:50'),
(174, 3, 169, 1, NULL, NULL, 1, '2022-01-06 14:24:06', '2022-01-06 14:24:06'),
(175, 3, 170, 26, NULL, NULL, 1, '2022-01-06 14:24:22', '2022-01-06 14:24:22'),
(176, 3, 171, 387, NULL, NULL, 1, '2022-01-06 14:24:41', '2022-01-06 14:24:41'),
(177, 3, 172, 0, NULL, NULL, 1, '2022-01-06 14:24:56', '2022-01-06 14:24:56'),
(178, 3, 173, 0, NULL, NULL, 1, '2022-01-06 14:25:10', '2022-01-06 14:25:10'),
(179, 3, 174, 0, NULL, NULL, 1, '2022-01-06 14:25:30', '2022-01-06 14:25:30'),
(180, 3, 175, 0, NULL, NULL, 1, '2022-01-06 14:25:56', '2022-01-06 14:25:56'),
(181, 3, 176, 0, NULL, NULL, 1, '2022-01-06 14:26:10', '2022-01-06 14:26:10'),
(182, 3, 177, 1015, NULL, NULL, 1, '2022-01-06 14:26:28', '2022-01-06 14:26:28'),
(183, 3, 178, 1090, NULL, NULL, 1, '2022-01-06 14:26:41', '2022-01-06 14:26:41'),
(184, 3, 179, 200, NULL, NULL, 1, '2022-01-06 14:27:00', '2022-01-06 14:27:00'),
(185, 3, 180, 0, NULL, NULL, 1, '2022-01-06 14:27:19', '2022-01-06 14:27:19'),
(186, 3, 181, 75, NULL, NULL, 1, '2022-01-06 14:27:39', '2022-01-06 14:27:39'),
(187, 3, 182, 0, NULL, NULL, 1, '2022-01-06 14:27:51', '2022-01-06 14:27:51'),
(188, 3, 183, 0, NULL, NULL, 1, '2022-01-06 14:28:15', '2022-01-06 14:28:15'),
(189, 3, 184, 0, NULL, NULL, 1, '2022-01-06 14:28:42', '2022-01-06 14:28:42'),
(190, 3, 185, 100, NULL, NULL, 1, '2022-01-06 14:29:02', '2022-01-06 14:29:02'),
(191, 3, 186, 175, NULL, NULL, 1, '2022-01-06 14:29:14', '2022-01-06 14:29:14'),
(192, 3, 187, 175, NULL, NULL, 1, '2022-01-06 14:29:29', '2022-01-06 14:29:29'),
(193, 3, 188, 50, NULL, NULL, 1, '2022-01-06 14:29:43', '2022-01-06 14:29:43'),
(194, 3, 189, 15, NULL, NULL, 1, '2022-01-06 14:29:57', '2022-01-06 14:29:57'),
(195, 3, 190, 0, NULL, NULL, 1, '2022-01-06 14:30:10', '2022-01-06 14:30:10'),
(196, 3, 191, 13, NULL, NULL, 1, '2022-01-06 14:30:22', '2022-01-06 14:30:22'),
(197, 3, 192, 5841, NULL, NULL, 1, '2022-01-06 14:34:54', '2022-01-06 14:34:54'),
(198, 3, 193, 3274, NULL, NULL, 1, '2022-01-06 14:35:12', '2022-01-06 14:35:12'),
(199, 3, 194, 0, NULL, NULL, 1, '2022-01-06 14:35:25', '2022-01-06 14:35:25'),
(200, 3, 195, 17, NULL, NULL, 1, '2022-01-06 14:35:46', '2022-01-06 14:35:46'),
(201, 3, 196, 5089, NULL, NULL, 1, '2022-01-06 14:36:16', '2022-01-06 14:36:16'),
(202, 3, 197, 0, NULL, NULL, 1, '2022-01-06 14:36:27', '2022-01-06 14:36:27'),
(203, 3, 198, 0, NULL, NULL, 0, '2022-01-06 14:36:58', '2022-01-06 14:37:35'),
(204, 3, 199, 0, NULL, NULL, 0, '2022-01-06 14:37:27', '2022-01-06 14:37:36'),
(205, 3, 200, 1406, NULL, NULL, 1, '2022-01-06 14:38:12', '2022-01-06 14:38:12'),
(206, 3, 201, 365, NULL, NULL, 1, '2022-01-06 14:38:26', '2022-01-06 14:38:26'),
(207, 3, 202, 314, NULL, NULL, 1, '2022-01-06 14:38:58', '2022-01-06 14:38:58'),
(208, 3, 205, 625, NULL, NULL, 1, '2022-01-06 14:39:19', '2022-01-06 14:39:19'),
(209, 3, 206, 724, NULL, NULL, 1, '2022-01-06 14:39:52', '2022-01-06 14:39:52'),
(210, 3, 207, 2061, NULL, NULL, 1, '2022-01-06 14:40:13', '2022-01-06 14:40:13'),
(211, 3, 208, 6184, NULL, NULL, 1, '2022-01-06 14:40:28', '2022-01-06 14:40:28'),
(212, 3, 209, 3148, NULL, NULL, 1, '2022-01-06 14:40:54', '2022-01-06 14:40:54'),
(213, 3, 210, 5131, NULL, NULL, 1, '2022-01-06 14:41:17', '2022-01-06 14:41:17'),
(214, 3, 211, 20127, NULL, NULL, 1, '2022-01-06 14:41:31', '2022-01-06 14:41:31'),
(215, 3, 212, 987, NULL, NULL, 1, '2022-01-06 14:41:47', '2022-01-06 14:41:47'),
(216, 3, 213, 8334, NULL, NULL, 1, '2022-01-06 14:42:05', '2022-01-06 14:42:05'),
(217, 3, 214, 2637, NULL, NULL, 1, '2022-01-06 14:42:20', '2022-01-06 14:42:20'),
(218, 3, 215, 5688, NULL, NULL, 1, '2022-01-06 14:42:37', '2022-01-06 14:42:37'),
(219, 3, 216, 1702, NULL, NULL, 1, '2022-01-06 14:42:56', '2022-01-06 14:42:56'),
(220, 3, 217, 452, NULL, NULL, 1, '2022-01-06 14:43:14', '2022-01-06 14:43:14'),
(221, 3, 218, 34535, NULL, NULL, 1, '2022-01-06 14:43:35', '2022-01-06 14:43:35'),
(222, 3, 219, 13768, NULL, NULL, 1, '2022-01-06 14:45:21', '2022-01-06 14:45:21'),
(223, 3, 220, 17952, NULL, NULL, 1, '2022-01-06 14:46:23', '2022-01-06 14:46:23'),
(224, 3, 221, 92, NULL, NULL, 1, '2022-01-06 14:47:11', '2022-01-06 14:47:11'),
(225, 3, 222, 38, NULL, NULL, 1, '2022-01-06 14:47:31', '2022-01-06 14:47:31'),
(226, 3, 223, 13, NULL, NULL, 1, '2022-01-06 14:47:44', '2022-01-06 14:47:44'),
(227, 3, 224, 49, NULL, NULL, 1, '2022-01-06 14:48:02', '2022-01-06 14:48:02'),
(228, 3, 225, 137, NULL, NULL, 1, '2022-01-06 14:48:54', '2022-01-06 14:48:54'),
(229, 3, 226, 80, NULL, NULL, 1, '2022-01-06 15:33:44', '2022-01-06 15:33:44'),
(230, 3, 227, 94, NULL, NULL, 1, '2022-01-06 18:15:34', '2022-01-06 18:15:34'),
(231, 3, 228, 97, NULL, NULL, 1, '2022-01-06 18:21:31', '2022-01-06 18:21:31'),
(232, 3, 229, 42, NULL, NULL, 1, '2022-01-06 18:21:47', '2022-01-06 18:21:47'),
(233, 3, 230, 39, NULL, NULL, 1, '2022-01-06 18:22:05', '2022-01-06 18:22:05'),
(234, 3, 231, 48, NULL, NULL, 1, '2022-01-06 18:22:27', '2022-01-06 18:22:27'),
(235, 3, 232, 63, NULL, NULL, 1, '2022-01-06 18:22:39', '2022-01-06 18:22:39'),
(236, 3, 233, 143, NULL, NULL, 1, '2022-01-06 18:23:13', '2022-01-06 18:23:13'),
(237, 3, 234, 1594, NULL, NULL, 1, '2022-01-06 18:23:24', '2022-01-06 18:23:24'),
(238, 3, 235, 4545, NULL, NULL, 1, '2022-01-06 18:23:39', '2022-01-06 18:23:39'),
(239, 3, 236, 0, NULL, NULL, 1, '2022-01-06 18:25:42', '2022-01-06 18:25:42'),
(240, 3, 237, 1150, NULL, NULL, 1, '2022-01-06 19:14:09', '2022-01-06 19:14:09'),
(241, 3, 238, 1673, NULL, NULL, 1, '2022-01-06 19:14:21', '2022-01-06 19:14:21'),
(242, 3, 239, 3997, NULL, NULL, 1, '2022-01-06 19:14:38', '2022-01-06 19:14:38'),
(243, 3, 240, 4008, NULL, NULL, 1, '2022-01-06 19:14:55', '2022-01-06 19:14:55'),
(244, 3, 241, 1094, NULL, NULL, 1, '2022-01-06 19:15:15', '2022-01-06 19:15:15'),
(245, 3, 242, 691, NULL, NULL, 1, '2022-01-06 19:15:29', '2022-01-06 19:15:29'),
(246, 3, 243, 1073, NULL, NULL, 1, '2022-01-06 19:15:43', '2022-01-06 19:15:43'),
(247, 3, 244, 4153, NULL, NULL, 1, '2022-01-06 19:16:03', '2022-01-06 19:16:03'),
(248, 3, 245, 5675, NULL, NULL, 1, '2022-01-06 19:16:42', '2022-01-06 19:16:42'),
(249, 3, 246, 50, NULL, NULL, 1, '2022-01-06 19:17:04', '2022-01-06 19:17:04'),
(250, 3, 247, 4919, NULL, NULL, 1, '2022-01-06 19:17:20', '2022-01-06 19:17:20'),
(251, 3, 248, 5968, NULL, NULL, 1, '2022-01-06 19:17:34', '2022-01-06 19:17:34'),
(252, 3, 249, 1000, NULL, NULL, 1, '2022-01-06 19:17:49', '2022-01-06 19:17:49'),
(253, 3, 250, 1000, NULL, NULL, 1, '2022-01-06 19:18:04', '2022-01-06 19:18:04'),
(254, 3, 251, 1000, NULL, NULL, 1, '2022-01-06 19:18:19', '2022-01-06 19:18:19'),
(255, 3, 252, 2256, NULL, NULL, 1, '2022-01-06 19:18:41', '2022-01-06 19:18:41'),
(256, 3, 253, 1544, NULL, NULL, 1, '2022-01-06 19:18:58', '2022-01-06 19:18:58'),
(257, 3, 254, 3826, NULL, NULL, 1, '2022-01-06 19:19:30', '2022-01-06 19:19:30'),
(258, 3, 255, 0, NULL, NULL, 1, '2022-01-06 19:19:41', '2022-01-06 19:19:41'),
(259, 3, 256, 23, NULL, NULL, 1, '2022-01-06 19:19:53', '2022-01-06 19:19:53'),
(260, 3, 257, 452, NULL, NULL, 1, '2022-01-06 19:20:11', '2022-01-06 19:20:11'),
(261, 3, 259, 483, NULL, NULL, 1, '2022-01-06 19:20:28', '2022-01-06 19:20:28'),
(262, 3, 260, 440, NULL, NULL, 1, '2022-01-06 19:20:41', '2022-01-06 19:20:41'),
(263, 3, 261, 720, NULL, NULL, 1, '2022-01-06 19:20:54', '2022-01-06 19:20:54'),
(264, 3, 262, 718, NULL, NULL, 1, '2022-01-06 19:21:24', '2022-01-06 19:21:24'),
(265, 3, 263, 1045, NULL, NULL, 1, '2022-01-06 19:21:42', '2022-01-06 19:21:42'),
(266, 3, 264, 1074, NULL, NULL, 1, '2022-01-06 19:21:58', '2022-01-06 19:21:58'),
(267, 3, 265, 998, NULL, NULL, 1, '2022-01-06 19:22:16', '2022-01-06 19:22:16'),
(268, 3, 266, 2077, NULL, NULL, 1, '2022-01-06 19:22:42', '2022-01-06 19:22:42'),
(269, 3, 267, 1048, NULL, NULL, 1, '2022-01-06 19:23:00', '2022-01-06 19:23:00'),
(270, 3, 268, 809, NULL, NULL, 1, '2022-01-06 19:24:23', '2022-01-06 19:24:23'),
(271, 3, 269, 464, NULL, NULL, 1, '2022-01-06 19:25:16', '2022-01-06 19:25:16'),
(272, 3, 270, 1992, NULL, NULL, 1, '2022-01-06 19:25:46', '2022-01-06 19:25:46'),
(273, 3, 271, 24, NULL, NULL, 1, '2022-01-06 19:26:01', '2022-01-06 19:26:01'),
(274, 3, 272, 0, NULL, NULL, 1, '2022-01-06 19:26:17', '2022-01-06 19:26:17'),
(275, 3, 273, 900, NULL, NULL, 1, '2022-01-06 19:26:33', '2022-01-06 19:26:33'),
(276, 3, 274, 60, NULL, NULL, 1, '2022-01-06 19:26:55', '2022-01-06 19:26:55'),
(277, 3, 276, 0, NULL, NULL, 1, '2022-01-06 19:27:12', '2022-01-06 19:27:12'),
(278, 3, 277, 1455, NULL, NULL, 1, '2022-01-06 19:27:23', '2022-01-06 19:27:23'),
(279, 3, 278, 96, NULL, NULL, 1, '2022-01-06 19:27:38', '2022-01-06 19:27:38'),
(280, 3, 279, 249, NULL, NULL, 1, '2022-01-06 19:27:58', '2022-01-06 19:27:58'),
(281, 3, 280, 212, NULL, NULL, 1, '2022-01-06 19:28:13', '2022-01-06 19:28:13'),
(282, 3, 281, 0, NULL, NULL, 0, '2022-01-06 19:28:28', '2022-01-06 19:28:58'),
(283, 3, 281, 3, NULL, NULL, 1, '2022-01-06 19:29:18', '2022-01-06 19:29:18'),
(284, 3, 282, 1, NULL, NULL, 1, '2022-01-06 19:29:52', '2022-01-06 19:29:52'),
(285, 3, 283, 2, NULL, NULL, 1, '2022-01-06 19:30:03', '2022-01-06 19:30:03'),
(286, 3, 284, 0, NULL, NULL, 1, '2022-01-06 19:30:20', '2022-01-06 19:30:20'),
(287, 3, 285, 0, NULL, NULL, 1, '2022-01-06 19:30:30', '2022-01-06 19:30:30'),
(288, 3, 286, 0, NULL, NULL, 1, '2022-01-06 19:30:41', '2022-01-06 19:30:41'),
(289, 3, 287, 0, NULL, NULL, 1, '2022-01-06 19:30:53', '2022-01-06 19:30:53'),
(290, 3, 288, 2, NULL, NULL, 1, '2022-01-06 19:31:05', '2022-01-06 19:31:05'),
(291, 3, 289, 8, NULL, NULL, 1, '2022-01-06 19:31:19', '2022-01-06 19:31:19'),
(292, 3, 290, 14, NULL, NULL, 1, '2022-01-06 19:31:34', '2022-01-06 19:31:34'),
(293, 3, 291, 0, NULL, NULL, 1, '2022-01-06 19:31:54', '2022-01-06 19:31:54'),
(294, 3, 292, 0, NULL, NULL, 1, '2022-01-06 19:32:13', '2022-01-06 19:32:13'),
(295, 3, 293, 1, NULL, NULL, 1, '2022-01-06 19:32:28', '2022-01-06 19:32:28'),
(296, 3, 294, 0, NULL, NULL, 1, '2022-01-06 19:32:43', '2022-01-06 19:32:43'),
(297, 3, 295, 0, NULL, NULL, 1, '2022-01-06 19:34:14', '2022-01-06 19:34:14'),
(298, 3, 296, 0, NULL, NULL, 1, '2022-01-06 19:34:43', '2022-01-06 19:34:43'),
(299, 3, 297, 3, NULL, NULL, 1, '2022-01-06 19:35:32', '2022-01-06 19:35:32'),
(300, 3, 298, 14, NULL, NULL, 1, '2022-01-06 19:35:51', '2022-01-06 19:35:51'),
(301, 3, 299, 0, NULL, NULL, 1, '2022-01-06 19:36:02', '2022-01-06 19:36:02'),
(302, 3, 300, 0, NULL, NULL, 1, '2022-01-06 19:36:12', '2022-01-06 19:36:12'),
(303, 3, 301, 10, NULL, NULL, 1, '2022-01-06 19:36:23', '2022-01-06 19:36:23'),
(304, 3, 302, 5, NULL, NULL, 1, '2022-01-06 19:36:39', '2022-01-06 19:36:39'),
(305, 3, 303, 0, NULL, NULL, 1, '2022-01-06 19:37:29', '2022-01-06 19:37:29'),
(306, 3, 304, 0, NULL, NULL, 1, '2022-01-06 19:37:48', '2022-01-06 19:37:48'),
(307, 3, 305, 0, NULL, NULL, 1, '2022-01-06 19:38:01', '2022-01-06 19:38:01'),
(308, 3, 306, 0, NULL, NULL, 1, '2022-01-06 19:38:14', '2022-01-06 19:38:14'),
(309, 3, 307, 2, NULL, NULL, 1, '2022-01-06 19:38:26', '2022-01-06 19:38:26'),
(310, 3, 308, 13, NULL, NULL, 1, '2022-01-06 19:40:16', '2022-01-06 19:40:16'),
(311, 3, 309, 1, NULL, NULL, 1, '2022-01-06 19:40:29', '2022-01-06 19:40:29'),
(312, 3, 310, 6, NULL, NULL, 1, '2022-01-06 19:40:53', '2022-01-06 19:40:53'),
(313, 3, 311, 2, NULL, NULL, 1, '2022-01-06 19:41:11', '2022-01-06 19:41:11'),
(314, 3, 312, 1, NULL, NULL, 0, '2022-01-06 19:41:25', '2022-01-06 19:42:42'),
(315, 3, 312, 1, NULL, NULL, 1, '2022-01-06 19:42:35', '2022-01-06 19:42:35'),
(316, 3, 313, 6, NULL, NULL, 1, '2022-01-06 19:43:05', '2022-01-06 19:43:05'),
(317, 3, 314, 2, NULL, NULL, 1, '2022-01-06 19:43:28', '2022-01-06 19:43:28'),
(318, 3, 315, 1, NULL, NULL, 1, '2022-01-06 19:43:48', '2022-01-06 19:43:48'),
(319, 3, 316, 0, NULL, NULL, 1, '2022-01-06 19:44:06', '2022-01-06 19:44:06'),
(320, 3, 317, 0, NULL, NULL, 1, '2022-01-06 19:44:31', '2022-01-06 19:44:31'),
(321, 3, 318, 0, NULL, NULL, 1, '2022-01-06 19:44:48', '2022-01-06 19:44:48'),
(322, 3, 319, 5, NULL, NULL, 1, '2022-01-06 19:45:07', '2022-01-06 19:45:07'),
(323, 3, 320, 0, NULL, NULL, 1, '2022-01-06 19:45:37', '2022-01-06 19:45:37'),
(324, 3, 321, 0, NULL, NULL, 1, '2022-01-06 19:46:00', '2022-01-06 19:46:00'),
(325, 3, 323, 0, NULL, NULL, 1, '2022-01-06 19:46:25', '2022-01-06 19:46:25'),
(326, 3, 324, 0, NULL, NULL, 1, '2022-01-06 19:46:37', '2022-01-06 19:46:37'),
(327, 3, 325, 6, NULL, NULL, 1, '2022-01-06 19:46:59', '2022-01-06 19:46:59'),
(328, 3, 326, 337, NULL, NULL, 1, '2022-01-06 19:47:45', '2022-01-06 19:47:45'),
(329, 3, 327, 6, NULL, NULL, 0, '2022-01-06 19:48:05', '2022-01-06 19:49:15'),
(330, 3, 327, 6, NULL, NULL, 0, '2022-01-06 19:49:07', '2022-01-06 19:49:17'),
(331, 3, 327, 6, NULL, NULL, 1, '2022-01-06 19:49:08', '2022-01-06 19:49:08'),
(332, 3, 328, 343, NULL, NULL, 1, '2022-01-06 19:49:44', '2022-01-06 19:49:44'),
(333, 3, 329, 0, NULL, NULL, 1, '2022-01-06 19:50:10', '2022-01-06 19:50:10'),
(334, 3, 330, 54, NULL, NULL, 1, '2022-01-06 19:50:24', '2022-01-06 19:50:24'),
(335, 3, 331, 1, NULL, NULL, 1, '2022-01-06 19:50:41', '2022-01-06 19:50:41'),
(336, 3, 332, 1, NULL, NULL, 1, '2022-01-06 19:50:54', '2022-01-06 19:50:54'),
(337, 3, 333, 2, NULL, NULL, 1, '2022-01-06 19:51:07', '2022-01-06 19:51:07'),
(338, 3, 334, 1, NULL, NULL, 1, '2022-01-06 19:51:20', '2022-01-06 19:51:20'),
(339, 3, 335, 4, NULL, NULL, 1, '2022-01-06 19:51:34', '2022-01-06 19:51:34'),
(340, 3, 336, 4, NULL, NULL, 1, '2022-01-06 19:51:52', '2022-01-06 19:51:52'),
(341, 3, 337, 2, NULL, NULL, 1, '2022-01-06 19:52:03', '2022-01-06 19:52:03'),
(342, 3, 338, 1, NULL, NULL, 1, '2022-01-06 19:52:22', '2022-01-06 19:52:22'),
(343, 3, 339, 0, NULL, NULL, 1, '2022-01-06 19:52:35', '2022-01-06 19:52:35'),
(344, 3, 340, 20, NULL, NULL, 1, '2022-01-06 19:52:55', '2022-01-06 19:52:55'),
(345, 3, 341, 343, NULL, NULL, 1, '2022-01-06 19:53:13', '2022-01-06 19:53:13'),
(346, 3, 342, 5, NULL, NULL, 1, '2022-01-06 19:53:30', '2022-01-06 19:53:30'),
(347, 3, 343, 2, NULL, NULL, 1, '2022-01-06 19:53:42', '2022-01-06 19:53:42'),
(348, 3, 344, 3, NULL, NULL, 1, '2022-01-06 19:54:03', '2022-01-06 19:54:03'),
(349, 3, 345, 3, NULL, NULL, 1, '2022-01-06 19:54:18', '2022-01-06 19:54:18'),
(350, 3, 346, 0, NULL, NULL, 1, '2022-01-06 19:54:34', '2022-01-06 19:54:34'),
(351, 3, 347, 25, NULL, NULL, 1, '2022-01-06 19:54:46', '2022-01-06 19:54:46'),
(352, 3, 348, 58, NULL, NULL, 1, '2022-01-06 19:55:02', '2022-01-06 19:55:02'),
(353, 3, 349, 0, NULL, NULL, 1, '2022-01-06 19:55:15', '2022-01-06 19:55:15'),
(354, 3, 350, 23, NULL, NULL, 1, '2022-01-06 19:55:30', '2022-01-06 19:55:30'),
(355, 3, 351, 14, NULL, NULL, 1, '2022-01-06 19:55:44', '2022-01-06 19:55:44'),
(356, 3, 352, 0, NULL, NULL, 1, '2022-01-06 19:55:58', '2022-01-06 19:55:58'),
(357, 3, 353, 2, NULL, NULL, 1, '2022-01-06 19:56:15', '2022-01-06 19:56:15'),
(358, 3, 354, 0, NULL, NULL, 1, '2022-01-06 19:56:33', '2022-01-06 19:56:33'),
(359, 3, 355, 1006, NULL, NULL, 1, '2022-01-06 19:56:46', '2022-01-06 19:56:46'),
(360, 3, 356, 4, NULL, NULL, 1, '2022-01-06 19:57:24', '2022-01-06 19:57:24'),
(361, 3, 357, 6133, NULL, NULL, 1, '2022-01-06 19:57:40', '2022-01-06 19:57:40'),
(362, 3, 358, 3726, NULL, NULL, 1, '2022-01-06 19:58:02', '2022-01-06 19:58:02'),
(363, 3, 359, 42, NULL, NULL, 1, '2022-01-06 19:58:21', '2022-01-06 19:58:21'),
(364, 3, 360, 120, NULL, NULL, 1, '2022-01-06 19:58:35', '2022-01-06 19:58:35'),
(365, 3, 361, 0, NULL, NULL, 1, '2022-01-06 19:58:47', '2022-01-06 19:58:47'),
(366, 3, 362, 14, NULL, NULL, 1, '2022-01-06 19:59:02', '2022-01-06 19:59:02'),
(367, 3, 363, 741, NULL, NULL, 1, '2022-01-06 19:59:16', '2022-01-06 19:59:16'),
(368, 3, 364, 7, NULL, NULL, 1, '2022-01-06 19:59:31', '2022-01-06 19:59:31'),
(369, 3, 365, 287, NULL, NULL, 1, '2022-01-06 19:59:46', '2022-01-06 19:59:46'),
(370, 3, 366, 2, NULL, NULL, 1, '2022-01-06 20:00:02', '2022-01-06 20:00:02'),
(371, 3, 367, 4314, NULL, NULL, 1, '2022-01-06 20:00:23', '2022-01-06 20:00:23'),
(372, 3, 368, 1399, NULL, NULL, 1, '2022-01-06 20:00:40', '2022-01-06 20:00:40'),
(373, 3, 369, 59963, NULL, NULL, 1, '2022-01-06 20:01:06', '2022-01-06 20:01:06'),
(374, 3, 370, 39074, NULL, NULL, 1, '2022-01-06 20:01:26', '2022-01-06 20:01:26'),
(375, 3, 371, 86139, NULL, NULL, 1, '2022-01-06 20:01:47', '2022-01-06 20:01:47'),
(376, 3, 372, 0, NULL, NULL, 1, '2022-01-06 20:02:07', '2022-01-06 20:02:07'),
(377, 3, 373, 74236, NULL, NULL, 1, '2022-01-06 20:02:24', '2022-01-06 20:02:24'),
(378, 3, 374, 13, NULL, NULL, 1, '2022-01-06 20:02:40', '2022-01-06 20:02:40'),
(379, 3, 375, 2707, NULL, NULL, 1, '2022-01-06 20:02:58', '2022-01-06 20:02:58'),
(380, 3, 376, 500, NULL, NULL, 1, '2022-01-06 20:03:15', '2022-01-06 20:03:15'),
(381, 3, 377, 0, NULL, NULL, 1, '2022-01-06 20:03:43', '2022-01-06 20:03:43'),
(382, 3, 378, 8951, NULL, NULL, 1, '2022-01-06 20:04:02', '2022-01-06 20:04:02'),
(383, 3, 379, 309, NULL, NULL, 1, '2022-01-06 20:04:15', '2022-01-06 20:04:15'),
(384, 3, 380, 26243, NULL, NULL, 1, '2022-01-06 20:04:33', '2022-01-06 20:04:33'),
(385, 3, 381, 2101, NULL, NULL, 1, '2022-01-06 20:04:46', '2022-01-06 20:04:46'),
(386, 3, 382, 17826, NULL, NULL, 1, '2022-01-06 20:05:05', '2022-01-06 20:05:05'),
(387, 3, 383, 366, NULL, NULL, 1, '2022-01-06 20:05:24', '2022-01-06 20:05:24'),
(388, 3, 384, 87, NULL, NULL, 1, '2022-01-06 20:05:38', '2022-01-06 20:05:38'),
(389, 3, 385, 84, NULL, NULL, 1, '2022-01-06 20:05:56', '2022-01-06 20:05:56'),
(390, 3, 386, 2, NULL, NULL, 1, '2022-01-06 20:06:11', '2022-01-06 20:06:11'),
(391, 3, 387, 6, NULL, NULL, 1, '2022-01-06 20:06:24', '2022-01-06 20:06:24'),
(392, 3, 388, 0, NULL, NULL, 1, '2022-01-06 20:06:38', '2022-01-06 20:06:38'),
(393, 3, 389, 118, NULL, NULL, 1, '2022-01-06 20:06:50', '2022-01-06 20:06:50'),
(394, 3, 390, 1230, NULL, NULL, 1, '2022-01-06 20:07:02', '2022-01-06 20:07:02'),
(395, 3, 391, 6, NULL, NULL, 1, '2022-01-06 20:07:14', '2022-01-06 20:07:14'),
(396, 3, 392, 5032, NULL, NULL, 1, '2022-01-06 20:07:29', '2022-01-06 20:07:29'),
(397, 3, 393, 100, NULL, NULL, 1, '2022-01-06 20:07:41', '2022-01-06 20:07:41'),
(398, 3, 394, 822, NULL, NULL, 1, '2022-01-06 20:07:58', '2022-01-06 20:07:58'),
(399, 3, 395, 35, NULL, NULL, 1, '2022-01-06 20:08:25', '2022-01-06 20:08:25'),
(400, 3, 396, 96, NULL, NULL, 1, '2022-01-06 20:08:42', '2022-01-06 20:08:42'),
(401, 3, 397, 59, NULL, NULL, 1, '2022-01-06 20:08:55', '2022-01-06 20:08:55'),
(402, 3, 398, 740, NULL, NULL, 1, '2022-01-06 20:09:58', '2022-01-06 20:09:58'),
(403, 3, 399, 685, NULL, NULL, 1, '2022-01-06 20:10:16', '2022-01-06 20:10:16'),
(404, 3, 400, 692, NULL, NULL, 1, '2022-01-06 20:10:35', '2022-01-06 20:10:35'),
(405, 3, 401, 292, NULL, NULL, 1, '2022-01-06 20:10:55', '2022-01-06 20:10:55'),
(406, 3, 402, 246015, NULL, NULL, 1, '2022-01-06 20:11:17', '2022-01-06 20:11:17'),
(407, 3, 403, 200000, NULL, NULL, 1, '2022-01-06 20:11:39', '2022-01-06 20:11:39'),
(408, 3, 404, 19800, NULL, NULL, 1, '2022-01-06 20:11:55', '2022-01-06 20:11:55'),
(409, 3, 405, 0, NULL, NULL, 1, '2022-01-06 20:12:15', '2022-01-06 20:12:15'),
(410, 3, 406, 0, NULL, NULL, 1, '2022-01-06 20:12:27', '2022-01-06 20:12:27'),
(411, 3, 407, 0, NULL, NULL, 1, '2022-01-06 20:12:46', '2022-01-06 20:12:46'),
(412, 3, 408, 0, NULL, NULL, 1, '2022-01-06 20:12:58', '2022-01-06 20:12:58'),
(413, 3, 409, 7, NULL, NULL, 1, '2022-01-06 20:13:18', '2022-01-06 20:13:18'),
(414, 3, 410, 1, NULL, NULL, 1, '2022-01-06 20:13:29', '2022-01-06 20:13:29'),
(415, 3, 411, 774, NULL, NULL, 1, '2022-01-06 20:13:42', '2022-01-06 20:13:42'),
(416, 3, 412, 0, NULL, NULL, 1, '2022-01-06 20:13:55', '2022-01-06 20:13:55'),
(417, 3, 413, 0, NULL, NULL, 1, '2022-01-06 20:14:15', '2022-01-06 20:14:15'),
(418, 3, 414, 1260, NULL, NULL, 1, '2022-01-06 20:14:30', '2022-01-06 20:14:30'),
(419, 3, 415, 3375, NULL, NULL, 1, '2022-01-06 20:14:46', '2022-01-06 20:14:46'),
(420, 3, 416, 0, NULL, NULL, 1, '2022-01-06 20:15:02', '2022-01-06 20:15:02'),
(421, 3, 417, 46, NULL, NULL, 1, '2022-01-06 20:15:16', '2022-01-06 20:15:16'),
(422, 3, 418, 48, NULL, NULL, 1, '2022-01-06 20:15:32', '2022-01-06 20:15:32'),
(423, 3, 419, 248, NULL, NULL, 1, '2022-01-06 20:15:48', '2022-01-06 20:15:48'),
(424, 3, 420, 29, NULL, NULL, 1, '2022-01-06 20:16:02', '2022-01-06 20:16:02'),
(425, 3, 421, 10, NULL, NULL, 1, '2022-01-06 20:16:23', '2022-01-06 20:16:23'),
(426, 3, 422, 11985, NULL, NULL, 1, '2022-01-06 20:17:01', '2022-01-06 20:17:01'),
(427, 3, 423, 15467, NULL, NULL, 1, '2022-01-06 20:17:16', '2022-01-06 20:17:16'),
(428, 3, 424, 13134, NULL, NULL, 1, '2022-01-06 20:18:02', '2022-01-06 20:18:02'),
(429, 3, 425, 8669, NULL, NULL, 1, '2022-01-06 20:18:20', '2022-01-06 20:18:20'),
(430, 3, 426, 204, NULL, NULL, 1, '2022-01-06 20:18:39', '2022-01-06 20:18:39'),
(431, 3, 427, 0, NULL, NULL, 1, '2022-01-06 20:19:07', '2022-01-06 20:19:07'),
(432, 3, 428, 130, NULL, NULL, 1, '2022-01-06 20:19:21', '2022-01-06 20:19:21'),
(433, 3, 429, 46, NULL, NULL, 1, '2022-01-06 20:19:34', '2022-01-06 20:19:34'),
(434, 3, 430, 0, NULL, NULL, 1, '2022-01-06 20:20:10', '2022-01-06 20:20:10'),
(435, 3, 431, 0, NULL, NULL, 1, '2022-01-06 20:20:24', '2022-01-06 20:20:24'),
(436, 3, 432, 11, NULL, NULL, 1, '2022-01-06 20:20:38', '2022-01-06 20:20:38'),
(437, 3, 433, 63900, NULL, NULL, 1, '2022-01-06 20:21:08', '2022-01-06 20:21:08'),
(438, 3, 434, 12681, NULL, NULL, 1, '2022-01-06 20:21:26', '2022-01-06 20:21:26'),
(439, 3, 435, 9734, NULL, NULL, 1, '2022-01-06 20:21:41', '2022-01-06 20:21:41'),
(440, 3, 436, 44, NULL, NULL, 1, '2022-01-06 20:21:58', '2022-01-06 20:21:58'),
(441, 3, 437, 243, NULL, NULL, 1, '2022-01-06 20:22:12', '2022-01-06 20:22:12'),
(442, 3, 438, 5, NULL, NULL, 1, '2022-01-06 20:22:30', '2022-01-06 20:22:30'),
(443, 3, 439, 0, NULL, NULL, 1, '2022-01-06 20:22:49', '2022-01-06 20:22:49'),
(444, 3, 440, 91, NULL, NULL, 1, '2022-01-06 20:23:06', '2022-01-06 20:23:06'),
(445, 3, 441, 0, NULL, NULL, 1, '2022-01-06 20:23:20', '2022-01-06 20:23:20'),
(446, 3, 442, 1300, NULL, NULL, 1, '2022-01-06 20:23:37', '2022-01-06 20:23:37'),
(447, 3, 443, 27850, NULL, NULL, 1, '2022-01-06 20:23:51', '2022-01-06 20:23:51'),
(448, 3, 444, 28700, NULL, NULL, 1, '2022-01-06 20:24:06', '2022-01-06 20:24:06'),
(449, 3, 445, 345800, NULL, NULL, 1, '2022-01-06 20:24:20', '2022-01-06 20:24:20'),
(450, 3, 446, 94, NULL, NULL, 1, '2022-01-06 20:24:34', '2022-01-06 20:24:34'),
(451, 3, 447, 173, NULL, NULL, 1, '2022-01-06 20:25:09', '2022-01-06 20:25:09'),
(452, 3, 448, 3, NULL, NULL, 1, '2022-01-06 20:25:21', '2022-01-06 20:25:21'),
(453, 3, 449, 290, NULL, NULL, 1, '2022-01-06 20:25:35', '2022-01-06 20:25:35'),
(454, 3, 450, 172, NULL, NULL, 1, '2022-01-06 20:25:50', '2022-01-06 20:25:50'),
(455, 3, 451, 3, NULL, NULL, 1, '2022-01-06 20:26:05', '2022-01-06 20:26:05'),
(456, 3, 452, 3, NULL, NULL, 1, '2022-01-06 20:26:20', '2022-01-06 20:26:20'),
(457, 3, 453, 0, NULL, NULL, 1, '2022-01-06 20:26:35', '2022-01-06 20:26:35'),
(458, 3, 454, 0, NULL, NULL, 1, '2022-01-06 20:26:52', '2022-01-06 20:26:52'),
(459, 3, 455, 0, NULL, NULL, 1, '2022-01-06 20:27:05', '2022-01-06 20:27:05'),
(460, 3, 456, 5305, NULL, NULL, 1, '2022-01-06 20:27:30', '2022-01-06 20:27:30'),
(461, 3, 457, 9862, NULL, NULL, 1, '2022-01-06 20:27:49', '2022-01-06 20:27:49'),
(462, 3, 458, 9698, NULL, NULL, 1, '2022-01-06 20:28:09', '2022-01-06 20:28:09'),
(463, 3, 459, 9971, NULL, NULL, 1, '2022-01-06 20:28:25', '2022-01-06 20:28:25'),
(464, 3, 460, 9743, NULL, NULL, 1, '2022-01-06 20:28:40', '2022-01-06 20:28:40'),
(465, 5, 461, 13653, NULL, NULL, 1, '2022-01-07 15:22:52', '2022-01-07 15:22:52'),
(466, 5, 462, 38012, NULL, NULL, 1, '2022-01-07 15:23:13', '2022-01-07 15:23:13'),
(467, 5, 463, 147, NULL, NULL, 1, '2022-01-07 15:23:37', '2022-01-07 15:23:37'),
(468, 5, 464, 1469, NULL, NULL, 1, '2022-01-07 15:24:17', '2022-01-07 15:24:17'),
(469, 5, 465, 153, NULL, NULL, 1, '2022-01-07 15:24:29', '2022-01-07 15:24:29'),
(470, 5, 466, 136800, NULL, NULL, 1, '2022-01-07 15:24:50', '2022-01-07 15:24:50'),
(471, 5, 467, 143551, NULL, NULL, 1, '2022-01-07 15:25:03', '2022-01-07 15:25:03'),
(472, 5, 468, 24963, NULL, NULL, 1, '2022-01-07 15:25:19', '2022-01-07 15:25:19'),
(473, 5, 469, 135128, NULL, NULL, 1, '2022-01-07 15:25:32', '2022-01-07 15:25:32'),
(474, 5, 470, 46786, NULL, NULL, 1, '2022-01-07 15:25:59', '2022-01-07 15:25:59'),
(475, 5, 471, 19, NULL, NULL, 1, '2022-01-07 15:26:16', '2022-01-07 15:26:16'),
(476, 5, 472, 26899, NULL, NULL, 1, '2022-01-07 15:26:28', '2022-01-07 15:26:28'),
(477, 5, 473, 4000, NULL, NULL, 1, '2022-01-07 15:26:42', '2022-01-07 15:26:42'),
(478, 5, 474, 0, NULL, NULL, 1, '2022-01-07 15:26:52', '2022-01-07 15:26:52'),
(479, 5, 475, 99, NULL, NULL, 1, '2022-01-07 15:27:09', '2022-01-07 15:27:09'),
(480, 5, 476, 0, NULL, NULL, 1, '2022-01-07 15:27:18', '2022-01-07 15:27:18'),
(481, 5, 477, 0, NULL, NULL, 1, '2022-01-07 15:27:31', '2022-01-07 15:27:31'),
(482, 5, 478, 232, NULL, NULL, 1, '2022-01-07 15:27:43', '2022-01-07 15:27:43'),
(483, 5, 479, 1225, NULL, NULL, 1, '2022-01-07 15:28:00', '2022-01-07 15:28:00'),
(484, 5, 480, 160, NULL, NULL, 1, '2022-01-07 15:28:31', '2022-01-07 15:28:31'),
(485, 5, 481, 200, NULL, NULL, 1, '2022-01-07 15:28:44', '2022-01-07 15:28:44'),
(486, 5, 482, 281, NULL, NULL, 1, '2022-01-07 15:28:56', '2022-01-07 15:28:56'),
(487, 5, 483, 62, NULL, NULL, 1, '2022-01-07 15:29:11', '2022-01-07 15:29:11'),
(488, 5, 484, 999600, NULL, NULL, 1, '2022-01-07 15:29:27', '2022-01-07 15:29:27'),
(489, 5, 485, 825, NULL, NULL, 1, '2022-01-07 15:29:45', '2022-01-07 15:29:45'),
(490, 5, 486, 0, NULL, NULL, 1, '2022-01-07 15:30:02', '2022-01-07 15:30:02'),
(491, 5, 487, 9670, NULL, NULL, 1, '2022-01-07 15:30:15', '2022-01-07 15:30:15'),
(492, 5, 488, 14950, NULL, NULL, 1, '2022-01-07 15:30:29', '2022-01-07 15:30:29'),
(493, 5, 489, 0, NULL, NULL, 1, '2022-01-07 15:30:43', '2022-01-07 15:30:43'),
(494, 5, 490, 0, NULL, NULL, 1, '2022-01-07 15:30:57', '2022-01-07 15:30:57'),
(495, 6, 491, 9094, NULL, NULL, 1, '2022-01-07 15:34:17', '2022-01-07 15:34:17'),
(496, 7, 492, 0, NULL, NULL, 1, '2022-01-07 15:36:56', '2022-01-07 15:36:56'),
(497, 8, 493, 0, NULL, NULL, 1, '2022-01-07 15:39:00', '2022-01-07 15:39:00'),
(498, 9, 494, 81, NULL, NULL, 1, '2022-01-07 15:41:44', '2022-01-07 15:41:44'),
(499, 10, 495, 15, NULL, NULL, 1, '2022-01-07 15:45:15', '2022-01-07 15:45:15'),
(500, 11, 496, 95, NULL, NULL, 1, '2022-01-10 15:18:56', '2022-01-10 15:18:56'),
(501, 12, 339, 6, NULL, NULL, 1, '2022-01-13 14:13:34', '2022-01-13 14:13:34'),
(502, 12, 345, 6, NULL, NULL, 1, '2022-01-13 14:14:04', '2022-01-13 14:14:04'),
(503, 13, 220, 21000, NULL, NULL, 1, '2022-01-13 19:26:35', '2022-01-13 19:26:35'),
(504, 14, 345, 100, NULL, NULL, 1, '2022-01-17 19:17:37', '2022-01-17 19:17:37'),
(505, 15, 102, 900, NULL, NULL, 1, '2022-01-18 22:11:43', '2022-01-18 22:11:43'),
(506, 15, 281, 2, NULL, NULL, 1, '2022-01-18 22:12:03', '2022-01-18 22:12:03'),
(507, 15, 446, 60, NULL, NULL, 1, '2022-01-18 22:14:12', '2022-01-18 22:14:12'),
(508, 16, 339, 6, NULL, NULL, 1, '2022-01-20 15:38:14', '2022-01-20 15:38:14'),
(509, 16, 345, 6, NULL, NULL, 1, '2022-01-20 15:38:38', '2022-01-20 15:38:38'),
(510, 17, 469, 222417, NULL, NULL, 0, '2022-01-20 20:55:57', '2022-01-20 20:56:07'),
(511, 17, 469, 222417, NULL, NULL, 1, '2022-01-20 20:56:41', '2022-01-20 20:56:41'),
(512, 18, 468, 2717, NULL, NULL, 1, '2022-01-25 15:21:08', '2022-01-25 15:21:08'),
(513, 19, 397, 147, NULL, NULL, 1, '2022-01-25 16:46:40', '2022-01-25 16:46:40'),
(514, 19, 468, 100, NULL, NULL, 1, '2022-01-25 16:47:07', '2022-01-25 16:47:07'),
(515, 20, 497, 16500, NULL, NULL, 1, '2022-01-25 16:57:57', '2022-01-25 16:57:57'),
(516, 21, 32, 175, NULL, NULL, 1, '2022-02-15 17:00:42', '2022-02-15 17:00:42'),
(517, 21, 446, 193, NULL, NULL, 1, '2022-02-15 17:01:02', '2022-02-15 17:01:02'),
(518, 21, 361, 30, NULL, NULL, 1, '2022-02-15 17:01:26', '2022-02-15 17:01:26'),
(519, 22, 446, 267, NULL, NULL, 1, '2022-02-24 21:56:40', '2022-02-24 21:56:40'),
(520, 22, 361, 30, NULL, NULL, 1, '2022-02-24 21:57:01', '2022-02-24 21:57:01'),
(521, 22, 35, 175, NULL, NULL, 1, '2022-02-24 21:57:19', '2022-02-24 21:57:19'),
(522, 23, 498, 4, NULL, NULL, 1, '2022-02-24 22:12:10', '2022-02-24 22:12:10'),
(523, 24, 498, 4, NULL, NULL, 1, '2022-02-24 22:15:16', '2022-02-24 22:15:16'),
(524, 25, 385, 2, NULL, NULL, 1, '2022-02-24 22:20:42', '2022-02-24 22:20:42'),
(525, 26, 476, 125, NULL, NULL, 1, '2022-03-05 15:40:47', '2022-03-05 15:40:47'),
(526, 27, 469, 222282, NULL, NULL, 1, '2022-03-05 15:42:48', '2022-03-05 15:42:48'),
(527, 27, 387, 15, NULL, NULL, 1, '2022-03-05 15:45:30', '2022-03-05 15:45:30'),
(528, 28, 281, 9, NULL, NULL, 1, '2022-03-05 15:47:42', '2022-03-05 15:47:42'),
(529, 29, 298, 30, NULL, NULL, 1, '2022-03-05 16:10:05', '2022-03-05 16:10:05'),
(530, 29, 499, 1, NULL, NULL, 1, '2022-03-05 16:13:48', '2022-03-05 16:13:48'),
(531, 30, 500, 100, NULL, NULL, 1, '2022-03-05 16:22:11', '2022-03-05 16:22:11'),
(532, 30, 345, 100, NULL, NULL, 1, '2022-03-05 16:22:34', '2022-03-05 16:22:34'),
(533, 31, 115, 52, NULL, NULL, 1, '2022-03-05 16:34:11', '2022-03-05 16:34:11'),
(534, 32, 501, 1000, NULL, NULL, 1, '2022-03-05 17:00:51', '2022-03-05 17:00:51'),
(535, 32, 502, 994, NULL, NULL, 1, '2022-03-05 17:01:29', '2022-03-05 17:01:29'),
(536, 33, 369, 2000, NULL, NULL, 1, '2022-03-05 17:39:06', '2022-03-05 17:39:06'),
(537, 34, 474, 1000, NULL, NULL, 1, '2022-03-05 17:40:46', '2022-03-05 17:40:46'),
(538, 35, 503, 12, NULL, NULL, 1, '2022-03-05 17:49:03', '2022-03-05 17:49:03'),
(539, 36, 504, 1, NULL, NULL, 1, '2022-03-07 18:05:43', '2022-03-07 18:05:43'),
(540, 37, 446, 1023, NULL, NULL, 1, '2022-03-08 16:10:58', '2022-03-08 16:10:58'),
(541, 37, 397, 500, NULL, NULL, 1, '2022-03-08 16:11:15', '2022-03-08 16:11:15'),
(542, 37, 395, 50, NULL, NULL, 0, '2022-03-08 16:11:40', '2022-03-08 16:11:48'),
(543, 37, 395, 500, NULL, NULL, 1, '2022-03-08 16:11:58', '2022-03-08 16:11:58'),
(544, 37, 101, 2000, NULL, NULL, 1, '2022-03-08 16:12:18', '2022-03-08 16:12:18'),
(545, 37, 280, 1000, NULL, NULL, 1, '2022-03-08 16:12:40', '2022-03-08 16:12:40'),
(546, 37, 359, 2000, NULL, NULL, 1, '2022-03-08 16:14:18', '2022-03-08 16:14:18'),
(547, 37, 420, 100, NULL, NULL, 1, '2022-03-08 16:15:52', '2022-03-08 16:15:52'),
(548, 37, 419, 100, NULL, NULL, 1, '2022-03-08 16:16:09', '2022-03-08 16:16:09'),
(549, 37, 418, 100, NULL, NULL, 1, '2022-03-08 16:16:22', '2022-03-08 16:16:22'),
(550, 37, 417, 100, NULL, NULL, 1, '2022-03-08 16:16:35', '2022-03-08 16:16:35'),
(551, 37, 421, 100, NULL, NULL, 1, '2022-03-08 16:16:50', '2022-03-08 16:16:50'),
(552, 37, 505, 100, NULL, NULL, 1, '2022-03-08 16:40:41', '2022-03-08 16:40:41'),
(553, 37, 99, 1000, NULL, NULL, 1, '2022-03-08 16:41:10', '2022-03-08 16:41:10'),
(554, 37, 95, 2000, NULL, NULL, 1, '2022-03-08 16:41:35', '2022-03-08 16:41:35'),
(555, 37, 361, 500, NULL, NULL, 1, '2022-03-08 16:42:16', '2022-03-08 16:42:16'),
(556, 37, 102, 5000, NULL, NULL, 1, '2022-03-08 16:42:42', '2022-03-08 16:42:42'),
(557, 37, 119, 1500, NULL, NULL, 1, '2022-03-08 16:43:06', '2022-03-08 16:43:06'),
(558, 37, 104, 5000, NULL, NULL, 1, '2022-03-08 16:43:42', '2022-03-08 16:43:42'),
(559, 37, 367, 500, NULL, NULL, 1, '2022-03-08 16:44:06', '2022-03-08 16:44:06'),
(560, 37, 111, 1000, NULL, NULL, 1, '2022-03-08 16:44:24', '2022-03-08 16:44:24'),
(561, 38, 83, 1000, NULL, NULL, 1, '2022-03-08 16:47:10', '2022-03-08 16:47:10'),
(562, 38, 219, 2000, NULL, NULL, 1, '2022-03-08 16:47:36', '2022-03-08 16:47:36'),
(563, 39, 462, 70000, NULL, NULL, 1, '2022-03-08 16:49:42', '2022-03-08 16:49:42'),
(564, 39, 464, 26000, NULL, NULL, 1, '2022-03-08 16:50:07', '2022-03-08 16:50:07'),
(565, 39, 360, 2000, NULL, NULL, 1, '2022-03-08 16:50:35', '2022-03-08 16:50:35'),
(566, 40, 472, 75000, NULL, NULL, 1, '2022-03-28 15:23:19', '2022-03-28 15:23:19'),
(567, 41, 414, 1, NULL, NULL, 1, '2022-03-28 15:37:14', '2022-03-28 15:37:14'),
(568, 41, 506, 1, NULL, NULL, 1, '2022-03-28 15:37:33', '2022-03-28 15:37:33'),
(569, 42, 485, 250, NULL, NULL, 1, '2022-03-28 15:39:16', '2022-03-28 15:39:16'),
(570, 43, 372, 100000, NULL, NULL, 1, '2022-03-28 15:41:38', '2022-03-28 15:41:38'),
(571, 43, 371, 50000, NULL, NULL, 1, '2022-03-28 15:41:55', '2022-03-28 15:41:55'),
(572, 43, 369, 50000, NULL, NULL, 1, '2022-03-28 15:42:15', '2022-03-28 15:42:15'),
(573, 43, 370, 20000, NULL, NULL, 1, '2022-03-28 15:42:29', '2022-03-28 15:42:29'),
(574, 44, 32, 48, NULL, NULL, 1, '2022-03-28 22:11:02', '2022-03-28 22:11:02'),
(575, 45, 32, 48, NULL, NULL, 1, '2022-03-30 15:58:02', '2022-03-30 15:58:02'),
(576, 46, 358, 1000, NULL, NULL, 1, '2022-03-30 16:57:58', '2022-03-30 16:57:58'),
(577, 46, 357, 1000, NULL, NULL, 1, '2022-03-30 16:58:16', '2022-03-30 16:58:16'),
(578, 46, 378, 2310, NULL, NULL, 1, '2022-03-30 16:58:38', '2022-03-30 16:58:38'),
(579, 46, 31, 3000, NULL, NULL, 1, '2022-03-30 16:59:03', '2022-03-30 16:59:03'),
(580, 46, 32, 3000, NULL, NULL, 1, '2022-03-30 16:59:22', '2022-03-30 16:59:22'),
(581, 46, 46, 3000, NULL, NULL, 1, '2022-03-30 16:59:45', '2022-03-30 16:59:45'),
(582, 46, 93, 7000, NULL, NULL, 1, '2022-03-30 17:00:16', '2022-03-30 17:00:16'),
(583, 46, 94, 2000, NULL, NULL, 1, '2022-03-30 17:00:55', '2022-03-30 17:00:55'),
(584, 46, 175, 4, NULL, NULL, 1, '2022-03-30 17:02:04', '2022-03-30 17:02:04'),
(585, 46, 172, 20, NULL, NULL, 1, '2022-03-30 17:02:33', '2022-03-30 17:02:33'),
(586, 46, 174, 50, NULL, NULL, 1, '2022-03-30 17:04:00', '2022-03-30 17:04:00'),
(587, 46, 154, 50, NULL, NULL, 1, '2022-03-30 17:15:22', '2022-03-30 17:15:22'),
(588, 46, 216, 1100, NULL, NULL, 1, '2022-03-30 17:19:20', '2022-03-30 17:19:20'),
(589, 46, 507, 50, NULL, NULL, 1, '2022-03-30 17:36:23', '2022-03-30 17:36:23'),
(590, 46, 508, 150, NULL, NULL, 1, '2022-03-30 17:36:53', '2022-03-30 17:36:53'),
(591, 46, 509, 100, NULL, NULL, 1, '2022-03-30 17:37:39', '2022-03-30 17:37:39'),
(592, 46, 510, 200, NULL, NULL, 1, '2022-03-30 17:38:23', '2022-03-30 17:38:23'),
(593, 47, 119, 500, NULL, NULL, 1, '2022-03-30 20:04:37', '2022-03-30 20:04:37'),
(594, 47, 3, 200, NULL, NULL, 1, '2022-03-30 20:08:48', '2022-03-30 20:08:48'),
(595, 47, 512, 200, NULL, NULL, 1, '2022-03-30 20:09:11', '2022-03-30 20:09:11'),
(596, 47, 513, 5000, NULL, NULL, 1, '2022-03-30 20:17:43', '2022-03-30 20:17:43'),
(597, 47, 101, 1000, NULL, NULL, 1, '2022-03-30 20:17:59', '2022-03-30 20:17:59'),
(598, 47, 383, 3000, NULL, NULL, 1, '2022-03-30 20:18:19', '2022-03-30 20:18:19'),
(599, 47, 397, 100, NULL, NULL, 1, '2022-03-30 20:18:45', '2022-03-30 20:18:45'),
(600, 47, 395, 100, NULL, NULL, 1, '2022-03-30 20:19:07', '2022-03-30 20:19:07'),
(601, 47, 272, 2056, NULL, NULL, 1, '2022-03-30 20:20:04', '2022-03-30 20:20:04'),
(602, 47, 270, 8, NULL, NULL, 1, '2022-03-30 20:20:20', '2022-03-30 20:20:20'),
(603, 47, 271, 8, NULL, NULL, 1, '2022-03-30 20:20:37', '2022-03-30 20:20:37'),
(604, 47, 233, 1000, NULL, NULL, 1, '2022-03-30 20:21:00', '2022-03-30 20:21:00'),
(605, 47, 241, 2000, NULL, NULL, 1, '2022-03-30 20:21:21', '2022-03-30 20:21:21'),
(606, 47, 242, 1500, NULL, NULL, 1, '2022-03-30 20:21:38', '2022-03-30 20:21:38'),
(607, 47, 280, 2499, NULL, NULL, 1, '2022-03-30 20:29:41', '2022-03-30 20:29:41'),
(608, 47, 420, 98, NULL, NULL, 1, '2022-03-30 20:33:38', '2022-03-30 20:33:38'),
(609, 47, 505, 96, NULL, NULL, 1, '2022-03-30 21:45:26', '2022-03-30 21:45:26'),
(610, 47, 417, 94, NULL, NULL, 1, '2022-03-30 21:46:09', '2022-03-30 21:46:09'),
(611, 47, 421, 99, NULL, NULL, 1, '2022-03-30 21:46:48', '2022-03-30 21:46:48'),
(612, 47, 419, 97, NULL, NULL, 1, '2022-03-30 21:47:05', '2022-03-30 21:47:05'),
(613, 47, 511, 100, NULL, NULL, 1, '2022-03-30 21:48:45', '2022-03-30 21:48:45'),
(614, 48, 349, 2, NULL, NULL, 1, '2022-03-30 21:52:09', '2022-03-30 21:52:09'),
(615, 49, 514, 30, NULL, NULL, 1, '2022-03-30 21:59:02', '2022-03-30 21:59:02'),
(616, 49, 515, 500, NULL, NULL, 1, '2022-03-30 21:59:19', '2022-03-30 21:59:19'),
(617, 50, 500, 1, NULL, NULL, 1, '2022-04-27 16:35:35', '2022-04-27 16:35:35'),
(618, 50, 339, 1, NULL, NULL, 0, '2022-04-27 16:36:16', '2022-04-27 16:37:03'),
(619, 50, 517, 1, NULL, NULL, 1, '2022-04-27 16:37:09', '2022-04-27 16:37:09'),
(620, 50, 516, 1, NULL, NULL, 1, '2022-04-27 16:37:23', '2022-04-27 16:37:23'),
(621, 50, 374, 1, NULL, NULL, 1, '2022-04-27 16:37:48', '2022-04-27 16:37:48'),
(622, 50, 372, 1, NULL, NULL, 0, '2022-04-27 16:38:11', '2022-04-27 16:39:17'),
(623, 50, 372, 1, NULL, NULL, 0, '2022-04-27 16:38:48', '2022-04-27 16:39:18'),
(624, 50, 372, 1, NULL, NULL, 0, '2022-04-27 16:38:48', '2022-04-27 16:39:25'),
(625, 50, 372, 1, NULL, NULL, 1, '2022-04-27 16:38:49', '2022-04-27 16:38:49'),
(626, 50, 369, 1, NULL, NULL, 1, '2022-04-27 16:39:11', '2022-04-27 16:39:11'),
(627, 51, 372, 1171, NULL, NULL, 1, '2022-04-27 16:41:12', '2022-04-27 16:41:12'),
(628, 51, 371, 10, NULL, NULL, 1, '2022-04-27 16:42:39', '2022-04-27 16:42:39'),
(629, 51, 369, 1873, NULL, NULL, 1, '2022-04-27 16:43:17', '2022-04-27 16:43:17'),
(630, 52, 372, 1005, NULL, NULL, 1, '2022-04-27 16:44:50', '2022-04-27 16:44:50'),
(631, 52, 371, 2400, NULL, NULL, 1, '2022-04-27 16:45:04', '2022-04-27 16:45:04'),
(632, 52, 369, 3000, NULL, NULL, 1, '2022-04-27 16:45:49', '2022-04-27 16:45:49'),
(633, 53, 372, 3494, NULL, NULL, 1, '2022-04-27 16:47:25', '2022-04-27 16:47:25'),
(634, 53, 371, 2106, NULL, NULL, 1, '2022-04-27 16:47:37', '2022-04-27 16:47:37');
INSERT INTO `guia_entrada__produtos` (`id`, `guiaEntrada_id`, `produto_id`, `quantidade`, `custo_unitario`, `valor`, `status`, `created_at`, `updated_at`) VALUES
(635, 53, 369, 3486, NULL, NULL, 1, '2022-04-27 16:47:49', '2022-04-27 16:47:49'),
(636, 54, 462, 53900, NULL, NULL, 1, '2022-04-27 16:49:28', '2022-04-27 16:49:28'),
(637, 54, 461, 23000, NULL, NULL, 1, '2022-04-27 16:49:43', '2022-04-27 16:49:43'),
(638, 55, 235, 9, NULL, NULL, 1, '2022-04-27 16:52:41', '2022-04-27 16:52:41'),
(639, 56, 468, 58000, NULL, NULL, 1, '2022-04-28 13:55:11', '2022-04-28 13:55:11'),
(640, 56, 469, 222310, NULL, NULL, 1, '2022-04-28 13:55:36', '2022-04-28 13:55:36'),
(641, 57, 197, 4, NULL, NULL, 1, '2022-04-28 14:07:01', '2022-04-28 14:07:01'),
(642, 58, 518, 15, NULL, NULL, 1, '2022-05-10 22:05:27', '2022-05-10 22:05:27'),
(643, 58, 519, 13, NULL, NULL, 1, '2022-05-10 22:05:44', '2022-05-10 22:05:44'),
(644, 58, 520, 20, NULL, NULL, 1, '2022-05-10 22:05:58', '2022-05-10 22:05:58'),
(645, 59, 411, 364, NULL, NULL, 1, '2022-05-11 20:12:01', '2022-05-11 20:12:01'),
(646, 59, 205, 49, NULL, NULL, 1, '2022-05-11 20:12:34', '2022-05-11 20:12:34'),
(647, 59, 193, 50, NULL, NULL, 1, '2022-05-11 20:13:13', '2022-05-11 20:13:13'),
(648, 59, 192, 96, NULL, NULL, 1, '2022-05-11 20:13:38', '2022-05-11 20:13:38'),
(649, 59, 521, 4, NULL, NULL, 1, '2022-05-11 20:20:48', '2022-05-11 20:20:48'),
(650, 59, 522, 2, NULL, NULL, 1, '2022-05-11 20:21:05', '2022-05-11 20:21:05'),
(651, 60, 302, 25, NULL, NULL, 1, '2022-05-17 15:11:21', '2022-05-17 15:11:21'),
(652, 61, 302, 25, NULL, NULL, 1, '2022-05-17 15:18:42', '2022-05-17 15:18:42'),
(653, 62, 466, 21000, NULL, NULL, 1, '2022-05-24 21:16:34', '2022-05-24 21:16:34'),
(654, 63, 411, 54, NULL, NULL, 1, '2022-05-25 20:01:52', '2022-05-25 20:01:52'),
(655, 63, 412, 5, NULL, NULL, 1, '2022-05-25 20:02:38', '2022-05-25 20:02:38'),
(656, 63, 405, 10, NULL, NULL, 1, '2022-05-25 20:03:00', '2022-05-25 20:03:00'),
(657, 63, 406, 2, NULL, NULL, 1, '2022-05-25 20:03:20', '2022-05-25 20:03:20'),
(658, 63, 524, 90, NULL, NULL, 1, '2022-05-25 20:09:42', '2022-05-25 20:09:42'),
(659, 63, 525, 2, NULL, NULL, 1, '2022-05-25 20:09:54', '2022-05-25 20:09:54'),
(660, 63, 523, 4, NULL, NULL, 1, '2022-05-25 20:11:09', '2022-05-25 20:11:09'),
(661, 64, 430, 2, NULL, NULL, 1, '2022-05-25 20:17:14', '2022-05-25 20:17:14'),
(662, 65, 325, 1, NULL, NULL, 1, '2022-05-31 21:25:19', '2022-05-31 21:25:19'),
(663, 65, 335, 1, NULL, NULL, 1, '2022-05-31 21:25:37', '2022-05-31 21:25:37'),
(664, 66, 431, 2, NULL, NULL, 1, '2022-05-31 21:28:45', '2022-05-31 21:28:45'),
(665, 67, 466, 24000, NULL, NULL, 1, '2022-05-31 21:31:10', '2022-05-31 21:31:10'),
(666, 68, 325, 1, NULL, NULL, 1, '2022-05-31 21:33:08', '2022-05-31 21:33:08'),
(667, 68, 335, 1, NULL, NULL, 1, '2022-05-31 21:33:26', '2022-05-31 21:33:26'),
(668, 69, 115, 90, NULL, NULL, 1, '2022-05-31 21:35:22', '2022-05-31 21:35:22'),
(669, 69, 114, 60, NULL, NULL, 1, '2022-05-31 21:35:34', '2022-05-31 21:35:34'),
(670, 70, 310, 3, NULL, NULL, 1, '2022-05-31 22:20:41', '2022-05-31 22:20:41'),
(671, 71, 469, 5005, NULL, NULL, 1, '2022-06-01 19:38:52', '2022-06-01 19:38:52'),
(672, 71, 462, 1366, NULL, NULL, 1, '2022-06-01 19:39:19', '2022-06-01 19:39:19'),
(673, 71, 461, 1777, NULL, NULL, 1, '2022-06-01 19:40:24', '2022-06-01 19:40:24'),
(674, 71, 475, 68, NULL, NULL, 1, '2022-06-01 19:40:46', '2022-06-01 19:40:46'),
(675, 71, 390, 7, NULL, NULL, 1, '2022-06-01 19:44:24', '2022-06-01 19:44:24'),
(676, 71, 371, 65, NULL, NULL, 1, '2022-06-01 19:44:38', '2022-06-01 19:44:38'),
(677, 71, 369, 245, NULL, NULL, 1, '2022-06-01 19:44:51', '2022-06-01 19:44:51'),
(678, 71, 370, 68, NULL, NULL, 1, '2022-06-01 19:45:04', '2022-06-01 19:45:04'),
(679, 71, 372, 265, NULL, NULL, 1, '2022-06-01 19:45:45', '2022-06-01 19:45:45'),
(680, 71, 374, 1, NULL, NULL, 1, '2022-06-01 19:46:06', '2022-06-01 19:46:06'),
(681, 71, 96, 57, NULL, NULL, 1, '2022-06-01 19:48:16', '2022-06-01 19:48:16'),
(682, 71, 99, 8, NULL, NULL, 1, '2022-06-01 19:48:44', '2022-06-01 19:48:44'),
(683, 71, 102, 8, NULL, NULL, 1, '2022-06-01 19:50:03', '2022-06-01 19:50:03'),
(684, 71, 425, 39, NULL, NULL, 1, '2022-06-01 19:51:36', '2022-06-01 19:51:36'),
(685, 71, 382, 36, NULL, NULL, 1, '2022-06-01 19:53:19', '2022-06-01 19:53:19'),
(686, 71, 526, 1, NULL, NULL, 1, '2022-06-01 19:54:19', '2022-06-01 19:54:19'),
(687, 71, 527, 2, NULL, NULL, 1, '2022-06-01 19:54:34', '2022-06-01 19:54:34'),
(688, 71, 216, 7, NULL, NULL, 1, '2022-06-01 19:56:54', '2022-06-01 19:56:54'),
(689, 71, 213, 11, NULL, NULL, 1, '2022-06-01 19:57:12', '2022-06-01 19:57:12'),
(690, 71, 205, 21, NULL, NULL, 1, '2022-06-01 19:57:40', '2022-06-01 19:57:40'),
(691, 71, 211, 4, NULL, NULL, 1, '2022-06-01 19:59:21', '2022-06-01 19:59:21'),
(692, 71, 208, 5, NULL, NULL, 1, '2022-06-01 19:59:53', '2022-06-01 19:59:53'),
(693, 71, 207, 2, NULL, NULL, 1, '2022-06-01 20:00:12', '2022-06-01 20:00:12'),
(694, 71, 456, 94, NULL, NULL, 1, '2022-06-01 20:01:51', '2022-06-01 20:01:51'),
(695, 71, 457, 50, NULL, NULL, 1, '2022-06-01 20:02:14', '2022-06-01 20:02:14'),
(696, 71, 422, 76, NULL, NULL, 1, '2022-06-01 20:03:24', '2022-06-01 20:03:24'),
(697, 71, 423, 56, NULL, NULL, 1, '2022-06-01 20:03:38', '2022-06-01 20:03:38'),
(698, 71, 94, 10, NULL, NULL, 1, '2022-06-01 20:06:11', '2022-06-01 20:06:11'),
(699, 71, 446, 3.3, NULL, NULL, 1, '2022-06-01 20:08:38', '2022-06-01 20:08:38'),
(700, 71, 357, 24, NULL, NULL, 1, '2022-06-01 20:10:03', '2022-06-01 20:10:03'),
(701, 71, 106, 47, NULL, NULL, 1, '2022-06-01 20:34:14', '2022-06-01 20:34:14'),
(702, 71, 100, 2, NULL, NULL, 1, '2022-06-01 20:35:05', '2022-06-01 20:35:05'),
(703, 71, 101, 6, NULL, NULL, 1, '2022-06-01 20:35:24', '2022-06-01 20:35:24'),
(704, 71, 83, 12, NULL, NULL, 1, '2022-06-01 20:36:02', '2022-06-01 20:36:02'),
(705, 71, 367, 2, NULL, NULL, 1, '2022-06-01 20:37:46', '2022-06-01 20:37:46'),
(706, 71, 378, 5, NULL, NULL, 1, '2022-06-01 20:56:11', '2022-06-01 20:56:11'),
(707, 71, 528, 4, NULL, NULL, 1, '2022-06-01 20:57:38', '2022-06-01 20:57:38'),
(708, 71, 209, 2, NULL, NULL, 1, '2022-06-01 20:58:53', '2022-06-01 20:58:53'),
(709, 71, 214, 2, NULL, NULL, 1, '2022-06-01 20:59:14', '2022-06-01 20:59:14'),
(710, 71, 192, 9, NULL, NULL, 1, '2022-06-01 20:59:35', '2022-06-01 20:59:35');

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
(1, 1, 1, 12, NULL, NULL, 1, '2022-01-13 13:22:52', '2022-01-13 13:22:52'),
(2, 1, 22, 3, NULL, NULL, 1, '2022-01-13 13:23:17', '2022-01-13 13:23:17'),
(3, 1, 23, 32, NULL, NULL, 1, '2022-01-13 13:23:40', '2022-01-13 13:23:40'),
(4, 1, 24, 15, NULL, NULL, 1, '2022-01-13 13:24:01', '2022-01-13 13:24:01'),
(5, 1, 25, 4, NULL, NULL, 1, '2022-01-13 13:24:23', '2022-01-13 13:24:23'),
(6, 1, 3, 223, NULL, NULL, 1, '2022-01-13 13:24:44', '2022-01-13 13:24:44'),
(7, 3, 148, 1, NULL, NULL, 1, '2022-01-13 14:21:05', '2022-01-13 14:21:05'),
(8, 3, 328, 36, NULL, NULL, 1, '2022-01-13 14:23:19', '2022-01-13 14:23:19'),
(9, 3, 341, 36, NULL, NULL, 1, '2022-01-13 14:25:56', '2022-01-13 14:25:56'),
(10, 4, 326, 36, NULL, NULL, 1, '2022-01-13 14:34:23', '2022-01-13 14:34:23'),
(11, 5, 397, 6, NULL, NULL, 1, '2022-01-13 14:35:23', '2022-01-13 14:35:23'),
(12, 6, 466, 21000, NULL, NULL, 1, '2022-01-13 19:30:07', '2022-01-13 19:30:07'),
(13, 6, 479, 400, NULL, NULL, 1, '2022-01-13 19:30:32', '2022-01-13 19:30:32'),
(14, 6, 466, 94800, NULL, NULL, 1, '2022-01-13 19:32:37', '2022-01-13 19:32:37'),
(15, 6, 436, 5, NULL, NULL, 1, '2022-01-13 19:33:21', '2022-01-13 19:33:21'),
(16, 6, 466, 348, NULL, NULL, 0, '2022-01-13 19:34:17', '2022-01-13 19:35:39'),
(17, 6, 345, 100, NULL, NULL, 1, '2022-01-13 19:34:43', '2022-01-13 19:34:43'),
(18, 6, 479, 348, NULL, NULL, 1, '2022-01-13 19:36:08', '2022-01-13 19:36:08'),
(19, 6, 436, 2, NULL, NULL, 1, '2022-01-13 19:37:46', '2022-01-13 19:37:46'),
(20, 7, 487, 150, NULL, NULL, 1, '2022-01-17 16:27:57', '2022-01-17 16:27:57'),
(21, 8, 469, 222417, NULL, NULL, 1, '2022-01-20 20:58:33', '2022-01-20 20:58:33'),
(22, 9, 200, 5, NULL, NULL, 1, '2022-01-25 17:32:57', '2022-01-25 17:32:57'),
(23, 10, 328, 38, NULL, NULL, 1, '2022-01-25 17:34:47', '2022-01-25 17:34:47'),
(24, 10, 341, 38, NULL, NULL, 1, '2022-01-25 17:34:47', '2022-01-25 17:34:47'),
(25, 10, 326, 40, NULL, NULL, 1, '2022-01-25 17:34:47', '2022-01-25 17:34:47'),
(26, 11, 466, 21000, NULL, NULL, 1, '2022-01-25 17:36:24', '2022-01-25 17:36:24'),
(27, 11, 479, 400, NULL, NULL, 1, '2022-01-25 17:36:24', '2022-01-25 17:36:24'),
(28, 12, 339, 6, NULL, NULL, 1, '2022-01-25 17:37:45', '2022-01-25 17:37:45'),
(29, 12, 470, 150, NULL, NULL, 1, '2022-01-25 17:37:45', '2022-01-25 17:37:45'),
(30, 12, 369, 16, NULL, NULL, 1, '2022-01-25 17:37:45', '2022-01-25 17:37:45'),
(31, 12, 382, 2, NULL, NULL, 1, '2022-01-25 17:37:45', '2022-01-25 17:37:45'),
(32, 12, 373, 6, NULL, NULL, 1, '2022-01-25 17:37:45', '2022-01-25 17:37:45'),
(33, 12, 345, 6, NULL, NULL, 1, '2022-01-25 17:37:45', '2022-01-25 17:37:45'),
(34, 13, 466, 94800, NULL, NULL, 1, '2022-01-25 17:50:34', '2022-01-25 17:50:34'),
(35, 13, 436, 5, NULL, NULL, 1, '2022-01-25 17:50:34', '2022-01-25 17:50:34'),
(36, 14, 479, 348, NULL, NULL, 1, '2022-01-25 17:52:43', '2022-01-25 17:52:43'),
(37, 14, 345, 100, NULL, NULL, 1, '2022-01-25 17:52:43', '2022-01-25 17:52:43'),
(38, 15, 436, 2, NULL, NULL, 1, '2022-01-25 17:54:25', '2022-01-25 17:54:25'),
(39, 16, 328, 40, NULL, NULL, 1, '2022-01-25 17:57:39', '2022-01-25 17:57:39'),
(40, 16, 341, 40, NULL, NULL, 1, '2022-01-25 17:57:39', '2022-01-25 17:57:39'),
(41, 16, 326, 42, NULL, NULL, 1, '2022-01-25 17:57:39', '2022-01-25 17:57:39'),
(42, 17, 102, 900, NULL, NULL, 1, '2022-01-25 17:59:33', '2022-01-25 17:59:33'),
(43, 17, 462, 13750, NULL, NULL, 1, '2022-01-25 17:59:33', '2022-01-25 17:59:33'),
(44, 17, 446, 60, NULL, NULL, 1, '2022-01-25 17:59:33', '2022-01-25 17:59:33'),
(45, 17, 468, 27680, NULL, NULL, 1, '2022-01-25 17:59:33', '2022-01-25 17:59:33'),
(46, 18, 497, 2684, NULL, NULL, 1, '2022-01-25 18:03:30', '2022-01-25 18:03:30'),
(47, 19, 497, 6820, NULL, NULL, 1, '2022-01-25 18:04:40', '2022-01-25 18:04:40'),
(48, 20, 497, 4356, NULL, NULL, 1, '2022-01-25 18:05:58', '2022-01-25 18:05:58'),
(49, 21, 497, 2640, NULL, NULL, 1, '2022-01-25 18:07:18', '2022-01-25 18:07:18'),
(50, 21, 3, 12, NULL, NULL, 1, '2022-01-25 18:07:18', '2022-01-25 18:07:18'),
(51, 22, 466, 21000, NULL, NULL, 1, '2022-01-25 18:08:49', '2022-01-25 18:08:49'),
(52, 22, 436, 5, NULL, NULL, 1, '2022-01-25 18:08:49', '2022-01-25 18:08:49'),
(53, 22, 390, 174, NULL, NULL, 1, '2022-01-25 18:08:49', '2022-01-25 18:08:49'),
(54, 23, 328, 72, NULL, NULL, 1, '2022-01-25 18:10:30', '2022-01-25 18:10:30'),
(55, 23, 341, 72, NULL, NULL, 1, '2022-01-25 18:10:30', '2022-01-25 18:10:30'),
(56, 23, 326, 74, NULL, NULL, 1, '2022-01-25 18:10:30', '2022-01-25 18:10:30'),
(57, 24, 328, 72, NULL, NULL, 1, '2022-01-25 18:12:10', '2022-01-25 18:12:10'),
(58, 24, 341, 72, NULL, NULL, 1, '2022-01-25 18:12:10', '2022-01-25 18:12:10'),
(59, 24, 326, 74, NULL, NULL, 1, '2022-01-25 18:12:10', '2022-01-25 18:12:10'),
(60, 25, 326, 48, NULL, NULL, 1, '2022-02-15 22:23:08', '2022-02-15 22:23:08'),
(61, 25, 341, 48, NULL, NULL, 1, '2022-02-15 22:23:08', '2022-02-15 22:23:08'),
(62, 25, 328, 48, NULL, NULL, 1, '2022-02-15 22:23:08', '2022-02-15 22:23:08'),
(63, 26, 104, 1000, NULL, NULL, 1, '2022-02-15 22:24:52', '2022-02-15 22:24:52'),
(64, 26, 110, 1000, NULL, NULL, 1, '2022-02-15 22:24:52', '2022-02-15 22:24:52'),
(65, 27, 397, 6, NULL, NULL, 1, '2022-02-15 22:26:27', '2022-02-15 22:26:27'),
(66, 27, 355, 1, NULL, NULL, 1, '2022-02-15 22:26:27', '2022-02-15 22:26:27'),
(67, 28, 397, 6, NULL, NULL, 1, '2022-02-15 22:28:32', '2022-02-15 22:28:32'),
(68, 29, 470, 60, NULL, NULL, 1, '2022-02-15 22:33:06', '2022-02-15 22:33:06'),
(69, 30, 462, 1356, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(70, 30, 193, 510, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(71, 30, 192, 1020, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(72, 30, 390, 700, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(73, 30, 212, 150, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(74, 30, 214, 150, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(75, 30, 213, 150, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(76, 30, 216, 150, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(77, 30, 215, 450, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(78, 30, 461, 2100, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(79, 30, 99, 200, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(80, 30, 219, 1000, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(81, 30, 49, 140, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(82, 30, 280, 20, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(83, 30, 435, 10, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(84, 30, 423, 500, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(85, 30, 358, 120, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(86, 30, 93, 100, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(87, 30, 361, 30, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(88, 30, 32, 175, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(89, 30, 446, 193, NULL, NULL, 1, '2022-02-15 22:34:37', '2022-02-15 22:34:37'),
(90, 31, 201, 26, NULL, NULL, 1, '2022-02-15 23:00:37', '2022-02-15 23:00:37'),
(91, 32, 462, 1500, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(92, 32, 397, 9, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(93, 32, 33, 100, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(94, 32, 98, 30, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(95, 32, 96, 150, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(96, 32, 446, 59, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(97, 32, 435, 7, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(98, 32, 360, 120, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(99, 32, 378, 96, NULL, NULL, 1, '2022-02-25 14:33:47', '2022-02-25 14:33:47'),
(100, 33, 479, 470, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(101, 33, 436, 6, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(102, 33, 205, 20, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(103, 33, 101, 50, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(104, 33, 99, 50, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(105, 33, 93, 50, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(106, 33, 378, 30, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(107, 33, 371, 1500, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(108, 33, 369, 1500, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(109, 33, 411, 300, NULL, NULL, 1, '2022-02-25 14:38:03', '2022-02-25 14:38:03'),
(110, 34, 227, 15, NULL, NULL, 1, '2022-02-25 15:05:11', '2022-02-25 15:05:11'),
(111, 35, 127, 4, NULL, NULL, 1, '2022-02-25 15:13:28', '2022-02-25 15:13:28'),
(112, 35, 164, 4, NULL, NULL, 1, '2022-02-25 15:13:28', '2022-02-25 15:13:28'),
(113, 35, 136, 4, NULL, NULL, 1, '2022-02-25 15:13:28', '2022-02-25 15:13:28'),
(114, 35, 171, 4, NULL, NULL, 1, '2022-02-25 15:13:28', '2022-02-25 15:13:28'),
(115, 36, 470, 90, NULL, NULL, 1, '2022-02-25 15:18:48', '2022-02-25 15:18:48'),
(116, 36, 371, 10, NULL, NULL, 1, '2022-02-25 15:18:48', '2022-02-25 15:18:48'),
(117, 36, 369, 10, NULL, NULL, 1, '2022-02-25 15:18:48', '2022-02-25 15:18:48'),
(118, 37, 98, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(119, 37, 96, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(120, 37, 472, 270, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(121, 37, 207, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(122, 37, 209, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(123, 37, 208, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(124, 37, 211, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(125, 37, 210, 12, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(126, 37, 462, 44, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(127, 37, 374, 4, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(128, 37, 382, 3, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(129, 37, 370, 10, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(130, 37, 3, 2, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(131, 37, 10, 2, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(132, 37, 496, 1, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(133, 37, 13, 1, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(134, 37, 432, 1, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(135, 37, 429, 1, NULL, NULL, 1, '2022-02-25 16:19:39', '2022-02-25 16:19:39'),
(136, 38, 502, 200, NULL, NULL, 1, '2022-03-07 21:42:25', '2022-03-07 21:42:25'),
(137, 38, 501, 200, NULL, NULL, 1, '2022-03-07 21:42:25', '2022-03-07 21:42:25'),
(138, 38, 45, 100, NULL, NULL, 1, '2022-03-07 21:42:25', '2022-03-07 21:42:25'),
(139, 39, 501, 200, NULL, NULL, 1, '2022-03-07 21:45:01', '2022-03-07 21:45:01'),
(140, 39, 502, 200, NULL, NULL, 1, '2022-03-07 21:45:01', '2022-03-07 21:45:01'),
(141, 39, 45, 100, NULL, NULL, 1, '2022-03-07 21:45:01', '2022-03-07 21:45:01'),
(142, 40, 501, 200, NULL, NULL, 1, '2022-03-07 21:47:45', '2022-03-07 21:47:45'),
(143, 40, 502, 200, NULL, NULL, 1, '2022-03-07 21:47:45', '2022-03-07 21:47:45'),
(144, 40, 474, 200, NULL, NULL, 1, '2022-03-07 21:47:45', '2022-03-07 21:47:45'),
(145, 41, 501, 400, NULL, NULL, 1, '2022-03-07 22:36:53', '2022-03-07 22:36:53'),
(146, 41, 502, 394, NULL, NULL, 1, '2022-03-07 22:36:53', '2022-03-07 22:36:53'),
(147, 41, 474, 800, NULL, NULL, 1, '2022-03-07 22:36:53', '2022-03-07 22:36:53'),
(148, 42, 205, 100, NULL, NULL, 1, '2022-03-07 22:38:35', '2022-03-07 22:38:35'),
(149, 43, 371, 2, NULL, NULL, 1, '2022-03-07 22:40:35', '2022-03-07 22:40:35'),
(150, 43, 369, 2, NULL, NULL, 1, '2022-03-07 22:40:35', '2022-03-07 22:40:35'),
(151, 43, 370, 2, NULL, NULL, 1, '2022-03-07 22:40:35', '2022-03-07 22:40:35'),
(152, 44, 281, 4, NULL, NULL, 1, '2022-03-07 22:42:33', '2022-03-07 22:42:33'),
(153, 44, 397, 12, NULL, NULL, 1, '2022-03-07 22:42:33', '2022-03-07 22:42:33'),
(154, 44, 298, 4, NULL, NULL, 1, '2022-03-07 22:42:33', '2022-03-07 22:42:33'),
(155, 44, 387, 1, NULL, NULL, 1, '2022-03-07 22:42:33', '2022-03-07 22:42:33'),
(156, 45, 310, 5, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(157, 45, 397, 15, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(158, 45, 355, 5, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(159, 45, 281, 5, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(160, 45, 390, 356, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(161, 45, 234, 15, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(162, 45, 238, 6, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(163, 45, 239, 6, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(164, 45, 383, 72, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(165, 45, 378, 72, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(166, 45, 99, 36, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(167, 45, 101, 36, NULL, NULL, 1, '2022-03-07 22:44:07', '2022-03-07 22:44:07'),
(168, 46, 298, 5, NULL, NULL, 1, '2022-03-07 22:45:42', '2022-03-07 22:45:42'),
(169, 46, 387, 3, NULL, NULL, 1, '2022-03-07 22:45:42', '2022-03-07 22:45:42'),
(170, 47, 3, 5, NULL, NULL, 1, '2022-03-07 22:47:34', '2022-03-07 22:47:34'),
(171, 47, 10, 5, NULL, NULL, 1, '2022-03-07 22:47:34', '2022-03-07 22:47:34'),
(172, 47, 414, 30, NULL, NULL, 1, '2022-03-07 22:47:34', '2022-03-07 22:47:34'),
(173, 48, 298, 3, NULL, NULL, 1, '2022-03-07 22:49:32', '2022-03-07 22:49:32'),
(174, 48, 387, 3, NULL, NULL, 1, '2022-03-07 22:49:32', '2022-03-07 22:49:32'),
(175, 49, 298, 3, NULL, NULL, 1, '2022-03-07 22:54:14', '2022-03-07 22:54:14'),
(176, 49, 387, 1, NULL, NULL, 1, '2022-03-07 22:54:14', '2022-03-07 22:54:14'),
(177, 50, 397, 3, NULL, NULL, 1, '2022-03-07 22:55:58', '2022-03-07 22:55:58'),
(178, 51, 464, 120, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(179, 51, 478, 25, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(180, 51, 367, 215, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(181, 51, 83, 40, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(182, 51, 500, 100, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(183, 51, 345, 100, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(184, 51, 476, 125, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(185, 51, 469, 146187, NULL, NULL, 1, '2022-03-08 17:43:03', '2022-03-08 17:43:03'),
(186, 52, 23, 3, NULL, NULL, 1, '2022-03-08 17:45:53', '2022-03-08 17:45:53'),
(187, 53, 485, 825, NULL, NULL, 1, '2022-03-28 15:45:04', '2022-03-28 15:45:04'),
(188, 54, 32, 48, NULL, NULL, 1, '2022-03-30 14:01:25', '2022-03-30 14:01:25'),
(189, 55, 127, 10, NULL, NULL, 1, '2022-03-31 14:22:17', '2022-03-31 14:22:17'),
(190, 56, 414, 1, NULL, NULL, 1, '2022-03-31 14:23:58', '2022-03-31 14:23:58'),
(191, 56, 506, 1, NULL, NULL, 1, '2022-03-31 14:23:58', '2022-03-31 14:23:58'),
(192, 57, 201, 4, NULL, NULL, 1, '2022-03-31 14:26:01', '2022-03-31 14:26:01'),
(193, 58, 119, 50, NULL, NULL, 1, '2022-03-31 14:28:59', '2022-03-31 14:28:59'),
(194, 58, 102, 400, NULL, NULL, 1, '2022-03-31 14:28:59', '2022-03-31 14:28:59'),
(195, 58, 32, 48, NULL, NULL, 1, '2022-03-31 14:28:59', '2022-03-31 14:28:59'),
(196, 59, 496, 6, NULL, NULL, 1, '2022-03-31 14:31:59', '2022-03-31 14:31:59'),
(197, 59, 3, 10, NULL, NULL, 1, '2022-03-31 14:31:59', '2022-03-31 14:31:59'),
(198, 59, 429, 4, NULL, NULL, 1, '2022-03-31 14:31:59', '2022-03-31 14:31:59'),
(199, 59, 428, 1, NULL, NULL, 1, '2022-03-31 14:31:59', '2022-03-31 14:31:59'),
(200, 59, 432, 2, NULL, NULL, 1, '2022-03-31 14:31:59', '2022-03-31 14:31:59'),
(201, 60, 411, 85, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(202, 60, 95, 300, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(203, 60, 102, 2000, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(204, 60, 370, 72, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(205, 60, 397, 42, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(206, 60, 446, 190, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(207, 60, 462, 250, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(208, 60, 193, 500, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(209, 60, 192, 1000, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(210, 60, 367, 420, NULL, NULL, 1, '2022-03-31 16:51:43', '2022-03-31 16:51:43'),
(211, 61, 475, 84, NULL, NULL, 1, '2022-03-31 16:56:52', '2022-03-31 16:56:52'),
(212, 62, 389, 9, NULL, NULL, 1, '2022-03-31 16:58:56', '2022-03-31 16:58:56'),
(213, 63, 496, 3, NULL, NULL, 1, '2022-03-31 17:00:43', '2022-03-31 17:00:43'),
(214, 63, 17, 6, NULL, NULL, 1, '2022-03-31 17:00:43', '2022-03-31 17:00:43'),
(215, 63, 429, 2, NULL, NULL, 1, '2022-03-31 17:00:43', '2022-03-31 17:00:43'),
(216, 64, 349, 2, NULL, NULL, 1, '2022-03-31 17:02:14', '2022-03-31 17:02:14'),
(217, 65, 485, 250, NULL, NULL, 1, '2022-03-31 17:20:09', '2022-03-31 17:20:09'),
(218, 66, 201, 18, NULL, NULL, 1, '2022-04-28 17:04:05', '2022-04-28 17:04:05'),
(219, 66, 200, 12, NULL, NULL, 1, '2022-04-28 17:04:05', '2022-04-28 17:04:05'),
(220, 67, 397, 5, NULL, NULL, 1, '2022-04-28 17:08:07', '2022-04-28 17:08:07'),
(221, 68, 240, 4, NULL, NULL, 1, '2022-04-28 17:12:10', '2022-04-28 17:12:10'),
(222, 69, 234, 20, NULL, NULL, 1, '2022-04-28 17:15:49', '2022-04-28 17:15:49'),
(223, 69, 240, 6, NULL, NULL, 1, '2022-04-28 17:15:49', '2022-04-28 17:15:49'),
(224, 69, 241, 20, NULL, NULL, 1, '2022-04-28 17:15:49', '2022-04-28 17:15:49'),
(225, 69, 242, 12, NULL, NULL, 1, '2022-04-28 17:15:49', '2022-04-28 17:15:49'),
(226, 69, 243, 8, NULL, NULL, 1, '2022-04-28 17:15:49', '2022-04-28 17:15:49'),
(227, 70, 355, 2, NULL, NULL, 1, '2022-04-28 17:20:31', '2022-04-28 17:20:31'),
(228, 71, 235, 45, NULL, NULL, 1, '2022-04-28 17:24:03', '2022-04-28 17:24:03'),
(229, 72, 241, 4, NULL, NULL, 1, '2022-04-28 17:25:35', '2022-04-28 17:25:35'),
(230, 72, 240, 4, NULL, NULL, 1, '2022-04-28 17:25:35', '2022-04-28 17:25:35'),
(231, 72, 239, 8, NULL, NULL, 1, '2022-04-28 17:25:35', '2022-04-28 17:25:35'),
(232, 72, 234, 12, NULL, NULL, 1, '2022-04-28 17:25:35', '2022-04-28 17:25:35'),
(233, 73, 215, 4, NULL, NULL, 1, '2022-04-28 17:27:34', '2022-04-28 17:27:34'),
(234, 74, 197, 4, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(235, 74, 111, 100, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(236, 74, 367, 100, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(237, 74, 397, 30, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(238, 74, 302, 5, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(239, 74, 464, 300, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(240, 74, 34, 84, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(241, 74, 314, 2, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(242, 74, 219, 700, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(243, 74, 478, 207, NULL, NULL, 1, '2022-04-28 17:29:10', '2022-04-28 17:29:10'),
(244, 75, 302, 4, NULL, NULL, 1, '2022-04-28 17:30:43', '2022-04-28 17:30:43'),
(245, 75, 387, 2, NULL, NULL, 1, '2022-04-28 17:30:43', '2022-04-28 17:30:43'),
(246, 76, 136, 1, NULL, NULL, 1, '2022-04-28 19:44:16', '2022-04-28 19:44:16'),
(247, 76, 135, 1, NULL, NULL, 1, '2022-04-28 19:44:16', '2022-04-28 19:44:16'),
(248, 77, 358, 1000, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(249, 77, 357, 2000, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(250, 77, 371, 115000, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(251, 77, 369, 49500, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(252, 77, 370, 11000, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(253, 77, 372, 70000, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(254, 77, 373, 7100, NULL, NULL, 1, '2022-04-28 19:46:42', '2022-04-28 19:46:42'),
(255, 78, 32, 25, NULL, NULL, 1, '2022-04-28 19:49:26', '2022-04-28 19:49:26'),
(256, 78, 47, 50, NULL, NULL, 1, '2022-04-28 19:49:26', '2022-04-28 19:49:26'),
(257, 78, 280, 1, NULL, NULL, 1, '2022-04-28 19:49:26', '2022-04-28 19:49:26'),
(258, 78, 358, 30, NULL, NULL, 1, '2022-04-28 19:49:26', '2022-04-28 19:49:26'),
(259, 78, 310, 1, NULL, NULL, 1, '2022-04-28 19:49:26', '2022-04-28 19:49:26'),
(260, 79, 330, 4, NULL, NULL, 1, '2022-04-28 19:51:58', '2022-04-28 19:51:58'),
(261, 79, 348, 4, NULL, NULL, 1, '2022-04-28 19:51:58', '2022-04-28 19:51:58'),
(262, 80, 457, 1, NULL, NULL, 1, '2022-04-28 19:53:29', '2022-04-28 19:53:29'),
(263, 81, 456, 959, NULL, NULL, 1, '2022-04-28 19:57:16', '2022-04-28 19:57:16'),
(264, 82, 456, 800, NULL, NULL, 1, '2022-04-28 20:00:24', '2022-04-28 20:00:24'),
(265, 83, 456, 600, NULL, NULL, 1, '2022-04-28 20:03:01', '2022-04-28 20:03:01'),
(266, 84, 456, 1220, NULL, NULL, 1, '2022-04-28 20:05:34', '2022-04-28 20:05:34'),
(267, 85, 468, 40000, NULL, NULL, 1, '2022-04-28 20:10:27', '2022-04-28 20:10:27'),
(268, 86, 307, 1, NULL, NULL, 1, '2022-04-28 20:12:53', '2022-04-28 20:12:53'),
(269, 87, 339, 0, NULL, NULL, 1, '2022-04-28 20:28:24', '2022-04-28 20:28:24'),
(270, 87, 470, 0, NULL, NULL, 1, '2022-04-28 20:28:24', '2022-04-28 20:28:24'),
(271, 87, 369, 0, NULL, NULL, 1, '2022-04-28 20:28:24', '2022-04-28 20:28:24'),
(272, 87, 382, 0, NULL, NULL, 1, '2022-04-28 20:28:24', '2022-04-28 20:28:24'),
(273, 87, 373, 0, NULL, NULL, 1, '2022-04-28 20:28:24', '2022-04-28 20:28:24'),
(274, 87, 345, 0, NULL, NULL, 1, '2022-04-28 20:28:24', '2022-04-28 20:28:24'),
(275, 88, 470, 0, NULL, NULL, 1, '2022-05-03 15:26:55', '2022-05-03 15:26:55'),
(276, 88, 371, 0, NULL, NULL, 1, '2022-05-03 15:26:55', '2022-05-03 15:26:55'),
(277, 88, 369, 0, NULL, NULL, 1, '2022-05-03 15:26:55', '2022-05-03 15:26:55'),
(278, 89, 148, 1, NULL, NULL, 1, '2022-05-03 15:31:56', '2022-05-03 15:31:56'),
(279, 90, 468, 18000, NULL, NULL, 1, '2022-05-03 16:06:38', '2022-05-03 16:06:38'),
(280, 91, 205, 2, NULL, NULL, 1, '2022-05-03 16:08:22', '2022-05-03 16:08:22'),
(281, 91, 32, 80, NULL, NULL, 1, '2022-05-03 16:08:22', '2022-05-03 16:08:22'),
(282, 91, 47, 12, NULL, NULL, 1, '2022-05-03 16:08:22', '2022-05-03 16:08:22'),
(283, 92, 383, 300, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(284, 92, 378, 300, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(285, 92, 95, 100, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(286, 92, 101, 100, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(287, 92, 212, 50, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(288, 92, 214, 50, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(289, 92, 213, 50, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(290, 92, 215, 150, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(291, 92, 216, 50, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(292, 92, 461, 700, NULL, NULL, 1, '2022-05-03 16:11:03', '2022-05-03 16:11:03'),
(293, 93, 470, 0, NULL, NULL, 1, '2022-05-11 20:44:18', '2022-05-11 20:44:18'),
(294, 93, 371, 0, NULL, NULL, 1, '2022-05-11 20:44:18', '2022-05-11 20:44:18'),
(295, 93, 369, 0, NULL, NULL, 1, '2022-05-11 20:44:18', '2022-05-11 20:44:18'),
(296, 94, 511, 1, NULL, NULL, 1, '2022-05-11 20:50:55', '2022-05-11 20:50:55'),
(297, 95, 11, 2, NULL, NULL, 1, '2022-05-11 20:54:02', '2022-05-11 20:54:02'),
(298, 95, 12, 2, NULL, NULL, 1, '2022-05-11 20:54:02', '2022-05-11 20:54:02'),
(299, 96, 11, 2, NULL, NULL, 1, '2022-05-11 20:55:38', '2022-05-11 20:55:38'),
(300, 96, 12, 2, NULL, NULL, 1, '2022-05-11 20:55:38', '2022-05-11 20:55:38'),
(301, 97, 11, 2, NULL, NULL, 1, '2022-05-11 20:57:48', '2022-05-11 20:57:48'),
(302, 97, 12, 2, NULL, NULL, 1, '2022-05-11 20:57:48', '2022-05-11 20:57:48'),
(303, 98, 155, 5, NULL, NULL, 1, '2022-05-11 21:00:06', '2022-05-11 21:00:06'),
(304, 98, 121, 5, NULL, NULL, 1, '2022-05-11 21:00:06', '2022-05-11 21:00:06'),
(305, 98, 415, 50, NULL, NULL, 1, '2022-05-11 21:00:06', '2022-05-11 21:00:06'),
(306, 99, 487, 70, NULL, NULL, 1, '2022-05-25 20:26:42', '2022-05-25 20:26:42'),
(307, 100, 371, 2, NULL, NULL, 1, '2022-05-25 20:30:57', '2022-05-25 20:30:57'),
(308, 100, 487, 2.5, NULL, NULL, 1, '2022-05-25 20:30:57', '2022-05-25 20:30:57'),
(309, 101, 383, 1, NULL, NULL, 1, '2022-05-25 20:34:26', '2022-05-25 20:34:26'),
(310, 102, 3, 8, NULL, NULL, 1, '2022-05-25 20:37:21', '2022-05-25 20:37:21'),
(311, 103, 192, 120, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(312, 103, 102, 120, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(313, 103, 193, 60, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(314, 103, 212, 50, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(315, 103, 213, 50, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(316, 103, 214, 50, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(317, 103, 215, 150, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(318, 103, 216, 50, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(319, 103, 461, 700, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(320, 103, 205, 20, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(321, 103, 518, 1, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(322, 103, 298, 1, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(323, 103, 496, 2, NULL, NULL, 1, '2022-05-25 20:41:33', '2022-05-25 20:41:33'),
(324, 104, 201, 20, NULL, NULL, 1, '2022-05-25 20:47:57', '2022-05-25 20:47:57'),
(325, 104, 196, 15, NULL, NULL, 1, '2022-05-25 20:47:57', '2022-05-25 20:47:57'),
(326, 105, 415, 3, NULL, NULL, 1, '2022-05-25 20:52:04', '2022-05-25 20:52:04'),
(327, 106, 111, 10, NULL, NULL, 1, '2022-05-25 20:54:20', '2022-05-25 20:54:20'),
(328, 106, 367, 10, NULL, NULL, 1, '2022-05-25 20:54:20', '2022-05-25 20:54:20'),
(329, 106, 464, 10, NULL, NULL, 1, '2022-05-25 20:54:20', '2022-05-25 20:54:20'),
(330, 106, 83, 5, NULL, NULL, 1, '2022-05-25 20:54:20', '2022-05-25 20:54:20'),
(331, 107, 35, 15, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(332, 107, 435, 2, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(333, 107, 423, 40, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(334, 107, 420, 2, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(335, 107, 421, 2, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(336, 107, 505, 2, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(337, 107, 415, 8, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(338, 107, 235, 12, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(339, 107, 355, 4, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(340, 107, 252, 4, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(341, 107, 259, 4, NULL, NULL, 1, '2022-05-25 20:56:57', '2022-05-25 20:56:57'),
(342, 108, 430, 2, NULL, NULL, 1, '2022-05-25 21:03:59', '2022-05-25 21:03:59'),
(343, 109, 200, 2, NULL, NULL, 1, '2022-06-16 09:08:53', '2022-06-16 09:08:53');

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
(5, 'VM9M', 'Varra de manobra 9 metros', 4, 1, 'un', 'C', '', 1, 1, '2021-12-15 20:25:41', '2022-01-06 13:03:32'),
(6, 'VM12M', 'Varra de manobra 12 metros', 4, 1, 'un', 'C', '', 0, 1, '2021-12-15 20:25:42', '2022-01-06 13:02:15'),
(7, 'VM12M', 'Varra de manobra 12 metros', 4, 1, 'un', 'C', '', 0, 1, '2021-12-15 20:25:44', '2022-01-06 13:01:33'),
(8, 'VM12M', 'Varra de manobra 12 metros', 4, 1, 'un', 'C', '', 0, 1, '2021-12-15 20:25:45', '2021-12-16 14:07:34'),
(9, 'VM4M', 'Varra de manobra 4m', 4, 1, 'un', 'C', '', 1, 1, '2021-12-16 14:59:34', '2022-01-06 13:10:50'),
(10, 'CSVERMELHO', 'Cinto de segurança vermelho', 5, 1, 'un', 'B', '', 1, 1, '2021-12-16 15:02:00', '2021-12-16 15:02:00'),
(11, 'CSAMARELO', 'Cinto de segurança amarelo', 5, 1, 'un', 'B', '', 1, 1, '2021-12-16 15:03:09', '2021-12-16 15:03:09'),
(12, 'CSSAFETYHARNES', 'Cinto de segurança safety harnes', 5, 1, 'un', 'F', '', 1, 1, '2021-12-16 15:04:48', '2021-12-16 15:04:48'),
(13, 'BR16', 'Broca M16', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:06:53', '2021-12-16 15:06:53'),
(14, 'BR18', 'Broca M18', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:07:35', '2021-12-24 14:03:13'),
(15, 'BR19', 'Broca M19', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:08:19', '2021-12-16 15:08:19'),
(16, 'BR20', 'Broca M20', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:09:04', '2021-12-16 15:09:04'),
(17, 'BR22', 'Broca M22', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:09:35', '2021-12-16 15:09:35'),
(18, 'BR20DRILL', 'Broca M20 para Drill', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:10:37', '2021-12-16 15:10:37'),
(19, 'BR19DRILL', 'Brocas M19 para drill', 6, 1, 'un', 'B', '', 1, 1, '2021-12-16 15:11:32', '2021-12-16 15:11:32'),
(20, 'BR22DRILL', 'Broca M22 para drill', 6, 1, 'un', 'B', '', 1, 1, '2021-12-16 15:12:19', '2021-12-16 15:12:19'),
(21, 'BR16DRILL', 'Broca M16 para drill', 6, 1, 'un', 'C', '', 1, 1, '2021-12-16 15:13:04', '2021-12-16 15:13:04'),
(22, 'ESV15M', 'Escada vermelha 15m', 2, 1, 'un', 'A', '', 1, 1, '2021-12-16 15:16:19', '2021-12-16 15:16:19'),
(23, 'ESV9M', 'Escada vermelha 9m', 2, 1, 'un', 'A', '', 1, 1, '2021-12-16 15:17:02', '2021-12-16 15:17:02'),
(24, 'ESAZ9M', 'Escada azul 9m', 2, 1, 'un', 'A', '', 1, 1, '2021-12-16 15:17:46', '2021-12-16 15:17:46'),
(25, 'ESAZ9M NOVO', 'Escada azul 9m novo', 2, 1, 'un', 'A', '', 1, 1, '2021-12-16 15:18:42', '2021-12-16 15:18:42'),
(26, 'TAL300MM', 'Terminais de AL 300mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 15:58:51', '2021-12-16 15:58:51'),
(27, 'TAL500MM', 'Terminais de AL 500mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:00:38', '2021-12-16 16:00:38'),
(28, 'TAL800MM', 'Terminais de AL 800mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:01:38', '2021-12-16 16:01:38'),
(29, 'TAL1000MM', 'Terminais de AL 1000mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:02:55', '2021-12-16 16:02:55'),
(30, 'TC16MM', 'Terminais de cobre 16mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:04:04', '2021-12-16 16:04:04'),
(31, 'TC25MM', 'Terminais de cobre 25mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:04:50', '2022-01-05 20:23:37'),
(32, 'TC35MM', 'Terminais de cobre 35mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:05:30', '2021-12-16 16:05:30'),
(33, 'TC50MM', 'Terminais de cobre 50mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:06:21', '2021-12-16 16:06:21'),
(34, 'TC70MM', 'Terminais de cobre 70mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:07:00', '2021-12-16 16:07:00'),
(35, 'TC95MM', 'Terminais de cobre 95mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:07:38', '2021-12-16 16:07:38'),
(36, 'TC120MM', 'Terminais de cobre 120mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:08:21', '2021-12-16 16:08:21'),
(37, 'TC150MM', 'Terminais de cobre 150mm', 8, 7, 'un', 'D', '', 1, 1, '2021-12-16 16:10:18', '2021-12-16 16:10:18'),
(38, 'TC185MM', 'Terminais de cobre 185mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:11:14', '2021-12-16 16:11:14'),
(39, 'TC240MM', 'Terminais de cobre 240mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:11:56', '2021-12-16 16:11:56'),
(40, 'TC300MM', 'Terminais de cobre 300mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:13:16', '2021-12-16 16:13:16'),
(41, 'TC400MM', 'Terminais de cobre 400mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:13:56', '2021-12-16 16:13:56'),
(42, 'TC500MM', 'Terminais de cobre 500mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:14:34', '2021-12-16 16:14:34'),
(43, 'TB25MM', 'Terminais bimetalicos 25mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:16:35', '2021-12-16 16:16:35'),
(44, 'TB35MM', 'Terminais bimetalicos 35mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:17:13', '2021-12-16 16:17:13'),
(45, 'TB50MM', 'Terminais bimetalicos 50mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:17:54', '2021-12-16 16:17:54'),
(46, 'TB70MM', 'Terminais bimetalicos 70mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:18:32', '2021-12-16 16:18:32'),
(47, 'TB95MM', 'Terminais bimetalicos 95mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:19:14', '2021-12-16 16:19:14'),
(48, 'TB120MM', 'Terminais bimetalicos 120mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:19:52', '2021-12-16 16:19:52'),
(49, 'TB150MM', 'Terminais bimetalicos 150mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:20:33', '2021-12-16 16:20:33'),
(50, 'TB185MM', 'Terminais bimetalicos 185mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:21:19', '2021-12-16 16:21:19'),
(51, 'TB240MM', 'Terminais bimetalicos 240mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:21:59', '2021-12-16 16:21:59'),
(52, 'TB300MM', 'Terminais bimetalicos 300mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:22:37', '2021-12-16 16:22:37'),
(53, 'TB1000MM', 'Terminais bimetalicos 1000mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:23:21', '2021-12-16 16:23:21'),
(54, 'TBA95MM', 'Terminais bimetalicos angulo 95mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:24:27', '2021-12-16 16:24:27'),
(55, 'TBA120MM', 'Terminais bimetalicos angulo 120mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:25:12', '2021-12-16 16:25:12'),
(56, 'TBA150MM', 'Terminais bimetalicos angulo 150mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:25:57', '2021-12-16 16:25:57'),
(57, 'TBA185MM', 'Terminais bimetalicos angulo 185mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:26:45', '2021-12-16 16:26:45'),
(58, 'TBA240MM', 'Terminais bimetalicos angulo 240mm', 8, 7, 'un', 'E', '', 1, 1, '2021-12-16 16:27:30', '2021-12-16 16:27:30'),
(59, 'UNC16MM', 'União de cobre 16mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:04:13', '2021-12-16 19:04:13'),
(60, 'UNC25MM', 'União de cobre 25mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:05:04', '2021-12-16 19:05:04'),
(61, 'UNC35MM', 'União de cobre 35mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:06:04', '2021-12-16 19:06:04'),
(62, 'UNC50MM', 'União de cobre 50mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:06:48', '2021-12-16 19:06:48'),
(63, 'UNC70MM', 'União de cobre 70mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:07:30', '2021-12-16 19:07:30'),
(64, 'UNC95MM', 'União de cobre 95mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:08:16', '2021-12-16 19:08:16'),
(65, 'UNC120MM', 'União de cobre 120mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:09:07', '2021-12-16 19:09:07'),
(66, 'UNC150MM', 'União de cobre 150mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:09:50', '2021-12-16 19:09:50'),
(67, 'UNC185MM', 'União de cobre 185mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:10:34', '2021-12-16 19:10:34'),
(68, 'UNC240MM', 'União de cobre 240mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:11:24', '2021-12-16 19:11:24'),
(69, 'UNC300MM', 'União de cobre 300mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:12:08', '2021-12-16 19:12:08'),
(70, 'UNC500MM', 'União de cobre 500mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:12:52', '2021-12-16 19:12:52'),
(71, 'UNC600MM', 'União de cobre 600mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:14:26', '2021-12-16 19:14:26'),
(72, 'UNC600MM', 'União de cobre 600mm', 9, 7, 'un', 'D', '', 0, 1, '2021-12-16 19:14:28', '2022-01-13 13:13:31'),
(73, 'UNB25MM', 'União bimetalico 25mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:17:31', '2021-12-16 19:17:31'),
(74, 'UNB35MM', 'União bimetalico 35mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:18:26', '2021-12-16 19:18:26'),
(75, 'UNB50MM', 'União bimetalico 50mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:19:03', '2021-12-16 19:19:03'),
(76, 'UNB70MM', 'União bimetalico 70mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:19:53', '2021-12-16 19:19:53'),
(77, 'UNB95MM', 'União bimetalico 95mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:23:09', '2021-12-16 19:23:09'),
(78, 'UNB120MM', 'União bimetalico 120mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:23:51', '2021-12-16 19:23:51'),
(79, 'UNB150MM', 'União bimetalico 150mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:24:37', '2021-12-16 19:24:37'),
(80, 'UNB185MM', 'União bimetalico 185mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:25:41', '2021-12-16 19:25:41'),
(81, 'UNB240MM', 'União bimetalico 240mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:26:31', '2021-12-16 19:26:31'),
(82, 'UNB300MM', 'União bimetalico 300mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:27:25', '2021-12-16 19:27:25'),
(83, 'UET', 'União de electrodo de terra', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:28:17', '2021-12-16 19:28:17'),
(84, 'UNAL50MM', 'União de aluminio 50mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:29:17', '2021-12-16 19:29:17'),
(85, 'UNAL70MM', 'União de aluminio 70mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:30:10', '2021-12-16 19:30:10'),
(86, 'UNAL95MM', 'União de aluminio 95mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:30:54', '2021-12-16 19:30:54'),
(87, 'UNAL120MM', 'União de aluminio 120mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:31:57', '2021-12-16 19:31:57'),
(88, 'UNAL150MM', 'União de aluminio 150mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:49:13', '2021-12-16 19:49:13'),
(89, 'UNAL185MM', 'União de aluminio 185mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:49:56', '2021-12-16 19:49:56'),
(90, 'UNAL240MM', 'União de aluminio 240mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:50:40', '2021-12-16 19:50:40'),
(91, 'UNAL300MM', 'União de aluminio 300mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:51:22', '2021-12-16 19:51:22'),
(92, 'UNAL1000MM', 'União de aluminio 1000mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:52:05', '2021-12-16 19:52:05'),
(93, 'UNAM150MM', 'União de aluminio mulberry AAAC  150mm', 9, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:53:08', '2021-12-16 19:53:08'),
(94, 'UNAW90MM', 'União de aluminio willow AAAC 90mm', 9, 7, 'un', 'G-P3', '', 1, 1, '2021-12-16 19:54:19', '2021-12-16 19:54:19'),
(95, 'DSH', 'D-Shakle', 10, 7, 'un', 'D', '', 1, 1, '2021-12-16 19:55:42', '2021-12-16 19:55:42'),
(96, 'FG16', 'Ferro gancho M16', 10, 7, 'un', 'H', '', 1, 1, '2021-12-16 19:56:29', '2021-12-16 19:56:29'),
(97, 'FG20', 'Ferro gancho M20', 10, 7, 'un', 'J', '', 1, 1, '2021-12-16 19:57:14', '2021-12-16 19:57:14'),
(98, 'FA16', 'Ferro argola M16', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 19:58:00', '2021-12-16 19:58:00'),
(99, 'FA20', 'Ferro argola M20', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 19:58:41', '2021-12-16 19:58:41'),
(100, 'PO16', 'Porolhal M16', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 19:59:38', '2021-12-16 19:59:38'),
(101, 'PO20', 'Porca olhal M20', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:00:24', '2021-12-16 20:00:24'),
(102, 'PG20MM', 'Parafuso M20x340mm galvanizado para fixação do perfil no poste', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 20:02:12', '2021-12-16 20:02:12'),
(103, 'ACQ16MM', 'Anilha de chapa quadrada M16', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:03:17', '2021-12-16 20:03:17'),
(104, 'ACQ20MM', 'Anilha de chapa quadrada M20', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:04:11', '2021-12-16 20:04:11'),
(105, 'PG16MM', 'ParafuM16x340mm galvanizado para fixação do perfil no poste', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 20:05:42', '2021-12-16 20:05:42'),
(106, 'PG20', 'Parafuso M20x60mm galvanizado', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:06:49', '2021-12-16 20:06:49'),
(107, 'RO', 'Rotula olhal', 10, 7, 'un', 'G-P1', '', 1, 1, '2021-12-16 20:07:29', '2021-12-16 20:07:29'),
(108, 'BGWS7', 'Bola gancho WS-7 (socket clavis)', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 20:09:14', '2021-12-16 20:09:14'),
(109, 'BGWS10', 'Bola gancho WS-10 (socket clavis)', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 20:10:30', '2021-12-16 20:10:30'),
(110, 'AMG20MM', 'Anilhas de mola M20 galvanizadas', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:11:37', '2021-12-16 20:11:37'),
(111, 'ET', 'Electrodo de terra', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:12:21', '2021-12-16 20:12:21'),
(112, 'PG12MM', 'Porcas M12 glvanizadas', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:13:22', '2021-12-16 20:13:22'),
(113, 'POG20mm', 'Porcas M20 galvanizadas', 10, 7, 'un', 'F-P3', '', 1, 1, '2021-12-16 20:14:24', '2021-12-16 20:14:24'),
(114, 'MVBS', 'MV bracket struture', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 20:15:25', '2021-12-16 20:15:25'),
(115, 'LVBS', 'LV bracket struture', 10, 7, 'un', 'Fora', '', 1, 1, '2021-12-16 20:16:06', '2021-12-16 20:16:06'),
(116, 'VR16MM', 'Varão roscado M16', 10, 7, 'un', 'F-P2', '', 1, 1, '2021-12-16 20:17:13', '2021-12-16 20:17:13'),
(117, 'POG24MM', 'Porca M24 galvanizada', 10, 7, 'un', 'F-P2', '', 1, 1, '2021-12-17 12:40:44', '2021-12-17 12:40:44'),
(118, 'ACG24MM', 'Anilhas de chapa M24 galvanizadas', 10, 7, 'un', 'F-P2', '', 1, 1, '2021-12-17 12:41:56', '2021-12-17 12:41:56'),
(119, 'VR20MM', 'Varão roscado M20', 10, 7, 'un', 'F-P2', '', 1, 1, '2021-12-17 12:44:21', '2021-12-17 12:44:21'),
(120, 'CXT150-300EXT33', 'Caixa terminal 33kv 3x150-300mm (150-240)mm exterior', 11, 7, 'un', 'N', '', 1, 1, '2021-12-17 12:51:57', '2021-12-17 12:51:57'),
(121, 'CXT50-120ext11', 'Caixa terminal 11kv 3x50-120mm (70-120)mm exterior', 11, 7, 'un', 'N', '', 1, 1, '2021-12-17 12:53:54', '2021-12-17 12:53:54'),
(122, 'CXT1x50-150ext33', 'Caixa terminal 33kv 1x50-150mm exterior', 11, 7, 'un', 'N', '', 1, 1, '2021-12-17 12:56:58', '2021-12-17 12:56:58'),
(123, 'CXT1x50-150int33', 'Caixas terminais 33kv 1x50-150mm interior', 11, 7, 'un', 'N', '', 1, 1, '2021-12-17 12:58:29', '2021-12-17 12:58:29'),
(124, 'CXT3x70-240ext11', 'Caixa terminal 11kv 3x70-120mm (150-240)mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:00:08', '2021-12-17 13:00:08'),
(125, 'CXT1x150-300ext11KV', 'Caixa terminal 11kv 1x150-300mm (150-240)mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:02:43', '2021-12-17 13:02:43'),
(126, 'CXT3x70-120int11', 'Caixa terminal 11kv 3x70-120mm interior', 11, 7, 'un', 'N', '', 1, 1, '2021-12-17 13:03:52', '2021-12-17 13:03:52'),
(127, 'CXT3x70-120ext11', 'Caixa terminal 11kv 3x70-120mm exterior', 11, 7, 'un', 'Q', '', 1, 1, '2021-12-17 13:05:21', '2021-12-17 13:05:21'),
(128, 'CXT3x150-240int11', 'Caixa terminal 11kv 3x150-240mm interior', 11, 7, 'un', 'P', '', 1, 1, '2021-12-17 13:06:31', '2021-12-17 13:06:31'),
(129, 'CXT3x150-240ext11', 'Caixa terminal 11kv 3x150-240mm exterior', 11, 7, 'un', 'P', '', 1, 1, '2021-12-17 13:07:36', '2021-12-17 13:07:36'),
(130, 'CXT3x300-500int11', 'Caixa terminal 11kv 3x300-500mm interior', 11, 7, 'un', 'G', '', 1, 1, '2021-12-17 13:15:15', '2021-12-17 13:15:15'),
(131, 'CXT3x300-500int11', 'Caixa terminal 11kv 3x300-500mm exterior', 11, 7, 'un', 'M', '', 1, 1, '2021-12-17 13:16:37', '2021-12-17 13:16:37'),
(132, 'CXT1x300-500int11', 'Caixa terminal 11kv 1x300-500mm interior', 11, 7, 'un', 'P', '', 1, 1, '2021-12-17 13:17:49', '2021-12-17 13:17:49'),
(133, 'CXT1x300-500ext11', 'Caixa terminal 11kv 1x300-500mm exterior', 11, 7, 'un', 'P', '', 1, 1, '2021-12-17 13:19:04', '2021-12-17 13:19:04'),
(134, 'CXT3x35CC11', 'Caixa terminal 11kv 3x35mm condutor de cobre', 11, 7, 'un', 'F', '', 1, 1, '2021-12-17 13:20:46', '2021-12-17 13:20:46'),
(135, 'CXT3x50-120int33', 'Caixa terminal 33kv 3x50-120mm interior', 11, 7, 'un', 'F', '', 1, 1, '2021-12-17 13:22:17', '2021-12-17 13:22:17'),
(136, 'CXT3x50-120ext33', 'Caixa terminal 33kv 3x50-120mm exterior', 11, 7, 'un', 'Q', '', 1, 1, '2021-12-17 13:23:45', '2021-12-17 13:23:45'),
(137, 'CXT3x150-300ext33', 'Caixa terminal 33kv 3x150-300mm exterior', 11, 7, 'un', 'Q', '', 1, 1, '2021-12-17 13:25:32', '2021-12-17 13:25:32'),
(138, 'CXT3x150-240int33', 'Caixa terminal 33kv 3x150-240mm interior', 11, 7, 'un', 'Q', '', 1, 1, '2021-12-17 13:27:19', '2021-12-17 13:27:19'),
(139, 'CXT3x150-240ext33', 'Caixa terminal 33kv  3x150-240mm exterior', 11, 7, 'un', 'P', '', 1, 1, '2021-12-17 13:29:20', '2021-12-17 13:29:20'),
(140, 'CXT3x300-500int33', 'Caixa terminal 33kv 3x300-500 interior', 11, 7, 'un', 'M', '', 1, 1, '2021-12-17 13:30:53', '2021-12-17 13:30:53'),
(141, 'CXT3x300-500ext33', 'Caixa terminal 33kv 3x300-500mm exterior', 11, 7, 'un', 'N', '', 1, 1, '2021-12-17 13:40:35', '2021-12-17 13:40:35'),
(142, 'CXT3x35CC33', 'Caixa terminal 33kv 3x35mm condutor de cobre', 11, 7, 'un', 'F', '', 1, 1, '2021-12-17 13:42:03', '2021-12-17 13:42:03'),
(143, 'CXT3x50-95int11', 'Caixa terminal (CIP) 11kv 3x50-95mm interior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:50:14', '2021-12-17 13:50:14'),
(144, 'CXT3x120-185int11', 'Caixa terminal (CIP) 11kv 3x120-185mm interior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:51:50', '2021-12-17 13:51:50'),
(145, 'CXT3x240-300int11', 'Caixa terminal (CIP) 11kv 3x240-300mm interior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:53:12', '2021-12-17 13:53:12'),
(146, 'CXT3x185-300ext11', 'Caixa terminal (CIP) 11kv 3x185-300mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:54:42', '2021-12-17 13:54:42'),
(147, 'CXT3x240-300ext33', 'Caixa terminal (CIP) 33kv 3x240-300mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:56:09', '2021-12-17 13:56:09'),
(148, 'CXT1x400-630ext33', 'Caixa terminal (CIP) 33kv 1x400-630mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:57:42', '2021-12-17 13:57:42'),
(149, 'CXT3x70-150ext22', 'Caixa terminal (CIP) 22kv 3x70-150mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 13:58:57', '2021-12-17 13:58:57'),
(150, 'CXT3x25-95ext11', 'Caixa terminal 11kv 3x25-95mm (70-120mm) exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 14:00:01', '2021-12-17 14:00:01'),
(151, 'CXT3x120-240ext11', 'Caixa terminal 11kv 3x120-240mm (150-240)mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 14:01:31', '2021-12-17 14:01:31'),
(152, 'CXT3x150-300int11', 'Caixa terminal 11kv 3x150-300mm (150-240)mm interior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 14:02:46', '2021-12-17 14:02:46'),
(153, 'CXT3x50-70ext33', 'Caixa terminal 33kv 3x50-70mm (50-120)mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 14:03:55', '2021-12-17 14:03:55'),
(154, 'CXT3x95-240ext33', 'Caixa terminal 33kv 3x95-240mm (150-240)mm exterior', 11, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 14:05:08', '2021-12-17 14:05:08'),
(155, '11CXJ3x70-120', 'Caixa de junção 11kv 3x50/70-120mm', 12, 7, 'un', 'Q', '', 1, 1, '2021-12-17 14:08:32', '2021-12-17 14:08:32'),
(156, '11CXJ3x150-300', 'Caixa de junção 3x150-300mm', 12, 7, 'un', 'Q', '', 1, 1, '2021-12-17 14:09:34', '2021-12-17 14:09:34'),
(157, '11CXJ3x185-300', 'Caixa de junção 11kv 3x185-300mm', 12, 7, 'un', 'Q', '', 1, 1, '2021-12-17 14:10:48', '2021-12-17 14:10:48'),
(158, '11CXJ3x150-300', 'Caixa de junção 11 kv 3x150-300mm', 12, 7, 'un', 'Q', '', 1, 1, '2021-12-17 14:13:38', '2021-12-17 14:13:38'),
(159, '11CXJ3x95-300', 'Caixa de junção 11kv 3x95-300mm', 12, 7, 'un', 'Q', '', 1, 1, '2021-12-17 14:15:34', '2021-12-17 14:15:34'),
(160, '11CXJ3x150-240', 'Caixa de junção 11kv 3x150-240mm', 12, 7, 'un', 'N', '', 1, 1, '2021-12-17 14:20:45', '2021-12-17 14:20:45'),
(161, '11CXJ1x150-240', 'Caixa de junção 11kv 1x150-240mm', 12, 7, 'un', 'G', '', 1, 1, '2021-12-17 14:21:49', '2021-12-17 14:21:49'),
(162, '11CXJ1x300-500', 'Caixa de junção 11kv 1x300-500mm', 12, 7, 'un', 'G', '', 1, 1, '2021-12-17 14:23:20', '2021-12-17 14:23:20'),
(163, '11CXJ3x300-500', 'Caixa dde junção 11kv 3x300-500mm', 12, 7, 'un', 'G', '', 1, 1, '2021-12-17 14:24:22', '2021-12-17 14:24:22'),
(164, '11CXJ3x70-120', 'Caixa de junção 11kv 3x70-120mm', 12, 7, 'un', 'Q', '', 1, 1, '2021-12-17 14:25:37', '2021-12-17 14:25:37'),
(165, '11CXJ3x150-240MM', 'Caixa de junção 11kv 3x150-240mm', 12, 7, 'un', 'N', '', 1, 1, '2021-12-17 14:26:59', '2021-12-17 14:26:59'),
(166, '11CXJ3x85-300', 'Caixa de junção 11kv 3x85-300mm', 12, 7, 'un', 'G-P1', '', 1, 1, '2021-12-17 14:28:24', '2021-12-17 14:28:24'),
(167, '11CXJ3x85-300', 'Caixa de junção (CIP) 11kv 3x85-300mm', 12, 7, 'un', 'G-P1', '', 1, 1, '2021-12-17 14:29:23', '2022-01-05 20:25:23'),
(168, '11CXJ3x50-120', 'Caixa de junção (CIP) 11kv 3x50-120mm', 12, 7, 'un', 'G-P1', '', 1, 1, '2021-12-17 14:31:54', '2021-12-17 14:31:54'),
(169, '11CXJ1x800-1000', 'Caixa de junção (CIP) 11kv 1x800-1000mm', 12, 7, 'un', 'G-P1', '', 1, 1, '2021-12-17 14:33:37', '2021-12-17 14:33:37'),
(170, '33CXJ3x70-150', 'Caixa de junção (CIP) 33kv 3x70-150mm', 12, 7, 'un', 'G-P1', '', 1, 1, '2021-12-17 14:35:50', '2021-12-17 14:35:50'),
(171, '33CXJ3x50-120', 'CAixa de junção 33kv 3x50-120mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:37:09', '2021-12-17 14:37:09'),
(172, '24CXJ3x35-70', 'Caixa de junção 24kv 3x35-70mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:38:49', '2021-12-17 14:38:49'),
(173, '24CXJ3x50-120', 'Caixa de junção 24kv 3x50-120mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:41:22', '2021-12-17 14:41:22'),
(174, '24CXJ3x150-300', 'Caixa de junção 24kv 3x150-300mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:42:49', '2021-12-17 14:42:49'),
(175, '24CXJ3x95-240', 'Caixa de junção 24kv 3x95-240mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:44:26', '2021-12-17 14:44:26'),
(176, '33CXJ3x150-240', 'Caixa de junção 33kv 3x150-240mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:45:39', '2021-12-17 14:45:39'),
(177, '1CXJ3x25-50', 'Caixa de junção 1kv 3x25-50mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:54:25', '2021-12-17 14:54:25'),
(178, '1CXJ3x70-120', 'Caixa de junção 1kv 3x70-120mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:55:26', '2021-12-17 14:55:26'),
(179, '1CXJ3x150-240', 'Caixa de junção 1kv 3x150-240mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:56:50', '2021-12-17 14:56:50'),
(180, '11CXJ3x95-240', 'CAixa de junção 11kv 3x95-240mm (150-240)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:58:04', '2021-12-17 14:58:04'),
(181, '1CXJ3x95-120', 'Caixa de junção 1kv 3x95-120mm (70-120)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 14:59:37', '2021-12-17 14:59:37'),
(182, '1CXJ3x150-300', 'Caixa de junção 1kv 3x150-300mm (150-300)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:02:12', '2021-12-17 15:02:12'),
(183, '33CXJ3x35-70', 'Caixa de junção 33kv 3x35-70mm (50-120)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:03:52', '2021-12-17 15:03:52'),
(184, '33CXJ3x150-300', 'Caixa de junção 33kv  3x150-300mm (150-240)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:05:01', '2021-12-17 15:05:01'),
(185, '11CXJ1x150-300', 'Caixa de junção 11kv 1x150-300mm (150-240)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:06:19', '2021-12-17 15:06:19'),
(186, '1CXJ3x16-25', 'Caixa de junção 1kv 3x16-25mm (25-50)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:07:36', '2021-12-17 15:07:36'),
(187, '1CXJ3x35-50', 'Caixa de junção 1kv 3x35-50mm (25-50)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:20:47', '2021-12-17 15:20:47'),
(188, '11CXJ3x35-70', 'Caixa de junção 11kv 3x35-70mm (25-50)mm', 12, 7, 'un', 'O', '', 1, 1, '2021-12-17 15:22:08', '2021-12-17 15:22:08'),
(189, 'CXJJ4', 'J4', 12, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 15:23:02', '2021-12-17 15:23:02'),
(190, 'CXJJ5', 'J5', 12, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 15:23:36', '2021-12-17 15:23:36'),
(191, 'CXJJ6', 'J6', 12, 7, 'un', 'F-P3', '', 1, 1, '2021-12-17 15:24:13', '2021-12-17 15:24:13'),
(192, 'CR', 'Cruzetas', 13, 7, 'un', 'K', '', 1, 1, '2021-12-17 18:09:42', '2021-12-17 18:09:42'),
(193, 'PGL80x80x6', 'Perfil galvanizado (L) 80x80x6mmx3000mm', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:11:42', '2021-12-17 18:11:42'),
(194, 'CRAKLCP', 'Cross arms kit L completo com parafusos', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:13:27', '2021-12-17 18:13:27'),
(195, 'PGLCORTADO', 'Perfil galvanizado (L) 80x80x6mmx2000mm (cortado)', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:14:38', '2021-12-17 18:14:38'),
(196, 'PGL35/40x35', 'Perfil galvanizado (L) 35/40x35/40x4mmx3000mm', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:16:17', '2021-12-17 18:16:17'),
(197, 'PGL55x55x4', 'Perfil galvanizado (L) 55x55x4mmx3000mm', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:17:37', '2021-12-17 18:17:37'),
(198, 'PGL55x55x4', 'Perfil galvanizado (L) 55x55x4mmx3000mm', 13, 7, 'un', 'Fora', '', 0, 1, '2021-12-17 18:17:52', '2022-01-13 13:13:52'),
(199, 'PGL55x55x4', 'Perfil galvanizado (L) 55x55x4mmx3000mm', 13, 7, 'un', 'Fora', '', 0, 1, '2021-12-17 18:18:00', '2022-01-13 13:14:26'),
(200, 'PGL35x35x6', 'Perfil galvanizado (L) 35x35x6/m/40x40x5mmx6m', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:19:40', '2021-12-17 18:19:40'),
(201, 'PGL45x45x5', 'Perfil galvanizado (L) 45x45x5mmx6m', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:20:59', '2021-12-17 18:20:59'),
(202, 'PGL55x55x4', 'Perfil galvanizado (L) 55x55x4mmx6000mm', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:23:33', '2021-12-17 18:23:33'),
(203, 'PGL55x55x4', 'Perfil galvanizado (L) 55x55x4mmx6000mm', 13, 7, 'un', 'Fora', '', 0, 1, '2021-12-17 18:23:41', '2022-01-13 13:14:55'),
(204, 'PGL55x55x4', 'Perfil galvanizado (L) 55x55x4mmx6000mm', 13, 7, 'un', 'Fora', '', 0, 1, '2021-12-17 18:23:50', '2022-01-13 13:15:17'),
(205, 'PGU100x50x6', 'Perfil U galvanizado 100x50x6mmx3000mm', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:24:48', '2021-12-17 18:24:48'),
(206, 'PGU140x50x6', 'Perfil U galvanizado 140x50x6mmx3000mm', 13, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:26:18', '2021-12-17 18:26:18'),
(207, 'ANCEBT', 'Ancora para espia BT', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:27:40', '2021-12-17 18:27:40'),
(208, 'ISEBT', 'Isolador para espia BT', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:29:16', '2021-12-17 18:29:16'),
(209, 'PEBT', 'Prato para espia BT', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:30:03', '2021-12-17 18:30:03'),
(210, 'FEBT', 'Filaças para espia BT', 14, 7, 'un', 'F', '', 1, 1, '2021-12-17 18:30:52', '2021-12-17 18:30:52'),
(211, 'GEBT', 'Gravatas para espia BT', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:31:52', '2021-12-17 18:31:52'),
(212, 'ANCEMT', 'Ancoras para espia MT', 14, 7, 'un', 'G', '', 1, 1, '2021-12-17 18:33:04', '2021-12-17 18:33:04'),
(213, 'ISEMT', 'Isolador de espia MT', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:33:56', '2021-12-17 18:33:56'),
(214, 'PEMT', 'Prato para espia MT', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:34:38', '2021-12-17 18:34:38'),
(215, 'FEMT', 'Filaças para espia MT', 14, 7, 'un', 'F', '', 1, 1, '2021-12-17 18:35:29', '2021-12-17 18:35:29'),
(216, 'GEMT', 'Gravatas para espia MT', 14, 7, 'un', 'G', '', 1, 1, '2021-12-17 18:36:46', '2021-12-17 18:36:46'),
(217, 'FEATG', 'Filaças para espia de alta tensão (AT) grande', 14, 7, 'un', 'F-P5', '', 1, 1, '2021-12-17 18:38:36', '2021-12-17 18:38:36'),
(218, 'FCMINK', 'Filaças para cabo mink', 14, 7, 'un', 'I', '', 1, 1, '2021-12-17 18:40:07', '2021-12-17 18:40:07'),
(219, 'FCAAAC150', 'Filaças para cabo AAAC 150mm', 14, 7, 'un', 'L', '', 1, 1, '2021-12-17 18:43:36', '2021-12-17 18:43:36'),
(220, 'FCAAAC90', 'Filaças para cabo AAAC 990mm', 14, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 18:44:35', '2021-12-17 18:44:35'),
(221, 'FT11/12', 'Fusivel tubular 11/12kv 16A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:47:16', '2021-12-17 18:47:16'),
(222, 'FT11/12', 'Fusivel tubular 11/12kv 25A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:48:17', '2021-12-17 18:48:17'),
(223, 'FT11/1231.5', 'Fusivel tubular  11/12kv 31.5A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:50:18', '2021-12-17 18:50:18'),
(224, 'FT11/1240', 'Fusivel tubular 11/12kv 40A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:51:18', '2021-12-17 18:51:18'),
(225, 'FT2416', 'Fusivel tubular 24kv 16A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:52:08', '2021-12-17 18:52:08'),
(226, 'FT2425', 'Fusivel tubular 24kv 25A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:53:01', '2021-12-17 18:53:01'),
(227, 'FT2431.5', 'Fusivel tubular 24kv 31.5A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:53:58', '2021-12-17 18:53:58'),
(228, 'FT2440', 'Fusivel tubular 24kv 40A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:55:41', '2021-12-17 18:55:41'),
(229, 'FT3316', 'Fusivel tubular 33kv 16A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:56:31', '2021-12-17 18:56:31'),
(230, 'FT3325', 'Fusivel tubular 33kv 25A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:57:34', '2021-12-17 18:57:34'),
(231, 'FT3331.5', 'Fusivel tubular 33kv 31.5A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:58:43', '2021-12-17 18:58:43'),
(232, 'FT3340', 'Fusivel tubular 33kv 40A', 15, 7, 'un', 'PTM003', '', 1, 1, '2021-12-17 18:59:36', '2021-12-17 18:59:36'),
(233, 'FL1', 'Fusivel Link 1A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:00:39', '2021-12-17 19:00:39'),
(234, 'FL2', 'Fusivel Link 2A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:01:29', '2021-12-17 19:01:29'),
(235, 'FL3', 'Fusivel Link 3A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:02:10', '2021-12-17 19:02:10'),
(236, 'FL4', 'Fusivel Link 4A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:02:43', '2021-12-17 19:02:43'),
(237, 'FL5', 'Fusivel Link 5A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:10:28', '2021-12-17 19:10:28'),
(238, 'FL6', 'Fusivel Link 6A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:11:17', '2022-01-05 20:26:30'),
(239, 'FL8', 'Fusivel Link 8A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:12:05', '2021-12-17 19:12:05'),
(240, 'FL10', 'Fusivel Link 10A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:12:47', '2021-12-17 19:12:47'),
(241, 'FL15', 'Fusivel Link 15A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:13:37', '2021-12-17 19:13:37'),
(242, 'FL20', 'Fusivel Link 20A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:14:17', '2021-12-17 19:14:17'),
(243, 'FL25', 'Fusivel Link 25A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:14:52', '2021-12-17 19:14:52'),
(244, 'FL30', 'Fusivel Link 30A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:16:28', '2021-12-17 19:16:28'),
(245, 'FL50', 'Fusivel Link 50A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:17:19', '2021-12-17 19:17:19'),
(246, 'FL60', 'Fusivel Link 60A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:17:51', '2021-12-17 19:17:51'),
(247, 'FL80', 'Fusivel Link 80A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:18:34', '2021-12-17 19:18:34'),
(248, 'FL100', 'Fusivel Link 100A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:19:13', '2021-12-17 19:19:13'),
(249, 'FL150', 'Fusivel Link 150A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:20:10', '2021-12-17 19:20:10'),
(250, 'FL180', 'Fusivel Link 180A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:20:51', '2021-12-17 19:20:51'),
(251, 'FL200', 'Fusivel Link 200A', 16, 7, 'un', 'PTM002', '', 1, 1, '2021-12-17 19:22:00', '2021-12-17 19:22:00'),
(252, 'BFNH160', 'Base de fusivel HRC para BT NH00-160A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:25:34', '2021-12-17 19:25:34'),
(253, 'BFNH250', 'Base de fusivel HRC para BT NH01-250A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:26:44', '2021-12-17 19:26:44'),
(254, 'BFNH400', 'Bade de fusivel HRC para BT NH02-400A', 17, 7, 'un', 'H', '', 1, 1, '2021-12-17 19:28:41', '2021-12-17 19:28:41'),
(255, 'BFNH630', 'Base de fusivel HRC para BT NH03-630A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:31:09', '2021-12-17 19:31:09'),
(256, 'FNH50', 'Fusivel HRC BT NH00-50A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:33:26', '2021-12-17 19:33:26'),
(257, 'FNH63', 'Fusivel HRC NH00-63A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:34:15', '2021-12-17 19:34:15'),
(258, 'FNH63', 'Fusivel HRC NH00-63A', 17, 7, 'un', 'G', '', 0, 1, '2021-12-17 19:34:23', '2022-01-13 13:12:10'),
(259, 'FNH80', 'Fusivel HRC NH00-80A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:36:36', '2021-12-17 19:36:36'),
(260, 'FNH100', 'Fusivel HRC NH00-100A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:37:27', '2021-12-17 19:37:27'),
(261, 'FNH125', 'Fusivel HRC NH00-125A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:38:08', '2021-12-17 19:38:08'),
(262, 'FFNH160', 'Fusivel HRC NH00-160A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:38:50', '2021-12-17 19:38:50'),
(263, 'FNH080', 'Fusivel HRC NH01-80A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:39:57', '2021-12-17 19:39:57'),
(264, 'FNH0100', 'Fusivel HRC NH01-100A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:40:45', '2021-12-17 19:40:45'),
(265, 'FNH00125', 'Fusivel HRC NH01-125A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:41:24', '2021-12-17 19:41:24'),
(266, 'FNH0160', 'Fusivel HRC NH01-160A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:42:09', '2021-12-17 19:42:09'),
(267, 'FNH250', 'Fusivel HRC NH01-250A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:43:40', '2021-12-17 19:43:40'),
(268, 'FNH60', 'Fusivel HRC NH02-60A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:47:23', '2021-12-17 19:47:23'),
(269, 'FNH160', 'Fusivel HRC NH02-160A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:50:05', '2021-12-17 19:50:05'),
(270, 'FHN250', 'Fusivel HRC NH02-250A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 19:51:29', '2021-12-17 19:51:29'),
(271, 'FNH400', 'Fusivel HRC NH02-400A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:00:32', '2021-12-17 20:00:32'),
(272, 'FNH315', 'Fusivel HRC NH02-315A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:01:23', '2021-12-17 20:01:23'),
(273, 'FNH3400', 'Fusivel HRC NH03-400A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:02:08', '2021-12-17 20:02:08'),
(274, 'FNH200', 'Fusivel HRC NH02-200A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:03:31', '2021-12-17 20:03:31'),
(275, 'FNH200', 'Fusivel HRC NH02-200A', 17, 7, 'un', 'G', '', 0, 1, '2021-12-17 20:03:40', '2022-01-13 13:12:50'),
(276, 'FNH500', 'Fusivel HRC NH02-500A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:04:34', '2021-12-17 20:04:34'),
(277, 'FNH3630', 'Fusivel HRC NH03-630A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:05:28', '2021-12-17 20:05:28'),
(278, 'FNH3800', 'Fusivel HRC NH03-800A', 17, 7, 'un', 'G', '', 1, 1, '2021-12-17 20:06:22', '2021-12-17 20:06:22'),
(279, 'AFLV', 'Air fuse LV for ABC cable', 17, 7, 'un', 'E', '', 1, 1, '2021-12-17 20:07:32', '2021-12-17 20:07:32'),
(280, 'BA', 'Bases amoviveis', 17, 7, 'un', 'K', '', 1, 1, '2021-12-17 20:08:25', '2021-12-17 20:08:25'),
(281, 'C803P', 'Contactor de 80A 3P', 18, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:11:58', '2021-12-17 20:11:58'),
(282, 'C1003P', 'Contactor de 100A 3P', 18, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:12:41', '2021-12-17 20:12:41'),
(283, 'C1603P', 'Contactor 160A 3P', 18, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:13:31', '2021-12-17 20:13:31'),
(284, 'D16', 'Disjuntor 16A', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:14:14', '2021-12-17 20:14:14'),
(285, 'D80', 'Disjuntor 80A', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:14:46', '2021-12-17 20:14:46'),
(286, 'D100', 'Disjuntor 100A', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:15:19', '2021-12-17 20:15:19'),
(287, 'D160', 'Disjuntor 160A', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:15:53', '2021-12-17 20:15:53'),
(288, 'D250', 'Disjuntor 250A', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:16:36', '2021-12-17 20:16:36'),
(289, 'D630', 'Disjuntor 630A', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:17:46', '2021-12-17 20:17:46'),
(290, 'CHPE', 'Chumbadores para postes de estrada', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:20:22', '2021-12-17 20:20:22'),
(291, 'BCSL80D', 'Braços para candeeiro solar LED de 80W duplo', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:22:18', '2021-12-17 20:22:18'),
(292, 'BPM', 'Braços para postes metalicos com tubos', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:23:35', '2021-12-17 20:23:35'),
(293, 'IC48V/96', 'Inversor de corrente 48v/96v 10Kw', 19, 7, 'un', 'M', '', 1, 1, '2021-12-17 20:25:14', '2021-12-17 20:25:14'),
(294, 'PMIP', 'Postes metalicos de 12m para iluminação publica', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:26:29', '2021-12-17 20:26:29'),
(295, 'SPS80', 'Suportes para painel solar de 80W', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:27:26', '2021-12-17 20:27:26'),
(296, 'SAPS', 'Suportes e armaduras para painel solar', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:28:21', '2021-12-17 20:28:21'),
(297, 'CHP', 'Chumbadores para pppostes de estrada', 19, 7, 'un', 'Fora', '', 1, 1, '2021-12-17 20:29:14', '2021-12-17 20:29:14'),
(298, 'QG80', 'Quadro geral de 80A', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 12:57:58', '2021-12-18 12:57:58'),
(299, 'QG160', 'Quadro geral de 160A', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 12:58:41', '2021-12-18 12:58:41'),
(300, 'QG250', 'Quadro geral de 250A', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 12:59:15', '2021-12-18 12:59:15'),
(301, 'QG400', 'Quadro geral de 400A', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 12:59:54', '2021-12-18 12:59:54'),
(302, 'QG630', 'Quadro geral de 630A', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:00:29', '2021-12-18 13:00:29'),
(303, 'SCAI80', 'Suportes  para candeeiro all ilone 80w', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:02:05', '2021-12-18 13:02:05'),
(304, 'PRSP', 'Postes para rotundas com suportes e topos', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:03:30', '2021-12-18 13:03:30'),
(305, 'PPM12', 'Para raios para postes metalicos de 12m', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:04:26', '2021-12-18 13:04:26'),
(306, 'CIV', 'Corda inox da vel', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:05:04', '2021-12-18 13:05:04'),
(307, 'CR', 'Controlo remote', 20, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:05:37', '2021-12-18 13:05:37'),
(308, 'T50', 'Transformador 50KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:06:12', '2021-12-18 13:06:12'),
(309, 'T350', 'Transformador 350KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:06:45', '2021-12-18 13:06:45'),
(310, 'T100', 'Transformador 100KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:07:19', '2021-12-18 13:07:19'),
(311, 'T400', 'Transformador 400KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:07:54', '2021-12-18 13:07:54'),
(312, 'T160', 'Transformador 160KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:08:37', '2021-12-18 13:08:37'),
(313, 'T315', 'Transformador 315KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:09:42', '2021-12-18 13:09:42'),
(314, 'T200', 'Transformador 200KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:10:16', '2021-12-18 13:10:16'),
(315, 'T250', 'Transformador 250KVA', 21, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:11:12', '2021-12-18 13:11:12'),
(316, 'TC50/5', 'Transformador de corrente 50/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:14:21', '2021-12-18 13:14:21'),
(317, 'TC75/5', 'Transformador de corrente 75/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:15:11', '2021-12-18 13:15:11'),
(318, 'TC150/5', 'Transformador de corrente 150/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:16:01', '2021-12-18 13:16:01'),
(319, 'TC300/5', 'Transformador de corrente 300/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:16:49', '2021-12-18 13:16:49'),
(320, 'TC500/5', 'Transformador de corrente 500/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:17:37', '2021-12-18 13:17:37'),
(321, 'TC750/5', 'Transformador de corrente 750/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:18:28', '2021-12-18 13:18:28'),
(322, 'TC750/5', 'Transformador de corrente 750/5A interior', 21, 7, 'un', 'PTM003', '', 0, 1, '2021-12-18 13:19:24', '2022-01-13 13:13:13'),
(323, 'TC1000/5', 'Transformador de corrente 1000/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:20:18', '2021-12-18 13:20:18'),
(324, 'TC1500/5', 'Transformador de corrente 1500/5A interior', 21, 7, 'un', 'PTM003', '', 1, 1, '2021-12-18 13:21:03', '2021-12-18 13:21:03'),
(325, 'CL50', 'Candeeiro LED de 50W', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:21:53', '2021-12-18 13:21:53'),
(326, 'PS200', 'Painel solar de 200w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:23:32', '2021-12-18 13:23:32'),
(327, 'CL60', 'Candeeiro LED de 60w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:24:14', '2021-12-18 13:24:14'),
(328, 'CL80PS', 'Candeeiro LED de 80w para painel solar', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:25:17', '2021-12-18 13:25:17'),
(329, 'BC60', 'Braços para candeeiro de 60w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:26:13', '2021-12-18 13:26:13'),
(330, 'CSL30', 'Candeeiro solar LED de 30w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:27:10', '2021-12-18 13:27:10'),
(331, 'CSL50', 'Candeeiro solar LED de 50w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:28:00', '2021-12-18 13:28:00'),
(332, 'CL130', 'Candeeiro LED de 130w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:28:42', '2021-12-18 13:28:42'),
(333, 'CL40', 'Candeeiro LED de 40w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:29:30', '2021-12-18 13:29:30'),
(334, 'CL90', 'Candeeiro LED de 90w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:30:11', '2021-12-18 13:30:11'),
(335, 'CL80', 'Candeeiro LED de 80w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:30:55', '2021-12-18 13:30:55'),
(336, 'CL120', 'Candeeiro LED de 120w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:31:33', '2021-12-18 13:31:33'),
(337, 'CL100', 'Candeeiro LED de 100w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:32:12', '2021-12-18 13:32:12'),
(338, 'CL180', 'Candeeiro LED de 180w', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:32:45', '2021-12-18 13:32:45'),
(339, 'CL150CCT', 'Candeeiro LED de 150w cinzento com timbre', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:34:21', '2021-12-18 13:34:21'),
(340, 'CSL80LAAO', 'Candeeiro solar LED 80w com luz amarela all in one', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:35:33', '2021-12-18 13:35:33'),
(341, 'BCS', 'Baterias para candeeiros solar', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:36:32', '2021-12-18 13:36:32'),
(342, 'CU', 'Cumbi unit 33kv kit', 22, 7, 'un', 'M', '', 1, 1, '2021-12-18 13:37:11', '2021-12-18 13:37:11'),
(343, 'CL150LT', 'Candeeiro LED de 150w laranja com timbre', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:38:18', '2021-12-18 13:38:18'),
(344, 'FW', 'Firewall 11kv kit', 22, 7, 'un', 'M', '', 1, 1, '2021-12-18 13:39:01', '2021-12-18 13:39:01'),
(345, 'BCL', 'Braços para candeeiro LED', 22, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:39:42', '2021-12-18 13:39:42'),
(346, 'CSL50AOC', 'Candeeiro solar LED de 50w all in one cinzento', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:40:43', '2021-12-18 13:40:43'),
(347, 'BCSL150/200AO', 'Braços para candeeiros solar LED 150/200w all in one', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:41:59', '2021-12-18 13:41:59'),
(348, 'BCSL', 'Braços para candeeiro solar LED', 22, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:42:52', '2021-12-18 13:42:52'),
(349, 'CSL200AOL', 'Candeeiros solar LED 200w all in one laranja', 22, 7, 'un', 'J', '', 1, 1, '2021-12-18 13:43:53', '2021-12-18 13:43:53'),
(350, 'BC2x24', 'Braços para candeeiro 2x24', 22, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:44:40', '2021-12-18 13:44:40'),
(351, 'C2x24', 'Candeeiro 2x24', 22, 7, 'un', 'K', '', 1, 1, '2021-12-18 13:45:16', '2021-12-18 13:45:16'),
(352, 'CTR', 'Conectores', 22, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 13:45:54', '2021-12-18 13:45:54'),
(353, 'CSL80AOGS', 'Candeeiro solar LED 80w all in one grande com suportes', 22, 7, 'un', 'G', '', 1, 1, '2021-12-18 13:47:14', '2021-12-18 13:47:14'),
(354, 'LP24', 'Lampadas 24V', 22, 7, 'un', 'G', '', 1, 1, '2021-12-18 13:47:59', '2021-12-18 13:47:59'),
(355, 'F25', 'Fotocelulas 25A', 22, 7, 'un', 'M', '', 1, 1, '2021-12-18 13:48:37', '2021-12-18 13:48:37'),
(356, 'LP25-240', 'Ligadores paralelos AL/AL 25-240mm', 23, 7, 'un', 'C', '', 1, 1, '2021-12-18 13:49:46', '2021-12-18 13:49:46'),
(357, 'LP50-120', 'Ligadores paralelos AL/AL 50-120mm', 23, 7, 'un', 'C', '', 1, 1, '2021-12-18 13:50:45', '2021-12-18 13:50:45'),
(358, 'LP50-120', 'Ligadores paralelos AL/CU 50-120mm bimetalicos', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:51:45', '2021-12-18 13:51:45'),
(359, 'LP50-240', 'Ligadores paralelos AL/AL 50-240mm', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:52:36', '2021-12-18 13:52:36'),
(360, 'LP50-240', 'Ligadores paralelos de AL/CU 50-240mm bimetalicos', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:53:26', '2021-12-18 13:53:26'),
(361, 'LPG50-120', 'Ligadores paralelos de garra coppe 50-120mm', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:54:10', '2021-12-18 13:54:10'),
(362, 'LP3PG', 'Ligadores paralelos de AL/AL 3 parafusos grande', 23, 7, 'un', 'C', '', 1, 1, '2021-12-18 13:55:05', '2021-12-18 13:55:05'),
(363, 'LP3PP', 'Ligadores paralelos AL/AL 3 parafusos pequeno', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:56:06', '2021-12-18 13:56:06'),
(364, 'LP1P', 'Ligadores paralelos de AL/AL 1 parafuso', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:56:56', '2021-12-18 13:56:56'),
(365, 'LPCV', 'Ligadores paralelos de cobre vermelho', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:57:46', '2021-12-18 13:57:46'),
(366, 'LP2P', 'Ligadores paralelos de AL/AL 2 parafusos', 23, 7, 'un', 'C', '', 1, 1, '2021-12-18 13:58:43', '2021-12-18 13:58:43'),
(367, 'LET', 'Ligadores de electrodo de terra', 23, 7, 'un', 'B', '', 1, 1, '2021-12-18 13:59:24', '2021-12-18 13:59:24'),
(368, 'L1', 'Ligadores PC-1', 23, 7, 'un', 'L', '', 1, 1, '2021-12-18 14:00:05', '2021-12-18 14:00:05'),
(369, 'L2', 'Ligadores PC-2', 23, 7, 'un', 'L', '', 1, 1, '2021-12-18 14:00:35', '2021-12-18 14:00:35'),
(370, 'L3', 'Ligadores PC-3', 23, 7, 'un', 'L', '', 1, 1, '2021-12-18 14:01:06', '2021-12-18 14:01:06'),
(371, 'L1AC', 'Ligadores PC-1 AL/CU', 23, 7, 'un', 'K', '', 1, 1, '2021-12-18 14:01:55', '2021-12-18 14:01:55'),
(372, 'PA2x16/25', 'Pinças de amarração 2x16/25mm', 24, 7, 'un', 'Q', '', 1, 1, '2021-12-18 14:02:53', '2021-12-18 14:02:53'),
(373, 'PA4x25', 'Pinças de amarração 4x25mm XJPA 25mm', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:03:56', '2021-12-18 14:03:56'),
(374, 'PA4x50', 'Pinças de amarração 4x50/95mm (BT)', 24, 7, 'un', 'F-P4', '', 1, 1, '2021-12-18 14:04:57', '2021-12-18 14:04:57'),
(375, 'PAEA7', 'Pinças de amarração EA7 (NLL-4)', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:06:07', '2021-12-18 14:06:07'),
(376, 'PAEA5', 'Pinças de amarração ZNJA-2 (small EA5)', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:07:18', '2021-12-18 14:07:18'),
(377, 'PAEA6', 'Pinças de amarração EA6 (NLL-3)', 24, 7, 'un', 'Q', '', 1, 1, '2021-12-18 14:08:22', '2021-12-18 14:08:22'),
(378, 'PAMT', 'Pinças de amarração MT EA5 NLL-2', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:09:18', '2021-12-18 14:09:18'),
(379, 'PAG', 'Pinças de amarração grande', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:09:57', '2021-12-18 14:09:57'),
(380, 'PS2x16', 'Pinças de suspensão BT 2x16/4x25mm', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:10:51', '2021-12-18 14:10:51'),
(381, 'PSEB28', 'Pinças de suspensão MT XGH2 EB28', 24, 7, 'un', 'J', '', 1, 1, '2021-12-18 14:11:42', '2021-12-18 14:11:42'),
(382, 'PS4x50', 'Pinças de suspensão BT 4x50/95mm BT', 24, 7, 'un', 'F-P2', '', 1, 1, '2021-12-18 14:12:47', '2021-12-18 14:12:47'),
(383, 'ICS', 'Isoladores de cadeia silicone 33/36kv', 25, 7, 'un', 'F', '', 1, 1, '2021-12-18 14:14:21', '2021-12-18 14:14:21'),
(384, 'ILB', 'Isoladores de linha de borracha 36kv', 25, 7, 'un', 'F', '', 1, 1, '2021-12-18 14:15:01', '2021-12-18 14:15:01'),
(385, 'ILHB', 'Isoladores de linha horizontal de borracha', 25, 7, 'un', 'F', '', 1, 1, '2021-12-18 14:38:29', '2021-12-18 14:38:29'),
(386, 'DS11', 'Desconectares switch 11kv (exterior)', 25, 7, 'un', 'N', '', 1, 1, '2021-12-18 14:58:39', '2021-12-18 14:58:39'),
(387, 'DS33', 'Disconectares switch 33kv (exterior)', 25, 7, 'un', 'N', '', 1, 1, '2021-12-18 14:59:31', '2021-12-18 14:59:31'),
(388, 'ISTV', 'Isoladores STV 33/35kv 7 saias', 25, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 15:00:31', '2021-12-18 15:00:31'),
(389, 'SL', 'Solid Link', 25, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 15:00:58', '2021-12-18 15:00:58'),
(390, 'ISTV9', 'Isoladores STV 33/35kv 9 saias', 25, 7, 'un', 'Fora', '', 1, 1, '2021-12-18 15:01:44', '2021-12-18 15:01:44'),
(391, 'PISTV', 'Pernos de STV 33/35kv', 25, 7, 'un', 'G', '', 1, 1, '2021-12-18 15:02:35', '2021-12-18 15:02:35'),
(392, 'PPSTV', 'Pernos pequenos M20x120mm de STV 33/35kv', 25, 7, 'un', 'G', '', 1, 1, '2021-12-18 15:03:41', '2021-12-18 15:03:41'),
(393, 'IAKIT', 'Kit de isoladores de amarração', 25, 7, 'un', 'G', '', 1, 1, '2021-12-18 15:04:27', '2021-12-18 15:04:27'),
(394, 'DOB', 'Drop-Outs 36/33kv de borracha', 25, 7, 'un', 'I', '', 1, 1, '2021-12-18 15:05:24', '2021-12-18 15:05:24'),
(395, 'DO', 'Drop-Outs 36/33kv', 25, 7, 'un', 'I', '', 1, 1, '2021-12-18 15:06:06', '2021-12-18 15:06:06'),
(396, 'PR33', 'Para-Raios 33kv', 25, 7, 'un', 'Q', '', 1, 1, '2021-12-18 15:06:51', '2021-12-18 15:06:51'),
(397, 'PR', 'Para-Raios 36kv', 25, 7, 'un', 'I', '', 1, 1, '2021-12-18 15:07:25', '2021-12-18 15:07:25'),
(398, 'PR22', 'Para-raios 22kv', 25, 7, 'un', 'Q', '', 1, 1, '2021-12-18 15:08:03', '2021-12-18 15:08:03'),
(399, 'PR11', 'Para-raios 11kv', 25, 7, 'un', 'Q', '', 1, 1, '2021-12-18 15:08:38', '2021-12-18 15:08:38'),
(400, 'PR6.6', 'Para-raios 6.6kv', 25, 7, 'un', 'Q', '', 1, 1, '2021-12-18 15:09:21', '2021-12-18 15:09:21'),
(401, 'PR0.4', 'Para-raios 0.4kv', 25, 7, 'un', 'E', '', 1, 1, '2021-12-18 15:10:04', '2021-12-18 15:10:04'),
(402, 'BP', 'Buchas plasticas', 26, 7, 'un', 'E', '', 1, 1, '2021-12-18 15:11:09', '2021-12-18 15:11:09'),
(403, 'APC10', 'Abraçadeiras plasticas tipo clip 10mm', 26, 7, 'un', 'E', '', 1, 1, '2021-12-18 15:11:55', '2021-12-18 15:11:55'),
(404, 'APC5', 'Abraçadeiras plasticas tipo clip 5mm', 26, 7, 'un', 'E', '', 1, 1, '2021-12-18 15:12:44', '2021-12-18 15:12:44'),
(405, 'CM', 'Contador monofasico', 27, 7, 'un', 'E', '', 1, 1, '2021-12-20 13:22:13', '2021-12-20 13:22:13');
INSERT INTO `produtos` (`id`, `codigo`, `nome`, `categoria_id`, `parent_id`, `unidade_total`, `localozacao_no_armazem`, `imagem`, `status`, `tipo`, `created_at`, `updated_at`) VALUES
(406, 'CT', 'Contador trifasico', 27, 7, 'un', 'E', '', 1, 1, '2021-12-20 13:23:05', '2021-12-20 13:23:05'),
(407, 'TC', 'Teclado de contador', 27, 7, 'un', 'E', '', 1, 1, '2021-12-20 13:23:46', '2021-12-20 13:23:46'),
(408, 'QC', 'Quadrelec', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:24:29', '2021-12-20 13:24:29'),
(409, 'CPM1', 'Caixa de proteção monofasica 1 modulo', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:25:25', '2021-12-20 13:25:25'),
(410, 'CPM2', 'Caixa de proteção monofasica 2 modulo', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:26:23', '2021-12-20 13:26:23'),
(411, 'CPM4', 'Caixa de proteção monofasica 4 modulo', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:27:19', '2021-12-20 13:27:19'),
(412, 'CPT1', 'Caixa de proteção trifasica 1 modulo', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:28:02', '2021-12-20 13:28:02'),
(413, 'RP', 'Roldanas plasticas', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:28:41', '2021-12-20 13:28:41'),
(414, 'RCP', 'Roldanas MT cable pulley', 27, 7, 'un', 'Fora', '', 1, 1, '2021-12-20 13:30:34', '2021-12-20 13:30:34'),
(415, 'FB3', 'Fita de borracha 3m', 27, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:31:37', '2021-12-20 13:31:37'),
(416, 'FIV/A', 'Fita isoladora verde/amarelo', 28, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:32:47', '2021-12-20 13:32:47'),
(417, 'FIP', 'Fita isoladora preta', 28, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:33:33', '2021-12-20 13:33:33'),
(418, 'FIB', 'Fita isoladora branca', 28, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:34:15', '2021-12-20 13:34:15'),
(419, 'FIA', 'Fita isoladora azul', 28, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:34:49', '2021-12-20 13:34:49'),
(420, 'FIA', 'Fita isoladora amarela', 28, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:35:34', '2021-12-20 13:35:34'),
(421, 'FIV', 'Fita isoladora verde', 28, 7, 'un', 'F-P4', '', 1, 1, '2021-12-20 13:36:20', '2021-12-20 13:36:20'),
(422, 'FV10A', 'Fivelas C2 10A', 28, 7, 'un', 'C', '', 1, 1, '2021-12-20 13:38:06', '2021-12-20 13:38:06'),
(423, 'FV20B', 'Fivelas C3 20B', 28, 7, 'un', 'C', '', 1, 1, '2021-12-20 13:38:57', '2021-12-20 13:38:57'),
(424, 'SC1/2', 'Serra cabos 1/2', 29, 7, 'un', 'G-P1', '', 1, 1, '2021-12-20 13:59:20', '2021-12-20 13:59:20'),
(425, 'SC5/8', 'Serra cabos 5/8', 29, 7, 'un', 'G-P1', '', 1, 1, '2021-12-20 14:00:32', '2021-12-20 14:00:32'),
(426, 'SC5/16', 'Serra cabos 5/16', 29, 7, 'un', 'G-P1', '', 1, 1, '2021-12-20 14:01:22', '2021-12-20 14:01:22'),
(427, 'M1', 'Mordente 1 tonelada', 30, 1, 'un', 'F-P2', '', 1, 1, '2021-12-20 14:02:25', '2021-12-20 14:02:25'),
(428, 'M2', 'Mordente 2 toneladas', 30, 1, 'un', 'F-P2', '', 1, 1, '2021-12-20 14:03:22', '2021-12-20 14:03:22'),
(429, 'M3', 'Mordente 3 toneladas', 30, 1, 'un', 'F-P2', '', 1, 1, '2021-12-20 14:07:21', '2021-12-20 14:07:21'),
(430, 'G750', 'Guincho 750kg', 30, 1, 'kg', 'C', '', 1, 1, '2021-12-20 14:08:11', '2021-12-20 14:08:11'),
(431, 'G1500', 'Guincho 1500kg', 30, 1, 'kg', 'C', '', 1, 1, '2021-12-20 14:08:53', '2021-12-20 14:08:53'),
(432, 'G3000', 'Guincho 3000kg', 30, 1, 'kg', 'C', '', 1, 1, '2021-12-20 14:09:33', '2021-12-20 14:09:33'),
(433, 'CP', 'Cintas plasticas', 31, 7, 'un', 'E', '', 1, 1, '2021-12-20 14:10:55', '2021-12-20 14:10:55'),
(434, 'CM10', 'Cintas metalicas 10A', 31, 7, 'un', 'G', '', 1, 1, '2021-12-20 14:11:37', '2021-12-20 14:11:37'),
(435, 'CM20', 'Cintas metalicas 20B', 31, 7, 'un', 'J', '', 1, 1, '2021-12-20 14:12:20', '2021-12-20 14:12:20'),
(436, 'VGPC', 'Vedação galvanizada para PT kit completo', 32, 1, 'un', 'Fora', '', 1, 1, '2021-12-20 14:59:03', '2021-12-20 14:59:03'),
(437, 'VV', 'Vedação verde', 32, 1, 'un', 'Fora', '', 1, 1, '2021-12-20 14:59:33', '2021-12-20 14:59:33'),
(438, 'VE100/100', 'Kit de vedação para estaleiro de 100/100 BM', 32, 1, 'un', 'Fora', '', 1, 1, '2021-12-20 15:00:27', '2021-12-20 15:00:27'),
(439, 'PM9', 'Poste de madeira 9 metros', 33, 7, 'un', 'G/M', '', 1, 1, '2021-12-20 15:01:26', '2021-12-20 15:01:26'),
(440, 'PM12', 'Poste de madeira 12 metros', 33, 7, 'un', 'G/M', '', 1, 1, '2021-12-20 15:02:02', '2021-12-20 15:02:02'),
(441, 'PM15', 'Poste de madeira 15 metros', 33, 7, 'un', 'G/M', '', 1, 1, '2021-12-20 15:02:51', '2021-12-20 15:02:51'),
(442, 'PA14x40x21', 'Parafuso anti-vandalo 14x40x21mm', 34, 1, 'un', 'F-P2', '', 1, 1, '2021-12-20 15:03:49', '2021-12-20 15:03:49'),
(443, 'PA12x35x21', 'Parafuso anti-vandalo 12x35x21mm', 34, 1, 'un', 'F-P2', '', 1, 1, '2021-12-20 15:04:37', '2021-12-20 15:04:37'),
(444, 'PA12x40x21', 'Parafuso anti-vandalo 12x40x21mm', 34, 1, 'un', 'F-P2', '', 1, 1, '2021-12-20 15:05:36', '2021-12-20 15:05:36'),
(445, 'PC6', 'Parafuso de chapa 6mm', 34, 1, 'un', 'B', '', 1, 1, '2021-12-20 15:06:38', '2021-12-20 15:06:38'),
(446, 'PU', 'Prego U', 34, 1, 'kg', 'G-P2', '', 1, 1, '2021-12-20 15:08:22', '2021-12-20 15:08:22'),
(447, 'LMA', 'Livro de material do armazem TES-TOP', 35, 1, 'un', 'B', '', 1, 1, '2021-12-20 15:13:52', '2021-12-20 15:13:52'),
(448, 'ACT', 'Alicate de cravar terminais', 35, 1, 'un', 'B', '', 1, 1, '2021-12-22 19:11:37', '2021-12-22 19:11:37'),
(449, 'LVBT', 'Luvas BT', 35, 1, 'un', 'F-P4', '', 1, 1, '2021-12-22 19:12:27', '2021-12-22 19:12:27'),
(450, 'SBC', 'Separador de barra de cobre', 35, 1, 'un', 'E', '', 1, 1, '2021-12-22 19:13:05', '2021-12-22 19:13:05'),
(451, 'TVD16', 'Tubo VD 16mm', 35, 1, 'un', 'Fora', '', 1, 1, '2021-12-22 19:13:44', '2021-12-22 19:13:44'),
(452, 'TPVC110', 'Tubo PVC 110mm', 35, 1, 'un', 'Fora', '', 1, 1, '2021-12-22 19:14:26', '2021-12-22 19:14:26'),
(453, 'TPVC75', 'Tubo PVC 75mm', 35, 1, 'un', 'Fora', '', 1, 1, '2021-12-22 19:15:00', '2021-12-22 19:15:00'),
(454, 'TPVC50', 'Tubo PVC 50mm', 35, 1, 'un', 'Fora', '', 1, 1, '2021-12-22 19:15:36', '2021-12-22 19:15:36'),
(455, 'BC', 'Barra de cobre', 35, 1, 'un', 'F-P3', '', 1, 1, '2021-12-22 19:17:13', '2021-12-22 19:17:13'),
(456, 'PPM', 'Placa de perigo de morte', 35, 1, 'un', 'F-P4', '', 1, 1, '2021-12-22 19:19:35', '2021-12-22 19:19:35'),
(457, 'PEP', 'Placa de enumeração de poste', 35, 1, 'un', 'F-P4', '', 1, 1, '2021-12-22 19:21:41', '2021-12-22 19:21:41'),
(458, 'SP3/8', 'Sapatilhos BT 3/8', 36, 7, 'un', 'F-P5', '', 1, 1, '2021-12-22 19:22:40', '2021-12-22 19:22:40'),
(459, 'SP3/4', 'Sapatilhos BT 3/4', 36, 7, 'un', 'F-P5', '', 1, 1, '2021-12-22 19:23:26', '2021-12-22 19:23:26'),
(460, 'SP1/2', 'Sapatilhos BT 1/2', 36, 7, 'un', 'F-P5', '', 1, 1, '2021-12-22 19:24:07', '2021-12-22 19:24:07'),
(461, 'CE', 'Cabo de espia (aço) 70mm MT', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 19:25:11', '2021-12-22 19:25:11'),
(462, 'CE', 'Cabo de espia (aço) 50mm BT', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 19:26:07', '2021-12-22 19:26:07'),
(463, 'CCN16', 'Condutor de cobre nu 16mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 19:27:00', '2021-12-22 19:27:00'),
(464, 'CCN35', 'Condutor de cobre nu 35mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 19:27:43', '2021-12-22 19:27:43'),
(465, 'CCN50', 'Condutor de cobre nu 50mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 20:25:59', '2021-12-22 20:25:59'),
(466, 'CAAAC90', 'Condutor AAAC willow 90mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 20:26:49', '2021-12-22 20:26:49'),
(467, 'CACSR', 'Condutor ACSR Mink', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 20:27:27', '2021-12-22 20:27:27'),
(468, 'CAAAC150', 'Condutor AAAC Mulberry 150mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 20:28:06', '2021-12-22 20:28:06'),
(469, 'CABC2x10', 'Cabo ABC 2x10mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-22 20:28:52', '2021-12-22 20:28:52'),
(470, 'CABC4x16', 'Cabo ABC 4x16mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:21:35', '2021-12-27 12:21:35'),
(471, 'CABC 4x50+25', 'Cabo ABC 4x50+25mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:22:21', '2021-12-27 12:22:21'),
(472, 'CABC3x50+55+25', 'Cabo ABC 3x50+55+25mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:23:02', '2021-12-27 12:23:02'),
(473, 'CABC3x70+55+25', 'Cabo ABC 3x70+55+25mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:23:45', '2021-12-27 12:23:45'),
(474, 'CABAC4x95', 'Cabo ABC 4x95mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:24:19', '2021-12-27 12:24:19'),
(475, 'CVAV2x10', 'Cabo VAV 2x10mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:24:57', '2021-12-27 12:24:57'),
(476, 'CVAV4x35', 'Cabo VAV 4x35mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:25:33', '2021-12-27 12:25:33'),
(477, 'CVAV4x50', 'Cabo VAV 4x50mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:26:10', '2021-12-27 12:26:10'),
(478, 'CVAV4x70', 'Cabo VAV 4x70mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:26:45', '2021-12-27 12:26:45'),
(479, 'CVAV4x35+16', 'Cabo VAV 4x35+16mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:27:32', '2021-12-27 12:27:32'),
(480, 'CXLPE1x150', 'Cabo XLPE cu 1x150mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:28:24', '2021-12-27 12:28:24'),
(481, 'CVAV3x120', 'Cabo VAV 3x120mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:28:58', '2021-12-27 12:28:58'),
(482, 'CXLPE3x95', 'Cabo XLPE 3x95mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:29:35', '2021-12-27 12:29:35'),
(483, 'CVAV4x95', 'Cabo VAV 4x95mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:30:21', '2021-12-27 12:30:21'),
(484, 'CTVHV', 'Cabo TVHV', 37, 7, 'm', 'H', '', 1, 1, '2021-12-27 12:31:23', '2021-12-27 12:31:23'),
(485, 'CPCN2x1.5', 'Cabo PCN 2x1.5mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:32:11', '2021-12-27 12:32:11'),
(486, 'CVAV1x70', 'Cabo VAV cu 1x70mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:32:54', '2021-12-27 12:32:54'),
(487, 'CPBMR2x4', 'Cabo PBMR 2x4mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:33:30', '2021-12-27 12:33:30'),
(488, 'CPBMR4x4', 'Cabo PBMR 4x4mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:34:06', '2021-12-27 12:34:06'),
(489, 'CPBC2x1.5', 'Cabo PBC 2x1.5mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:34:44', '2021-12-27 12:34:44'),
(490, 'CPCN3x2.5', 'Cabo PCN 3x2.5mm', 37, 7, 'm', 'Fora', '', 1, 1, '2021-12-27 12:35:22', '2021-12-27 12:35:22'),
(491, 'CCC', 'Cabo para conexão de contadores', 37, 7, 'm', 'Fora', '', 1, 1, '2022-01-07 15:33:28', '2022-01-07 15:33:28'),
(492, 'DT33KV', 'Detector de tensão 33kv', 4, 1, 'un', 'C', '', 1, 1, '2022-01-07 15:36:22', '2022-01-07 15:36:22'),
(493, 'TC10', 'Terminais de cobre 10mm', 8, 7, 'un', 'D', '', 1, 1, '2022-01-07 15:37:59', '2022-01-07 15:37:59'),
(494, 'AMQ16', 'Anilhas de mola quadradas M16', 10, 7, 'un', 'F-P3', '', 1, 1, '2022-01-07 15:41:09', '2022-01-07 15:41:09'),
(495, 'CM', 'Candeeiros de murro exterior', 22, 7, 'un', 'J', '', 1, 1, '2022-01-07 15:44:43', '2022-01-07 15:44:43'),
(496, 'TD', 'Maquina de furar poste trado', 6, 1, 'un', 'C', '', 1, 1, '2022-01-10 15:18:15', '2022-01-10 15:18:15'),
(497, 'CPBMR3x2.5', 'Cabo PBMR 3x2.5mm', 37, 7, 'm', 'Fora', '', 1, 1, '2022-01-25 16:51:31', '2022-01-25 16:51:31'),
(498, 'TPLUGIN', 'Terminal plug in 70mm para linha 33kv', 8, 7, 'un', 'E', '', 1, 1, '2022-02-24 22:11:06', '2022-02-24 22:11:06'),
(499, 'QG100', 'Quadro Geral de BT 100A', 20, 7, 'un', 'Fora', '', 1, 1, '2022-03-05 16:13:02', '2022-03-05 16:13:02'),
(500, 'CL60WC', 'Candeeiro LED 60W cinzento com timbre', 22, 7, 'un', 'J', '', 1, 1, '2022-03-05 16:17:53', '2022-03-05 16:17:53'),
(501, 'FGB', 'Ferro gancho M20 com batente', 10, 7, 'un', 'J', '', 1, 1, '2022-03-05 16:52:21', '2022-03-05 16:52:21'),
(502, 'ROM20', 'Rotula Olhal M20', 10, 7, 'un', 'J', '', 1, 1, '2022-03-05 16:53:20', '2022-03-05 16:53:20'),
(503, 'MPC', 'Maquina de puxar cabo', 6, 1, 'un', 'Fora', '', 1, 1, '2022-03-05 17:42:48', '2022-03-05 17:42:48'),
(504, 'CV', 'Caixa de Velocidade pra samil50', 35, 1, 'un', 'Fora', '', 1, 1, '2022-03-07 17:38:21', '2022-03-07 17:38:21'),
(505, 'FIV', 'Fita isoladora vermelha', 28, 7, 'un', 'F-P4', '', 1, 1, '2022-03-08 16:39:14', '2022-03-08 16:39:14'),
(506, 'RAT', 'Roldanas para Alta Tensão', 27, 7, 'un', 'Fora', '', 1, 1, '2022-03-28 15:29:56', '2022-03-28 15:29:56'),
(507, 'CXT150', 'Caixa terminal 6.6kv 3x50-15mm exterior', 12, 7, 'un', 'N', '', 1, 1, '2022-03-30 17:27:47', '2022-03-30 17:27:47'),
(508, 'CXT50-150', 'Caixa terminal 22kv 3x50-150mm exterior', 12, 7, 'un', 'N', '', 1, 1, '2022-03-30 17:29:14', '2022-03-30 17:29:14'),
(509, 'CXT150-300', 'Caixa terminal 3x150-300 11kv exterior', 12, 7, 'un', 'N', '', 1, 1, '2022-03-30 17:32:16', '2022-03-30 17:32:16'),
(510, 'CXT50-120', 'Caixa terminal 11kv 3x50-120mm interior', 12, 7, 'un', 'N', '', 1, 1, '2022-03-30 17:33:26', '2022-03-30 17:33:26'),
(511, 'MCT16-300MM', 'Maquina de cravar terminais', 10, 7, 'un', 'E', '', 1, 1, '2022-03-30 20:00:58', '2022-03-30 20:00:58'),
(512, 'RGBT', 'Roldana Grande BT', 27, 7, 'un', 'Fora', '', 1, 1, '2022-03-30 20:08:18', '2022-03-30 20:08:18'),
(513, 'DSK', 'D-Shakles com batentes', 10, 7, 'un', 'D', '', 1, 1, '2022-03-30 20:12:44', '2022-03-30 20:12:44'),
(514, 'VM10', 'Varra de Manobra 10 metros', 4, 1, 'un', 'C', '', 1, 1, '2022-03-30 21:56:08', '2022-03-30 21:56:08'),
(515, 'SF', 'Separador de Fases', 17, 7, 'un', 'C', '', 1, 1, '2022-03-30 21:58:11', '2022-03-30 21:58:11'),
(516, 'CL150', 'Candeeiro LED 150w Cinzento Partido', 22, 7, 'un', 'J', '', 1, 1, '2022-04-27 15:33:18', '2022-04-27 15:33:18'),
(517, 'CL80', 'Candeeiro LED 80W Cinzento', 22, 7, 'un', 'J', '', 1, 1, '2022-04-27 15:34:43', '2022-04-27 15:34:43'),
(518, 'QGBT250A', 'Quadro Geral de Baixa Tensao regulavel de 250A até 630A com saida de 100A', 20, 7, 'un', 'Fora', '', 1, 1, '2022-05-10 21:59:39', '2022-05-10 21:59:39'),
(519, 'QGBT250A', 'Quadro Geral de Baixa Tensao regulavel de 250A até 630A com saida de 80A', 20, 7, 'un', 'Fora', '', 1, 1, '2022-05-10 22:01:02', '2022-05-10 22:01:02'),
(520, 'DJ200A', 'Disjuntor de 200A', 19, 7, 'un', 'M', '', 1, 1, '2022-05-10 22:03:05', '2022-05-10 22:03:05'),
(521, 'TRF100', 'Transformador de 100KVA Avariado', 21, 7, 'un', 'Fora', '', 1, 1, '2022-05-11 20:17:08', '2022-05-11 20:17:08'),
(522, 'VD', 'Vedação Incompleta', 32, 1, 'un', 'Fora', '', 1, 1, '2022-05-11 20:19:49', '2022-05-11 20:19:49'),
(523, 'CP', 'Caixas de protecção para contador monofasico 4 modulos  sem disjuntores', 27, 7, '2', 'Fora', '', 1, 1, '2022-05-25 20:05:45', '2022-05-25 20:05:45'),
(524, 'TM', 'Teclados Monofasicos', 27, 7, '2', 'C', '', 1, 1, '2022-05-25 20:07:00', '2022-05-25 20:07:00'),
(525, 'TT', 'Teclado Trifasico', 27, 7, '2', 'C', '', 1, 1, '2022-05-25 20:08:11', '2022-05-25 20:08:11'),
(526, 'QGBT250A', 'Quadro Geral de Baixa 250A Substituído Sem Vidro da Lâmpada', 20, 7, '2', 'Fora', '', 1, 1, '2022-05-31 21:47:21', '2022-05-31 21:47:21'),
(527, 'QGBT250A', 'Quadro Geral de Baixa  250A Substituído', 20, 7, '2', 'Fora', '', 1, 1, '2022-05-31 21:56:24', '2022-05-31 21:56:24'),
(528, 'CP', 'Caixa de Proteção  para Contador Monofásico 4 Módulos Partido', 27, 7, '2', 'Fora', '', 1, 1, '2022-05-31 22:04:30', '2022-05-31 22:04:30'),
(529, 'BF', 'Borracha para filaças de AAAC Mulberry', 14, 7, '2', 'N', '', 1, 1, '2022-06-01 21:11:40', '2022-06-01 21:11:40'),
(530, 'BF', 'Borracha para filaças de AAAC Willow', 14, 7, '2', 'N', '', 1, 1, '2022-06-01 21:12:43', '2022-06-01 21:12:43'),
(531, 'BIP', 'Braços de IP incompleto sem parafuso, sem suporte', 22, 7, '2', 'E', '', 1, 1, '2022-06-01 21:14:41', '2022-06-01 21:14:41');

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
(1, '0001/2022', 'MD001', NULL, 3, 4, NULL, 'Osvaldo Gamer', '2022-05-10', '17:48:00', NULL, 2, '2022-06-16', 1, 'Osvaldo Banze', NULL, 'Osvaldo Silvestre BanzeData: 10/05/2022  -  Hora: 16 : 48 : 28', 'Osvaldo  Data: 16/06/2022  -  Hora: 10 : 45 : 29', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 1, 0, '2022-05-10 14:48:28', '2022-06-16 08:45:29'),
(2, '0002/2022', 'MD001', NULL, 3, 4, NULL, 'Osvaldo Silvestre', '2022-05-10', '16:59:00', NULL, 0, '2022-05-11', 0, 'Osvaldo Banze', NULL, 'Osvaldo Silvestre BanzeData: 10/05/2022  -  Hora: 17 : 00 : 00', 'Osvaldo Silvestre Banze Data: 11/05/2022  -  Hora: 12 : 10 : 59', NULL, 'Osvaldo Data: 17/06/2022  -  Hora: 09 : 40 : 06', '0002_2022_11-05-2022.pdf', NULL, 2, 1, 14, NULL, 0, 1, 0, '2022-05-10 15:00:00', '2022-06-17 07:40:06'),
(3, '00097/2022', 'MD001', NULL, 3, 2, NULL, 'Osvaldo Gamer', '2022-06-16', '09:20:00', 'd', 1, NULL, 1, 'Osvaldo Gamer', 'Osvaldo Gamer', 'Osvaldo Data: 16/06/2022  -  Hora: 09 : 32 : 56', NULL, NULL, NULL, NULL, '4850175R', 1, 1, 11, NULL, 0, 3, 0, '2022-06-16 07:32:56', '2022-06-16 07:32:56'),
(4, '00098/2022', 'MD001', NULL, 3, 4, NULL, 'Osvaldo Gamer', '2022-06-16', '10:08:00', 'Observações.......................', 1, NULL, 1, 'Osvaldo Gamer', 'Osvaldo Gamer', 'Osvaldo Data: 16/06/2022  -  Hora: 10 : 09 : 02', NULL, NULL, NULL, NULL, '4850175R', 1, 1, 11, NULL, 0, 3, 0, '2022-06-16 08:09:02', '2022-06-16 08:09:02'),
(5, '00099/2022', 'MD001', NULL, 3, 4, NULL, 'Osvaldo', '2022-06-17', '12:21:00', NULL, 1, NULL, 1, 'Celso Banze', 'Silvestre Banze', 'Celso BanzeData: 17/06/2022  -  Hora: 10 : 20 : 49', NULL, NULL, NULL, NULL, '3953851', 1, 1, 11, NULL, 0, 3, 0, '2022-06-17 08:20:49', '2022-06-17 08:20:49');

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
(1, 1, 487, 150, NULL, NULL, 1, '2022-01-17 16:21:12', '2022-01-17 16:21:12'),
(2, 2, 200, 5, NULL, NULL, 1, '2022-01-17 19:06:45', '2022-01-17 19:06:45'),
(3, 3, 328, 38, NULL, NULL, 1, '2022-01-17 19:10:56', '2022-01-17 19:10:56'),
(4, 3, 341, 38, NULL, NULL, 1, '2022-01-17 19:11:10', '2022-01-17 19:11:10'),
(5, 3, 326, 40, NULL, NULL, 1, '2022-01-17 19:11:31', '2022-01-17 19:11:31'),
(8, 5, 479, 348, NULL, NULL, 0, '2022-01-17 19:15:10', '2022-01-25 15:50:02'),
(9, 6, 479, 348, NULL, NULL, 1, '2022-01-17 19:29:46', '2022-01-17 19:29:46'),
(10, 6, 345, 100, NULL, NULL, 1, '2022-01-17 19:30:02', '2022-01-17 19:30:02'),
(11, 7, 436, 2, NULL, NULL, 1, '2022-01-17 19:31:08', '2022-01-17 19:31:08'),
(12, 8, 466, 94800, NULL, NULL, 1, '2022-01-17 19:33:41', '2022-01-17 19:33:41'),
(13, 8, 436, 5, NULL, NULL, 1, '2022-01-17 19:34:03', '2022-01-17 19:34:03'),
(14, 9, 102, 900, NULL, NULL, 1, '2022-01-17 19:39:34', '2022-01-17 19:39:34'),
(15, 9, 462, 13750, NULL, NULL, 1, '2022-01-17 19:40:05', '2022-01-17 19:40:05'),
(16, 9, 446, 60, NULL, NULL, 1, '2022-01-17 19:40:52', '2022-01-17 19:40:52'),
(17, 10, 328, 40, NULL, NULL, 1, '2022-01-17 19:47:43', '2022-01-17 19:47:43'),
(18, 10, 341, 40, NULL, NULL, 1, '2022-01-17 19:47:54', '2022-01-17 19:47:54'),
(19, 10, 326, 42, NULL, NULL, 1, '2022-01-17 19:49:28', '2022-01-17 19:49:28'),
(22, 9, 468, 27680, NULL, NULL, 1, '2022-01-25 15:48:02', '2022-01-25 15:48:02'),
(23, 5, 339, 6, NULL, NULL, 1, '2022-01-25 16:16:44', '2022-01-25 16:16:44'),
(24, 5, 470, 150, NULL, NULL, 1, '2022-01-25 16:17:19', '2022-01-25 16:17:19'),
(25, 5, 369, 16, NULL, NULL, 1, '2022-01-25 16:17:50', '2022-01-25 16:17:50'),
(26, 5, 382, 2, NULL, NULL, 1, '2022-01-25 16:18:36', '2022-01-25 16:18:36'),
(27, 5, 373, 6, NULL, NULL, 1, '2022-01-25 16:19:09', '2022-01-25 16:19:09'),
(28, 5, 345, 6, NULL, NULL, 1, '2022-01-25 16:19:45', '2022-01-25 16:19:45'),
(29, 13, 497, 2684, NULL, NULL, 1, '2022-01-25 17:06:35', '2022-01-25 17:06:35'),
(30, 14, 497, 6820, NULL, NULL, 1, '2022-01-25 17:08:21', '2022-01-25 17:08:21'),
(31, 15, 497, 4356, NULL, NULL, 1, '2022-01-25 17:09:36', '2022-01-25 17:09:36'),
(32, 16, 497, 2640, NULL, NULL, 1, '2022-01-25 17:10:37', '2022-01-25 17:10:37'),
(33, 16, 3, 12, NULL, NULL, 1, '2022-01-25 17:10:50', '2022-01-25 17:10:50'),
(34, 17, 466, 21000, NULL, NULL, 1, '2022-01-25 17:12:29', '2022-01-25 17:12:29'),
(35, 17, 436, 5, NULL, NULL, 1, '2022-01-25 17:12:49', '2022-01-25 17:12:49'),
(36, 17, 390, 174, NULL, NULL, 1, '2022-01-25 17:13:08', '2022-01-25 17:13:08'),
(37, 18, 328, 72, NULL, NULL, 1, '2022-01-25 17:14:35', '2022-01-25 17:14:35'),
(38, 18, 341, 72, NULL, NULL, 1, '2022-01-25 17:14:53', '2022-01-25 17:14:53'),
(39, 18, 326, 74, NULL, NULL, 1, '2022-01-25 17:15:07', '2022-01-25 17:15:07'),
(40, 19, 328, 72, NULL, NULL, 1, '2022-01-25 17:16:58', '2022-01-25 17:16:58'),
(41, 19, 341, 72, NULL, NULL, 1, '2022-01-25 17:17:22', '2022-01-25 17:17:22'),
(42, 19, 326, 74, NULL, NULL, 1, '2022-01-25 17:17:38', '2022-01-25 17:17:38'),
(43, 20, 326, 48, NULL, NULL, 1, '2022-02-11 22:08:16', '2022-02-11 22:08:16'),
(44, 20, 341, 48, NULL, NULL, 0, '2022-02-11 22:08:41', '2022-02-11 22:10:16'),
(45, 20, 341, 48, NULL, NULL, 1, '2022-02-11 22:10:24', '2022-02-11 22:10:24'),
(46, 20, 328, 48, NULL, NULL, 1, '2022-02-11 22:11:15', '2022-02-11 22:11:15'),
(47, 21, 104, 1000, NULL, NULL, 1, '2022-02-11 23:01:03', '2022-02-11 23:01:03'),
(48, 21, 110, 1000, NULL, NULL, 1, '2022-02-11 23:01:29', '2022-02-11 23:01:29'),
(49, 23, 397, 6, NULL, NULL, 1, '2022-02-15 16:39:21', '2022-02-15 16:39:21'),
(50, 24, 470, 60, NULL, NULL, 1, '2022-02-15 16:43:45', '2022-02-15 16:43:45'),
(51, 25, 462, 1356, NULL, NULL, 1, '2022-02-15 16:46:38', '2022-02-15 16:46:38'),
(52, 25, 192, 120, NULL, NULL, 0, '2022-02-15 16:47:49', '2022-02-15 16:48:20'),
(53, 25, 193, 510, NULL, NULL, 1, '2022-02-15 16:48:07', '2022-02-15 16:48:07'),
(54, 25, 192, 1020, NULL, NULL, 1, '2022-02-15 16:48:37', '2022-02-15 16:48:37'),
(55, 25, 390, 700, NULL, NULL, 1, '2022-02-15 16:49:03', '2022-02-15 16:49:03'),
(56, 25, 212, 150, NULL, NULL, 1, '2022-02-15 16:49:35', '2022-02-15 16:49:35'),
(57, 25, 214, 150, NULL, NULL, 1, '2022-02-15 16:49:48', '2022-02-15 16:49:48'),
(58, 25, 213, 150, NULL, NULL, 1, '2022-02-15 16:50:03', '2022-02-15 16:50:03'),
(59, 25, 216, 150, NULL, NULL, 1, '2022-02-15 16:50:20', '2022-02-15 16:50:20'),
(60, 25, 215, 450, NULL, NULL, 1, '2022-02-15 16:50:45', '2022-02-15 16:50:45'),
(61, 25, 461, 2100, NULL, NULL, 1, '2022-02-15 16:52:23', '2022-02-15 16:52:23'),
(62, 25, 99, 200, NULL, NULL, 1, '2022-02-15 16:52:49', '2022-02-15 16:52:49'),
(63, 25, 219, 1000, NULL, NULL, 1, '2022-02-15 16:53:52', '2022-02-15 16:53:52'),
(64, 25, 49, 140, NULL, NULL, 1, '2022-02-15 16:54:27', '2022-02-15 16:54:27'),
(65, 25, 280, 20, NULL, NULL, 1, '2022-02-15 16:55:53', '2022-02-15 16:55:53'),
(66, 25, 435, 10, NULL, NULL, 1, '2022-02-15 16:56:11', '2022-02-15 16:56:11'),
(67, 25, 423, 500, NULL, NULL, 1, '2022-02-15 16:56:40', '2022-02-15 16:56:40'),
(68, 25, 358, 120, NULL, NULL, 1, '2022-02-15 16:57:12', '2022-02-15 16:57:12'),
(69, 25, 93, 100, NULL, NULL, 1, '2022-02-15 16:57:37', '2022-02-15 16:57:37'),
(70, 25, 361, 30, NULL, NULL, 1, '2022-02-15 17:59:05', '2022-02-15 17:59:05'),
(71, 25, 32, 175, NULL, NULL, 1, '2022-02-15 17:59:34', '2022-02-15 17:59:34'),
(72, 25, 446, 193, NULL, NULL, 1, '2022-02-15 17:59:58', '2022-02-15 17:59:58'),
(73, 26, 201, 26, NULL, NULL, 1, '2022-02-15 18:04:31', '2022-02-15 18:04:31'),
(74, 22, 397, 6, NULL, NULL, 1, '2022-02-15 18:09:17', '2022-02-15 18:09:17'),
(75, 22, 355, 1, NULL, NULL, 1, '2022-02-15 18:09:40', '2022-02-15 18:09:40'),
(76, 27, 462, 1500, NULL, NULL, 1, '2022-02-24 22:26:33', '2022-02-24 22:26:33'),
(77, 27, 397, 9, NULL, NULL, 1, '2022-02-24 22:26:54', '2022-02-24 22:26:54'),
(78, 27, 33, 100, NULL, NULL, 1, '2022-02-24 22:27:15', '2022-02-24 22:27:15'),
(79, 27, 98, 30, NULL, NULL, 1, '2022-02-24 22:27:39', '2022-02-24 22:27:39'),
(80, 27, 96, 150, NULL, NULL, 1, '2022-02-24 22:28:03', '2022-02-24 22:28:03'),
(81, 27, 446, 59, NULL, NULL, 1, '2022-02-24 22:28:24', '2022-02-24 22:28:24'),
(82, 27, 435, 7, NULL, NULL, 1, '2022-02-24 22:28:45', '2022-02-24 22:28:45'),
(83, 27, 360, 120, NULL, NULL, 1, '2022-02-24 22:29:34', '2022-02-24 22:29:34'),
(84, 27, 378, 96, NULL, NULL, 1, '2022-02-24 22:30:02', '2022-02-24 22:30:02'),
(85, 28, 479, 470, NULL, NULL, 1, '2022-02-24 22:32:41', '2022-02-24 22:32:41'),
(86, 28, 436, 6, NULL, NULL, 1, '2022-02-24 22:33:24', '2022-02-24 22:33:24'),
(87, 28, 205, 20, NULL, NULL, 1, '2022-02-24 22:33:59', '2022-02-24 22:33:59'),
(88, 28, 101, 50, NULL, NULL, 1, '2022-02-24 22:34:17', '2022-02-24 22:34:17'),
(89, 28, 99, 50, NULL, NULL, 1, '2022-02-24 22:44:51', '2022-02-24 22:44:51'),
(90, 28, 93, 50, NULL, NULL, 1, '2022-02-24 22:45:22', '2022-02-24 22:45:22'),
(91, 28, 378, 30, NULL, NULL, 1, '2022-02-24 22:45:42', '2022-02-24 22:45:42'),
(92, 28, 371, 1500, NULL, NULL, 1, '2022-02-24 22:46:14', '2022-02-24 22:46:14'),
(93, 28, 369, 1500, NULL, NULL, 1, '2022-02-24 22:46:43', '2022-02-24 22:46:43'),
(94, 28, 411, 300, NULL, NULL, 1, '2022-02-24 22:47:12', '2022-02-24 22:47:12'),
(95, 29, 227, 15, NULL, NULL, 1, '2022-02-24 22:49:54', '2022-02-24 22:49:54'),
(96, 30, 127, 4, NULL, NULL, 1, '2022-02-24 22:52:38', '2022-02-24 22:52:38'),
(97, 30, 164, 4, NULL, NULL, 1, '2022-02-24 22:53:05', '2022-02-24 22:53:05'),
(98, 30, 136, 4, NULL, NULL, 1, '2022-02-24 22:53:34', '2022-02-24 22:53:34'),
(99, 30, 171, 4, NULL, NULL, 1, '2022-02-24 22:54:00', '2022-02-24 22:54:00'),
(100, 31, 470, 90, NULL, NULL, 1, '2022-02-24 22:56:55', '2022-02-24 22:56:55'),
(101, 31, 371, 10, NULL, NULL, 1, '2022-02-24 22:57:15', '2022-02-24 22:57:15'),
(102, 31, 369, 10, NULL, NULL, 1, '2022-02-24 22:57:35', '2022-02-24 22:57:35'),
(103, 32, 98, 4, NULL, NULL, 1, '2022-02-24 23:16:26', '2022-02-24 23:16:26'),
(104, 32, 96, 4, NULL, NULL, 1, '2022-02-24 23:16:40', '2022-02-24 23:16:40'),
(105, 32, 472, 270, NULL, NULL, 1, '2022-02-24 23:16:57', '2022-02-24 23:16:57'),
(106, 32, 207, 4, NULL, NULL, 1, '2022-02-24 23:17:17', '2022-02-24 23:17:17'),
(107, 32, 209, 4, NULL, NULL, 1, '2022-02-24 23:17:30', '2022-02-24 23:17:30'),
(108, 32, 208, 4, NULL, NULL, 1, '2022-02-24 23:17:41', '2022-02-24 23:17:41'),
(109, 32, 211, 4, NULL, NULL, 1, '2022-02-24 23:17:53', '2022-02-24 23:17:53'),
(110, 32, 210, 12, NULL, NULL, 1, '2022-02-24 23:18:08', '2022-02-24 23:18:08'),
(111, 32, 462, 44, NULL, NULL, 1, '2022-02-24 23:18:47', '2022-02-24 23:18:47'),
(112, 32, 374, 4, NULL, NULL, 1, '2022-02-24 23:19:06', '2022-02-24 23:19:06'),
(113, 32, 382, 3, NULL, NULL, 1, '2022-02-24 23:19:29', '2022-02-24 23:19:29'),
(114, 32, 370, 10, NULL, NULL, 1, '2022-02-24 23:19:55', '2022-02-24 23:19:55'),
(115, 32, 3, 2, NULL, NULL, 1, '2022-02-24 23:20:21', '2022-02-24 23:20:21'),
(116, 32, 10, 2, NULL, NULL, 1, '2022-02-24 23:20:36', '2022-02-24 23:20:36'),
(117, 32, 496, 1, NULL, NULL, 1, '2022-02-24 23:20:55', '2022-02-24 23:20:55'),
(118, 32, 13, 1, NULL, NULL, 1, '2022-02-24 23:21:09', '2022-02-24 23:21:09'),
(119, 32, 432, 1, NULL, NULL, 1, '2022-02-24 23:21:28', '2022-02-24 23:21:28'),
(120, 32, 429, 1, NULL, NULL, 1, '2022-02-24 23:21:45', '2022-02-24 23:21:45'),
(121, 33, 369, 2000, NULL, NULL, 0, '2022-03-05 17:33:00', '2022-03-05 17:33:54'),
(122, 33, 502, 200, NULL, NULL, 1, '2022-03-05 17:35:52', '2022-03-05 17:35:52'),
(123, 33, 501, 200, NULL, NULL, 1, '2022-03-05 17:36:22', '2022-03-05 17:36:22'),
(124, 33, 45, 100, NULL, NULL, 1, '2022-03-05 17:36:52', '2022-03-05 17:36:52'),
(125, 34, 501, 200, NULL, NULL, 1, '2022-03-05 17:51:28', '2022-03-05 17:51:28'),
(126, 34, 502, 200, NULL, NULL, 1, '2022-03-05 17:52:00', '2022-03-05 17:52:00'),
(127, 34, 45, 100, NULL, NULL, 1, '2022-03-05 17:52:27', '2022-03-05 17:52:27'),
(128, 35, 501, 200, NULL, NULL, 1, '2022-03-07 18:13:21', '2022-03-07 18:13:21'),
(129, 35, 502, 200, NULL, NULL, 1, '2022-03-07 18:13:42', '2022-03-07 18:13:42'),
(130, 35, 474, 200, NULL, NULL, 1, '2022-03-07 20:35:30', '2022-03-07 20:35:30'),
(131, 36, 501, 400, NULL, NULL, 1, '2022-03-07 20:39:07', '2022-03-07 20:39:07'),
(132, 36, 502, 394, NULL, NULL, 1, '2022-03-07 20:39:26', '2022-03-07 20:39:26'),
(133, 36, 474, 800, NULL, NULL, 1, '2022-03-07 20:39:47', '2022-03-07 20:39:47'),
(134, 37, 205, 100, NULL, NULL, 1, '2022-03-07 20:41:56', '2022-03-07 20:41:56'),
(135, 38, 371, 2, NULL, NULL, 1, '2022-03-07 20:45:18', '2022-03-07 20:45:18'),
(136, 38, 369, 2, NULL, NULL, 1, '2022-03-07 20:45:36', '2022-03-07 20:45:36'),
(137, 38, 370, 2, NULL, NULL, 1, '2022-03-07 20:45:52', '2022-03-07 20:45:52'),
(138, 39, 281, 4, NULL, NULL, 1, '2022-03-07 20:49:17', '2022-03-07 20:49:17'),
(139, 39, 397, 12, NULL, NULL, 1, '2022-03-07 20:49:48', '2022-03-07 20:49:48'),
(140, 39, 298, 4, NULL, NULL, 1, '2022-03-07 20:50:13', '2022-03-07 20:50:13'),
(141, 39, 387, 1, NULL, NULL, 1, '2022-03-07 20:50:41', '2022-03-07 20:50:41'),
(142, 40, 310, 5, NULL, NULL, 1, '2022-03-07 20:56:21', '2022-03-07 20:56:21'),
(143, 40, 397, 15, NULL, NULL, 1, '2022-03-07 20:56:39', '2022-03-07 20:56:39'),
(144, 40, 355, 5, NULL, NULL, 1, '2022-03-07 20:57:00', '2022-03-07 20:57:00'),
(145, 40, 281, 5, NULL, NULL, 1, '2022-03-07 20:57:20', '2022-03-07 20:57:20'),
(146, 40, 390, 356, NULL, NULL, 1, '2022-03-07 20:57:47', '2022-03-07 20:57:47'),
(147, 40, 234, 15, NULL, NULL, 1, '2022-03-07 20:58:06', '2022-03-07 20:58:06'),
(148, 40, 238, 6, NULL, NULL, 1, '2022-03-07 20:58:23', '2022-03-07 20:58:23'),
(149, 40, 239, 6, NULL, NULL, 1, '2022-03-07 20:58:39', '2022-03-07 20:58:39'),
(150, 40, 383, 72, NULL, NULL, 1, '2022-03-07 20:58:58', '2022-03-07 20:58:58'),
(151, 40, 378, 72, NULL, NULL, 1, '2022-03-07 20:59:59', '2022-03-07 20:59:59'),
(152, 40, 99, 36, NULL, NULL, 1, '2022-03-07 21:01:09', '2022-03-07 21:01:09'),
(153, 40, 101, 36, NULL, NULL, 1, '2022-03-07 21:01:25', '2022-03-07 21:01:25'),
(154, 41, 298, 5, NULL, NULL, 1, '2022-03-07 21:03:49', '2022-03-07 21:03:49'),
(155, 41, 387, 3, NULL, NULL, 1, '2022-03-07 21:04:04', '2022-03-07 21:04:04'),
(156, 42, 3, 5, NULL, NULL, 1, '2022-03-07 21:07:09', '2022-03-07 21:07:09'),
(157, 42, 10, 5, NULL, NULL, 1, '2022-03-07 21:07:23', '2022-03-07 21:07:23'),
(158, 42, 414, 30, NULL, NULL, 1, '2022-03-07 21:07:37', '2022-03-07 21:07:37'),
(159, 43, 298, 3, NULL, NULL, 1, '2022-03-07 21:09:34', '2022-03-07 21:09:34'),
(160, 43, 387, 3, NULL, NULL, 1, '2022-03-07 21:09:53', '2022-03-07 21:09:53'),
(161, 44, 298, 3, NULL, NULL, 1, '2022-03-07 21:17:33', '2022-03-07 21:17:33'),
(162, 44, 387, 1, NULL, NULL, 1, '2022-03-07 21:18:51', '2022-03-07 21:18:51'),
(163, 45, 397, 3, NULL, NULL, 1, '2022-03-07 21:21:31', '2022-03-07 21:21:31'),
(164, 46, 464, 120, NULL, NULL, 1, '2022-03-08 17:12:44', '2022-03-08 17:12:44'),
(165, 46, 478, 25, NULL, NULL, 1, '2022-03-08 17:13:03', '2022-03-08 17:13:03'),
(166, 46, 367, 215, NULL, NULL, 1, '2022-03-08 17:13:25', '2022-03-08 17:13:25'),
(167, 46, 83, 40, NULL, NULL, 1, '2022-03-08 17:13:55', '2022-03-08 17:13:55'),
(168, 46, 500, 100, NULL, NULL, 1, '2022-03-08 17:17:17', '2022-03-08 17:17:17'),
(169, 46, 345, 100, NULL, NULL, 1, '2022-03-08 17:17:48', '2022-03-08 17:17:48'),
(170, 46, 476, 125, NULL, NULL, 1, '2022-03-08 17:18:09', '2022-03-08 17:18:09'),
(171, 46, 469, 146187, NULL, NULL, 1, '2022-03-08 17:18:33', '2022-03-08 17:18:33'),
(172, 47, 23, 3, NULL, NULL, 1, '2022-03-08 17:21:49', '2022-03-08 17:21:49'),
(173, 48, 127, 10, NULL, NULL, 1, '2022-03-28 15:47:49', '2022-03-28 15:47:49'),
(174, 49, 414, 1, NULL, NULL, 1, '2022-03-28 15:54:22', '2022-03-28 15:54:22'),
(175, 49, 506, 1, NULL, NULL, 1, '2022-03-28 15:54:39', '2022-03-28 15:54:39'),
(176, 50, 201, 4, NULL, NULL, 1, '2022-03-28 22:06:16', '2022-03-28 22:06:16'),
(177, 51, 119, 50, NULL, NULL, 1, '2022-03-28 22:09:06', '2022-03-28 22:09:06'),
(178, 51, 102, 400, NULL, NULL, 1, '2022-03-28 22:09:23', '2022-03-28 22:09:23'),
(179, 51, 32, 48, NULL, NULL, 1, '2022-03-30 16:01:52', '2022-03-30 16:01:52'),
(180, 52, 496, 6, NULL, NULL, 1, '2022-03-30 16:09:09', '2022-03-30 16:09:09'),
(181, 52, 3, 10, NULL, NULL, 1, '2022-03-30 16:09:25', '2022-03-30 16:09:25'),
(182, 52, 429, 4, NULL, NULL, 1, '2022-03-30 16:09:43', '2022-03-30 16:09:43'),
(183, 52, 428, 1, NULL, NULL, 1, '2022-03-30 16:09:59', '2022-03-30 16:09:59'),
(184, 52, 432, 2, NULL, NULL, 1, '2022-03-30 16:10:17', '2022-03-30 16:10:17'),
(185, 53, 411, 85, NULL, NULL, 1, '2022-03-30 16:18:10', '2022-03-30 16:18:10'),
(186, 53, 95, 300, NULL, NULL, 1, '2022-03-30 16:18:29', '2022-03-30 16:18:29'),
(187, 53, 102, 2000, NULL, NULL, 1, '2022-03-30 16:18:52', '2022-03-30 16:18:52'),
(188, 53, 370, 72, NULL, NULL, 1, '2022-03-30 16:19:14', '2022-03-30 16:19:14'),
(189, 53, 397, 42, NULL, NULL, 1, '2022-03-30 16:19:40', '2022-03-30 16:19:40'),
(190, 53, 446, 190, NULL, NULL, 1, '2022-03-30 16:19:54', '2022-03-30 16:19:54'),
(191, 53, 462, 250, NULL, NULL, 1, '2022-03-30 16:20:16', '2022-03-30 16:20:16'),
(192, 53, 193, 500, NULL, NULL, 1, '2022-03-30 16:20:41', '2022-03-30 16:20:41'),
(193, 53, 192, 1000, NULL, NULL, 1, '2022-03-30 16:20:56', '2022-03-30 16:20:56'),
(194, 53, 367, 420, NULL, NULL, 1, '2022-03-30 16:21:18', '2022-03-30 16:21:18'),
(195, 54, 475, 84, NULL, NULL, 1, '2022-03-30 16:23:42', '2022-03-30 16:23:42'),
(196, 55, 389, 9, NULL, NULL, 1, '2022-03-30 16:25:34', '2022-03-30 16:25:34'),
(197, 56, 496, 3, NULL, NULL, 1, '2022-03-30 16:28:29', '2022-03-30 16:28:29'),
(198, 56, 17, 6, NULL, NULL, 1, '2022-03-30 16:28:46', '2022-03-30 16:28:46'),
(199, 56, 429, 2, NULL, NULL, 1, '2022-03-30 16:29:00', '2022-03-30 16:29:00'),
(200, 57, 349, 2, NULL, NULL, 1, '2022-03-30 22:09:14', '2022-03-30 22:09:14'),
(201, 58, 485, 250, NULL, NULL, 1, '2022-03-31 17:07:49', '2022-03-31 17:07:49'),
(202, 59, 201, 18, NULL, NULL, 1, '2022-04-27 17:09:26', '2022-04-27 17:09:26'),
(203, 59, 200, 12, NULL, NULL, 1, '2022-04-27 17:10:03', '2022-04-27 17:10:03'),
(204, 60, 397, 5, NULL, NULL, 1, '2022-04-27 17:14:02', '2022-04-27 17:14:02'),
(205, 61, 240, 4, NULL, NULL, 1, '2022-04-27 17:16:15', '2022-04-27 17:16:15'),
(206, 62, 234, 20, NULL, NULL, 1, '2022-04-27 17:19:12', '2022-04-27 17:19:12'),
(207, 62, 240, 6, NULL, NULL, 1, '2022-04-27 17:19:41', '2022-04-27 17:19:41'),
(208, 62, 241, 20, NULL, NULL, 1, '2022-04-27 17:20:15', '2022-04-27 17:20:15'),
(209, 62, 242, 12, NULL, NULL, 1, '2022-04-27 17:20:42', '2022-04-27 17:20:42'),
(210, 62, 243, 8, NULL, NULL, 1, '2022-04-27 17:21:32', '2022-04-27 17:21:32'),
(211, 63, 355, 2, NULL, NULL, 1, '2022-04-27 17:23:55', '2022-04-27 17:23:55'),
(212, 64, 235, 45, NULL, NULL, 1, '2022-04-27 17:27:17', '2022-04-27 17:27:17'),
(213, 65, 241, 4, NULL, NULL, 1, '2022-04-27 17:29:39', '2022-04-27 17:29:39'),
(214, 65, 240, 4, NULL, NULL, 1, '2022-04-27 17:29:59', '2022-04-27 17:29:59'),
(215, 65, 239, 8, NULL, NULL, 1, '2022-04-27 17:30:18', '2022-04-27 17:30:18'),
(216, 65, 234, 12, NULL, NULL, 1, '2022-04-27 17:30:37', '2022-04-27 17:30:37'),
(217, 66, 215, 4, NULL, NULL, 1, '2022-04-28 14:02:02', '2022-04-28 14:02:02'),
(218, 67, 197, 4, NULL, NULL, 1, '2022-04-28 14:09:40', '2022-04-28 14:09:40'),
(219, 67, 111, 100, NULL, NULL, 1, '2022-04-28 14:10:06', '2022-04-28 14:10:06'),
(220, 67, 367, 100, NULL, NULL, 1, '2022-04-28 14:10:28', '2022-04-28 14:10:28'),
(221, 67, 397, 30, NULL, NULL, 1, '2022-04-28 14:10:45', '2022-04-28 14:10:45'),
(222, 67, 302, 5, NULL, NULL, 1, '2022-04-28 14:11:04', '2022-04-28 14:11:04'),
(223, 67, 464, 300, NULL, NULL, 1, '2022-04-28 14:11:24', '2022-04-28 14:11:24'),
(224, 67, 34, 84, NULL, NULL, 1, '2022-04-28 14:11:47', '2022-04-28 14:11:47'),
(225, 67, 314, 2, NULL, NULL, 1, '2022-04-28 14:12:09', '2022-04-28 14:12:09'),
(226, 67, 219, 700, NULL, NULL, 1, '2022-04-28 14:12:32', '2022-04-28 14:12:32'),
(227, 67, 478, 207, NULL, NULL, 1, '2022-04-28 14:12:58', '2022-04-28 14:12:58'),
(228, 68, 302, 4, NULL, NULL, 1, '2022-04-28 14:18:27', '2022-04-28 14:18:27'),
(229, 68, 387, 2, NULL, NULL, 1, '2022-04-28 14:28:55', '2022-04-28 14:28:55'),
(230, 69, 136, 1, NULL, NULL, 1, '2022-04-28 15:37:00', '2022-04-28 15:37:00'),
(231, 69, 135, 1, NULL, NULL, 1, '2022-04-28 15:37:33', '2022-04-28 15:37:33'),
(232, 70, 358, 1000, NULL, NULL, 1, '2022-04-28 15:44:29', '2022-04-28 15:44:29'),
(233, 70, 357, 2000, NULL, NULL, 1, '2022-04-28 15:44:47', '2022-04-28 15:44:47'),
(234, 70, 371, 115000, NULL, NULL, 1, '2022-04-28 15:45:18', '2022-04-28 15:45:18'),
(235, 70, 369, 49500, NULL, NULL, 1, '2022-04-28 15:45:43', '2022-04-28 15:45:43'),
(236, 70, 370, 11000, NULL, NULL, 1, '2022-04-28 15:46:10', '2022-04-28 15:46:10'),
(237, 70, 372, 70000, NULL, NULL, 1, '2022-04-28 15:46:29', '2022-04-28 15:46:29'),
(238, 70, 373, 7100, NULL, NULL, 1, '2022-04-28 15:46:47', '2022-04-28 15:46:47'),
(239, 71, 32, 25, NULL, NULL, 1, '2022-04-28 15:48:37', '2022-04-28 15:48:37'),
(240, 71, 47, 50, NULL, NULL, 1, '2022-04-28 15:49:03', '2022-04-28 15:49:03'),
(241, 71, 280, 1, NULL, NULL, 1, '2022-04-28 15:49:20', '2022-04-28 15:49:20'),
(242, 71, 358, 30, NULL, NULL, 1, '2022-04-28 15:49:45', '2022-04-28 15:49:45'),
(243, 71, 310, 1, NULL, NULL, 1, '2022-04-28 15:49:58', '2022-04-28 15:49:58'),
(244, 72, 330, 4, NULL, NULL, 1, '2022-04-28 15:56:48', '2022-04-28 15:56:48'),
(245, 72, 348, 4, NULL, NULL, 1, '2022-04-28 15:57:53', '2022-04-28 15:57:53'),
(246, 73, 457, 1, NULL, NULL, 1, '2022-04-28 15:59:55', '2022-04-28 15:59:55'),
(247, 74, 456, 959, NULL, NULL, 1, '2022-04-28 16:03:00', '2022-04-28 16:03:00'),
(248, 75, 456, 800, NULL, NULL, 1, '2022-04-28 16:05:53', '2022-04-28 16:05:53'),
(249, 76, 456, 600, NULL, NULL, 1, '2022-04-28 16:07:41', '2022-04-28 16:07:41'),
(250, 77, 456, 1220, NULL, NULL, 1, '2022-04-28 16:09:47', '2022-04-28 16:09:47'),
(251, 78, 468, 40000, NULL, NULL, 1, '2022-04-28 16:23:39', '2022-04-28 16:23:39'),
(252, 79, 307, 1, NULL, NULL, 1, '2022-04-28 16:28:08', '2022-04-28 16:28:08'),
(253, 80, 148, 1, NULL, NULL, 1, '2022-04-28 16:33:22', '2022-04-28 16:33:22'),
(254, 81, 468, 18000, NULL, NULL, 1, '2022-05-03 14:49:01', '2022-05-03 14:49:01'),
(255, 82, 205, 2, NULL, NULL, 1, '2022-05-03 14:52:24', '2022-05-03 14:52:24'),
(256, 82, 32, 80, NULL, NULL, 1, '2022-05-03 14:52:41', '2022-05-03 14:52:41'),
(257, 82, 47, 12, NULL, NULL, 1, '2022-05-03 14:54:05', '2022-05-03 14:54:05'),
(258, 83, 383, 300, NULL, NULL, 1, '2022-05-03 14:55:52', '2022-05-03 14:55:52'),
(259, 83, 378, 300, NULL, NULL, 1, '2022-05-03 14:56:13', '2022-05-03 14:56:13'),
(260, 83, 95, 100, NULL, NULL, 1, '2022-05-03 14:56:37', '2022-05-03 14:56:37'),
(261, 83, 101, 100, NULL, NULL, 1, '2022-05-03 14:56:57', '2022-05-03 14:56:57'),
(262, 83, 212, 50, NULL, NULL, 1, '2022-05-03 14:57:25', '2022-05-03 14:57:25'),
(263, 83, 214, 50, NULL, NULL, 1, '2022-05-03 14:57:43', '2022-05-03 14:57:43'),
(264, 83, 213, 50, NULL, NULL, 1, '2022-05-03 14:57:56', '2022-05-03 14:57:56'),
(265, 83, 215, 150, NULL, NULL, 1, '2022-05-03 14:58:08', '2022-05-03 14:58:08'),
(266, 83, 216, 50, NULL, NULL, 1, '2022-05-03 14:58:37', '2022-05-03 14:58:37'),
(267, 83, 461, 700, NULL, NULL, 1, '2022-05-03 14:59:30', '2022-05-03 14:59:30'),
(268, 84, 511, 1, NULL, NULL, 1, '2022-05-11 20:26:38', '2022-05-11 20:26:38'),
(269, 85, 11, 2, NULL, NULL, 1, '2022-05-11 20:31:09', '2022-05-11 20:31:09'),
(270, 85, 12, 2, NULL, NULL, 1, '2022-05-11 20:31:19', '2022-05-11 20:31:19'),
(271, 86, 11, 2, NULL, NULL, 1, '2022-05-11 20:33:23', '2022-05-11 20:33:23'),
(272, 86, 12, 2, NULL, NULL, 1, '2022-05-11 20:33:39', '2022-05-11 20:33:39'),
(273, 87, 11, 2, NULL, NULL, 1, '2022-05-11 20:36:13', '2022-05-11 20:36:13'),
(274, 87, 12, 2, NULL, NULL, 1, '2022-05-11 20:36:26', '2022-05-11 20:36:26'),
(275, 88, 155, 5, NULL, NULL, 1, '2022-05-11 20:39:15', '2022-05-11 20:39:15'),
(276, 88, 121, 5, NULL, NULL, 1, '2022-05-11 20:39:46', '2022-05-11 20:39:46'),
(277, 88, 415, 50, NULL, NULL, 1, '2022-05-11 20:40:29', '2022-05-11 20:40:29'),
(278, 89, 487, 70, NULL, NULL, 1, '2022-05-24 21:42:48', '2022-05-24 21:42:48'),
(279, 90, 371, 2, NULL, NULL, 1, '2022-05-24 21:46:03', '2022-05-24 21:46:03'),
(280, 90, 487, 2.5, NULL, NULL, 1, '2022-05-24 21:46:50', '2022-05-24 21:46:50'),
(281, 91, 383, 1, NULL, NULL, 1, '2022-05-24 21:51:18', '2022-05-24 21:51:18'),
(282, 92, 3, 8, NULL, NULL, 1, '2022-05-24 21:55:31', '2022-05-24 21:55:31'),
(283, 93, 192, 120, NULL, NULL, 1, '2022-05-24 22:00:40', '2022-05-24 22:00:40'),
(284, 93, 102, 120, NULL, NULL, 1, '2022-05-24 22:01:03', '2022-05-24 22:01:03'),
(285, 93, 193, 60, NULL, NULL, 1, '2022-05-24 22:01:28', '2022-05-24 22:01:28'),
(286, 93, 212, 50, NULL, NULL, 1, '2022-05-24 22:02:17', '2022-05-24 22:02:17'),
(287, 93, 213, 50, NULL, NULL, 1, '2022-05-24 22:03:24', '2022-05-24 22:03:24'),
(288, 93, 214, 50, NULL, NULL, 1, '2022-05-24 22:03:53', '2022-05-24 22:03:53'),
(289, 93, 215, 150, NULL, NULL, 1, '2022-05-24 22:04:23', '2022-05-24 22:04:23'),
(290, 93, 216, 50, NULL, NULL, 1, '2022-05-24 22:04:50', '2022-05-24 22:04:50'),
(291, 93, 461, 700, NULL, NULL, 1, '2022-05-24 22:05:53', '2022-05-24 22:05:53'),
(292, 93, 205, 20, NULL, NULL, 1, '2022-05-24 22:06:45', '2022-05-24 22:06:45'),
(293, 93, 518, 1, NULL, NULL, 1, '2022-05-24 22:12:13', '2022-05-24 22:12:13'),
(294, 93, 298, 1, NULL, NULL, 1, '2022-05-24 22:12:44', '2022-05-24 22:12:44'),
(295, 93, 496, 2, NULL, NULL, 1, '2022-05-24 22:16:18', '2022-05-24 22:16:18'),
(296, 94, 201, 20, NULL, NULL, 1, '2022-05-24 22:29:09', '2022-05-24 22:29:09'),
(297, 94, 196, 15, NULL, NULL, 1, '2022-05-24 22:31:01', '2022-05-24 22:31:01'),
(298, 95, 415, 3, NULL, NULL, 1, '2022-05-25 14:42:33', '2022-05-25 14:42:33'),
(299, 96, 111, 10, NULL, NULL, 1, '2022-05-25 15:00:40', '2022-05-25 15:00:40'),
(300, 96, 367, 10, NULL, NULL, 1, '2022-05-25 15:01:26', '2022-05-25 15:01:26'),
(301, 96, 464, 10, NULL, NULL, 1, '2022-05-25 15:02:26', '2022-05-25 15:02:26'),
(302, 96, 83, 5, NULL, NULL, 1, '2022-05-25 15:02:46', '2022-05-25 15:02:46'),
(303, 97, 35, 15, NULL, NULL, 1, '2022-05-25 15:25:38', '2022-05-25 15:25:38'),
(304, 97, 435, 2, NULL, NULL, 1, '2022-05-25 15:26:51', '2022-05-25 15:26:51'),
(305, 97, 423, 40, NULL, NULL, 1, '2022-05-25 15:28:00', '2022-05-25 15:28:00'),
(306, 97, 420, 2, NULL, NULL, 1, '2022-05-25 15:30:06', '2022-05-25 15:30:06'),
(307, 97, 421, 2, NULL, NULL, 1, '2022-05-25 15:30:47', '2022-05-25 15:30:47'),
(308, 97, 505, 2, NULL, NULL, 1, '2022-05-25 15:31:44', '2022-05-25 15:31:44'),
(309, 97, 415, 8, NULL, NULL, 1, '2022-05-25 15:32:21', '2022-05-25 15:32:21'),
(310, 97, 235, 12, NULL, NULL, 1, '2022-05-25 15:32:48', '2022-05-25 15:32:48'),
(311, 97, 355, 4, NULL, NULL, 1, '2022-05-25 15:33:35', '2022-05-25 15:33:35'),
(312, 97, 252, 4, NULL, NULL, 1, '2022-05-25 15:34:03', '2022-05-25 15:34:03'),
(313, 97, 259, 4, NULL, NULL, 1, '2022-05-25 15:34:32', '2022-05-25 15:34:32'),
(314, 98, 430, 2, NULL, NULL, 1, '2022-05-25 20:19:06', '2022-05-25 20:19:06'),
(315, 4, 1, 10, NULL, NULL, 1, '2022-06-16 08:15:43', '2022-06-16 08:15:43'),
(316, 4, 22, 20, NULL, NULL, 1, '2022-06-16 08:15:50', '2022-06-16 08:15:50'),
(317, 5, 1, 10, NULL, NULL, 1, '2022-06-17 08:21:18', '2022-06-17 08:21:18');

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
(1, 11, 'Osvaldo Gamer', '2022-06-16', '5555', 10, 0),
(2, 11, 'Osvaldo Gamer', '2022-06-16', '5555', 10, 0);

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
(1, 1, 507, 30, 20, 0),
(2, 1, 512, 25, 5, 0),
(3, 1, 514, 10, 1, 0),
(4, 1, 1, 800, 20, 0),
(5, 1, 22, 350, 20, 0),
(6, 1, 23, 600, 0, 0),
(7, 2, 1, 800, 0, 0),
(8, 2, 22, 350, 0, 0),
(9, 2, 23, 600, 0, 0);

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
(1, 'Osvaldo ', 'osvaldo', 'osvaldobanze008@gmail.com', NULL, 847668513, 'PROENERGIA', 1, '$2y$10$nmcP/naAjITOR6B.ckar7e/LR7Ya5dX1onnoe3puB0IK9Ap/Dm.LO', 1, 'QeNJWWxO37ZuAdieilBQOdx4OjIM6Po0YkX7NBUE04KYCvctIBTeRf868Fl6', '2021-12-24 13:45:03', '2022-01-12 20:22:39'),
(2, 'Admin', '', 'adminprocurement@gmail.com', NULL, 840000000, 'Procurement', 1, '$2y$10$Ymw1hhvfg/EEaEspHFedmOiOoliq/9Jc4lSp5/y6naTOQX2YUUup2', 1, NULL, '2021-12-13 11:33:52', '2021-12-13 11:36:35'),
(3, 'Rayhan Khalid', 'rkhalid', 'procurement@testop.co.mz', NULL, 847454545, 'procurement', 1, '$2y$10$KVU0lEoA7inKUALDy0t/fObFFjQP6pyDZByaaf7.x6UowWRPPMFWa', 1, 'BFjEorT8jEW28Hfn6Ts1Y5VIfblGP6ueVXvmehB04M2Rko4t6a4hyPd2ujM3', '2021-12-13 16:13:52', '2021-12-13 16:13:52'),
(4, 'Albertina Salvador', 'albertina', 'procurement@testop.co.mz', NULL, 840364156, 'Procurement', 2, '$2y$10$U1vaXi7Cvyg7mtd5M0FFQ.xRx8MbPLYWuPlIVvKXbN.wONDH9fEli', 1, 'pIXPzzB3K9MLVNUbWouCkRcthcTgpcG0VXiAXhNrtDGq4ZuxLaK38tfm0z3h', '2021-12-13 22:58:57', '2022-05-17 15:15:22'),
(7, 'Muhammad Younus', 'myounus', 'younus@autobas.co.mz', NULL, 843030477, 'AUTOBAS ADMIN', 1, '$2y$10$1CVpRHT9fjHxdHd42fk5K.JugTLx9TynN/sMJ733vtwgufqH9wlAC', 1, '8D0wq4y3p8HrxtXFXjHzhJHbswBNUjj3b2XfndbHo8T38P34EK07NSvbbJPz', '2021-12-16 13:00:10', '2021-12-16 13:00:10'),
(8, 'Munir Sacoor', 'msacoor', 'testop@testop.co.mz', NULL, 824301030, 'TES-TOP CEO', 2, '$2y$10$/9vcyBKZllZIddToPppXauEvOwQoNd.8scyWfwZ2Zv8RDlpusAs2K', 1, NULL, '2021-12-17 12:44:10', '2021-12-17 12:44:10'),
(9, 'Sadia Daud', 'sdaud', 'rh.proenergia@testop.co.mz', NULL, 877607000, 'PROENERGIA', 2, '$2y$10$I/2IQxZqq0ecLRliTwjHxu3R7SBd7aWZx.xd8Q2VspwqdsC2fBuS.', 1, 'wZ1V63urH4YDVUZcfoMkZsJrij8nSDS9nPBObvRHTxfBQxurycJFHbXEhnJs', '2021-12-24 13:45:03', '2022-01-12 20:22:39'),
(11, 'Celso Banze', 'celso', 'testop@testop.co.mz', NULL, 842792540, 'Gerente', 0, '$2y$10$nmcP/naAjITOR6B.ckar7e/LR7Ya5dX1onnoe3puB0IK9Ap/Dm.LO', 1, 'Ttdw9boZyR2ZzSbqu77ExFOtCf4cxMfHhxbapzeBU3qYWltO3gVOHeaoeFvI', '2022-04-22 21:53:02', '2022-04-22 21:53:02');

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
(1, 1, 11, 0, '2022-05-10 10:12:19', '2022-05-10 10:12:19'),
(2, 1, 14, 0, '2022-05-10 10:12:19', '2022-05-10 10:12:19'),
(3, 11, 11, 0, '2022-05-10 10:12:19', '2022-05-10 10:12:19'),
(4, 11, 14, 0, '2022-05-10 10:12:19', '2022-05-10 10:12:19');

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
(3, 1, 14, 6, 0, '2022-05-24 08:28:57', '2022-05-24 08:28:57'),
(4, 11, 14, 6, 0, '2022-05-24 08:28:57', '2022-05-24 08:28:57');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `guia_de_saidas`
--
ALTER TABLE `guia_de_saidas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `guia_de_transportes`
--
ALTER TABLE `guia_de_transportes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `guia_entrada__produtos`
--
ALTER TABLE `guia_entrada__produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- AUTO_INCREMENT de tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `guia_saida_produtos`
--
ALTER TABLE `guia_saida_produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de tabela `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `stock_projectado`
--
ALTER TABLE `stock_projectado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `stock_projectado_produtos`
--
ALTER TABLE `stock_projectado_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
