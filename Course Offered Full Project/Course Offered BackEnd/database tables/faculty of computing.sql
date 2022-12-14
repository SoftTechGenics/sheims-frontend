-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 05:51 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Computing`
--

-- --------------------------------------------------------

--
-- Table structure for table `Computing`
--

CREATE TABLE `Computing` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Computing`
--

INSERT INTO `Computing` (`id`, `program`) VALUES
(1, 'BS Computer Science'),
(2, 'BS Information System'),
(3, 'BS Digital Media'),
(4, 'BS Information Technology'),
(5, 'BS Software Engineering'),
(6,' BS Atificial Intelligence'),
(7, 'BS Information Securitye'),
(8, 'BS Data Science'),
(9, 'BS Statistics');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `Computing`
--
ALTER TABLE `Computing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Computing`
--
ALTER TABLE `Computing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
