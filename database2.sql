-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2016 at 04:48 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adname` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adname`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(4, 'admin3', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(5, 'admin2', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(7, 'admin5', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Table structure for table `europrojects`
--

CREATE TABLE `europrojects` (
  `id` int(11) NOT NULL,
  `projectName` varchar(300) NOT NULL,
  `fundingSource` varchar(300) NOT NULL,
  `cost` varchar(25) NOT NULL,
  `timeLine` varchar(25) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `europrojects`
--

INSERT INTO `europrojects` (`id`, `projectName`, `fundingSource`, `cost`, `timeLine`, `description`) VALUES
(1, 'â€žÐšÐ°Ð½Ð°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð¸ Ð²Ð¾Ð´Ð¾Ð¿Ñ€Ð¾Ð²Ð¾Ð´ Ð½Ð° ÐºÐ². â€žÐ—Ð°Ð¿Ð°Ð´â€ Ð² Ð³Ñ€. ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°', 'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð¤ÐÐ  ', '380 224,06 ÐµÐ²Ñ€Ð¾', '04.09.2009- 29.08.2011', 'Ð˜Ð·Ð³Ñ€Ð°Ð´ÐµÐ½Ð° e ÐºÐ°Ð½Ð°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð¸\r\nÐ²Ð¾Ð´Ð¾Ð¿Ñ€Ð¾Ð²Ð¾Ð´ Ð² ÐºÐ². â€žÐ—Ð°Ð¿Ð°Ð´â€ Ð² Ð³Ñ€.\r\nÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°.'),
(3, 'ÐŸÑ€Ð¸Ð´Ð¾Ð±Ð¸Ð²Ð°Ð½Ðµ Ð½Ð° ÑƒÐ¼ÐµÐ½Ð¸Ñ Ð¸ Ð¿Ð¾ÑÑ‚Ð¸Ð³Ð°Ð½Ðµ Ð½Ð° Ð¾Ð±Ñ‰ÐµÑÑ‚Ð²ÐµÐ½Ð° Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚ Ð½Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð¾Ð±Ñ‰Ð¸Ð½Ð¸ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¸ Ð Ð¾Ð´Ð¾Ð¿Ð¸ Ð·Ð° Ð¿Ð¾Ñ‚ÐµÐ½Ñ†Ð¸Ð°Ð»Ð½Ð° ÐœÐ˜Ð“ Ð² ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸', 'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ 2007-2013 ÐŸÑ€Ð¸Ð¾Ñ€Ð¸Ñ‚ÐµÑ‚Ð½Ð° Ð¾Ñ 4: Ð›Ð¸Ð´ÐµÑ€ ÐœÑÑ€ÐºÐ° 431-2 â€ÐŸÑ€Ð¸Ð´Ð¾Ð±Ð¸Ð²Ð°Ð½Ðµ Ð½Ð° ÑƒÐ¼ÐµÐ½Ð¸Ñ Ð¸ Ð¿Ð¾ÑÑ‚Ð¸Ð³Ð°Ð½Ðµ Ð½Ð° Ð¾Ð±Ñ‰Ð¸Ð½ÑÐºÐ° Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚ Ð·Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð¿Ð¾Ñ‚ÐµÐ½Ñ†Ð¸Ð°', '199 168 Ð»Ð².', '04.09.2009- 29.08.2011', 'Ð¡ÑŠÐ·Ð´Ð°Ð²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° ÐœÐ˜Ð“ Ðµ Ð² Ñ€ÐµÐ·ÑƒÐ»Ñ‚Ð°Ñ‚\r\nÐ½Ð° Ñ†ÐµÐ»ÐµÐ½Ð°ÑÐ¾Ñ‡ÐµÐ½ Ð¿Ñ€Ð¾Ñ†ÐµÑ Ð½Ð°\r\nÐ¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð°Ð½Ðµ, ÐºÐ¾Ð½ÑÑƒÐ»Ñ‚Ð¸Ñ€Ð°Ð½Ðµ Ð¸\r\nÐ¿Ð»Ð°Ð½Ð¸Ñ€Ð°Ð½Ðµ ÑÑ€ÐµÐ´ Ð²ÑÐ¸Ñ‡ÐºÐ¸\r\nÐ·Ð°Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ¾Ð²Ð°Ð½Ð¸ ÑÑ‚Ñ€Ð°Ð½Ð¸ Ð½Ð°\r\nÑ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð´Ð²ÐµÑ‚Ðµ Ð¾Ð±Ñ‰Ð¸Ð½Ð¸\r\nÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¸ Ð Ð¾Ð´Ð¾Ð¿Ð¸. Ð¡ÑŠÐ·Ð´Ð°Ð´ÐµÐ½Ð° Ðµ\r\nÐ½Ð° Ð±Ð°Ð·Ð°Ñ‚Ð° Ð½Ð° Ð¿Ñ€Ð¸Ð½Ñ†Ð¸Ð¿Ð¸Ñ‚Ðµ Ð½Ð°\r\nÐ¿Ð¾Ð´Ñ…Ð¾Ð´Ð° "Ð›Ð˜Ð”Ð•Ð ", ÑÑŠÐ³Ð»Ð°ÑÐ½Ð¾ ÐŸÐ Ð¡Ð \r\n2007 - 2013, ÐÐ°Ñ€ÐµÐ±Ð´Ð¸ â„– 14 Ð¸\r\nÐÐ°Ñ€ÐµÐ´Ð±Ð° â„– 23 Ð½Ð° ÐœÐ¸Ð½Ð¸ÑÑ‚ÐµÑ€ÑÑ‚Ð²Ð¾ Ð½Ð°\r\nÐ—ÐµÐ¼ÐµÐ´ÐµÐ»Ð¸ÐµÑ‚Ð¾ Ð¸ Ñ…Ñ€Ð°Ð½Ð¸Ñ‚Ðµ Ð¸ Ð—Ð°ÐºÐ¾Ð½Ð° Ð·Ð°\r\nÑŽÑ€Ð¸Ð´Ð¸Ñ‡ÐµÑÐºÐ¸Ñ‚Ðµ Ð»Ð¸Ñ†Ð° Ð·Ð° Ð½ÐµÑÑ‚Ð¾Ð¿Ð°Ð½ÑÐºÐ°\r\nÑ†ÐµÐ». '),
(4, 'â€žÐ˜Ð·Ð³Ñ€Ð°Ð¶Ð´Ð°Ð½Ðµ Ð½Ð° ÑƒÐ»Ð¸Ñ‡Ð½Ð¾ Ð¾ÑÐ²ÐµÑ‚Ð»ÐµÐ½Ð¸Ðµ Ð² Ð³Ñ€. ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°â€', 'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ 2007-2013 ÐŸÑ€Ð¸Ð¾Ñ€Ð¸Ñ‚ÐµÑ‚Ð½Ð° Ð¾Ñ 3: â€žÐšÐ°Ñ‡ÐµÑÑ‚Ð²Ð¾ Ð½Ð° Ð¶Ð¸Ð²Ð¾Ñ‚ Ð¸ Ñ€Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·ÑÐ²Ð°Ð½Ðµ Ð½Ð° Ð²ÑŠÐ·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚Ð¸Ñ‚Ðµ Ð·Ð° Ð·Ð°ÐµÑ‚Ð¾ÑÑ‚â€; ÐœÑÑ€ÐºÐ° 322 â€žÐžÐ±Ð½Ð¾Ð²ÑÐ²Ð°Ð½Ðµ Ð¸ Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ ', '1 782 211,16 Ð»Ð².', '04.01.2011 â€“ 20.09.2013', 'Ð¡ Ð¸Ð·Ð¿ÑŠÐ»Ð½ÐµÐ½Ð¸ÐµÑ‚Ð¾ Ð½Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° ÑÐµ\r\nÐ½Ð°Ð¼Ð°Ð»Ð¸ ÐºÐ¾Ð½ÑÑƒÐ¼Ð°Ñ†Ð¸ÑÑ‚Ð° Ð½Ð°\r\nÐµÐ»ÐµÐºÑ‚Ñ€Ð¸Ñ‡ÐµÑÐºÐ° ÐµÐ½ÐµÑ€Ð³Ð¸Ñ, ÐºÐ¾ÑÑ‚Ð¾ Ð¾Ñ‚\r\nÑÐ²Ð¾Ñ ÑÑ‚Ñ€Ð°Ð½Ð° Ð½Ð°Ð¼Ð°Ð»Ð¸ Ð¿Ñ€ÐµÐºÐ¸Ñ‚Ðµ\r\nÑ€Ð°Ð·Ñ…Ð¾Ð´Ð¸ Ð½Ð° Ð¾Ð±Ñ‰Ð¸Ð½Ð°Ñ‚Ð° Ð·Ð° ÑƒÐ»Ð¸Ñ‡Ð½Ð¾\r\nÐ¾ÑÐ²ÐµÑ‚Ð»ÐµÐ½Ð¸Ðµ Ð¸ ÑÐµ Ð¾ÑÐ¸Ð³ÑƒÑ€Ð¸ Ð²Ð¸ÑÐ¾ÐºÐ¾\r\nÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ð¾ Ð½Ð° Ð¾ÑÐ²ÐµÑ‚Ð»ÐµÐ½Ð¸Ðµ. ÐžÑÐ¸Ð³ÑƒÑ€Ð¸ ÑÐµ\r\nÐ±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ Ð½Ð° Ð¼Ð¾Ñ‚Ð¾Ñ€Ð½Ð¸Ñ‚Ðµ\r\nÐ¿Ñ€ÐµÐ²Ð¾Ð·Ð½Ð¸ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°, Ð¸ ÑÐµ Ð¿Ð¾Ð²Ð¸ÑˆÐ¸\r\nÑÐ¸Ð³ÑƒÑ€Ð½Ð¾ÑÑ‚Ñ‚Ð° Ð½Ð° Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ Ð½Ð°\r\nÐ¿ÐµÑˆÐµÑ…Ð¾Ð´Ñ†Ð¸Ñ‚Ðµ Ð½Ð¾Ñ‰Ð½Ð¾ Ð²Ñ€ÐµÐ¼Ðµ, ÐºÐ°Ñ‚Ð¾ ÑÐµ\r\nÑÑŠÐ·Ð´Ð°Ð´Ðµ ÐºÐ¾Ð¼Ñ„Ð¾Ñ€Ñ‚Ð½Ð° Ð½Ð¾Ñ‰Ð½Ð°\r\nÐ°Ñ‚Ð¼Ð¾ÑÑ„ÐµÑ€Ð°. Ð¡ÑŠÐ·Ð´Ð°Ð´Ðµ ÑÐµ Ð´Ð¾Ð±Ñ€Ð°\r\nÐ¶Ð¸Ð·Ð½ÐµÐ½Ð° ÑÑ€ÐµÐ´Ð° Ð·Ð° Ñ€Ð¾Ð¼ÑÐºÐ¾Ñ‚Ð¾\r\nÐ½Ð°ÑÐµÐ»ÐµÐ½Ð¸Ðµ.'),
(6, 'â€žÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° - Ð½ÐµÐ´ÐµÐ»Ð¸Ð¼Ð° Ñ‡Ð°ÑÑ‚ Ð¾Ñ‚ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑÑ‚Ð°, ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð°Ñ‚Ð° Ð¸ Ð±ÑŠÐ´ÐµÑ‰ÐµÑ‚Ð¾ Ð½Ð° Ð•Ð²Ñ€Ð¾Ð¿Ð°â€œ ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ 2007-2013', 'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ 2007-2013 ÐŸÑ€Ð¸Ð¾Ñ€Ð¸Ñ‚ÐµÑ‚Ð½Ð° Ð¾Ñ 3: â€žÐšÐ°Ñ‡ÐµÑÑ‚Ð²Ð¾ Ð½Ð° Ð¶Ð¸Ð²Ð¾Ñ‚ Ð¸ Ñ€Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·ÑÐ²Ð°Ð½Ðµ Ð½Ð° Ð²ÑŠÐ·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚Ð¸Ñ‚Ðµ Ð·Ð° Ð·Ð°ÐµÑ‚Ð¾ÑÑ‚â€', '355 960,83 Ð»Ð².', '24.06.2011 â€“ 17.09.2013', 'Ð˜Ð·Ð³Ñ€Ð°Ð´Ð¸ ÑÐµ Ð´Ð²ÑƒÐµÑ‚Ð°Ð¶Ð½Ð° ÑÐ³Ñ€Ð°Ð´Ð° ÑÑŠÑ\r\nÑÑ‚Ð°Ñ‚ÑƒÑ‚ Ð½Ð° Ð¢ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸\r\nÐ¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½ÐµÐ½ Ñ†ÐµÐ½Ñ‚ÑŠÑ€, Ñ \r\nÐŸÑ€Ð¸Ð¾Ñ€Ð¸Ñ‚ÐµÑ‚Ð½Ð° Ð¾Ñ 3:\r\nâ€žÐšÐ°Ñ‡ÐµÑÑ‚Ð²Ð¾ Ð½Ð° Ð¶Ð¸Ð²Ð¾Ñ‚ Ð¸\r\nÑ€Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·ÑÐ²Ð°Ð½Ðµ Ð½Ð°\r\nÐ²ÑŠÐ·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚Ð¸Ñ‚Ðµ Ð·Ð° Ð·Ð°ÐµÑ‚Ð¾ÑÑ‚â€;\r\nÐœÑÑ€ÐºÐ° 313 â€žÐÐ°ÑÑŠÑ€Ñ‡Ð°Ð²Ð°Ð½Ðµ\r\nÐ½Ð° Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ñ‚Ðµ\r\nÐ´ÐµÐ¹Ð½Ð¾ÑÑ‚Ð¸â€\r\nÐ¿Ð¾Ð¼ÐµÑ‰ÐµÐ½Ð¸Ñ Ð·Ð° Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸,\r\nÐºÐ¾Ð½Ñ„ÐµÑ€ÐµÐ½Ñ‚Ð½Ð° Ð¸ Ð¸Ð·Ð»Ð¾Ð¶Ð±ÐµÐ½Ð° Ð·Ð°Ð»Ð°.\r\nÐ¡Ð³Ñ€Ð°Ð´Ð°Ñ‚Ð° Ðµ Ñ€Ð°Ð·Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð° Ð² Ñ†ÐµÐ½Ñ‚ÑŠÑ€Ð°\r\nÐ½Ð° Ð³Ñ€Ð°Ð´Ð° Ð² Ð±Ð»Ð¸Ð·Ð¾ÑÑ‚ Ð´Ð¾ Ð²ÑÐ¸Ñ‡ÐºÐ¸ Ð¾Ð±ÐµÐºÑ‚Ð¸\r\nÐ¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð»ÑÐ²Ð°Ñ‰Ð¸ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑ Ð·Ð°\r\nÑ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‚Ðµ Ð¸ Ðµ Ð´Ð¾ÑÑ‚ÑŠÐ¿Ð½Ð° Ð·Ð° Ñ…Ð¾Ñ€Ð°Ñ‚Ð° Ñ\r\nÑƒÐ²Ñ€ÐµÐ¶Ð´Ð°Ð½Ð¸Ñ. Ð˜Ð·Ð³Ñ€Ð°Ð´Ð¸Ñ…Ð° ÑÐµ\r\nÑÑŠÐ¾Ñ€ÑŠÐ¶ÐµÐ½Ð¸Ñ Ð¿Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼ÐµÐ½Ð¸Ñ‚Ðµ Ñ‚Ñ€Ð¸\r\nÐ±Ñ€Ð¾Ñ ÐµÐºÐ¾-Ð¿ÑŠÑ‚ÐµÐºÐ¸.'),
(7, 'â€žÐŸÑ€Ð¾Ñ„ÐµÑÐ¸Ð¾Ð½Ð°Ð»Ð½Ð¸ ÑÐ¾Ñ†Ð¸Ð°Ð»Ð½Ð¸ Ð°ÑÐ¸ÑÑ‚ÐµÐ½Ñ‚Ð¸ Ð·Ð° ÐºÐ°Ñ‡ÐµÑÑ‚Ð²ÐµÐ½ Ð¶Ð¸Ð²Ð¾Ñ‚ Ð¸ ÑƒÑÐ»ÑƒÐ³Ð¸ Ð² Ð¾Ð±Ñ‰Ð½Ð¾ÑÑ‚Ñ‚Ð°â€', 'ÐžÐŸâ€ Ð Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° Ñ‡Ð¾Ð²ÐµÑˆÐºÐ¸Ñ‚Ðµ Ñ€ÐµÑÑƒÑ€ÑÐ¸ 2007-2013â€', '150 812,95 Ð»Ð².', '01.11.2010 - 31.12.2011', 'Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ð¸ ÑÐµ ÑÐ¾Ñ†Ð¸Ð°Ð»Ð½Ð¾ -\r\nÐ¿ÑÐ¸Ñ…Ð¾Ð»Ð¾Ð³Ð¸Ñ‡Ð½Ð° Ð¸ Ñ‚ÐµÑ€Ð°Ð¿ÐµÐ²Ñ‚Ð¸Ñ‡Ð½Ð°\r\nÐ¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð·Ð° Ñ…Ð¾Ñ€Ð° Ñ ÑƒÐ²Ñ€ÐµÐ¶Ð´Ð°Ð½Ð¸Ñ -\r\nÐ¿Ð¾Ñ‚Ñ€ÐµÐ±Ð¸Ñ‚ÐµÐ»Ð¸ Ð½Ð° ÑÐ¾Ñ†Ð¸Ð°Ð»Ð½Ð¸ ÑƒÑÐ»ÑƒÐ³Ð¸ Ð¸\r\nÑ‚ÐµÑ…Ð½Ð¸Ñ‚Ðµ ÑÐµÐ¼ÐµÐ¹ÑÑ‚Ð²Ð°. Ð¡ÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð°Ñ…Ð°\r\nÑÐµ ÑÐ¾Ñ†Ð¸Ð°Ð»Ð½Ð¸Ñ‚Ðµ Ð°ÑÐ¸ÑÑ‚ÐµÐ½Ñ‚Ð¸.'),
(8, 'â€žÐÐ¾Ð² Ð¸Ð·Ð±Ð¾Ñ€ - Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð¸ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñâ€œ.', 'ÐžÐŸ â€žÐ Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° Ñ‡Ð¾Ð²ÐµÑˆÐºÐ¸Ñ‚Ðµ Ñ€ÐµÑÑƒÑ€ÑÐ¸ 2007-2013â€; ÐŸÑ€Ð¾ÐµÐºÑ‚ BG051PÐž001-1.1.03', '81 492,45 Ð»Ð². ', '01.03.2012â€“ 31.08.2013', 'Ð¦ÐµÐ»Ñ‚Ð° Ð½Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° Ðµ Ð´Ð° ÑÐµ Ð½Ð°Ð¼Ð°Ð»Ð¸\r\nÐ±ÐµÐ·Ñ€Ð°Ð±Ð¾Ñ‚Ð¸Ñ†Ð°Ñ‚Ð° Ñ‡Ñ€ÐµÐ· Ð¾ÑÐ¸Ð³ÑƒÑ€ÑÐ²Ð°Ð½Ðµ Ð½Ð°\r\nÐ¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ Ð¸ Ð·Ð°ÐµÑ‚Ð¾ÑÑ‚ Ð½Ð° Ð±ÐµÐ·Ñ€Ð°Ð±Ð¾Ñ‚Ð½Ð¸\r\nÐ»Ð¸Ñ†Ð° Ð¾Ñ‚ ÐÐ³ÐµÐ½Ñ†Ð¸ÑÑ‚Ð° Ð¿Ð¾ Ð·Ð°ÐµÑ‚Ð¾ÑÑ‚Ñ‚Ð°\r\nÑ‡Ñ€ÐµÐ· Ð”Ð‘Ð¢ "Ð Ð¾Ð´Ð¾Ð¿Ð¸"- Ð³Ñ€. ÐŸÐ»Ð¾Ð²Ð´Ð¸Ð².\r\nÐšÑŠÐ¼ Ð½Ð°ÑÑ‚Ð¾ÑÑ‰Ð¸Ñ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚ 20 Ð»Ð¸Ñ†Ð° ÑÐ°\r\nÐ¾Ð±ÑƒÑ‡ÐµÐ½Ð¸ Ð¸ ÑÐ° Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ð»Ð¸\r\nÑƒÐ´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€ÐµÐ½Ð¸Ñ Ð·Ð° Ð¿Ñ€Ð¾Ñ„ÐµÑÐ¸Ð¾Ð½Ð°Ð»Ð½Ð°\r\nÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸Ñ - 10 Ñ‚ÐµÑ…Ð½Ð¸Ðº-ÐµÐºÐ¾Ð»Ð¾Ð³Ð° Ð¸\r\n10 Ð³Ñ€Ð°Ð´Ð¸Ð½Ð°Ñ€Ð¸.'),
(9, 'â€žÐÐ¾Ð²Ð¾ Ð½Ð°Ñ‡Ð°Ð»Ð¾ - Ð¾Ñ‚ Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ ÐºÑŠÐ¼ Ð·Ð°ÐµÑ‚Ð¾ÑÑ‚â€œ.', 'ÐžÐŸ â€žÐ Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° Ñ‡Ð¾Ð²ÐµÑˆÐºÐ¸Ñ‚Ðµ Ñ€ÐµÑÑƒÑ€ÑÐ¸ 2007-2013â€;', '4 052,70 Ð»Ð².', '01.01.2013 - 30.06.2013', 'Ð¦ÐµÐ»Ñ‚Ð° Ð½Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° Ðµ Ð´Ð° ÑÐµ Ð¾ÑÐ¸Ð³ÑƒÑ€Ð¸\r\nÐ·Ð°ÐµÑ‚Ð¾ÑÑ‚ Ð½Ð° Ð¼Ð»Ð°Ð´ÐµÐ¶Ð¸ Ð´Ð¾ 29-Ð³Ð¾Ð´Ð¸ÑˆÐ½Ð°\r\nÐ²ÑŠÐ·Ñ€Ð°ÑÑ‚ Ð½Ð° Ð¿ÑŠÐ»Ð½Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ð½Ð¾ Ð²Ñ€ÐµÐ¼Ðµ Ð·Ð°\r\nÑÑ€Ð¾Ðº Ð¾Ñ‚ ÑˆÐµÑÑ‚ Ð¼ÐµÑÐµÑ†Ð°. Ð¡ÐºÐ»ÑŽÑ‡ÐµÐ½ Ðµ 1\r\nÑ‚Ñ€ÑƒÐ´Ð¾Ð² Ð´Ð¾Ð³Ð¾Ð²Ð¾Ñ€, Ð´Ð²Ðµ Ð»Ð¸Ñ†Ð°\r\nÐ¾Ñ‚Ð¿Ð°Ð´Ð½Ð°Ð»Ð¸ Ð¾Ñ‚ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð°Ñ‚Ð°, Ð¿Ð¾Ñ€Ð°Ð´Ð¸\r\nÐ¿Ñ€ÐµÐºÑŠÑÐ²Ð°Ð½Ðµ Ð½Ð° Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°\r\nÐ±ÐµÐ·Ñ€Ð°Ð±Ð¾Ñ‚Ð¸Ñ†Ð°.'),
(10, 'â€žÐ˜Ð·Ð³Ñ€Ð°Ð¶Ð´Ð°Ð½Ðµ Ð½Ð° ÐºÐ°Ð½Ð°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð½Ð° Ð³Ñ€. ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°, ÐŸÐ¾Ð´Ð¾Ð±ÐµÐºÑ‚ 1 ÐšÐ°Ð½Ð°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð½Ð° ÑƒÐ».â€Ð”Ñ€Ð°Ð³Ð¾Ð²ÐµÑ†â€, ÑƒÐ».â€Ð˜ÑÐºÑŠÑ€â€, ÑƒÐ».â€ÐšÐ»Ð¸Ð¼ÐµÐ½Ñ‚ ÐžÑ…Ñ€Ð¸Ð´ÑÐºÐ¸â€, ÑƒÐ».â€ÐšÑƒÐ±Ñ€Ð°Ñ‚â€, ÑƒÐ».â€Ð¢ÑƒÑ‚Ñ€Ð°ÐºÐ°Ð½â€, ÑƒÐ».â€ÐŸÑ€ÐµÑÐ»Ð°Ð²', 'ÐŸÑ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ Ð·Ð° ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð½Ð° Ð´ÐµÐ¹Ð½Ð¾ÑÑ‚Ð¸Ñ‚Ðµ Ð¿Ð¾ Ð¾Ð¿Ð°Ð·Ð²Ð°Ð½Ðµ Ð½Ð° Ð¾ÐºÐ¾Ð»Ð½Ð° ÑÑ€ÐµÐ´Ð°', '2 434 897,68 Ð»Ð².', '08.10.2008- 11.02.2009', 'Ð¡ÐºÐ»ÑŽÑ‡ÐµÐ½ Ð´Ð¾Ð³Ð¾Ð²Ð¾Ñ€ Ð½Ð° ÑÑ‚Ð¾Ð¹Ð½Ð¾ÑÑ‚\r\n1 154 226 Ð»Ð². Ð˜Ð·Ð¿ÑŠÐ»Ð½ÐµÐ½Ð¾ Ñ‡Ð°ÑÑ‚Ð¸Ñ‡Ð½Ð¾ Ð²\r\nÑ‡Ð°ÑÑ‚ Ð¾Ñ‚ ÐŸÐ¾Ð´Ð¾Ð±ÐµÐºÑ‚ 1 Ð¸ Ð¸Ð·Ñ†ÑÐ»Ð¾ Ð²\r\nÐŸÐ¾Ð´Ð¾Ð±ÐµÐºÑ‚ 3.\r\n'),
(11, 'Ð’Ð½ÐµÐ´Ñ€ÑÐ²Ð°Ð½Ðµ Ð½Ð° Ð¼ÐµÑ€ÐºÐ¸ Ð·Ð° ÐµÐ½ÐµÑ€Ð³Ð¸Ð¹Ð½Ð° ÐµÑ„ÐµÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚ Ð² ÐžÐ”Ð— â€Ð Ð°Ð´Ð¾ÑÑ‚â€ Ð¸ ÐžÐ”Ð— â€ Ð¢Ñ€Ð°ÐºÐ¸Ð¹Ñ‡Ðµâ€ Ð³Ñ€. ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°.', 'ÐžÐŸ â€žÐ ÐµÐ³Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¾ Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ 2007-2013â€', '766 838,80 Ð»Ð².', '13.12.2010- 13.12.2012', 'ÐžÑÐ¸Ð³ÑƒÑ€ÑÐ²Ð°Ð½Ðµ Ð½Ð° Ð¼Ð¾Ð´ÐµÑ€Ð½Ð¸Ð·Ð¸Ñ€Ð°Ð½Ð° Ð¸\r\nÑ€ÐµÐ½Ñ‚Ð°Ð±Ð¸Ð»Ð½Ð° Ð¾Ð±Ñ‰Ð¸Ð½ÑÐºÐ°\r\nÐ¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð½Ð° Ð¸Ð½Ñ„Ñ€Ð°ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð° Ð²\r\nÐžÐ”Ð— â€Ð Ð°Ð´Ð¸ÑÑ‚â€ Ð¸ ÐžÐ”Ð— â€Ð¢Ñ€Ð°ÐºÐ¸Ð¹Ñ‡Ðµâ€\r\nÑ‡Ñ€ÐµÐ· Ð²Ð½ÐµÐ´Ñ€ÑÐ²Ð°Ð½Ðµ Ð½Ð° Ð¼ÐµÑ€ÐºÐ¸ Ð·Ð°\r\nÐµÐ½ÐµÑ€Ð³Ð¸Ð¹Ð½Ð° ÐµÑ„ÐµÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚.');

-- --------------------------------------------------------

--
-- Table structure for table `landmarks`
--

CREATE TABLE `landmarks` (
  `id` int(11) NOT NULL,
  `name` varchar(180) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `landmarks`
--

INSERT INTO `landmarks` (`id`, `name`, `description`) VALUES
(1, '"Ð§ÐµÑ€Ð²ÐµÐ½Ð°Ñ‚Ð° Ñ†ÑŠÑ€ÐºÐ²Ð°"', 'Ð§ÐµÑ€Ð²ÐµÐ½Ð°Ñ‚Ð° Ñ†ÑŠÑ€ÐºÐ²Ð° Ðµ ÐµÐ´Ð¸Ð½ Ð¾Ñ‚ Ð±Ð¸ÑÐµÑ€Ð¸Ñ‚Ðµ Ð½Ð° Ñ€Ð°Ð½Ð½Ð¾Ñ…Ñ€Ð¸ÑÑ‚Ð¸ÑÐ½ÑÐºÐ°Ñ‚Ð° Ð°Ñ€Ñ…Ð¸Ñ‚ÐµÐºÑ‚ÑƒÑ€Ð° Ð² Ð•Ð²Ñ€Ð¾Ð¿Ð°, Ð°Ñ€Ñ…Ð¸Ñ‚ÐµÐºÑ‚ÑƒÑ€ÐµÐ½ Ð¸ Ð°Ñ€Ñ…ÐµÐ¾Ð»Ð¾Ð³Ð¸Ñ‡ÐµÑÐºÐ¸ Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸Ðº Ð¾Ñ‚ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ. Ð¡Ñ‚Ð°Ñ‚ÑƒÑ‚ Ð½Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»ÐµÐ½ Ð°Ð½Ñ‚Ð¸Ñ‡ÐµÐ½ Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸Ðº Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ð²Ð° Ð¿Ñ€ÐµÐ· 1927 Ð³Ð¾Ð´Ð¸Ð½Ð°, Ð° Ð½Ð° Ð°Ñ€Ñ…Ð¸Ñ‚ÐµÐºÑ‚ÑƒÑ€Ð½Ð¾-ÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÐµÐ½ Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸Ðº Ð½Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð°Ñ‚Ð° Ð² Ñ€ÑƒÐ¸Ð½ÐµÐ½ Ð²Ð¸Ð´ - Ð¿Ñ€ÐµÐ· 1966 Ð³Ð¾Ð´Ð¸Ð½Ð°.ÐŸÑ€ÐµÐ· Ð¿ÐµÑ€Ð¸Ð¾Ð´Ð° 2010-2013 Ð³. Ðµ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð¸Ñ€Ð°Ð½ Ð¿Ñ€Ð¾ÐµÐºÑ‚ Ð·Ð° ÑƒÐºÑ€ÐµÐ¿Ð²Ð°Ð½Ðµ, ÐºÐ¾Ð½ÑÐµÑ€Ð²Ð°Ñ†Ð¸Ñ, Ð´Ð¾ÑÑ‚ÑŠÐ¿ Ð¸ ÑÐ¾Ñ†Ð¸Ð°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð½Ð° Ð°Ñ€Ñ…ÐµÐ¾Ð»Ð¾Ð³Ð¸Ñ‡ÐµÑÐºÐ¸Ñ Ð¾Ð±ÐµÐºÑ‚. ÐžÑÐ¸Ð³ÑƒÑ€ÐµÐ½Ð° Ðµ Ð¿ÑŠÑ‚Ð½Ð° Ð²Ñ€ÑŠÐ·ÐºÐ°, Ð¿Ñ€Ð¸ÐµÐ¼Ð½Ð° ÑÐ³Ñ€Ð°Ð´Ð°, Ð¾ÐºÐ¾Ð»Ð½Ð¾Ñ‚Ð¾ Ð¿Ñ€Ð¾ÑÑ‚Ñ€Ð°Ð½ÑÑ‚Ð²Ð¾ Ðµ Ð±Ð»Ð°Ð³Ð¾ÑƒÑÑ‚Ñ€Ð¾ÐµÐ½Ð¾, ÑÑŠÐ¾Ð±Ñ€Ð°Ð·ÐµÐ½Ð¾ Ñ Ð¸Ð·Ð¸ÑÐºÐ²Ð°Ð½Ð¸ÑÑ‚Ð° Ð·Ð° Ð¸Ð·Ð³Ñ€Ð°Ð¶Ð´Ð°Ð½Ðµ Ð½Ð° Ð´Ð¾ÑÑ‚ÑŠÐ¿Ð½Ð° ÑÑ€ÐµÐ´Ð° Ð·Ð° Ñ…Ð¾Ñ€Ð° Ñ ÑƒÐ²Ñ€ÐµÐ¶Ð´Ð°Ð½Ð¸Ñ. Ð¡Ð»ÐµÐ´ Ñ€ÐµÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸ÑÑ‚Ð° ÑÐ° Ð¾Ñ„Ð¾Ñ€Ð¼ÐµÐ½Ð¸ Ð¿ÐµÑˆÐµÑ…Ð¾Ð´ÐµÐ½ Ð´Ð¾ÑÑ‚ÑŠÐ¿ Ð´Ð¾ Ñ†ÑŠÑ€ÐºÐ²Ð°Ñ‚Ð° Ð¸ Ð¿Ð°Ð½Ð¾Ñ€Ð°Ð¼Ð½Ð° Ð°Ð»ÐµÑ, Ð¸Ð·Ð³Ñ€Ð°Ð´ÐµÐ½Ð¸ ÑÐ° Ð¿Ð¾Ð´Ñ…Ð¾Ð´ Ð·Ð° Ð¸Ð½Ð²Ð°Ð»Ð¸Ð´Ð¸ Ð¸ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½ÐµÐ½ Ñ†ÐµÐ½Ñ‚ÑŠÑ€. ÐŸÑ€Ð¸ Ñ€ÐµÐ¼Ð¾Ð½Ñ‚Ð½Ð¸Ñ‚Ðµ Ð´ÐµÐ¹Ð½Ð¾ÑÑ‚Ð¸ Ñ†ÑŠÑ€ÐºÐ²Ð°Ñ‚Ð° Ðµ ÑƒÐºÑ€ÐµÐ¿ÐµÐ½Ð°, ÐºÐ°Ñ‚Ð¾ Ðµ ÑÐ²Ð°Ð»ÐµÐ½Ð° ÑÑ‚Ð°Ñ€Ð°Ñ‚Ð° Ð´ÑŠÑ€Ð²ÐµÐ½Ð° Ð¿Ð¾Ð´Ð¿Ð¸Ñ€Ð°Ñ‰Ð° ÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸Ñ Ð¸ Ðµ Ð¿Ð¾ÑÑ‚Ð°Ð²ÐµÐ½Ð° Ð½Ð¾Ð²Ð° Ð¼ÐµÑ‚Ð°Ð»Ð½Ð°. Ð—Ð¸Ð´Ð¾Ð²ÐµÑ‚Ðµ ÑÐ° ÐºÐ¾Ð½ÑÐµÑ€Ð²Ð¸Ñ€Ð°Ð½Ð¸ Ð¸, ÐºÑŠÐ´ÐµÑ‚Ð¾ Ðµ Ð¸Ð¼Ð°Ð»Ð¾ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ÑÑ‚ Ð¾Ñ‚ Ð´Ð¾Ð¾Ñ„Ð¾Ñ€Ð¼ÑÐ½Ðµ Ð½Ð° Ð¾Ð±ÐµÐ¼Ð¸Ñ‚Ðµ, ÑÐ° Ð¸Ð·Ð·Ð¸Ð´Ð°Ð½Ð¸ Ð½Ð°Ð½Ð¾Ð²Ð¾. Ð¡ÑŠÐ·Ð´Ð°Ð´ÐµÐ½Ð¾ Ðµ Ñ…ÑƒÐ´Ð¾Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð¾ Ð¾ÑÐ²ÐµÑ‚Ð»ÐµÐ½Ð¸Ðµ, ÐºÐ¾ÐµÑ‚Ð¾ Ð¾ÑÐ²ÐµÑ‚ÑÐ²Ð° Ð¾Ð±ÐµÐºÑ‚Ð° Ð¿Ñ€ÐµÐ· Ð½Ð¾Ñ‰Ñ‚Ð°.'),
(3, 'Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ°Ñ‚Ð° Ñ†ÑŠÑ€ÐºÐ²Ð° â€žÐ¡Ð². ÐÑ€Ñ…Ð°Ð½Ð³ÐµÐ» ÐœÐ¸Ñ…Ð°Ð¸Ð»â€œ', 'Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ°Ñ‚Ð° Ñ†ÑŠÑ€ÐºÐ²Ð° â€žÐ¡Ð². ÐÑ€Ñ…Ð°Ð½Ð³ÐµÐ» ÐœÐ¸Ñ…Ð°Ð¸Ð»â€œ Ðµ ÑÑ‚Ñ€Ð¾ÐµÐ½Ð° Ð¾Ñ‚ 1847 Ð´Ð¾ 1849 Ð³Ð¾Ð´Ð¸Ð½Ð°, Ð¸Ð·Ñ†ÑÐ»Ð¾ Ñ Ð´Ð°Ñ€ÐµÐ½Ð¸Ñ Ð½Ð° Ð¿ÐµÑ€ÑƒÑ‰ÐµÐ½Ñ†Ð¸. ÐžÑÐ²ÐµÑ‚ÐµÐ½Ð° Ðµ Ð½Ð° 8 Ð½Ð¾ÐµÐ¼Ð²Ñ€Ð¸ - ÐÑ€Ñ…Ð°Ð½Ð³ÐµÐ»Ð¾Ð²Ð´ÐµÐ½. Ð¢Ñ Ðµ  Ð¼Ð°ÑÐ¸Ð²Ð½Ð° ÐºÐ°Ð¼ÐµÐ½Ð½Ð° Ñ‚Ñ€Ð¸ÐºÐ¾Ñ€Ð°Ð±Ð½Ð° Ñ†ÑŠÑ€ÐºÐ²Ð°, Ð° Ð½Ð°ÑÑ‚Ð¸Ð»ÐºÐ°Ñ‚Ð° Ðµ Ð¾Ñ‚ Ð½ÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»Ð½Ð¸ ÐºÐ°Ð¼ÐµÐ½Ð½Ð¸ Ð¿Ð»Ð¾Ñ‡Ð¸. Ð’ Ñ…Ñ€Ð°Ð¼Ð° Ðµ Ð¸Ð¼Ð°Ð»Ð¾ Ð¸ÐºÐ¾Ð½Ð¸, Ð¸Ð·Ð¿Ð¸ÑÐ°Ð½Ð¸ Ð¾Ñ‚ Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ð¸Ñ Ð·Ð¾Ð³Ñ€Ð°Ñ„ Ð¸ Ð¶Ð¸Ð²Ð¾Ð¿Ð¸ÑÐµÑ† Ð¡Ñ‚Ð°Ð½Ð¸ÑÐ»Ð°Ð² Ð”Ð¾ÑÐ¿ÐµÐ²ÑÐºÐ¸.Ð¦ÑŠÑ€ÐºÐ²Ð°Ñ‚Ð° Ðµ Ð±Ð¸Ð»Ð° Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð° ÐºÑ€ÐµÐ¿Ð¾ÑÑ‚ Ð¸ ÑƒÐ±ÐµÐ¶Ð¸Ñ‰Ðµ Ð½Ð° Ð²ÑŠÑÑ‚Ð°Ð½Ð°Ð»Ð¸Ñ‚Ðµ Ð¿Ñ€ÐµÐ· Ð°Ð¿Ñ€Ð¸Ð» 1876 Ð³Ð¾Ð´Ð¸Ð½Ð° ÑÑ€ÐµÑ‰Ñƒ Ð¾ÑÐ¼Ð°Ð½ÑÐºÐ¾Ñ‚Ð¾ Ð³Ð¾ÑÐ¿Ð¾Ð´ÑÑ‚Ð²Ð¾, Ð¶Ð¸Ñ‚ÐµÐ»Ð¸ Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°. ÐœÐ½Ð¾Ð·Ð¸Ð½Ð° Ð¾Ñ‚ Ð½ÐµÐ¹Ð½Ð¸Ñ‚Ðµ Ð·Ð°Ñ‰Ð¸Ñ‚Ð½Ð¸Ñ†Ð¸ Ð¿Ñ€ÐµÐ´Ð¿Ð¾Ñ‡Ð¸Ñ‚Ð°Ñ‚ ÑÐ°Ð¼Ð¸ Ð´Ð° ÑÐ»Ð¾Ð¶Ð°Ñ‚ ÐºÑ€Ð°Ð¹ Ð½Ð° Ð¶Ð¸Ð²Ð¾Ñ‚Ð° ÑÐ¸, Ð¾Ñ‚ÐºÐ¾Ð»ÐºÐ¾Ñ‚Ð¾ Ð´Ð° Ð¿Ð¾Ð¿Ð°Ð´Ð½Ð°Ñ‚ Ð¶Ð¸Ð²Ð¸ Ð² Ñ€ÑŠÑ†ÐµÑ‚Ðµ Ð½Ð° Ð¾Ð·Ð²ÐµÑ€ÐµÐ»Ð¸Ñ‚Ðµ Ð½ÐµÑ€ÐµÐ´Ð¾Ð²Ð½Ð¸ Ñ‚ÑƒÑ€ÑÐºÐ¸ Ð²Ð¾Ð¹ÑÐºÐ¸. Ð¡Ð»ÐµÐ´ Ð½ÑÐºÐ¾Ð»ÐºÐ¾Ð´Ð½ÐµÐ²Ð½Ð° Ð¾Ð±ÑÐ°Ð´Ð° Ð¸ Ð°Ñ€Ñ‚Ð¸Ð»ÐµÑ€Ð¸Ð¹ÑÐºÐ¸ Ð¾Ð±ÑÑ‚Ñ€ÐµÐ», Ñ†ÑŠÑ€ÐºÐ²Ð°Ñ‚Ð° Ð¿Ð°Ð´Ð° Ð² Ñ€ÑŠÑ†ÐµÑ‚Ðµ Ð½Ð° Ð½ÐµÐ¿Ñ€Ð¸ÑÑ‚ÐµÐ»Ñ Ð½Ð° 1 Ð¼Ð°Ð¹ 1876 Ð³. ÐœÐ°Ð»Ñ†Ð¸Ð½Ð°Ñ‚Ð° Ð¾Ñ†ÐµÐ»ÐµÐ»Ð¸ Ð½ÐµÐ¹Ð½Ð¸ Ð·Ð°Ñ‰Ð¸Ñ‚Ð½Ð¸Ñ†Ð¸, Ð¼Ð½Ð¾Ð¶ÐµÑÑ‚Ð²Ð¾ Ð¶ÐµÐ½Ð¸, Ð´ÐµÑ†Ð° Ð¸ ÑÑ‚Ð°Ñ€Ñ†Ð¸ Ð¾Ñ‚ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° ÑÐ° Ð¾Ñ‚Ð²ÐµÐ´ÐµÐ½Ð¸ Ð² ÐŸÐ»Ð¾Ð²Ð´Ð¸Ð².'),
(4, 'Ð¥Ñ€Ð°Ð¼ â€žÐ¡Ð². ÐÑ‚Ð°Ð½Ð°ÑÐ¸Ð¹â€', 'Ð¡Ñ‚Ð°Ñ€Ð°Ñ‚Ð° Ñ†ÑŠÑ€ÐºÐ²Ð° Ð² ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°. ÐŸÑ€ÐµÐ´Ð¿Ð¾Ð»Ð°Ð³Ð° ÑÐµ, Ñ‡Ðµ Ðµ Ð¿Ð¾ÑÑ‚Ñ€Ð¾ÐµÐ½Ð° Ð¼ÐµÐ¶Ð´Ñƒ XV Ð¸ XVI Ð²ÐµÐº. ÐžÑ‚ Ð½ÐµÑ Ðµ Ð´Ð°Ð´ÐµÐ½Ð¾ Ð½Ð°Ñ‡Ð°Ð»Ð¾Ñ‚Ð¾ Ð½Ð° ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ Ð² Ñ‚Ð¾Ð·Ð¸ ÐºÑ€Ð°Ð¹, Ð¿Ð¾ Ð²Ñ€ÐµÐ¼Ðµ Ð½Ð° Ð±ÑƒÐ½Ñ‚Ð¾Ð²Ð½Ð¸Ñ‚Ðµ ÑÑŠÐ±Ð¸Ñ‚Ð¸Ñ Ñ‚Ñ Ðµ Ð±Ð¸Ð»Ð° Ð¸Ð·Ð³Ð¾Ñ€ÐµÐ½Ð° Ð´Ð¾ Ð¾ÑÐ½Ð¾Ð²Ð¸ Ð¾Ñ‚ Ð¿Ð¾Ñ€Ð¾Ð±Ð¸Ñ‚ÐµÐ»Ñ.\r\n\r\nÐ¡Ð»ÐµÐ´ ÐžÑÐ²Ð¾Ð±Ð¾Ð¶Ð´ÐµÐ½Ð¸ÐµÑ‚Ð¾ Ñ†ÑŠÑ€ÐºÐ²Ð°Ñ‚Ð° Ð¾Ñ‚Ð½Ð¾Ð²Ð¾ Ðµ Ð²ÑŠÐ·ÑÑ‚Ð°Ð½Ð¾Ð²ÐµÐ½Ð° Ð¸ Ðµ Ð¸Ð·Ð¿Ð¾Ð»Ð·Ð²Ð°Ð½Ð° ÐºÐ°Ñ‚Ð¾ Ð¿ÑŠÑ€Ð²Ð°Ñ‚Ð° ÑÑ‚Ð°Ñ†Ð¸Ð¾Ð½Ð°Ñ€Ð½Ð° Ð±Ð¾Ð»Ð½Ð¸Ñ†Ð° Ð² ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°. Ð˜ Ð´Ð¾ Ð´Ð½ÐµÑ Ñ…Ñ€Ð°Ð¼ÑŠÑ‚ ÑÑŠÐ±Ð¸Ñ€Ð° Ð¿ÐµÑ€ÑƒÑ‰ÐµÐ½Ñ†Ð¸. Ð¦ÑŠÑ€ÐºÐ¾Ð²Ð½Ð¾Ñ‚Ð¾ Ð½Ð°ÑÑ‚Ð¾ÑÑ‚ÐµÐ»ÑÑ‚Ð²Ð¾ ÐºÐ°Ð½Ð´Ð¸Ð´Ð°Ñ‚ÑÑ‚Ð²Ð° Ð¿Ð¾ Ð¼ÑÑ€ÐºÐ° 322 Ð¾Ñ‚ ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð°Ñ‚Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ Ñ Ð¿Ñ€Ð¾ÐµÐºÑ‚: â€žÐŸÐ¾Ð´Ð¾Ð±Ñ€ÑÐ²Ð°Ð½Ðµ ÑƒÑÐ»Ð¾Ð²Ð¸ÑÑ‚Ð° Ð½Ð° Ð´ÑƒÑ…Ð¾Ð²ÐµÐ½ Ð¸ Ñ€ÐµÐ»Ð¸Ð³Ð¸Ð¾Ð·ÐµÐ½ Ð¶Ð¸Ð²Ð¾Ñ‚ Ð·Ð° ÐµÐ½Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ñ‡Ñ€ÐµÐ· Ð¾Ð±Ð½Ð¾Ð²ÑÐ²Ð°Ð½Ðµ Ð½Ð° Ñ…Ñ€Ð°Ð¼ â€Ð¡Ð². ÐÑ‚Ð°Ð½Ð°ÑÐ¸Ð¹â€.'),
(5, 'ÐœÐ°Ð½Ð°ÑÑ‚Ð¸Ñ€ â€Ð¡Ð². Ð¡Ð². Ð¢ÐµÐ¾Ð´Ð¾Ñ€ Ð¢Ð¸Ñ€Ð¾Ð½ Ð¸ Ð¢ÐµÐ¾Ð´Ð¾Ñ€ Ð¡Ñ‚Ñ€Ð°Ñ‚Ð¸Ð»Ð°Ñ‚â€', 'Ð’ Ð¼ÐµÑÑ‚Ð½Ð¾ÑÑ‚Ñ‚Ð° â€žÐœÐ°Ð½Ð°ÑÑ‚Ð¸Ñ€Ð°â€œ Ð½Ð°Ð´ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° ÑÐµ Ð½Ð°Ð¼Ð¸Ñ€Ð°Ñ‚ Ð¾ÑÑ‚Ð°Ð½ÐºÐ¸Ñ‚Ðµ Ð½Ð° ÑÑ€ÐµÐ´Ð½Ð¾Ð²ÐµÐºÐ¾Ð²Ð½Ð° Ð¼Ð¾Ð½Ð°ÑˆÐµÑÐºÐ° Ð¾Ð±Ð¸Ñ‚ÐµÐ», Ð½Ð°Ñ€Ð¸Ñ‡Ð°Ð½Ð° Ð¾Ñ‚ Ð¼ÐµÑÑ‚Ð½Ð¾Ñ‚Ð¾ Ð½Ð°ÑÐµÐ»ÐµÐ½Ð¸Ðµ â€žÐ¡Ð². Ð¢Ð¾Ð´Ð¾Ñ€â€œ. Ð’ Ð¿Ñ€Ð¾Ð´ÑŠÐ»Ð¶ÐµÐ½Ð¸Ðµ Ð½Ð° Ð½ÑÐºÐ¾Ð»ÐºÐ¾ Ð²ÐµÐºÐ° Ñ‚Ð¾Ð¹ Ðµ Ð±Ð¸Ð» Ñ‡Ð°ÑÑ‚ Ð¾Ñ‚ Ð²Ð½ÑƒÑˆÐ¸Ñ‚ÐµÐ»ÐµÐ½ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ Ð¾Ñ‚ Ð½ÑÐºÐ¾Ð»ÐºÐ¾ Ð¼Ð°Ð½Ð°ÑÑ‚Ð¸Ñ€Ð° Ð² ÑÐµÐ²ÐµÑ€Ð½Ð¸Ñ‚Ðµ Ð¿Ð¾Ð»Ð¸ Ð½Ð° Ð Ð¾Ð´Ð¾Ð¿Ð¸Ñ‚Ðµ, Ð½Ð°Ñ€ÐµÑ‡ÐµÐ½Ð¸ Ð Ð¾Ð´Ð¾Ð¿ÑÐºÐ°Ñ‚Ð° Ð¡Ð²ÐµÑ‚Ð° Ð³Ð¾Ñ€Ð°.\r\n\r\nÐ¡Ð¿Ð¾Ñ€ÐµÐ´ Ð¸Ð·ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸Ñ‚Ðµ â€žÐ¡Ð². Ð¢Ð¾Ð´Ð¾Ñ€â€œ Ðµ Ð¾ÑÐ½Ð¾Ð²Ð°Ð½ Ð¿Ñ€ÐµÐ· Ð²Ñ‚Ð¾Ñ€Ð°Ñ‚Ð° Ð¿Ð¾Ð»Ð¾Ð²Ð¸Ð½Ð° Ð½Ð° Ð¡Ñ€ÐµÐ´Ð½Ð¾Ð²ÐµÐºÐ¾Ð²Ð¸ÐµÑ‚Ð¾, Ð² ÐºÑ€Ð°Ñ Ð½Ð° VI Ð¸ Ð½Ð°Ñ‡Ð°Ð»Ð¾Ñ‚Ð¾ Ð½Ð° VII Ð²ÐµÐº, ÐºÐ¾Ð³Ð°Ñ‚Ð¾ Ð½Ð°ÑˆÐ¸Ñ‚Ðµ Ñ†Ð°Ñ€Ðµ Ð¸ Ð±Ð¾Ð»ÑÑ€Ð¸ ÑÐ° Ð¾ÑÐµÑÐ»Ð¸ ÑÐµÐ²ÐµÑ€Ð½Ð¸Ñ‚Ðµ Ð¿Ð°Ð·Ð²Ð¸ Ð½Ð° Ð Ð¾Ð´Ð¾Ð¿Ð¸Ñ‚Ðµ Ñ Ð¼Ð½Ð¾Ð¶ÐµÑÑ‚Ð²Ð¾ Ð¼Ð°Ð½Ð°ÑÑ‚Ð¸Ñ€Ð¸.  ÐÐ°Ð¼Ð¸Ñ€Ð°Ð» ÑÐµ Ðµ Ð½Ð° Ð¿ÐµÑ‚ ÐºÐ¸Ð»Ð¾Ð¼ÐµÑ‚Ñ€Ð° Ð¾Ñ‚ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°, Ð½ÐµÐ¿Ð¾ÑÑ€ÐµÐ´ÑÑ‚Ð²ÐµÐ½Ð¾ Ð¿Ð¾Ð´ Ð²ÐµÐ»Ð¸Ñ‡ÐµÑÑ‚Ð²ÐµÐ½Ð¸Ñ‚Ðµ ÑÐºÐ°Ð»Ð¸ Ð´Ð¾ Ð½ÐµÐ³Ð¾.  ÐœÐ°Ð½Ð°ÑÑ‚Ð¸Ñ€ÑŠÑ‚ Ðµ Ð¿Ñ€Ð¸Ñ‚ÐµÐ¶Ð°Ð²Ð°Ð» Ð¼Ð½Ð¾Ð³Ð¾ Ð¸Ð¼Ð¾Ñ‚Ð¸ Ð¸ Ð·Ð½Ð°Ñ‡Ð¸Ñ‚ÐµÐ»Ð½Ð¾ Ð¸Ð¼ÑƒÑ‰ÐµÑÑ‚Ð²Ð¾. Ð¡Ð¿Ð¾Ñ€ÐµÐ´ Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸ ÑÐ²ÐµÐ´ÐµÐ½Ð¸Ñ Ðµ Ñ€Ð°Ð·Ñ€ÑƒÑˆÐ°Ð²Ð°Ð½ Ð½ÑÐºÐ¾Ð»ÐºÐ¾ Ð¿ÑŠÑ‚Ð¸. ÐŸÑŠÑ€Ð²Ð¸ÑÑ‚ Ð¿Ð¾Ð³Ñ€Ð¾Ð¼ Ðµ Ð±Ð¸Ð» Ð¿Ñ€ÐµÐ· XIV Ð²ÐµÐº, Ð¿Ñ€Ð¸ Ð·Ð°Ð²Ð»Ð°Ð´ÑÐ²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° Ð‘ÑŠÐ»Ð³Ð°Ñ€Ð¸Ñ Ð¾Ñ‚ Ð°Ð·Ð¸Ð°Ñ‚ÑÐºÐ¸Ñ Ð½Ð°ÑˆÐµÑÑ‚Ð²ÐµÐ½Ð¸Ðº. Ð’Ñ‚Ð¾Ñ€Ð¸ÑÑ‚ Ðµ Ð¿Ñ€ÐµÐ· 1657 Ð³Ð¾Ð´Ð¸Ð½Ð°, Ñ‚Ñ€ÐµÑ‚Ð¸ÑÑ‚ - Ð¿Ñ€ÐµÐ· 1778 Ð³Ð¾Ð´Ð¸Ð½Ð°, Ð° Ñ‡ÐµÑ‚Ð²ÑŠÑ€Ñ‚Ð¸ÑÑ‚ - Ð¿Ð¾ Ð²Ñ€ÐµÐ¼Ðµ Ð½Ð° ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ.'),
(6, 'Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸ Ð¼ÑƒÐ·ÐµÐ¹ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°', 'Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸ÑÑ‚ Ð¼ÑƒÐ·ÐµÐ¹ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ðµ Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½ Ð² 100-Ñ‚Ðµ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸ Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸ Ð¾Ð±ÐµÐºÑ‚Ð° Ð¿Ð¾Ð´ Ð½Ð¾Ð¼ÐµÑ€ 42. ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° ÑÐ¿ÐµÑ‡ÐµÐ»Ð¸ Ð¿Ñ€Ð¾ÐµÐºÑ‚ Ð·Ð° Ð¾Ð±Ð½Ð¾Ð²ÑÐ²Ð°Ð½ÐµÑ‚Ð¾ Ð¼Ñƒ, ÐºÐ¾Ð¹Ñ‚Ð¾ ÑÐµ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð° Ð¿Ð¾ Ð¼ÑÑ€ÐºÐ° 313 - "ÐÐ°ÑÑŠÑ€Ñ‡Ð°Ð²Ð°Ð½Ðµ Ð½Ð° Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ñ‚Ðµ Ð´ÐµÐ¹Ð½Ð¾ÑÑ‚Ð¸" Ð¾Ñ‚ ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð°Ñ‚Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ Ð·Ð° Ð¿ÐµÑ€Ð¸Ð¾Ð´Ð° 2007-2013 Ð³Ð¾Ð´Ð¸Ð½Ð°. ÐœÑƒÐ·ÐµÑÑ‚ Ðµ Ð¾Ñ‚Ð²Ð¾Ñ€ÐµÐ½ ÑÐ»ÐµÐ´ Ñ€ÐµÐ¼Ð¾Ð½Ñ‚Ð° Ð¸ Ð¿Ñ€Ð¸ÐµÐ¼Ð° Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»Ð¸.Ð¡ÑŠÐ·Ð´Ð°Ð´ÐµÐ½ Ðµ Ð½Ð° 5 Ð¼Ð°Ñ€Ñ‚ 1955 Ð³Ð¾Ð´Ð¸Ð½Ð°. Ð•ÐºÑÐ¿Ð¾Ð·Ð¸Ñ†Ð¸ÑÑ‚Ð° Ðµ Ð¾Ñ‚ÐºÑ€Ð¸Ñ‚Ð° Ð² Ð´ÐµÐ½Ñ Ð½Ð° 80-Ð³Ð¾Ð´Ð¸ÑˆÐ½Ð¸Ð½Ð°Ñ‚Ð° Ð¾Ñ‚ ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ Ð½Ð° Ð¿Ð»Ð¾Ñ‰Ð°Ð´ â€ž27-Ð¼Ð¸ ÐÐ¿Ñ€Ð¸Ð»Ð¸Ð¹â€œ. ÐŸÑ€ÐµÐ· Ð¼Ð°Ð¹ 1969 Ð³Ð¾Ð´Ð¸Ð½Ð° Ð½Ð° ÑÑŠÑ‰Ð¾Ñ‚Ð¾ Ð¼ÑÑÑ‚Ð¾ Ðµ Ð¾Ñ‚ÐºÑ€Ð¸Ñ‚Ð° Ð½Ð¾Ð²Ð°Ñ‚Ð° Ð¼ÑƒÐ·ÐµÐ¹Ð½Ð° ÑÐ³Ñ€Ð°Ð´Ð°, Ð² ÐºÐ¾ÑÑ‚Ð¾ Ðµ ÑƒÑ€ÐµÐ´ÐµÐ½Ð° ÐµÐºÑÐ¿Ð¾Ð·Ð¸Ñ†Ð¸Ñ, Ð¾Ð±Ñ…Ð²Ð°Ñ‰Ð°Ñ‰Ð° Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð³Ñ€Ð°Ð´Ð° Ð¾Ñ‚ ÑÑŠÐ·Ð´Ð°Ð²Ð°Ð½ÐµÑ‚Ð¾ Ð¼Ñƒ Ð´Ð¾ Ð´Ð½ÐµÑ.'),
(7, 'Ð”Ð°Ð½Ð¾Ð²Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ', 'Ð”Ð°Ð½Ð¾Ð²Ð¾Ñ‚Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ Ðµ Ð¿ÑŠÑ€Ð²Ð¾Ñ‚Ð¾ ÐºÐ»Ð°ÑÐ½Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ, ÐºÑŠÐ´ÐµÑ‚Ð¾ Ð¥Ñ€. Ð“. Ð”Ð°Ð½Ð¾Ð² Ð¿Ñ€Ð¸Ð»Ð°Ð³Ð° Ð²Ð·Ð°Ð¸Ð¼Ð¾ÑƒÑ‡Ð¸Ñ‚ÐµÐ»Ð½Ð°Ñ‚Ð° Ð¼ÐµÑ‚Ð¾Ð´Ð°. Ð—Ð° Ñ€ÐµÑÑ‚Ð°Ð²Ñ€Ð°Ñ†Ð¸ÑÑ‚Ð° Ð¸ ÐºÐ¾Ð½ÑÐµÑ€Ð²Ð°Ñ†Ð¸ÑÑ‚Ð° Ð¼Ñƒ Ð¾Ð±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¿ÐµÑ‡ÐµÐ»Ð¸ Ð¿Ñ€Ð¾ÐµÐºÑ‚, Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ð½ Ð¿Ð¾ Ð¼ÑÑ€ÐºÐ° 313 â€žÐÐ°ÑÑŠÑ€Ñ‡Ð°Ð²Ð°Ð½Ðµ Ð½Ð° Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ñ‚Ðµ Ð´ÐµÐ¹Ð½Ð¾ÑÑ‚Ð¸â€œ Ð¾Ñ‚ ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð°Ñ‚Ð° Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸ Ð·Ð° Ð¿ÐµÑ€Ð¸Ð¾Ð´Ð° 2007-2013 Ð³Ð¾Ð´Ð¸Ð½Ð°, Ð¿Ð¾Ð´ÐºÑ€ÐµÐ¿ÐµÐ½Ð° Ð¾Ñ‚ Ð•Ð²Ñ€Ð¾Ð¿ÐµÐ¹ÑÐºÐ¸Ñ Ð·ÐµÐ¼ÐµÐ´ÐµÐ»ÑÐºÐ¸ Ñ„Ð¾Ð½Ð´ Ð·Ð° Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð½Ð° ÑÐµÐ»ÑÐºÐ¸Ñ‚Ðµ Ñ€Ð°Ð¹Ð¾Ð½Ð¸. Ð ÐµÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸ÑÑ‚Ð° Ð½Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° Ð²ÐºÐ»ÑŽÑ‡Ð²Ð°:\r\n- ÐµÐºÑÐ¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð½Ð¾ Ð¸ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾ Ð¿Ñ€Ð¾ÑÑ‚Ñ€Ð°Ð½ÑÑ‚Ð²Ð¾ â€“ Ð² Ñ€Ð°Ð·Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ñ Ñ†ÐµÐ½Ñ‚Ñ€Ð°Ð»Ð½Ð¾ ÑÐ°Ð»Ð¾Ð½ Ð½Ð° ÐµÑ‚Ð°Ð¶Ð°. ÐŸÑ€ÐµÐ´Ð²Ð¸Ð´ÐµÐ½Ð° Ðµ Ð²ÑŠÐ·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ Ð·Ð° Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð°Ð½Ðµ Ð½Ð° Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‚Ðµ Ñ‡Ñ€ÐµÐ· Ð¼ÑƒÐ»Ñ‚Ð¸Ð¼ÐµÐ´Ð¸Ñ\r\n- ÑƒÑ‡ÐµÐ±Ð½Ð¾-Ð·Ð°Ð½Ð¸Ð¼Ð°Ñ‚ÐµÐ»Ð½Ð° Ð¸ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð° Ñ„ÑƒÐ½ÐºÑ†Ð¸Ñ Ð·Ð° Ð´ÐµÑ†Ð° Ð¸ ÑƒÑ‡ÐµÐ½Ð¸Ñ†Ð¸. ÐŸÑ€ÐµÑÑŠÐ·Ð´Ð°Ð²Ð°Ð½Ðµ Ð½Ð° Ð°Ñ‚Ð¼Ð¾ÑÑ„ÐµÑ€Ð°Ñ‚Ð° Ð½Ð° Ð²ÑŠÐ·Ñ€Ð¾Ð¶Ð´ÐµÐ½ÑÐºÐ¾Ñ‚Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ â€“ Ð¿Ð¸ÑÐ°Ð½Ðµ Ð½Ð° Ð¿ÑÑÑŠÐº Ð¸ Ð½Ð° Ð´ÑŠÑÐºÐ¸ Ñ Ñ‚ÐµÐ±ÐµÑˆÐ¸Ñ€,  Ñ‡Ð¸Ð½Ð¾Ð²Ðµ Ð·Ð° Ð¿Ð¸ÑÐ°Ð½Ðµ Ñ Ð¿ÐµÑ€Ð¾ Ð¸ Ð¼Ð°ÑÑ‚Ð¸Ð»Ð¾. ÐŸÐ¾Ð¼ÐµÑ‰ÐµÐ½Ð¸ÑÑ‚Ð° Ð¼Ð¾Ð³Ð°Ñ‚ Ð´Ð° Ð±ÑŠÐ´Ð°Ñ‚ Ð¸Ð·Ð¿Ð¾Ð»Ð·Ð²Ð°Ð½Ð¸ Ð¸ Ð·Ð° Ð²Ñ€ÐµÐ¼ÐµÐ½Ð½Ð¸ Ñ‚ÐµÐ¾Ñ€ÐµÑ‚Ð¸Ñ‡Ð½Ð¸ Ð·Ð°Ð½Ð¸Ð¼Ð°Ð½Ð¸Ñ Ð¸ Ð±ÐµÑÐµÐ´Ð¸ \r\n- Ð¸Ð·Ð³Ñ€Ð°Ð¶Ð´Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° Ñ€Ð°Ð¼Ð¿Ð¸ Ð·Ð° Ð¸Ð½Ð²Ð°Ð»Ð¸Ð´Ð¸ Ð¸ Ð¾ÑÐ²ÐµÑ‚Ð»ÐµÐ½Ð¸Ðµ Ð¾ÐºÐ¾Ð»Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰ÐµÑ‚Ð¾ Ðµ Ñ‡Ð°ÑÑ‚ Ð¾Ñ‚ Ð±Ð»Ð°Ð³Ð¾ÑƒÑÑ‚Ñ€Ð¾ÑÐ²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° Ñ€Ð°Ð¹Ð¾Ð½Ð°.'),
(8, 'ÐŸÐ°Ð¼ÐµÑ‚Ð½Ð¸Ðº Ð½Ð° Ñ‚Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾ÐºÐ¾Ð»ÐµÐ½Ð¸Ñ', 'ÐœÐµÐ¼Ð¾Ñ€Ð¸Ð°Ð»ÐµÐ½ Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸Ðº Ð½Ð° Ñ‚Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾ÐºÐ¾Ð»ÐµÐ½Ð¸Ñ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ðµ Ð¾Ñ‚ÐºÑ€Ð¸Ñ‚ Ð¿Ñ€ÐµÐ· 1976 Ð³. Ð¿Ð¾ ÑÐ»ÑƒÑ‡Ð°Ð¹ 100-Ð³Ð¾Ð´Ð¸ÑˆÐ½Ð¸Ð½Ð°Ñ‚Ð° Ð¾Ñ‚ ÑƒÑ‡Ð°ÑÑ‚Ð¸ÐµÑ‚Ð¾ Ð½Ð° Ð³Ñ€Ð°Ð´Ð° Ð² ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ, Ð² Ð¿Ð°Ð¼ÐµÑ‚ Ð½Ð° Ð½ÑÐºÐ¾Ð»ÐºÐ¾ Ð¿Ð¾ÐºÐ¾Ð»ÐµÐ½Ð¸Ñ Ð·Ð°Ð³Ð¸Ð½Ð°Ð»Ð¸ Ð·Ð° ÑÐ²Ð¾Ð±Ð¾Ð´Ð°Ñ‚Ð° Ð¿ÐµÑ€ÑƒÑ‰ÐµÐ½Ñ†Ð¸. Ð˜Ð·Ð³Ñ€Ð°Ð´ÐµÐ½ Ðµ Ð½Ð° Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸Ñ Ð²Ñ€ÑŠÑ… â€žÐ’Ð»Ð°ÑÐµÐ²Ð¸Ñ†Ð°â€œ, ÐºÑŠÐ´ÐµÑ‚Ð¾ Ðµ Ð»Ð¾Ð±Ð½Ð¾Ñ‚Ð¾ Ð¼ÑÑÑ‚Ð¾ Ð¸ Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸ÐºÑŠÑ‚ Ð½Ð° Ñ‚Ñ€Ð¸Ð¼Ð°Ñ‚Ð° ÑÑ‚Ð°Ñ€Ñ†Ð¸ Ð¿Ð°Ñ€Ð»Ð°Ð¼ÐµÐ½Ñ‚ÑŒÐ¾Ñ€Ð¸ Ð¾Ñ‚ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°, ÑƒÐ±Ð¸Ñ‚Ð¸ Ð¾Ñ‚ Ð±Ð°ÑˆÐ¸Ð±Ð¾Ð·ÑƒÑ†Ð¸ Ð¿Ð¾ Ð²Ñ€ÐµÐ¼Ðµ Ð½Ð° Ð²ÑŠÑÑ‚Ð°Ð½Ð¸ÐµÑ‚Ð¾.\r\n\r\nÐ”Ð¾ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑÐ° Ð²Ð¾Ð´Ð¸ ÐµÑÑ‚Ð°ÐºÐ°Ð´Ð° Ð¾Ñ‚ ÑÑ‚ÑŠÐ»Ð±Ð¸, ÐºÐ¾ÑÑ‚Ð¾ Ð·Ð°Ð¿Ð¾Ñ‡Ð²Ð° Ð¾Ñ‚ Ð”Ð°Ð½Ð¾Ð²Ð¾Ñ‚Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ Ð¸ ÑÑŠÑ ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¸ÐºÐ°Ñ‚Ð° ÑÐ¸ Ð¸Ð·Ñ€Ð°Ð·ÑÐ²Ð° Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÐ·Ð²Ð¸ÑÑÐ²Ð°Ð½Ðµ Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¾Ñ‚ ÐµÐ¿Ð¾Ñ…Ð°Ñ‚Ð° Ð½Ð° Ð’ÑŠÐ·Ñ€Ð°Ð¶Ð´Ð°Ð½ÐµÑ‚Ð¾ Ð´Ð¾ Ð´Ð½ÐµÑ. ÐžÑ‚ Ð²ÑŠÑ€Ñ…Ð°, Ð´Ð¾ ÐºÐ¾Ð¹Ñ‚Ð¾ Ð¼Ð¾Ð¶Ðµ Ð´Ð° ÑÐµ Ð¾Ñ‚Ð¸Ð´Ðµ Ð¸ Ñ Ð°Ð²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð», ÑÐµ Ð¾Ñ‚ÐºÑ€Ð¸Ð²Ð° Ð¿Ð°Ð½Ð¾Ñ€Ð°Ð¼Ð° Ð½Ð° Ð³Ñ€Ð°Ð´Ð° Ð¸ Ð¾ÐºÐ¾Ð»Ð½Ð¾ÑÑ‚Ñ‚Ð°.'),
(9, 'Ð—Ð°Ñ‰Ð¸Ñ‚ÐµÐ½Ð° Ð¼ÐµÑÑ‚Ð½Ð¾ÑÑ‚ ÐŸÐµÑ€Ð¸ÑÑ‚Ð¸Ñ†Ð°', 'Ð—Ð°Ñ‰Ð¸Ñ‚ÐµÐ½Ð° Ð¼ÐµÑÑ‚Ð½Ð¾ÑÑ‚ â€œÐŸÐµÑ€Ð¸ÑÑ‚Ð¸Ñ†Ð°â€œ ÑÐµ Ð½Ð°Ð¼Ð¸Ñ€Ð° Ð² Ð·ÐµÐ¼Ð»Ð¸Ñ‰ÐµÑ‚Ð¾ Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¸ ÑÐµÐ»Ð¾ Ð£ÑÑ‚Ð¸Ð½Ð°, Ð¾Ð±Ñ‰Ð¸Ð½Ð° Ð Ð¾Ð´Ð¾Ð¿Ð¸. Ð¢ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð·Ð°Ñ‰Ð¸Ñ‚ÐµÐ½Ð°Ñ‚Ð° Ð¼ÐµÑÑ‚Ð½Ð¾ÑÑ‚ Ð²ÐºÐ»ÑŽÑ‡Ð²Ð° ÑÐºÐ°Ð»ÐµÐ½ Ð¼Ð°ÑÐ¸Ð², Ñ€Ð°Ð·Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½ Ð½Ð° ÑŽÐ³ Ð¾Ñ‚ ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¸ Ð²ÐµÐºÐ¾Ð²Ð½Ð° Ð±ÑƒÐºÐ¾Ð²Ð¾-Ð´ÑŠÐ±Ð¾Ð²Ð° Ð³Ð¾Ñ€Ð°. Ð¡ÐºÐ°Ð»Ð½Ð¸ÑÑ‚ Ð¼Ð°ÑÐ¸Ð² Ðµ Ð¼ÐµÑÑ‚Ð¾Ð¾Ð±Ð¸Ñ‚Ð°Ð½Ð¸Ðµ Ð¸ Ð¼ÑÑÑ‚Ð¾ Ð·Ð° Ð³Ð½ÐµÐ·Ð´ÐµÐ½Ðµ Ð¸ Ñ…Ñ€Ð°Ð½ÐµÐ½Ðµ Ð½Ð° Ñ‡ÐµÑ€ÐµÐ½ Ñ‰ÑŠÑ€ÐºÐµÐ», ÐºÐ°ÐºÑ‚Ð¾ Ð¸ Ð½Ð° Ñ€ÐµÐ´Ð¸Ñ†Ð° Ð²Ð¸Ð´Ð¾Ð²Ðµ Ð´Ð½ÐµÐ²Ð½Ð¸ Ð¸ Ð½Ð¾Ñ‰Ð½Ð¸ Ð¿Ñ‚Ð¸Ñ†Ð¸.\r\n\r\nÐžÐ±ÑÐ²ÐµÐ½Ð° Ðµ Ð¾Ñ‚ ÐšÐ¾Ð¼Ð¸Ñ‚ÐµÑ‚Ð° Ð¿Ð¾ Ð¾Ð¿Ð°Ð·Ð²Ð°Ð½Ðµ Ð½Ð° Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð½Ð°Ñ‚Ð° ÑÑ€ÐµÐ´Ð° Ð¿Ñ€Ð¸ ÐœÐ¸Ð½Ð¸ÑÑ‚ÐµÑ€ÑÐºÐ¸ ÑÑŠÐ²ÐµÑ‚ Ð·Ð° Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¾ Ð¼ÑÑÑ‚Ð¾.  Ð—Ð°Ñ€Ð°Ð´Ð¸ Ð¾Ð¿Ð°Ð·Ð²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° Ð³Ð½ÐµÐ·Ð´Ð¾Ð²Ð¾Ñ‚Ð¾ Ð¼ÐµÑÑ‚Ð¾Ð¾Ð±Ð¸Ñ‚Ð°Ð½Ð¸Ðµ Ð½Ð° Ð·Ð°Ñ‰Ð¸Ñ‚ÐµÐ½Ð¸Ñ Ð¸Ð·Ñ‡ÐµÐ·Ð²Ð°Ñ‰ Ð²Ð¸Ð´ â€žÐ§ÐµÑ€ÐµÐ½ Ñ‰ÑŠÑ€ÐºÐµÐ»â€ Ð¸ Ñ…Ð°Ñ€Ð°ÐºÑ‚ÐµÑ€ÐµÐ½ Ð»Ð°Ð½Ð´ÑˆÐ°Ñ„Ñ‚, â€žÐŸÐµÑ€Ð¸ÑÑ‚Ð¸Ñ†Ð°â€ Ðµ Ð¾Ð±ÑÐ²ÐµÐ½Ð° Ð·Ð° Ð·Ð°Ñ‰Ð¸Ñ‚ÐµÐ½Ð° Ð¼ÐµÑÑ‚Ð½Ð¾ÑÑ‚. ÐžÑ‚ 2007 Ð³Ð¾Ð´Ð¸Ð½Ð° Ð¿Ð»Ð¾Ñ‰Ñ‚Ð° Ð½Ð° Ð·Ð°Ñ‰Ð¸Ñ‚ÐµÐ½Ð°Ñ‚Ð° Ð¼ÐµÑÑ‚Ð½Ð¾ÑÑ‚ Ðµ Ð°ÐºÑ‚ÑƒÐ°Ð»Ð¸Ð·Ð¸Ñ€Ð°Ð½Ð° Ð½Ð° 5,888 Ñ…Ð°.\r\nÐ¡Ñ‚Ð¾Ð¿Ð°Ð½Ð¸ÑÐ²Ð° ÑÐµ Ð¸ ÑÐµ Ð¾Ñ…Ñ€Ð°Ð½ÑÐ²Ð° Ð¾Ñ‚ Ð¾Ð±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°, Ð¾Ð±Ñ‰Ð¸Ð½Ð° Ð Ð¾Ð´Ð¾Ð¿Ð¸ Ð¸ Ð¾Ñ‚ Ð”ÑŠÑ€Ð¶Ð°Ð²Ð½Ð¾ Ð³Ð¾Ñ€ÑÐºÐ¾ ÑÑ‚Ð¾Ð¿Ð°Ð½ÑÑ‚Ð²Ð¾ â€“ ÐšÑ€Ð¸Ñ‡Ð¸Ð¼, Ð¿Ð¾Ð´ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»Ð° Ð½Ð° Ð Ð˜ÐžÐ¡Ð’ â€“ ÐŸÐ»Ð¾Ð²Ð´Ð¸Ð².');

-- --------------------------------------------------------

--
-- Table structure for table `landmarksimages`
--

CREATE TABLE `landmarksimages` (
  `id` int(11) NOT NULL,
  `landmarks_id` int(11) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `landmarksimages`
--

INSERT INTO `landmarksimages` (`id`, `landmarks_id`, `img`) VALUES
(7, 5, '1804fc8664de44f63179e5134e45edbc14615ad9.jpg'),
(8, 1, 'b8dafea5d795a413cc4515ba7f7a96a49224e7e6.jpg'),
(9, 1, '749958f1b8c814935d3e3c391a5b57178e3e0382.jpg'),
(10, 1, '1f8f579288681d5cd346de1daf5fe9dfca2166aa.jpg'),
(11, 3, '37ba75a88a0347c63c1f7fc2e114bb87cbb53149.png'),
(12, 4, '7bdef4c50b799a391c8bf20f7d162430a6f4cd5a.jpg'),
(14, 6, '934dbd09f518d0f50df71e58e4f37272749a01b5.png'),
(15, 7, '2d32e2fdc35657e075971978952dcaae49ec47a5.jpg'),
(16, 8, '4473b12ce1aab41610c862f80e06573cf67c3c51.jpg'),
(17, 8, '831f29ecbe85bd864c2991ba1ae0432ed6517dc2.jpg'),
(18, 9, 'df520930ebcd45168bc06840a5854e6df6b9b74a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`) VALUES
(1, 'ÐšÐžÐÐ¦Ð•Ð Ð¢ ÐÐ ÐŸÐžÐ›Ð˜ ÐŸÐÐ¡ÐšÐžÐ’Ð Ð—Ð ÐŸÐ ÐÐ—ÐÐ˜ÐšÐ ÐÐ Ð“Ð ÐÐ” ÐŸÐ•Ð Ð£Ð©Ð˜Ð¦Ð â€“ 10 ÐœÐÐ™', 'ÐŸÐ¾ Ð¿Ð¾Ð²Ð¾Ð´ ÐŸÑ€Ð°Ð·Ð½Ð¸ÐºÐ° Ð½Ð° Ð³Ñ€. ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° â€“ 10 Ð¼Ð°Ð¹, Ð½Ð° Ð¦ÐµÐ½Ñ‚Ñ€Ð°Ð»ÐµÐ½ Ð¿Ð»Ð¾Ñ‰Ð°Ð´ â€ž27 Ð°Ð¿Ñ€Ð¸Ð»Ð¸Ð¹â€œ Ð¾Ñ‚ 19,00 Ñ‡Ð°ÑÐ° Ñ‰Ðµ ÑÐµ ÑÑŠÑÑ‚Ð¾Ð¸ ÐºÐ¾Ð½Ñ†ÐµÑ€Ñ‚ Ð½Ð° ÐŸÐ¾Ð»Ð¸ ÐŸÐ°ÑÐºÐ¾Ð²Ð°. ÐÐµ Ðµ ÑÐ»ÑƒÑ‡Ð°Ð¹Ð½Ð° Ð¿Ð¾ÐºÐ°Ð½Ð°Ñ‚Ð° Ð½Ð° ÐºÐ¼ÐµÑ‚Ð° Ð½Ð° ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð³-Ð½ Ð Ð°Ð´Ð¸ ÐœÐ¸Ð½Ñ‡ÐµÐ² ÐºÑŠÐ¼ Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ð°Ñ‚Ð° Ð¿ÐµÐ²Ð¸Ñ†Ð°, ÐºÐ¾ÑÑ‚Ð¾ Ñ Ð¸Ð½Ð´Ð¸Ð²Ð¸Ð´ÑƒÐ°Ð»Ð½Ð¸Ñ ÑÐ¸ ÑÑ‚Ð¸Ð» Ð¸ Ð¿Ñ€Ð¸ÑÑŠÑÑ‚Ð²Ð¸Ðµ ÑÑŠÑƒÐ¼ÑÐ²Ð° Ð´Ð° Ð¿Ð¾Ð²Ð´Ð¸Ð³Ð½Ðµ Ð±ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸Ñ Ð´ÑƒÑ… Ð¸ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¾ ÑÐ°Ð¼Ð¾Ñ‡ÑƒÐ²ÑÑ‚Ð²Ð¸Ðµ.\r\n\r\nÐŸÐ¾Ð»Ð¸ ÐŸÐ°ÑÐºÐ¾Ð²Ð° Ð¸Ð¼Ð° Ð¸Ð·Ð´Ð°Ð´ÐµÐ½Ð¸ 14 ÑÐ°Ð¼Ð¾ÑÑ‚Ð¾ÑÑ‚ÐµÐ»Ð½Ð¸ Ð°Ð»Ð±ÑƒÐ¼Ð° Ð¸ Ðµ Ð½Ð¾ÑÐ¸Ñ‚ÐµÐ» Ð½Ð° Ð¼Ð½Ð¾Ð¶ÐµÑÑ‚Ð²Ð¾ Ð½Ð°Ð³Ñ€Ð°Ð´Ð¸. ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸ÑÑ‚ Ð³Ñ€Ð°Ð½Ð´Ð¸Ð¾Ð·ÐµÐ½ Ð¿Ñ€Ð¾ÐµÐºÑ‚ Ð½Ð° Ð¿ÐµÐ²Ð¸Ñ†Ð°Ñ‚Ð° Ðµ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÑŠÐ»ÑŠÑ‚ â€žÐ¡Ð²ÑÑ‚Ð° Ð·ÐµÐ¼Ñ Ð‘ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ°â€ , Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²ÐµÐ½ Ð¿Ñ€ÐµÐ´ 10 000 Ð·Ñ€Ð¸Ñ‚ÐµÐ»Ð¸ Ð² Ð·Ð°Ð»Ð° â€žÐÑ€ÐµÐ½Ð° ÐÑ€Ð¼ÐµÐµÑ†â€. ÐŸÐ¾Ð»Ð¸ Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð²Ñ Ð¸ÑÑ‚Ð¸Ð½ÑÐºÐ¸ Ð½Ð°Ñ€Ð¾Ð´ÐµÐ½ Ð¿Ñ€Ð°Ð·Ð½Ð¸Ðº Ð² ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° ÑÑŠÑ ÑÐ²Ð¾Ñ Ñ€Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·ÐµÐ½ Ñ€ÐµÐ¿ÐµÑ€Ñ‚Ð¾Ð°Ñ€, ÐºÐ¾Ð¹Ñ‚Ð¾ Ð¾Ð±Ñ…Ð²Ð°Ñ‰Ð° Ð°ÑƒÐ´Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ Ð¾Ñ‚ Ð²ÑÐ¸Ñ‡ÐºÐ¸ Ð²ÑŠÐ·Ñ€Ð°ÑÑ‚Ð¸.', '13.May.2016'),
(2, 'Ð¢ÑŠÑ€Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ°-Ð·Ð°Ñ€Ñ Ð½Ð° 9 Ð¼Ð°Ð¹ Ð² ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¿Ð¾ Ð¿Ð¾Ð²Ð¾Ð´ 140 Ð³. Ð¾Ñ‚ ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ', 'Ð¢ÑŠÑ€Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð°Ñ‚Ð° Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð½Ð° ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¿Ð¾ Ð¿Ð¾Ð²Ð¾Ð´ 140 Ð³. Ð¾Ñ‚ Ð¸Ð·Ð±ÑƒÑ…Ð²Ð°Ð½Ðµ Ð½Ð° ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ Ñ‰Ðµ Ð·Ð°Ð¿Ð¾Ñ‡Ð½Ðµ Ð² 19,00 Ñ‡. ÑÑŠÑ Ð·Ð°ÑƒÐ¿Ð¾ÐºÐ¾Ð¹Ð½Ð° Ð¿Ð°Ð½Ð¸Ñ…Ð¸Ð´Ð° Ð² Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ°Ñ‚Ð° Ñ†ÑŠÑ€ÐºÐ²Ð° â€žÐ¡Ð². ÐÑ€Ñ…Ð°Ð½Ð³ÐµÐ» ÐœÐ¸Ñ…Ð°Ð¸Ð»â€œ, ÐºÐ¾ÑÑ‚Ð¾ Ñ‰Ðµ Ð±ÑŠÐ´Ðµ Ð¾Ñ‚ÑÐ»ÑƒÐ¶ÐµÐ½Ð° Ð¾Ñ‚ ÐÐµÐ³Ð¾Ð²Ð¾ Ð’Ð¸ÑÐ¾ÐºÐ¾Ð¿Ñ€ÐµÐ¾ÑÐ²ÐµÑ‰ÐµÐ½ÑÑ‚Ð²Ð¾ ÐŸÐ»Ð¾Ð²Ð´Ð¸Ð²ÑÐºÐ¸ÑÑ‚ ÐœÐ¸Ñ‚Ñ€Ð¾Ð¿Ð¾Ð»Ð¸Ñ‚ ÐÐ¸ÐºÐ¾Ð»Ð°Ð¹. Ð’ 20,00 Ñ‡. Ðµ Ñ†ÐµÑ€ÐµÐ¼Ð¾Ð½Ð¸ÑÑ‚Ð° Ð¿Ð¾ Ð¸Ð·Ð´Ð¸Ð³Ð°Ð½Ðµ Ð½Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ Ñ„Ð»Ð°Ð³. Ð©Ðµ Ð±ÑŠÐ´Ð°Ñ‚ Ð¿Ð¾Ð´Ð½ÐµÑÐµÐ½Ð¸ Ð²ÐµÐ½Ñ†Ð¸ Ð¸ Ñ†Ð²ÐµÑ‚Ñ Ð¾Ñ‚ Ð¿Ñ€Ð¸Ð·Ð½Ð°Ñ‚ÐµÐ»Ð½Ð¾Ñ‚Ð¾ Ð³Ñ€Ð°Ð¶Ð´Ð°Ð½ÑÑ‚Ð²Ð¾ Ð¸ Ð´ÑŠÑ€Ð¶Ð°Ð²Ð½Ð¸ Ð¸Ð½ÑÑ‚Ð¸Ñ‚ÑƒÑ†Ð¸Ð¸ Ð½Ð° Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð°Ñ‚Ð° Ð¿Ð»Ð¾Ñ‡Ð° Ð½Ð° Ð±Ñ€Ð°Ñ‚Ñ Ð¢Ð¸Ð»ÐµÐ²Ð¸, Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸ÐºÐ° Ð½Ð° ÐŸÐµÑ‚ÑŠÑ€ Ð‘Ð¾Ð½ÐµÐ², Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ° Ñ†ÑŠÑ€ÐºÐ²Ð° â€žÐ¡Ð². ÐÑ€Ñ…Ð°Ð½Ð³ÐµÐ» ÐœÐ¸Ñ…Ð°Ð¸Ð»â€œ. Ð¡Ð»ÐµÐ´ ÑÐ»Ð¾Ð²Ð¾ Ð½Ð° ÐºÐ¼ÐµÑ‚Ð° Ð½Ð° ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð³-Ð½ Ð Ð°Ð´Ð¸ ÐœÐ¸Ð½Ñ‡ÐµÐ², Ð·Ñ€Ð¸Ñ‚ÐµÐ»Ð¸Ñ‚Ðµ Ñ‰Ðµ Ð¸Ð¼Ð°Ñ‚ ÑƒÐ´Ð¾Ð²Ð¾Ð»ÑÑ‚Ð²Ð¸ÐµÑ‚Ð¾ Ð´Ð° Ð³Ð»ÐµÐ´Ð°Ñ‚ Ð¼ÑƒÐ·Ð¸ÐºÐ°Ð»Ð½Ð¾-Ð¿Ð¾ÐµÑ‚Ð¸Ñ‡Ð½Ð¸Ñ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÑŠÐ» â€žÐŸÐ°Ð¼ÐµÑ‚ Ð·Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°â€œ - ÑÑ†ÐµÐ½Ð°Ñ€Ð¸Ð¹ Ð¸ Ñ€ÐµÐ¶Ð¸ÑÑƒÑ€Ð° ÐÐ»ÐµÐºÑÐµÐ¹ ÐšÐ¾Ð¶ÑƒÑ…Ð°Ñ€Ð¾Ð² Ð¸ ÐŸÐµÑ‚ÑŠÑ€ Ð¢Ð¾ÑÐºÐ¾Ð², Ñ…Ð¾Ñ€ÐµÐ¾Ð³Ñ€Ð°Ñ„Ð¸Ñ â€“ Ð¡Ñ‚ÐµÑ„Ð°Ð½ Ð™Ð¾Ñ€Ð´Ð°Ð½Ð¾Ð². Ð¢ÑŠÑ€Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð°Ñ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ°-Ð·Ð°Ñ€Ñ Ðµ Ñ ÑƒÑ‡Ð°ÑÑ‚Ð¸ÐµÑ‚Ð¾ Ð½Ð° Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð¸Ñ‚ÐµÐ»Ð½Ð¸ Ñ€Ð¾Ñ‚Ð¸ Ð¾Ñ‚ Ð§ÐµÑ‚Ð²ÑŠÑ€Ñ‚Ð¸ Ð°Ñ€Ñ‚Ð¸Ð»ÐµÑ€Ð¸Ð¹ÑÐºÐ¸ Ð¿Ð¾Ð»Ðº â€“ Ð³Ð°Ñ€Ð½Ð¸Ð·Ð¾Ð½ ÐÑÐµÐ½Ð¾Ð²Ð³Ñ€Ð°Ð´ Ð¸ ÐŸÑ€ÐµÐ´ÑÑ‚Ð°Ð²Ð¸Ñ‚ÐµÐ»ÐµÐ½ Ð´ÑƒÑ…Ð¾Ð² Ð¾Ñ€ÐºÐµÑÑ‚ÑŠÑ€ Ð½Ð° Ð²Ð¾ÐµÐ½Ð½Ð¾Ð²ÑŠÐ·Ð´ÑƒÑˆÐ½Ð¸Ñ‚Ðµ ÑÐ¸Ð»Ð¸. ÐŸÑ€Ð°Ð·Ð½Ð¸Ñ‡Ð½Ð¸Ñ‚Ðµ Ð¸Ð»ÑŽÐ¼Ð¸Ð½Ð°Ñ†Ð¸Ð¸, Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð²ÐµÐ½Ð¸ Ð¾Ñ‚ Ñ„Ð¸Ñ€Ð¼Ð° â€žÐžÐ³Ð½ÐµÐ½Ð° Ñ…Ñ€Ð¸Ð·Ð°Ð½Ñ‚ÐµÐ¼Ð°â€œ â€“ Ð³Ñ€. ÐŸÐ°Ð½Ð°Ð³ÑŽÑ€Ð¸Ñ‰Ðµ Ñ‰Ðµ Ð¾ÑÐ²ÐµÑ‚ÑÑ‚ Ñ†ÐµÐ½Ñ‚Ñ€Ð°Ð»Ð½Ð¸Ñ Ð¿Ð»Ð¾Ñ‰Ð°Ð´.\r\n\r\nÐŸÐ¾-Ñ€Ð°Ð½Ð¾ Ð² Ð¿Ñ€Ð°Ð·Ð½Ð¸Ñ‡Ð½Ð¸Ñ Ð´ÐµÐ½, Ð¾Ñ‚ 15,00 Ñ‡. Ð² Ñ‡Ð¸Ñ‚Ð°Ð»Ð¸Ñ‰Ðµ â€žÐŸÑ€Ð¾ÑÐ²ÐµÑ‚Ð° â€“ 1862â€œ, Ñ‰Ðµ ÑÐµ ÑÑŠÑÑ‚Ð¾Ð¸ ÑÑ€ÐµÑ‰Ð° Ð½Ð° Ð³Ñ€Ð°Ð¶Ð´Ð°Ð½Ð¸Ñ‚Ðµ Ñ Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ð¸Ñ Ð±ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸ Ð°ÐºÑ‚ÑŒÐ¾Ñ€ ÐšÐ°Ð»Ð¸Ð½ Ð¡ÑŠÑ€Ð¼ÐµÐ½Ð¾Ð², ÐºÐ¾Ð¹Ñ‚Ð¾ Ðµ Ñ€Ð¾Ð´ÑÑ‚Ð²ÐµÐ½Ð¸Ðº Ð¿Ð¾ Ð¼Ð°Ð¹Ñ‡Ð¸Ð½Ð° Ð»Ð¸Ð½Ð¸Ñ Ð½Ð° Ð¡Ð¿Ð°Ñ Ð“Ð¸Ð½Ð¾Ð².', '13.May.2016'),
(5, 'Ð¡Ð»Ð¸Ð²ÐµÐ½ Ð¿Ð¾ÑÑ€ÐµÑ‰Ð° Ð½Ð° ÑÑ†ÐµÐ½Ð° Ð»ÐµÐ³ÐµÐ½Ð´Ð°Ñ€Ð½Ð¸Ñ Ñ…Ð°Ñ€Ð´ Ñ€Ð¾Ðº Ð¿ÐµÐ²ÐµÑ† Ð”Ð¶Ð¾ Ð›Ð¸Ð½ Ð¢ÑŠÑ€Ð½ÑŠÑ€', 'ÐÐ° 19 ÑÐµÐ¿Ñ‚ÐµÐ¼Ð²Ñ€Ð¸ Ð² 19.30 Ñ‡Ð°ÑÐ°, Ð² ÐšÑŠÑÐ½Ð¾Ð°Ð½Ñ‚Ð¸Ñ‡Ð½Ð° Ð¸ ÑÑ€ÐµÐ´Ð½Ð¾Ð²ÐµÐºÐ¾Ð²Ð½Ð° ÐºÑ€ÐµÐ¿Ð¾ÑÑ‚ â€žÐ¢ÑƒÐ¸Ð´Ð°â€, Ñ€Ð°Ð·Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð° Ð² ÑÐµÐ²ÐµÑ€Ð½Ð¸Ñ‚Ðµ Ð¿Ð¾ÐºÑ€Ð°Ð¹Ð½Ð¸Ð½Ð¸ Ð½Ð° Ð¡Ð»Ð¸Ð²ÐµÐ½, Ð°Ð¼ÐµÑ€Ð¸ÐºÐ°Ð½ÑÐºÐ°Ñ‚Ð° Ð·Ð²ÐµÐ·Ð´Ð°, Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ð° Ñ Ð½ÐµÐ·Ð°Ð±Ñ€Ð°Ð²Ð¸Ð¼Ð¸Ñ‚Ðµ ÑÐ¸ Ð²Ð¾ÐºÐ°Ð»Ð½Ð¸ Ð¿Ð°Ñ€Ñ‚Ð¸Ð¸ Ð² â€žÐ ÐµÐ¹Ð½Ð±Ð¾Ñƒâ€ Ð¸ â€žÐ”Ð¸Ð¹Ð¿ ÐŸÑŠÑ€Ð¿ÑŠÐ»â€ Ñ‰Ðµ Ð·Ð°Ñ€Ð°Ð´Ð²Ð° Ñ…Ð¸Ð»ÑÐ´Ð¸ ÑÐ²Ð¾Ð¸ Ð¿Ð¾Ñ‡Ð¸Ñ‚Ð°Ñ‚ÐµÐ»Ð¸.\r\nÐšÐ¾Ð½Ñ†ÐµÑ€Ñ‚ÑŠÑ‚ Ðµ Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð¸Ñ€Ð°Ð½ Ð¾Ñ‚ ÐžÐ±Ñ‰Ð¸Ð½Ð° Ð¡Ð»Ð¸Ð²ÐµÐ½. ÐšÐ¼ÐµÑ‚ÑŠÑ‚ Ð½Ð° Ð³Ñ€Ð°Ð´Ð°, Ð¸Ð½Ð¶. ÐšÐ¾Ð»ÑŒÐ¾ ÐœÐ¸Ð»ÐµÐ², ÐºÐ¾Ð¹Ñ‚Ð¾ Ðµ Ð¸ ÐŸÑ€ÐµÐ´ÑÐµÐ´Ð°Ñ‚ÐµÐ» Ð½Ð° Ð ÐµÐ³Ð¸Ð¾Ð½Ð°Ð»Ð½Ð° Ð°ÑÐ¾Ñ†Ð¸Ð°Ñ†Ð¸Ñ Ð½Ð° Ð¾Ð±Ñ‰Ð¸Ð½Ð¸Ñ‚Ðµ â€žÐ¢Ñ€Ð°ÐºÐ¸Ñâ€, ÐºÐ°Ð½Ð¸ Ð»ÑŽÐ±Ð¸Ñ‚ÐµÐ»Ð¸Ñ‚Ðµ Ð½Ð° Ñ‚Ð²ÑŠÑ€Ð´Ð°Ñ‚Ð° Ð¼ÑƒÐ·Ð¸ÐºÐ° Ð¾Ñ‚ Ñ€ÐµÐ³Ð¸Ð¾Ð½Ð° Ð´Ð° ÑÐµ Ð¿Ñ€Ð¸ÑÑŠÐµÐ´Ð¸Ð½ÑÑ‚ ÐºÑŠÐ¼ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÑŠÐ»Ð°. Ð¡ Ð”Ð¶Ð¾ Ð›Ð¸Ð½ Ð¢ÑŠÑ€Ð½ÑŠÑ€ Ñ‰Ðµ ÑÐ²Ð¸Ñ€ÑÑ‚ Ð¼ÑƒÐ·Ð¸ÐºÐ°Ð½Ñ‚Ð¸Ñ‚Ðµ Ð¾Ñ‚ Ð±ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ°Ñ‚Ð° Ð³Ñ€ÑƒÐ¿Ð° â€žÐšÐ¸ÐºÐ¸Ð¼Ð¾Ñ€Ð°â€ Ð½Ð° Ð¿Ñ€Ð¾Ñ‡ÑƒÑ‚Ð¸Ñ ÐºÐ¸Ñ‚Ð°Ñ€Ð¸ÑÑ‚ Ð¸ ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ‚Ð¾Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð¾ ÐšÐ¾Ñ†ÐµÐ².\r\nÐ¡Ð»Ð¸Ð²ÐµÐ½ Ñ‚Ñ€ÐµÑÐºÐ°Ð²Ð¾ ÑÐµ Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð²Ñ Ð·Ð° ÑÑŠÐ±Ð¸Ñ‚Ð¸ÐµÑ‚Ð¾. ÐšÐ¾Ð½Ñ†ÐµÑ€Ñ‚ Ð¾Ñ‚ Ð¿Ð¾Ð´Ð¾Ð±ÐµÐ½ Ð¼Ð°Ñ‰Ð°Ð± Ð¸ Ð½Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð´Ñ€ÐµÐ²Ð½Ð°Ñ‚Ð° ÐºÑ€ÐµÐ¿Ð¾ÑÑ‚ Ð¢ÑƒÐ¸Ð´Ð°, ÐºÐ¾ÑÑ‚Ð¾ ÑÐ»ÐµÐ´ Ð¾ÑÑŠÑ‰ÐµÑÑ‚Ð²ÑÐ²ÑÐ½Ðµ Ð½Ð° ÐµÐ²Ñ€Ð¾Ð¿ÐµÐ¹ÑÐºÐ¸ Ð¿Ñ€Ð¾ÐµÐºÑ‚ Ð¾Ñ‚ÑÐºÐ¾Ñ€Ð¾ Ð¾Ñ‚Ð²Ð¾Ñ€Ð¸ Ð²Ñ€Ð°Ñ‚Ð¸ Ð·Ð° Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»Ð¸, Ð½Ðµ Ðµ Ð¸Ð¼Ð°Ð»Ð¾.\r\nÐ¦ÐµÐ½Ð°Ñ‚Ð° Ð½Ð° Ð±Ð¸Ð»ÐµÑ‚Ð° Ðµ 10 Ð»ÐµÐ²Ð°. Ð‘Ð¸Ð»ÐµÑ‚Ð¸ Ð·Ð° ÐºÐ¾Ð½Ñ†ÐµÑ€Ñ‚Ð° Ð¾ÑÐ²ÐµÐ½ Ð´Ð¸Ñ€ÐµÐºÑ‚Ð½Ð¾ Ð¾Ñ‚ ÐºÑ€ÐµÐ¿Ð¾ÑÑ‚Ñ‚Ð°, Ð¼Ð¾Ð³Ð°Ñ‚ Ð´Ð° ÑÐµ Ð·Ð°ÐºÑƒÐ¿ÑÑ‚ Ð¾Ñ‚ ÐžÐ±Ñ‰Ð¸Ð½ÑÐºÐ¸Ñ Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½ÐµÐ½ Ñ†ÐµÐ½Ñ‚ÑŠÑ€ /Ð´Ð¾ Ð’Ð¸ÐµÐ½ÑÐºÐ°Ñ‚Ð° ÑÐ»Ð°Ð´ÐºÐ°Ñ€Ð½Ð¸Ñ†Ð°/ Ð¾Ñ‚ 10 Ð´Ð¾ 13 Ñ‡Ð°ÑÐ° Ð¸ Ð¾Ñ‚ 14 Ð´Ð¾ 19 Ñ‡Ð°ÑÐ° Ð¿Ñ€ÐµÐ· Ð´ÐµÐ»Ð½Ð¸Ñ‡Ð½Ð¸Ñ‚Ðµ Ð´Ð½Ð¸. Ð’ ÑÑŠÐ±Ð¾Ñ‚Ð° Ñ†ÐµÐ½Ñ‚ÑŠÑ€ÑŠÑ‚ Ñ‰Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð¸ Ð´Ð¾ 17 Ñ‡Ð°ÑÐ°, Ð° Ð½Ð° Ð¢ÑƒÐ¸Ð´Ð° Ð±Ð¸Ð»ÐµÑ‚Ð¸ Ñ‰Ðµ ÑÐµ Ð¿Ñ€Ð¾Ð´Ð°Ð²Ð°Ñ‚ Ð½ÐµÐ¿Ð¾ÑÑ€ÐµÐ´ÑÑ‚Ð²ÐµÐ½Ð¾ Ð´Ð¾ Ð½Ð°Ñ‡Ð°Ð»Ð¾Ñ‚Ð¾ Ð½Ð° ÑˆÐ¾ÑƒÑ‚Ð¾.', '11.May.2016'),
(6, 'Ð¡ÐµÐ´Ð¼Ð¸Ñ†Ð° Ñ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¸ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ Ð² ÐžÐ±Ñ‰Ð¸Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° Ð¿Ð¾ Ð¿Ð¾Ð²Ð¾Ð´ 140 Ð³. Ð¾Ñ‚ ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ', 'Ð’ÑŠÐ»Ð½ÑƒÐ²Ð°Ñ‰Ð¸ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð¸ Ñ‰Ðµ Ð¾ÑÑ‚Ð°Ð½Ð°Ñ‚ Ð² ÑÑŠÐ·Ð½Ð°Ð½Ð¸ÐµÑ‚Ð¾ Ð½Ð° Ð¿ÐµÑ€ÑƒÑ‰Ð¸Ð½Ñ†Ð¸ Ð¾Ñ‚ Ñ‚ÐµÐ·Ð¸ Ð°Ð¿Ñ€Ð¸Ð»ÑÐºÐ¸ Ð´Ð½Ð¸. Ð’ÑŠÐ² Ð²Ñ‡ÐµÑ€Ð°ÑˆÐ½Ð¸Ñ Ð´ÐµÐ½ ÑÐµ ÑÑŠÑÑ‚Ð¾Ñ Ñ€Ð¸ÑÑƒÐ½ÐºÐ° Ð½Ð° Ð¾Ñ‚ÐºÑ€Ð¸Ñ‚Ð¾ Ð½Ð° Ñ‚ÐµÐ¼Ð° â€žÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð° - Ð¼Ð¾ÑÑ‚ Ñ€Ð¾Ð´ÐµÐ½ Ð³Ñ€Ð°Ð´â€œ. Ð£Ñ‡ÐµÐ½Ð¸Ñ†Ð¸ Ð¾Ñ‚ ÐžÐ£ â€žÐŸÐµÑ‚ÑŠÑ€ Ð‘Ð¾Ð½ÐµÐ²â€œ Ñ Ñ€ÑŠÐºÐ¾Ð²Ð¾Ð´Ð¸Ñ‚ÐµÐ» Ð³-Ð¶Ð° ÐÐ½Ð°ÑÑ‚Ð°ÑÐ¸Ñ ÐœÐ¸Ñ‚ÐµÐ²Ð°, Ð¿Ñ€ÐµÑÑŠÐ·Ð´Ð°Ð´Ð¾Ñ…Ð° ÐºÑ€Ð°ÑÐ¸Ð²Ð°Ñ‚Ð° Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð° Ð¸ Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸ Ð·Ð°Ð±ÐµÐ»ÐµÐ¶Ð¸Ñ‚ÐµÐ»Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð° Ñ€Ð¾Ð´Ð½Ð¸Ñ Ð³Ñ€Ð°Ð´ Ð²ÑŠÑ€Ñ…Ñƒ Ñ‡ÐµÑ€Ð½Ð¸Ñ‚Ðµ ÐºÐ»Ð°ÑÐ½Ð¸ Ð´ÑŠÑÐºÐ¸ Ð² Ð´Ð²Ð¾Ñ€Ð° Ð½Ð° Ð”Ð°Ð½Ð¾Ð²Ð¾Ñ‚Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ Ð² Ñ†ÐµÐ½Ñ‚ÑŠÑ€Ð° Ð½Ð° ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°. Ð¢Ð°Ð»Ð°Ð½Ñ‚Ð»Ð¸Ð²Ð¸Ñ‚Ðµ Ð´ÐµÑ†Ð° Ð±ÑŠÑ€Ð·Ð¾ Ð¿Ñ€ÐµÐ¾Ð´Ð¾Ð»ÑÑ…Ð° Ð¿Ñ€Ð¸Ñ‚ÐµÑÐ½ÐµÐ½Ð¸ÐµÑ‚Ð¾ Ð´Ð° Ñ€Ð¸ÑÑƒÐ²Ð°Ñ‚ Ð¿Ñ€ÐµÐ´ Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ° Ð¸ ÑÑŠÑ‚Ð²Ð¾Ñ€Ð¸Ñ…Ð° Ð¿Ñ€ÐµÐºÑ€Ð°ÑÐ½Ð¸ Ñ€Ð¸ÑÑƒÐ½ÐºÐ¸. Ð Ð¼Ð°Ð»ÐºÐ¾ Ð¿Ð¾-ÐºÑŠÑÐ½Ð¾ Ð¿Ñ€Ð¸ÑÑŠÑÑ‚Ð²Ð°Ñ…Ð° Ð½Ð° Ð¾Ñ‚ÐºÑ€Ð¸Ð²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° Ð¸Ð·Ð»Ð¾Ð¶Ð±Ð°Ñ‚Ð° Ð² ÐšÐ°Ñ€Ñ‚Ð¸Ð½Ð½Ð°Ñ‚Ð° Ð³Ð°Ð»ÐµÑ€Ð¸Ñ Ð½Ð° Ð½ÐµÐ¿Ð¾ÐºÐ°Ð·Ð²Ð°Ð½Ð¸ Ð´Ð¾ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð° ÐºÐ°Ñ€Ñ‚Ð¸Ð½Ð¸ Ð¾Ñ‚ Ñ„Ð¾Ð½Ð´Ð° Ð½Ð° Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸Ñ Ð¼ÑƒÐ·ÐµÐ¹, Ð¿Ð¾ÑÐ²ÐµÑ‚ÐµÐ½Ð¸ Ð½Ð° ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ. Ð¢Ð²Ð¾Ñ€Ð±Ð¸Ñ‚Ðµ ÑÐ° Ð½Ð° Ñ…ÑƒÐ´Ð¾Ð¶Ð½Ð¸Ñ†Ð¸ Ð¾Ñ‚ 70-Ñ‚Ðµ Ð³Ð¾Ð´Ð¸Ð½Ð¸ Ð½Ð° Ð¼Ð¸Ð½Ð°Ð»Ð¸Ñ Ð²ÐµÐº Ð™Ð¾Ð°Ð½ Ð›ÐµÐ²Ð¸ÐµÐ², Ð•Ð½Ñ‡Ð¾ ÐŸÐ¸Ñ€Ð¾Ð½ÐºÐ¾Ð², Ð”Ð¾Ð±Ñ€Ð¸ Ð”Ð¾Ð±Ñ€ÐµÐ², Ð¥Ñ€Ð¸ÑÑ‚Ð¾ ÐÐµÐ¹ÐºÐ¾Ð² Ð¸ Ð´Ñ€. Ð¢ÐµÐ¼Ð°Ñ‚Ð° Ðµ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐµÐ½Ð° Ð² Ñ‚Ñ€Ð¸ ÑÐ°Ð¼Ð¾ÑÑ‚Ð¾ÑÑ‚ÐµÐ»Ð½Ð¸ Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸ Ñ†Ð¸ÐºÑŠÐ»Ð° â€“ Ñ€Ð¾Ð±ÑÑ‚Ð²Ð¾, Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ, Ð¾ÑÐ²Ð¾Ð±Ð¾Ð¶Ð´ÐµÐ½Ð¸Ðµ, Ð° ÐµÐºÑÐ¿Ñ€ÐµÑÐ¸Ð²Ð½Ð¸ÑÑ‚ ÑÑ‚Ð¸Ð» Ð½Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÑÑ‚Ð° Ð½Ð°Ð¿ÑŠÐ»Ð½Ð¾ Ð¾Ñ‚Ð³Ð¾Ð²Ð°Ñ€Ñ Ð½Ð° ÑÑŽÐ¶ÐµÑ‚Ð° Ð¸Ð¼. Ð˜Ð·Ð»Ð¾Ð¶Ð±Ð°Ñ‚Ð° â€ž140 Ð³. Ð¾Ñ‚ ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµâ€œ Ð¸ Ñ€Ð¸ÑÑƒÐ½ÐºÐ¸Ñ‚Ðµ Ð½Ð° ÑƒÑ‡ÐµÐ½Ð¸Ñ†Ð¸Ñ‚Ðµ Ð¼Ð¾Ð³Ð°Ñ‚ Ð´Ð° Ð±ÑŠÐ´Ð°Ñ‚ Ñ€Ð°Ð·Ð³Ð»ÐµÐ´Ð°Ð½Ð¸ Ð²ÑÐµÐºÐ¸ Ð´ÐµÐ½ Ð² Ð”Ð°Ð½Ð¾Ð²Ð¾ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ðµ.\r\nÐÐºÑ†ÐµÐ½Ñ‚ÑŠÑ‚ Ð½Ð° Ð²ÐµÑ‡ÐµÑ€Ñ‚Ð° Ð±ÐµÑˆÐµ ÑÑ€ÐµÑ‰Ð°Ñ‚Ð° Ñ Ð¿Ð¾Ñ‚Ð¾Ð¼Ñ†Ð¸ Ð½Ð° Ð¡Ð¿Ð°Ñ Ð“Ð¸Ð½Ð¾Ð². Ð—Ð°Ð»Ð°Ñ‚Ð° Ð±ÐµÑˆÐµ Ð¿Ñ€ÐµÐ¿ÑŠÐ»Ð½ÐµÐ½Ð° Ð¾Ñ‚ Ð·Ñ€Ð¸Ñ‚ÐµÐ»Ð¸, ÐºÐ¾Ð¸Ñ‚Ð¾ Ð¸ÑÐºÐ°Ñ…Ð° Ð´Ð° Ñ‡ÑƒÑÑ‚ Ð·Ð° Ð´ÐµÐ»Ð¾Ñ‚Ð¾ Ð½Ð° Ð³ÐµÑ€Ð¾Ñ. Ð˜Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾ Ðµ Ð´Ð° Ð¾Ñ‚Ð±ÐµÐ»ÐµÐ¶Ð¸Ð¼, Ñ‡Ðµ Ñ‡Ð°ÑÑ‚ Ð¾Ñ‚ Ð¿Ð¾Ñ‚Ð¾Ð¼Ñ†Ð¸Ñ‚Ðµ ÑÑŠÐ²ÑÐµÐ¼ ÑÐºÐ¾Ñ€Ð¾ ÑÐ° Ð½Ð°ÑƒÑ‡Ð¸Ð»Ð¸, Ñ‡Ðµ ÑÐ° Ñ‡Ð°ÑÑ‚ Ð¾Ñ‚ Ñ€Ð¾Ð´Ð¾ÑÐ»Ð¾Ð²Ð½Ð¾Ñ‚Ð¾ Ð´ÑŠÑ€Ð²Ð¾ Ð½Ð° Ð“Ð¸Ð½Ð¾Ð²Ð¸Ñ Ñ€Ð¾Ð´. Ð—Ð°Ð¿Ð¾Ð·Ð½Ð°Ñ…Ð° ÑÐµ Ð¸ Ð±Ð»Ð°Ð³Ð¾Ð´Ð°Ñ€Ð¸Ñ…Ð° Ð½Ð° Ð¼ÑƒÐ·ÐµÐ¹Ð½Ð¸Ñ‚Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð½Ð¸Ñ†Ð¸, ÐºÐ¾Ð¸Ñ‚Ð¾ Ð³Ð¸ ÑÑŠÐ±Ñ€Ð°Ñ…Ð°. ÐžÐ±ÐµÑ‰Ð°Ñ…Ð° ÑÑ€ÐµÑ‰Ð¸Ñ‚Ðµ Ð´Ð° ÑÑ‚Ð°Ð½Ð°Ñ‚ Ñ‚Ñ€Ð°Ð´Ð¸Ñ†Ð¸Ñ, Ð·Ð° Ð´Ð° Ð½Ðµ ÑÐµ Ð·Ð°Ð±Ñ€Ð°Ð²Ñ Ð¼Ð¸Ð½Ð°Ð»Ð¾Ñ‚Ð¾, Ð° Ð´Ð° Ð±ÑŠÐ´Ðµ Ð¿Ñ€ÐµÐ´Ð°Ð´ÐµÐ½Ð¾ Ð½Ð° Ð´ÐµÑ†Ð°Ñ‚Ð° Ð¸ Ð²Ð½ÑƒÑ†Ð¸Ñ‚Ðµ Ð¸Ð¼. Ð˜Ð·Ð²ÐµÑÑ‚Ð½Ð¸ÑÑ‚ Ð±ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸ Ð°ÐºÑ‚ÑŒÐ¾Ñ€ ÐšÐ°Ð»Ð¸Ð½ Ð¡ÑŠÑ€Ð¼ÐµÐ½Ð¾Ð² Ð¿Ð¾ Ð¼Ð°Ð¹Ñ‡Ð¸Ð½Ð° Ð»Ð¸Ð½Ð¸Ñ Ðµ Ð¾Ñ‚ Ñ€Ð¾Ð´Ð° Ð½Ð° Ð¡Ð¿Ð°Ñ Ð“Ð¸Ð½Ð¾Ð². Ð¡Ð¿Ð¾Ð´ÐµÐ»Ð¸, Ñ‡Ðµ Ð·Ð° Ð²Ñ‚Ð¾Ñ€Ð¸ Ð¿ÑŠÑ‚ Ðµ Ð² ÐŸÐµÑ€ÑƒÑ‰Ð¸Ñ†Ð°, Ð½Ð¾ ÑÐ»ÐµÐ´ Ð²ÑŠÐ»Ð½ÑƒÐ²Ð°Ñ‰Ð°Ñ‚Ð° ÑÑ€ÐµÑ‰Ð° Ñ Ñ€Ð¾Ð´Ð½Ð¸Ð½Ð¸Ñ‚Ðµ, Ð¾Ð±ÐµÑ‰Ð° Ð´Ð° Ð¸Ð´Ð²Ð° Ð¿Ð¾-Ñ‡ÐµÑÑ‚Ð¾ Ð¸ ÑÑŠÑ ÑÐ²Ð¾ÐµÑ‚Ð¾ ÑÐµÐ¼ÐµÐ¹ÑÑ‚Ð²Ð¾. ÐÐ° 9 Ð¼Ð°Ð¹ Ð¾Ñ‚ 15,00 Ñ‡. Ð² Ñ‡Ð¸Ñ‚Ð°Ð»Ð¸Ñ‰ÐµÑ‚Ð¾ Ñ‰Ðµ ÑÐµ ÑÑŠÑÑ‚Ð¾Ð¸ ÑÑ€ÐµÑ‰Ð° Ñ ÐšÐ°Ð»Ð¸Ð½ Ð¡ÑŠÑ€Ð¼ÐµÐ½Ð¾Ð², Ð½Ð° ÐºÐ¾ÑÑ‚Ð¾ Ð²ÑÐµÐºÐ¸ Ð¼Ð¾Ð¶Ðµ Ð´Ð° Ð¿Ð¾Ð»ÑƒÑ‡Ð¸ Ð¾Ñ‚Ð³Ð¾Ð²Ð¾Ñ€Ð¸ Ð½Ð° ÑÐ²Ð¾Ð¸Ñ‚Ðµ Ð²ÑŠÐ¿Ñ€Ð¾ÑÐ¸.\r\nÐÐ° 20 Ð°Ð¿Ñ€Ð¸Ð» Ð² ÐžÐ£ â€žÐŸÐµÑ‚ÑŠÑ€ Ð‘Ð¾Ð½ÐµÐ²â€œ Ð¿Ñ€Ð¾Ð²ÐµÐ´Ð¾Ñ…Ð° Ð¾Ð±Ñ‰Ð¾ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰Ð½Ð° Ð²Ð¸ÐºÑ‚Ð¾Ñ€Ð¸Ð½Ð°, Ð¿Ð¾ÑÐ²ÐµÑ‚ÐµÐ½Ð° Ð½Ð° 140-Ñ‚Ð° Ð³Ð¾Ð´Ð¸ÑˆÐ½Ð¸Ð½Ð° Ð¾Ñ‚ ÐÐ¿Ñ€Ð¸Ð»ÑÐºÐ¾Ñ‚Ð¾ Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ðµ Ð¸ Ð¸Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ð¸Ñ…Ð° Ð²ÑŠÑÑ‚Ð°Ð½Ð¸Ñ‡ÐµÑÐºÐ¾Ñ‚Ð¾ Ð·Ð½Ð°Ð¼Ðµ. ÐÐ°Ð¹ â€“ Ð´Ð¾Ð±Ñ€Ð¸Ñ‚Ðµ Ð¾Ñ‚Ð±Ð¾Ñ€Ð¸ Ñ‰Ðµ Ð±ÑŠÐ´Ð°Ñ‚ Ð½Ð°Ð³Ñ€Ð°Ð´ÐµÐ½Ð¸ Ð½Ð° Ð¿Ð°Ñ‚Ñ€Ð¾Ð½Ð½Ð¸Ñ Ð¿Ñ€Ð°Ð·Ð½Ð¸Ðº, ÐºÐ¾Ð¹Ñ‚Ð¾ Ðµ Ð´Ð½ÐµÑ. Ð¡ ÑˆÐµÑÑ‚Ð²Ð¸Ðµ Ð¾Ñ‚ ÑƒÑ‡Ð¸Ð»Ð¸Ñ‰ÐµÑ‚Ð¾, Ð²Ð¾Ð´ÐµÐ½Ð¸ Ð¾Ñ‚ Ð´ÑƒÑ…Ð¾Ð² Ð¾Ñ€ÐºÐµÑÑ‚ÑŠÑ€, ÑƒÑ‡ÐµÐ½Ð¸Ñ†Ð¸Ñ‚Ðµ Ñ‰Ðµ Ð¿Ð¾Ð´Ð½ÐµÑÐ°Ñ‚ Ð²ÐµÐ½ÐµÑ† Ð½Ð° Ð¿Ð°Ð¼ÐµÑ‚Ð½Ð¸ÐºÐ° Ð½Ð° ÐŸÐµÑ‚ÑŠÑ€ Ð‘Ð¾Ð½ÐµÐ² Ð¸ Ñ‰Ðµ Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²ÑÑ‚ Ð±Ð¾Ð³Ð°Ñ‚Ð° Ñ…ÑƒÐ´Ð¾Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð° Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð¾Ñ‚ 10,00 Ñ‡. Ð² ÑÐ°Ð»Ð¾Ð½Ð° Ð½Ð° Ñ‡Ð¸Ñ‚Ð°Ð»Ð¸Ñ‰Ðµ â€žÐŸÑ€Ð¾ÑÐ²ÐµÑ‚Ð°â€œ.', '13.May.2016');

-- --------------------------------------------------------

--
-- Table structure for table `projectimages`
--

CREATE TABLE `projectimages` (
  `id` int(11) NOT NULL,
  `img_id` int(11) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectimages`
--

INSERT INTO `projectimages` (`id`, `img_id`, `img`) VALUES
(6, 3, '7ea010e08a4460ad6950ca7bfbc0dc1f15a46dfa.jpg'),
(7, 4, '326b1b3b9a45c4b2a0f3aaff5693814df06a0d67.jpg'),
(8, 4, 'e56de60fbb1191fc0bac5d609307f815945832d7.jpg'),
(11, 1, 'b5d44754b1505f8ef260ca55e6481f14d2828046.jpg'),
(12, 8, 'dfd74603be9bd2328420bfc7d095ac3988aaa063.jpg'),
(13, 9, 'a7ece6d788a2bb44435c9f3919985397819445c6.jpg'),
(14, 10, '3fed786dd6759ed2ba732af1185a73cc96e50b07.jpg'),
(18, 11, '489312f64b70e979741b479b8a4b64880c56225f.jpg'),
(19, 11, 'b3f2ccae561f84cd4d9abcf27ec6c93c7053bac6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(65) NOT NULL,
  `userinfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`id`, `username`, `password`, `email`, `userinfo`) VALUES
(3, 'user', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'user@user.bg', 'some text'),
(13, 'user2', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'user@user.bg', 'texttext'),
(15, 'user3', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'asd@asd.sd', 'asasasasasa'),
(16, 'user44', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'asd@asd.sd', 'asdasd2'),
(17, 'Kalin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'asd@asd.sd', 'Hello123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `europrojects`
--
ALTER TABLE `europrojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landmarks`
--
ALTER TABLE `landmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landmarksimages`
--
ALTER TABLE `landmarksimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectimages`
--
ALTER TABLE `projectimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `europrojects`
--
ALTER TABLE `europrojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `landmarks`
--
ALTER TABLE `landmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `landmarksimages`
--
ALTER TABLE `landmarksimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `projectimages`
--
ALTER TABLE `projectimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
