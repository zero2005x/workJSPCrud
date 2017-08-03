-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-08-03 06:46:41
-- 伺服器版本: 10.1.24-MariaDB
-- PHP 版本： 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

CREATE TABLE `article` (
  `idarticle` int(12) NOT NULL,
  `libelle` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qte` int(10) NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`idarticle`, `libelle`, `description`, `prix`, `category`, `qte`, `img`) VALUES
(15, '測試四', 'DGW', 234, 'BOSTON', 4, 'images/null'),
(23, 'salkfj', 'sadlf;kj', 123, 'BOSTON', 43, 'images/24212-03.jpg'),
(24, 'dag', 'oudiu', 112312, 'BOSTON', 46, 'images/02330-01.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `register`
--

INSERT INTO `register` (`id`, `name`, `password`, `email`, `sex`, `country`) VALUES
(2, 'asdas', 'sadasd', 'dddk@javatpoint.com', 'Male', 'India'),
(17, 'arun', 'kumar', 'arun@gmail.com', 'Male', 'India'),
(19, 'sonoo', 'jaiswal', 'sonoo@javatpoint.com', 'male', 'Pakistan'),
(20, 'Ashok', 'ashok', 'ashok@javatpoint.com', 'male', 'India'),
(25, 'wang', '123', '123@asd', 'male', 'India'),
(28, '王', '123', '123@123', 'male', 'India'),
(48, '陳', '123', '123@123', 'male', 'India'),
(50, 'sam', '123', '123@123', 'male', 'India'),
(51, 'lksjglskjg', '12345', 'fdsf@sfaf', 'male', 'India'),
(52, 'sddsag', 'qwert', '123@ldskfjlgdsk', 'male', 'Berma'),
(53, 'SDF', '1234', '123@sdfa', 'male', 'India'),
(54, 'SDF', '12345', '123@sdfa', 'male', 'India');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idarticle`);

--
-- 資料表索引 `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `idarticle` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用資料表 AUTO_INCREMENT `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
