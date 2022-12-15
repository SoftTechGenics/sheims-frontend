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
-- Database: `research_supervisors`
--
-- --------------------------------------------------------
--
-- Table structure for table `students_allocation`
--
CREATE TABLE `students_allocation` (
  `id` int(11) NOT NULL,
  `rg_no` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = latin1;

--
-- Dumping data for table `students_allocation`
--
 INSERT INTO `students_allocation` ( `id`, `rg_no`, `name`, `faculty`, `supervisor_name` )VALUES
(1, '3640318', 'Bilal Muhammad', 'Computing', 'Dr Saqib Zafar' ),
( 2, '3640319', 'Dur-e-Shahwar', 'Computing', 'Dr Saqib Zafar' ),
( 3, '3640310', 'Naeem Abbas', 'Computing', 'Dr Saqib Zafar' ), 
( 4, '3640317', 'Adil Amin', 'Computing', 'Dr Noman' ),
( 5, '3478490', 'Zeeshan Malik', 'Computing', 'Dr Noman' ),
( 6, '3478470', 'Tayyab Malik', 'Computing', 'Dr Noman' ), 
( 7, '3478471', 'Talha Khan', 'Computing', 'Dr Dalar Awan' ),
( 8, '3478472', 'Junaid Dj', 'Computing', 'Dr Dalar Awan' ),
( 9, '3478473', 'Saqib Zafar', 'Computing', 'Dr Dalar Awan' ),
( 10, '3478473', 'Bilal Ahmed', 'Computing', 'Dr Ali Muhammad' ),
( 11, '3178473', 'Arshad Aziz', 'Computing', 'Dr Ali Muhammad' ),
( 12, '3278473', 'Adeel Yousaf', 'Computing', 'Dr Awais Asraf' ),
( 13, '3278474', 'Syed Nazir Alam', 'Computing', 'Dr Awais Asraf' ),
( 14, '3278475', 'Khurram Kamal ', 'Computing', 'Dr Awais Asraf' ),
( 15, '3278476', 'Aleem Mushtaq', 'Computing', 'Dr Rehman Ahmad' ),
( 16, '3278477', 'Hammad Raza', 'Computing', 'Dr Rehman Ahmad' ),
( 17, '3278478', 'Sajjad Haider Zaid', 'Computing', 'Dr Rehman Ahmad' ),
( 18, '3278479', 'Asif Mansoor', 'Computing', 'Dr Mohabat Ali' ),
( 19, '3278480', 'Ataullah Memon', 'Computing', 'Dr Mohabat Ali' ),
( 20, '3278481', 'Tariq Mairaj Rasool', 'Computing', 'Dr Mohabat Ali' ),
( 21, '4278482', 'Asad Ali Zadi', 'Managment Science', 'Dr Athar Mehmod' ),
( 22, '4278483', 'Zeeshan Riaz', 'Managment Science', 'Dr Athar Mehmod' ),
( 23, '4278484', 'Ataullah Memon', 'Managment Science', 'Dr Junaid Khan' ),
( 24, '4278485', 'Tariq Mairaj Rasool', 'Managment Science', 'Dr Junaid Khan' ),
( 25, '478486', 'Nazeer Malik', 'Managment Science', 'Dr Javaid Iqbal' ),
( 26, '4278487', 'Hina Aslam', 'Managment Science', 'Dr Javaid Iqbal' ),
( 27, '4278488', 'Muhammad Asif', 'Managment Science', 'Dr Javaid Iqbal' ),
( 28, '4278489', 'Rehan Zafar', 'Managment Science', 'Dr Zubair Ahmad' ),
( 29, '4278490', 'Ammar Mushtaq', 'Managment Science', 'Dr Zubair Ahmad' ),
( 30, '4278491', 'Junaid Ahmad', 'Managment Science', 'Dr Zubair Ahmad' ),
( 31, '4278488', 'Mehak Rafiq', 'Managment Science', 'Dr Absaar Ul Jabbar' ),
( 32, '4278489', 'Hasan Khan', 'Managment Science', 'Dr Absaar Ul Jabbar' ),
( 33, '4278490', 'Sajjad Hussain', 'Managment Science', 'Dr Absaar Ul Jabbar' ),
( 34, '4278491', 'Shahzad Younis', 'Managment Science', 'Dr Tariq Saeed' ),
( 35, '4278488', 'Zubair Rehman', 'Managment Science', 'Dr Tariq Saeed' ),
( 36, '4278489', 'Kamran Zeb', 'Managment Science', 'Dr Tariq Saeed' ),
( 37, '4278490', 'Muhammad Imran', 'Managment Science', 'Dr Israr ud Din' ),
( 38, '4278491', 'Mansoor Asif', 'Managment Science', 'Dr Israr ud Din' ),
( 39, '4278488', 'Imran Hashmi', 'Managment Science', 'Dr Israr ud Din' ),
( 40, '4278489', 'Muhammad Faheem', 'Managment Science', 'Dr Salaman Ahmad' ),
(41, '9278490', 'Sher Jamal Khan', 'Engineering', 'Dr Salaman Ahmad'),
(42, '9278491', 'Muhammad Zeeshan Ali', 'Engineering', 'Dr Salaman Ahmad'),
(43, '9278488', '	Anita Kapadia', 'Engineering', 'Dr Usamaa Khan'),
(44, '9278489', 'Tariq Mahmood', 'Engineering', 'Dr Usamaa Khan'),
(45, '9278490', 'Syed Muhammad Jamil', 'Engineering', 'Dr Usamaa Khan'),
( 46, '5278491', 'Anwaar Ahmed', 'Engineering', 'Dr Abdul Karam' ),
( 47, '5278491', 'Waqas Qamar', 'Engineering', 'Dr Abdul Karam' ),
(48, '5278491', 'Deedar Nabi', 'Engineering', 'Dr Abdul Karam' ),
( 49, '5278491', 'Muhammad Zeeshan Ali Khan', 'Engineering', 'Dr Abdul Karam' ),
( 50, '5278491', 'Sofia Baig', 'Engineering', 'Dr Abdul Karam' ),
( 51, '5640318', 'Bilal Muhammad ', 'Engineering', 'Dr Saqib Zafar' ),
( 52, '5640319', 'Dur-e-Shahwar', 'Engineering', 'Dr Saqib Zafar' ),
( 53, '5640310', 'Naeem Abbas', 'Engineering', 'Dr Saqib Zafar' ), 
( 54, '5640317', 'Adil Amin', 'Engineering', 'Dr Noman' ), 
( 55, '5478490', 'Zeeshan Malik', 'Engineering', 'Dr Noman' ),
( 56, '5478470', 'Tayyab Malik', 'Engineering', 'Dr Noman' ), 
( 57, '5478471', 'Talha Khan', 'Engineering', 'Dr Dalar Awan' ),
( 58, '5478472', 'Junaid Dj', 'Engineering', 'Dr Dalar Awan' ), 
 (59, '5478473', 'Saqib Zafar', 'Engineering', 'Dr Dalar Awan' ),
( 60, '5478473', 'Bilal Ahmed', 'Engineering', 'Dr Ali Muhammad' ),
( 61, '6278489', 'Muhammad Faheem', 'Agriculture', 'Dr Salaman Ahmad' ),
( 62, '6278490', 'Sher Jamal Khan', 'Agriculture', 'Dr Salaman Ahmad' ),
( 63, '6278491', 'Muhammad Zeeshan Ali', 'Agriculture', 'Dr Salaman Ahmad' ),
( 64, '6278488', 'Anita Kapadia', 'Agricalture', 'Dr Usamaa Khan' ), 
( 65, '6278489', 'Tariq Mahmood', 'Agriculture', 'Dr Usamaa Khan' ),
( 66, '6278490', 'Syed Muhammad Jamil', 'Agriculture', 'Dr Usamaa Khan' ), 
( 67, '6278491', 'Anwaar Ahmed', 'Agriculture', 'Dr Abdul Karam' ),
( 68, '6278491', 'Waqas Qamar', 'Agriculture', 'Dr Abdul Karam' ),
( 69, '6278491', 'Deedar Nabi', 'Agriculture', 'Dr Abdul Karam' ),
( 70, '6278491', 'Muhammad Zeeshan Ali Khan', 'Agriculture', 'Dr Abdul Karam' ),
( 71, '6178473', 'Arshad Aziz', 'Agriculture', 'Dr Ali Muhammad' ),
( 72, '6278473', 'Adeel Yousaf', 'Agriculture', 'Dr Awais Asraf' ),
( 73, '6278474', 'Syed Nazir Alam', 'Agriculture', 'Dr Awais Asraf' ),
( 74, '6278475', 'Khurram Kamal', 'Agriculture', 'Dr Awais Asraf' ),
( 75, '6278476', 'Aleem Mushtaq', 'Agriculture', 'Dr Rehman Ahmad' ),
( 76, '6278477', 'Hammad Raza', 'Agriculture', 'Dr Rehman Ahmad' ),
( 77, '6278478', 'Sajjad Haider Zaid', 'Agriculture', 'Dr Rehman Ahmad' ),
( 78, '6278479', 'Asif Mansoor', 'Agriculture', 'Dr Mohabat Ali' ),
( 79, '6278480', 'Ataullah Memon', 'Agriculture', 'Dr Mohabat Ali' ),
( 80, '6278481', 'Tariq Mairaj Rasool', 'Agriculture', 'Dr Mohabat Ali' ),
( 81, '7278482', 'Asad Ali Zadi', 'Education', 'Dr Athar Mehmod' ),
( 83, '7278483', 'Zeeshan Riaz', 'Education', 'Dr Athar Mehmod' ),
( 84, '7278484', 'Ataullah Memon', 'Education', 'Dr Junaid Khan' ),
(85, '7278485', 'Tariq Mairaj Rasool', 'Education', 'Dr Junaid Khan' ),
( 86, '7278486', 'Nazeer Malik', 'Education', 'Dr Javaid Iqbal' ),
( 87, '7278487', 'Hina Aslam', 'Education', 'Dr Javaid Iqbal' ),
( 88, '7278488', 'Muhammad Asif', 'Education', 'Dr Javaid Iqbal' ),
( 89, '7278489', 'Rehan Zafar', 'Education', 'Dr Zubair Ahmad' ),
( 90, '7278490', 'Ammar Mushtaq', 'Education', 'Dr Zubair Ahmad' ),
( 91, '7278491', 'Junaid Ahmad', 'Education', 'Dr Zubair Ahmad' ),
( 92, '7278489', 'Hasan Khan', 'Education', 'Dr Absaar Ul Jabbar' ),
( 93, '7278490', 'Sajjad Hussain', 'Education', 'Dr Absaar Ul Jabbar' ),
( 94, '7278491', 'Shahzad Younis', 'Education', 'Dr Tariq Saeed' ),
( 95, '7278488', 'Zubair Rehman', 'Education', 'Dr Tariq Saeed' ),
( 96, '8278489', 'Kamran Zeb', 'Law', 'Dr Tariq Saeed' ),
( 97, '8278490', 'Muhammad Imran', 'Law', 'Dr Israr ud Din' ),
( 98, '8278491', 'Mansoor Asif', 'Law', 'Dr Israr ud Din' ),
( 99, '8278488', 'Imran Hashmi', 'Law', 'Dr Israr ud Din' ),
( 100, '8278489', 'Muhammad Faheem', 'Law', 'Dr Salaman Ahmad' ),
( 101, '8278476', 'Aleem Mushtaq', 'Law', 'Dr Rehman Ahmad' ),
( 102, '8278477', 'Hammad Raza', 'Law', 'Dr Rehman Ahmad' ),
( 103, '8278478', 'Sajjad Haider Zaid', 'Law', 'Dr Rehman Ahmad' ),
( 104, '8278479', 'Asif Mansoor', 'Law', 'Dr Mohabat Ali' ),
( 105, '8278480', 'Ataullah Memon', 'Law', 'Dr Mohabat Ali' ),
( 106, '8278481', 'Tariq Mairaj Rasool', 'Law', 'Dr Mohabat Ali' ),
( 107, '8278482', 'Asad Ali Zadi', 'Law', 'Dr Athar Mehmod' ), 
( 109, '8278483', 'Zeeshan Riaz', 'Law', 'Dr Athar Mehmod' ),
( 110, '8278484', 'Ataullah Memon', 'Law', 'Dr Junaid Khan' );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `students_allocation`
--
ALTER TABLE
  `students_allocation`
ADD
  PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `students_allocation`
--
ALTER TABLE
  `students_allocation`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 20;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;