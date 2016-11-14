-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2016 at 12:55 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websyslab8`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `crn` int(11) NOT NULL,
  `prefix` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `number` smallint(4) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section` int(2) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`crn`, `prefix`, `number`, `title`, `section`, `year`) VALUES
(35041, 'MATH', 1010, 'Calculus I', 1, 2017),
(35090, 'PSYC', 1200, 'General Psychology', 1, 2017),
(35303, 'ECON', 1200, 'Introductory Econonmics', 1, 2017),
(35439, 'CSCI', 1100, 'Computer Science I', 1, 2017),
(35444, 'CSCI', 1200, 'Data Structures', 1, 2017),
(36473, 'CSCI', 2300, 'Introduction to Algorithms', 1, 2017),
(37350, 'ITWS', 1220, 'IT and Society', 1, 2017),
(37889, 'BIOL', 1010, 'Introduction to Biology', 1, 2017),
(38132, 'ITWS', 4500, 'Web Science Systems Development', 1, 2017),
(38177, 'PSCY', 2220, 'Human Factors in Design', 1, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `crn` int(11) NOT NULL,
  `rin` int(9) NOT NULL,
  `grade` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `crn`, `rin`, `grade`) VALUES
(1, 35041, 1, 89),
(2, 35090, 1, 94),
(3, 35090, 2, 78),
(4, 35303, 2, 91),
(5, 35303, 3, 87),
(6, 35439, 3, 77),
(7, 35439, 4, 98),
(8, 35444, 4, 76),
(9, 36473, 5, 96),
(10, 37350, 5, 92),
(11, 37350, 6, 88),
(12, 37889, 6, 86),
(13, 37889, 7, 89),
(14, 38132, 7, 71),
(15, 38132, 8, 97),
(16, 38177, 8, 82),
(17, 38177, 9, 85),
(18, 35041, 9, 86),
(19, 35303, 661467125, 90),
(20, 37350, 661467125, 91);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `rin` int(9) NOT NULL,
  `rcsID` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `first name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `st` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`rin`, `rcsID`, `first name`, `last name`, `alias`, `phone`, `street`, `city`, `st`, `zip`) VALUES
(1, 'smith1', 'John', 'Smith', 'John', 5551111, '1 Main Street', 'Webtown', 'Rhode Island', 10101),
(2, 'smith2', 'Robert', 'Smith', 'Robert', 5552222, '2 Main Street', 'Webtown', 'Rhode Island', 10101),
(3, 'smith3', 'Henry', 'Smith', 'Henry', 5553333, '3 Main Street', 'Webtown', 'Rhode Island', 10101),
(4, 'smith4', 'James', 'Smith', 'James', 5554444, '4 Main Street', 'Webtown', 'Rhode Island', 10101),
(5, 'smith5', 'Chris', 'Smith', 'Chris', 5555555, '5 Main Street', 'Webtown', 'Rhode Island', 10101),
(6, 'smith6', 'William', 'Smith', 'William', 5556666, '6 Main Street', 'Webtown', 'Rhode Island', 10101),
(7, 'smith7', 'Carl', 'Smith', 'Carl', 5557777, '7 Main Street', 'Webtown', 'Rhode Island', 10101),
(8, 'smith8', 'Frank', 'Smith', 'Frank', 5558888, '8 Main Street', 'Webtown', 'Rhode Island', 10101),
(9, 'smith9', 'Steve', 'Smith', 'Steve', 5559999, '9 Main Street', 'Webtown', 'Rhode Island', 10101),
(661467125, 'flynnr3', 'Ryan', 'Flynn', 'Ryan', 8249420, '33 Bow Run', 'Saunderstown', 'Rhode Island', 2874);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`crn`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crn` (`crn`),
  ADD KEY `rin` (`rin`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`rin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`crn`) REFERENCES `courses` (`crn`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`rin`) REFERENCES `students` (`rin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
