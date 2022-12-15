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
-- Table structure for table `semester_2`
--

CREATE TABLE `semester_2` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `project_overview` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `submit_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_2`
--

INSERT INTO `semester_2` (`id`, `project`,`status`, `project_overview`, `due_date`,`submit_date`) VALUES
(72876,
'Network Algorithms',
'Not Started',
'A computational learning system that uses a network of functions to understand and translate a data input of one form into a desired output, usually in another form',
'Dec 05,2021',
'Jan 15,2022'),
(72877,
'Interaction Design',
'Not Started',
'Interaction Design is the creation of a dialogue between a person and a product, system, or service',
'Jan 10,2022',
'Feb 24,2022'),
(72878,
'Information Systems Applications',
'Completed',
'Information system applications allow rapid data sharing on a global scale',
'Feb 26,2022',
'Mar 20,2022'),
(72879,
'Software Creation and Management',
'Completed',
'Software project management is an art and science of planning and leading software projects',
'Mar 25,2022',
'May 18,2022');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `semester_2`
--
ALTER TABLE `semester_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `semester_2`
--
ALTER TABLE `semester_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;