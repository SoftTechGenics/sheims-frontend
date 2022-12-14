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
-- Database: `fo _Education`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo _Education`
--

CREATE TABLE `fo _Education` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo _Education`
--

INSERT INTO `fo _Education` (`id`, `program`) VALUES
(1, 'BS Education'),
(2, 'BS Secondary Education'),
(3, 'BS Elementary Education'),
(4, 'BS Eudcational leadership & Management'),
(5, 'BS physical Education and sports science'),
(6,'BS Special Education'),
(7, 'BS Eudcational planning & Management'),
(8,'BS English Language & Teaching');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `fo _Education`
--
ALTER TABLE `fo _Education`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo _Education`
--
ALTER TABLE `fo _Education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
