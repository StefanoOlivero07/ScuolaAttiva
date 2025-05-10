-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 07, 2025 alle 23:41
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registroElettronico`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `classi`
--

CREATE TABLE `classi` (
  `id` int(11) NOT NULL,
  `nome` varchar(6) NOT NULL,
  `materie` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `classi`
--

INSERT INTO `classi` (`id`, `nome`, `materie`) VALUES
(1, '1A INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(2, '1B INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(3, '1C INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(4, '1D INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(5, '1E INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(6, '2A INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(7, '2B INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(8, '2C INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(9, '2D INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(10, '2E INF', '[1, 2, 3, 4, 5, 6, 11, 12, 13, 14]'),
(11, '3A INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(12, '3B INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(13, '3D INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(14, '3C INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(15, '3E INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(16, '4A INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(17, '4B INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(18, '4C INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(19, '4D INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(20, '4E INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 24]'),
(21, '5A INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 25]'),
(22, '5B INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 25]'),
(23, '5C INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 25]'),
(24, '5D INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 25]'),
(25, '5E INF', '[1, 2, 3, 4, 5, 6, 21, 22, 23, 25]');

-- --------------------------------------------------------

--
-- Struttura della tabella `materie`
--

CREATE TABLE `materie` (
  `id` int(11) NOT NULL,
  `materia` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `materie`
--

INSERT INTO `materie` (`id`, `materia`) VALUES
(1, 'Lingua e Letteratura Ita'),
(2, 'Storia'),
(3, 'Inglese'),
(4, 'Matematica'),
(5, 'Educazione Fisica'),
(6, 'Religione'),
(11, 'Tecnologie Informatiche'),
(12, 'Fisica'),
(13, 'Chimica'),
(14, 'Disegno'),
(21, 'Informatica'),
(22, 'Sistemi e Reti'),
(23, 'Tecnologie'),
(24, 'Telecomunicazioni'),
(25, 'Gestione Progetto');

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `matricola` int(11) NOT NULL,
  `cognome` varchar(32) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `mail` varchar(32) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL DEFAULT '5f4dcc3b5aa765d61d8327deb882cf99',
  `classe` varchar(6) NOT NULL,
  `residenza` varchar(32) NOT NULL,
  `indrizzo` varchar(32) NOT NULL,
  `immagine` varchar(32) NOT NULL DEFAULT 'user.jpg',
  `docente` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `studenti`
--

INSERT INTO `studenti` (`matricola`, `cognome`, `nome`, `mail`, `user`, `pass`, `classe`, `residenza`, `indrizzo`, `immagine`, `docente`) VALUES
(1000, 'docente', 'docente', 'user.user@gmail.com', 'docente', '5f4dcc3b5aa765d61d8327deb882cf99', '',       'Fossano', 'Via Roma, 13', 'user.jpg', 1),
(1001, 'rossi', 'mario',  'user.user@gmail.com', 'rossi-1001', '5f4dcc3b5aa765d61d8327deb882cf99', '1B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1002, 'rossi', 'manlio', 'user.user@gmail.com', 'rossi-1002', '5f4dcc3b5aa765d61d8327deb882cf99', '2B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1003, 'rossi', 'sergio', 'user.user@gmail.com', 'rossi-1003', '5f4dcc3b5aa765d61d8327deb882cf99', '3B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1004, 'rossi', 'stella', 'user.user@gmail.com', 'rossi-1004', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1005, 'rossi', 'fulvio', 'user.user@gmail.com', 'rossi-1005', '5f4dcc3b5aa765d61d8327deb882cf99', '5B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1006, 'verdi', 'simone', 'user.user@gmail.com', 'verdi-1006', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1007, 'carli', 'elia',   'user.user@gmail.com', 'carli-1007', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1008, 'sasso', 'piero',  'user.user@gmail.com', 'sasso-1008', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1009, 'marra', 'marina', 'user.user@gmail.com', 'marra-1009', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1010, 'morra', 'paola',  'user.user@gmail.com', 'morra-1010', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1011, 'senna', 'andrea', 'user.user@gmail.com', 'senna-1011', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1012, 'curti', 'marco',  'user.user@gmail.com', 'curti-1012', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1013, 'valle', 'anna',   'user.user@gmail.com', 'valle-1013', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1014, 'prato', 'cinzia', 'user.user@gmail.com', 'prato-1014', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1015, 'perla', 'irma',   'user.user@gmail.com', 'perla-1015', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1016, 'festa', 'romano', 'user.user@gmail.com', 'festa-1016', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1017, 'mollo', 'danilo', 'user.user@gmail.com', 'mollo-1017', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1018, 'tosco', 'stelvio','user.user@gmail.com', 'tosco-1018', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1019, 'racca', 'elena',  'user.user@gmail.com', 'racca-1019', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0),
(1020, 'russo', 'flavio', 'user.user@gmail.com', 'russo-1020', '5f4dcc3b5aa765d61d8327deb882cf99', '4B INF', 'Fossano', 'Via Roma, 13', 'user.jpg', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `voti`
--

CREATE TABLE `voti` (
  `id` int(11) NOT NULL,
  `matricola` int(11) NOT NULL,
  `data` date NOT NULL,
  `materia` int(11) NOT NULL DEFAULT 0,
  `voto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `voti`
--

INSERT INTO `voti` (`matricola`, `data`, `materia`, `voto` ) VALUES
( 1001, '2025-03-11', 1, 6.5),
( 1001, '2025-03-25', 2, 6),
( 1001, '2025-03-15', 3, 7),
( 1001, '2025-03-25', 4, 7),
( 1001, '2025-03-05', 5, 6),
( 1001, '2025-03-18', 6, 6.5),
( 1001, '2025-03-10', 11, 5.5),
( 1001, '2025-03-25', 12, 4),
( 1001, '2025-03-07', 13, 5.5),
( 1001, '2025-03-25', 14, 6),
( 1001, '2025-04-11', 1, 5.5),
( 1001, '2025-04-25', 2, 8),
( 1001, '2025-04-15', 3, 8.5),
( 1001, '2025-04-25', 4, 7),
( 1001, '2025-04-25', 5, 5.5),
( 1001, '2025-04-18', 6, 4.5),
( 1001, '2025-04-13', 11, 6),
( 1001, '2025-04-25', 12, 9),
( 1001, '2025-04-07', 13, 6),
( 1001, '2025-04-25', 14, 7),
( 1001, '2025-05-11', 1, 5.5),
( 1001, '2025-05-25', 2, 8),
( 1001, '2025-05-15', 3, 8.5),
( 1001, '2025-05-25', 4, 9.5),
( 1001, '2025-05-14', 5, 5.5),
( 1001, '2025-05-18', 6, 7.5),
( 1001, '2025-05-25', 11, 6),
( 1001, '2025-05-12', 12, 8),
( 1001, '2025-05-07', 13, 4),
( 1001, '2025-05-25', 14, 6.5),

( 1002, '2025-03-06', 1, 5.5),
( 1002, '2025-03-23', 2, 7),
( 1002, '2025-03-12', 3, 7),
( 1002, '2025-03-25', 4, 6),
( 1002, '2025-03-05', 5, 5.5),
( 1002, '2025-03-18', 6, 8),
( 1002, '2025-03-10', 11, 7),
( 1002, '2025-03-24', 12, 5),
( 1002, '2025-03-07', 13, 6),
( 1002, '2025-03-25', 14, 6.5),
( 1002, '2025-04-11', 1, 8),
( 1002, '2025-04-25', 2, 4),
( 1002, '2025-04-15', 3, 4.5),
( 1002, '2025-04-25', 4, 5),
( 1002, '2025-04-07', 5, 6),
( 1002, '2025-04-18', 6, 6.5),
( 1002, '2025-04-13', 11, 7),
( 1002, '2025-04-25', 12, 7.5),
( 1002, '2025-04-09', 13, 8),
( 1002, '2025-04-25', 14, 8.5),
( 1002, '2025-05-11', 1, 9),
( 1002, '2025-05-25', 2, 6),
( 1002, '2025-05-15', 3, 6.5),
( 1002, '2025-05-25', 4, 7),
( 1002, '2025-05-16', 5, 6),
( 1002, '2025-05-18', 6, 4.5),
( 1002, '2025-05-25', 11, 6),
( 1002, '2025-05-30', 12, 8.5),
( 1002, '2025-05-07', 13, 6),
( 1002, '2025-05-25', 14, 7),

( 1003, '2025-03-10', 1, 7),
( 1003, '2025-03-25', 2, 4),
( 1003, '2025-03-15', 3, 5.5),
( 1003, '2025-03-21', 4, 7),
( 1003, '2025-03-05', 5, 7),
( 1003, '2025-03-18', 6, 8),
( 1003, '2025-03-10', 21, 4.5),
( 1003, '2025-03-25', 22, 7),
( 1003, '2025-03-07', 23, 6.5),
( 1003, '2025-03-25', 24, 4),
( 1003, '2025-04-11', 1, 4.5),
( 1003, '2025-04-25', 2, 8.5),
( 1003, '2025-04-15', 3, 10),
( 1003, '2025-04-25', 4, 9),
( 1003, '2025-04-05', 5, 6),
( 1003, '2025-04-18', 6, 6),
( 1003, '2025-04-10', 21, 6),
( 1003, '2025-04-25', 22, 5),
( 1003, '2025-04-07', 23, 7),
( 1003, '2025-04-25', 24, 6),
( 1003, '2025-05-11', 1, 6.5),
( 1003, '2025-05-25', 2, 8.5),
( 1003, '2025-05-15', 3, 6.5),
( 1003, '2025-05-14', 4, 5.5),
( 1003, '2025-05-05', 5, 6.5),
( 1003, '2025-05-18', 6, 7),
( 1003, '2025-05-16', 21, 7.5),
( 1003, '2025-05-25', 22, 6),
( 1003, '2025-05-07', 23, 6.5),
( 1003, '2025-05-25', 24, 7),

( 1004, '2025-03-11', 1, 5),
( 1004, '2025-03-25', 2, 8),
( 1004, '2025-03-15', 3, 7.5),
( 1004, '2025-03-25', 4, 7),
( 1004, '2025-03-05', 5, 6.5),
( 1004, '2025-03-18', 6, 6),
( 1004, '2025-03-10', 21, 6),
( 1004, '2025-03-25', 22, 8.5),
( 1004, '2025-03-07', 23, 7),
( 1004, '2025-03-10', 24, 7.5),
( 1004, '2025-04-11', 1, 6.5),
( 1004, '2025-04-12', 2, 7),
( 1004, '2025-04-15', 3, 6),
( 1004, '2025-04-25', 4, 6),
( 1004, '2025-04-15', 5, 5.5),
( 1004, '2025-04-18', 6, 8.5),
( 1004, '2025-04-10', 21, 7.5),
( 1004, '2025-04-25', 22, 6),
( 1004, '2025-04-07', 23, 6.5),
( 1004, '2025-04-25', 24, 5),
( 1004, '2025-05-11', 1, 7.5),
( 1004, '2025-05-25', 2, 7),
( 1004, '2025-05-15', 3, 6),
( 1004, '2025-05-25', 4, 5.5),
( 1004, '2025-05-05', 5, 5),
( 1004, '2025-05-18', 6, 7.5),
( 1004, '2025-05-10', 21, 8.5),
( 1004, '2025-05-26', 22, 7),
( 1004, '2025-05-07', 23, 6.5),
( 1004, '2025-05-25', 24, 6),

( 1005, '2025-03-11', 1, 5.5),
( 1005, '2025-03-25', 2, 7),
( 1005, '2025-03-15', 3, 6.5),
( 1005, '2025-03-25', 4, 7.5),
( 1005, '2025-03-05', 5, 6.5),
( 1005, '2025-03-18', 6, 6),
( 1005, '2025-03-10', 21, 6),
( 1005, '2025-03-25', 22, 7),
( 1005, '2025-03-07', 23, 7.5),
( 1005, '2025-03-25', 25, 5.5),
( 1005, '2025-04-11', 1, 7),
( 1005, '2025-04-25', 2, 8.5),
( 1005, '2025-04-15', 3, 7.5),
( 1005, '2025-04-25', 4, 6),
( 1005, '2025-04-05', 5, 6.5),
( 1005, '2025-04-18', 6, 7),
( 1005, '2025-04-10', 21, 5),
( 1005, '2025-04-25', 22, 6),
( 1005, '2025-04-07', 23, 6.5),
( 1005, '2025-04-25', 25, 7),
( 1005, '2025-05-11', 1, 6.5),
( 1005, '2025-05-25', 2, 6.5),
( 1005, '2025-05-15', 3, 5.5),
( 1005, '2025-05-25', 4, 8),
( 1005, '2025-05-05', 5, 7),
( 1005, '2025-05-22', 6, 7.5),
( 1005, '2025-05-10', 21, 6),
( 1005, '2025-05-25', 22, 8),
( 1005, '2025-05-07', 23, 9.5),
( 1005, '2025-05-25', 25, 7),

( 1006, '2025-03-11', 1, 5),
( 1006, '2025-03-25', 2, 8),
( 1006, '2025-03-15', 3, 7.5),
( 1006, '2025-03-25', 4, 7),
( 1006, '2025-03-05', 5, 6.5),
( 1006, '2025-03-18', 6, 6),
( 1006, '2025-03-10', 21, 6),
( 1006, '2025-03-25', 22, 8.5),
( 1006, '2025-03-07', 23, 7),
( 1006, '2025-03-10', 24, 7.5),
( 1006, '2025-04-11', 1, 6.5),
( 1006, '2025-04-12', 2, 7),
( 1006, '2025-04-15', 3, 6),
( 1006, '2025-04-25', 4, 6),
( 1006, '2025-04-15', 5, 5.5),
( 1006, '2025-04-18', 6, 8.5),
( 1006, '2025-04-10', 21, 7.5),
( 1006, '2025-04-25', 22, 6),
( 1006, '2025-04-07', 23, 6.5),
( 1006, '2025-04-25', 24, 5),

( 1007, '2025-03-11', 1, 5),
( 1007, '2025-03-25', 2, 7),
( 1007, '2025-03-15', 3, 7.5),
( 1007, '2025-03-25', 4, 6),
( 1007, '2025-03-05', 5, 6.5),
( 1007, '2025-03-18', 6, 5),
( 1007, '2025-03-10', 21, 6),
( 1007, '2025-03-25', 22, 8.5),
( 1007, '2025-03-07', 23, 7),
( 1007, '2025-03-10', 24, 7.5),
( 1007, '2025-04-11', 1, 9),
( 1007, '2025-04-12', 2, 7),
( 1007, '2025-04-15', 3, 6),
( 1007, '2025-04-25', 4, 6),
( 1007, '2025-04-15', 5, 6),
( 1007, '2025-04-18', 6, 8.5),
( 1007, '2025-04-10', 21, 7.5),
( 1007, '2025-04-25', 22, 8),
( 1007, '2025-04-07', 23, 6.5),
( 1007, '2025-04-25', 24, 5),

( 1008, '2025-03-11', 1, 5),
( 1008, '2025-03-25', 2, 8),
( 1008, '2025-03-15', 3, 7.5),
( 1008, '2025-03-25', 4, 6),
( 1008, '2025-03-05', 5, 6.5),
( 1008, '2025-03-18', 6, 8),
( 1008, '2025-03-10', 21, 7),
( 1008, '2025-03-25', 22, 6),
( 1008, '2025-03-07', 23, 6),
( 1008, '2025-03-10', 24, 7.5),
( 1008, '2025-04-11', 1, 6.5),
( 1008, '2025-04-12', 2, 7),
( 1008, '2025-04-15', 3, 6),
( 1008, '2025-04-25', 4, 6),
( 1008, '2025-04-15', 5, 6),
( 1008, '2025-04-18', 6, 7),
( 1008, '2025-04-10', 21, 7.5),
( 1008, '2025-04-25', 22, 6),
( 1008, '2025-04-07', 23, 7),
( 1008, '2025-04-25', 24, 5),

( 1009, '2025-03-11', 1, 6),
( 1009, '2025-03-25', 2, 8),
( 1009, '2025-03-15', 3, 7.5),
( 1009, '2025-03-25', 4, 7),
( 1009, '2025-03-05', 5, 6.5),
( 1009, '2025-03-18', 6, 6),
( 1009, '2025-03-10', 21, 7),
( 1009, '2025-03-25', 22, 7),
( 1009, '2025-03-07', 23, 7),
( 1009, '2025-03-10', 24, 7.5),
( 1009, '2025-04-11', 1, 6.5),
( 1009, '2025-04-12', 2, 7),
( 1009, '2025-04-15', 3, 6),
( 1009, '2025-04-25', 4, 6),
( 1009, '2025-04-15', 5, 6),
( 1009, '2025-04-18', 6, 8.5),
( 1009, '2025-04-10', 21, 7.5),
( 1009, '2025-04-25', 22, 7),
( 1009, '2025-04-07', 23, 6.5),
( 1009, '2025-04-25', 24, 5),

( 1010, '2025-03-11', 1, 8),
( 1010, '2025-03-25', 2, 7),
( 1010, '2025-03-15', 3, 7.5),
( 1010, '2025-03-25', 4, 7),
( 1010, '2025-03-05', 5, 7),
( 1010, '2025-03-18', 6, 6),
( 1010, '2025-03-10', 21, 6.5),
( 1010, '2025-03-25', 22, 8.5),
( 1010, '2025-03-07', 23, 7),
( 1010, '2025-03-10', 24, 8),
( 1010, '2025-04-11', 1, 6),
( 1010, '2025-04-12', 2, 6),
( 1010, '2025-04-15', 3, 5),
( 1010, '2025-04-25', 4, 5),
( 1010, '2025-04-15', 5, 6.5),
( 1010, '2025-04-18', 6, 8.5),
( 1010, '2025-04-10', 21, 7.5),
( 1010, '2025-04-25', 22, 7),
( 1010, '2025-04-07', 23, 6.5),
( 1010, '2025-04-25', 24, 6),

( 1011, '2025-03-11', 1, 6),
( 1011, '2025-03-25', 2, 7),
( 1011, '2025-03-15', 3, 6),
( 1011, '2025-03-25', 4, 5),
( 1011, '2025-03-05', 5, 6.5),
( 1011, '2025-03-18', 6, 5.5),
( 1011, '2025-03-10', 21, 6),
( 1011, '2025-03-25', 22, 8),
( 1011, '2025-03-07', 23, 7),
( 1011, '2025-03-10', 24, 7.5),
( 1011, '2025-04-11', 1, 6),
( 1011, '2025-04-12', 2, 7.5),
( 1011, '2025-04-15', 3, 6),
( 1011, '2025-04-25', 4, 6),
( 1011, '2025-04-15', 5, 5.5),
( 1011, '2025-04-18', 6, 9),
( 1011, '2025-04-10', 21, 7.5),
( 1011, '2025-04-25', 22, 5),
( 1011, '2025-04-07', 23, 6.5),
( 1011, '2025-04-25', 24, 5),

( 1012, '2025-03-11', 1, 5),
( 1012, '2025-03-25', 2, 8),
( 1012, '2025-03-15', 3, 7.5),
( 1012, '2025-03-25', 4, 6),
( 1012, '2025-03-05', 5, 6.5),
( 1012, '2025-03-18', 6, 6),
( 1012, '2025-03-10', 21, 6),
( 1012, '2025-03-25', 22, 6.5),
( 1012, '2025-03-07', 23, 6),
( 1012, '2025-03-10', 24, 7.5),
( 1012, '2025-04-11', 1, 7),
( 1012, '2025-04-12', 2, 9),
( 1012, '2025-04-15', 3, 6),
( 1012, '2025-04-25', 4, 6),
( 1012, '2025-04-15', 5, 7),
( 1012, '2025-04-18', 6, 8.5),
( 1012, '2025-04-10', 21, 5),
( 1012, '2025-04-25', 22, 6),
( 1012, '2025-04-07', 23, 6.5),
( 1012, '2025-04-25', 24, 5),

( 1013, '2025-03-11', 1, 8),
( 1013, '2025-03-25', 2, 9),
( 1013, '2025-03-15', 3, 7.5),
( 1013, '2025-03-25', 4, 7),
( 1013, '2025-03-05', 5, 6.5),
( 1013, '2025-03-18', 6, 6),
( 1013, '2025-03-10', 21, 6),
( 1013, '2025-03-25', 22, 7.5),
( 1013, '2025-03-07', 23, 7),
( 1013, '2025-03-10', 24, 7.5),
( 1013, '2025-04-11', 1, 6.5),
( 1013, '2025-04-12', 2, 8),
( 1013, '2025-04-15', 3, 6),
( 1013, '2025-04-25', 4, 6),
( 1013, '2025-04-15', 5, 6),
( 1013, '2025-04-18', 6, 4.5),
( 1013, '2025-04-10', 21, 4),
( 1013, '2025-04-25', 22, 6),
( 1013, '2025-04-07', 23, 6),
( 1013, '2025-04-25', 24, 7),

( 1014, '2025-03-11', 1, 8),
( 1014, '2025-03-25', 2, 8),
( 1014, '2025-03-15', 3, 7.5),
( 1014, '2025-03-25', 4, 6),
( 1014, '2025-03-05', 5, 6.5),
( 1014, '2025-03-18', 6, 6),
( 1014, '2025-03-10', 21, 6),
( 1014, '2025-03-25', 22, 9),
( 1014, '2025-03-07', 23, 7),
( 1014, '2025-03-10', 24, 7.5),
( 1014, '2025-04-11', 1, 7),
( 1014, '2025-04-12', 2, 7),
( 1014, '2025-04-15', 3, 5.5),
( 1014, '2025-04-25', 4, 6),
( 1014, '2025-04-15', 5, 7),
( 1014, '2025-04-18', 6, 6),
( 1014, '2025-04-10', 21, 7.5),
( 1014, '2025-04-25', 22, 6),
( 1014, '2025-04-07', 23, 5),
( 1014, '2025-04-25', 24, 6),

( 1015, '2025-03-11', 1, 5),
( 1015, '2025-03-25', 2, 8),
( 1015, '2025-03-15', 3, 7.5),
( 1015, '2025-03-25', 4, 6),
( 1015, '2025-03-05', 5, 7),
( 1015, '2025-03-18', 6, 6.5),
( 1015, '2025-03-10', 21, 7),
( 1015, '2025-03-25', 22, 9),
( 1015, '2025-03-07', 23, 8),
( 1015, '2025-03-10', 24, 7.5),
( 1015, '2025-04-11', 1, 6.5),
( 1015, '2025-04-12', 2, 8),
( 1015, '2025-04-15', 3, 6),
( 1015, '2025-04-25', 4, 6),
( 1015, '2025-04-15', 5, 5.5),
( 1015, '2025-04-18', 6, 9),
( 1015, '2025-04-10', 21, 7.5),
( 1015, '2025-04-25', 22, 5),
( 1015, '2025-04-07', 23, 7),
( 1015, '2025-04-25', 24, 5),

( 1016, '2025-03-11', 1, 5),
( 1016, '2025-03-25', 2, 7.5),
( 1016, '2025-03-15', 3, 6),
( 1016, '2025-03-25', 4, 5),
( 1016, '2025-03-05', 5, 5.5),
( 1016, '2025-03-18', 6, 6.5),
( 1016, '2025-03-10', 21, 7),
( 1016, '2025-03-25', 22, 9.5),
( 1016, '2025-03-07', 23, 8),
( 1016, '2025-03-10', 24, 6.5),
( 1016, '2025-04-11', 1, 4.5),
( 1016, '2025-04-12', 2, 5.5),
( 1016, '2025-04-15', 3, 7),
( 1016, '2025-04-25', 4, 6.5),
( 1016, '2025-04-15', 5, 5),
( 1016, '2025-04-18', 6, 7),
( 1016, '2025-04-10', 21, 6.5),
( 1016, '2025-04-25', 22, 7),
( 1016, '2025-04-07', 23, 6.5),
( 1016, '2025-04-25', 24, 6),

( 1017, '2025-03-11', 1, 7),
( 1017, '2025-03-25', 2, 9),
( 1017, '2025-03-15', 3, 5.5),
( 1017, '2025-03-25', 4, 8),
( 1017, '2025-03-05', 5, 7),
( 1017, '2025-03-18', 6, 5.5),
( 1017, '2025-03-10', 21, 5.5),
( 1017, '2025-03-25', 22, 7.5),
( 1017, '2025-03-07', 23, 8),
( 1017, '2025-03-10', 24, 9),
( 1017, '2025-04-11', 1, 6),
( 1017, '2025-04-12', 2, 8),
( 1017, '2025-04-15', 3, 7),
( 1017, '2025-04-25', 4, 5),
( 1017, '2025-04-15', 5, 4),
( 1017, '2025-04-18', 6, 7),
( 1017, '2025-04-10', 21, 7.5),
( 1017, '2025-04-25', 22, 8),
( 1017, '2025-04-07', 23, 6.5),
( 1017, '2025-04-25', 24, 9),

( 1018, '2025-03-11', 1, 4),
( 1018, '2025-03-25', 2, 6.6),
( 1018, '2025-03-15', 3, 6),
( 1018, '2025-03-25', 4, 7.5),
( 1018, '2025-03-05', 5, 6),
( 1018, '2025-03-18', 6, 6.5),
( 1018, '2025-03-10', 21, 6.5),
( 1018, '2025-03-25', 22, 8),
( 1018, '2025-03-07', 23, 7.5),
( 1018, '2025-03-10', 24, 6),
( 1018, '2025-04-11', 1, 6),
( 1018, '2025-04-12', 2, 7.5),
( 1018, '2025-04-15', 3, 5),
( 1018, '2025-04-25', 4, 4),
( 1018, '2025-04-15', 5, 6.5),
( 1018, '2025-04-18', 6, 7),
( 1018, '2025-04-10', 21, 6),
( 1018, '2025-04-25', 22, 6.5),
( 1018, '2025-04-07', 23, 6.5),
( 1018, '2025-04-25', 24, 5.5),

( 1019, '2025-03-11', 1, 5.5),
( 1019, '2025-03-25', 2, 7),
( 1019, '2025-03-15', 3, 8),
( 1019, '2025-03-25', 4, 7.5),
( 1019, '2025-03-05', 5, 6),
( 1019, '2025-03-18', 6, 6.5),
( 1019, '2025-03-10', 21, 5.5),
( 1019, '2025-03-25', 22, 9),
( 1019, '2025-03-07', 23, 6.5),
( 1019, '2025-03-10', 24, 6),
( 1019, '2025-04-11', 1, 6),
( 1019, '2025-04-12', 2, 7.5),
( 1019, '2025-04-15', 3, 6.5),
( 1019, '2025-04-25', 4, 7.5),
( 1019, '2025-04-15', 5, 8),
( 1019, '2025-04-18', 6, 6),
( 1019, '2025-04-10', 21, 7),
( 1019, '2025-04-25', 22, 5.5),
( 1019, '2025-04-07', 23, 6.5),
( 1019, '2025-04-25', 24, 6),

( 1020, '2025-03-11', 1, 6),
( 1020, '2025-03-25', 2, 6),
( 1020, '2025-03-15', 3, 6),
( 1020, '2025-03-25', 4, 7),
( 1020, '2025-03-05', 5, 7),
( 1020, '2025-03-18', 6, 6.5),
( 1020, '2025-03-10', 21, 7.5),
( 1020, '2025-03-25', 22, 7),
( 1020, '2025-03-07', 23, 6.5),
( 1020, '2025-03-10', 24, 6.5),
( 1020, '2025-04-11', 1, 8),
( 1020, '2025-04-12', 2, 4.5),
( 1020, '2025-04-15', 3, 5.5),
( 1020, '2025-04-25', 4, 6.5),
( 1020, '2025-04-15', 5, 8),
( 1020, '2025-04-18', 6, 8.5),
( 1020, '2025-04-10', 21, 9),
( 1020, '2025-04-25', 22, 5),
( 1020, '2025-04-07', 23, 7),
( 1020, '2025-04-25', 24, 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `argomenti`
--

CREATE TABLE `argomenti` (
  `id` int(11) NOT NULL,
  `classe` varchar(6) NOT NULL,
  `data` date NOT NULL,
  `materia` int(11) NOT NULL,
  `argomento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `argomenti`
--

INSERT INTO `argomenti` (`id`, `classe`, `data`, `materia`, `argomento`) VALUES
(1,  '1B INF', '2025-04-06', 12, 'Le leve'),
(2,  '1B INF', '2025-04-06', 3, 'listening exercise page 70; personality vocabulary page 72'),
(3,  '1B INF', '2025-04-06', 1, 'Consegna e correzione verifica. Il genere comico: parodia e satira. Lettura di \"Calandrino lapidato\" di Boccaccio.'),
(4,  '1B INF', '2025-04-07', 5, 'Giochi matematici'),
(5,  '1B INF', '2025-04-07', 2, 'L età classica. La Lega di Delo; la politica di Pericle. '),
(6,  '1B INF', '2025-04-07', 1, 'Esercizi sui verbi. '),
(7,  '1B INF', '2025-04-07', 14, 'Tavola 8 - Proiezione ortogonale di composizione di solidi'),
(8,  '1B INF', '2025-04-08', 11, 'Verifica Excel/Calc.'),
(9,  '1B INF', '2025-04-08', 4, 'Unità 3 : POLINOMI Operazioni (+,-,×,:,^) PRODOTTI NOTEVOLI Espressioni con polinomi Problemi risolvibili con polinomi'),
(10, '1B INF', '2025-04-08', 3, 'simple past: irregular verbs page 74; reading page 73'),
(11, '1B INF', '2025-04-09', 4, 'Unità 3 : POLINOMI Operazioni (+,-,×,:,^) PRODOTTI NOTEVOLI Espressioni con polinomi Problemi risolvibili con polinomi'),
(12, '1B INF', '2025-04-09', 12, 'Esp 14: le leve'),
(13, '1B INF', '2025-04-09', 1, 'Interrogazione per recupero insufficienza del primo quadrimestre. '),
(14, '1B INF', '2025-04-09', 13, 'verifica scritta di chimica teorica..'),
(15, '1B INF', '2025-04-10', 4, 'Espressioni con polinomi Problemi risolvibili con polinomi'),
(16, '1B INF', '2025-04-10', 12, 'Interrogazione'),
(17, '1B INF', '2025-04-10', 1, 'Interrogazione per il recupero dell\'insufficienza del primo quadrimestre. '),
(18, '1B INF', '2025-04-10', 2, 'La prima fase della guerra del Peloponneso. '),
(19, '1B INF', '2025-04-10', 12, 'Le carrucole. Il baricentro e l’equilibrio '),
(20, '1B INF', '2025-04-10', 3, 'simple past of can and must page 77; adjectives to describe experiences page 76'),
(21, '1B INF', '2025-04-13', 13, 'Esperienza La legge di Proust'),
(22, '1B INF', '2025-04-13', 3, 'Page 79: translation of \"sembrare\"; either...or / neither...nor'),
(23, '1B INF', '2025-04-13', 12, 'Introduzione alla cinematica'),
(24, '1B INF', '2025-04-13', 1, 'La narrativa sociale. '),
(25, '1B INF', '2025-04-14', 1, 'Corso \"Sicurezza stradale\". Interrogazione'),
(26, '1B INF', '2025-04-14', 2, 'Corso \"Sicurezza stradale\" '),
(27, '1B INF', '2025-04-15', 3, 'review units 5-6 page 82-83 as formative assessment'),
(28, '1B INF', '2025-04-15', 4, 'Espressioni con polinomi Problemi risolvibili con polinomi'),
(29, '1B INF', '2025-04-16', 1, 'La narrativa di introspezione; \"Anne si presenta\" dal \"Diario\" di Anne Frank. '),
(30, '1B INF', '2025-04-16', 12, 'Esp 14: le carrucole.'),
(31, '1B INF', '2025-04-16', 13, 'Schemi a blocchi utili alla nomenclatura dei composti chimici - Nomenclatura IUPAC dei sali binari - Nomenclatura IUPAC degli Idruri metallici.'),
(32, '1B INF', '2025-04-16', 4, 'Espressioni con polinomi Problemi risolvibili con polinomi'),
(33, '1B INF', '2025-04-17', 1, 'La narrativa di formazione. \"Una rondine nel Tevere\" da \"Ragazzi di vita\" di Pier Paolo Pasolini.'),
(34, '1B INF', '2025-04-17', 2, 'La guerra del Peloponneso; l\'egemonia di Sparta; l\'egemonia tebana. '),
(35, '1B INF', '2025-04-17', 12, 'Grafici spazio-tempo e velocità-tempo'),
(36, '1B INF', '2025-04-17', 3, 'Correzione formative test page 82-83 (peer assessment)'),
(37, '1B INF', '2025-04-20', 13, 'Interrogazioni. Esperienza indicatori di acidità'),
(38, '1B INF', '2025-04-20', 3, 'revision exercises un.5 WB page 209-210-211-212'),
(39, '1B INF', '2025-04-20', 12, 'Moto rettilineo uniforme'),
(40, '1B INF', '2025-04-20', 1, 'Interrogazione'),
(41, '1B INF', '2025-04-21', 5, 'Valutazione percorso di ginnastica artistica.'),
(42, '1B INF', '2025-04-21', 1, 'Indicazioni teoriche per la stesura di un riassunto.'),
(43, '1B INF', '2025-04-21', 2, 'Introduzione ai Macedoni; Filippo II.'),
(44, '1B INF', '2025-04-22', 4, 'Espressioni con polinomi Problemi risolvibili con polinomi'),
(45, '1B INF', '2025-04-23', 1, 'Interrogazione: '),
(46, '1B INF', '2025-04-23', 12, 'La guidovia a cuscino d’aria'),
(47, '1B INF', '2025-04-23', 13, 'Consegna della quarta verifica scritta e risposte ai dubbi della classe.'),
(48, '1B INF', '2025-04-24', 12, 'Verifica'),
(49, '1B INF', '2025-04-24', 3, 'revision exercises un.6 WB page 217-218-219'),
(50, '1B INF', '2025-04-24', 2, 'Alessandro Magno: conquista e organizzazione dell\'impero; l\'età dei diadochi; i regni ellenistici.'),

(51, '4B INF', '2025-04-06', 2, 'India, Cina e Giappone nella seconda metà dell\'Ottocento. '),
(52, '4B INF', '2025-04-06', 1, '\"Inno alla notte\" di Novalis. '),
(53, '4B INF', '2025-04-06', 4, 'Esercizi su classificazione dei punti di discontinuità ,validità delle ipotesi del Teorema di Esistenza degli zeri'),
(54, '4B INF', '2025-04-06', 24, 'Onda stazionaria: concetto, definizione di ventri e di nodi, ROS. Cablaggio strutturato. Canale analogico: sistema di trasmissione, canale ideale, distorsione lineare e non lineare, rumore e rapporto segnale-rumore (S/N), diafonia (paradiafonia e telediafonia).'),
(55, '4B INF', '2025-04-07', 3, 'Grammar: hw correction + CONSEGNA COMPITO IN CLASSE'),
(56, '4B INF', '2025-04-07', 23, 'Ajax Verifica per assenti e insufficienti. Avanzamento progetti Alpha Vantage. Installazione di xampp'),
(57, '4B INF', '2025-04-07', 4, 'Eserici su continuità , discontinuità e teorema di esistenza degli zeri . Vedere file 07.03 su classroom'),
(58, '4B INF', '2025-04-07', 1, 'La lirica patriottica e dialettale in Italia; \"Er giorno der \" di Giuseppe Gioachino Belli. La narrativa romantica: il romanzo gotico'),
(59, '4B INF', '2025-04-08', 4, 'simulazione di verifica su fuzioni continue e punti di discontinuità. Vedere file 08.03 su classroom'),
(60, '4B INF', '2025-04-08', 3, 'Frankenstein: oral test part 6'),
(61, '4B INF', '2025-04-08', 24, 'Rappresentazione di un sistema tramite schema a blocchi. Concetto di sistema ad anello aperto e ad anello chiuso.'),
(62, '4B INF', '2025-04-08', 21, 'Introduzione ad OpenXML'),
(63, '4B INF', '2025-04-09', 3, 'HW correction (about unit 5) + vocabulary unit 6 and class discussion	'),
(64, '4B INF', '2025-04-09', 23, 'OpenXML: Applicazione bold, underline, ecc'),
(65, '4B INF', '2025-04-09', 2, 'Interrogazioni'),
(66, '4B INF', '2025-04-09', 22, 'Packet Tracer: ping tra 2 host. Simulazione del protocollo ARP e di echo request e reply del protocollo ICMP '),
(67, '4B INF', '2025-04-10', 23, 'php Introduzione ai web server e alla costruzione delle pagine dinamiche. Utilizzo di xampp. Sintassi base di php. Dichiarazione ed utilizzo delle variabili. Funzioni. Vettori enumetativi e associativi. Esercizio 01'),
(68, '4B INF', '2025-04-10', 4, 'verifica orale: punti di discontinuità, definizioni e teoremi sulla funzioni continue, limiti notevoli'),
(69, '4B INF', '2025-04-10', 5, 'Salto in alto'),
(70, '4B INF', '2025-04-13', 3, 'Oral test part 8'),
(71, '4B INF', '2025-04-13', 4, 'La derivata della funzione in un punto: definizioni e significati geometrici. '),
(72, '4B INF', '2025-04-13', 22, 'Dettaglio del protocollo ARP. Indirizzi IP e concetto di subnet mask. Messa in AND per ricavare indirizzo di rete. Caratteristiche delle classi degli indirizzi IP'),
(73, '4B INF', '2025-04-15', 3, 'Oral test part 8 '),
(74, '4B INF', '2025-04-15', 24, 'Sistema ad anello aperto e ad anello chiuso. Amplificatori a retroazione negativa: effetti della retroazione sul guadagno, effetti della retroazione sui disturbi. Amplificatori operazionali: caratteristiche e funzionamento, configurazione invertente e non invertente.'),
(75, '4B INF', '2025-04-15', 4, 'Verifica di recupero per Pelisseri. Calcolo di derivate in un punto applicando la definizione di derivata., Vedere file 15.03 su classroom '),
(76, '4B INF', '2025-04-15', 21, 'Continuazione teoria UML:Class diagram Continuazione OpenXML: creazione nuovo stile'),
(77, '4B INF', '2025-04-16', 24, 'Amplificatore operazionale: spiegazione e dimostrazione funzionamento configurazione invertente e non invertente.'),
(78, '4B INF', '2025-04-16', 2, 'Interrogazioni'),
(79, '4B INF', '2025-04-16', 22, 'Packet Tracer: introduzione alla configurazione dei router. Fase di POST e bootstrap del sistema. Modalità di configurazione user e config. Principali comandi e modalità di input'),
(80, '4B INF', '2025-04-17', 4, 'Calcolo delle derivate calcolate in un punto e in x tramite la definizione . Vedere file 17.03 su classroom'),
(81, '4B INF', '2025-04-17', 21, 'UML Es Class diagram'),
(82, '4B INF', '2025-04-17', 23, 'php Concetto di web form e pulsante di submit. Richieste HTTP GET e HTTP POST. Passaggio dei parametri al server. Esercizio 02'),
(83, '4B INF', '2025-04-20', 4, 'Derivata di una funzione in un punto generico. Prime regole di derivazione. vedere file 20.03 su classroom'),
(84, '4B INF', '2025-04-20', 22, 'Indirizzi IP classfull con calcolo del numero di reti per classe e host per rete. Indirizzi IP speciali: \"quato host\", loopback, broadcast limitato. Indirizzi link-local (APIPA). Definizione di indirizzo IP classless. Definizione di dominio di broadcast'),
(85, '4B INF', '2025-04-20', 1, 'Charles Dickens e il romanzo sociale; presentazione e trama di \"Ivanhoe\" di Walter Scott.'),
(86, '4B INF', '2025-04-20', 2, 'Interrogazioni'),
(87, '4B INF', '2025-04-21', 23, 'php Esecuzione del submit tramite procedure javascript e jQuery. Considerazioni sulle applicazione orientate alle pagine e applicazioni orientate ai servizi. Introduzione a mySQL e al linguaggio SQL. Il tipo JSON in PHP (longtext). Serializzazione e Parsing di uno stream json. Creazione manuale di una tabella studenti e inserimento di record.'),
(88, '4B INF', '2025-04-21', 21, 'Es Class Diagram'),
(89, '4B INF', '2025-04-21', 1, '\"La commedia umana\" di Honoré de Balzac; \"Papà Goriot\": trama e analisi del brano \"La pensione Vauquer\". '),
(90, '4B INF', '2025-04-21', 5, 'Esercizi di matematica segnati dalla prof'),
(91, '4B INF', '2025-04-22', 24, 'Ripasso configurazioni OP-AMP. Incontro in aula magna.'),
(92, '4B INF', '2025-04-22', 4, 'derivate con definizione. Dimostrazione della derivata di y = lnx, y= e^x, e della derivata di una somma., Vedere file 22.03 su classroom'),
(93, '4B INF', '2025-04-22', 22, 'Concetto di subnetting. Borrowing dei bit. Esempio di piano di indirizzamento con subnetting'),
(94, '4B INF', '2025-04-22', 21, 'Convegno aula Magna Interrogazioni'),
(95, '4B INF', '2025-04-23', 24, 'Configurazione voltage follower op-amp. Esercizi su op-amp(piccole variazioni configurazioni base e collegamento di operazionali in cascata).'),
(96, '4B INF', '2025-04-23', 5, 'Valutazione salto in alto'),
(97, '4B INF', '2025-04-23', 22, 'Packet Tracer: impostazione del nome del router e della password. Configurazione degli indirizzi IP delle interfacce del router. Esame della routing table. Definizione di VLAN. Concetto d interfaccia in modalità access e trunk'),
(98, '4B INF', '2025-04-24', 23, 'php. Esercizio 03 \"Registrazione Utenti\". Caricamento dinamico dei due listbox. Connessione tra PHP e MySQL. L\'oggetto mysqli con realtive proprietà e metodi. Costruzione di una libreria di interfacciamento tra PHP e mySQL '),
(99, '4B INF', '2025-04-24', 4, 'Derivata della somma di funzioni e di costante per funzione.(con dimostrazione) : esercizi. Vedere fiel 24.03 su classroom. Derivata di un prodotto'),
(100, '4B INF', '2025-04-24', 21, 'Teoria dei casi d\'uso e dei diagrammi di sequenza'),
(101, '4B INF', '2025-04-24', 1, 'Il romanzo storico e l\'autobiografia in Italia; \"Le confessioni di un italiano\" di Ippolito Nievo: trama, caratteristiche del romanzo, analisi del proemio.');

-- --------------------------------------------------------

--
-- Struttura della tabella `assenze`
--

CREATE TABLE `assenze` (
  `id` int(11) NOT NULL,
  `matricola` int(11) NOT NULL,
  `data` date NOT NULL,
  `giustificato` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `assenze`
--

INSERT INTO `assenze` (`id`, `matricola`, `data`, `giustificato`) VALUES
(1,  1001, '2025-03-11', 1),
(2,  1001, '2025-03-12', 1),
(3,  1001, '2025-03-13', 1),
(4,  1002, '2025-03-07', 1),
(5,  1002, '2025-03-18', 0),
(6,  1002, '2025-03-26', 0),
(7,  1003, '2025-03-05', 1),
(8,  1003, '2025-03-15', 1),
(9,  1003, '2025-03-25', 0),
(10, 1003, '2025-03-26', 0),
(11, 1004, '2025-03-01', 1),
(12, 1004, '2025-03-14', 1),
(13, 1005, '2025-03-11', 1),
(14, 1005, '2025-03-12', 0),
(15, 1001, '2025-04-10', 0),
(16, 1001, '2025-04-16', 0),
(17, 1001, '2025-04-29', 0),
(18, 1002, '2025-04-17', 0),
(19, 1002, '2025-04-18', 0),
(20, 1002, '2025-04-19', 0),
(21, 1002, '2025-04-20', 0),
(22, 1003, '2025-04-24', 0),
(23, 1004, '2025-04-06', 0),
(24, 1004, '2025-04-20', 0),
(25, 1005, '2025-04-10', 0),
(26, 1005, '2025-04-27', 0),
(27, 1005, '2025-04-28', 0),
(28, 1001, '2025-05-20', 0),
(29, 1001, '2025-05-21', 0),
(30, 1001, '2025-05-23', 0),
(31, 1001, '2025-05-24', 0),
(32, 1001, '2025-05-28', 0),
(33, 1002, '2025-05-06', 0),
(34, 1002, '2025-05-10', 0),
(35, 1002, '2025-05-19', 0),
(36, 1003, '2025-05-27', 0),
(37, 1003, '2025-05-28', 0),
(38, 1003, '2025-05-29', 0),
(39, 1004, '2025-05-06', 0),
(40, 1004, '2025-05-07', 0),
(41, 1005, '2025-05-09', 0),
(42, 1005, '2025-05-25', 0);

-- --------------------------------------------------------

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `argomenti`
--
ALTER TABLE `argomenti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `assenze`
--
ALTER TABLE `assenze`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `classi`
--
ALTER TABLE `classi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomeClasseIndex` (`nome`);

--
-- Indici per le tabelle `materie`
--
ALTER TABLE `materie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`matricola`);

--
-- Indici per le tabelle `voti`
--
ALTER TABLE `voti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `argomenti`
--
ALTER TABLE `argomenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `assenze`
--
ALTER TABLE `assenze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `classi`
--
ALTER TABLE `classi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `materie`
--
ALTER TABLE `materie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `studenti`
--
ALTER TABLE `studenti`
  MODIFY `matricola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT per la tabella `voti`
--
ALTER TABLE `voti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
