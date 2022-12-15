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
-- Database: `student_progress_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `semester_1`
--

CREATE TABLE `semester_1` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `project_overview` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `submit_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_1`
--

INSERT INTO `semester_1` (`id`, `project`,`status`, `project_overview`, `due_date`,`submit_date`) VALUES
(72872,
'Quantum Theory',
'Completed',
'Quantum theory is the theoretical basis of modern physics that explains the nature and behavior of matter and energy on the atomic and subatomic level',
'Aug 25,2021',
'Nov 25,2021'),
(72873,
'Security Services',
'Not Started',
'A capability that supports one, or many, of the security goals',
'Jul 14,2021',
'Sep 14,2021'),
(72874,
'Robustness',
'Completed',
'The quality of being strong, and healthy or unlikely to break or fail',
'Sep 05,2021',
'Oct 29,2021'),
(72875,
'Information Theory',
'Completed',
'Information theory is the scientific study of the quantification, storage, and communication of information',
'Oct 10,2021',
'Nov 16,2021');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `semester_1`
--
ALTER TABLE `semester_1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `semester_1`
--
ALTER TABLE `semester_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;