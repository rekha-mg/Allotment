-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 05:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('pooja', 'pooja1234');

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE `allotment` (
  `Date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `faculty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allotment`
--

INSERT INTO `allotment` (`Date`, `time`, `faculty`) VALUES
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('', '', ''),
('', '', ''),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-14 ', '10:00:00.000000', 'yogesh'),
('2018-05-14 ', '10:00:00.000000', 'yogesh'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('2018-05-16 ', '22:00:00.000000', 'yogesh'),
('2018-05-16 ', '22:00:00.000000', 'yogesh'),
('2018-05-16 ', '22:00:00.000000', 'yogesh'),
('2018-05-16 ', '22:00:00.000000', 'yogesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('2018-05-16 ', '22:00:00.000000', 'umesh'),
('', '', ''),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `course` varchar(10) NOT NULL,
  `year` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`course`, `year`, `subject`, `date`, `time`) VALUES
('', '', '', '0000-00-00', '00:00:00.000000'),
('MCA', 'II year', 'web', '2018-05-14', '13:00:00.000000'),
('MCA', 'II year', 'os', '2018-05-14', '10:00:00.000000'),
('MCA', 'I year', 'web', '2018-05-14', '10:00:00.000000'),
('MCA', 'I year', 'java', '2018-05-16', '22:00:00.000000'),
('MCA', 'II year', 'networking', '2018-05-17', '10:00:00.000000'),
('MCA', 'II year', 'java', '2018-05-18', '13:00:00.000000'),
('MCA', 'I year', 'java', '2018-05-18', '10:00:00.000000'),
('MCA', 'II year', 'web', '2018-05-24', '10:00:00.000000'),
('MCA', 'I year', 'os', '2018-05-16', '01:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Name` varchar(40) NOT NULL,
  `Dept` varchar(30) NOT NULL,
  `session` varchar(35) NOT NULL,
  `Date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Dept`, `session`, `Date`) VALUES
('Shilpa', 'Bio tech', 'Morning', '2018-05-16'),
('naveena', 'Database', 'Afternoon', '2018-05-23'),
('bindu', 'os', 'Morning', '2018-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `Faculty` int(4) NOT NULL,
  `rooms` int(45) NOT NULL,
  `capacity` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`Faculty`, `rooms`, `capacity`) VALUES
(12, 5, 22),
(12, 5, 22),
(12, 5, 24),
(12, 5, 24),
(12, 5, 24),
(12, 5, 24);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `course` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `totalstu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`course`, `year`, `totalstu`) VALUES
('MCA', 'I year', 36),
('MCA', 'II year', 45),
('MCA', 'I year', 56),
('MCA', 'II year', 56),
('MCA', 'I year', 66),
('MCA', 'I year', 45),
('MCA', 'I year', 45),
('MCA', 'I year', 67),
('MCA', 'I year', 56),
('MCA', 'I year', 45),
('MCA', 'I year', 45),
('MCA', 'I year', 45),
('MCA', 'I year', 0),
('MCA', 'I year', 34),
('MCA', 'I year', 56),
('MCA', 'I year', 45),
('MCA', 'I year', 67),
('MCA', 'I year', 45),
('MCA', 'II year', 67),
('MCA', 'II year', 56),
('MCA', 'II year', 67);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
