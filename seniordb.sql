-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2025 at 07:51 AM
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
-- Database: `seniordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(10) NOT NULL,
  `senior_id` int(125) NOT NULL,
  `alertType` varchar(100) NOT NULL,
  `description` varchar(225) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `senior_id`, `alertType`, `description`, `date`) VALUES
(1, 3, 'Blood Pressure Alert', 'high bp', '2025-07-15'),
(2, 0, 'Fall Detected', 'i feel illness', '2025-07-03'),
(3, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-04'),
(4, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-09'),
(5, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-05'),
(6, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-10'),
(7, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-12'),
(8, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-04'),
(9, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-03'),
(10, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-24'),
(11, 0, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-24'),
(12, 1, 'Blood Pressure Alert', 'my blood pressure is high', '2025-07-10'),
(13, 0, 'Fall Detected', 'feel bad', '2025-07-23'),
(14, 0, 'BP is Abnormal', 'i feel illness', '2025-07-18'),
(15, 0, 'Other', 'sdfvbnm', '2025-07-31'),
(16, 0, 'BP is Abnormal', 'ujjain', '2025-07-17'),
(17, 3, 'BP is Abnormal', 'biggest festival in india', '2025-07-16'),
(18, 3, 'Other', 'htf', '2025-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) NOT NULL,
  `senior_id` int(10) NOT NULL,
  `caretaker_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `senior_id`, `caretaker_id`, `date`, `time`, `status`) VALUES
(4, 3, 4, '2025-07-18', '12:09:00.000000', 'Approved'),
(5, 3, 6, '2025-07-10', '11:34:00.000000', 'Approved'),
(6, 3, 4, '2025-07-10', '13:41:00.000000', 'Disapproved'),
(7, 3, 3, '2025-07-17', '15:20:00.000000', 'Pending'),
(8, 3, 3, '2025-07-18', '15:23:00.000000', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `id` int(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caretaker`
--

INSERT INTO `caretaker` (`id`, `name`, `contact`, `email`, `password`) VALUES
(1, 'Sumit Kumar', 2147483647, 'Sumit@gmail.com', '6767'),
(2, 'Gaurav Patel', 2147483647, 'Gaurav@gmail.com', '675656'),
(3, 'Uday Patil', 2147483647, 'uday@gmail.com', '5555'),
(4, 'mayur Patel', 2147483647, 'mayur@gmail.com', '6868'),
(5, 'Ramesh', 2147483647, 'ram@gmail.com', '78564'),
(6, 'Ganesh Pawar', 2147483647, 'ganesh@gmail.com', 'ganesh123');

-- --------------------------------------------------------

--
-- Table structure for table `health_logs`
--

CREATE TABLE `health_logs` (
  `id` int(10) NOT NULL,
  `senior_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `bloodPressure` varchar(125) NOT NULL,
  `heartRate` varchar(125) NOT NULL,
  `notes` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_logs`
--

INSERT INTO `health_logs` (`id`, `senior_id`, `date`, `bloodPressure`, `heartRate`, `notes`) VALUES
(1, 3, '2025-07-08', '5', '45', 'risk free'),
(3, 3, '2025-07-03', 'normal', 'normal', 'good'),
(4, 2, '2025-07-11', 'normal', 'normal', 'good'),
(5, 3, '2025-07-19', 'high', 'normal', 'imergency');

-- --------------------------------------------------------

--
-- Table structure for table `senior`
--

CREATE TABLE `senior` (
  `id` int(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `contact` int(10) NOT NULL,
  `address` varchar(225) NOT NULL,
  `email` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senior`
--

INSERT INTO `senior` (`id`, `name`, `contact`, `address`, `email`, `password`) VALUES
(2, 'Rohan', 2147483647, 'Mumbai', 'rohan@gmail.com', '7878'),
(3, 'Karan ', 2147483647, 'Pune', 'karan@gmail.com', '9999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_logs`
--
ALTER TABLE `health_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `senior`
--
ALTER TABLE `senior`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `caretaker`
--
ALTER TABLE `caretaker`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `health_logs`
--
ALTER TABLE `health_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `senior`
--
ALTER TABLE `senior`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
