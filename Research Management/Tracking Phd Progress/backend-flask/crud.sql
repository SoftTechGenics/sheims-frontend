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
-- Database: `tracking_phd`
--
-- --------------------------------------------------------
--
-- Table structure for table `tracking_phd`
--
CREATE TABLE `tracking_phd` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `brainstorming` varchar(255) NOT NULL,
  `estimated_start_date` varchar(255) NOT NULL,
  `estimated_end_date` varchar(255) NOT NULL,
  `estimated_duration` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = latin1;

--
-- Dumping data for table `tracking_phd`
--
INSERT INTO
  `tracking_phd`(
    `id`,
    `project`,
    `project_type`,
    `task`,
    `brainstorming`,
    `estimated_start_date`,
    `estimated_end_date`,
    `estimated_duration`,
    `assigned_to`
  )
VALUES
  (
    3,
    'Project 1',
    'PhD',
    'Applied computing',
    'Started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Laila Meli'
  ),
  (
    4,
    'Project 2',
    'PhD',
    'Cryptography',
    'Completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Lila Speno'
  ),
  (
    5,
    'Project 3',
    'PhD',
    'Network architectures',
    'Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Ellamae Allgood'
  ),
  (
    6,
    'Project 4',
    'PhD',
    'Network services',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Matthew Beery'
  ),
  (
    7,
    'Project 5',
    'PhD',
    'Physical sciences and engineering',
    'not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Lyndon Moise'
  ),
  (
    8,
    'Project 6',
    'PhD',
    'Network algorithms',
    'completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Shante Brass'
  ),
  (
    9,
    'Project 7',
    'PhD',
    'World Wide Web',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Jenine Morning'
  ),
  (
    10,
    'Project 8',
    'PhD',
    'Information retrieval',
    'completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Dortha Blizzard'
  ),
  (
    11,
    'Project 9',
    'PhD',
    'Hardware test',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Glady Hoos'
  ),
  (
    12,
    'Project 10',
    'PhD',
    '	Electronic commerce',
    'completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Kate Franceschi'
  ),
  (
    13,
    'Project 11',
    'PhD',
    'Cryptography',
    'started',
    '	04/03/2020',
    '21/05/2020',
    '71 Days',
    '	Twila Starkes'
  ),
  (
    14,
    'Project 12',
    'PhD',
    'Information retrieval',
    'completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Kate Franceschi'
  ),
  (
    15,
    'Project 13',
    'PhD',
    '	Enterprise computing',
    'started',
    '13/06/2020',
    '	16/08/2020',
    '64 Days',
    'Kera Mohler'
  ),
  (
    16,
    'Project 14',
    'PhD',
    'Hardware test',
    'started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    '	Twila Starkes'
  ),
  (
    17,
    'Project 15',
    'PhD',
    '	Network properties',
    '	Not Started',
    '	10/08/2021',
    '21/10/2021',
    '72 Days',
    'Tien Pomerleau'
  ),
  (
    18,
    'Project 16',
    'PhD',
    'Electronic commerce',
    'completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Ardelle Longino'
  ),
  (
    19,
    'Project 17',
    'PhD',
    'Network properties',
    'started',
    '01/01/2020',
    '20/02/2020',
    '26 Days',
    '	Ngoc Licari'
  ),
  (
    20,
    'Project 18',
    'PhD',
    '	Interaction design',
    'comleted',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Donte Luebbers'
  ),
  (
    21,
    'Project 19',
    'PhD',
    'Accessibility',
    'not started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    '	Tiffani Ebert'
  ),
  (
    22,
    'Project 20',
    'PhD',
    '	Human-centered computing',
    'comleted',
    '	08/03/2020',
    '21/06/2020',
    '105 Days',
    'Camie Junious'
  ),
  (
    23,
    'Project 21',
    'PhD',
    'Integrated circuits',
    'started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Evia Overbeck'
  ),
  (
    24,
    'Project 22',
    'PhD',
    'Professional topics',
    'completed',
    '02/01/2020',
    '20/02/2020',
    '61 Days',
    '	Twila Starkes'
  ),
  (
    25,
    'Project 23',
    'PhD',
    'Integrated circuits',
    'started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Tiffani Ebert'
  ),
  (
    26,
    'Project 24',
    'PhD',
    'Network types',
    ' not started',
    '01/01/2020',
    '20/02/2020',
    '76 Days',
    'Shante Brass'
  ),
  (
    27,
    'Project 25',
    'PhD',
    'Security in hardware',
    'started',
    '01/01/2020',
    '20/02/2020',
    '78 Days',
    'Twila Starkes'
  ),
  (
    43,
    'Project 12',
    'PhD',
    'Cryptography',
    'Completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Lila Speno'
  ),
  (
    44,
    'Project 20',
    'PhD',
    'Network architectures',
    'Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Ellamae Allgood '
  ),
  (
    45,
    'Project 14',
    'PhD',
    'Network services',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    ' Matthew Beery'
  ),
  (
    46,
    'Project 25',
    'PhD',
    'Physical sciences and engineering',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    ' Lyndon Moise'
  ),
  (
    47,
    'Project 16',
    'PhD',
    'Network algorithms',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    ' Shante Brass'
  ),
  (
    48,
    'Project 27',
    'PhD',
    'World Wide Web',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    ' Jenine Morning '
  ),
  (
    49,
    'Project 18',
    'PhD',
    'Information retrieval',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    ' Dortha Blizzard'
  ),
  (
    50,
    'Project 9',
    'PhD',
    'Hardware test',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    ' Glady Hoos'
  ),
  (
    51,
    'Project 17',
    'PhD',
    'Electronic commerce',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    ' Kate Franceschi '
  ),
  (
    52,
    'Project 1',
    'PhD',
    'Cryptography',
    'Started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    ' Twila Starkes '
  ),
  (
    53,
    'Project 12',
    'PhD',
    'Information retrieval',
    'Completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    ' Kate Franceschi '
  ),
  (
    54,
    'Project 20',
    'PhD',
    'Enterprise computing',
    'Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Kera Mohler'
  ),
  (
    55,
    'Project 14',
    'PhD',
    'Hardware test',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    ' Twila Starkes '
  ),
  (
    56,
    'Project 25',
    'PhD',
    'Network properties',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    ' Tien Pomerleau'
  ),
  (
    57,
    'Project 16',
    'PhD',
    'Electronic commerce',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    ' Ardelle Longino'
  ),
  (
    58,
    'Project 27',
    'PhD',
    'Network properties',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    ' Ngoc Licari'
  ),
  (
    59,
    'Project 18',
    'PhD',
    'Interaction design',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    ' Donte Luebbers'
  ),
  (
    60,
    'Project 9',
    'PhD',
    'Accessibility',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    ' Tiffani Ebert '
  ),
  (
    61,
    'Project 17',
    'PhD',
    'Human-centered computing',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    ' Camie Junious'
  ),
  (
    62,
    'Project 1',
    'PhD',
    'Integrated circuits',
    'Started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    ' Evia Overbeck  '
  ),
  (
    63,
    'Project 12',
    'PhD',
    'Professional topics',
    'Completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    ' Lajuana Bilodeau '
  ),
  (
    64,
    'Project 20',
    'PhD',
    'Integrated circuits',
    'Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    ' Tiffani Ebert'
  ),
  (
    65,
    'Project 14',
    'PhD',
    'Network types',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    ' Shante Brass'
  ),
  (
    66,
    'Project 25',
    'PhD',
    'Security in hardware',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    ' Twila Starkes '
  ),
  (
    67,
    'Project 16',
    'PhD',
    'User characteristics',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    ' Jospeh Hartwell'
  ),
  (
    68,
    'Project 27',
    'PhD',
    'Architectures',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Andreas Breitenbach'
  ),
  (
    69,
    'Project 18',
    'PhD',
    'Operations research',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    ' Derick Stuber '
  ),
  (
    70,
    'Project 9',
    'PhD',
    'Theory of computation',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    ' Ellamae Allgood'
  ),
  (
    71,
    'Project 17',
    'PhD',
    'Hardware test',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    ' Boyd Harm'
  ),
  (
    72,
    'Project 1',
    'PhD',
    'Applied computing',
    'Started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Laila Meli'
  ),


  (
    73,
    'Project 12',
    'PhD',
    'Cryptography',
    'Completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Lila Speno'
  ),


  (
    74,
    'Project 20',
    'PhD',
    'Network architectures',
    'Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Ellamae Allgood '
  ),


  (
    75,
    'Project 14',
    'PhD',
    'Network services',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'MatBeerythew '
  ),

  (
    76,
    'Project 25',
    'PhD',
    'Physical sciences and engineering',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    'Lyndon Moise'
  ),


  (
    77,
    'Project 16',
    'PhD',
    'Network algorithms',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Shante Brass'
  ),


  (
    78,
    'Project 27',
    'PhD',
    'World Wide Web',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Jenine Morning '
  ),


  (
    79,
    'Project 18',
    'PhD',
    'Information retrieval',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Dortha Blizzard'
  ),


  (
    80,
    'Project 9',
    'PhD',
    'Hardware test',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Glady Hoos'
  ),


  (
    81,
    'Project 17',
    'PhD',
    'Electronic commerce',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Kate Franceschi '
  ),


  (
    82,
    'Project 1',
    'PhD',
    'Cryptography',
    'Started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Twila Starkes '
  ),


  (
    83,
    'Project 12',
    'PhD',
    'Information retrieval',
    'Completed',
    '02/01/2020',
    '03/02/2020',
    '32 Days',
    'Kate Franceschi '
  ),


  (
    84,
    'Project 20',
    'PhD',
    'Enterprise computing',
    'Started',
    '13/06/2020',
    '16/08/2020',
    '64 Days',
    'Kera Mohler'
  ),


  (
    85,
    'Project 14',
    'PhD',
    'Hardware test',
    'Started',
    '01/01/2020',
    '20/02/2020',
    '61 Days',
    'Twila Starkes'
  ),


  (
    86,
    'Project 25',
    'PhD',
    'Network properties',
    'Not Started',
    '10/08/2021',
    '21/10/2021',
    '72 Days',
    ' Tien Pomerleau '
  ),


  (
    87,
    'Project 16',
    'PhD',
    'Electronic commerce',
    'Completed',
    '25/09/2019',
    '10/01/2020',
    '107 Days',
    'Ardelle Longino'
  ),


  (
    88,
    'Project 27',
    'PhD',
    'Network properties',
    'Started',
    '15/07/2021',
    '10/08/2021',
    '26 Days',
    'Ngoc Licari'
  ),


  (
    89,
    'Project 18',
    'PhD',
    'Interaction design',
    'Completed',
    '10/10/2021',
    '25/11/2021',
    '46 Days',
    'Donte Luebbers'
  ),


  (
    90,
    'Project 9',
    'PhD',
    'Accessibility',
    'Not Started',
    '27/09/2022',
    '13/02/2023',
    '136 Days',
    'Tiffani Ebert '
  ),


  (
    91,
    'Project 17',
    'PhD',
    'Human-centered computing',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Camie Junious'
  ),


  (
    92,
    'Project 17',
    'PhD',
    'Hardware test',
    'Completed',
    '08/03/2020',
    '21/06/2020',
    '105 Days',
    'Boyd Harm'
  ),


  (
    93,
    'Project 1',
    'PhD',
    'Applied computing',
    'Started',
    '04/03/2020',
    '21/05/2020',
    '71 Days',
    'Laila Meli'
  );

--
-- Indexes for dumped tables
--
--
-- Indexes for table `tracking_phd`
--
ALTER TABLE
  `tracking_phd`
ADD
  PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tracking_phd`
--
ALTER TABLE
  `tracking_phd`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 20;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;