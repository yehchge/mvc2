-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2013 年 10 月 21 日 14:38
-- 伺服器版本: 5.5.15
-- PHP 版本: 5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `mvc`
--

-- --------------------------------------------------------

--
-- 表的結構 `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `dataid` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`dataid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- 轉存資料表中的資料 `data`
--

INSERT INTO `data` (`dataid`, `text`) VALUES
(36, 'test1'),
(37, 'test2'),
(38, 'test3'),
(39, 'test4'),
(40, 'test5'),
(41, 'test6'),
(42, 'test7'),
(43, 'test8'),
(44, 'test9'),
(45, 'test10'),
(46, 'test11'),
(47, 'test33'),
(48, 'asdf');

-- --------------------------------------------------------

--
-- 表的結構 `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `noteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- 轉存資料表中的資料 `note`
--

INSERT INTO `note` (`noteid`, `title`, `userid`, `content`, `date_added`) VALUES
(1, 'Jesse', 8, 'This is a note.', '0000-00-00 00:00:00'),
(6, 'adsfa2', 8, 'asdfsa2', '2013-10-17 19:26:37'),
(7, 'asfqw1', 8, 'asfasd1', '2013-10-17 19:26:42'),
(8, 'DOG FACE', 34, '111\r\n', '2013-10-17 19:31:08'),
(9, 'zxczzxcZ', 8, 'SDAFDSAFASdsdgrwtjrtj', '2013-10-19 07:46:47');

-- --------------------------------------------------------

--
-- 表的結構 `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `name` varchar(50) NOT NULL,
  `personid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `age` int(3) unsigned NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`personid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 轉存資料表中的資料 `person`
--

INSERT INTO `person` (`name`, `personid`, `age`, `gender`) VALUES
('JESSE', 1, 24, 'm'),
('joe', 2, 22, 'm'),
('jenny', 3, 434, 'f');

-- --------------------------------------------------------

--
-- 表的結構 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('default','admin','owner') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- 轉存資料表中的資料 `user`
--

INSERT INTO `user` (`userid`, `login`, `password`, `role`) VALUES
(1, 'bill', 'f2f5a8950c0e218967dda7120648288a', 'owner'),
(7, 'test12', '09c78f479e758519ce90d69ddc19c3e4', 'owner'),
(8, 'demo', '88f2dccb02b2a20615211e5492f85204', 'owner'),
(33, 'sdfasdf', '6b842126a840d51b692e5b3a75664733', 'default'),
(34, 'jesse2', '8aa8c12fd71338d4ed652ffe41cdb792', 'default'),
(35, 'test33', '37017ef30e2adb8e9de2846a03e6caa1', 'default');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
         