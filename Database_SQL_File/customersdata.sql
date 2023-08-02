-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 05:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customersdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `company` varchar(150) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `city`, `company`, `createdAt`, `updatedAt`) VALUES
(1, 'Aman', 'Gupta', 'Ahmedabad', 'SublimeDataSystems', '2023-08-02 06:16:03', '2023-08-02 06:16:03'),
(2, 'John', 'Doe', 'New York', 'TechCorp', '2023-08-02 06:17:26', '2023-08-02 06:17:26'),
(3, 'Alice', 'Johnson', 'Los Angeles', 'GlobalTech', '2023-08-02 06:17:39', '2023-08-02 06:17:39'),
(4, 'Michael', 'Smith', 'Chicago', 'InnovateInc', '2023-08-02 06:17:50', '2023-08-02 06:17:50'),
(5, 'Emma', 'Brown', 'London', 'DataTechSolutions', '2023-08-02 06:18:01', '2023-08-02 06:18:01'),
(6, 'Daniel', 'Lee', 'Toronto', 'TechGenius', '2023-08-02 06:18:10', '2023-08-02 06:18:10'),
(7, 'Sophia', 'Wilson', 'Sydney', 'InnoTech', '2023-08-02 06:18:20', '2023-08-02 06:18:20'),
(8, 'David', 'Anderson', 'San Francisco', 'SmartSolutions', '2023-08-02 06:18:30', '2023-08-02 06:18:30'),
(9, 'Olivia', 'Martinez', 'Madrid', 'DataWave', '2023-08-02 06:18:45', '2023-08-02 06:18:45'),
(10, 'James', 'Taylor', 'Berlin', 'TechVision', '2023-08-02 06:18:56', '2023-08-02 06:18:56'),
(11, 'Isabella', 'Rodriguez', 'Paris', 'InnoTech', '2023-08-02 06:19:05', '2023-08-02 06:19:05'),
(12, 'William', 'Garcia', 'Moscow', 'DataPulse', '2023-08-02 06:19:14', '2023-08-02 06:19:14'),
(13, 'Mia', 'Miller', 'Tokyo', 'TechSolutions', '2023-08-02 06:19:25', '2023-08-02 06:19:25'),
(14, 'Mia', 'Miller', 'Tokyo', 'TechSolutions', '2023-08-02 06:19:33', '2023-08-02 06:19:33'),
(15, 'Charlotte', 'Hernandez', 'Beijing', 'DataGenius', '2023-08-02 06:19:42', '2023-08-02 06:19:42'),
(16, 'Ethan', 'Lopez', 'Seoul', 'TechHub', '2023-08-02 06:19:51', '2023-08-02 06:19:51'),
(17, 'Luna', 'Gomez', 'Mumbai', 'InnoVision', '2023-08-02 06:20:01', '2023-08-02 06:20:01'),
(18, 'Matthew', 'Ramirez', 'Cairo', 'DataGenius', '2023-08-02 06:20:17', '2023-08-02 06:20:17'),
(19, 'Amelia', 'Flores', 'São Paulo', 'TechSolutions', '2023-08-02 06:20:33', '2023-08-02 06:20:33'),
(20, 'Ava', 'Nguyen', 'Bangkok', 'InnovateTech', '2023-08-02 06:20:43', '2023-08-02 06:20:43'),
(21, 'Benjamin', 'Chen', 'Jakarta', 'TechVision', '2023-08-02 06:20:52', '2023-08-02 06:20:52'),
(22, 'Grace', 'Li', 'Lagos', 'DataWave', '2023-08-02 06:21:10', '2023-08-02 06:21:10'),
(23, 'Lucas', 'Wang', 'Istanbul', 'InnoTech', '2023-08-02 06:21:17', '2023-08-02 06:21:17'),
(24, 'Harper', 'Singh', 'Mexico City', 'DataPulse', '2023-08-02 06:21:25', '2023-08-02 06:21:25'),
(25, 'Logan', 'Kim', 'Amsterdam', 'TechSolutions', '2023-08-02 06:21:36', '2023-08-02 06:21:36'),
(26, 'Harper', 'Singh', 'Mumbai', 'Dank', '2023-08-02 09:09:57', '2023-08-02 09:09:57'),
(27, 'Har', 'Sing', 'Mumbai', 'Dank', '2023-08-02 09:25:27', '2023-08-02 09:25:27'),
(28, 'Sophia', 'Wilson', 'Sydney', 'Inno', '2023-08-02 10:01:23', '2023-08-02 10:01:23'),
(29, 'Sophia', 'Wilson', 'Sy', 'Inno', '2023-08-02 10:22:37', '2023-08-02 10:22:37'),
(30, 'Sophia', 'Wilson', 'Syc', 'Ino', '2023-08-02 15:09:46', '2023-08-02 15:09:46'),
(31, 'Sophia', 'Wilson', 'Sdy', 'Inno', '2023-08-02 15:17:26', '2023-08-02 15:17:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
