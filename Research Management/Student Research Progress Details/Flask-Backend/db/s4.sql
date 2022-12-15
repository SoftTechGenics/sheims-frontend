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
-- Table structure for table `semester_4`
--

CREATE TABLE `semester_4` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `project_overview` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `submit_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_4`
--

INSERT INTO `semester_4` (`id`, `project`,`status`, `project_overview`, `due_date`,`submit_date`) VALUES
(72884,
'Database and Storage Security',
'Completed',
'Database security refers to the range of tools, controls, and measures designed to establish and preserve database confidentiality, integrity, and availability',
'Dec 27,2022',
'Jan 31,2023'),
(72885,
'Architecture',
'Started',
'In computer engineering, computer architecture is a description of the structure of a computer system made from component parts',
'Feb 04,2023',
'Mar 22,2023'),
(72886,
'Enterprise Computing',
'Not Started',
'Enterprise Computing refers to business-oriented information technology that is critical to a company`s daily operations',
'Mar 28,2023',
'April 17,2023'),
(72887,
'Cryptography',
'Not Started',
'Cryptography, or cryptology, is the practice and study of techniques for secure communication in the presence of adversarial behavior',
'Apr 29,2023',
'May 30,2023');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `semester_4`
--
ALTER TABLE `semester_4`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `semester_4`
--
ALTER TABLE `semester_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;