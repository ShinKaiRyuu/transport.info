-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2012 at 09:58 PM
-- Server version: 5.5.25
-- PHP Version: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `transport.info`
--

-- --------------------------------------------------------

--
-- Table structure for table `busses`
--

CREATE TABLE IF NOT EXISTS `busses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4) NOT NULL,
  `start_point_id` int(10) unsigned DEFAULT NULL,
  `end_point_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`name`),
  KEY `start_point_id` (`start_point_id`,`end_point_id`),
  KEY `end_point_id` (`end_point_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `busses`
--

INSERT INTO `busses` (`id`, `name`, `start_point_id`, `end_point_id`) VALUES
(1, '123', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `busses_to_stop_points`
--

CREATE TABLE IF NOT EXISTS `busses_to_stop_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bus_id` int(10) unsigned NOT NULL,
  `stop_point_id` int(10) unsigned NOT NULL,
  `times` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_id` (`bus_id`,`stop_point_id`),
  KEY `stop_point_id` (`stop_point_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `busses_to_stop_points`
--

INSERT INTO `busses_to_stop_points` (`id`, `bus_id`, `stop_point_id`, `times`) VALUES
(5, 1, 1, '10:00; 11:00; 12:00'),
(6, 1, 2, '10:05; 11:05; 12:05'),
(7, 1, 3, '10:10; 11:10; 12:10'),
(8, 1, 4, '10:15; 11:15; 12:15'),
(9, 1, 5, '10:20; 11:20; 12:20'),
(10, 1, 6, '10:25; 11:25; 12:25'),
(11, 1, 7, '10:30; 11:30; 12:30'),
(12, 1, 8, '10:35; 11:35; 12:35'),
(13, 1, 9, '10:40; 11:40; 12:40'),
(14, 1, 10, '10:45; 11:45; 12:45'),
(15, 1, 11, '10:50; 11:50; 12:50'),
(16, 1, 12, '10:55; 11:55; 12:55'),
(17, 1, 13, '11:00; 12:00; 13:00'),
(18, 1, 14, '11:05; 12:05; 13:05'),
(19, 1, 15, '11:10; 12:10; 13:10'),
(20, 1, 16, '11:15; 12:15; 13:15');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`) VALUES
(1, 'Кузьмич С.В.'),
(2, 'Шинкарев Д.С.');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_to_busses`
--

CREATE TABLE IF NOT EXISTS `drivers_to_busses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(10) unsigned NOT NULL,
  `bus_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`,`bus_id`),
  KEY `bus_id` (`bus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `drivers_to_busses`
--

INSERT INTO `drivers_to_busses` (`id`, `driver_id`, `bus_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drivers_to_trains`
--

CREATE TABLE IF NOT EXISTS `drivers_to_trains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(10) unsigned NOT NULL,
  `trains_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`,`trains_id`),
  KEY `trains_id` (`trains_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `drivers_to_trolleybuses`
--

CREATE TABLE IF NOT EXISTS `drivers_to_trolleybuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(10) unsigned NOT NULL,
  `trolleybus_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`,`trolleybus_id`),
  KEY `trolleybus_id` (`trolleybus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `drivers_to_trolleybuses`
--

INSERT INTO `drivers_to_trolleybuses` (`id`, `driver_id`, `trolleybus_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stop_points`
--

CREATE TABLE IF NOT EXISTS `stop_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `stop_points`
--

INSERT INTO `stop_points` (`id`, `name`) VALUES
(3, 'АЗС'),
(23, 'Богдановича ул.'),
(7, 'Гашкевича ул.'),
(25, 'Горизонт ТД'),
(34, 'Грушевка ст.м.'),
(12, 'Денисовская ул.'),
(9, 'Камвольный к-т'),
(17, 'Карастояновой ул.'),
(19, 'Каховская ул.'),
(20, 'Киев к-тр'),
(24, 'Комаровский рынок'),
(26, 'Коммунистическая ул.'),
(22, 'Кропоткина ул.'),
(15, 'Ленинградская ул.'),
(35, 'Лермотова ДС'),
(13, 'Лесная ул.'),
(1, 'Лошица-2 ДС'),
(6, 'Лучины Я. ул.'),
(31, 'Музыкальный театр'),
(30, 'Мясникова ул.'),
(16, 'Независимости пл.'),
(28, 'Немига ст.м.'),
(27, 'Оперный театр'),
(18, 'Орловская ул.'),
(2, 'Прушинских ул.'),
(29, 'Романовская Слобода ул.'),
(11, 'Семенова ул.'),
(10, 'Соленчная ул.'),
(32, 'Станция диагностики'),
(4, 'Сырокомли'),
(33, 'Хмелевского ул.'),
(14, 'Червенский рынок'),
(8, 'Чижевских ул.'),
(21, 'Шевченко бульвар'),
(5, 'Школа 130');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE IF NOT EXISTS `trains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4) NOT NULL,
  `start_point_id` int(10) unsigned DEFAULT NULL,
  `end_point_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `start_point_id` (`start_point_id`,`end_point_id`),
  KEY `end_point_id` (`end_point_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trains_to_stop_points`
--

CREATE TABLE IF NOT EXISTS `trains_to_stop_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `train_id` int(10) unsigned NOT NULL,
  `stop_point_id` int(10) unsigned NOT NULL,
  `times` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `train_id` (`train_id`,`stop_point_id`),
  KEY `stop_point_id` (`stop_point_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trolleybuses`
--

CREATE TABLE IF NOT EXISTS `trolleybuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4) NOT NULL,
  `start_point_id` int(10) unsigned DEFAULT NULL,
  `end_point_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `start_point_id` (`start_point_id`,`end_point_id`),
  KEY `end_point_id` (`end_point_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `trolleybuses`
--

INSERT INTO `trolleybuses` (`id`, `name`, `start_point_id`, `end_point_id`) VALUES
(1, '12', 17, 35);

-- --------------------------------------------------------

--
-- Table structure for table `trolleybus_to_stop_points`
--

CREATE TABLE IF NOT EXISTS `trolleybus_to_stop_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trolleybus_id` int(10) unsigned NOT NULL,
  `stop_point_id` int(10) unsigned NOT NULL,
  `times` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trolleybus_id` (`trolleybus_id`,`stop_point_id`),
  KEY `stop_point_id` (`stop_point_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `trolleybus_to_stop_points`
--

INSERT INTO `trolleybus_to_stop_points` (`id`, `trolleybus_id`, `stop_point_id`, `times`) VALUES
(16, 1, 17, '10:00; 11:00; 12:00'),
(17, 1, 18, '10:05; 11:05; 12:05'),
(18, 1, 19, '10:10; 11:10; 12:10'),
(19, 1, 20, '10:15; 11:15; 12:15'),
(20, 1, 21, '10:20; 11:20; 12:20'),
(21, 1, 22, '10:25; 11:25; 12:25'),
(22, 1, 23, '10:30; 11:30; 12:30'),
(23, 1, 24, '10:35; 11:35; 12:35'),
(24, 1, 25, '10:40; 11:40; 12:40'),
(25, 1, 26, '10:45; 11:45; 12:45'),
(26, 1, 27, '10:50; 11:50; 12:50'),
(27, 1, 28, '10:55; 11:55; 12:55'),
(28, 1, 29, '11:00; 12:00; 13:00'),
(29, 1, 30, '11:05; 12:05; 13:05');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `busses`
--
ALTER TABLE `busses`
  ADD CONSTRAINT `busses_ibfk_1` FOREIGN KEY (`start_point_id`) REFERENCES `stop_points` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `busses_ibfk_2` FOREIGN KEY (`end_point_id`) REFERENCES `stop_points` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `busses_to_stop_points`
--
ALTER TABLE `busses_to_stop_points`
  ADD CONSTRAINT `busses_to_stop_points_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `busses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `busses_to_stop_points_ibfk_2` FOREIGN KEY (`stop_point_id`) REFERENCES `stop_points` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drivers_to_busses`
--
ALTER TABLE `drivers_to_busses`
  ADD CONSTRAINT `drivers_to_busses_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `drivers_to_busses_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `busses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drivers_to_trains`
--
ALTER TABLE `drivers_to_trains`
  ADD CONSTRAINT `drivers_to_trains_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `drivers_to_trains_ibfk_2` FOREIGN KEY (`trains_id`) REFERENCES `trains` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drivers_to_trolleybuses`
--
ALTER TABLE `drivers_to_trolleybuses`
  ADD CONSTRAINT `drivers_to_trolleybuses_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `drivers_to_trolleybuses_ibfk_2` FOREIGN KEY (`trolleybus_id`) REFERENCES `trolleybuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `trains_ibfk_1` FOREIGN KEY (`start_point_id`) REFERENCES `stop_points` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trains_ibfk_2` FOREIGN KEY (`end_point_id`) REFERENCES `stop_points` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trains_to_stop_points`
--
ALTER TABLE `trains_to_stop_points`
  ADD CONSTRAINT `trains_to_stop_points_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trains_to_stop_points_ibfk_2` FOREIGN KEY (`stop_point_id`) REFERENCES `stop_points` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trolleybuses`
--
ALTER TABLE `trolleybuses`
  ADD CONSTRAINT `trolleybuses_ibfk_1` FOREIGN KEY (`start_point_id`) REFERENCES `stop_points` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `trolleybuses_ibfk_2` FOREIGN KEY (`end_point_id`) REFERENCES `stop_points` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `trolleybus_to_stop_points`
--
ALTER TABLE `trolleybus_to_stop_points`
  ADD CONSTRAINT `trolleybus_to_stop_points_ibfk_1` FOREIGN KEY (`stop_point_id`) REFERENCES `stop_points` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trolleybus_to_stop_points_ibfk_2` FOREIGN KEY (`trolleybus_id`) REFERENCES `trolleybuses` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
