-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2013 年 10 月 12 日 16:26
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- 轉存資料表中的資料 `data`
--

INSERT INTO `data` (`id`, `text`) VALUES
(4, 't45wtw5'),
(5, 'w45t'),
(6, 'w45w4'),
(7, 'w45tw'),
(9, 'ruur  68u9'),
(10, 'fjaopfj'),
(11, 'wger'),
(12, 'nvorhk'),
(13, 'ofwq0e8u'),
(14, 'osaouhv');

-- --------------------------------------------------------

--
-- 表的結構 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('default','admin','owner') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- 轉存資料表中的資料 `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'bill', 'e10adc3949ba59abbe56e057f20f883e', 'owner'),
(3, 'joe', 'e10adc3949ba59abbe56e057f20f883e', 'default'),
(7, 'test12', '60474c9c10d7142b7508ce7a50acf414', 'owner');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
         