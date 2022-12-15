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
-- Database: `Fo_Social_Sciences`
--

-- --------------------------------------------------------

--
-- Table structure for table `Fo_Social_Sciences`
--

CREATE TABLE `Fo_Social_Sciences` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fo_Social_Sciences`
--

INSERT INTO `Fo_Social_Sciences` (`id`, `program`) VALUES
(1, 'BS Applied Psychology'),
(2, 'BS Economics'),
(3, 'BS Buisness Economics'),
(4, 'BS Economics & Finanace'),
(5, 'BS Development Studies'),
(6,'BS International Relations'),
(7, 'BS Defence & Deplomatic Studies'),
(8,' BS Information Management'),
(9, 'BS Mass Communication'),
(10, 'BS Political Science'),
(11, 'BS Politics & Parlimentary Studies'),
(12, 'BS Gender Studies'),
(13, 'BS Public Policy & Governance'),
(14, 'BS Public Adminstration'),
(15, 'BS Social Work'),
(16, 'BS Sociology'),
(17, 'BS Anthropology');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `Fo_Social_Sciences`
--
ALTER TABLE `Fo_Social_Sciences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Fo_Social_Sciences`
--
ALTER TABLE `Fo_Social_Sciences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
