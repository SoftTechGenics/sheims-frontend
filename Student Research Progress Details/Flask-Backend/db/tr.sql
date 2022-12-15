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
-- Table structure for table `student_progress_details`
--

CREATE TABLE `student_progress_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `lastsubmittedproject` varchar(255) NOT NULL,
  `lastsubmitteddate` varchar(255) NOT NULL,
  `overallprojectstatus` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_progress_details`
--

INSERT INTO `student_progress_details` (`id`, `name`, `email`, `registration`,`supervisor`,`lastsubmittedproject`,`lastsubmitteddate`,`overallprojectstatus`) VALUES
(1,'Usama Shamshiri','usamashamshiri@gmail.com','F20BSEEN1E02022','Junaid Ajmal','Continuous Mathematics','05/11/2021','Aproximately completed');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_progress_details`
--
ALTER TABLE `student_progress_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_progress_details`
--
ALTER TABLE `student_progress_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;