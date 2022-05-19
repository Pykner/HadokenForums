-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 19, 2022 alle 23:29
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hadoken`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `account`
--

CREATE TABLE `account` (
  `Accountid` int(11) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `stat` varchar(2000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `account`
--

INSERT INTO `account` (`Accountid`, `user`, `hash`, `stat`, `email`, `pic`) VALUES
(1, 'Pykner', '$2y$10$fHcbP6AGEMTWRqaupaxg8.NRSOZ8OUlFQ5xbG8Fu7dnWmDAuPBlwS', 'Hello! i am an hadoken forums user.', 'emasonic2@gmail.com', 'img/profile/profilepic1.jpg'),
(2, 'gamering69420', '$2y$10$UPBR8brRLIM.ugixYSQ4K.TmuY52FPZJNV/UwsebIfS5kFbfIjkXW', 'Hello! i am an hadoken forums user.', 'gamering69420@gmail.com', 'img/profile/profilepic1.jpg'),
(3, 'Ky_main', '$2y$10$.hfO1RHqnarFNDi7rG2LheiMD3n2H0B9JyvRZZHhJxI2/yamPNngm', 'Hello! i am an hadoken forums user.', 'runupgrab@gmail.com', 'img/profile/profilepic1.jpg'),
(4, 'Baiken_main', '$2y$10$.QWG.NZOoFrgsd7yEPMwZege93x4A6xgRMrgEj6w.s6VJUx2YVuWy', 'Hello! i am an hadoken forums user.', 'booba@booba.com', 'img/profile/profilepic2.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `matchmaking`
--

CREATE TABLE `matchmaking` (
  `Matchmakingid` int(11) NOT NULL,
  `game` varchar(100) DEFAULT NULL,
  `skill_level` varchar(50) DEFAULT NULL,
  `play_hour` varchar(50) DEFAULT NULL,
  `communication` varchar(200) DEFAULT NULL,
  `txt` varchar(255) DEFAULT NULL,
  `FkAccountid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

CREATE TABLE `posts` (
  `Postid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `txt` varchar(8000) DEFAULT NULL,
  `date_post` datetime DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `FkThreadId` int(11) DEFAULT NULL,
  `FkAccountid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `resources`
--

CREATE TABLE `resources` (
  `Resourceid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `txt` varchar(8000) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `FkAccountid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `threads`
--

CREATE TABLE `threads` (
  `Threadid` int(11) NOT NULL,
  `FkAccountid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `tournament`
--

CREATE TABLE `tournament` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `txt` varchar(8000) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `FkAccountid` int(11) DEFAULT NULL,
  `major` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `webupdate`
--

CREATE TABLE `webupdate` (
  `Webupdateid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `txt` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Accountid`);

--
-- Indici per le tabelle `matchmaking`
--
ALTER TABLE `matchmaking`
  ADD PRIMARY KEY (`Matchmakingid`),
  ADD KEY `FkAccountid` (`FkAccountid`);

--
-- Indici per le tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Postid`),
  ADD KEY `FkAccountid` (`FkAccountid`),
  ADD KEY `postThreadsIndex` (`FkThreadId`,`date_post`);

--
-- Indici per le tabelle `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`Resourceid`),
  ADD KEY `FkAccountid` (`FkAccountid`);

--
-- Indici per le tabelle `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`Threadid`),
  ADD KEY `FkAccountid` (`FkAccountid`);

--
-- Indici per le tabelle `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FkAccountid` (`FkAccountid`);

--
-- Indici per le tabelle `webupdate`
--
ALTER TABLE `webupdate`
  ADD PRIMARY KEY (`Webupdateid`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `account`
--
ALTER TABLE `account`
  MODIFY `Accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `matchmaking`
--
ALTER TABLE `matchmaking`
  MODIFY `Matchmakingid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `posts`
--
ALTER TABLE `posts`
  MODIFY `Postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `resources`
--
ALTER TABLE `resources`
  MODIFY `Resourceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `threads`
--
ALTER TABLE `threads`
  MODIFY `Threadid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tournament`
--
ALTER TABLE `tournament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `webupdate`
--
ALTER TABLE `webupdate`
  MODIFY `Webupdateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `matchmaking`
--
ALTER TABLE `matchmaking`
  ADD CONSTRAINT `matchmaking_ibfk_1` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);

--
-- Limiti per la tabella `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`FkThreadId`) REFERENCES `threads` (`Threadid`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);

--
-- Limiti per la tabella `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);

--
-- Limiti per la tabella `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_ibfk_1` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);

--
-- Limiti per la tabella `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
