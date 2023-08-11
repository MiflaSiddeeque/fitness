-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 05:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_requests`
--

CREATE TABLE `appointment_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text DEFAULT NULL,
  `contact_method` varchar(10) NOT NULL,
  `days_available` varchar(50) DEFAULT NULL,
  `time_of_day` varchar(50) DEFAULT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_requests`
--

INSERT INTO `appointment_requests` (`id`, `name`, `email`, `phone`, `message`, `contact_method`, `days_available`, `time_of_day`, `submission_time`) VALUES
(1, 'Ashara', 'ashu67@gmail.com', '0765783423', 'i want to loss my weight', 'Phone', 'Monday, Wednesday', 'Morning', '2023-08-11 15:05:59'),
(2, 'Nipuninipuni8@gmail.com', 'nipuni8@gmail.com', '0754326789', 'WHAT SHOULD I BE EATING?', 'Email', ', Thursday, Friday', 'Morning, Evening', '2023-08-11 15:08:52'),
(3, 'Risny', 'richi9@gmail.com', '07289765432', 'CAN YOU SHOW ME HOW TO STRETCH PROPERLY?', 'Phone', ', Wednesday', ', Evening', '2023-08-11 15:09:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_requests`
--
ALTER TABLE `appointment_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_requests`
--
ALTER TABLE `appointment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
