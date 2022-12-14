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
-- Database: `fo_agri`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_agri`
--

CREATE TABLE `fo_agri` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_agri`
--

INSERT INTO `fo_agri` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
(101, 'Dr. Abubakar Dar', 'Associate Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'abubakar.dar@iub.edu.pk'),
(102, 'Dr. Muhammad Ameen', 'Assistant Professor', 'Dept of Food Sciences', 'Faculty of Agriculture and Environment', 'muhammad.ameen@iub.edu.pk'),
(103, 'Dr. Maqshoof Ahmad', 'Associate Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'maqshoof_ahmad@yahoo.com'),
(104, 'Mr. Muhammad Talal', 'Lecturer', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'muhammad.talal@iub.edu.pk'),
(105, 'Dr. Humera Arshad', 'Associate Professor', 'Dept of Food Sciences', 'Faculty of Agriculture and Environment', 'humera.arshad@iub.edu.pk'),
(106, 'Dr. Imran Sarwar Bajwa', 'Associate Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'imran.sarwar@iub.edu.pk'),
(107, 'Dr. Saima Abdullah', 'Assistant Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'Saima.Abdullah@iub.edu.pk'),
(108, 'Dr. Waheed Anwar', 'Assistant Professor (HEC Approved Supervisor)', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'waheed@iub.edu.pk'),
(109, 'Dr. Zaigham Mushtaq', 'Associate Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'zaigham.mushtaq@iub.edu.pk'),
(110, 'Dr. Muhammad Faheem Mushtaq', 'Associate Professor', 'Dept of Food Sciences', 'Faculty of Agriculture and Environment', 'faheem.mushtaq@iub.edu.pk'),
(111, 'Dr. Muhammad Ateeq', 'Associate Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'Muhammad.Ateeq@iub.edu.pk'),
(112, 'Dr. Ghulam Gilanie', 'Associate Professor', 'Dept of Soil Sciences', 'Faculty of Agriculture and Environment', 'ghulam.gilanie@iub.edu.pk'),
(113, 'Dr. Shahzad Mumtaz', 'Associate Professor', 'Dept of Food Sciences', 'Faculty of Agriculture and Environment', 'shahzad.mumtaz@iub.edu.pk');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_agri`
--
ALTER TABLE `fo_agri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_agri`
--
ALTER TABLE `fo_agri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
