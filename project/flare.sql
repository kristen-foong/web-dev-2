-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 01:45 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flare`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addFriend` (IN `user` VARCHAR(80), IN `friend` VARCHAR(80))  NO SQL
INSERT INTO friends VALUES (user,friend)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addMessage` (IN `user` VARCHAR(80), IN `friend` VARCHAR(80), IN `msg` TEXT)  NO SQL
INSERT INTO `messages`
VALUES (user, friend, msg)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editUserForFriends` (IN `user` VARCHAR(80), IN `newName` VARCHAR(80))  NO SQL
UPDATE friends
SET username = newName
WHERE user = username$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editUserForLogin` (IN `user` VARCHAR(80), IN `newName` VARCHAR(80))  NO SQL
UPDATE login
SET username = newName
WHERE user = username$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editUserForMessages` (IN `user` VARCHAR(80), IN `newName` VARCHAR(80))  NO SQL
UPDATE messages
SET username = newName
WHERE user = username$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findFriends` (IN `user` VARCHAR(80))  NO SQL
SELECT friendname
FROM friends
WHERE user = `username`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getMessages` (IN `friend` VARCHAR(80), IN `user` VARCHAR(80))  NO SQL
SELECT `message` FROM `messages` WHERE `username` = user AND `addressed` = friend$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login` ()  NO SQL
SELECT * FROM login$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `registerMember` (IN `username` VARCHAR(80), IN `password` VARCHAR(80))  NO SQL
INSERT INTO `login` VALUES (username,password)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `username` varchar(80) NOT NULL,
  `friendname` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`username`, `friendname`) VALUES
('darkkermit', 'kermit'),
('dwightschrute', 'jimhalpert'),
('darkkermit', 'elmo'),
('dwightschrute', 'elmo'),
('cpsc2030','darkkermit'),
('darkkermit', 'dwightschrute');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('cpsc2030', 'cpsc2030'),
('darkkermit', 'thememes'),
('dwightschrute', 'bearsbeetsbattlestargalatica'),
('kermit', 'thefrog');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `username` varchar(80) NOT NULL,
  `addressed` varchar(80) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`username`, `addressed`, `message`) VALUES
('darkkermit', 'kermit', 'come to the dark side we have cookies'),
('darkkermit', 'kermit', 'you insolent fool'),
('darkkermit', 'elmo', 'elmo-stuffing-face-in-white-powder.png'),
('darkkermit', 'kermit', 'frog frog frog'),
('darkkermit', 'kermit', 'asdfsad'),
('darkkermit', 'elmo', 'u red furry'),
('darkkermit', 'kermit', 'hello there kermit'),
('darkkermit', 'kermit', 'more messages for kermit'),
('darkkermit', 'kermit', 'spam'),
('darkkermit', 'elmo', 'hello elmo'),
('darkkermit', 'kermit', 'more spam'),
('darkkermit', 'kermit', 'more spam spam'),
('darkkermit', 'kermit', 'more spam spamcool'),
('darkkermit', 'kermit', 'lets add mmore'),
('darkkermit', 'kermit', 'even more'),
('darkkermit', 'kermit', 'darkkermit'),
('darkkermit', 'kermit', 'darkkermit'),
('darkkermit', 'kermit', 'darkkermit'),
('darkkermit', 'kermit', 'kermit hello'),
('darkkermit', 'kermit', 'ok darkkermit'),
('darkkermit', 'elmo', 'gives elmo more texts'),
('darkkermit', 'elmo', 'pushes in more texts to elmo'),
('darkkermit', 'kermit', 'gives kermit another text'),
('darkkermit', 'dwightschrute', 'gives a text to dwight');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
