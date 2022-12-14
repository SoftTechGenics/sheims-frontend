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
-- Database: `fo_veterinary_animal_sciences`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_veterinary_animal_sciences`
--

CREATE TABLE `fo_veterinary_animal_sciences` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_veterinary_animal_sciences`
--

INSERT INTO `fo_veterinary_animal_sciences` (`id`, `program`) VALUES
(1, 'BS Animal science'),
(2, 'livestock Assistant Diploma'),
(3, 'BS Applied Microbiology'),
(4, 'BS Physiology science'),
(5, 'BS Poultry science');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_veterinary_animal_sciences`
--
ALTER TABLE `fo_veterinary_animal_sciences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_veterinary_animal_sciences`
--
ALTER TABLE `fo_veterinary_animal_sciences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
