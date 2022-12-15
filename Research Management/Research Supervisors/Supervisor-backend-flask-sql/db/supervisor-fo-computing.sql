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
-- Database: `fo_computing`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_computing`
--

CREATE TABLE `fo_computing` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_computing`
--

INSERT INTO `fo_computing` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
 ('1', 'Dr. Nadeem Akhtar', 'Associate Professor', 'Dept of Software Engineering', 'Faculty of Computing', 'nadeem.akhtar.phd@gmail.com'),
 ('2', 'Dr. Muhammad Nauman', 'Lecturer', 'Dept of Software Engineering', 'Faculty of Computing', 'nauman@iub.edu.pk'),
 ('3', 'Dr. Syed Rafaqat Hussain Shah Kazmi', 'Associate Professor', 'Dept of Software Engineering', 'Faculty of Computing', 'rafaqat.kazmi@iub.edu.pk'),
 ('4', 'Mr. Muhammad Talal', 'Lecturer', 'Dept of Software Engineering', 'Faculty of Computing', 'muhammad.talal@iub.edu.pk'),
 ('5', 'Mr. Gulraiz Javaid Joyia', 'Lecturer', 'Dept of Software Engineering', 'Faculty of Computing', 'gulraiz.javaid@iub.edu.pk'),
	('6', 'Ms. Zara Mansoor', 'Lecturer', 'Dept of Software Engineering', 'Faculty of Computing', 'zaramansoor36@gmail.com'),
	('7', 'Mrs. Sunnia Ikram', 'Lecturer', 'Dept of Software Engineering', 'Faculty of Computing', 'empty30@iub.edu.pk'),
	('56', 'Dr. Malik Daler Ali Awan', 'Lecturer', 'Dept of Software Engineering', 'Faculty of Computing', 'daler.ali@iub.edu.pk'),
	('8', 'Dr. Humera Arshad', 'Associate Professor', 'Dept of Computer Science', 'Faculty of Computing', 'humera.arshad@iub.edu.pk'),
	('9', 'Dr. Imran Sarwar Bajwa', 'Associate Professor', 'Dept of Computer Science', 'Faculty of Computing', 'imran.sarwar@iub.edu.pk'),
	('10', 'Dr. Saima Abdullah', 'Assistant Professor', 'Dept of Computer Science', 'Faculty of Computing', 'Saima.Abdullah@iub.edu.pk'),
	('11', 'Dr. Waheed Anwar', 'Assistant Professor (HEC Approved Supervisor)', 'Dept of Computer Science', 'Faculty of Computing', 'waheed@iub.edu.pk'),
	('12', 'Dr. Zaigham Mushtaq', 'Associate Professor', 'Dept of Computer Science', 'Faculty of Computing', 'zaigham.mushtaq@iub.edu.pk'),
	('13', 'Dr. Muhammad Faheem Mushtaq', 'Associate Professor', 'Dept of Artificial Intelligence', 'Faculty of Computing', 'faheem.mushtaq@iub.edu.pk'),
	('14', 'Dr. Muhammad Ateeq', 'Associate Professor', 'Dept of Artificial Intelligence', 'Faculty of Computing', 'Muhammad.Ateeq@iub.edu.pk'),
	('15', 'Dr. Ghulam Gilanie', 'Associate Professor', 'Dept of Artificial Intelligence', 'Faculty of Computing', 'ghulam.gilanie@iub.edu.pk'),
	('16', 'Dr. Shahzad Mumtaz', 'Associate Professor', 'Dept of Artificial Intelligence', 'Faculty of Computing', 'shahzad.mumtaz@iub.edu.pk');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_computing`
--
ALTER TABLE `fo_computing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_computing`
--
ALTER TABLE `fo_computing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
