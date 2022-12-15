-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 05:51 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `teacher_allocation`
--
-- --------------------------------------------------------
--
-- Table structure for table `teacher_allocation`
--
CREATE TABLE `teacher_allocation` (
  `id` int(11) NOT NULL,
  `teaher_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = latin1;

--
-- Dumping data for table `teacher_allocation`
--
 INSERT INTO `teacher_allocation` ( `id`, `teaher_id`, `name`, `faculty` )VALUES
( 1,  '3640318', 'Dr Bilal Muhammad', 'Computing' ),
( 2,  '3640319', 'Dr Dur-e-Shahwar', 'Computing' ),
( 3,  '3640310', 'Dr Naeem Abbas', 'Computing' ), 
( 4,  '3640317', 'Dr Adil Amin', 'Computing' ),
( 5,  '3478490', 'Dr Zeeshan Malik', 'Computing' ),
( 6,  '3478470', 'Dr Tayyab Malik', 'Computing'), 
( 7,  '3478471', 'Dr Talha Khan', 'Computing' ),
( 8,  '3478472', 'Dr Junaid Dj', 'Computing' ),
( 9,  '3478473', 'Dr Saqib Zafar', 'Computing'),
( 10, '3478473', 'Dr Bilal Ahmed', 'Computing' ),
( 11, '3178473', 'Dr Arshad Aziz', 'Computing' ),
( 12, '3278473', 'Dr Adeel Yousaf', 'Computing' ),
( 13, '3278474', 'Dr Syed Nazir Alam', 'Computing' ),
( 14, '3278475', 'Dr Khurram Kamal ', 'Computing' ),
( 15, '3278476', 'Dr Aleem Mushtaq', 'Computing' ),
( 16, '3278477', 'Dr Hammad Raza', 'Computing' ),
( 17, '3278478', 'Dr Sajjad Haider Zaid', 'Computing' ),
( 18, '3278479', 'Dr Asif Mansoor', 'Computing' ),
( 19, '3278480', 'Dr Ataullah Memon', 'Computing' ),
( 20, '3278481', 'Dr Tariq Mairaj Rasool', 'Computing' ),
( 21, '4278482', 'Dr Asad Ali Zadi', 'Managment Science' ),
( 22, '4278483', 'Dr Zeeshan Riaz', 'Managment Science' ),
( 23, '4278484', 'Dr Ataullah Memon', 'Managment Science' ),
( 24, '4278485', 'Dr Tariq Mairaj Rasool', 'Managment Science' ),
( 25, '478486', 'Dr Nazeer Malik', 'Managment Science' ),
( 26, '4278487', 'Dr Hina Aslam', 'Managment Science' ),
( 27, '4278488', 'Dr Muhammad Asif', 'Managment Science' ),
( 28, '4278489', 'Dr Rehan Zafar', 'Managment Science' ),
( 29, '4278490', 'Dr Ammar Mushtaq', 'Managment Science' ),
( 30, '4278491', 'Dr Junaid Ahmad', 'Managment Science' ),
( 31, '4278488', 'Dr Mehak Rafiq', 'Managment Science' ),
( 32, '4278489', 'Dr Hasan Khan', 'Managment Science' ),
( 33, '4278490', 'Dr Sajjad Hussain', 'Managment Science' ),
( 34, '4278491', 'Dr Shahzad Younis', 'Managment Science' ),
( 35, '4278488', 'Dr Zubair Rehman', 'Managment Science' ),
( 36, '4278489', 'Dr Kamran Zeb', 'Managment Science' ),
( 37, '4278490', 'Dr Muhammad Imran', 'Managment Science' ),
( 38, '4278491', 'Dr Mansoor Asif', 'Managment Science' ),
( 39, '4278488', 'Dr Imran Hashmi', 'Managment Science' ),
( 40, '4278489', 'Dr Muhammad Faheem', 'Managment Science' ),
(41,  '9278490', 'Dr Sher Jamal Khan', 'Engineering'),
(42,  '9278491', 'Dr Muhammad Zeeshan Ali', 'Engineering'),
(43,  '9278488', 'Dr 	Anita Kapadia', 'Engineering'),
(44,  '9278489', 'Dr Tariq Mahmood', 'Engineering'),
(45,  '9278490', 'Dr Syed Muhammad Jamil', 'Engineering'),
(46, '5278491', 'Dr Anwaar Ahmed', 'Engineering' ),
(47, '5278491', 'Dr Waqas Qamar', 'Engineering' ),
(48,  '5278491', 'Dr Deedar Nabi', 'Engineering' ),
( 49, '5278491', 'Dr Muhammad Zeeshan Ali Khan', 'Engineering' ),
( 50, '5278491', 'Dr Sofia Baig', 'Engineering' ),
( 51, '5640318', 'Dr Bilal Muhammad ', 'Engineering' ),
( 52, '5640319', 'Dr Dur-e-Shahwar', 'Engineering' ),
( 53, '5640310', 'Dr Naeem Abbas', 'Engineering' ), 
( 54, '5640317', 'Dr Adil Amin', 'Engineering' ), 
( 55, '5478490', 'Dr Zeeshan Malik', 'Engineering' ),
( 56, '5478470', 'Dr Tayyab Malik', 'Engineering' ), 
( 57, '5478471', 'Dr Talha Khan', 'Engineering' ),
( 58, '5478472', 'Dr Junaid Dj', 'Engineering' ), 
(59, '5478473', 'Dr Saqib Zafar', 'Engineering' ),
( 60, '5478473', 'Dr Bilal Ahmed', 'Engineering' ),
( 61, '6278489', 'Dr Muhammad Faheem', 'Agriculture' ),
( 62, '6278490', 'Dr Sher Jamal Khan', 'Agriculture' ),
( 63, '6278491', 'Dr Muhammad Zeeshan Ali', 'Agriculture' ),
( 64, '6278488', 'Dr Anita Kapadia', 'Agricalture' ), 
( 65, '6278489', 'Dr Tariq Mahmood', 'Agriculture' ),
( 66, '6278490', 'Dr Syed Muhammad Jamil', 'Agriculture' ), 
( 67, '6278491', 'Dr Anwaar Ahmed', 'Agriculture' ),
( 68, '6278491', 'Dr Waqas Qamar', 'Agriculture'  ),
( 69, '6278491', 'Dr Deedar Nabi', 'Agriculture' ),
( 70, '6278491', 'Dr Muhammad Zeeshan Ali Khan', 'Agriculture' ),
( 71, '6178473', 'Dr Arshad Aziz', 'Agriculture' ),
( 72, '6278473', 'Dr Adeel Yousaf', 'Agriculture' ),
( 73, '6278474', 'Dr Syed Nazir Alam', 'Agriculture' ),
( 74, '6278475', 'Dr Khurram Kamal', 'Agriculture' ),
( 75, '6278476', 'Dr Aleem Mushtaq', 'Agriculture' ),
( 76, '6278477', 'Dr Hammad Raza', 'Agriculture' ),
( 77, '6278478', 'Dr Sajjad Haider Zaid', 'Agriculture' ),
( 78, '6278479', 'Dr Asif Mansoor', 'Agriculture' ),
( 79, '6278480', 'Dr Ataullah Memon', 'Agriculture' ),
( 80, '6278481', 'Dr Tariq Mairaj Rasool', 'Agriculture' ),
( 81, '7278482', 'Dr Asad Ali Zadi', 'Education' ),
( 83, '7278483', 'Dr Zeeshan Riaz', 'Education' ),
( 84, '7278484', 'Dr Ataullah Memon', 'Education' ),
(85, '7278485',  'Dr Tariq Mairaj Rasool', 'Education' ),
( 86, '7278486', 'Dr Nazeer Malik', 'Education' ),
( 87, '7278487', 'Dr Hina Aslam', 'Education' ),
( 88, '7278488', 'Dr Muhammad Asif', 'Education' ),
( 89, '7278489', 'Dr Rehan Zafar', 'Education' ),
( 90, '7278490', 'Dr Ammar Mushtaq', 'Education' ),
( 91, '7278491', 'Dr Junaid Ahmad', 'Education' ),
( 92, '7278489', 'Dr Hasan Khan', 'Education' ),
( 93, '7278490', 'Dr Sajjad Hussain', 'Education' ),
( 94, '7278491', 'Dr Shahzad Younis', 'Education' ),
( 95, '7278488', 'Dr Zubair Rehman', 'Education' ),
( 96, '8278489', 'Dr Kamran Zeb', 'Law' ),
( 97, '8278490', 'Dr Muhammad Imran', 'Law' ),
( 98, '8278491', 'Dr Mansoor Asif', 'Law' ),
( 99, '8278488', 'Dr Imran Hashmi', 'Law' ),
( 100, '8278489', 'Dr Muhammad Faheem', 'Law' ),
( 101, '8278476', 'Dr Aleem Mushtaq', 'Law' ),
( 102, '8278477', 'Dr Hammad Raza', 'Law' ),
( 103, '8278478', 'Dr Sajjad Haider Zaid', 'Law' ),
( 104, '8278479', 'Dr Asif Mansoor', 'Law' ),
( 105, '8278480', 'Dr Ataullah Memon', 'Law' ),
( 106, '8278481', 'Dr Tariq Mairaj Rasool', 'Law' ),
( 107, '8278482', 'Dr Asad Ali Zadi', 'Law' ), 
( 109, '8278483', 'Dr Zeeshan Riaz', 'Law' ),
( 110, '8278484', 'Dr Ataullah Memon', 'Law' );


-- Indexes for dumped tables
--
--
-- Indexes for table `teacher_allocation`
--
ALTER TABLE
  `teacher_allocation`
ADD
  PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `teacher_allocation`
--
ALTER TABLE
  `teacher_allocation`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 20;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;