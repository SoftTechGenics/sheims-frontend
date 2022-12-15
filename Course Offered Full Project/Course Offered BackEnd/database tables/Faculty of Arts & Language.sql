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
-- Database: `Fo_Arts_Language`
--

-- --------------------------------------------------------

--
-- Table structure for table `Fo_Arts_Language`
--

CREATE TABLE `Fo_Arts_Language` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fo_Arts_Language`
--

INSERT INTO `Fo_Arts_Language` (`id`, `program`) VALUES
(1, 'BS English Langauge & Literature'),
(2, 'BS English Langauge & Linguistics'),
(3,' BS History'),
(4, 'BS Archeology'),
(5, 'BS Pakistan Studies'),
(6, 'BS Persian'),
(7, 'BS Urdu'),
(8, 'BS Iqbal Studies');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `Fo_Arts_Language`
--
ALTER TABLE `Fo_Arts_Language`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Fo_Arts_Language`
--
ALTER TABLE `Fo_Arts_Language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
