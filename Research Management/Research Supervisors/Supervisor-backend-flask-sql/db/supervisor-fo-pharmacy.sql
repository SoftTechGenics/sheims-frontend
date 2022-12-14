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
-- Database: `fo_pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo_pharmacy`
--

CREATE TABLE `fo_pharmacy` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo_pharmacy`
--

INSERT INTO `fo_pharmacy` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
('1', 'Dr. Fahad Pervaiz', 'Associate Professor', 'Dept of  Pharmacy', 'Faculty of Pharmacy', 'fahad.pervaiz@iub.edu.pk'),
('2', 'Dr. Muhammad Naeem Amir', 'Associate Professor', 'Dept of  Pharmacy', 'Faculty of Pharmacy', 'Dr.MuhammadNaeemAmir@iub.edu.pk'),
('3', 'Mr. Rizwan Ahmad', 'Assistant Professor', 'Dept of  Pharmacy', 'Faculty of Pharmacy', 'rizwan.ahmad@iub.edu.pk'),
('4', 'Mr.Muhammad Qamar-uz-Zaman', 'Assistant Professor', 'Dept of  Pharmacy', 'Faculty of Pharmacy', 'qamar.uz.zaman@iub.edu.pk'),
('5', 'M. Younis Khan', 'Assistant Professor', 'Dept of  Pharmacy', 'Faculty of Pharmacy', 'Younis.Khan@iub.edu.pk'),
('6', 'Prof. Dr. Saeed Ahmad', 'Professor / Chairman', 'Department of Pharmaceutical Chemistry', 'Faculty of Pharmacy', 'Saeed.Ahmad@iub.edu.pk'),
('7', 'Prof. Dr. Qaiser Jabeen', 'Professor / Chairman', 'Department of Pharmacology', 'Faculty of Pharmacy', 'qaiser.jabeen@iub.edu.pk'),
('8', 'Prof. Dr. Muhammad Atif', 'Professor / Chairman', 'Department of Pharmacy Practice', 'Faculty of Pharmacy', 'Muhammad.Atif@iub.edu.pk');
-- Indexes for dumped tables
--

--
-- Indexes for table `fo_pharmacy`
--
ALTER TABLE `fo_pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo_pharmacy`
--
ALTER TABLE `fo_pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
