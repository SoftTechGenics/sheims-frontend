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
-- Database: `fo_socialscience`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_socialscience`
--

CREATE TABLE `fo_socialscience` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_socialscience`
--

INSERT INTO `fo_socialscience` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
('1', 'Prof. Dr. Muhammad Saleem', 'Professor/Chairman', 'Department of Applied Psychology', 'Faculty of Social Science ', 'masood.nadeem@iub.edu.pk'),
	('2', 'Dr. Masood Nadeem', 'Associate Professor', 'Department of Applied Psychology', 'Faculty of Social Science ', 'muhammad.shahid@iub.edu.pk'),
	('3', 'Dr. Ambreen Anjum', 'Assistant Professor', 'Department of Applied Psychology', 'Faculty of Social Science ', 'aambreenaanjum@gmail.comk'),
	('4', 'Ms. Ayesha Batool', 'Lecturer', 'Department of Applied Psychology', 'Faculty of Social Science ', '	Ayeshaabatool40@iub.edu.pk'),
	('5', 'Dr.  Muhammad Ali Qureshi', 'Associate Professor/Chairman', 'Department of Public Administration', 'Faculty of Social Science ', 'ali.qureshi@iub.edu.pk'),
	('6', 'Dr. Asjad Amin', 'Associate Professor', 'Department of Public Administration', 'Faculty of Social Science ', 'asjad.amin@iub.edu.pk'),
	('7', 'Dr. Khan Bahadar Khattak', 'Associate Professor', 'Department of Public Administration', 'Faculty of Social Science ', '	Kb.khattak@iub.edu.pk'),
	('8', 'Engr. Syed Hafiz', 'Lecturer', 'Department of Public Administration', 'Faculty of Social Science ', 'Engr.rehman@iub.edu.pk'),
	('9', 'Dr. Muhammad Amjad', 'Professor', 'Department of Electronic Engineering', 'Faculty of Engineering', 'muhammad.amjad@iub.edu.pk'),
	('10', 'Dr. Abdul Wajid Khan', 'Professor', 'Department of Media Studies', 'Faculty of Social Science ', 'muhammad.amjad@iub.edu.pk'),
	('11', 'Dr.  M. Rizwan Anjum', 'lecturer', 'Department of Media Studies', 'Faculty of Social Science ', 'engr.rizwan@iub.edu.pk'),
	('12', ' Syed Hafiz', 'Lecturer', 'Department of Media Studies', 'Faculty of Social Science ', 'Engr.rehman@iub.edu.pk'),
	('13', 'Engr. Dr. M. Akbar Malik', 'Lecturer', 'Department of Media Studies', 'Faculty of Social Science ', 'm.akbarmalik@iub.edu.pk'),
	('14', ' Muhammad Shahid', 'Associate Professor', 'Department of Media Studies', 'Faculty of Social Science ', 'muhammad.shahid@iub.edu.pk'),
	('15', ' Safeer Ahmad Zaheer', 'Lecturer', 'Department of Media Studies', 'Faculty of Social Science ', 'safeer.ahmad@iub.edu.pk'),
	('16', 'Dr.  Muhammad Ali Qureshi', 'Associate Professor/Chairman', 'Department of Media Studies', 'Faculty of Social Science ', 'ali.qureshi@iub.edu.pk'),
	('17', 'Dr. Asjad Amin', 'Associate Professor', 'Department of Media Studies', 'Faculty of Social Science ', 'asjad.amin@iub.edu.pk'),
	('18', 'Dr. Khan Bahadar Khattak', 'Associate Professor', 'Department of Media Studies', 'Faculty of Social Science ', 'Kb.khattak@iub.edu.pk');
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_socialscience`
--
ALTER TABLE `fo_socialscience`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_socialscience`
--
ALTER TABLE `fo_socialscience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
