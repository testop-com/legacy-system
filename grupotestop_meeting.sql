-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2025 at 02:24 AM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grupotestop_meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `campo` varchar(20) DEFAULT NULL,
  `valor` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cust_empresa`
--

CREATE TABLE `cust_empresa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `nuit` varchar(50) DEFAULT NULL,
  `caixa_postal` varchar(10) DEFAULT NULL,
  `contacto_1` varchar(20) DEFAULT NULL,
  `contacto_2` varchar(20) DEFAULT NULL,
  `morada` varchar(150) DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `logo` varchar(200) DEFAULT 'NULL',
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cust_empresa`
--

INSERT INTO `cust_empresa` (`id`, `nome`, `endereco`, `nuit`, `caixa_postal`, `contacto_1`, `contacto_2`, `morada`, `empresa_id`, `logo`, `removido`) VALUES
(1, 'TES-TOP: 1st Floor', 'Malhangalene, Cidade de Maputo', '400670021', NULL, '', '', 'Maputo Cidade', 1, 'tesLogo.jpeg', 0),
(2, 'TES-TOP: 2st Floor', 'Malhangalene, Cidade de Maputo', '400670021', NULL, '', '', 'Maputo Cidade', 1, 'tesLogo.jpeg', 0),
(3, 'TES-TOP:  Camiões', 'AV. KARL MARX, Nº1877 R/C-MAPUTO Moçambique', '400251553', NULL, NULL, NULL, NULL, NULL, 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL,
  `nome` char(120) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`id`, `nome`, `cidade`, `observacoes`, `logo`, `removido`, `prefix_id`, `email`, `nuit`, `contacto`, `morada`, `conta_bancaria`, `excel_name_folha`) VALUES
(1, 'TES-TOP LDA', 1, NULL, NULL, 0, 1, 'rh@testop.co.mz', '400670021', '21328056 ', 'AV. KARL MARX, Nº1877 R/C-MAPUTO', NULL, 'TESTOP_FOLHA_SALARIO.xlsx'),
(2, 'EA- ELECTRO ÁFRICA LDA', 1, NULL, NULL, 0, 2, 'rh@electroafrica.co.mz', '400643741', '21421532  ', 'Rua Salipa norte  Nº37 , 1° Andar', NULL, 'ELECTROAFRICA_FOLHA_SALARIO.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `presenca_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora_inicio` varchar(10) NOT NULL,
  `hora_fim` varchar(10) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `local` varchar(60) DEFAULT NULL,
  `menbro_visita` varchar(60) DEFAULT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `data`, `hora_inicio`, `hora_fim`, `titulo`, `local`, `menbro_visita`, `descricao`, `empresa_id`, `user_id`, `removido`, `created_at`, `updated_at`) VALUES
(1, '2024-03-01', '11:00', '12:30', 'Visita M.BIM', 'TES-TOP: Primeiro Andar', 'BIM', 'Visita M. BIM', 1, 62, 0, '2024-03-01 09:13:16', '2024-03-01 09:13:16'),
(2, '2024-03-12', '12:15', '13:15', 'Apresentação de Slides', 'TES-TOP: 1st Floor', 'Diretoria', 'Apresentação de Slides', 1, 62, 0, '2024-03-01 09:15:31', '2024-03-01 09:15:31'),
(3, '2024-03-04', '11:00', '12:30', 'Banco Mundial', 'TES-TOP: Primeiro Andar', 'BIM', 'Banco Mundial', 1, 62, 0, '2024-03-01 09:13:16', '2024-03-01 09:13:16'),
(4, '2024-10-11', '09:30', '10:30', 'Dept. Financeiro', 'TES-TOP: Primeiro Andar', 'BIM', 'Dept. Financeiro', 1, 62, 0, '2024-10-11 08:10:16', '2024-10-11 08:10:16'),
(6, '2024-10-14', '10:00', '11:00', 'OCUPADO/Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-14 06:33:56', '2024-10-14 06:33:56'),
(7, '2024-10-15', '11:00', '00:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-15 07:36:03', '2024-10-15 07:36:03'),
(8, '2024-10-16', '09:30', '10:00', 'Vajra', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-16 06:32:12', '2024-10-16 06:32:12'),
(9, '2024-10-16', '11:00', '00:00', 'Zoom Meeting-Projectos', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-16 07:52:44', '2024-10-16 07:52:44'),
(10, '2024-10-18', '09:45', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-18 06:22:47', '2024-10-18 06:22:47'),
(11, '2024-10-19', '09:00', '10:00', 'Vajra', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-18 07:52:18', '2024-10-18 07:52:18'),
(12, '2024-10-23', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-23 06:57:06', '2024-10-23 06:57:06'),
(13, '2024-10-23', '14:30', '15:00', 'Entrevista', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2024-10-23 06:57:45', '2024-10-23 06:57:45'),
(14, '2024-10-23', '11:00', '12:00', 'EDM  - PROJECTOS', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2024-10-23 08:38:02', '2024-10-23 08:38:02'),
(15, '2024-10-23', '14:00', '15:00', 'Entrevistas em Curso', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2024-10-23 09:16:29', '2024-10-23 09:16:29'),
(16, '2024-10-28', '09:30', '10:30', 'DESPACHANTE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-28 07:28:50', '2024-10-28 07:28:50'),
(17, '2024-10-29', '08:30', '10:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-10-29 06:37:39', '2024-10-29 06:37:39'),
(18, '2024-11-11', '09:00', '10:00', 'Golden Energy', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-11 06:13:05', '2024-11-11 06:13:05'),
(19, '2024-11-11', '15:00', '16:00', 'OCUPADO - Sr. Munir', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2024-11-11 12:18:10', '2024-11-11 12:18:10'),
(20, '2024-11-12', '15:30', '16:30', 'FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-12 07:04:48', '2024-11-12 07:04:48'),
(21, '2024-11-15', '09:00', '13:00', 'Teste de Fábrica', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-15 06:24:47', '2024-11-15 06:24:47'),
(22, '2024-11-19', '11:00', '12:00', 'Acess Bank', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-16 06:31:32', '2024-11-16 06:31:32'),
(23, '2024-11-20', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-16 06:32:01', '2024-11-16 06:32:01'),
(24, '2024-11-19', '15:00', '16:00', 'RH Resolve', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-18 14:58:23', '2024-11-18 14:58:23'),
(25, '2024-11-21', '08:30', '09:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-21 06:09:59', '2024-11-21 06:09:59'),
(26, '2024-11-21', '11:30', '00:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-21 06:10:15', '2024-11-21 06:10:15'),
(27, '2024-11-21', '15:30', '16:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-21 12:52:09', '2024-11-21 12:52:09'),
(28, '2024-11-29', '09:00', '11:50', 'Baixadas', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2024-11-29 07:09:45', '2024-11-29 07:09:45'),
(29, '2024-11-30', '09:30', '10:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-30 07:20:09', '2024-11-30 07:20:09'),
(30, '2024-12-02', '11:00', '11:50', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-11-30 07:20:56', '2024-11-30 07:20:56'),
(31, '2024-12-02', '13:45', '14:45', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-02 11:52:42', '2024-12-02 11:52:42'),
(32, '2024-12-03', '10:00', '11:00', 'Nexia', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-03 07:51:27', '2024-12-03 07:51:27'),
(33, '2024-12-04', '11:00', '11:50', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-03 14:09:44', '2024-12-03 14:09:44'),
(34, '2024-12-04', '08:15', '09:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-04 06:12:30', '2024-12-04 06:12:30'),
(35, '2024-12-11', '09:30', '10:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-11 07:32:52', '2024-12-11 07:32:52'),
(36, '2024-12-11', '11:30', '00:30', 'OCUPADO-Financeiro', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-11 09:24:50', '2024-12-11 09:24:50'),
(37, '2024-12-16', '11:30', '00:30', 'ACESS BANK', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-16 07:02:14', '2024-12-16 07:02:14'),
(38, '2024-12-21', '10:00', '11:00', 'Vajra', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2024-12-21 07:57:25', '2024-12-21 07:57:25'),
(39, '2025-01-03', '11:00', '12:00', 'PROCUREMENT - EDM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-01-02 13:20:15', '2025-01-02 13:20:15'),
(40, '2025-01-06', '11:00', '12:00', 'Procurement - EDM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-01-06 08:20:43', '2025-01-06 08:20:43'),
(41, '2025-01-17', '11:00', '00:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-01-17 08:28:26', '2025-01-17 08:28:26'),
(42, '2025-01-18', '09:30', '08:28', 'Espanta Passaros', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-01-17 08:45:46', '2025-01-17 08:45:46'),
(43, '2025-01-17', '16:30', '17:30', 'Sr. Munir  - Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-01-17 12:46:19', '2025-01-17 12:46:19'),
(44, '2025-01-28', '10:00', '11:00', 'REUNIAO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-01-28 07:59:24', '2025-01-28 07:59:24'),
(45, '2025-01-30', '14:30', '15:30', 'REUNIAO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-01-30 08:24:47', '2025-01-30 08:24:47'),
(46, '2025-02-04', '10:00', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-04 08:27:32', '2025-02-04 08:27:32'),
(47, '2025-02-04', '15:00', '16:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-04 12:09:17', '2025-02-04 12:09:17'),
(48, '2025-02-05', '11:00', '11:50', 'BIM -ONLINE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-02-04 13:07:20', '2025-02-04 13:07:20'),
(49, '2025-02-05', '10:00', '10:55', 'PROCUREMENT', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-05 08:07:38', '2025-02-05 08:07:38'),
(50, '2025-02-05', '11:00', '12:00', 'BIM -ONLINE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-05 08:21:18', '2025-02-05 08:21:18'),
(51, '2025-02-06', '15:30', '16:30', 'PROENERGIA - EDM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-06 12:35:58', '2025-02-06 12:35:58'),
(52, '2025-02-07', '10:00', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-07 07:57:15', '2025-02-07 07:57:15'),
(53, '2025-02-10', '10:00', '11:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-08 09:01:41', '2025-02-08 09:01:41'),
(54, '2025-02-12', '10:00', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-12 07:25:17', '2025-02-12 07:25:17'),
(55, '2025-02-13', '15:30', '17:00', 'Procurement - Projectos', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-13 08:49:31', '2025-02-13 08:49:31'),
(56, '2025-02-14', '09:00', '10:00', 'Projectos - Sr.Younus', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-13 14:51:29', '2025-02-13 14:51:29'),
(57, '2025-02-17', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-17 06:10:10', '2025-02-17 06:10:10'),
(58, '2025-02-18', '10:00', '10:30', 'Ocupado', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-18 06:35:52', '2025-02-18 06:35:52'),
(59, '2025-02-19', '10:30', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-19 08:16:42', '2025-02-19 08:16:42'),
(60, '2025-02-20', '15:00', '17:00', 'ETICADATA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-19 12:16:34', '2025-02-19 12:16:34'),
(61, '2025-02-20', '08:30', '09:30', 'DESPACHANTE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 1, '2025-02-19 14:10:31', '2025-02-19 14:10:31'),
(62, '2025-02-20', '08:40', '09:30', 'DESPACHANTE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-20 06:50:07', '2025-02-20 06:50:07'),
(63, '2025-02-20', '10:00', '11:00', 'Ocupado', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-20 07:00:09', '2025-02-20 07:00:09'),
(64, '2025-02-20', '11:50', '13:10', 'MRCL - CFM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-20 07:18:55', '2025-02-20 07:18:55'),
(65, '2025-02-20', '15:00', '16:00', 'Contabilidade & Auditores', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-20 12:25:56', '2025-02-20 12:25:56'),
(66, '2025-02-21', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-21 06:07:12', '2025-02-21 06:07:12'),
(67, '2025-02-24', '09:35', '10:30', 'Software', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-02-24 07:42:20', '2025-02-24 07:42:20'),
(68, '2025-03-01', '11:00', '12:00', 'Direção & Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 1, '2025-02-26 07:49:46', '2025-02-26 07:49:46'),
(69, '2025-02-27', '09:30', '10:30', 'DESPACHANTE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-26 14:20:07', '2025-02-26 14:20:07'),
(70, '2025-02-28', '15:00', '16:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-02-28 12:48:38', '2025-02-28 12:48:38'),
(71, '2025-03-04', '10:00', '11:30', 'SCHNEIDER', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-03-03 12:25:17', '2025-03-03 12:25:17'),
(72, '2025-03-05', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-05 06:07:37', '2025-03-05 06:07:37'),
(73, '2025-03-10', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-07 09:20:51', '2025-03-07 09:20:51'),
(74, '2025-03-08', '09:30', '10:00', 'Vajra', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-08 06:18:19', '2025-03-08 06:18:19'),
(75, '2025-03-11', '10:00', '11:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-10 13:36:16', '2025-03-10 13:36:16'),
(76, '2025-03-13', '14:30', '15:30', 'FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-13 09:20:11', '2025-03-13 09:20:11'),
(77, '2025-03-17', '10:00', '10:30', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-17 07:36:44', '2025-03-17 07:36:44'),
(78, '2025-03-17', '11:00', '00:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-17 07:36:54', '2025-03-17 07:36:54'),
(79, '2025-03-17', '14:00', '15:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-17 07:37:05', '2025-03-17 07:37:05'),
(80, '2025-03-20', '14:30', '15:30', 'PRIMAVERA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-20 10:00:55', '2025-03-20 10:00:55'),
(81, '2025-03-21', '10:15', '11:00', 'Testop - Vajra', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-03-21 07:23:28', '2025-03-21 07:23:28'),
(82, '2025-03-21', '15:00', '15:30', 'Tes-Top & Banco FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-03-21 07:24:21', '2025-03-21 07:24:21'),
(83, '2025-03-24', '10:30', '11:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-03-21 09:23:41', '2025-03-21 09:23:41'),
(84, '2025-03-24', '15:00', '16:00', 'Ocupado', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-03-24 10:15:50', '2025-03-24 10:15:50'),
(85, '2025-03-26', '09:30', '10:30', 'ETICADATA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-03-24 15:06:11', '2025-03-24 15:06:11'),
(86, '2025-04-01', '09:30', '10:30', 'ETICADATA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-03-25 08:58:31', '2025-03-25 08:58:31'),
(87, '2025-04-03', '09:30', '10:30', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-04-02 12:47:55', '2025-04-02 12:47:55'),
(88, '2025-04-15', '09:30', '10:30', 'Testop & Holley', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-04-14 14:27:56', '2025-04-14 14:27:56'),
(89, '2025-04-21', '09:00', '10:00', 'Tes-Top Online Meeting', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-04-21 06:48:01', '2025-04-21 06:48:01'),
(90, '2025-04-22', '16:00', '17:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-04-22 13:43:06', '2025-04-22 13:43:06'),
(91, '2025-04-24', '16:30', '17:15', 'BIM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-04-23 14:31:42', '2025-04-23 14:31:42'),
(92, '2025-04-24', '10:00', '11:00', 'PROENERGIA - SITES', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-04-24 07:13:03', '2025-04-24 07:13:03'),
(93, '2025-04-25', '15:00', '16:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-04-24 13:02:00', '2025-04-24 13:02:00'),
(94, '2025-04-29', '09:00', '10:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-04-29 06:38:35', '2025-04-29 06:38:35'),
(95, '2025-05-06', '11:45', '12:20', 'FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-05-06 08:45:33', '2025-05-06 08:45:33'),
(96, '2025-05-06', '11:45', '12:30', 'FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-05-06 09:42:28', '2025-05-06 09:42:28'),
(97, '2025-05-08', '09:30', '10:30', 'HOLLEY', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-07 15:40:30', '2025-05-07 15:40:30'),
(98, '2025-05-12', '15:00', '16:00', 'Administração & Transp.', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-05-12 08:44:02', '2025-05-12 08:44:02'),
(99, '2025-05-15', '10:00', '12:00', 'Meeting - Treinamento', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-05-15 08:10:20', '2025-05-15 08:10:20'),
(100, '2025-05-19', '09:30', '10:30', 'Tendering TEAM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-16 13:42:14', '2025-05-16 13:42:14'),
(101, '2025-05-19', '10:30', '11:30', 'MOZA BANCO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-19 08:46:09', '2025-05-19 08:46:09'),
(102, '2025-05-20', '12:40', '13:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-20 10:26:25', '2025-05-20 10:26:25'),
(103, '2025-05-21', '15:00', '16:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-21 12:30:39', '2025-05-21 12:30:39'),
(104, '2025-05-24', '11:00', '12:00', 'Meeting - Direcção', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-05-24 08:26:04', '2025-05-24 08:26:04'),
(105, '2025-05-26', '14:30', '15:30', 'Daker', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-26 11:59:59', '2025-05-26 11:59:59'),
(106, '2025-05-27', '08:30', '08:50', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-27 06:20:30', '2025-05-27 06:20:30'),
(107, '2025-05-27', '09:00', '10:00', 'Jaguar', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-05-27 06:21:18', '2025-05-27 06:21:18'),
(108, '2025-06-04', '10:00', '11:00', 'Meeting TES-TOP', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-04 07:52:09', '2025-06-04 07:52:09'),
(109, '2025-06-04', '11:00', '12:00', 'TES-TOP - More-IT', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-04 09:10:19', '2025-06-04 09:10:19'),
(110, '2025-06-12', '11:30', '12:30', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-06-11 14:57:37', '2025-06-11 14:57:37'),
(111, '2025-06-12', '14:15', '15:30', 'Primavera - Online meeting', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-12 06:50:47', '2025-06-12 06:50:47'),
(112, '2025-06-17', '10:00', '11:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-06-16 15:09:40', '2025-06-16 15:09:40'),
(113, '2025-06-19', '10:00', '11:00', 'Meeting - Finanças', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-19 07:33:41', '2025-06-19 07:33:41'),
(114, '2025-06-20', '11:00', '12:00', 'JAGUAR SEGURANçA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-06-19 12:49:34', '2025-06-19 12:49:34'),
(115, '2025-06-20', '09:00', '09:30', 'Meeting - Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-20 07:13:40', '2025-06-20 07:13:40'),
(116, '2025-06-20', '11:00', '12:00', 'JAGUAR SEGURANÇA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-20 07:16:12', '2025-06-20 07:16:12'),
(117, '2025-06-21', '10:00', '11:00', 'Discussion on new tender', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-21 07:06:09', '2025-06-21 07:06:09'),
(118, '2025-06-26', '14:30', '15:30', 'Meeting - Entrevista', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-06-26 12:24:34', '2025-06-26 12:24:34'),
(119, '2025-06-27', '15:00', '16:00', 'ZOOM MEETING', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-06-27 06:16:58', '2025-06-27 06:16:58'),
(120, '2025-07-01', '10:00', '11:00', 'Meeting - Primavera', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 1, '2025-07-01 08:03:00', '2025-07-01 08:03:00'),
(121, '2025-07-01', '15:00', '16:00', 'Financeiro - Primavera', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-01 12:23:43', '2025-07-01 12:23:43'),
(122, '2025-07-04', '10:00', '11:00', 'Tes0Top | Vajra', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-04 08:03:43', '2025-07-04 08:03:43'),
(123, '2025-07-07', '09:00', '10:00', 'Procurement - Projectos', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-07 07:03:26', '2025-07-07 07:03:26'),
(124, '2025-07-08', '10:00', '11:00', 'Meeting - Sinalização Ferroviária', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-08 07:09:33', '2025-07-08 07:09:33'),
(125, '2025-07-08', '14:30', '15:30', 'Abertura do concurso da HCB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-08 10:11:35', '2025-07-08 10:11:35'),
(126, '2025-07-11', '10:00', '11:00', 'Meeting - Powtech e Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-10 09:32:37', '2025-07-10 09:32:37'),
(127, '2025-07-12', '09:30', '10:30', 'Meeting - Tes-Top', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-12 07:17:34', '2025-07-12 07:17:34'),
(128, '2025-07-14', '15:30', '16:30', 'Meeting - Tes-Top', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-14 13:12:21', '2025-07-14 13:12:21'),
(129, '2025-07-17', '13:00', '14:30', 'BAJEL', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-07-15 15:22:36', '2025-07-15 15:22:36'),
(130, '2025-07-17', '13:00', '14:30', 'BAJEL', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-15 15:22:37', '2025-07-15 15:22:37'),
(131, '2025-07-16', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-16 06:55:46', '2025-07-16 06:55:46'),
(132, '2025-07-17', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-16 07:38:13', '2025-07-16 07:38:13'),
(133, '2025-07-17', '11:30', '12:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-17 06:25:12', '2025-07-17 06:25:12'),
(134, '2025-07-17', '15:30', '16:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-17 10:05:58', '2025-07-17 10:05:58'),
(135, '2025-07-18', '10:00', '11:30', 'Workshop Angola', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-18 06:41:18', '2025-07-18 06:41:18'),
(136, '2025-07-23', '08:00', '09:30', 'AUTO-BAS', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-21 06:28:50', '2025-07-21 06:28:50'),
(137, '2025-07-21', '11:00', '11:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-21 06:30:17', '2025-07-21 06:30:17'),
(138, '2025-07-21', '15:45', '16:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-21 13:37:07', '2025-07-21 13:37:07'),
(139, '2025-07-24', '11:00', '12:00', 'BIM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-22 08:31:03', '2025-07-22 08:31:03'),
(140, '2025-07-22', '14:00', '15:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-22 10:09:58', '2025-07-22 10:09:58'),
(141, '2025-07-23', '14:30', '15:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-23 12:16:21', '2025-07-23 12:16:21'),
(142, '2025-07-25', '10:15', '11:30', 'Abertura de Concurso HCB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-24 14:53:47', '2025-07-24 14:53:47'),
(143, '2025-07-25', '11:00', '11:30', 'Angola Tender', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-25 06:33:59', '2025-07-25 06:33:59'),
(144, '2025-07-28', '10:00', '10:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-07-28 06:44:05', '2025-07-28 06:44:05'),
(145, '2025-07-30', '09:30', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-30 07:24:22', '2025-07-30 07:24:22'),
(146, '2025-07-31', '14:30', '15:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-07-31 06:28:59', '2025-07-31 06:28:59'),
(147, '2025-08-04', '10:00', '10:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-04 06:30:27', '2025-08-04 06:30:27'),
(148, '2025-08-08', '11:00', '12:00', 'Procurement Meeting', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-08-07 13:06:27', '2025-08-07 13:06:27'),
(149, '2025-08-08', '11:00', '12:00', 'EDCL', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-08-08 06:18:01', '2025-08-08 06:18:01'),
(150, '2025-08-11', '14:00', '15:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-11 09:28:36', '2025-08-11 09:28:36'),
(151, '2025-08-14', '14:30', '15:30', 'ETICADATA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-12 13:21:14', '2025-08-12 13:21:14'),
(152, '2025-08-13', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-12 13:22:59', '2025-08-12 13:22:59'),
(153, '2025-08-14', '08:30', '09:30', 'ZOOM MEETING-EDM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-14 06:06:32', '2025-08-14 06:06:32'),
(154, '2025-08-15', '11:00', '13:30', 'ZOOM MEETING-ANGOLA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-14 15:15:01', '2025-08-14 15:15:01'),
(155, '2025-08-18', '09:00', '09:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-18 06:46:17', '2025-08-18 06:46:17'),
(156, '2025-08-18', '14:30', '15:00', 'Meeting Finanças', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-08-18 10:31:09', '2025-08-18 10:31:09'),
(157, '2025-08-19', '14:15', '15:00', 'UBA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-19 12:12:00', '2025-08-19 12:12:00'),
(158, '2025-08-22', '10:00', '11:00', 'KDW', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-22 06:14:12', '2025-08-22 06:14:12'),
(159, '2025-08-23', '09:00', '10:00', 'Update Angola Tender', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-22 07:36:22', '2025-08-22 07:36:22'),
(160, '2025-08-28', '14:30', '16:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-08-28 06:27:18', '2025-08-28 06:27:18'),
(161, '2025-09-01', '09:00', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-01 06:34:31', '2025-09-01 06:34:31'),
(162, '2025-09-03', '11:30', '12:30', 'FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-03 06:19:59', '2025-09-03 06:19:59'),
(163, '2025-09-03', '08:30', '09:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-03 06:30:11', '2025-09-03 06:30:11'),
(164, '2025-09-03', '10:00', '10:40', 'DHL', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-03 07:21:40', '2025-09-03 07:21:40'),
(165, '2025-09-04', '11:30', '12:30', 'EURO EXIM BANK', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-04 07:03:33', '2025-09-04 07:03:33'),
(166, '2025-09-04', '14:40', '15:40', 'Meeting Tes-Top', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-04 12:28:29', '2025-09-04 12:28:29'),
(167, '2025-09-05', '10:30', '11:30', 'PALMA SEGUROS', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-09-05 06:24:37', '2025-09-05 06:24:37'),
(168, '2025-09-05', '10:00', '11:00', 'PUMA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-05 06:24:54', '2025-09-05 06:24:54'),
(169, '2025-09-06', '10:00', '11:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-05 15:37:10', '2025-09-05 15:37:10'),
(170, '2025-09-10', '09:30', '10:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-10 06:18:18', '2025-09-10 06:18:18'),
(171, '2025-09-10', '10:00', '11:00', 'PALMA SEGUROS', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-10 06:18:18', '2025-09-10 06:18:18'),
(172, '2025-09-11', '10:30', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-11 06:15:49', '2025-09-11 06:15:49'),
(173, '2025-09-11', '11:00', '12:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-11 06:16:08', '2025-09-11 06:16:08'),
(174, '2025-09-11', '11:00', '12:00', 'Meeting - Tes-Top', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 1, '2025-09-11 09:09:04', '2025-09-11 09:09:04'),
(175, '2025-09-13', '09:00', '10:00', 'Meeting - Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-11 09:10:42', '2025-09-11 09:10:42'),
(176, '2025-09-15', '11:30', '12:30', 'Meeting - Procurement', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-15 09:24:43', '2025-09-15 09:24:43'),
(177, '2025-09-16', '10:00', '11:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-15 12:26:55', '2025-09-15 12:26:55'),
(178, '2025-09-17', '11:10', '12:10', 'Finanças e Pro Energia', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-17 09:02:33', '2025-09-17 09:02:33'),
(179, '2025-09-18', '09:00', '09:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-18 06:31:20', '2025-09-18 06:31:20'),
(180, '2025-09-18', '10:00', '11:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-18 06:31:30', '2025-09-18 06:31:30'),
(181, '2025-09-22', '10:00', '10:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-09-18 13:38:57', '2025-09-18 13:38:57'),
(182, '2025-09-20', '09:00', '10:00', 'Meeting - Tes-Top', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-20 06:33:00', '2025-09-20 06:33:00'),
(183, '2025-09-22', '09:00', '10:00', 'Meeting - HST', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-22 06:51:50', '2025-09-22 06:51:50'),
(184, '2025-09-22', '10:00', '11:00', 'Procurement & HOLLEY', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-22 06:52:14', '2025-09-22 06:52:14'),
(185, '2025-09-22', '14:30', '15:30', 'Dr. Sabir & Sr. Younus', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-22 09:34:04', '2025-09-22 09:34:04'),
(186, '2025-09-23', '09:00', '09:45', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-22 15:18:03', '2025-09-22 15:18:03'),
(187, '2025-09-24', '10:30', '11:30', 'Electro África - Banco Vista', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-23 10:02:49', '2025-09-23 10:02:49'),
(188, '2025-09-26', '10:30', '11:30', 'Meeting Tes-Top e Visita', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-26 07:49:52', '2025-09-26 07:49:52'),
(189, '2025-09-26', '11:30', '12:30', 'Finanças e Sr(a) Joana', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-09-26 08:08:37', '2025-09-26 08:08:37'),
(190, '2025-09-30', '14:00', '15:00', 'MRCL -ELECTRANS & CFM', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 1, '2025-09-29 07:54:58', '2025-09-29 07:54:58'),
(191, '2025-09-30', '09:00', '10:00', 'MOZA BANCO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-29 13:19:42', '2025-09-29 13:19:42'),
(192, '2025-09-30', '10:30', '11:30', 'ACESS BANK', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-29 14:22:58', '2025-09-29 14:22:58'),
(193, '2025-09-30', '11:00', '11:30', 'DESPACHANTE', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-09-30 06:28:02', '2025-09-30 06:28:02'),
(194, '2025-10-01', '11:00', '11:30', 'OCUPADO-Benin', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-01 09:02:28', '2025-10-01 09:02:28'),
(195, '2025-10-02', '14:15', '15:15', 'Sr. Younus & Visita', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-10-02 08:48:12', '2025-10-02 08:48:12'),
(196, '2025-10-03', '09:00', '09:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-02 13:54:01', '2025-10-02 13:54:01'),
(197, '2025-10-06', '10:30', '11:30', 'Sr Younus', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-10-06 08:21:46', '2025-10-06 08:21:46'),
(198, '2025-10-06', '14:30', '15:30', 'Sr Younus', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-10-06 08:21:59', '2025-10-06 08:21:59'),
(199, '2025-10-08', '15:30', '16:30', 'ZOOM MEETING-Sr.younus', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-08 06:23:01', '2025-10-08 06:23:01'),
(200, '2025-10-08', '10:30', '11:30', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-08 06:23:11', '2025-10-08 06:23:11'),
(201, '2025-10-08', '14:00', '15:00', 'CFM-MRCL', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-08 06:32:47', '2025-10-08 06:32:47'),
(202, '2025-10-08', '12:10', '13:00', 'OCUPADO', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-08 08:59:03', '2025-10-08 08:59:03'),
(203, '2025-10-09', '10:00', '11:00', 'Techmoz', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-08 14:50:32', '2025-10-08 14:50:32'),
(204, '2025-10-09', '11:30', '12:30', 'SCHNEIDER', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-09 08:15:18', '2025-10-09 08:15:18'),
(205, '2025-10-09', '14:30', '15:30', 'PUMA', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-09 09:45:13', '2025-10-09 09:45:13'),
(206, '2025-10-10', '11:00', '12:00', 'Meeting Tes-Top', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 0, '2025-10-10 09:03:44', '2025-10-10 09:03:44'),
(207, '2025-10-13', '11:30', '12:30', 'FNB', 'TES-TOP: 1st Floor', NULL, NULL, 1, 62, 1, '2025-10-10 12:49:34', '2025-10-10 12:49:34'),
(208, '2025-10-13', '15:30', '17:00', 'Formação', 'TES-TOP: 1st Floor', NULL, NULL, 1, 67, 0, '2025-10-13 09:51:43', '2025-10-13 09:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ultimo_visto` date DEFAULT NULL,
  `destinatario_id` int(11) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `prioridade` varchar(255) DEFAULT NULL,
  `registado_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `notificacoes`
--

INSERT INTO `notificacoes` (`id`, `tipo`, `descricao`, `data`, `ultimo_visto`, `destinatario_id`, `estado`, `prioridade`, `registado_id`, `created_at`, `updated_at`) VALUES
(1, 'sistema', 'O Usuario Sadia Dahid  fez login na data 2022-03-25 13:42:47', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-25 18:42:47', NULL),
(2, 'sistema', 'O Usuario Sadia Dahid  fez login na data 2022-03-25 13:45:22', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-25 18:45:22', NULL),
(3, 'sistema', 'O Usuario Sadia Dahid  fez login na data 2022-03-25 13:47:20', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-25 18:47:20', NULL),
(4, 'sistema', 'O Usuario Sadia Dahid  fez login na data 2022-03-25 16:25:52', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-25 21:25:52', NULL),
(5, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-03-25 16:42:09', NULL, NULL, 60, 'vista', NULL, 60, '2022-03-25 21:42:09', NULL),
(6, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-03-25 16:43:18', NULL, NULL, 60, 'vista', NULL, 60, '2022-03-25 21:43:18', NULL),
(7, 'sistema', 'O Usuario Sadia Dahid  fez login na data 2022-03-25 16:43:56', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-25 21:43:56', NULL),
(8, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-03-25 16:47:07', NULL, NULL, 61, 'vista', NULL, 61, '2022-03-25 21:47:07', NULL),
(9, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-03-25 16:48:04', NULL, NULL, 61, 'vista', NULL, 61, '2022-03-25 21:48:04', NULL),
(10, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-03-25 16:52:23', NULL, NULL, 60, 'vista', NULL, 60, '2022-03-25 21:52:23', NULL),
(11, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-03-25 16:55:26', NULL, NULL, 62, 'vista', NULL, 62, '2022-03-25 21:55:26', NULL),
(12, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-26 09:50:51', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-26 14:50:51', NULL),
(13, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-03-26 09:58:41', NULL, NULL, 61, 'vista', NULL, 61, '2022-03-26 14:58:41', NULL),
(14, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-26 10:07:23', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-26 15:07:23', NULL),
(15, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-03-26 10:08:57', NULL, NULL, 61, 'vista', NULL, 61, '2022-03-26 15:08:57', NULL),
(16, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-26 10:15:31', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-26 15:15:31', NULL),
(17, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-03-26 10:47:10', NULL, NULL, 60, 'vista', NULL, 60, '2022-03-26 15:47:10', NULL),
(18, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-26 10:48:37', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-26 15:48:37', NULL),
(19, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-03-28 15:21:16', NULL, NULL, 60, 'vista', NULL, 60, '2022-03-28 20:21:16', NULL),
(20, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 08:21:19', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 13:21:19', NULL),
(21, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 08:50:06', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 13:50:06', NULL),
(22, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 08:55:26', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 13:55:26', NULL),
(23, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 09:09:16', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 14:09:16', NULL),
(24, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 09:15:08', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 14:15:08', NULL),
(25, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-03-29 09:28:18', NULL, NULL, 60, 'vista', NULL, 60, '2022-03-29 14:28:18', NULL),
(26, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 09:29:45', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 14:29:45', NULL),
(27, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 09:32:30', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 14:32:30', NULL),
(28, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 09:55:05', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 14:55:05', NULL),
(29, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 10:36:55', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 15:36:55', NULL),
(30, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-29 10:46:08', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-29 15:46:08', NULL),
(31, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-30 14:43:04', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-30 19:43:04', NULL),
(32, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-03-30 17:45:39', NULL, NULL, 62, 'vista', NULL, 62, '2022-03-30 22:45:39', NULL),
(33, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-31 10:57:16', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-31 15:57:16', NULL),
(34, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-31 11:31:56', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-31 16:31:56', NULL),
(35, 'sistema', 'O Usuario Dânia  fez login na data 2022-03-31 11:34:17', NULL, NULL, 2, 'vista', NULL, 2, '2022-03-31 16:34:17', NULL),
(36, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-04 14:21:26', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-04 19:21:26', NULL),
(37, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-05 09:39:47', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-05 14:39:47', NULL),
(38, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-05 09:46:22', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-05 14:46:22', NULL),
(39, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-05 10:47:54', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-05 15:47:54', NULL),
(40, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-11 15:44:20', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-11 20:44:20', NULL),
(41, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-12 09:52:00', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-12 14:52:00', NULL),
(42, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-04-12 11:06:14', NULL, NULL, 60, 'vista', NULL, 60, '2022-04-12 16:06:14', NULL),
(43, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-04-12 11:07:52', NULL, NULL, 60, 'vista', NULL, 60, '2022-04-12 16:07:52', NULL),
(44, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-12 14:23:27', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-12 19:23:27', NULL),
(45, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-13 08:47:21', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-13 13:47:21', NULL),
(46, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-04-13 10:19:26', NULL, NULL, 60, 'vista', NULL, 60, '2022-04-13 15:19:26', NULL),
(47, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-13 10:23:09', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-13 15:23:09', NULL),
(48, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-13 10:23:32', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-13 15:23:32', NULL),
(49, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-19 08:00:31', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-19 13:00:31', NULL),
(50, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-19 11:00:36', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-19 16:00:36', NULL),
(51, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-19 12:16:08', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-19 17:16:08', NULL),
(52, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-04-19 13:03:56', NULL, NULL, 60, 'vista', NULL, 60, '2022-04-19 18:03:56', NULL),
(53, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-19 14:26:39', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-19 19:26:39', NULL),
(54, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-19 14:27:07', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-19 19:27:07', NULL),
(55, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 09:26:04', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 14:26:04', NULL),
(56, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 10:18:56', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 15:18:56', NULL),
(57, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-04-20 11:00:54', NULL, NULL, 60, 'vista', NULL, 60, '2022-04-20 16:00:54', NULL),
(58, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-04-20 11:01:41', NULL, NULL, 60, 'vista', NULL, 60, '2022-04-20 16:01:41', NULL),
(59, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-20 11:03:32', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-20 16:03:32', NULL),
(60, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-20 11:07:05', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-20 16:07:05', NULL),
(61, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-20 12:21:23', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-20 17:21:23', NULL),
(62, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 12:31:48', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 17:31:48', NULL),
(63, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 13:31:45', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 18:31:45', NULL),
(64, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 13:40:04', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 18:40:04', NULL),
(65, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-20 13:49:10', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-20 18:49:10', NULL),
(66, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 14:40:44', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 19:40:44', NULL),
(67, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-20 15:59:12', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-20 20:59:12', NULL),
(68, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-20 16:02:17', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-20 21:02:17', NULL),
(69, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-20 22:47:54', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-21 03:47:54', NULL),
(70, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-21 09:26:01', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-21 14:26:01', NULL),
(71, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-21 10:17:08', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-21 15:17:08', NULL),
(72, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-21 11:40:12', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-21 16:40:12', NULL),
(73, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-21 11:48:17', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-21 16:48:17', NULL),
(74, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-21 12:04:08', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-21 17:04:08', NULL),
(75, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-21 12:04:51', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-21 17:04:51', NULL),
(76, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-21 14:26:20', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-21 19:26:20', NULL),
(77, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-21 14:52:29', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-21 19:52:29', NULL),
(78, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-21 16:00:24', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-21 21:00:24', NULL),
(79, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-22 07:59:50', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-22 12:59:50', NULL),
(80, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-22 08:03:57', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-22 13:03:57', NULL),
(81, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-22 08:04:36', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-22 13:04:36', NULL),
(82, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-22 10:49:41', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-22 15:49:41', NULL),
(83, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-22 11:46:07', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-22 16:46:07', NULL),
(84, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-22 16:43:04', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-22 21:43:04', NULL),
(85, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-23 09:49:38', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-23 14:49:38', NULL),
(86, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-23 10:35:29', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-23 15:35:29', NULL),
(87, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-23 11:15:37', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-23 16:15:37', NULL),
(88, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-23 11:16:56', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-23 16:16:56', NULL),
(89, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-23 11:44:32', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-23 16:44:32', NULL),
(90, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-25 08:57:49', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-25 13:57:49', NULL),
(91, 'sistema', 'O Usuario Dânia  fez login na data 2022-04-25 09:42:09', NULL, NULL, 2, 'vista', NULL, 2, '2022-04-25 14:42:09', NULL),
(92, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-04-25 11:26:07', NULL, NULL, 62, 'vista', NULL, 62, '2022-04-25 16:26:07', NULL),
(93, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-04-26 15:41:18', NULL, NULL, 61, 'vista', NULL, 61, '2022-04-26 20:41:18', NULL),
(94, 'sistema', 'O Usuario PANKAJ JEENTILAL  fez login na data 2022-04-27 13:53:21', NULL, NULL, 63, 'vista', NULL, 63, '2022-04-27 18:53:21', NULL),
(95, 'sistema', 'O Usuario PANKAJ JEENTILAL  fez login na data 2022-04-27 13:57:33', NULL, NULL, 63, 'vista', NULL, 63, '2022-04-27 18:57:33', NULL),
(96, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-04 11:35:15', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-04 16:35:15', NULL),
(97, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-04 11:47:06', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-04 16:47:06', NULL),
(98, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-04 12:18:17', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-04 17:18:17', NULL),
(99, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-04 12:19:19', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-04 17:19:19', NULL),
(100, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-05 08:17:39', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-05 13:17:39', NULL),
(101, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-05-05 10:05:18', NULL, NULL, 60, 'vista', NULL, 60, '2022-05-05 15:05:18', NULL),
(102, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2022-05-05 10:06:09', NULL, NULL, 60, 'vista', NULL, 60, '2022-05-05 15:06:09', NULL),
(103, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-06 09:19:53', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-06 14:19:53', NULL),
(104, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-06 10:21:58', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-06 15:21:58', NULL),
(105, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-06 10:54:51', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-06 15:54:51', NULL),
(106, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-06 14:58:47', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-06 19:58:47', NULL),
(107, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-06 15:01:34', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-06 20:01:34', NULL),
(108, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-05-09 10:35:28', NULL, NULL, 61, 'vista', NULL, 61, '2022-05-09 15:35:28', NULL),
(109, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-12 10:37:50', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-12 15:37:50', NULL),
(110, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-12 11:20:43', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-12 16:20:43', NULL),
(111, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-12 15:36:24', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-12 20:36:24', NULL),
(112, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-14 09:49:06', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-14 14:49:06', NULL),
(113, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-14 10:45:25', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-14 15:45:25', NULL),
(114, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-16 09:55:42', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-16 14:55:42', NULL),
(115, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-17 12:22:45', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-17 17:22:45', NULL),
(116, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-17 13:41:32', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-17 18:41:32', NULL),
(117, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-23 09:01:08', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-23 14:01:08', NULL),
(118, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-23 12:08:02', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-23 17:08:02', NULL),
(119, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-23 14:27:25', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-23 19:27:25', NULL),
(120, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-23 15:26:33', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-23 20:26:33', NULL),
(121, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-24 10:31:55', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-24 15:31:55', NULL),
(122, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-24 14:19:00', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-24 19:19:00', NULL),
(123, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-05-24 15:47:55', NULL, NULL, 61, 'vista', NULL, 61, '2022-05-24 20:47:55', NULL),
(124, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-05-24 16:27:53', NULL, NULL, 61, 'vista', NULL, 61, '2022-05-24 21:27:53', NULL),
(125, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-25 08:16:59', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-25 13:16:59', NULL),
(126, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-25 10:19:19', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-25 15:19:19', NULL),
(127, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-25 12:38:25', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-25 17:38:25', NULL),
(128, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-25 14:06:28', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-25 19:06:28', NULL),
(129, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-25 16:12:29', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-25 21:12:29', NULL),
(130, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-26 09:00:51', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-26 14:00:51', NULL),
(131, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-05-26 09:03:45', NULL, NULL, 62, 'vista', NULL, 62, '2022-05-26 14:03:45', NULL),
(132, 'sistema', 'O Usuario Dânia  fez login na data 2022-05-30 08:28:59', NULL, NULL, 2, 'vista', NULL, 2, '2022-05-30 13:28:59', NULL),
(133, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-01 10:08:32', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-01 15:08:32', NULL),
(134, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-06-01 15:30:37', NULL, NULL, 61, 'vista', NULL, 61, '2022-06-01 20:30:37', NULL),
(135, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-06-03 16:49:22', NULL, NULL, 61, 'vista', NULL, 61, '2022-06-03 21:49:22', NULL),
(136, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-03 17:27:38', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-03 22:27:38', NULL),
(137, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-07 08:40:00', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-07 13:40:00', NULL),
(138, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-14 09:33:00', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-14 14:33:00', NULL),
(139, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-15 10:48:30', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-15 15:48:30', NULL),
(140, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-16 12:12:46', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-16 17:12:46', NULL),
(141, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-16 14:54:41', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-16 19:54:41', NULL),
(142, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-16 16:54:12', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-16 21:54:12', NULL),
(143, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-17 08:50:18', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-17 13:50:18', NULL),
(144, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-17 08:51:21', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-17 13:51:21', NULL),
(145, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-17 16:42:31', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-17 21:42:31', NULL),
(146, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-17 16:45:52', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-17 21:45:52', NULL),
(147, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-18 07:27:01', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-18 12:27:01', NULL),
(148, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-18 10:28:00', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-18 15:28:00', NULL),
(149, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-18 11:35:01', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-18 16:35:01', NULL),
(150, 'sistema', 'O Usuario Dânia  fez login na data 2022-06-20 10:58:20', NULL, NULL, 2, 'vista', NULL, 2, '2022-06-20 15:58:20', NULL),
(151, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-24 09:37:38', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-24 14:37:38', NULL),
(152, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-24 11:21:18', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-24 16:21:18', NULL),
(153, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-06-24 11:23:45', NULL, NULL, 61, 'vista', NULL, 61, '2022-06-24 16:23:45', NULL),
(154, 'sistema', 'O Usuario RH Pro-Energia  fez login na data 2022-06-28 09:29:29', NULL, NULL, 61, 'vista', NULL, 61, '2022-06-28 14:29:29', NULL),
(155, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-06-29 13:29:11', NULL, NULL, 62, 'vista', NULL, 62, '2022-06-29 18:29:11', NULL),
(156, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-11 10:29:38', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-11 15:29:38', NULL),
(157, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-11 10:30:49', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-11 15:30:49', NULL),
(158, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-11 10:42:59', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-11 15:42:59', NULL),
(159, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-15 15:54:20', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-15 20:54:20', NULL),
(160, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-16 08:16:28', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-16 13:16:28', NULL),
(161, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-18 08:52:11', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-18 13:52:11', NULL),
(162, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-18 09:29:19', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-18 14:29:19', NULL),
(163, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-19 08:09:58', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-19 13:09:58', NULL),
(164, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-19 09:03:01', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-19 14:03:01', NULL),
(165, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-19 11:31:43', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-19 16:31:43', NULL),
(166, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-19 14:31:27', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-19 19:31:27', NULL),
(167, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-20 08:37:04', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-20 13:37:04', NULL),
(168, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-20 16:59:47', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-20 21:59:47', NULL),
(169, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-26 12:10:59', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-26 17:10:59', NULL),
(170, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-26 16:45:39', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-26 21:45:39', NULL),
(171, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-28 17:10:43', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-28 22:10:43', NULL),
(172, 'sistema', 'O Usuario Dânia  fez login na data 2022-07-28 17:10:51', NULL, NULL, 2, 'vista', NULL, 2, '2022-07-28 22:10:51', NULL),
(173, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-07-28 17:15:33', NULL, NULL, 62, 'vista', NULL, 62, '2022-07-28 22:15:33', NULL),
(174, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-04 12:29:05', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-04 17:29:05', NULL),
(175, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-10 08:56:07', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-10 13:56:07', NULL),
(176, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-10 10:10:19', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-10 08:10:19', NULL),
(177, 'sistema', 'O Usuario Dânia  fez login na data 2022-08-10 10:17:26', NULL, NULL, 2, 'vista', NULL, 2, '2022-08-10 08:17:26', NULL),
(178, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-10 10:21:38', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-10 08:21:38', NULL),
(179, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-10 14:39:44', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-10 12:39:44', NULL),
(180, 'sistema', 'O Usuario Dânia  fez login na data 2022-08-15 11:21:25', NULL, NULL, 2, 'vista', NULL, 2, '2022-08-15 09:21:25', NULL),
(181, 'sistema', 'O Usuario Dânia  fez login na data 2022-08-17 08:19:26', NULL, NULL, 2, 'vista', NULL, 2, '2022-08-17 06:19:26', NULL),
(182, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-17 09:33:02', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-17 07:33:02', NULL),
(183, 'sistema', 'O Usuario Dânia  fez login na data 2022-08-17 14:31:27', NULL, NULL, 2, 'vista', NULL, 2, '2022-08-17 12:31:27', NULL),
(184, 'sistema', 'O Usuario Dânia  fez login na data 2022-08-19 09:17:03', NULL, NULL, 2, 'vista', NULL, 2, '2022-08-19 07:17:03', NULL),
(185, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-19 09:59:35', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-19 07:59:35', NULL),
(186, 'sistema', 'O Usuario Dânia  fez login na data 2022-08-19 10:18:53', NULL, NULL, 2, 'vista', NULL, 2, '2022-08-19 08:18:53', NULL),
(187, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-08-19 10:50:39', NULL, NULL, 62, 'vista', NULL, 62, '2022-08-19 08:50:39', NULL),
(188, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-19 08:32:49', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-19 06:32:49', NULL),
(189, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-19 08:43:18', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-19 06:43:18', NULL),
(190, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-09-22 12:20:32', NULL, NULL, 62, 'vista', NULL, 62, '2022-09-22 10:20:32', NULL),
(191, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-09-22 15:36:30', NULL, NULL, 62, 'vista', NULL, 62, '2022-09-22 13:36:30', NULL),
(192, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-22 15:56:08', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-22 13:56:08', NULL),
(193, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-23 14:50:05', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-23 12:50:05', NULL),
(194, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-23 15:14:24', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-23 13:14:24', NULL),
(195, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-23 16:24:16', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-23 14:24:16', NULL),
(196, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-27 08:40:13', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-27 06:40:13', NULL),
(197, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-09-27 11:25:24', NULL, NULL, 62, 'vista', NULL, 62, '2022-09-27 09:25:24', NULL),
(198, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-27 11:42:27', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-27 09:42:27', NULL),
(199, 'sistema', 'O Usuario Dânia  fez login na data 2022-09-27 12:14:53', NULL, NULL, 2, 'vista', NULL, 2, '2022-09-27 10:14:53', NULL),
(200, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-09-28 11:07:24', NULL, NULL, 62, 'vista', NULL, 62, '2022-09-28 09:07:24', NULL),
(201, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-03 10:53:44', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-03 08:53:44', NULL),
(202, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-10-12 08:41:11', NULL, NULL, 62, 'vista', NULL, 62, '2022-10-12 06:41:11', NULL),
(203, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-18 13:46:07', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-18 11:46:07', NULL),
(204, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-25 12:28:25', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-25 10:28:25', NULL),
(205, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-25 12:37:36', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-25 10:37:36', NULL),
(206, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-25 14:44:54', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-25 12:44:54', NULL),
(207, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-26 12:11:33', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-26 10:11:33', NULL),
(208, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-27 10:23:32', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-27 08:23:32', NULL),
(209, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-27 14:08:32', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-27 12:08:32', NULL),
(210, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-10-27 14:15:44', NULL, NULL, 62, 'vista', NULL, 62, '2022-10-27 12:15:44', NULL),
(211, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-27 15:20:59', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-27 13:20:59', NULL),
(212, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-28 10:40:11', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-28 08:40:11', NULL),
(213, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-10-28 10:43:55', NULL, NULL, 62, 'vista', NULL, 62, '2022-10-28 08:43:55', NULL),
(214, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-10-28 10:43:59', NULL, NULL, 62, 'vista', NULL, 62, '2022-10-28 08:43:59', NULL),
(215, 'sistema', 'O Usuario Dânia  fez login na data 2022-10-28 12:28:37', NULL, NULL, 2, 'vista', NULL, 2, '2022-10-28 10:28:37', NULL),
(216, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-11-07 17:27:34', NULL, NULL, 62, 'vista', NULL, 62, '2022-11-07 16:27:34', NULL),
(217, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-15 10:34:45', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-15 09:34:45', NULL),
(218, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-21 07:02:38', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-21 06:02:38', NULL),
(219, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-21 13:50:26', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-21 12:50:26', NULL),
(220, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-23 09:20:06', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-23 08:20:06', NULL),
(221, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-23 11:56:37', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-23 10:56:37', NULL),
(222, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-24 08:20:56', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-24 07:20:56', NULL),
(223, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-11-24 09:12:37', NULL, NULL, 62, 'vista', NULL, 62, '2022-11-24 08:12:37', NULL),
(224, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-24 09:46:24', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-24 08:46:24', NULL),
(225, 'sistema', 'O Usuario Dânia  fez login na data 2022-11-24 14:18:20', NULL, NULL, 2, 'vista', NULL, 2, '2022-11-24 13:18:20', NULL),
(226, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-11-24 15:09:17', NULL, NULL, 62, 'vista', NULL, 62, '2022-11-24 14:09:17', NULL),
(227, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-05 18:18:18', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-05 17:18:18', NULL),
(228, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-15 10:49:28', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-15 09:49:28', NULL),
(229, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-15 11:29:26', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-15 10:29:26', NULL),
(230, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-15 11:35:19', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-15 10:35:19', NULL),
(231, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-15 11:45:09', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-15 10:45:09', NULL),
(232, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-15 13:22:29', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-15 12:22:29', NULL),
(233, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-15 14:09:28', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-15 13:09:28', NULL),
(234, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-15 14:13:17', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-15 13:13:17', NULL),
(235, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-16 07:46:48', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-16 06:46:48', NULL),
(236, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-16 08:28:50', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-16 07:28:50', NULL),
(237, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-16 19:14:35', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-16 18:14:35', NULL),
(238, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-17 10:19:03', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-17 09:19:03', NULL),
(239, 'sistema', 'O Usuario Dânia  fez login na data 2022-12-20 15:38:32', NULL, NULL, 2, 'vista', NULL, 2, '2022-12-20 14:38:32', NULL),
(240, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-24 11:07:51', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-24 10:07:51', NULL),
(241, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-24 11:14:31', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-24 10:14:31', NULL),
(242, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-28 16:38:19', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-28 15:38:19', NULL),
(243, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2022-12-30 10:03:51', NULL, NULL, 62, 'vista', NULL, 62, '2022-12-30 09:03:51', NULL),
(244, 'sistema', 'O Usuario Dânia  fez login na data 2023-01-27 13:02:16', NULL, NULL, 2, 'vista', NULL, 2, '2023-01-27 12:02:16', NULL),
(245, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-01-27 16:45:29', NULL, NULL, 62, 'vista', NULL, 62, '2023-01-27 15:45:29', NULL),
(246, 'sistema', 'O Usuario Dânia  fez login na data 2023-01-28 08:38:19', NULL, NULL, 2, 'vista', NULL, 2, '2023-01-28 07:38:19', NULL),
(247, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-01-30 08:11:01', NULL, NULL, 62, 'vista', NULL, 62, '2023-01-30 07:11:01', NULL),
(248, 'sistema', 'O Usuario Dânia  fez login na data 2023-01-30 08:52:14', NULL, NULL, 2, 'vista', NULL, 2, '2023-01-30 07:52:14', NULL),
(249, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-01-30 09:53:21', NULL, NULL, 62, 'vista', NULL, 62, '2023-01-30 08:53:21', NULL),
(250, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-01-30 11:02:15', NULL, NULL, 62, 'vista', NULL, 62, '2023-01-30 10:02:15', NULL),
(251, 'sistema', 'O Usuario Dânia  fez login na data 2023-01-30 15:03:38', NULL, NULL, 2, 'vista', NULL, 2, '2023-01-30 14:03:38', NULL),
(252, 'sistema', 'O Usuario Dânia  fez login na data 2023-01-30 15:14:06', NULL, NULL, 2, 'vista', NULL, 2, '2023-01-30 14:14:06', NULL),
(253, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-01-30 15:57:38', NULL, NULL, 62, 'vista', NULL, 62, '2023-01-30 14:57:38', NULL),
(254, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-01 14:28:39', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-01 13:28:39', NULL),
(255, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-16 16:21:35', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-16 15:21:35', NULL),
(256, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-17 13:32:38', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-17 12:32:38', NULL),
(257, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-20 16:04:56', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-20 15:04:56', NULL),
(258, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-21 08:35:18', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-21 07:35:18', NULL),
(259, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-21 08:49:06', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-21 07:49:06', NULL),
(260, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-21 13:15:01', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-21 12:15:01', NULL),
(261, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-21 16:00:17', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-21 15:00:17', NULL),
(262, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-21 16:05:11', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-21 15:05:11', NULL),
(263, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-22 07:53:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-22 06:53:07', NULL),
(264, 'sistema', 'O Usuario Dânia  fez login na data 2023-02-22 08:19:17', NULL, NULL, 2, 'vista', NULL, 2, '2023-02-22 07:19:17', NULL),
(265, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-22 08:49:42', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-22 07:49:42', NULL),
(266, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-22 09:39:25', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-22 08:39:25', NULL),
(267, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-26 10:53:02', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-26 09:53:02', NULL),
(268, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-26 10:56:01', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-26 09:56:01', NULL),
(269, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-02-28 10:01:17', NULL, NULL, 62, 'vista', NULL, 62, '2023-02-28 09:01:17', NULL),
(270, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-01 22:09:45', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-01 21:09:45', NULL),
(271, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-14 15:07:35', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-14 14:07:35', NULL),
(272, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-14 15:08:12', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-14 14:08:12', NULL),
(273, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-14 15:08:36', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-14 14:08:36', NULL),
(274, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-14 15:12:15', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-14 14:12:15', NULL),
(275, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-14 15:33:02', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-14 14:33:02', NULL),
(276, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-14 15:35:51', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-14 14:35:51', NULL),
(277, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-14 16:00:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-14 15:00:07', NULL),
(278, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-14 20:22:00', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-14 19:22:00', NULL),
(279, 'sistema', 'O Usuario Demo slr   fez login na data 2023-03-14 20:24:37', NULL, NULL, 64, 'vista', NULL, 64, '2023-03-14 19:24:37', NULL),
(280, 'sistema', 'O Usuario Demo slr   fez login na data 2023-03-14 20:52:06', NULL, NULL, 64, 'vista', NULL, 64, '2023-03-14 19:52:06', NULL),
(281, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-20 08:49:28', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-20 07:49:28', NULL),
(282, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-20 10:30:36', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-20 09:30:36', NULL),
(283, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-20 11:24:29', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-20 10:24:29', NULL),
(284, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-21 10:25:46', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-21 09:25:46', NULL),
(285, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-21 11:16:28', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-21 10:16:28', NULL),
(286, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-21 11:45:04', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-21 10:45:04', NULL),
(287, 'sistema', 'O Usuario Dânia  fez login na data 2023-03-22 09:09:39', NULL, NULL, 2, 'vista', NULL, 2, '2023-03-22 08:09:39', NULL),
(288, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-22 10:23:02', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-22 09:23:02', NULL),
(289, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-03-29 08:49:00', NULL, NULL, 62, 'vista', NULL, 62, '2023-03-29 06:49:00', NULL),
(290, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-06 11:02:23', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-06 09:02:23', NULL),
(291, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-06 14:39:13', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-06 12:39:13', NULL),
(292, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-13 14:36:13', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-13 12:36:13', NULL),
(293, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-25 08:19:04', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-25 06:19:04', NULL),
(294, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-25 08:26:54', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-25 06:26:54', NULL),
(295, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-25 08:37:36', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-25 06:37:36', NULL),
(296, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-25 08:37:40', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-25 06:37:40', NULL),
(297, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-25 09:09:00', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-25 07:09:00', NULL),
(298, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-25 09:41:01', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-25 07:41:01', NULL),
(299, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-25 10:23:01', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-25 08:23:01', NULL),
(300, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-28 10:09:03', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-28 08:09:03', NULL),
(301, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-28 10:11:36', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-28 08:11:36', NULL),
(302, 'sistema', 'O Usuario Dânia  fez login na data 2023-04-28 11:55:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-04-28 09:55:07', NULL),
(303, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-29 09:15:42', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-29 07:15:42', NULL),
(304, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-29 09:25:42', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-29 07:25:42', NULL),
(305, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-04-29 10:18:07', NULL, NULL, 62, 'vista', NULL, 62, '2023-04-29 08:18:07', NULL),
(306, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-05 19:53:01', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-05 17:53:01', NULL),
(307, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-15 08:32:00', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-15 06:32:00', NULL),
(308, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-15 08:32:46', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-15 06:32:46', NULL),
(309, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-15 11:25:35', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-15 09:25:35', NULL),
(310, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-18 23:20:48', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-18 21:20:48', NULL),
(311, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-22 14:31:17', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-22 12:31:17', NULL),
(312, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-22 16:49:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-22 14:49:07', NULL),
(313, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-23 12:15:19', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-23 10:15:19', NULL),
(314, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-24 08:07:46', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-24 06:07:46', NULL),
(315, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-24 08:20:50', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-24 06:20:50', NULL),
(316, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-24 08:49:48', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-24 06:49:48', NULL),
(317, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-24 10:34:01', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-24 08:34:01', NULL),
(318, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-24 10:53:14', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-24 08:53:14', NULL),
(319, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-24 14:21:05', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-24 12:21:05', NULL),
(320, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-24 14:21:57', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-24 12:21:57', NULL),
(321, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-25 09:11:57', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-25 07:11:57', NULL),
(322, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-25 09:49:41', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-25 07:49:41', NULL),
(323, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-25 10:54:12', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-25 08:54:12', NULL),
(324, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-25 14:25:35', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-25 12:25:35', NULL),
(325, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 13:22:02', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 11:22:02', NULL),
(326, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-31 14:17:08', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-31 12:17:08', NULL),
(327, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 14:35:45', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 12:35:45', NULL),
(328, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 14:36:03', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 12:36:03', NULL),
(329, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 14:58:16', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 12:58:16', NULL),
(330, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 15:28:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 13:28:07', NULL),
(331, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 15:28:43', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 13:28:43', NULL),
(332, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 16:10:34', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 14:10:34', NULL),
(333, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 16:13:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 14:13:07', NULL),
(334, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-05-31 16:26:52', NULL, NULL, 62, 'vista', NULL, 62, '2023-05-31 14:26:52', NULL),
(335, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 17:08:21', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 15:08:21', NULL),
(336, 'sistema', 'O Usuario Dânia  fez login na data 2023-05-31 17:17:10', NULL, NULL, 2, 'vista', NULL, 2, '2023-05-31 15:17:10', NULL),
(337, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-01 13:04:45', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-01 11:04:45', NULL),
(338, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-01 13:46:24', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-01 11:46:24', NULL),
(339, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-01 14:06:42', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-01 12:06:42', NULL),
(340, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-06 09:52:40', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-06 07:52:40', NULL),
(341, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-11 17:39:01', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-11 15:39:01', NULL),
(342, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-13 14:27:46', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-13 12:27:46', NULL),
(343, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-14 12:22:22', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-14 10:22:22', NULL),
(344, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-22 09:27:47', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-22 08:27:47', NULL),
(345, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-22 11:41:51', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-22 10:41:51', NULL),
(346, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-22 11:57:15', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-22 10:57:15', NULL),
(347, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-22 12:08:02', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-22 11:08:02', NULL),
(348, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-23 08:34:35', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-23 07:34:35', NULL),
(349, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-23 12:06:13', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-23 11:06:13', NULL),
(350, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-23 12:19:51', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-23 11:19:51', NULL),
(351, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-23 12:22:10', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-23 11:22:10', NULL),
(352, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-24 08:33:06', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-24 07:33:06', NULL),
(353, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-24 08:37:13', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-24 07:37:13', NULL);
INSERT INTO `notificacoes` (`id`, `tipo`, `descricao`, `data`, `ultimo_visto`, `destinatario_id`, `estado`, `prioridade`, `registado_id`, `created_at`, `updated_at`) VALUES
(354, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-24 08:39:16', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-24 07:39:16', NULL),
(355, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-24 08:50:45', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-24 07:50:45', NULL),
(356, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-24 08:57:26', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-24 07:57:26', NULL),
(357, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-27 09:07:23', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-27 08:07:23', NULL),
(358, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-27 15:39:07', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-27 14:39:07', NULL),
(359, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-27 16:17:40', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-27 15:17:40', NULL),
(360, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-28 14:34:19', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-28 13:34:19', NULL),
(361, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-29 07:49:59', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-29 06:49:59', NULL),
(362, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-29 08:02:20', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-29 07:02:20', NULL),
(363, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-29 09:06:37', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-29 08:06:37', NULL),
(364, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-29 15:46:36', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-29 14:46:36', NULL),
(365, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-29 16:49:49', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-29 15:49:49', NULL),
(366, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-29 16:53:40', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-29 15:53:40', NULL),
(367, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-29 16:59:08', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-29 15:59:08', NULL),
(368, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-29 21:47:01', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-29 20:47:01', NULL),
(369, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-29 21:47:15', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-29 20:47:15', NULL),
(370, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-29 22:16:43', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-29 21:16:43', NULL),
(371, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-29 22:38:51', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-29 21:38:51', NULL),
(372, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-30 08:26:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-30 07:26:07', NULL),
(373, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-30 08:45:27', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-30 07:45:27', NULL),
(374, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-06-30 14:02:42', NULL, NULL, 62, 'vista', NULL, 62, '2023-06-30 13:02:42', NULL),
(375, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-30 15:34:22', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-30 14:34:22', NULL),
(376, 'sistema', 'O Usuario Dânia  fez login na data 2023-06-30 15:36:27', NULL, NULL, 2, 'vista', NULL, 2, '2023-06-30 14:36:27', NULL),
(377, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-07-17 17:21:05', NULL, NULL, 62, 'vista', NULL, 62, '2023-07-17 16:21:05', NULL),
(378, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-20 13:14:57', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-20 12:14:57', NULL),
(379, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-20 13:53:45', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-20 12:53:45', NULL),
(380, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-20 14:32:10', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-20 13:32:10', NULL),
(381, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-20 14:35:26', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-20 13:35:26', NULL),
(382, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-21 08:45:53', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-21 07:45:53', NULL),
(383, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-07-21 13:18:33', NULL, NULL, 62, 'vista', NULL, 62, '2023-07-21 12:18:33', NULL),
(384, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-21 14:53:51', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-21 13:53:51', NULL),
(385, 'sistema', 'O Usuario Dânia  fez login na data 2023-07-21 15:40:14', NULL, NULL, 2, 'vista', NULL, 2, '2023-07-21 14:40:14', NULL),
(386, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-07-28 07:25:22', NULL, NULL, 62, 'vista', NULL, 62, '2023-07-28 06:25:22', NULL),
(387, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-21 16:26:32', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-21 15:26:32', NULL),
(388, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-21 16:39:42', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-21 15:39:42', NULL),
(389, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-21 17:04:20', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-21 16:04:20', NULL),
(390, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-22 08:15:35', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-22 07:15:35', NULL),
(391, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-22 10:17:09', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-22 09:17:09', NULL),
(392, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-08-22 12:02:59', NULL, NULL, 62, 'vista', NULL, 62, '2023-08-22 11:02:59', NULL),
(393, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-22 12:07:03', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-22 11:07:03', NULL),
(394, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-22 12:15:32', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-22 11:15:32', NULL),
(395, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-23 08:54:07', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-23 07:54:07', NULL),
(396, 'sistema', 'O Usuario Dânia  fez login na data 2023-08-29 16:48:47', NULL, NULL, 2, 'vista', NULL, 2, '2023-08-29 15:48:47', NULL),
(397, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-08-29 17:02:14', NULL, NULL, 62, 'vista', NULL, 62, '2023-08-29 16:02:14', NULL),
(398, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-06 15:22:15', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-06 14:22:15', NULL),
(399, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-12 10:57:48', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-12 09:57:48', NULL),
(400, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-18 09:02:52', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-18 08:02:52', NULL),
(401, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-18 14:27:59', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-18 13:27:59', NULL),
(402, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-19 15:41:38', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-19 14:41:38', NULL),
(403, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-22 14:33:56', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-22 13:33:56', NULL),
(404, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-22 14:38:13', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-22 13:38:13', NULL),
(405, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-26 16:29:09', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-26 15:29:09', NULL),
(406, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-27 12:18:36', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-27 11:18:36', NULL),
(407, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-27 12:26:58', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-27 11:26:58', NULL),
(408, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-27 12:45:29', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-27 11:45:29', NULL),
(409, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-27 14:15:31', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-27 13:15:31', NULL),
(410, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-27 14:15:32', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-27 13:15:32', NULL),
(411, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-27 14:55:54', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-27 13:55:54', NULL),
(412, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-27 17:08:12', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-27 16:08:12', NULL),
(413, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-27 17:15:16', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-27 16:15:16', NULL),
(414, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-28 07:56:26', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-28 06:56:26', NULL),
(415, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-28 08:40:53', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-28 07:40:53', NULL),
(416, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-28 09:27:02', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-28 08:27:02', NULL),
(417, 'sistema', 'O Usuario Dânia  fez login na data 2023-09-28 13:06:39', NULL, NULL, 2, 'vista', NULL, 2, '2023-09-28 12:06:39', NULL),
(418, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-09-28 14:09:08', NULL, NULL, 62, 'vista', NULL, 62, '2023-09-28 13:09:08', NULL),
(419, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-13 16:27:09', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-13 15:27:09', NULL),
(420, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-16 08:55:01', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-16 07:55:01', NULL),
(421, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-19 14:37:05', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-19 13:37:05', NULL),
(422, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-19 16:13:59', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-19 15:13:59', NULL),
(423, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-20 08:26:28', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-20 07:26:28', NULL),
(424, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-20 08:50:00', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-20 07:50:00', NULL),
(425, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-20 17:15:22', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-20 16:15:22', NULL),
(426, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-21 11:16:56', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-21 10:16:56', NULL),
(427, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-21 16:17:59', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-21 15:17:59', NULL),
(428, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-23 08:46:33', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-23 07:46:33', NULL),
(429, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-23 14:32:12', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-23 13:32:12', NULL),
(430, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-23 15:16:07', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-23 14:16:07', NULL),
(431, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-24 09:21:16', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-24 08:21:16', NULL),
(432, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-24 09:23:11', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-24 08:23:11', NULL),
(433, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-24 14:13:46', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-24 13:13:46', NULL),
(434, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-24 15:29:15', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-24 14:29:15', NULL),
(435, 'sistema', 'O Usuario Dânia  fez login na data 2023-10-24 17:12:34', NULL, NULL, 2, 'vista', NULL, 2, '2023-10-24 16:12:34', NULL),
(436, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-27 10:17:06', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-27 09:17:06', NULL),
(437, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-28 21:45:42', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-28 20:45:42', NULL),
(438, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-10-31 16:04:49', NULL, NULL, 62, 'vista', NULL, 62, '2023-10-31 16:04:49', NULL),
(439, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-01 09:05:50', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-01 09:05:50', NULL),
(440, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-23 11:47:40', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-23 11:47:40', NULL),
(441, 'sistema', 'O Usuario Dânia  fez login na data 2023-11-24 10:58:51', NULL, NULL, 2, 'vista', NULL, 2, '2023-11-24 10:58:51', NULL),
(442, 'sistema', 'O Usuario Dânia  fez login na data 2023-11-24 14:47:37', NULL, NULL, 2, 'vista', NULL, 2, '2023-11-24 14:47:37', NULL),
(443, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-24 15:07:55', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-24 15:07:55', NULL),
(444, 'sistema', 'O Usuario Dânia  fez login na data 2023-11-24 15:59:32', NULL, NULL, 2, 'vista', NULL, 2, '2023-11-24 15:59:32', NULL),
(445, 'sistema', 'O Usuario Dânia  fez login na data 2023-11-27 08:02:21', NULL, NULL, 2, 'vista', NULL, 2, '2023-11-27 08:02:21', NULL),
(446, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-27 08:32:00', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-27 08:32:00', NULL),
(447, 'sistema', 'O Usuario Dânia  fez login na data 2023-11-27 10:29:18', NULL, NULL, 2, 'vista', NULL, 2, '2023-11-27 10:29:18', NULL),
(448, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-27 11:06:36', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-27 11:06:36', NULL),
(449, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-28 08:42:03', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-28 08:42:03', NULL),
(450, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-29 11:19:51', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-29 11:19:51', NULL),
(451, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-11-29 14:58:47', NULL, NULL, 62, 'vista', NULL, 62, '2023-11-29 14:58:47', NULL),
(452, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-05 08:24:51', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-05 08:24:51', NULL),
(453, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-06 15:14:45', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-06 15:14:45', NULL),
(454, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-14 13:41:54', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-14 13:41:54', NULL),
(455, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-19 10:25:58', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-19 10:25:58', NULL),
(456, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-19 10:59:21', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-19 10:59:21', NULL),
(457, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-19 11:04:11', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-19 11:04:11', NULL),
(458, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-19 11:12:57', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-19 11:12:57', NULL),
(459, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-20 09:55:50', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-20 09:55:50', NULL),
(460, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-20 10:27:59', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-20 10:27:59', NULL),
(461, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-20 12:21:25', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-20 12:21:25', NULL),
(462, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-20 14:56:46', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-20 14:56:46', NULL),
(463, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-20 15:06:28', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-20 15:06:28', NULL),
(464, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-20 16:29:34', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-20 16:29:34', NULL),
(465, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-20 16:49:09', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-20 16:49:09', NULL),
(466, 'sistema', 'O Usuario Dânia  fez login na data 2023-12-20 17:09:05', NULL, NULL, 2, 'vista', NULL, 2, '2023-12-20 17:09:05', NULL),
(467, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2023-12-28 17:05:21', NULL, NULL, 62, 'vista', NULL, 62, '2023-12-28 17:05:21', NULL),
(468, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-04 16:30:11', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-04 16:30:11', NULL),
(469, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-05 10:24:06', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-05 10:24:06', NULL),
(470, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-05 10:24:30', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-05 10:24:30', NULL),
(471, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-05 11:18:36', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-05 11:18:36', NULL),
(472, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-06 09:05:14', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-06 09:05:14', NULL),
(473, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-06 09:49:16', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-06 09:49:16', NULL),
(474, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-06 09:49:27', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-06 09:49:27', NULL),
(475, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-08 10:59:46', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-08 10:59:46', NULL),
(476, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-08 14:50:53', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-08 14:50:53', NULL),
(477, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-15 08:26:50', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-15 08:26:50', NULL),
(478, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-18 15:54:03', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-18 15:54:03', NULL),
(479, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-18 15:55:16', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-18 15:55:16', NULL),
(480, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-29 09:40:43', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-29 09:40:43', NULL),
(481, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-29 11:18:57', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-29 11:18:57', NULL),
(482, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-29 11:50:14', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-29 11:50:14', NULL),
(483, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-29 11:52:20', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-29 11:52:20', NULL),
(484, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-29 12:05:15', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-29 12:05:15', NULL),
(485, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-29 14:28:43', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-29 14:28:43', NULL),
(486, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-29 14:49:38', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-29 14:49:38', NULL),
(487, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-30 11:00:57', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-30 11:00:57', NULL),
(488, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-30 15:09:53', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-30 15:09:53', NULL),
(489, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-30 16:00:15', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-30 16:00:15', NULL),
(490, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-01-30 16:08:55', NULL, NULL, 62, 'vista', NULL, 62, '2024-01-30 16:08:55', NULL),
(491, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-31 14:42:33', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-31 14:42:33', NULL),
(492, 'sistema', 'O Usuario Dânia  fez login na data 2024-01-31 14:56:11', NULL, NULL, 2, 'vista', NULL, 2, '2024-01-31 14:56:11', NULL),
(493, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-01 08:35:56', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-01 08:35:56', NULL),
(494, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-01 09:35:00', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-01 09:35:00', NULL),
(495, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-01 14:16:29', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-01 14:16:29', NULL),
(496, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-01 16:39:53', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-01 16:39:53', NULL),
(497, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-02 08:17:59', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-02 08:17:59', NULL),
(498, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-02 08:27:15', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-02 08:27:15', NULL),
(499, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-02 09:55:16', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-02 09:55:16', NULL),
(500, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-02 10:25:02', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-02 10:25:02', NULL),
(501, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-05 10:51:10', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-05 10:51:10', NULL),
(502, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-05 10:51:12', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-05 10:51:12', NULL),
(503, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-05 14:26:08', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-05 14:26:08', NULL),
(504, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-05 15:37:57', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-05 15:37:57', NULL),
(505, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-05 15:48:01', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-05 15:48:01', NULL),
(506, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-05 15:48:42', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-05 15:48:42', NULL),
(507, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-05 15:58:22', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-05 15:58:22', NULL),
(508, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-09 12:47:15', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-09 12:47:15', NULL),
(509, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-09 16:11:43', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-09 16:11:43', NULL),
(510, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-13 09:20:27', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-13 09:20:27', NULL),
(511, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-13 10:18:36', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-13 10:18:36', NULL),
(512, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-14 09:54:38', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-14 09:54:38', NULL),
(513, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-14 15:57:23', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-14 15:57:23', NULL),
(514, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-19 10:02:29', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-19 10:02:29', NULL),
(515, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-20 08:35:42', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-20 08:35:42', NULL),
(516, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-21 16:56:38', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-21 16:56:38', NULL),
(517, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-22 15:42:50', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-22 15:42:50', NULL),
(518, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-22 15:45:12', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-22 15:45:12', NULL),
(519, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-22 16:28:52', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-22 16:28:52', NULL),
(520, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-22 16:31:47', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-22 16:31:47', NULL),
(521, 'sistema', 'O Usuario Muhammad Younus  fez login na data 2024-02-22 16:37:54', NULL, NULL, 62, 'vista', NULL, 62, '2024-02-22 16:37:54', NULL),
(522, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-22 16:41:19', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-22 16:41:19', NULL),
(523, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-23 08:35:46', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-23 08:35:46', NULL),
(524, 'sistema', 'O Usuario Dânia  fez login na data 2024-02-23 11:09:24', NULL, NULL, 2, 'vista', NULL, 2, '2024-02-23 11:09:24', NULL),
(525, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2024-03-04 09:00:13', NULL, NULL, 65, 'vista', NULL, 65, '2024-03-04 07:00:13', NULL),
(526, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2024-03-04 09:00:34', NULL, NULL, 65, 'vista', NULL, 65, '2024-03-04 07:00:34', NULL),
(527, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2024-03-04 09:00:45', NULL, NULL, 65, 'vista', NULL, 65, '2024-03-04 07:00:45', NULL),
(528, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2024-03-04 09:00:53', NULL, NULL, 65, 'vista', NULL, 65, '2024-03-04 07:00:53', NULL),
(529, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2024-03-04 09:01:20', NULL, NULL, 65, 'vista', NULL, 65, '2024-03-04 07:01:20', NULL),
(530, 'sistema', 'O Usuario Osvaldo Banze  fez login na data 2024-03-04 09:27:47', NULL, NULL, 65, 'vista', NULL, 65, '2024-03-04 07:27:47', NULL),
(531, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-10 14:06:21', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-10 13:06:21', NULL),
(532, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-11 05:11:31', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-11 04:11:31', NULL),
(533, 'sistema', 'O Usuario Secretaria  fez login na data 2024-10-11 06:46:29', NULL, NULL, 67, 'vista', NULL, 67, '2024-10-11 05:46:29', NULL),
(534, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-12 06:11:18', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-12 05:11:18', NULL),
(535, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-14 06:28:12', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-14 05:28:12', NULL),
(536, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-15 06:16:51', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-15 05:16:51', NULL),
(537, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-16 05:49:37', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-16 04:49:37', NULL),
(538, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-17 05:43:22', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-17 04:43:22', NULL),
(539, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-18 05:44:18', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-18 04:44:18', NULL),
(540, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-22 06:33:36', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-22 05:33:36', NULL),
(541, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-23 06:46:44', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-23 05:46:44', NULL),
(542, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-26 07:06:16', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-26 06:06:16', NULL),
(543, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-28 06:19:51', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-28 06:19:51', NULL),
(544, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-29 05:30:55', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-29 05:30:55', NULL),
(545, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-10-30 05:58:30', NULL, NULL, 66, 'vista', NULL, 66, '2024-10-30 05:58:30', NULL),
(546, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-09 06:21:35', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-09 06:21:35', NULL),
(547, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-11 06:11:05', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-11 06:11:05', NULL),
(548, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-11 06:14:42', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-11 06:14:42', NULL),
(549, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-11 06:14:42', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-11 06:14:42', NULL),
(550, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-12 05:20:31', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-12 05:20:31', NULL),
(551, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-14 06:54:53', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-14 06:54:53', NULL),
(552, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-16 06:19:08', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-16 06:19:08', NULL),
(553, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-18 06:11:15', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-18 06:11:15', NULL),
(554, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-19 05:55:30', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-19 05:55:30', NULL),
(555, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-20 05:55:08', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-20 05:55:08', NULL),
(556, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-21 06:03:53', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-21 06:03:53', NULL),
(557, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-22 05:31:49', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-22 05:31:49', NULL),
(558, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-22 05:31:50', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-22 05:31:50', NULL),
(559, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-23 06:30:42', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-23 06:30:42', NULL),
(560, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-25 05:56:58', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-25 05:56:58', NULL),
(561, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-26 06:02:03', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-26 06:02:03', NULL),
(562, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-27 06:02:32', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-27 06:02:32', NULL),
(563, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-28 05:28:40', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-28 05:28:40', NULL),
(564, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-29 07:19:31', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-29 07:19:31', NULL),
(565, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-11-30 06:16:29', NULL, NULL, 66, 'vista', NULL, 66, '2024-11-30 06:16:29', NULL),
(566, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-02 06:10:00', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-02 06:10:00', NULL),
(567, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-03 06:06:43', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-03 06:06:43', NULL),
(568, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-04 05:45:22', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-04 05:45:22', NULL),
(569, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-05 05:36:10', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-05 05:36:10', NULL),
(570, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-06 05:52:12', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-06 05:52:12', NULL),
(571, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-10 05:20:18', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-10 05:20:18', NULL),
(572, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-11 05:50:59', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-11 05:50:59', NULL),
(573, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-12 05:53:05', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-12 05:53:05', NULL),
(574, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-13 05:40:08', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-13 05:40:08', NULL),
(575, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-16 06:03:20', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-16 06:03:20', NULL),
(576, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-17 06:13:21', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-17 06:13:21', NULL),
(577, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-18 05:52:53', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-18 05:52:53', NULL),
(578, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-18 05:52:53', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-18 05:52:53', NULL),
(579, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-20 05:52:22', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-20 05:52:22', NULL),
(580, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-21 08:34:56', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-21 08:34:56', NULL),
(581, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2024-12-30 05:26:32', NULL, NULL, 66, 'vista', NULL, 66, '2024-12-30 05:26:32', NULL),
(582, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-02 07:54:57', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-02 07:54:57', NULL),
(583, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-03 06:02:55', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-03 06:02:55', NULL),
(584, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-06 05:27:50', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-06 05:27:50', NULL),
(585, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-07 06:04:47', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-07 06:04:47', NULL),
(586, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-08 05:53:45', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-08 05:53:45', NULL),
(587, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-10 12:02:56', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-10 12:02:56', NULL),
(588, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-10 15:20:39', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-10 15:20:39', NULL),
(589, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-11 05:52:58', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-11 05:52:58', NULL),
(590, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-16 05:57:10', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-16 05:57:10', NULL),
(591, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-17 06:06:45', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-17 06:06:45', NULL),
(592, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-18 08:03:47', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-18 08:03:47', NULL),
(593, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-20 05:47:32', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-20 05:47:32', NULL),
(594, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-21 06:04:03', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-21 06:04:03', NULL),
(595, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-23 05:41:43', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-23 05:41:43', NULL),
(596, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-24 05:47:24', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-24 05:47:24', NULL),
(597, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-25 06:15:13', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-25 06:15:13', NULL),
(598, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-27 06:14:45', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-27 06:14:45', NULL),
(599, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-28 06:08:34', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-28 06:08:34', NULL),
(600, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-29 06:27:43', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-29 06:27:43', NULL),
(601, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-29 06:27:43', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-29 06:27:43', NULL),
(602, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-01-31 06:23:48', NULL, NULL, 66, 'vista', NULL, 66, '2025-01-31 06:23:48', NULL),
(603, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-01 05:50:29', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-01 05:50:29', NULL),
(604, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-04 06:33:53', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-04 06:33:53', NULL),
(605, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-04 12:15:31', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-04 12:15:31', NULL),
(606, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-05 06:04:19', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-05 06:04:19', NULL),
(607, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-06 05:56:17', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-06 05:56:17', NULL),
(608, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-07 06:02:36', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-07 06:02:36', NULL),
(609, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-08 06:17:45', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-08 06:17:45', NULL),
(610, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-10 06:05:22', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-10 06:05:22', NULL),
(611, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-11 06:04:09', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-11 06:04:09', NULL),
(612, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-12 06:05:20', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-12 06:05:20', NULL),
(613, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-12 06:05:42', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-12 06:05:42', NULL),
(614, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-13 05:53:03', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-13 05:53:03', NULL),
(615, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-14 06:19:10', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-14 06:19:10', NULL),
(616, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-15 07:07:55', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-15 07:07:55', NULL),
(617, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-18 06:24:14', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-18 06:24:14', NULL),
(618, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-19 07:01:45', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-19 07:01:45', NULL),
(619, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-20 06:30:21', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-20 06:30:21', NULL),
(620, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-22 06:53:34', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-22 06:53:34', NULL),
(621, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-24 06:49:54', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-24 06:49:54', NULL),
(622, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-24 14:51:16', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-24 14:51:16', NULL),
(623, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-26 06:37:26', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-26 06:37:26', NULL),
(624, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-27 06:05:20', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-27 06:05:20', NULL),
(625, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-02-28 06:46:04', NULL, NULL, 66, 'vista', NULL, 66, '2025-02-28 06:46:04', NULL),
(626, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-01 06:18:42', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-01 06:18:42', NULL),
(627, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-03 06:46:43', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-03 06:46:43', NULL),
(628, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-05 06:02:17', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-05 06:02:17', NULL),
(629, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-05 06:02:27', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-05 06:02:27', NULL),
(630, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-11 06:09:57', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-11 06:09:57', NULL),
(631, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-15 06:22:51', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-15 06:22:51', NULL),
(632, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-17 06:29:53', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-17 06:29:53', NULL),
(633, 'sistema', 'O Usuario Onésimo Metro  fez login na data 2025-03-17 07:46:49', NULL, NULL, 68, 'vista', NULL, 68, '2025-03-17 07:46:49', NULL),
(634, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-18 06:47:47', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-18 06:47:47', NULL),
(635, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-18 12:43:17', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-18 12:43:17', NULL),
(636, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-20 06:41:40', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-20 06:41:40', NULL),
(637, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-24 12:21:32', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-24 12:21:32', NULL),
(638, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-26 06:00:13', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-26 06:00:13', NULL),
(639, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-03-27 06:46:21', NULL, NULL, 66, 'vista', NULL, 66, '2025-03-27 06:46:21', NULL),
(640, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-01 06:11:15', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-01 05:11:15', NULL),
(641, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-02 06:31:22', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-02 05:31:22', NULL),
(642, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-08 06:31:35', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-08 05:31:35', NULL),
(643, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-10 06:51:38', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-10 05:51:38', NULL),
(644, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-14 08:33:17', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-14 07:33:17', NULL),
(645, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-15 06:21:22', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-15 05:21:22', NULL),
(646, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-17 06:09:03', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-17 05:09:03', NULL),
(647, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-21 06:34:36', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-21 05:34:36', NULL),
(648, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-22 07:36:50', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-22 06:36:50', NULL),
(649, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-23 07:15:10', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-23 06:15:10', NULL),
(650, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-24 06:22:30', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-24 05:22:30', NULL),
(651, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-25 06:47:16', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-25 05:47:16', NULL),
(652, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-28 07:05:15', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-28 06:05:15', NULL),
(653, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-04-29 06:38:36', NULL, NULL, 66, 'vista', NULL, 66, '2025-04-29 05:38:36', NULL),
(654, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-06 09:41:29', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-06 08:41:29', NULL),
(655, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-08 06:56:40', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-08 05:56:40', NULL),
(656, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-09 07:04:30', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-09 06:04:30', NULL),
(657, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-12 08:42:59', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-12 07:42:59', NULL),
(658, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-12 12:22:02', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-12 11:22:02', NULL),
(659, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-13 06:46:59', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-13 05:46:59', NULL),
(660, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-15 08:10:59', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-15 07:10:59', NULL),
(661, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-19 06:53:25', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-19 05:53:25', NULL),
(662, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-20 10:27:03', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-20 09:27:03', NULL),
(663, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-21 13:18:44', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-21 12:18:44', NULL),
(664, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-24 06:42:58', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-24 05:42:58', NULL),
(665, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-27 08:01:10', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-27 07:01:10', NULL),
(666, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-05-29 07:06:58', NULL, NULL, 66, 'vista', NULL, 66, '2025-05-29 06:06:58', NULL),
(667, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-04 07:53:21', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-04 06:53:21', NULL),
(668, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-12 09:21:06', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-12 08:21:06', NULL),
(669, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-17 07:42:02', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-17 06:42:02', NULL),
(670, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-19 06:17:05', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-19 05:17:05', NULL),
(671, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-20 06:15:33', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-20 05:15:33', NULL),
(672, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-21 07:02:11', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-21 06:02:11', NULL),
(673, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-23 09:24:22', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-23 08:24:22', NULL),
(674, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-06-26 12:25:06', NULL, NULL, 66, 'vista', NULL, 66, '2025-06-26 11:25:06', NULL),
(675, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-01 07:58:36', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-01 06:58:36', NULL),
(676, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-04 08:02:17', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-04 07:02:17', NULL),
(677, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-05 07:08:42', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-05 06:08:42', NULL),
(678, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-07 07:08:51', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-07 06:08:51', NULL),
(679, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-08 07:39:18', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-08 06:39:18', NULL),
(680, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-11 07:42:10', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-11 06:42:10', NULL),
(681, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-14 13:13:29', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-14 12:13:29', NULL),
(682, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-17 06:51:56', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-17 05:51:56', NULL),
(683, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-18 08:13:12', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-18 07:13:12', NULL),
(684, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-24 09:20:56', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-24 08:20:56', NULL),
(685, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-25 08:15:31', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-25 07:15:31', NULL),
(686, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-28 08:00:21', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-28 07:00:21', NULL),
(687, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-30 09:35:40', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-30 08:35:40', NULL),
(688, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-07-31 12:19:31', NULL, NULL, 66, 'vista', NULL, 66, '2025-07-31 11:19:31', NULL),
(689, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-08 06:59:59', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-08 05:59:59', NULL),
(690, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-08 07:07:54', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-08 06:07:54', NULL),
(691, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-13 06:13:53', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-13 05:13:53', NULL),
(692, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-14 06:07:56', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-14 05:07:56', NULL),
(693, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-18 06:16:57', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-18 05:16:57', NULL),
(694, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-18 12:23:49', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-18 11:23:49', NULL),
(695, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-08-30 08:48:57', NULL, NULL, 66, 'vista', NULL, 66, '2025-08-30 07:48:57', NULL),
(696, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-04 12:32:54', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-04 11:32:54', NULL);
INSERT INTO `notificacoes` (`id`, `tipo`, `descricao`, `data`, `ultimo_visto`, `destinatario_id`, `estado`, `prioridade`, `registado_id`, `created_at`, `updated_at`) VALUES
(697, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-06 06:41:21', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-06 05:41:21', NULL),
(698, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-11 09:11:19', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-11 08:11:19', NULL),
(699, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-15 09:26:38', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-15 08:26:38', NULL),
(700, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-17 09:03:09', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-17 08:03:09', NULL),
(701, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-20 06:49:16', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-20 05:49:16', NULL),
(702, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-22 06:52:44', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-22 05:52:44', NULL),
(703, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-24 07:46:54', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-24 06:46:54', NULL),
(704, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-26 08:11:21', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-26 07:11:21', NULL),
(705, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-29 08:33:39', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-29 07:33:39', NULL),
(706, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-09-30 09:24:19', NULL, NULL, 66, 'vista', NULL, 66, '2025-09-30 08:24:19', NULL),
(707, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-10-02 08:03:03', NULL, NULL, 66, 'vista', NULL, 66, '2025-10-02 07:03:03', NULL),
(708, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-10-06 08:22:45', NULL, NULL, 66, 'vista', NULL, 66, '2025-10-06 07:22:45', NULL),
(709, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-10-08 07:14:28', NULL, NULL, 66, 'vista', NULL, 66, '2025-10-08 06:14:28', NULL),
(710, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-10-10 08:54:46', NULL, NULL, 66, 'vista', NULL, 66, '2025-10-10 07:54:46', NULL),
(711, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-10-11 06:51:53', NULL, NULL, 66, 'vista', NULL, 66, '2025-10-11 05:51:53', NULL),
(712, 'sistema', 'O Usuario Grupo 1st floor  fez login na data 2025-10-13 06:26:54', NULL, NULL, 66, 'vista', NULL, 66, '2025-10-13 05:26:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(15) NOT NULL,
  `field` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `preference`
--

INSERT INTO `preference` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '10'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '-'),
(4, 'preference', 'soft_name', 'goBilling'),
(5, 'company', 'site_short_name', 'TesTop'),
(6, 'preference', 'percentage', '0'),
(7, 'preference', 'quantity', '0'),
(8, 'preference', 'date_format_type', 'dd-mm-yyyy'),
(9, 'company', 'company_name', 'Testop Salarios'),
(10, 'company', 'company_email', 'info@testop.co.mz'),
(11, 'company', 'company_phone', '847340800'),
(12, 'company', 'company_street', 'Malhangalene '),
(13, 'company', 'company_city', 'Maputo'),
(14, 'company', 'company_state', 'Mocambique'),
(15, 'company', 'company_zipCode', '10007'),
(16, 'company', 'company_country_id', 'Mozambique'),
(17, 'company', 'dflt_lang', 'po'),
(18, 'company', 'dflt_currency_id', '3'),
(19, 'company', 'sates_type_id', '1'),
(20, 'company', 'company_nuit', '400863954'),
(23, 'payroll', 'tipo_salario', 'por_data'),
(24, 'payroll', 'dia_inicio', '15'),
(25, 'payroll', 'dia_fim', '14'),
(26, 'payroll', ' h_semana', '48'),
(22, 'preference', 'date_version', '26032019'),
(21, 'preference', 'version', '0.993');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(100) NOT NULL,
  `real_name` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `empresa_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `real_name`, `role_id`, `phone`, `email`, `inactive`, `remember_token`, `created_at`, `updated_at`, `empresa_id`) VALUES
(62, '$2y$10$eEC/VmwQ.66zsr4FKKhV8O9mTHFqwihhOR49c3pitSlZrrU6j0epS', 'Admin Testop', 1, '824626310', 'younus@autobas.co.mz', 0, 'xcn1mBIlmms9udZLhRQELGvRlAA7UlD7iX7twtrCm5sCtSjbyfzz1NpBxdVF', '2022-03-25 21:54:50', '2024-02-22 16:37:41', 0),
(66, '$2y$10$PCVt4Irmek.8yezZjluBpODVOOrWmSbI714Nz9QatNFwh780EM1a6', 'Grupo 1st floor', 1, '21328057', 'grupo@testop.co.mz', 0, NULL, '2024-10-10 07:58:31', '2024-10-10 07:58:31', 1),
(67, '$2y$10$Ywu8NiKpfExSj/N7mM2JMOj8Mb3rlHjSMz9f65amdDhqgJ/O3sHU6', 'Secretaria', 1, '21328057', 'secretaria@testop.co.mz', 0, NULL, '2024-10-11 06:46:18', '2024-10-11 06:46:18', 0),
(68, '$2y$10$bO4wAWmA/vsQUDwWeheTJ..iGLoVYoZYe6AewjWfYJ56OH6l0fyWC', 'Onésimo Metro', 1, '848938851', 'onesimometro@gmail.com', 0, NULL, '2025-03-17 07:46:37', '2025-03-17 07:46:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_empresa`
--
ALTER TABLE `cust_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cust_empresa_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cust_empresa`
--
ALTER TABLE `cust_empresa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=713;

--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
