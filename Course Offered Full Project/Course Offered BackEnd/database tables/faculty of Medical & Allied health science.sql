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
-- Database: `fo_Medical-Allied_health_science`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_Medical-Allied_health_science`
--

CREATE TABLE `fo_Medical-Allied_health_science` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_Medical-Allied_health_science`
--

INSERT INTO `fo_Medical-Allied_health_science` (`id`, `program`) VALUES
(1, 'BS human Nutritions & Dietetics'),
(2, 'Doctor of physical therapy'),
(3, 'BS Medical labortary Technology'),
(4, 'BS Forensic Science'),
(5, 'BS Public Health'),
(6,'CHPE');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_Medical-Allied_health_science`
--
ALTER TABLE `fo_Medical-Allied_health_science`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_Medical-Allied_health_science`
--
ALTER TABLE `fo_Medical-Allied_health_science`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
