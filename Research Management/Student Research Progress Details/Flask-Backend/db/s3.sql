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
-- Table structure for table `semester_3`
--

CREATE TABLE `semester_3` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `project_overview` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `submit_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_3`
--

INSERT INTO `semester_3` (`id`, `project`,`status`, `project_overview`, `due_date`,`submit_date`) VALUES
(72880,
'Network Properties',
'Completed',
'Network properties. Often, networks have certain attributes that can be calculated to analyze the properties & characteristics of the network',
'Jun 07,2022',
'Jul 17,2022'),
(72881,
'Security Services',
'Completed',
'A capability that supports one, or many, of the security goals',
'Aug 10,2022',
'Sep 21,2022'),
(72882,
'Computer Graphics',
'Completed',
'Computer graphics deals with generating images with the aid of computers',
'Sep 26,2022',
'Oct 19,2022'),
(72883,
'Operations Research',
'Not Started',
'Operations research, often shortened to the initialism OR, is a discipline that deals with the development and application of analytical methods to improve decision-making',
'Oct 24,2022',
'Dec 17,2022');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `semester_3`
--
ALTER TABLE `semester_3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `semester_3`
--
ALTER TABLE `semester_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;