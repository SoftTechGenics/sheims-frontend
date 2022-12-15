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
-- Database: `fo-animal-science`
--

-- --------------------------------------------------------

--
-- Table structure for table `fo-animal-science`
--

CREATE TABLE `fo-animal-science` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
    `faculty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fo-animal-science`
--

INSERT INTO `fo-animal-science` (`id`, `supervisor_name`, `role`, `department`,`faculty`,`email`) VALUES
(201, 'Prof. Dr. Abdul Qayyum', 'Professor/Chairman', 'Department of Clinical Medicine and Surgery', ' Faculty of Veterinary and Animal Sciences', 'clinicalmedicinesurgery@iub.edu.pk'),
(202, 'Dr. Khalid Mehmood', 'Assistant Professor', 'Department of Clinical Medicine and Surgery', ' Faculty of Veterinary and Animal Sciences', 'kalid@iub.edu.pk'),
(203, 'Dr. Altaf', 'Associate Professor', 'Department of Clinical Medicine and Surgery', ' Faculty of Veterinary and Animal Sciences', 'altaf@iub.edu.pk'),
(204, 'Mr. Sadaqat Ali', 'Lecturer', 'Department of Clinical Medicine and Surgery', ' Faculty of Veterinary and Animal Sciences', 'sadaqat.ali@iub.edu.pk'),
(205, 'Mr. Gulraiz Javaid Joyia', 'Lecturer', 'Department of Clinical Medicine and Surgery', ' Faculty of Veterinary and Animal Sciences', 'gulraiz.javaid@iub.edu.pk'),
(206, 'Dr Imran ', 'Lecturer', 'Department of Animal Nutrition', ' Faculty of Veterinary and Animal Sciences', 'imran36@gmail.com'),
(207, 'Dr Rana Muhammad bilal', 'Associate  Professor', 'Department of Animal Nutrition', ' Faculty of Veterinary and Animal Sciences', 'rana30@iub.edu.pk'),
(208, 'Muhammad Yousuf', 'Associate  Professor', 'Department of Animal Nutrition', ' Faculty of Veterinary and Animal Sciences', 'yousuf@iub.edu.pk'),
(209, 'Saima Liaquat', 'Lecturer', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'saima.liaqat@iub.edu.pk'),
(210, 'Dr. Abdul Ghayas', 'Associate Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'ghayas@iub.edu.pk'),
(211, 'Dr. shakeel', 'Assistant Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'shakeel.Abdullah@iub.edu.pk'),
(212, 'Dr. Waheed Anwar', 'Assistant Professor ', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', '	waheed@iub.edu.pk'),
(213, 'Dr. Zaigham Mushtaq', 'Associate Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'zaigham.mushtaq@iub.edu.pk'),
(214, 'Dr. Muhammad Faheem Mushtaq', 'Associate Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'faheem.mushtaq@iub.edu.pk'),
(215, 'Dr. Muhammad Ateeq', 'Associate Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'Muhammad.Ateeq@iub.edu.pk'),
(216, 'Dr. Ghulam Gilanie', 'Associate Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'ghulam.gilanie@iub.edu.pk'),
(217, 'Dr. Shahzad Mumtaz', 'Associate Professor', 'Department of Poultry Science', ' Faculty of Veterinary and Animal Sciences', 'shahzad.mumtaz@iub.edu.pk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fo-animal-science`
--
ALTER TABLE `fo-animal-science`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fo-animal-science`
--
ALTER TABLE `fo-animal-science`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
