-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2026 at 06:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseName`, `Department`) VALUES
(101, 'Information Technology', 'Computer Studies Department'),
(102, 'Information Systems', 'Computer Studies Department'),
(103, 'Entrepreneurship', 'Entrepreneurship Department'),
(104, 'Nursing', 'Nursing Department'),
(105, 'Computer Engineering', 'Engineering Department');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `EnrollmentID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `EnrollmentDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`EnrollmentID`, `StudentID`, `CourseID`, `EnrollmentDate`) VALUES
(1, 1, 101, '2024-08-15'),
(2, 2, 102, '2024-08-16'),
(3, 3, 103, '2024-08-17'),
(4, 4, 104, '2024-08-18'),
(5, 5, 105, '2024-08-19'),
(6, 6, 101, '2024-08-15'),
(7, 7, 102, '2024-08-16'),
(8, 8, 103, '2024-08-17'),
(9, 9, 104, '2024-08-18'),
(10, 10, 105, '2024-08-19'),
(11, 11, 101, '2024-08-15'),
(12, 12, 102, '2024-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Course` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `Name`, `Age`, `Course`) VALUES
(1, 'Juan Dela Cruz', 20, 'Information Technology'),
(2, 'Maria Santos', 21, 'Information Systems'),
(3, 'Pedro Reyes', 22, 'Entrepreneurship'),
(4, 'Ana Lopez', 19, 'Nursing'),
(5, 'Miguel Garcia', 20, 'Computer Engineering'),
(6, 'Sofia Martinez', 21, 'Information Technology'),
(7, 'Luis Tan', 22, 'Information Systems'),
(8, 'Elena Chen', 19, 'Entrepreneurship'),
(9, 'Carlos Lim', 20, 'Nursing'),
(10, 'Isabella Wong', 21, 'Computer Engineering'),
(11, 'Antonio Sy', 22, 'Information Technology'),
(12, 'Gabriela Uy', 19, 'Information Systems');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
