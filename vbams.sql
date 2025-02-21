-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2025 at 06:15 AM
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
-- Database: `vbams`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminName` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `MobileNumber` bigint(20) NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`) VALUES
(1, 'Ganesh Kunwar', 'admin', 1234567890, 'ganeshkunwar2003@gmail.com', '$2y$10$XZYcGcKf7ziOW4MnrGPInOJfqguXSd2jTJoWO.9vXYPShgOVq1Pji');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` text NOT NULL,
  `PhoneNumber` bigint(20) NOT NULL,
  `PickupLoc` text NOT NULL,
  `Destination` text NOT NULL,
  `PickupDate` date NOT NULL,
  `PickupTime` time NOT NULL,
  `remark` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` enum('Not Updated Yet','On The Way','Completed','Rejected') NOT NULL DEFAULT 'Not Updated Yet',
  `accepted_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`id`, `BookingNumber`, `Name`, `Email`, `PhoneNumber`, `PickupLoc`, `Destination`, `PickupDate`, `PickupTime`, `remark`, `time`, `Status`, `accepted_by`) VALUES
(1, 33154176, 'GANESH KUNWAR', 'kunwarganesh2003@gmail.com', 9372970769, 'Chota Kashmir', 'Hub Mall', '2025-02-20', '20:00:00', 'Rejected', '2025-02-21 05:08:51', 'Rejected', 'driver1234'),
(2, 35506637, 'Sujal', '52g2021yadavsv@gmail.com', 9372970769, 'Chota Kashmir', 'Hub Mall', '2025-02-20', '20:00:00', 'Rejected', '2025-02-21 05:12:59', 'Not Updated Yet', ''),
(3, 13562001, 'Hitesh', 'yadavhitesh688@gmail.com', 9372970769, 'Chota Kashmir', 'Hub Mall', '2025-02-20', '20:00:00', 'On the way', '2025-02-21 05:13:33', 'Not Updated Yet', ''),
(4, 81909522, 'Sakshi', 'patilsakshi0211@gmail.com', 9372970769, 'Chota Kashmir', 'Hub Mall', '2025-02-20', '18:30:00', 'Complected', '2025-02-21 05:14:50', 'Not Updated Yet', ''),
(5, 82529243, 'SABIR', 'sabirkhan2118@gmail.com', 9372970769, 'Goregaon', 'Naigaon', '2025-02-20', '01:30:00', 'Complected', '2025-02-21 05:14:17', 'Not Updated Yet', ''),
(6, 20119604, 'Aman', 'sujalvyadav@gmail.com', 1234567890, 'Goregaon', 'Andheri', '2025-02-21', '08:36:00', 'Complected', '2025-02-21 04:14:11', 'Not Updated Yet', ''),
(8, 30128277, 'SANJANA', 'sanjanagupta1303@gmail.com', 1234567890, 'Fuga Quisquam velit', 'Exercitation exercit', '2025-02-21', '10:00:00', '', '2025-02-21 02:28:55', 'Not Updated Yet', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `id` int(11) NOT NULL,
  `driverid` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`id`, `driverid`, `name`, `phone`, `email`, `address`, `password`) VALUES
(2, 'amit1234', 'Amit', 1234325345, 'amit@gmail.com', 'Mumbai ', '$2y$10$ZE0v1lTL2VQ7cSjmPv2VBu/M07IvkoAUhY4t3s2ugrfMNZiIzFsTu'),
(3, 'hitesh1234', 'HITESH ', 1234567890, 'hitesh@gmail.com', 'Mumbai Goregaon', '$2y$10$u0WMRmvY/6.mCQMiWb4lhOYjShgp6sacPXk7Lk.0QhnGxETK5X8JS'),
(4, 'sujal1234', 'Sujal', 1234567890, 'sujal@gmail.com', 'Mumbai Goregaon', '$2y$10$C4dkyH2JFAVagmm39o/KY.lijc.NGsKxj0zah2489MULTBTFH4pVa');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `id` int(11) NOT NULL,
  `PageType` text NOT NULL,
  `PageTitle` text NOT NULL,
  `PageDescription` text NOT NULL,
  `Email` text NOT NULL,
  `MobileNumber` bigint(20) NOT NULL,
  `UpdationDate` datetime NOT NULL,
  `Timing` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`id`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'aboutus', 'Write here about us', 'xyz@gmail.com', 1234567890, '2025-02-20 11:56:46', '2025-02-20 10:58:48'),
(2, 'contactus', 'contactus', 'Contact us page', 'xyz@gmail.com', 1234567890, '2025-02-20 11:56:46', '2025-02-20 10:58:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
