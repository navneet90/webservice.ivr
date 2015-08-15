-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2015 at 07:32 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ivrdb`
--
CREATE DATABASE IF NOT EXISTS `ivrdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ivrdb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `Service_provider` varchar(45) NOT NULL,
  `phone_model` varchar(45) NOT NULL,
  `favorites` enum('A','B','C') NOT NULL DEFAULT 'A',
  `number_of_calls` int(45) NOT NULL,
  `number_of_times` int(45) NOT NULL,
  `number_of_uninstalls` int(45) NOT NULL,
  `number_of_active_users` int(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email_address`, `Service_provider`, `phone_model`, `favorites`, `number_of_calls`, `number_of_times`, `number_of_uninstalls`, `number_of_active_users`) VALUES
(1, 'Navneet Upadhyuaya', '97-Anand vihar, Modinagar', 'navneet90.rock@gmail.com', 'Tata Docomo', 'X292i', 'A', 56, 112, 7, 14),
(2, 'Jitin Khemwal', 'Merrut', 'jitin.pc@gmail.com', 'Airtel', 'Q0901', 'B', 4, 54, 12, 99);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
