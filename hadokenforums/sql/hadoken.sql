-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 22, 2022 alle 21:57
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
(4, 'Baiken_main', '$2y$10$.QWG.NZOoFrgsd7yEPMwZege93x4A6xgRMrgEj6w.s6VJUx2YVuWy', 'Hello! i am an hadoken forums user.', 'booba@booba.com', 'img/profile/profilepic2.jpg'),
(5, 'jin_main', '$2y$10$EHmtV1Ihps2SObkZ5Y4X8u6won1V3b/4kKJ4dDXR7h8laBQq7.3oK', 'Hello! i am an hadoken forums user.', 'electric@mishima.com', 'img/profile/profilepic1.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `Categoryid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`Categoryid`, `title`, `description`) VALUES
(1, 'Website feedback', 'Have you noticed something wrong with the site? Do you have any ideas on how to improve Hadokenforums? Drop a post in here and let us know!'),
(2, 'Guilty Gear general', 'The forum for general topics about Guilty Gear. Discussions on techniques, strategies, glitches, and match info, should be posted in their specific forums!'),
(3, 'Strive matchup discussion', 'A place to discuss Guilty Gear Strive matchups'),
(4, 'Tekken general', 'The forum for general topics about tekken. Discussions on techniques, strategies, glitches, and match info, should be posted in their specific forums!');

-- --------------------------------------------------------

--
-- Struttura della tabella `game`
--

CREATE TABLE `game` (
  `Gameid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `txt` varchar(8000) DEFAULT NULL,
  `date_post` datetime DEFAULT NULL,
  `FkTopicid` int(11) DEFAULT NULL,
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
  `FkAccountid` int(11) DEFAULT NULL,
  `FkGameid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `topics`
--

CREATE TABLE `topics` (
  `Topicid` int(11) NOT NULL ,
  `title` varchar(255) DEFAULT NULL,
  `txt` varchar(8000) DEFAULT NULL,
  `date_post` datetime DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `FkCategory` int(11) DEFAULT NULL,
  `FkAccount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `topics`
--

INSERT INTO `topics` (`Topicid`, `title`, `txt`, `date_post`, `likes`, `FkCategory`, `FkAccount`) VALUES
(1, 'What do you think will be unvailed in the may 25th season 2 announcement?', 'What do you guys think arcsys will show off on the 25th? i\'m expecting a release date for cross-play and at least one character reveal.\r\nI hope it\'s sin.', '2022-05-22 21:26:28', 32, 2, 3);

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
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Categoryid`);

--
-- Indici per le tabelle `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`Gameid`);

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
  ADD KEY `FkTopicid` (`FkTopicid`),
  ADD KEY `FkAccountid` (`FkAccountid`);

--
-- Indici per le tabelle `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`Resourceid`),
  ADD KEY `FkAccountid` (`FkAccountid`),
  ADD KEY `FkGameid` (`FkGameid`);

--
-- Indici per le tabelle `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`Topicid`),
  ADD KEY `FkCategory` (`FkCategory`),
  ADD KEY `FkAccount` (`FkAccount`);

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

ALTER TABLE `topics`
  MODIFY `Topicid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `account`
  MODIFY `Accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `game`
--
ALTER TABLE `game`
  MODIFY `Gameid` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`FkTopicid`) REFERENCES `topics` (`Topicid`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);

--
-- Limiti per la tabella `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`),
  ADD CONSTRAINT `resources_ibfk_2` FOREIGN KEY (`FkGameid`) REFERENCES `game` (`Gameid`);

--
-- Limiti per la tabella `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`FkCategory`) REFERENCES `category` (`Categoryid`),
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`FkAccount`) REFERENCES `account` (`Accountid`);

--
-- Limiti per la tabella `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`FkAccountid`) REFERENCES `account` (`Accountid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
