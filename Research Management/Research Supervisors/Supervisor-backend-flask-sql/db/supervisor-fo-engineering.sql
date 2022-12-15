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
-- Database: `fo_engineering`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_engineering`
--

CREATE TABLE `fo_engineering` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_engineering`
--

INSERT INTO `fo_engineering` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
('1', 'Engr. Dr. Haroon Rashid', 'Associate Professor', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'haroon9a@gmail.com'),
	('2', 'Engr. Muhammad Shahid', 'Associate Professor', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'muhammad.shahid@iub.edu.pk'),
	('3', 'Engr. Dr. M. Akbar Malik', 'Lecturer', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'm.akbarmalik@iub.edu.pk'),
	('4', 'Engr. Safeer Ahmad Zaheer', 'Lecturer', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'safeer.ahmad@iub.edu.pk'),
	('5', 'Dr. Engr. Muhammad Ali Qureshi', 'Associate Professor/Chairman', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', '	ali.qureshi@iub.edu.pk'),
	('6', 'Dr. Asjad Amin', 'Associate Professor', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', '	asjad.amin@iub.edu.pk'),
	('7', 'Dr. Khan Bahadar Khattak', 'Associate Professor', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', 'Kb.khattak@iub.edu.pk'),
	('8', 'Engr. Syed Hafiz', 'Lecturer', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', 'Engr.rehman@iub.edu.pk'),
	('9', 'Dr. Muhammad Amjad', 'Professor', 'Department of Electronic Engineering', 'Faculty of Engineering', '	muhammad.amjad@iub.edu.pk'),
	('10', 'Dr. Muhammad Amjad', 'Professor', 'Department of Electronic Engineering', 'Faculty of Engineering', '	muhammad.amjad@iub.edu.pk'),
	('11', 'Dr. Engr. M. Rizwan Anjum', 'Professor', 'Department of Electronic Engineering', 'Faculty of Engineering', 'engr.rizwan@iub.edu.pk'),
	('12', 'Engr. Syed Hafiz', 'Lecturer', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', 'Engr.rehman@iub.edu.pk'),
	('13', 'Engr. Dr. M. Akbar Malik', 'Lecturer', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'm.akbarmalik@iub.edu.pk'),
	('14', 'Engr. Muhammad Shahid', 'Associate Professor', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'muhammad.shahid@iub.edu.pk'),
	('15', 'Engr. Safeer Ahmad Zaheer', 'Lecturer', 'Dept of  Civil Engineering', 'Faculty of Engineering', 'safeer.ahmad@iub.edu.pk'),
	('16', 'Dr. Engr. Muhammad Ali Qureshi', 'Associate Professor/Chairman', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', '	ali.qureshi@iub.edu.pk'),
	('17', 'Dr. Asjad Amin', 'Associate Professor', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', 'asjad.amin@iub.edu.pk'),
	('18', 'Dr. Khan Bahadar Khattak', 'Associate Professor', 'Dept of Information and Communication Engineering', 'Faculty of Engineering', 'Kb.khattak@iub.edu.pk');
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_engineering`
--
ALTER TABLE `fo_engineering`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_engineering`
--
ALTER TABLE `fo_engineering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
