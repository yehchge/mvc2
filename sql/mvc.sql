-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2013 年 10 月 15 日 18:45
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- 轉存資料表中的資料 `data`
--

INSERT INTO `data` (`id`, `text`) VALUES
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
(46, 'test11');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('default','admin','owner') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- 轉存資料表中的資料 `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `role`) VALUES
(1, 'bill', 'f2f5a8950c0e218967dda7120648288a', 'owner'),
(3, 'joe', 'e10adc3949ba59abbe56e057f20f883e', 'default'),
(7, 'test12', '09c78f479e758519ce90d69ddc19c3e4', 'owner'),
(8, 'demo', '88f2dccb02b2a20615211e5492f85204', 'owner'),
(29, 'test', 'f3b5f290b99002f88214102466780711', 'default');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
         