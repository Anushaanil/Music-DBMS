-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 07:19 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSongs` ()  BEGIN
   SELECT *  FROM songs;
   END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `Artist_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Song_name` varchar(250) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`Artist_id`, `Name`, `Song_name`, `Image`, `type`) VALUES
(22, 'ustad', 'Tale Of Fairies-Ustad Sultan Khan  Akriti Kakkar.mp3', 'ustad.jpg', 13),
(23, 'Subhra Guha', 'Guna Kee Bat Guni Jane-Subhra Guha.mp3', 'subhraguha.jpg', 13),
(25, 'Burl ives', 'world_folk_song.mp3', 'burlives.jpg', 11),
(26, 'Agam', 'Malhar_Jam_-_Agam_Coke_Studio_@_MTV_Season_2-grHr39Ej7P8.mp3', 'agam.jpg', 13),
(27, 'Justein biber', 'Justin-Bieber-Sorry-PURPOSE-The-Movement.mp3', 'justinbieber.jpg', 11),
(28, 'Armann Malik', 'Nodivalandava.mp3', 'armanmalik.jpg', 12),
(29, 'Raoul kerr', 'INDIAN_STREET_METAL_Ari_Ari_ft._Raoul_Kerr_-_Bloodywood-i4FqGPRQWFM.mp3', 'raolkerr.jpg', 13),
(31, 'sidsriram', 'Maate Vinadhuga - SenSongsMp3.Co.mp3', 'sidsriram.jpg', 14),
(32, 'Nirvana', 'Nirvana_-_Smells_Like_Teen_Spirit-hTWKbfoikeg.mp3', 'nirvana.jpg', 11),
(34, 'Scott holmes', 'Scott_Holmes_-_11_-_Happy_Ending.mp3', 'Scottholmes.jpg', 11),
(35, 'RAM', 'DJ-RAM-DJ-RAM.mp3', 'ram.jpg', 14),
(36, 'Bah kiros', 'Folk_Music_of_India_.mp3', 'bahkiros.jpg', 13),
(37, 'MD Pallavi', 'Yava mohana murali.mp3', 'mdpallavi.jpg', 12),
(38, 'Sangeeta katti', 'Sangeetha Katti - MAREYALAARE.mp3', 'sangeetakatti.jpg', 12),
(40, 'C Ashwath', 'Travalla.mp3', 'cashwath.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `Name`, `type`) VALUES
(1, 'KANNADA', 10),
(2, 'ENGLISH', 20),
(3, 'HINDI', 30),
(4, 'TELUGU', 40);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `lid` int(11) NOT NULL,
  `duration` time NOT NULL,
  `type` int(11) NOT NULL,
  `Song_Image` varchar(300) NOT NULL,
  `ratings` int(10) NOT NULL,
  `lyrics` varchar(300) NOT NULL,
  `A_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `lid`, `duration`, `type`, `Song_Image`, `ratings`, `lyrics`, `A_name`) VALUES
(24, 'Maate Vinadhuga - SenSongsMp3.Co.mp3', 4, '00:04:35', 14, 'matevinaduga.jpg', 5, 'https://www.lyricsnut.com/telugu/lyrics-telugu/702-maate-vinadhuga-lyrics.html', 'sidsriram'),
(26, 'Nodivalandava.mp3', 1, '00:03:51', 12, 'nodivalandava.jpg', 5, 'https://kannadasonglyrics.com/nodivalandava-lyrics-the-villain-3306/', 'Armann Malik'),
(27, 'Justin-Bieber-Sorry-PURPOSE-The-Movement.mp3', 2, '00:03:21', 11, 'sorry.png', 5, 'https://www.azlyrics.com/lyrics/justinbieber/sorry.html', 'Justein biber'),
(28, 'Rangeride.mp3', 1, '00:03:58', 12, 'rangeride.jpg', 4, 'http://lyricsraaga.com/kannada/rangeride-lyrics-vaasu-naan-pakka-commercial/', 'Vijay prakash'),
(29, 'Taylor-Swift-Shake-It-Off.mp3', 2, '00:04:02', 11, 'shakeit.jpg', 4, 'https://www.azlyrics.com/lyrics/taylorswift/shakeitoff.html', 'Elena'),
(33, '01 Chogada - Loveratri.mp3', 3, '00:04:09', 13, 'chogada.jpg', 4, 'http://www.lyricsmint.com/2018/08/chogada-loveratri.html', 'Arijitsingh'),
(34, 'Yanthara Lokapu Sundarive - SenSongsMp3.Co.mp3', 4, '00:05:30', 14, 'robo.jpg', 4, 'https://www.lyricsnut.com/telugu/lyrics-telugu/238-yanthara-lokapu-sundarive-lyrics.html', 'Sid sriram'),
(37, '02 Akh Lad Jave - Loveratri.mp3', 2, '00:00:01', 13, '2.jpeg', 5, 'https://genius.com/Asees-kaur-akh-lad-jaave-lyrics', 'Arijitsingh'),
(38, 'shane.mpeg', 1, '00:03:51', 12, 'shane.jpg', 4, 'https://www.google.com/search?rlz=1C1SQJL_enIN772IN772&sxsrf=ACYBGNT1X2K4gHig6wlJRU6p7ixQXFjHWw%3A1574092421980&ei=hb7SXdu4O8yLvQSqr7Ug&q=shane+top+agavle+song+lyrics&oq=shane+top+agavle+song+&gs_l=psy-ab.1.0.0l7j0i20i263j0l2.2120.2120..4037...0.0..0.91.91.1......0....1..gws-wiz.E1ndt-AHA5k', 'Vijay prakash'),
(39, 'inkem.mpeg', 4, '00:03:21', 14, 'inkem.jpg', 5, 'https://checklyrics.com/inkem-inkem-inkem-kaavaale-lyrics-geetha-govindam/', 'sidsriram');

-- --------------------------------------------------------

--
-- Table structure for table `trigger_time`
--

CREATE TABLE `trigger_time` (
  `exec_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trigger_time`
--

INSERT INTO `trigger_time` (`exec_time`) VALUES
('2018-12-04 20:27:04'),
('2019-06-16 15:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `adress` varchar(150) DEFAULT NULL,
  `phno` bigint(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `isadmin` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pwd`, `adress`, `phno`, `email`, `isadmin`) VALUES
(7, 'abc', 'abc', 'dubai', 9966338855, 'a@gmail.com', 0),
(8, 'somi', '1234', 'DSATM', 9886611555, 'rohini@sadhana.com', 1),
(12, 'swathi', '789', 'bangalore', 9988774455, 'swathi@gmail.com', 0),
(19, 'meghu', '0123', 'bangalore', 8970208232, 'meghanashetty.2012@gmail.com', 1),
(20, 'Amita', '456', 'bhatkal', 8884823795, 'amita1@gmail.com', 0),
(21, 'megha', '2306', 'bhatkal', 9980437628, 'megha06@.com', 1);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `user_trig` BEFORE INSERT ON `users` FOR EACH ROW INSERT INTO trigger_time VALUES(NOW())
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`Artist_id`),
  ADD KEY `Song_name` (`Song_name`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lid` (`lid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `Artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
