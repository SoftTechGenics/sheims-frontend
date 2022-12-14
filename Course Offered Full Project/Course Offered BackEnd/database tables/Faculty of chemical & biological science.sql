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
-- Database: `Fo_chemical_biological_science`
--

-- --------------------------------------------------------

--
-- Table structure for table `Fo_chemical_biological_science`
--

CREATE TABLE `Fo_chemical_biological_science` (
  `id` int(11) NOT NULL,
  `program` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fo_chemical_biological_science`
--

INSERT INTO `Fo_chemical_biological_science` (`id`, `program`) VALUES
(1, 'BS Botony'),
(2, 'BS chemistry'),
(3, 'BS zology'),
(4, 'BS biochemistry'),
(5, 'BS Biotechnology'),
(6,'BS Bioinformatics');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `Fo_chemical_biological_science`
--
ALTER TABLE `Fo_chemical_biological_science`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Fo_chemical_biological_science`
--
ALTER TABLE `Fo_chemical_biological_science`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
