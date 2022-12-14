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
-- Database: `fo_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_management`
--

CREATE TABLE `fo_management` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_management`
--

INSERT INTO `fo_management` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
('1', 'Prof. Dr. Jawad Iqbal', 'Professor/Director (SBMAS)', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'jawad.iqbal@iub.edu.pk'),
	('2', 'Dr. Hassan Danial Aslam', 'Assistant Professor / In-Charge', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'hassan.danial@iub.edu.pk'),
	('3', 'Mr. Abdul Mannan Khan', 'Assistant Professor / In-Charge', 'BBA', 'Faculty of Management Science', '	mannan.khan@iub.edu.pk'),
	('4', 'Dr.  Aslam', 'Assistant Professor / In-Charge', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'hassan.d@iub.edu.pk'),
	('5', 'Dr. Danial Aslam', 'Assistant Professor / In-Charge', 'BBA', 'Faculty of Management Science', 'danial@iub.edu.pk'),
	('6', 'Dr. Asjad Amin', 'Associate Professor', 'BBA', 'Faculty of Management Science', '	asjad.amin@iub.edu.pk'),
	('7', 'Dr. Khan Bahadar Khattak', 'Associate Professor', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'Kb.khattak@iub.edu.pk'),
	('8', 'Engr. Syed Hafiz', 'Lecturer', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'Engr.rehman@iub.edu.pk'),
	('9', 'Dr. Muhammad Amjad', 'Professor', 'BBA', 'Faculty of Management Science', '	muhammad.amjad@iub.edu.pk'),
	('10', 'Dr. Muhammad Amjad', 'Professor', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'muhammad.amjad@iub.edu.pk'),
	('11', 'Dr. Engr. M. Rizwan Anjum', 'Professor', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'engr.rizwan@iub.edu.pk'),
	('12', 'Engr. Syed Hafiz', 'Lecturer', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'Engr.rehman@iub.edu.pk'),
	('13', 'Engr. Dr. M. Akbar Malik', 'Lecturer', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'm.akbarmalik@iub.edu.pk'),
	('14', 'Engr. Muhammad Shahid', 'Associate Professor', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'muhammad.shahid@iub.edu.pk'),
	('15', 'Engr. Safeer Ahmad Zaheer', 'Lecturer', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'safeer.ahmad@iub.edu.pk'),
	('16', 'Dr. Engr. Muhammad Ali Qureshi', 'Associate Professor/Chairman', 'Department of Entrepreneurship and Innovation', 'Faculty of Management Science', 'ali.qureshi@iub.edu.pk'),
	('17', 'Dr. Asjad Amin', 'Associate Professor', 'BBA', 'Faculty of Management Science', 'asjad.amin@iub.edu.pk'),
	('18', 'Dr. Khan Bahadar Khattak', 'Associate Professor', 'BBA', 'Faculty of Management Science', 'Kb.khattak@iub.edu.pk');
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_management`
--
ALTER TABLE `fo_management`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_management`
--
ALTER TABLE `fo_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
