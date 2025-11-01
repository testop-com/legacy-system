-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2025 at 02:26 AM
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
-- Database: `grupotestop_ticket`
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
(1, 'Informatica', 0),
(2, 'Comercial', 0),
(3, 'Financeiro', 0),
(4, 'RH', 0),
(5, 'PROCUREMENT', 0),
(6, 'Projetos', 0),
(7, 'Produção', 0),
(8, 'Qualidade', 0),
(9, 'Armazem', 0),
(10, 'Transporte', 0),
(11, 'Infra-Estrutura', 0),
(12, 'Secretaria', 0),
(13, 'Contabilidade', 0),
(14, 'Administração', 0),
(15, 'PROENERGIA', 0),
(16, 'Assuntos Legais', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `assunto` varchar(60) NOT NULL,
  `descricao` longtext NOT NULL,
  `software` varchar(30) DEFAULT NULL,
  `anexo` varchar(60) DEFAULT NULL,
  `departamento_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_register` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `removido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `data`, `assunto`, `descricao`, `software`, `anexo`, `departamento_id`, `user_id`, `user_register`, `status`, `removido`, `created_at`) VALUES
(1, '2023-02-13', 'falha de sistema (teste)', 'teste', NULL, '2023-02-13 08-44-25-Capture.JPG', 1, 95, 90, 1, 1, '2023-02-13 14:44:25'),
(2, '2023-02-13', 'Erro Ortografico', 'Temos um erro ortografico no sistema de stock .\r\n Devia ser Emprestimo e não Emprestiomos', NULL, NULL, 5, 130, 130, 2, 0, '2023-02-13 18:31:07'),
(3, '2023-02-15', 'falha no email', 'falha no envio de email.', NULL, NULL, 3, 126, 83, 2, 0, '2023-02-15 14:49:44'),
(4, '2023-02-14', 'Adicao do email', 'Adicao do email FISCAL.ADMIN@TESTOP.CO.MZ', NULL, NULL, 3, 138, 138, 2, 0, '2023-02-15 15:04:25'),
(5, '2023-02-13', 'impressora avariada', 'Impressora avariada HP', NULL, NULL, 3, 103, 103, 2, 0, '2023-02-15 15:13:34'),
(6, '2023-02-15', 'falhas na impressao', 'em anexo o exemplar de como saiem as impressoes de extractos.', NULL, '2023-02-15 09-16-07-impressao.pdf', 3, 103, 103, 2, 0, '2023-02-15 15:16:07'),
(7, '2023-02-15', 'falha de scan', 'a impressora nao aceita scanear', NULL, NULL, 5, 102, 102, 2, 0, '2023-02-15 16:01:03'),
(8, '2023-02-15', 'Configuração de Impressora', 'Boa tarde.\r\nSolicito uma assistencia para configuração da impressora na rede.', NULL, NULL, 12, 124, 124, 2, 0, '2023-02-15 16:09:44'),
(9, '2023-02-16', 'Anexo no sistema de Stock', 'Boa Tarde Colegas\r\nNão consigo anexar documento na requisição do sistema stock -armazem.', NULL, NULL, 5, 130, 130, 2, 0, '2023-02-16 19:01:04'),
(10, '2023-02-16', 'Anexo no sistema de Stock', 'Boa Tarde Colegas\r\nNão consigo anexar documento na requisição do sistema stock -armazem.', NULL, NULL, 5, 130, 130, 2, 0, '2023-02-16 19:02:13'),
(11, '2023-02-14', 'problema de internet', 'sem internet no computador pessoal', NULL, NULL, 15, 113, 101, 2, 0, '2023-02-16 20:23:43'),
(12, '2023-02-20', 'Scanner', 'Estou com dificuldades em fazer scanner.', NULL, '2023-02-20 09-49-36-Error - Network.PNG', 11, 108, 96, 2, 0, '2023-02-21 14:05:55'),
(13, '2023-02-21', 'Visualização de anexo', 'Bom dia Colegas;\r\nNão consigo visualizar os anexo inseridos no sistema de stock.', NULL, NULL, 5, 130, 130, 1, 0, '2023-02-21 12:33:30'),
(14, '2023-02-20', 'Computador Avariado', 'Computador Avariado', NULL, NULL, 5, 127, 102, 2, 0, '2023-02-21 12:44:48'),
(15, '2023-02-21', 'Verificação das Credenciais dos e-mails', 'Solicito a verificação das credenciais dos e-mails no meu computador, perdi acesso a algum deles', NULL, NULL, 5, 117, 95, 1, 0, '2023-02-21 16:09:19'),
(16, '2023-02-21', 'FINGER PRINTER CIRCULAR.', 'Solicito a reparacao e deslocacao do fingerprinter montado na entrada da guarita no terreno circular, para uma zona menos propensa a infiltracoes.', NULL, '2023-02-21 07-34-47-FINGER PRINTER 3R.jpeg', 11, 109, 96, 2, 0, '2023-03-30 12:03:01'),
(17, '2023-03-03', 'FALHA NO ENVIO DE EMAILs: financas@electroafrica.co.mz', 'nao consigo enviar e-mails das financas EA. os e-mails ficaram parados na caixa de saida.', NULL, NULL, 3, 103, 96, 2, 0, '2023-03-04 13:49:14'),
(18, '2023-03-04', 'verificação do e-mail', 'o e-mail não mostra os e-mails enviados, isto é não tem caixa de enviados, deste modo fico sem saber se seguiu ou não', NULL, NULL, 1, 129, 96, 2, 0, '2023-03-04 13:48:49'),
(19, '2023-03-15', 'Criação de email personalizado', 'Boa tarde. \r\nA pedido da Dra. Cheila, venho por este meio solicitar a criação de um email personalizado : aluguerdegruas@testop.co.mz.', NULL, NULL, 1, 1, 124, 1, 0, '2023-03-15 19:05:48'),
(20, '2023-03-16', 'Pedido de Novo Laptop', 'O Laptop que estou a usar esta a descolar a tela e ja foram feitas tentativas de concertar mas que não deram certo uso a mais de 5 anos.', NULL, '2023-03-16 10-29-32-PEDIDO DE TROCA DE LAPTOP.pdf', 1, 112, 112, 1, 0, '2023-03-16 15:29:32'),
(21, '2023-03-24', 'impressora nao esta a processar', 'A impressora da minha sala nao esta a processar. Peco apoio do dpt de informatica', NULL, NULL, 3, 103, 96, 2, 0, '2023-03-30 12:00:24'),
(22, '2023-03-28', 'Mudança de idioma de Portugues para Ingles', 'Mudança de idioma de Portugues para Ingles', NULL, NULL, 1, 138, 138, 1, 0, '2023-03-28 13:58:20'),
(23, '2023-04-06', 'erro na impressao', 'impressora da minha sala nao aceita imprimir. esta a dar erro', NULL, NULL, 3, 103, 95, 2, 0, '2023-04-19 15:28:01'),
(24, '2023-04-17', 'mensagem de erro na impressora', 'ERROR CODE NA IMPRESSORA DA MINHA SALA, NAO CONSIGO IMPRIMIR.', NULL, NULL, 3, 103, 103, 2, 0, '2023-04-17 13:49:21'),
(25, '2023-06-21', 'Teste de Ticket', 'Teste de submissao de ticket', NULL, '2023-06-21 07-32-36-Screenshot 2023-06-20 161947.png', 1, 95, 90, 2, 0, '2023-06-21 06:32:36');

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
(90, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Younus - Reports', 'younus@autobas.co.mz', NULL, NULL, 'hOrC9TniWqNtq3fhknmx9ln0PA3tsY2oFQHVkdRo6QMMW4Utmk2T8LyOM68q', '877668513', 1, NULL, 1, NULL, NULL, 14, 0, 0, 0, '2022-04-14 17:31:32', '2023-07-10 08:38:13'),
(91, NULL, '$2y$10$PRrrPAAKBRRojPwuAixW6OlDjwDTqaBfLs7zDXaHTgOio2zO1UyxK', 'Admin Testop', 'testop@testop.co.mz', NULL, NULL, 'FJvAhmiXvfOVfVGXKtr4w1NftMhwe4vLhZnEHxcvODSwQjwvLh4tOY8QYQPN', '824301030', 1, NULL, 0, NULL, NULL, 14, 0, 0, 0, '2022-04-14 17:34:17', '2023-02-17 14:47:56'),
(92, NULL, '$2y$10$OhZYqJ6ohNL3.g.joT/uHuwkWYIRAucYpUvi7K7W5OKe5sS/E9EkW', 'PANKAJ JEENTILAL', 'pankaj-jeentilal@hotmail.com', NULL, NULL, 'Mg0TPlWh2glzC3aWpH2KYjKbvfKDWLoeN9gb297MwSuV2H0ikbfuJdxelbEZ', '842792540', 12, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-14 17:42:04', '2023-05-24 13:19:45'),
(93, NULL, '$2y$10$Sd8Qp3XoA1kvTdM/GTyOoOpMgfXG7zx6rP.nMHKXbjPJ/cncA9LTO', 'GILU NEMANE', 'rh.gilu@testop.co.mz', NULL, NULL, 'IqcuSy7s4sPRnYg42ZlunN2gr9gU0NHO2c4VZULqK30RwAdvh0IIGufTpGSW', '846517822', 14, NULL, 1, NULL, NULL, 4, 1, 1, 0, '2022-04-14 19:55:58', '2023-01-24 09:39:12'),
(95, NULL, '$2y$10$t97APMIhykQwUyKYJFv7Ve7QIVnAUibE78t96jCtLEVpuIw/8Atiu', 'NUNES PEDRO', 'it.nunes@q99.co.mz', NULL, NULL, 'S9o1wdkTmKAyn8Rfq4PC6ZfmFONriLPrMVzO0VgNkmjPvmP3GX78JukhNfvJ', '845877172', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:07:30', '2023-04-26 11:03:31'),
(96, NULL, '$2y$10$62dQibKb40sdOlrP1D7KAeVYlvmOvyHdv/VjVMPvLodAbKIpTSK1e', 'Edson Paporo', 'it.paporo@q99.co.mz', NULL, NULL, '6Kv4waS1DAIcsSkRgy1kYhIPg1MwBJEaMuq8MGhGYfyfCJ3CiNc14XT7fsWs', '848186229', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:08:31', '2023-07-17 11:24:48'),
(97, NULL, '$2y$10$uq8urFDJBmItiI47KVfxSOP1SBifukgeR1YpHqw45ucL9Mvioew5y', 'DANYA FREITAS', 'rh.danya@testop.co.mz', NULL, NULL, 'xTFw5JhjeM8SXscYpWYOECNHajvA5AzaOQ1xTIMfwvoRm0B70ZxRIop0oqrO', '847416408', 14, NULL, 1, NULL, NULL, 4, 0, 0, 0, '2022-04-14 20:12:00', '2023-05-04 08:12:38'),
(98, NULL, '$2y$10$ynzhCFsfSvtwUkfy46qjDubz5.wjV8jiK4.z45XXUI9csDZPDSL9S', 'LENA DOS SANTOS', 'rh.lena@testop.co.mz', NULL, NULL, 'I9q50O4dYGtVr20fO3ZaJNWFyzLlkLckTdFRKkoIkMViDgxxbkAnsxu9tTo9', '829150694', 14, NULL, 1, NULL, NULL, 4, 0, 0, 0, '2022-04-14 21:06:40', '2023-02-17 15:43:57'),
(99, NULL, '$2y$10$b3k8sRW15ReLIdgsxP1hYeoyjSLVnGxNx0Zi8Rs9e7EMIaVu6DW6y', 'CHEILA QUILAMBO', 'rh.proenergia@testop.co.mz', NULL, NULL, 'vMJLo6pD8AQsmfpTrzxuWlvz9rh2SoOpSXGllIG4cZYeOASfPXoEOXwRkP6R', '869925390', 14, NULL, 1, NULL, NULL, 15, 1, 0, 0, '2022-04-14 21:08:20', '2022-04-30 16:55:34'),
(101, NULL, '$2y$10$vcv9n05B2JeCUCVy7SQ7Ju2LnVhriqpmHA3FYI4hFLEWK10p95hoi', 'MARCIA BATA', 'proenergia@testop.co.mz', NULL, NULL, 'KQnn01jwg1cDwwZ6Ymj3afY4VS03apswAwj0LnA9flZTy9wBqcM48kaJhcxR', '863666967', 14, NULL, 1, NULL, NULL, 15, 1, 0, 0, '2022-04-14 21:22:55', '2023-07-07 09:18:50'),
(102, NULL, '$2y$10$LpNu5f6bA3lxoFMsAYZtmOjIHC48WOo4weuDK.LkFoDF/V0rYaOGe', 'ALBERTINA SALVADOR', 'procurement.albertina@testop.co.mz', NULL, NULL, NULL, '84 036 4156', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-04-22 20:30:13', '2022-06-01 21:47:45'),
(103, NULL, '$2y$10$IPpp6DEcCaeyX/IJ1v8rROBM5736I3CFiFsy8jQru8x5iGi1TF3Wy', 'FATIMA BIBI KARIM', 'financas.fatima@testop.co.mz', NULL, NULL, 'IzSSeHs5LFqb8vbbFvbijhJgG2y5Gt6AbMeKuimVXLO9hlzhbdN6cdsQfCh0', '84 673 1706', 1, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:35:16', '2023-07-03 15:41:07'),
(104, NULL, '$2y$10$CsS6LVfBsY/v3HKv6x1y/.6X5dZuYTXByHeZvuRA59oNCTRErIzZG', 'CARLOS SENDA', 'financas.carlos@testop.co.mz', NULL, NULL, 'M2bKLuaNTvwlBAVyY8dxVIiOsYw23xR1iwMZaLn8rab5ZBuqGRFUNboaYBOf', '84 633 8603', 1, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:38:12', '2023-08-05 10:14:24'),
(105, NULL, '$2y$10$AYd7Ry7Qxhu/xP9slhPLMuxgvGotJcvpzRVurbqEOWRkiC8y0vu7y', 'LUANA GOULAP', 'financas.luana@testop.co.mz', NULL, NULL, 'GY3bxQuYWDj8fz1FXh318tupTogW5H0MRcygjG0wDl6i9wgYUlXPUk8Oh3LM', '82 777 3545', 14, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:40:23', '2022-10-03 07:28:37'),
(106, NULL, '$2y$10$72Np6sRgkqeipkuNYt6j.eqvZszyZJsuwEMfllWd49rwPKRqfVaIG', 'RAYHAN KHALID', 'procurement.rayhan@testop.co.mz', NULL, NULL, NULL, '84 745 4545', 14, NULL, 1, NULL, NULL, 5, 1, 1, 0, '2022-04-22 20:43:09', '2022-04-22 20:43:21'),
(107, NULL, '$2y$10$FfIR6PJQpTgbgwgzVnnBiulXUYFfgV5Sjjc9sNTNARQcjby8b/7Q2', 'LEOPOLDO VALENTIM', 'procurement.valentim@testop.co.mz', NULL, NULL, NULL, '87 787 8634', 14, NULL, 0, NULL, NULL, 4, 1, 1, 0, '2022-04-22 20:44:48', '2022-04-22 20:45:06'),
(108, NULL, '$2y$10$mmHfqLmGwCrIq4ZGuETQFe1wkFIw2CnZg/KIPHq2JoYwLsnH7ZMYa', 'ADEEL DAUDE', 'infraestrutura.adeel@testop.co.mz', NULL, NULL, 'aEJjnGhWwjveSs750gp4sfQZFdCzgjDapUi7rK2Cm2RHMqho46eTFiJH8Ktd', '820059049', 14, NULL, 1, NULL, NULL, 11, 0, 0, 0, '2022-04-22 20:46:49', '2023-03-27 08:34:25'),
(109, NULL, '$2y$10$o2YTZPzrpsNC1oN0gnJvQe4w.yL1Jr2IYREMalt0YT2NELMD6QyEO', 'SIACA ADAMOGY', 'infraestrutura.siaca@testop.co.mz', NULL, NULL, 'VFbXempvFdR9TrwloYbyeeTfxKJUvXYB6f5o8FJOXUVXjZP6Omt7ZLLcCNr9', '84 243 7566', 14, NULL, 1, NULL, NULL, 11, 0, 0, 0, '2022-04-22 20:50:24', '2022-07-15 13:49:34'),
(110, NULL, '$2y$10$k7pb62S9rX9o4Fom1vQvYeVUfY7I.2ft5k9GQoYveHCGXlftxjlIe', 'SILVESTRE GOVENE', 'transportes.proenergia@testop.co.mz', NULL, NULL, 'hBwzW8F6rA0mznRr0XI93i3rBu14jHNSW6YwyWBv0lNv2OA75wR5jqdT5wt3', '84 661 5116', 16, NULL, 1, NULL, NULL, 15, 0, 0, 1, '2022-04-22 20:52:18', '2023-08-19 10:56:38'),
(111, NULL, '$2y$10$YCGFQZbVhIqutt0nKvT2tuJ2udIC8LUnxmxevr41.rzsvGkbSzc0.', 'JONAS MAZIVE', 'transportes.jonas@testop.co.mz', NULL, NULL, 'VG5KtNk6lqgv3zvpujwHSlA5j3QfcNB0rVK9TJn7LODZEOpJvl1jkI6BsShZ', '84 407 1823', 14, NULL, 1, NULL, NULL, 10, 0, 0, 1, '2022-04-22 20:54:24', '2023-08-24 14:50:22'),
(112, NULL, '$2y$10$vEcP2QhA9n5Jn9x1moh5wOPIvDbz/f6PvKE1me8U7SYbEdScmkPu2', 'ALEXANDRE SAIA', 'qualidade.saia@testop.co.mz', NULL, NULL, '2AVl1luklW0Q9YBgjVr9bwHs6BcQopErMcl6DCdeAwkKVdvsWNXf8sC2Jzr3', '84 562 4028', 14, NULL, 1, NULL, NULL, 8, 0, 0, 0, '2022-04-22 20:56:20', '2023-01-09 16:27:06'),
(113, NULL, '$2y$10$ArabE5H5l/z4OqPC727kdunaFxJCmLImLF3wg9L4MFdiF67FWQKnO', 'ESMENIO ZUALO', 'qualidade.esmenio@testop.co.mz', NULL, NULL, NULL, '84 264 3241', 14, NULL, 1, NULL, NULL, 8, 0, 0, 0, '2022-04-22 20:58:12', '2022-04-22 20:58:23'),
(114, NULL, '$2y$10$ywGoF.e/LtSP2uR9dO1.XuGuGntnr2ZAz.WPCJRj1dwbDJP7EwaQa', 'HELDER CHABELA', 'producao.helder@testop.co.mz', NULL, NULL, NULL, '84 695 6865', 14, NULL, 1, NULL, NULL, 7, 0, 0, 0, '2022-04-22 21:00:14', '2022-04-22 21:00:29'),
(115, NULL, '$2y$10$/dycXpdbLpUpzp1zzQWX9On.KgtHRr0fM7UyXAMcedo.jS80oDBBa', 'GLORIA COME', 'producao.gloria@testop.co.mz', NULL, NULL, NULL, '844912846', 14, NULL, 1, NULL, NULL, 7, 0, 0, 0, '2022-04-22 21:02:30', '2022-04-22 21:02:41'),
(116, NULL, '$2y$10$E.f3I7ibkG1dZTnsVLyHseqf1XIaoooLQ/s8GwP0abmaINkhzxHOm', 'LEONOR CHICHANGO', 'producao.leonor@testop.co.mz', NULL, NULL, NULL, '847056119', 14, NULL, 1, NULL, NULL, 7, 0, 0, 0, '2022-04-22 21:05:00', '2022-04-22 21:05:12'),
(117, NULL, '$2y$10$o605D0jJHYyLdkJsJcJhr.LFmvqUI08/GZU5XPMjPoxq/qh1p1chq', 'MOHAMMAD ISSAK', 'procurement.issak@testop.co.mz', NULL, NULL, NULL, '868819574', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-04-22 21:07:56', '2023-01-26 10:35:31'),
(118, NULL, '$2y$10$WEVxr.3rat/Mt7fV4lgZVuIbm7abUwaiX2dVKjTB68s9KALolzV5u', 'CHALEMBA GUAMBE', 'procurement.chalemba@testop.co.mz', NULL, NULL, NULL, '842637869', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-04-22 21:09:55', '2022-04-22 21:10:07'),
(119, NULL, '$2y$10$V.s.tj46MgtO66TpwbeTQedBi/JiI47LlfatoBntrKGt7YQCZO.5q', 'JAIME CUAMBA', 'projectos.jaime@testop.co.mz', NULL, NULL, NULL, '84 256 5607', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2022-04-22 21:12:19', '2022-04-22 21:12:35'),
(120, NULL, '$2y$10$NsGgg3OzZvqp644mK2POJ.Mv9ZYKL417G7of1x0vEXqtDLxckJqw.', 'EULEUTERIO GUAMBE', 'projectos.euleuterio@testop.co.mz', NULL, NULL, NULL, '84 259 2507', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2022-04-22 21:15:50', '2022-04-22 21:16:09'),
(121, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'JESSICA RANGANHA', 'projectos.jessica@testop.co.mz', NULL, NULL, 'UHhAQTFMOQUevPI2MNHfbKJlcVbliqZFMYgm0Ks5TlalGE6IV53irGmr2pPg', '82 618 7735', 14, NULL, 1, NULL, NULL, 6, 1, 0, 0, '2022-04-22 21:19:38', '2023-08-22 11:02:40'),
(122, NULL, '$2y$10$dG9Gyy2X9fqDg8YmwzyJCuD6AA914.mvvsidr6P9Inyr2Qoy42Kuu', 'MOHAMMAD KHALIL', 'projectos.khalil@testop.co.mz', NULL, NULL, 'yF0OBxFuXKAjgBrs37mcyvsdwhVAPXcPhmctAtJwoF5ULsVuCf', '828526660', 14, NULL, 1, NULL, NULL, 6, 0, 0, 0, '2022-04-22 21:22:02', '2022-09-27 12:22:25'),
(123, NULL, '$2y$10$FlCYf9nkZDhv7..81iuapO4WDsLaGbihlmEllkr6WREEFPxh1i7EK', 'ORLANDO CHAUQUE', 'armazem@testop.co.mz', NULL, NULL, 'cOHEJtTuE6gWeFjkA4xKWqX2l6CaX2DNr9Lc6QKFGTl84mR39sIopVWbf1W8', '84 678 5202', 14, NULL, 1, NULL, NULL, 9, 0, 0, 0, '2022-04-22 21:27:19', '2022-05-24 19:45:09'),
(124, NULL, '$2y$10$JHV1wu3I8LqtnO9NcB.wXu4VPQeywDdWo/xdhTjG./nP1APQjoGui', 'Soraya Mahommed', 'secretaria@testop.co.mz', NULL, NULL, 'xjFyuRQiFNU7KJlaEmjXcZsO0JPm95Rq1keNATqfXdrEn8msIG3Dh8dJw579', '82 715 4615', 14, NULL, 1, NULL, NULL, 12, 0, 0, 0, '2022-04-22 21:33:59', '2023-05-04 08:15:51'),
(125, NULL, '$2y$10$WpYrF1wUCcmQZbsaGKKG0.i8rYVjfWIgzKO9HWTJ8/YVnu7FhRzkW', 'Adil Gani', 'financas.adil@testop.co.mz', NULL, NULL, 'RW5mf3zdvme3GzpnktmaZSrjK65fCQvui7NAyNDly9tXC9cm1drhQm5tzfHB', '848248244', 11, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-06-03 15:45:48', '2023-08-02 09:19:24'),
(126, NULL, '$2y$10$cHDrO5Sv2GBUXnfHssfVIuXCRCz3Y14n/i2YhUzp7tmYZTs42U8Vm', 'Francina Araujo', 'financas.francina@testop.co.mz', NULL, NULL, 'VzuI9hi3llDB3fYitHdGlZbwZPuyV4FQthmAVeWKmIgbt3zMTmpx0HbOeoGx', '0000000000', 11, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-06-04 16:01:39', '2023-08-17 14:32:16'),
(127, NULL, '$2y$10$.ZCFWLhY7IQsRG/30hTOJemrUgoI.NtMnJPMDa/VMvRcIgXL9.dsS', 'Sonia Carvalho', 'secretaria.sonia@testop.co.mz', NULL, NULL, 'VIKcQwvZqL8XlwEMPtycLAOT0UWlPaL2ohxIHj6eueMp2FwlHgb9YwUd1ULW', '825116688', 14, NULL, 1, NULL, NULL, 12, 0, 0, 0, '2022-06-07 15:43:38', '2022-06-07 15:50:54'),
(128, NULL, '$2y$10$cslW1DBJ1SWQxajEbQGnE.kJKygKWMTx4S0qfabHH3OWzqrA3m48G', 'Orlando Alfredo', 'projectos.orlando@testop.co.mz', NULL, NULL, 'qewsWNayBPN2uvbL17Us4zbb2o4AkjRL24Myvo8DXTujWHTQKf0KxjMU2NQe', '846785202', 14, NULL, 1, NULL, NULL, 9, 0, 0, 0, '2022-06-07 19:18:21', '2022-06-07 20:06:16'),
(129, NULL, '$2y$10$lssEWx/uwlLmmsZojgX3g.9v6s4/d7wx2evCiKN9Czymxn1CFP1ly', 'Ibrahimo Omar', 'transportes.ibrahimo@testop.co.mz', NULL, NULL, 'spMvxnVCryaWxGpNbvOAIRV7jUYjhFVxMImAJG2Mk4u1D6MMQGcx5QKnCOup', '823135320', 14, NULL, 1, NULL, NULL, 15, 0, 0, 1, '2022-07-11 16:58:05', '2023-08-28 14:55:57'),
(130, NULL, '$2y$10$RJmytWF4QQwBBFzNqun.pe33a6ZKxJ1EKSp8ghYjdyKdWBNbYIND.', 'Kyara Valy', 'kyaravaly@gmail.com', NULL, NULL, '1queYgoPPaHyc0USUnWBCufJeYPtPIKytC7N9qXkBzGxiKxAh6BIn9NW5eWN', '848421974', 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-10-28 07:49:11', '2023-08-29 15:09:12'),
(131, NULL, '$2y$10$tbWb3Tcne1stuXm9gJYIT.x222uboaGkImEporZ2Gkd.s2rrFHJja', 'Lenia Mindo', 'lenia@testop.co.mz', NULL, NULL, '5B4DT5k2RjbUlWtGdT0lh6Sb45leTVClGhn5x53glU8yrSICE1AiUzrDybeV', '000000000', 14, NULL, 1, NULL, NULL, 16, 0, 0, 0, '2022-11-14 11:06:22', '2022-11-14 11:14:52'),
(132, NULL, '$2y$10$ituGhSiUera1.c17tHgDceDwGx88wlTQjAACQVES1f6wsrQvtJwWO', 'Nilza Nelson Barbosa', 'nilzanelsonbarbosa@gmail.com', NULL, NULL, 'oZp43DB0pYWDQ6UcW5feeQuUqjC48XSgn9udKAxTM04rwW3AqpTtyYenfFyb', '842449310', 14, NULL, 1, NULL, NULL, 3, 1, 1, 0, '2022-12-07 11:20:01', '2023-06-19 08:16:38'),
(133, NULL, '$2y$10$MoS.gtiZXlwd3boqMjs7AOwU4iAqOtGAm5EmEyqgxFhZE9Y2C5gYW', 'Helena', 'secretaria.helena@testop.co.mz', NULL, NULL, NULL, '00000000', 14, NULL, 1, NULL, NULL, 12, 0, 0, 0, '2022-12-12 15:19:52', NULL),
(135, NULL, '$2y$10$xSGgV0/KLBSn0ts1Br7EwO/qaP820MQh.Hc9Y.5JbibB8XNAkIuw2', 'Sozinho Sozinho', 'sozinho@testop.co.mz', NULL, NULL, 'ZyZzUS17i9WvAIZrH63dgNI7rUurGKGzOOjrmqOCWYt8R3Ix01vYlYIS7MoG', '000000000', 14, NULL, 1, NULL, NULL, 15, 0, 0, 0, '2022-12-29 13:52:27', '2022-12-29 13:55:31'),
(136, NULL, '$2y$10$MiMRZidpxYj9.RgxXRBn5OpXnY89vXQoFSo3HDGCph8eKvpoPIqNu', 'Leopoldina', 'pedroleopoldina39@gmail.com', NULL, NULL, '9UmrLB1HSIPeyrhsuxcK2iVDlf9wEkquDcbFQqA28t6JqevgcZVJ4SAGLto7', '846827331', 17, NULL, 3, NULL, NULL, NULL, 0, 0, 0, '2023-01-24 09:42:38', '2023-01-24 11:15:40'),
(137, NULL, '$2y$10$Sd8Qp3XoA1kvTdM/GTyOoOpMgfXG7zx6rP.nMHKXbjPJ/cncA9LTO', 'lLeopoldina', 'rh.leo@testop.co.mz', NULL, NULL, 'ISkXUyrg3yZ0jPUgwFmLrhL5RkNvBRVxMxbSG8CPGT7KWm0loWVuOmvdkW4i', '846517822', 14, NULL, 1, NULL, NULL, 4, 1, 1, 0, '2022-04-14 19:55:58', '2023-08-29 16:05:24'),
(138, NULL, '$2y$10$X0up.qhPPrAKdjwK.STB2.7Nj9ZOv892DsKnp7yckmbrv3nB0Zgk6', 'Zameer Hussein', 'zameer@testop.co.mz', NULL, NULL, 'i9oop0NPzGdBQalQTDcHCv8fLY5tTiMV61bbxk45VZhFMDcUuaPahqiktavJ', '866715267', 11, NULL, 1, NULL, NULL, 3, 1, 1, 0, '2023-01-24 15:19:47', '2023-08-29 15:28:33'),
(139, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Osvaldo Silvestre Banze', 'osvaldobanze008@gmail.com', NULL, NULL, 'wvkYULQSlnw4VtnyhFK3WxPZg2G8uLiirzZgUQnO88xpYoRqO1Nd1zZnE1QB', '877668513', 1, NULL, 0, NULL, NULL, 1, 1, 1, 0, '2022-04-14 17:31:32', '2023-08-24 14:11:29'),
(140, NULL, '$2y$10$HkafCtPxAwec5LZdpW.4oe1pMlrj3FYPmpJABbJvQoUq.FHPh88Me', 'Daniel Lamo', 'projectos.lamo@testop.co.mz', NULL, NULL, 'xbli9tfad4CtckkoEfR1b5YgATIx0lVz5WqhZhG1EJE8HqEwDbZe8ZsBLzTH', NULL, 14, NULL, 1, NULL, NULL, 6, 1, 0, 0, '2022-04-22 21:19:38', '2023-02-20 10:17:46'),
(141, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Stock Admin', 'stock.admin@testop.co.mz', NULL, NULL, 'SjAXNEoFslMCYBareaaiE04TWCTyHQAp4qiCe7MkqpwRVaXvQoUGpELqf9Xe', NULL, 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:08:31', '2022-09-02 13:12:18'),
(142, NULL, '$2y$10$IvF2kz4wyQJ4QMo5eO7NyujtFZSp4qqj6arL3d..uGcqLnjmHvmee', 'IT Stock', 'it.stock@testop.co.mz', NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2022-04-14 20:08:31', '2023-02-20 09:47:41'),
(143, NULL, '$2y$10$H/Rz.pTtpDlUT1VmBzdhseHwkeaOuVZ3XvBuwNvfNTVK1FRzhJPPC', 'Admin Geral', 'geral@testop.co.mz', NULL, NULL, 'U0QYqXRlXwfiMsCSRHMfpTcJv21obduYZkVwtNxoPqsAxlL8Tn7Y8TIeKxlO', '84 633 8603', 1, NULL, 1, NULL, NULL, 3, 0, 0, 0, '2022-04-22 20:38:12', '2023-04-26 08:54:10'),
(144, NULL, '$2y$10$YCGFQZbVhIqutt0nKvT2tuJ2udIC8LUnxmxevr41.rzsvGkbSzc0.', 'Transportes Admin', 'transportes.admin@testop.co.mz', NULL, NULL, '54NlWyhHpQii8lW2j7fYpqOX71aPuZcd4GxDMaxt44NQcI8lLYlYjT0fcWvA', '84 407 1823', 1, NULL, 1, NULL, NULL, 10, 0, 0, 1, '2022-04-22 20:54:24', '2023-04-29 07:13:41'),
(147, NULL, '$2y$10$44aCqEpFGNB9LFGjnWW20.UXsYutCu47e4VYdCpYVouQIFKdlcG1i', 'IT Stock', 'stock_it@testop.co.mz', NULL, NULL, 'UUaVoxTo9lY6wLoJjtLkwp9AYD5z8gipKcOYfYS8CYuILBGxGLBi42yADZJ0', '820000000', 14, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2023-02-26 09:15:54', '2023-02-26 09:17:02'),
(148, NULL, '$2y$10$jtkeDSmwdSenwcfgGIHDweI9yuTxEegjhSbAXMHLbtBgQjg8qX7Ka', 'seguros_admin', 'seguros_admin@testop.co.mz', NULL, NULL, 'X0mNBSOaJtBiSfyLcp3jAxK4Ev186reST2f5i0qJ6ZzSFYSEAfsWqf2zgHrq', '852532000', 1, NULL, 3, NULL, NULL, 3, 0, 1, 0, '2023-02-26 09:18:07', '2023-05-03 14:15:04'),
(149, NULL, '$2y$10$44aCqEpFGNB9LFGjnWW20.UXsYutCu47e4VYdCpYVouQIFKdlcG1i', 'Fundo de Maneio', 'fm@testop.co.mz', NULL, NULL, 'UUaVoxTo9lY6wLoJjtLkwp9AYD5z8gipKcOYfYS8CYuILBGxGLBi42yADZJ0', '820000000', 1, NULL, 2, NULL, NULL, 1, 1, 0, 0, '2023-02-26 09:15:54', '2023-02-26 09:17:02'),
(150, NULL, '$2y$10$A6zobdte6tICt69qnPSE/eYor/cCWTnSA4ED326Pb00XBAq2IKzn6', 'Munir Sacoor\r\n', 'munir@testop.co.mz', NULL, NULL, 'z64oPzJGYWieYJ632clEkIAGccZ2YRxCw3rLzzXlKaKJYWPIgGLPFneRndX9', '877668513', 1, NULL, 1, NULL, NULL, 14, 0, 0, 0, '2022-04-14 17:31:32', '2023-03-15 08:26:11'),
(151, NULL, '$2y$10$3/Vh5YRijkD6JrVQM0d9hu1dW8IWIYf/gnUtOB2FusNajhJ5IUWXG', 'Nashra Yacub', 'nashyacub8@gmail.com', NULL, NULL, 'eIGHLCUrHGk5VcAtbvaXrVx433LeIRH67GLGoEPgoCvABupLCWdKwx3Ugycn', '0000000000', 11, NULL, 1, NULL, NULL, 3, 1, 1, 0, '2023-06-01 16:01:39', '2023-07-11 13:42:04'),
(152, NULL, '$2y$10$RJmytWF4QQwBBFzNqun.pe33a6ZKxJ1EKSp8ghYjdyKdWBNbYIND.', 'Rayhan', 'rayhan@gmail.com', NULL, NULL, 'bvUdprvCHr0FPuuudV8KOscNq7IM0m48Bli6DLAc6aCr43N2G130i6vVp2Gr', NULL, 14, NULL, 1, NULL, NULL, 5, 0, 0, 0, '2022-10-28 07:49:11', '2023-06-01 13:47:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
