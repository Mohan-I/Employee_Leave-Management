-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2025 at 05:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_ID` varchar(10) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `remarks` text NOT NULL,
  `status` enum('Active','Pending','Absent','Leave-Approved','Leave-Rejected','Already on leave','Terminated') NOT NULL,
  `password` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_ID`, `fullname`, `position`, `leave_from`, `leave_to`, `remarks`, `status`, `password`, `image`) VALUES
(2, '2001', 'Anuj Yadav', 'Software Developer Intern', '2025-11-13', '2025-11-16', 'Sick Leave', 'Leave-Approved', 'YowdbbiK', 'C:\\\\Users\\\\shail\\\\OneDrive\\\\Documents\\\\Mohan\\\\app_faces\\\\3.png'),
(3, '2002', 'Mohan Yadav', 'Full Stack Developer', '2025-11-19', '2025-11-21', 'Paid Leave', 'Leave-Rejected', 'fHJ70eb3', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\shail\\\\\\\\\\\\\\\\OneDrive\\\\\\\\\\\\\\\\Documents\\\\\\\\\\\\\\\\Mohan\\\\\\\\\\\\\\\\app_faces\\\\\\\\\\\\\\\\10.png'),
(4, '2003', 'Sagar Tayade', 'UI/UX Designer', '2025-11-11', '2025-11-19', 'Holiday', 'Absent', 'default123', 'C:\\\\\\\\\\\\\\\\Users\\\\\\\\\\\\\\\\shail\\\\\\\\\\\\\\\\OneDrive\\\\\\\\\\\\\\\\Documents\\\\\\\\\\\\\\\\Mohan\\\\\\\\\\\\\\\\app_faces\\\\\\\\\\\\\\\\12.png'),
(5, '2004', 'Suraj Yadav', 'DevOps Engineer', '2025-11-28', '2025-11-30', 'Timepass', 'Active', '123456', 'C:\\\\\\\\Users\\\\\\\\shail\\\\\\\\OneDrive\\\\\\\\Documents\\\\\\\\Mohan\\\\\\\\app_faces\\\\\\\\11.png'),
(6, '2005', 'Bhakti Kataria', 'Figmaa Designer', '2025-11-15', '2025-11-20', 'Business trip', 'Leave-Approved', 'default123', 'C:\\\\Users\\\\shail\\\\OneDrive\\\\Documents\\\\Mohan\\\\app_faces\\\\9.png'),
(7, '2006', 'Rohit Singh', 'Manager', '2025-11-27', '2025-11-29', 'Holiday', 'Pending', 'CI9aLddy', 'C:\\\\Users\\\\shail\\\\OneDrive\\\\Documents\\\\Mohan\\\\app_faces\\\\5.png'),
(8, '2007', 'Rakesh Shukla', 'Data Analyst', '2025-11-27', '2025-11-28', 'Sick Leave', 'Active', 'MICkpF9q', 'C:\\\\Users\\\\shail\\\\OneDrive\\\\Documents\\\\Mohan\\\\app_faces\\\\4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
