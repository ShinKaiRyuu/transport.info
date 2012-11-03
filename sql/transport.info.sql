-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2012 at 02:45 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
