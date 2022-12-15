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
-- Database: `crud`
--
-- --------------------------------------------------------
--
-- Table structure for table `tracking-ms-and-mphil-progress`
--
CREATE TABLE `tracking-ms-and-mphil-progress` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `brainstorming` varchar(255) NOT NULL,
  `estimated_start_date` varchar(255) NOT NULL,
  `estimated_finish_date` varchar(255) NOT NULL,
  `estimated_duration` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tracking-ms-and-mphil-progress`
--
INSERT INTO
  `tracking-ms-and-mphil-progress` (
    `id`,
    `project`,
    `project_type`,
    `task`,
    `brainstorming`,
    `estimated_start_date`,
    `estimated_finish_date`,
    `estimated_duration`,
    `assigned_to`
  )
VALUES
  (
    1,
    'Project 1',
    'MS',
    'Concurrent Computing Methodologies',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Camie Junious'
  ),
  (
    2,
    'Project 5',
    'MPhil',
    'Models of Computation',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Deanna Pittard'
  ),
  (
    3,
    'Project 4',
    'MS',
    'Computing / Technology Policy',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Twila Starkes'
  ),
  (
    4,
    'Project 6',
    'MS',
    'Operations Research',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Ellamae Allgood'
  ),
  (
    5,
    'Project 10',
    'MPhil',
    'Information Retrieval',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Nelly Buell'
  ),
  (
    6,
    'Project 20',
    'MS',
    'Network Architectures',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Shante Brass'
  ),
  (
    7,
    'Project 14',
    'MPhil',
    'Printed Circuit Boards',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Kate Franceschi'
  ),
  (
    8,
    'Project 8',
    'MPhil',
    'Machine Learning',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Tiffani Ebert'
  ),
  (
    9,
    'Project 21',
    'MS',
    'Enterprise computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Donte Luebbers'
  ),
  (
    10,
    'Project 7',
    'MS',
    'Integrated Circuits',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Cherilyn Frigo'
  ),
  (
    11,
    'Project 1',
    'MS',
    'Computer Systems Organization',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Rosa Manner'
  ),
  (
    12,
    'Project 5',
    'MPhil',
    'Network Types',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Glady Hoos'
  ),
  (
    13,
    'Project 4',
    'MS',
    'Software and Its Engineering',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Teresa Worthen'
  ),
  (
    14,
    'Project 6',
    'MS',
    'Human-Centered Computing',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Tien Pomerleau'
  ),
  (
    15,
    'Project 10',
    'MPhil',
    'Information Theory',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Cherilyn Frigo'
  ),
  (
    16,
    'Project 20',
    'MS',
    'Data Management Systems',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Nelly Buell'
  ),
  (
    17,
    'Project 14',
    'MPhil',
    'Real-Time Systems',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Jenine Morning'
  ),
  (
    18,
    'Project 8',
    'MPhil',
    'Discrete Mathematics',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    '	Lester Frutos'
  ),
  (
    19,
    'Project 21',
    'MS',
    'User Characteristics',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ngoc Licari'
  ),
  (
    20,
    'Project 7',
    'MS',
    'Mathematical Analysis',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Boris Lovell'
  ),
  (
    21,
    'Project 1',
    'MS',
    'Design And Analysis Of Algorithms',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Evia Overbeck'
  ),
  (
    22,
    'Project 5',
    'MPhil',
    'Computer Graphics',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Nery Stribling'
  ),
  (
    23,
    'Project 4',
    'MS',
    'Computing Methodologies',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Rosa Manner'
  ),
  (
    24,
    'Project 6',
    'MS',
    'Cryptography',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Kera Mohler'
  ),
  (
    25,
    'Project 10',
    'MPhil',
    'Security In Hardware',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Lila Speno'
  ),
  (
    26,
    'Project 20',
    'MS',
    'Applied computing',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Boyd Harm'
  ),
  (
    27,
    'Project 14',
    'MPhil',
    'Professional Topics',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Shirl Penton'
  ),
  (
    28,
    'Project 8',
    'MPhil',
    'Accessibility',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Nichole Pedretti'
  ),
  (
    29,
    'Project 21',
    'MS',
    'Ubiquitous and Mobile Computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ernie Sloat'
  ),
  (
    30,
    'Project 7',
    'MS',
    'Very Large Scale Integration Design',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Shirl Penton'
  ),
  (
     31,
    'Project 1',
    'MS',
    'Concurrent Computing Methodologies',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Camie Junious'
  ),
  (
     32,
    'Project 5',
    'MPhil',
    'Models of Computation',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Deanna Pittard'
  ),
  (
     33,
    'Project 4',
    'MS',
    'Computing / Technology Policy',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Twila Starkes'
  ),
  (
     34,
    'Project 6',
    'MS',
    'Operations Research',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Ellamae Allgood'
  ),
  (
     35,
    'Project 10',
    'MPhil',
    'Information Retrieval',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Nelly Buell'
  ),
  (
     36,
    'Project 20',
    'MS',
    'Network Architectures',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Shante Brass'
  ),
  (
     37,
    'Project 44',
    'MPhil',
    'Printed Circuit Boards',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Kate Franceschi'
  ),
  (
     38,
    'Project 34',
    'MPhil',
    'Machine Learning',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Tiffani Ebert'
  ),
  (
     39,
    'Project 19',
    'MS',
    'Enterprise computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Donte Luebbers'
  ),
  (
     40,
    'Project 36',
    'MS',
    'Integrated Circuits',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Cherilyn Frigo'
  ),
  (
     41,
    'Project 31',
    'MS',
    'Computer Systems Organization',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Rosa Manner'
  ),
  (
     42,
    'Project 5',
    'MPhil',
    'Network Types',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Glady Hoos'
  ),
  (
     43,
    'Project 4',
    'MS',
    'Software and Its Engineering',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Teresa Worthen'
  ),
  (
     44,
    'Project 6',
    'MS',
    'Human-Centered Computing',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Tien Pomerleau'
  ),
  (
     45,
    'Project 10',
    'MPhil',
    'Information Theory',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Cherilyn Frigo'
  ),
  (
     46,
    'Project 20',
    'MS',
    'Data Management Systems',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Nelly Buell'
  ),
  (
     47,
    'Project 14',
    'MPhil',
    'Real-Time Systems',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Jenine Morning'
  ),
  (
     48,
    'Project 8',
    'MPhil',
    'Discrete Mathematics',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Lester Frutos'
  ),
  (
     49,
    'Project 21',
    'MS',
    'User Characteristics',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ngoc Licari'
  ),
  (
     50,
    'Project 7',
    'MS',
    'Mathematical Analysis',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Boris Lovell'
  ),
  (
     51,
    'Project 1',
    'MS',
    'Design And Analysis Of Algorithms',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Evia Overbeck'
  ),
  (
     52,
    'Project 5',
    'MPhil',
    'Computer Graphics',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Nery Stribling'
  ),
  (
     53,
    'Project 4',
    'MS',
    'Computing Methodologies',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Rosa Manner'
  ),
  (
     54,
    'Project 6',
    'MS',
    'Cryptography',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Kera Mohler'
  ),
  (
     55,
    'Project 10',
    'MPhil',
    'Security In Hardware',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Lila Speno'
  ),
  (
     56,
    'Project 20',
    'MS',
    'Applied computing',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Boyd Harm'
  ),
  (
     57,
    'Project 14',
    'MPhil',
    'Professional Topics',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Shirl Penton'
  ),
  (
     58,
    'Project 8',
    'MPhil',
    'Accessibility',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Nichole Pedretti'
  ),
  (
     59,
    'Project 21',
    'MS',
    'Ubiquitous and Mobile Computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ernie Sloat'
  ),
  (
     60,
    'Project 7',
    'MS',
    'Very Large Scale Integration Design',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Shirl Penton'
  ),
  (
     61,
    'Project 10',
    'MPhil',
    'Information Retrieval',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Nelly Buell'
  ),
  (
     62,
    'Project 20',
    'MS',
    'Network Architectures',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Shante Brass'
  ),
  (
     63,
    'Project 14',
    'MPhil',
    'Printed Circuit Boards',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Kate Franceschi'
  ),
  (
     64,
    'Project 8',
    'MPhil',
    'Machine Learning',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Tiffani Ebert'
  ),
  (
     65,
    'Project 21',
    'MS',
    'Enterprise computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Donte Luebbers'
  ),
  (
     66,
    'Project 7',
    'MS',
    'Integrated Circuits',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Cherilyn Frigo'
  ),
  (
     67,
    'Project 1',
    'MS',
    'Computer Systems Organization',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Rosa Manner'
  ),
  (
     68,
    'Project 5',
    'MPhil',
    'Network Types',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Glady Hoos'
  ),
  (
     69,
    'Project 6',
    'MS',
    'Human-Centered Computing',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Tien Pomerleau'
  ),
  (
     70,
    'Project 10',
    'MPhil',
    'Information Theory',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Cherilyn Frigo'
  ),
  (
     71,
    'Project 20',
    'MS',
    'Data Management Systems',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Nelly Buell'
  ),
  (
     72,
    'Project 14',
    'MPhil',
    'Real-Time Systems',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Jenine Morning'
  ),
  (
     73,
    'Project 8',
    'MPhil',
    'Discrete Mathematics',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Lester Frutos'
  ),
  (
     74,
    'Project 21',
    'MS',
    'User Characteristics',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ngoc Licari'
  ),
  (
     75,
    'Project 7',
    'MS',
    'Mathematical Analysis',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Boris Lovell'
  ),
  (
     76,
    'Project 20',
    'MS',
    'Data Management Systems',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Nelly Buell'
  ),
  (
     77,
    'Project 14',
    'MPhil',
    'Real-Time Systems',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Jenine Morning'
  ),
  (
     78,
    'Project 8',
    'MPhil',
    'Discrete Mathematics',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Lester Frutos'
  ),
  (
     79,
    'Project 21',
    'MS',
    'User Characteristics',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ngoc Licari'
  ),
  (
     80,
    'Project 7',
    'MS',
    'Mathematical Analysis',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Boris Lovell'
  ),
  (
     81,
    'Project 1',
    'MS',
    'Design And Analysis Of Algorithms',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Evia Overbeck'
  ),
  (
     82,
    'Project 5',
    'MPhil',
    'Computer Graphics',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Nery Stribling'
  ),
  (
     83,
    'Project 4',
    'MS',
    'Computing Methodologies',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Rosa Manner'
  ),
  (
     84,
    'Project 6',
    'MS',
    'Cryptography',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Kera Mohler'
  ),
  (
     85,
    'Project 10',
    'MPhil',
    'Security In Hardware',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Lila Speno'
  ),
  (
     86,
    'Project 20',
    'MS',
    'Applied computing',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Boyd Harm'
  ),
  (
     87,
    'Project 14',
    'MPhil',
    'Professional Topics',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Shirl Penton'
  ),
  (
     88,
    'Project 8',
    'MPhil',
    'Accessibility',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Nichole Pedretti'
  ),
  (
     89,
    'Project 21',
    'MS',
    'Ubiquitous and Mobile Computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Ernie Sloat'
  ),
  (
     90,
    'Project 7',
    'MS',
    'Very Large Scale Integration Design',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Shirl Penton'
  ),
  (
     91,
    'Project 1',
    'MS',
    'Concurrent Computing Methodologies',
    'Completed',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Camie Junious'
  ),
  (
     92,
    'Project 5',
    'MPhil',
    'Models of Computation',
    'Started',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Deanna Pittard'
  ),
  (
     93,
    'Project 4',
    'MS',
    'Computing / Technology Policy',
    'Not Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Twila Starkes'
  ),
  (
     94,
    'Project 6',
    'MS',
    'Operations Research',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Ellamae Allgood'
  ),
  (
     95,
    'Project 10',
    'MPhil',
    'Information Retrieval',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Nelly Buell'
  ),
  (
     96,
    'Project 20',
    'MS',
    'Network Architectures',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Shante Brass'
  ),
  (
     97,
    'Project 14',
    'MPhil',
    'Printed Circuit Boards',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Kate Franceschi'
  ),
  (
     98,
    'Project 8',
    'MPhil',
    'Machine Learning',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Tiffani Ebert'
  ),
  (
     99,
    'Project 21',
    'MS',
    'Enterprise computing',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Donte Luebbers'
  ),
  (
    100,
    'Project 7',
    'MS',
    'Integrated Circuits',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Cherilyn Frigo'
  );

--
-- Indexes for dumped tables
--
--
-- Indexes for table `tracking-ms-and-mphil-progress`
--
ALTER TABLE
  `tracking-ms-and-mphil-progress`
ADD
  PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tracking-ms-and-mphil-progress`
--
ALTER TABLE
  `tracking-ms-and-mphil-progress`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 20;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;