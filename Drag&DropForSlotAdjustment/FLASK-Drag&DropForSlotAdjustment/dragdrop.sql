
-- Table structure for table `dragdrop`
--

CREATE TABLE `dragdrop` (
  `id` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `dragdropp` (
  `id` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dragdrop`
--

INSERT INTO `dragdrop` (`id`, `text`, `listorder`) VALUES
(1, 'Room NO 1.72 , Teacher Name G ', 1),
(2, 'Room NO 1.73 , Teacher Name A ', 2),
(3, 'Room NO 1.73 , Teacher Name B ', 3),
(4, 'Room NO 1.74 , Teacher Name C ', 4),
(5, 'Room NO 1.75 , Teacher Name D ', 5),
(6, 'Room NO 1.76 , Teacher Name E ', 6),
(7, 'Room NO 1.77 , Teacher Name F ', 7),
(8, 'Room NO 1.78 , Teacher Name G ', 8),
(9, 'Room NO 1.79 , Teacher Name H ', 9),
(10, 'Room NO 2.21 , Teacher Name I ', 10),
(11, 'Room NO 2.22 , Teacher Name J ', 11),
(12, 'Room NO 2.23 , Teacher Name K ', 12),
(13, 'Room NO 2.24 , Teacher Name L ', 13),
(14, 'Room NO 2.25 , Teacher Name M ', 14),
(15, 'Room NO 2.26 , Teacher Name N ', 15),
(16, 'Room NO 2.27 , Teacher Name O ', 16),
(17, 'Room NO 2.28 , Teacher Name P ', 17),
(18, 'Room NO 2.29 , Teacher Name Q ', 18);


INSERT INTO `dragdropp` (`id`, `text`, `listorder`) VALUES
(1, 'Room NO 1.72 , Teacher Name G ', 1),
(2, 'Room NO 1.73 , Teacher Name A ', 2),
(3, 'Room NO 1.73 , Teacher Name B ', 3),
(4, 'Room NO 1.74 , Teacher Name C ', 4),
(5, 'Room NO 1.75 , Teacher Name D ', 5),
(6, 'Room NO 1.76 , Teacher Name E ', 6),
(7, 'Room NO 1.77 , Teacher Name F ', 7),
(8, 'Room NO 1.78 , Teacher Name G ', 8),
(9, 'Room NO 1.79 , Teacher Name H ', 9),
(10, 'Room NO 2.21 , Teacher Name I ', 10),
(11, 'Room NO 2.22 , Teacher Name J ', 11),
(12, 'Room NO 2.23 , Teacher Name K ', 12),
(13, 'Room NO 2.24 , Teacher Name L ', 13),
(14, 'Room NO 2.25 , Teacher Name M ', 14),
(15, 'Room NO 2.26 , Teacher Name N ', 15),
(16, 'Room NO 2.27 , Teacher Name O ', 16),
(17, 'Room NO 2.28 , Teacher Name P ', 17),
(18, 'Room NO 2.29 , Teacher Name Q ', 18);