-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2025 at 02:23 AM
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
-- Database: `grupotestop_archives`
--

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id`, `nome`, `removido`) VALUES
(1, 'INFORMATIICA', 0),
(2, 'COMERCIAL', 0),
(3, 'FINANCEIRO', 0),
(4, 'RH', 0),
(5, 'PROCUREMENT', 0),
(6, 'PROJECTOS', 0),
(7, 'PRODUÇÃO', 0),
(8, 'QUALIDADE', 0),
(9, 'ARMAZEM', 0),
(10, 'TRANSPORTES', 0),
(11, 'INFRA-ESTRUTURA', 0),
(12, 'SECRETARIA', 0),
(13, 'CONTABILIDADE', 0),
(14, 'ADMINISTRAÇÃO', 0),
(15, 'PROENERGIA', 0),
(16, 'ASSUNTOS LEGAIS', 0),
(17, 'FINANCEIRO', 0),
(18, 'Informática', 1),
(19, 'SEGUROS ', 0),
(20, 'GARANTIAS', 0);

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
  `carta_logo` varchar(20) DEFAULT NULL,
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

INSERT INTO `empresa` (`id`, `nome`, `iniciais`, `cidade`, `observacoes`, `logo`, `carta_logo`, `removido`, `prefix_id`, `email`, `nuit`, `contacto`, `morada`, `conta_bancaria`, `excel_name_folha`) VALUES
(10, 'TES-TOP LDA', 'TT', 1, NULL, 'Testop.jpg', 'Testop.jpg', 0, 1, 'rh@testop.co.mz', '400670021', '21328056 ', 'AV. KARL MARX, Nº1877 R/C-MAPUTO', NULL, 'TESTOP_FOLHA_SALARIO.xlsx'),
(11, 'EA- ELECTRO ÁFRICA LDA', 'EA', 1, NULL, 'EA.png', 'EA.jpg', 0, 2, 'rh@electroafrica.co.mz', '400643741', '21421532  ', 'Rua Salipa norte  Nº37 , 1° Andar', NULL, 'ELECTROAFRICA_FOLHA_SALARIO.xlsx'),
(12, 'ELECTRO VERDE LDA', 'EV', 1, NULL, 'EV.png', 'EV.jpg', 0, 3, 'electroverde2016@gmail.com', '400633282', '21321672', 'Rua Salipa Norte Nr. 37 1º Andar, Bairro da Malhangalene, Maputo-Moçambique', NULL, 'ELECTROVERDE_FOLHA_SALARIO.xlsx'),
(13, 'MRCL LDA', 'MR', 13, NULL, 'MRCL.png', 'MRCL.jpg', 0, 4, NULL, NULL, NULL, NULL, NULL, 'MRCLLDA_FOLHA_SALARIO.xlsx'),
(14, 'REA LDA', 'REA', 1, NULL, 'REA.png', 'REA.jpg', 0, 6, NULL, NULL, NULL, NULL, NULL, 'GENERIC_FOLHA_SALARIO.xlsx'),
(15, 'MAS CONSTRUÇÕES LDA', 'MC', 1, NULL, 'MAS.png', 'mas.jpg', 0, 7, 'info@mas.co.mz', NULL, '+258 845643680', 'Bairro central, Rua Aveiro Nr. 25, R/C', NULL, 'GENERIC_FOLHA_SALARIO.xlsx'),
(16, 'Q99 LDA', 'Q99', 1, NULL, 'Q99.jpg', 'Q99.jpg', 0, 5, 'info@q99.co.mz', '400550761', NULL, 'Av. Karl Marx Nº 1978 1ºAndar Dtº Maputo', NULL, 'Q99SA_FOLHA_SALARIO.xlsx'),
(17, 'Khatry, Lda', 'KH', 13, NULL, NULL, NULL, 0, 4, NULL, '400553386', NULL, 'Karl Marx 1877, R/C', NULL, NULL),
(18, 'Daily Smile, Lda', 'DS', 13, NULL, NULL, NULL, 0, 4, NULL, '400673101', NULL, 'Karl Marx 1877, R/C', NULL, NULL),
(19, 'PC PAPELARIA CONTINENTE LDA', 'PC', 13, NULL, NULL, NULL, 0, 4, NULL, '401418822', NULL, 'Bairro Central A, Rua Salipa Norte, Nr. 37. Andar: RC', NULL, NULL),
(20, 'FUNAE', '', 1, NULL, NULL, NULL, 0, NULL, '', '', '', '', NULL, NULL),
(21, 'TESTOP Jv HOLLEY', 'TT jv HO', 1, NULL, NULL, NULL, 0, NULL, '', '', '', '', NULL, NULL),
(22, 'TESTOP JV POWTECH', 'TT JV PO', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(23, 'RK Consulting EI', 'RK', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(24, 'TESTOP Jv ZHENGHOU HONGLIANG CABLE', 'TT Jv ZH H', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(25, 'TESTOP JV VAJRANARAYANA POWER SERVICE PRIVATE, LDA', 'TT JV VP', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(26, 'Testop JV Zhongshan Dawn Lighting Technology co, Ltd', 'TT JV ZDLT', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(27, 'ELECTRO AFRICA,LIMITADA JV BONLE (FUZHOU) INTERNATIONAL CO.,LTD', 'EA.LDA e J', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(28, 'EA- Eletro Africa, Lda JV Tes - Top, Lda', 'EA.LDA JV ', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(29, 'MAS-Construcoes,Limitadas JV Tes-Top,Limitada', 'MASLDAJVTT', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(30, 'TESTOP JV CSR IMPEX PRIVATE, LIMITADA', 'TT JV CSRP', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(31, 'DEW - Dream Energy Wor, LDA', 'DEW', 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'TESTOP_FOLHA_SALARIO.xlsx'),
(32, 'AC - Afri Consultores, LDA', 'AC', 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'TESTOP_FOLHA_SALARIO.xlsx'),
(33, 'TAS - Trabalho Assistência  e Serviços, LDA', 'AC', 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'TESTOP_FOLHA_SALARIO.xlsx'),
(34, 'JV TES-TOP & POWTECH', 'JV TT P', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(35, 'TES-TOP', 'TT', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(36, 'ELECTRO AFRICA', 'EA', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(37, 'ELECTRO VERDE', 'EV', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(38, 'REA', 'REA', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL),
(39, 'MRCL JV Tes-Top, Limitada', 'MRCL JV TT', 1, NULL, NULL, NULL, 0, NULL, '', '', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movimento_arquivos`
--

CREATE TABLE `movimento_arquivos` (
  `id` int(11) NOT NULL,
  `arquivo_id` int(11) NOT NULL,
  `tipo_movimento` varchar(10) NOT NULL,
  `data` date NOT NULL,
  `responsavel` varchar(64) NOT NULL,
  `observacao` varchar(350) NOT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movimento_arquivos`
--

INSERT INTO `movimento_arquivos` (`id`, `arquivo_id`, `tipo_movimento`, `data`, `responsavel`, `observacao`, `removido`, `created_at`, `updated_at`) VALUES
(1, 9, 'entrada', '2024-01-09', 'Lenia Mindo', 'Protocolos de entrada das finanças', 0, '2024-01-09 06:34:04', '2024-01-09 06:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `pasta_arquivos`
--

CREATE TABLE `pasta_arquivos` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `referencia` varchar(30) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `anexo` varchar(80) DEFAULT NULL,
  `descricao` varchar(120) DEFAULT NULL,
  `observacao` varchar(120) DEFAULT NULL,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasta_arquivos`
--

INSERT INTO `pasta_arquivos` (`id`, `data`, `empresa_id`, `departamento_id`, `referencia`, `data_inicio`, `data_fim`, `anexo`, `descricao`, `observacao`, `removido`, `created_at`, `updated_at`) VALUES
(2, '2023-11-28', 10, 1, 'TT-INF-0001/2023', '2023-11-28', '2023-11-28', NULL, 'Bateria de UP\'S 10UND 12V-7.2A', 'Nao Funcional', 0, '2023-11-28 08:02:59', '2023-11-28 08:02:59'),
(3, '2023-11-28', 10, 1, 'TT-INF-0002/2023', '2023-11-28', '2023-11-28', NULL, 'Bateria de UP\'S 10UND 12V-7.2A', 'Nao Funcional', 0, '2023-11-28 08:03:42', '2023-11-28 08:03:42'),
(4, '2023-11-28', 10, 1, 'TT-INF-0003/2023', '2023-11-28', '2023-11-28', NULL, 'Bateria de UP\'S 13UND 12V-7.2A', 'Nao Funcional', 0, '2023-11-28 08:04:57', '2023-11-28 08:04:57'),
(7, '2024-01-05', 10, 12, 'TT-SEC-0001/2024', '2024-01-05', '2024-01-05', '6597fb2913675.jpg', '2 caixas -Jornais Mês de Junho a Dezembro 2023', '2 caixas -Jornais Mês de Junho a Dezembro 2023', 0, '2024-01-05 12:43:21', '2024-01-05 12:43:21'),
(8, '2024-01-08', 10, 1, 'TT-INF-0001/2024', '2024-01-08', '2024-01-08', NULL, 'Samsung Fax (IMP14), Serial Number : Z77FB8KDBF00Y8M, Model: SCX-3405F', 'Funcional.', 0, '2024-01-08 07:41:20', '2024-01-08 07:41:20'),
(9, '2024-01-09', 10, 16, 'TT-ASS-0001/2024', '2024-01-09', '2024-01-09', '659ce7ebe168a.jpg', 'Protocolos de entrada das finanças: Lenia Mindo DE JANEIRO -DEZEMBRO 2023', 'Protocolos de entrada das finanças: Lenia Mindo DE JANEIRO -DEZEMBRO 2023', 0, '2024-01-09 06:30:03', '2024-01-09 06:30:03'),
(10, '2024-06-13', 10, 13, 'TT-CON-0001/2024', '2024-06-13', '2024-06-13', NULL, 'Tes-Top  2023 caixa 1,2 e 3', 'Caixa 1 contem 14 pastas a contar de Janeiro a Abril 2023,', 1, '2024-06-13 08:22:03', '2024-06-13 08:22:03'),
(11, '2024-06-13', 10, 13, 'TT-CON-0002/2024', '2024-06-13', '2024-06-13', '666ab2785b755.png', 'Tes-Top  Caixa de Arquivos 2023', 'Caixa 1 com 14 pastas de Janeiro a Abril 2023.', 0, '2024-06-13 08:48:56', '2024-06-13 08:48:56'),
(12, '2024-06-13', 10, 13, 'TT-CON-0003/2024', '2024-06-13', '2024-06-13', '666ab57034c6a.png', 'Tes-Top  Caixa 2 Arquivos 2023', 'A Caixa contem 17 pastas de Maio a Setembro 2023.', 0, '2024-06-13 09:01:36', '2024-06-13 09:01:36'),
(13, '2024-06-13', 10, 13, 'TT-CON-0004/2024', '2024-06-13', '2024-06-13', '666ab61ac13e8.png', 'Tes-Top Caixa 3 Arquivos 2023', 'A Caixa contem 16  pastas de Setembro a Dezembro 2023.', 0, '2024-06-13 09:04:26', '2024-06-13 09:04:26'),
(14, '2024-06-13', 11, 13, 'EA-CON-0001/2024', '2024-06-13', '2024-06-13', '666ab6c5ace2c.png', 'E.A -Electro Africa  Caixa 4 Arquivos 2023', 'A Caixa contem 14 pastas 2023', 0, '2024-06-13 09:07:17', '2024-06-13 09:07:17'),
(15, '2024-06-13', 12, 13, 'EV-CON-0001/2024', '2024-06-13', '2024-06-13', '666aba388200d.png', 'Caixa 5 Arquivos 2022 / 2023', 'A caixa contem 12 pastas de 2022 / 2023', 0, '2024-06-13 09:22:00', '2024-06-13 09:22:00'),
(16, '2024-06-13', 11, 13, 'EA-CON-0002/2024', '2024-06-13', '2024-06-13', '666abb334dcfd.pdf', 'Caixa 6 Arquivos 2022', 'A Caixa contem 5 pastas 2022.', 0, '2024-06-13 09:26:11', '2024-06-13 09:26:11'),
(17, '2024-06-28', 11, 15, 'EA-PRO-0001/2024', '2021-03-01', '2022-05-13', '667e70920c4cf.pdf', 'Livros de Requisição de Fundos', 'Projecto Proenergia Lot05', 0, '2024-06-28 08:13:06', '2024-06-28 08:13:06'),
(18, '2024-06-28', 10, 15, 'TT-PRO-0001/2024', '2020-11-19', '2022-05-25', '667e74598cf30.pdf', 'Livros de Requisição Interna', 'Projecto Proenergia Lot05', 0, '2024-06-28 08:29:13', '2024-06-28 08:29:13'),
(19, '2024-06-28', 10, 15, 'TT-PRO-0001/2024', '2020-11-11', '2022-05-25', '667e756df2ee5.pdf', 'Livros de Requisição de Fundos', 'Projecto Proenergia Lot05', 0, '2024-06-28 08:33:50', '2024-06-28 08:33:50'),
(20, '2024-06-29', 10, 15, 'TT-PRO-0001/2024', '2021-12-01', '2023-06-28', '667fa9ef86891.pdf', 'Planos de abastecimentos, Recibos e comprovativo de Pagamentos', 'Projecto Proenergia Lot05', 0, '2024-06-29 06:30:07', '2024-06-29 06:30:07'),
(21, '2024-10-26', 10, 15, 'TT-PRO-0001/2024', '2024-10-26', '2024-10-26', '671cbb8a3c41a.pdf', 'Despesas Gerais do Projecto Proenergia Lot5', 'De Outubro de 2020 a Dezembro de 2021 ( Com 15 pastas de arquivo )', 0, '2024-10-26 09:51:06', '2024-10-26 09:51:06'),
(22, '2025-09-16', 10, 5, 'TT-PRO-0001/2025', '2025-09-16', '2025-09-16', '68c95df5d7433.pdf', 'Este é um arquivo do departamento de Procurement, Setembro 2025.', 'Este é um arquivo do departamento de Procurement, Setembro 2025.', 1, '2025-09-16 12:54:13', '2025-09-16 12:54:13'),
(23, '2025-09-16', 10, 5, 'TT-PRO-0001/2025', '2025-09-16', '2025-09-16', '68c95e7be07ec.pdf', 'Envio de 3 caixa com propostas nao submetidas a Ruanda', 'Envio de pastas para efeitos de arquivo', 0, '2025-09-16 12:56:27', '2025-09-16 12:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(60) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `real_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `inactive` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `armazem_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `user_registar` int(11) DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `fundo_de_maneio` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Nao\r\n1 - Sim',
  `seguros` int(11) NOT NULL DEFAULT 0,
  `modulo_abastecimento` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `email`, `picture`, `inactive`, `remember_token`, `phone`, `role_id`, `armazem_id`, `empresa_id`, `user_registar`, `user_update`, `departamento_id`, `fundo_de_maneio`, `seguros`, `modulo_abastecimento`, `created_at`, `updated_at`) VALUES
(1, NULL, '$2y$10$FhJ6Co9QmCNS0mPaOHgH2ueWQ/ToJeE9FOQWUndDIW55glTTu5EwO', 'Admin', 'demo@n3.co.mz', NULL, '0', 'blxx1hMfwJHABaYeCQpYtHUIUsCZswUoOu9tRmv5JWFVUsgd7QdzPYycAYWL', '8455225225', 1, NULL, 0, NULL, NULL, 14, 0, 0, 0, '2021-07-02 15:22:11', '2022-04-11 09:38:12'),
(83, NULL, '$2y$10$112jfly4Myvr10kH/AXaWehXkvPGna.cPIrZdbCF1b/aHM622nCbO', 'SADIA DAUD', 'financas@testop.co.mz', NULL, NULL, 'EQdAJdl9OujNXjntdxSbMu7tQqiMhVJ1iwwWuTJALk1qfqC9T8Ud9XAdHmTm', '21328056', 1, NULL, 0, NULL, NULL, 3, 1, 1, 0, '2022-04-11 17:12:27', '2023-07-06 14:25:56'),
(90, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Younus - Reports', 'younus@autobas.co.mz', NULL, NULL, 'aXwGUxcUl1FUFUig4g6DY5qeJJl7IfePIO5MGodr2YGuQKnO9eWShgeqL6yt', '877668513', 1, NULL, 1, NULL, NULL, 14, 0, 0, 0, '2022-04-14 17:31:32', '2023-11-09 09:17:25'),
(91, NULL, '$2y$10$PRrrPAAKBRRojPwuAixW6OlDjwDTqaBfLs7zDXaHTgOio2zO1UyxK', 'Admin Testop', 'testop@testop.co.mz', NULL, NULL, '9yreCMqBBUEt7wv6qYEVECbTHVI8L5f6Dt2yn0HixZtvb2rPnz2mx6wYfkiC', '824301030', 1, NULL, 0, NULL, NULL, 14, 1, 1, 0, '2022-04-14 17:34:17', '2023-10-13 14:59:36'),
(92, NULL, '$2y$10$OhZYqJ6ohNL3.g.joT/uHuwkWYIRAucYpUvi7K7W5OKe5sS/E9EkW', 'PANKAJ JEENTILAL', 'pankaj-jeentilal@hotmail.com', NULL, NULL, 'Q6KGiu1ZmWU7auMA1DPwfG239t6I2SSbROXS0aziqgjHQhq5hjPpHxKZDdpH', '842792540', 12, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-14 17:42:04', '2023-10-10 10:12:38'),
(93, NULL, '$2y$10$Sd8Qp3XoA1kvTdM/GTyOoOpMgfXG7zx6rP.nMHKXbjPJ/cncA9LTO', 'GILU NEMANE', 'rh.gilu@testop.co.mz', NULL, NULL, 'IqcuSy7s4sPRnYg42ZlunN2gr9gU0NHO2c4VZULqK30RwAdvh0IIGufTpGSW', '846517822', 14, NULL, 1, NULL, NULL, 4, 1, 1, 0, '2022-04-14 19:55:58', '2023-01-24 09:39:12'),
(95, NULL, '$2y$10$t97APMIhykQwUyKYJFv7Ve7QIVnAUibE78t96jCtLEVpuIw/8Atiu', 'NUNES PEDRO', 'it.nunes@q99.co.mz', NULL, NULL, 'hPI48Sci9t6RQIqATelWKW2fm85HnqYJT1gNHEdpPEoWF9erBvh6cF1fMbc9', '845877172', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:07:30', '2023-09-14 14:21:03'),
(96, NULL, '$2y$10$9qGVPyNK6gp5qcufAT2YCuYy5jDq2z9TJ9dp6.H3thX55BD2ZjzXS', 'Edson Paporo', 'it.paporo@q99.co.mz', NULL, NULL, 'ft8W7UHn0r1fwVmLiHfnulgn2JvIFSro4QadUvg1MG1Jj323TKh1WYF6nIxA', '848186229', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:08:31', '2023-11-08 07:52:42'),
(97, NULL, '$2y$10$uq8urFDJBmItiI47KVfxSOP1SBifukgeR1YpHqw45ucL9Mvioew5y', 'DANYA FREITAS', 'rh.danya@testop.co.mz', NULL, NULL, 'xTFw5JhjeM8SXscYpWYOECNHajvA5AzaOQ1xTIMfwvoRm0B70ZxRIop0oqrO', '847416408', 14, NULL, 1, NULL, NULL, 4, 0, 0, 0, '2022-04-14 20:12:00', '2023-05-04 08:12:38'),
(98, NULL, '$2y$10$ynzhCFsfSvtwUkfy46qjDubz5.wjV8jiK4.z45XXUI9csDZPDSL9S', 'LENA DOS SANTOS', 'rh.lena@testop.co.mz', NULL, NULL, 'FpwZ9tbLJ2jpH8e6C4KRS0XzHIqZTsHp8CprLhjXUBIcR6gHsetsc2xE9p7E', '829150694', 14, NULL, 1, NULL, NULL, 4, 0, 0, 0, '2022-04-14 21:06:40', '2023-11-03 10:26:04'),
(99, NULL, '$2y$10$b3k8sRW15ReLIdgsxP1hYeoyjSLVnGxNx0Zi8Rs9e7EMIaVu6DW6y', 'CHEILA QUILAMBO', 'rh.proenergia@testop.co.mz', NULL, NULL, 'vMJLo6pD8AQsmfpTrzxuWlvz9rh2SoOpSXGllIG4cZYeOASfPXoEOXwRkP6R', '869925390', 14, NULL, 1, NULL, NULL, 15, 1, 0, 0, '2022-04-14 21:08:20', '2022-04-30 16:55:34'),
(101, NULL, '$2y$10$vcv9n05B2JeCUCVy7SQ7Ju2LnVhriqpmHA3FYI4hFLEWK10p95hoi', 'MARCIA BATA', 'proenergia@testop.co.mz', NULL, NULL, '4vBRy6uzgSWPdJlZlO0rX5PMWv0MnDfzp5qJIb4hBL9Dh2quNRwuBDCXhAcJ', '863666967', 14, NULL, 1, NULL, NULL, 15, 1, 0, 0, '2022-04-14 21:22:55', '2023-11-16 12:46:38'),
(102, NULL, '$2y$10$eN69jZ5Lo3oRMemjpiLpWuEaUPyYCSTXXyaEtm8QWvFUwYw3a9N.y', 'ALBERTINA SALVADOR', 'procurement.albertina@testop.co.mz', NULL, NULL, NULL, '84 036 4156', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-04-22 20:30:13', '2023-11-01 11:24:13'),
(103, NULL, '$2y$10$IPpp6DEcCaeyX/IJ1v8rROBM5736I3CFiFsy8jQru8x5iGi1TF3Wy', 'FATIMA BIBI KARIM', 'financas.fatima@testop.co.mz', NULL, NULL, 'vali2h209NbnOYhb5CjE9GWTEVLJ48fUTAx1NV9247jOA7IKtt2GHkkduWtl', '84 673 1706', 1, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:35:16', '2023-09-05 10:51:25'),
(104, NULL, '$2y$10$CsS6LVfBsY/v3HKv6x1y/.6X5dZuYTXByHeZvuRA59oNCTRErIzZG', 'CARLOS SENDA', 'financas.carlos@testop.co.mz', NULL, NULL, 'hAnMWjBfTTU4GgtVS55Dw9tkaPkhHSdMrH1Q8W9tBx3QabjCIiwpUjQwyuzL', '84 633 8603', 1, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:38:12', '2023-11-02 15:32:18'),
(105, NULL, '$2y$10$AYd7Ry7Qxhu/xP9slhPLMuxgvGotJcvpzRVurbqEOWRkiC8y0vu7y', 'LUANA GOULAP', 'financas.luana@testop.co.mz', NULL, NULL, 'GY3bxQuYWDj8fz1FXh318tupTogW5H0MRcygjG0wDl6i9wgYUlXPUk8Oh3LM', '82 777 3545', 14, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:40:23', '2022-10-03 07:28:37'),
(106, NULL, '$2y$10$72Np6sRgkqeipkuNYt6j.eqvZszyZJsuwEMfllWd49rwPKRqfVaIG', 'RAYHAN KHALID', 'procurement.rayhan@testop.co.mz', NULL, NULL, NULL, '84 745 4545', 14, NULL, 1, NULL, NULL, 5, 1, 1, 0, '2022-04-22 20:43:09', '2022-04-22 20:43:21'),
(107, NULL, '$2y$10$FfIR6PJQpTgbgwgzVnnBiulXUYFfgV5Sjjc9sNTNARQcjby8b/7Q2', 'LEOPOLDO VALENTIM', 'procurement.valentim@testop.co.mz', NULL, NULL, NULL, '87 787 8634', 14, NULL, 0, NULL, NULL, 4, 1, 1, 0, '2022-04-22 20:44:48', '2022-04-22 20:45:06'),
(108, NULL, '$2y$10$mmHfqLmGwCrIq4ZGuETQFe1wkFIw2CnZg/KIPHq2JoYwLsnH7ZMYa', 'ADEEL DAUDE', 'infraestrutura.adeel@testop.co.mz', NULL, NULL, 'dm2rtoShyqlcG955xMAV5bWWBGa1jxQEdmibpMBkYEnUdOke40aezYGpDeMZ', '820059049', 14, NULL, 1, NULL, NULL, 11, 0, 0, 0, '2022-04-22 20:46:49', '2023-09-05 14:51:15'),
(109, NULL, '$2y$10$o2YTZPzrpsNC1oN0gnJvQe4w.yL1Jr2IYREMalt0YT2NELMD6QyEO', 'SIACA ADAMOGY', 'infraestrutura.siaca@testop.co.mz', NULL, NULL, 'z0p4EygLbaasvOXcQ0Ra9Q0bBg16Qe20vCkdlPYGYbBG3rrln0WBxZc7IgEN', '84 243 7566', 14, NULL, 1, NULL, NULL, 11, 0, 0, 0, '2022-04-22 20:50:24', '2023-10-27 08:10:40'),
(110, NULL, '$2y$10$k7pb62S9rX9o4Fom1vQvYeVUfY7I.2ft5k9GQoYveHCGXlftxjlIe', 'SILVESTRE GOVENE', 'transportes.proenergia@testop.co.mz', NULL, NULL, 'axIamyYzoH6h41zNS9gsDKQbpmXybACsVY8FXmc5gqTbPhDzH5xFmortprCn', '84 661 5116', 16, NULL, 1, NULL, NULL, 15, 0, 0, 1, '2022-04-22 20:52:18', '2023-10-30 16:56:33'),
(111, NULL, '$2y$10$YCGFQZbVhIqutt0nKvT2tuJ2udIC8LUnxmxevr41.rzsvGkbSzc0.', 'JONAS MAZIVE', 'transportes.jonas@testop.co.mz', NULL, NULL, 'EqRpKrjzJKBKpO6Km6oEILX2gqP6A8Z09115MAMmhX6qWORWa3OipxWFAQyL', '84 407 1823', 14, NULL, 1, NULL, NULL, 10, 0, 0, 1, '2022-04-22 20:54:24', '2023-11-12 18:59:48'),
(112, NULL, '$2y$10$vEcP2QhA9n5Jn9x1moh5wOPIvDbz/f6PvKE1me8U7SYbEdScmkPu2', 'ALEXANDRE SAIA', 'qualidade.saia@testop.co.mz', NULL, NULL, 'cyp4BRH0Xh46lx50HAcn7UzLV0ieynAEgvt2TGsEY1XgrC1Jx5DdgvZdt2AQ', '84 562 4028', 14, NULL, 1, NULL, NULL, 8, 0, 0, 0, '2022-04-22 20:56:20', '2023-10-24 08:13:22'),
(113, NULL, '$2y$10$ArabE5H5l/z4OqPC727kdunaFxJCmLImLF3wg9L4MFdiF67FWQKnO', 'ESMENIO ZUALO', 'qualidade.esmenio@testop.co.mz', NULL, NULL, NULL, '84 264 3241', 14, NULL, 1, NULL, NULL, 8, 0, 0, 0, '2022-04-22 20:58:12', '2022-04-22 20:58:23'),
(114, NULL, '$2y$10$ywGoF.e/LtSP2uR9dO1.XuGuGntnr2ZAz.WPCJRj1dwbDJP7EwaQa', 'HELDER CHABELA', 'producao.helder@testop.co.mz', NULL, NULL, NULL, '84 695 6865', 14, NULL, 1, NULL, NULL, 7, 0, 0, 0, '2022-04-22 21:00:14', '2022-04-22 21:00:29'),
(115, NULL, '$2y$10$/dycXpdbLpUpzp1zzQWX9On.KgtHRr0fM7UyXAMcedo.jS80oDBBa', 'GLORIA COME', 'producao.gloria@testop.co.mz', NULL, NULL, NULL, '844912846', 14, NULL, 1, NULL, NULL, 7, 0, 0, 0, '2022-04-22 21:02:30', '2022-04-22 21:02:41'),
(116, NULL, '$2y$10$E.f3I7ibkG1dZTnsVLyHseqf1XIaoooLQ/s8GwP0abmaINkhzxHOm', 'LEONOR CHICHANGO', 'producao.leonor@testop.co.mz', NULL, NULL, NULL, '847056119', 14, NULL, 1, NULL, NULL, 7, 0, 0, 0, '2022-04-22 21:05:00', '2022-04-22 21:05:12'),
(117, NULL, '$2y$10$o605D0jJHYyLdkJsJcJhr.LFmvqUI08/GZU5XPMjPoxq/qh1p1chq', 'MOHAMMAD ISSAK', 'procurement.issak@testop.co.mz', NULL, NULL, NULL, '868819574', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-04-22 21:07:56', '2023-01-26 10:35:31'),
(118, NULL, '$2y$10$WEVxr.3rat/Mt7fV4lgZVuIbm7abUwaiX2dVKjTB68s9KALolzV5u', 'CHALEMBA GUAMBE', 'procurement.chalemba@testop.co.mz', NULL, NULL, NULL, '842637869', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-04-22 21:09:55', '2022-04-22 21:10:07'),
(119, NULL, '$2y$10$V.s.tj46MgtO66TpwbeTQedBi/JiI47LlfatoBntrKGt7YQCZO.5q', 'JAIME CUAMBA', 'projectos.jaime@testop.co.mz', NULL, NULL, NULL, '84 256 5607', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2022-04-22 21:12:19', '2022-04-22 21:12:35'),
(120, NULL, '$2y$10$NsGgg3OzZvqp644mK2POJ.Mv9ZYKL417G7of1x0vEXqtDLxckJqw.', 'EULEUTERIO GUAMBE', 'projectos.euleuterio@testop.co.mz', NULL, NULL, NULL, '84 259 2507', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2022-04-22 21:15:50', '2022-04-22 21:16:09'),
(121, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'JESSICA RANGANHA', 'projectos.jessica@testop.co.mz', NULL, NULL, 'G0ZCoFnZ11FFSyRFpcR55iCE2purCqOFossHtno9CfGLMzzTFufZHAUP41vF', '82 618 7735', 14, NULL, 1, NULL, NULL, 6, 1, 0, 0, '2022-04-22 21:19:38', '2023-10-23 15:00:07'),
(122, NULL, '$2y$10$dG9Gyy2X9fqDg8YmwzyJCuD6AA914.mvvsidr6P9Inyr2Qoy42Kuu', 'MOHAMMAD KHALIL', 'projectos.khalil@testop.co.mz', NULL, NULL, 'yF0OBxFuXKAjgBrs37mcyvsdwhVAPXcPhmctAtJwoF5ULsVuCf', '828526660', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2022-04-22 21:22:02', '2022-09-27 12:22:25'),
(123, NULL, '$2y$10$FlCYf9nkZDhv7..81iuapO4WDsLaGbihlmEllkr6WREEFPxh1i7EK', 'ORLANDO CHAUQUE', 'armazem@testop.co.mz', NULL, NULL, 'cOHEJtTuE6gWeFjkA4xKWqX2l6CaX2DNr9Lc6QKFGTl84mR39sIopVWbf1W8', '84 678 5202', 14, NULL, 1, NULL, NULL, 9, 0, 0, 0, '2022-04-22 21:27:19', '2022-05-24 19:45:09'),
(124, NULL, '$2y$10$JHV1wu3I8LqtnO9NcB.wXu4VPQeywDdWo/xdhTjG./nP1APQjoGui', 'Soraya Mahommed', 'secretaria@testop.co.mz', NULL, NULL, 'OrrBl9kd2qwKvulI6KyOq4velHltoUubAJwA9T9HpoHu8slh9SiOCbZmnvOG', '82 715 4615', 14, NULL, 1, NULL, NULL, 12, 0, 0, 0, '2022-04-22 21:33:59', '2023-10-23 08:19:12'),
(125, NULL, '$2y$10$WpYrF1wUCcmQZbsaGKKG0.i8rYVjfWIgzKO9HWTJ8/YVnu7FhRzkW', 'Adil Gani', 'financas.adil@testop.co.mz', NULL, NULL, 'n4DerdCNuQaaBZkvJHhavPRBjNY7lCuTnnu8lKYZE3yrqopZZbusdCnPL6e6', '848248244', 11, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-06-03 15:45:48', '2023-11-01 10:04:21'),
(126, NULL, '$2y$10$cHDrO5Sv2GBUXnfHssfVIuXCRCz3Y14n/i2YhUzp7tmYZTs42U8Vm', 'Francina Araujo', 'financas.francina@testop.co.mz', NULL, NULL, '0s9NNkV4oJ30Z7bPVFfOJs0QNTwqHRTKJ6QW3VA6tvHjzUyGGZVDoE5Mqx18', '0000000000', 11, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-06-04 16:01:39', '2023-10-16 09:44:26'),
(127, NULL, '$2y$10$.ZCFWLhY7IQsRG/30hTOJemrUgoI.NtMnJPMDa/VMvRcIgXL9.dsS', 'Sonia Carvalho', 'secretaria.sonia@testop.co.mz', NULL, NULL, 'VIKcQwvZqL8XlwEMPtycLAOT0UWlPaL2ohxIHj6eueMp2FwlHgb9YwUd1ULW', '825116688', 14, NULL, 1, NULL, NULL, 12, 0, 0, 0, '2022-06-07 15:43:38', '2022-06-07 15:50:54'),
(128, NULL, '$2y$10$cslW1DBJ1SWQxajEbQGnE.kJKygKWMTx4S0qfabHH3OWzqrA3m48G', 'Orlando Alfredo', 'projectos.orlando@testop.co.mz', NULL, NULL, 'RhV9tpV5MbAt2JJYIwxi0ct8JWwSlb4s4s5YgNc6WiJAfP4nQzspGqx3KEEB', '846785202', 14, NULL, 1, NULL, NULL, 9, 0, 0, 0, '2022-06-07 19:18:21', '2023-10-26 08:34:42'),
(129, NULL, '$2y$10$lssEWx/uwlLmmsZojgX3g.9v6s4/d7wx2evCiKN9Czymxn1CFP1ly', 'Ibrahimo Omar', 'transportes.ibrahimo@testop.co.mz', NULL, NULL, 'spMvxnVCryaWxGpNbvOAIRV7jUYjhFVxMImAJG2Mk4u1D6MMQGcx5QKnCOup', '823135320', 14, NULL, 1, NULL, NULL, 15, 0, 0, 1, '2022-07-11 16:58:05', '2023-08-28 14:55:57'),
(130, NULL, '$2y$10$RJmytWF4QQwBBFzNqun.pe33a6ZKxJ1EKSp8ghYjdyKdWBNbYIND.', 'Kyara Valy', 'kyaravaly@gmail.com', NULL, NULL, 'VGWSd47SaEm0VrT5BvDGOoqGv3gWmexpkVvJ5PRgdhYvMMqtftqKVbbPwne4', '848421974', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-10-28 07:49:11', '2023-10-20 13:24:12'),
(131, NULL, '$2y$10$OlG6IAZItYaJ7BZb4a0RCuamdDGUNhXslnBM6BLHUrpeWAA/Hf3R.', 'Lenia Mindo', 'lenia@testop.co.mz', NULL, NULL, '5B4DT5k2RjbUlWtGdT0lh6Sb45leTVClGhn5x53glU8yrSICE1AiUzrDybeV', '000000000', 14, NULL, 1, NULL, NULL, 16, 0, 0, 0, '2022-11-14 11:06:22', '2022-11-14 11:14:52'),
(132, NULL, '$2y$10$ituGhSiUera1.c17tHgDceDwGx88wlTQjAACQVES1f6wsrQvtJwWO', 'Nilza Nelson Barbosa', 'nilzanelsonbarbosa@gmail.com', NULL, NULL, 'oZp43DB0pYWDQ6UcW5feeQuUqjC48XSgn9udKAxTM04rwW3AqpTtyYenfFyb', '842449310', 14, NULL, 1, NULL, NULL, 3, 1, 1, 0, '2022-12-07 11:20:01', '2023-06-19 08:16:38'),
(133, NULL, '$2y$10$MoS.gtiZXlwd3boqMjs7AOwU4iAqOtGAm5EmEyqgxFhZE9Y2C5gYW', 'Helena', 'secretaria.helena@testop.co.mz', NULL, NULL, 'CHLcTB3mqPVvyurVE15zbx1Tfck8NXmD7oHOvsDNvLxZUK9be6zJcAeTv3Wr', '00000000', 14, NULL, 1, NULL, NULL, 12, 0, 0, 0, '2022-12-12 15:19:52', '2023-10-24 13:23:43'),
(135, NULL, '$2y$10$xSGgV0/KLBSn0ts1Br7EwO/qaP820MQh.Hc9Y.5JbibB8XNAkIuw2', 'Sozinho Sozinho', 'sozinho@testop.co.mz', NULL, NULL, 'ZyZzUS17i9WvAIZrH63dgNI7rUurGKGzOOjrmqOCWYt8R3Ix01vYlYIS7MoG', '000000000', 14, NULL, 1, NULL, NULL, 15, 0, 0, 0, '2022-12-29 13:52:27', '2022-12-29 13:55:31'),
(136, NULL, '$2y$10$MiMRZidpxYj9.RgxXRBn5OpXnY89vXQoFSo3HDGCph8eKvpoPIqNu', 'Leopoldina', 'pedroleopoldina39@gmail.com', NULL, NULL, '9UmrLB1HSIPeyrhsuxcK2iVDlf9wEkquDcbFQqA28t6JqevgcZVJ4SAGLto7', '846827331', 17, NULL, 3, NULL, NULL, NULL, 0, 0, 0, '2023-01-24 09:42:38', '2023-01-24 11:15:40'),
(137, NULL, '$2y$10$Sd8Qp3XoA1kvTdM/GTyOoOpMgfXG7zx6rP.nMHKXbjPJ/cncA9LTO', 'lLeopoldina', 'rh.leo@testop.co.mz', NULL, NULL, 'PyBRCiuMef6HudbBeoa9hLmuxuhoxG5Pg3RDq45Yg4wJOgMH7HpORlbhE5UW', '846517822', 14, NULL, 1, NULL, NULL, 19, 1, 1, 0, '2022-04-14 19:55:58', '2023-10-31 17:24:31'),
(138, NULL, '$2y$10$qRsDJpErjMChbgTB7o91ie.AHAulRqGGylOSPhnPTU9dFhBtGi6Ly', 'Zameer Hussein', 'zameer@testop.co.mz', NULL, NULL, 'hx23GOZzVFHV8YfSm479fvsIqf2jeRvTRdZ7jxfRSrFoipGd5H2Qjv0OPTm9', '866715267', 11, NULL, 1, NULL, NULL, 3, 1, 1, 0, '2023-01-24 15:19:47', '2023-10-03 16:11:43'),
(139, NULL, '$2y$10$MFXNHAMPN5d99v/lJGmlTu5gbWCB0yn2KwqdDpxkm/oMXBW2Gpsze', 'Osvaldo Silvestre Banze', 'osvaldobanze008@gmail.com', NULL, NULL, 'zSmDirax56eYmmGbaWO1ARvAhw13FZTPMNm1m2aPjMlBHAbmkmzTrOLDoPEK', '877668513', 1, NULL, 0, NULL, NULL, 1, 1, 1, 0, '2022-04-14 17:31:32', '2023-11-15 09:47:08'),
(140, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'Daniel Lamo', 'projectos.lamo@testop.co.mz', NULL, NULL, 'xbli9tfad4CtckkoEfR1b5YgATIx0lVz5WqhZhG1EJE8HqEwDbZe8ZsBLzTH', NULL, 14, NULL, 1, NULL, NULL, 6, 1, 0, 0, '2022-04-22 21:19:38', '2023-02-20 10:17:46'),
(141, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Stock Admin', 'stock.admin@testop.co.mz', NULL, NULL, 'SjAXNEoFslMCYBareaaiE04TWCTyHQAp4qiCe7MkqpwRVaXvQoUGpELqf9Xe', NULL, 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:08:31', '2022-09-02 13:12:18'),
(142, NULL, '$2y$10$IvF2kz4wyQJ4QMo5eO7NyujtFZSp4qqj6arL3d..uGcqLnjmHvmee', 'IT Stock', 'it.stock@testop.co.mz', NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:08:31', '2023-02-20 09:47:41'),
(143, NULL, '$2y$10$H/Rz.pTtpDlUT1VmBzdhseHwkeaOuVZ3XvBuwNvfNTVK1FRzhJPPC', 'Admin Geral', 'geral@testop.co.mz', NULL, NULL, 'iDnFnfx11GGtwuUVX0GeVHwR9EH1PgikrKSyniDkKcwokhISsPyKqZLot18J', '84 633 8603', 1, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:38:12', '2023-10-06 09:55:25'),
(144, NULL, '$2y$10$YCGFQZbVhIqutt0nKvT2tuJ2udIC8LUnxmxevr41.rzsvGkbSzc0.', 'Transportes Admin', 'transportes.admin@testop.co.mz', NULL, NULL, 'b7GfksS2UdDktnPpI3Ft7RgmXxGQqMjETehuGjXMLOJAu5C9rMGJHP2jPmSM', '84 407 1823', 1, NULL, 1, NULL, NULL, 10, 0, 0, 1, '2022-04-22 20:54:24', '2023-08-31 16:19:16'),
(147, NULL, '$2y$10$44aCqEpFGNB9LFGjnWW20.UXsYutCu47e4VYdCpYVouQIFKdlcG1i', 'IT Stock', 'stock_it@testop.co.mz', NULL, NULL, 'rGeGujJB3CGJ1EEIzH3EaWNpQ1Q2RwLsYAPzeQHhH1XKxZbfyvxlSY0U7Vl9', '820000000', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2023-02-26 09:15:54', '2023-10-30 11:20:00'),
(148, NULL, '$2y$10$jtkeDSmwdSenwcfgGIHDweI9yuTxEegjhSbAXMHLbtBgQjg8qX7Ka', 'Garantias Administrador', 'seguros_admin@testop.co.mz', NULL, NULL, 'xHPRvW2NuaWBnEoW6HHVd55lNMWYyc4YkYz61Pi7yuYPvpsrX0h94Wq5Bj5q', '852532000', 1, NULL, 3, NULL, NULL, 3, 0, 1, 0, '2023-02-26 09:18:07', '2023-10-06 15:19:29'),
(149, NULL, '$2y$10$44aCqEpFGNB9LFGjnWW20.UXsYutCu47e4VYdCpYVouQIFKdlcG1i', 'Fundo de Maneio', 'fm@testop.co.mz', NULL, NULL, 'UUaVoxTo9lY6wLoJjtLkwp9AYD5z8gipKcOYfYS8CYuILBGxGLBi42yADZJ0', '820000000', 1, NULL, 2, NULL, NULL, 1, 1, 0, 0, '2023-02-26 09:15:54', '2023-02-26 09:17:02'),
(150, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Munir Sacoor\r\n', 'munir@testop.co.mz', NULL, NULL, 'z64oPzJGYWieYJ632clEkIAGccZ2YRxCw3rLzzXlKaKJYWPIgGLPFneRndX9', '877668513', 1, NULL, 1, NULL, NULL, 14, 0, 0, 0, '2022-04-14 17:31:32', '2023-03-15 08:26:11'),
(151, NULL, '$2y$10$3/Vh5YRijkD6JrVQM0d9hu1dW8IWIYf/gnUtOB2FusNajhJ5IUWXG', 'Nashra Yacub', 'nashyacub8@gmail.com', NULL, NULL, 'QjExEDAtNA3ypGohy2Bih8NiZwL2WSslYF6HyXFK0ex1LnHVurTiIfJTOmsx', '0000000000', 1, NULL, 1, NULL, NULL, 1, 1, 1, 0, '2023-06-01 16:01:39', '2023-11-03 09:19:25'),
(152, NULL, '$2y$10$RJmytWF4QQwBBFzNqun.pe33a6ZKxJ1EKSp8ghYjdyKdWBNbYIND.', 'Rayhan', 'rayhan@gmail.com', NULL, NULL, 'bvUdprvCHr0FPuuudV8KOscNq7IM0m48Bli6DLAc6aCr43N2G130i6vVp2Gr', NULL, 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-10-28 07:49:11', '2023-06-01 13:47:32'),
(154, NULL, '$2y$10$9.yr08q71gNlEeHkzZw4K.wO/aAL.Rtz/gmXKMvfT4w5joVsaw5r2', 'Helena', 'projetos.helena@testop.co.mz', NULL, NULL, '0P6S09TgzNPMQpuZxPligzo76ikw5Ktxe7vdtBZ8i0eR9WqzX5o16swSf98x', '00000000', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2023-09-27 14:36:52', '2023-10-24 13:18:32'),
(155, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'Jussab Amin', 'mf09863@gmail.com', NULL, NULL, 'S9o1wdkTmKAyn8Rfq4PC6ZfmFONriLPrMVzO0VgNkmjPvmP3GX78JukhNfvJ', '845195582', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:07:30', '2023-11-22 15:45:29'),
(156, NULL, '$2y$10$ykemZfX1yUSVBHqTPo40Hu13nT18/O/VBvpxiMewu35Up6NhnTHsG', 'Luis Afonso', 'luismanjate93@gmail.com', NULL, NULL, NULL, '84412002', 16, NULL, 1, 151, 151, 13, 0, 0, 0, '2024-06-10 08:13:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movimento_arquivos`
--
ALTER TABLE `movimento_arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasta_arquivos`
--
ALTER TABLE `pasta_arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `movimento_arquivos`
--
ALTER TABLE `movimento_arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasta_arquivos`
--
ALTER TABLE `pasta_arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
