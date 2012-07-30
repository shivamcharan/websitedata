-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2010 at 07:01 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `programming`
--

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `topicid` int(1) NOT NULL AUTO_INCREMENT,
  `topictitle` varchar(200) NOT NULL,
  `topicdescription` varchar(500) NOT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topicid`, `topictitle`, `topicdescription`) VALUES
(1, 'What is jquery ?', 'jQuery is a lightweight cross-browser JavaScript library that emphasizes interaction between JavaScript and HTML. It was released in January 2006 at BarCamp NYC by John Resig. Used by over 27% of the 10,000 most visited websites, jQuery is the most popular JavaScript library in use today.'),
(2, 'What is javascript', 'JavaScript is an object-oriented scripting language used to enable programmatic access to computational objects within a host environment. Although also used in other applications, it is primarily used in the form of client-side JavaScript, implemented as part of a web browser, providing enhanced user interfaces and dynamic websites. JavaScript is a dialect of the ECMAScript standard and is characterized as a dynamic, weakly typed, prototype-based language with first-class functions. JavaScript '),
(3, 'Where to download Jquery ?', 'You can download this javascript framework at jquery.com ?'),
(4, 'How can i develop jquery Plug in ?', 'Well, First of all you need a working brain !');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
