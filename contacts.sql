-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 09:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `abcdb`
--

CREATE TABLE `abcdb` (
  `sno` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abcdb`
--

INSERT INTO `abcdb` (`sno`, `title`, `description`, `dt`) VALUES
(2, 'abc account', 'need to configure my server better', '2023-01-21 19:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `concern` varchar(200) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sno`, `name`, `email`, `concern`, `dt`) VALUES
(1, 'Nabeel Wasif', 'nabeelwasif986@gmail.com', 'hiii', '2023-01-17 21:12:52'),
(2, 'Nabeel Wasif', 'hassanfarhat986@gmail.com', 'hello', '2023-01-17 21:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `nabeeldb`
--

CREATE TABLE `nabeeldb` (
  `sno` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nabeeldb`
--

INSERT INTO `nabeeldb` (`sno`, `title`, `description`, `dt`) VALUES
(2, 'hello', 'hello persephone\r\nwhats up', '2023-01-21 19:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `newuserdb`
--

CREATE TABLE `newuserdb` (
  `sno` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persephonedb`
--

CREATE TABLE `persephonedb` (
  `sno` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persephonedb`
--

INSERT INTO `persephonedb` (`sno`, `title`, `description`, `dt`) VALUES
(1, 'Nabeel is smart', 'nabeel is very smart', '2023-01-22 00:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `dbname` varchar(110) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `name`, `email`, `password`, `dbname`, `dt`) VALUES
(6, 'abc', 'abc@gmail.com', '$2y$10$gXuy4fpsrWaunfhmizHZJeuFaFb43DM0gGqiMLoG0Hz/6DRIF3Y5O', 'abcdb', '2023-01-21 15:43:13'),
(7, 'Nabeel', 'nabeel@gmail.com', '$2y$10$IqzxlvHwKOYOA45tyS.0cew4iF.PODTbELPwCZ4lY643QHkqLTGDa', 'Nabeeldb', '2023-01-21 18:29:17'),
(8, 'newuser', 'user@gmail.com', '$2y$10$x1WClGRf5VEddnNo6izsieI4DoELxzKjP0aymbIvpP.0jAAXcmfNO', 'newuserdb', '2023-01-21 19:06:40'),
(9, 'persephone', 'dibs@gmail.com', '$2y$10$fjHTpaY1ZknqlpP6rusAVOFCTYURklP3dKLLdEUkJya9vz7yt9Z3a', 'persephonedb', '2023-01-22 00:40:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abcdb`
--
ALTER TABLE `abcdb`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `nabeeldb`
--
ALTER TABLE `nabeeldb`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `newuserdb`
--
ALTER TABLE `newuserdb`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `persephonedb`
--
ALTER TABLE `persephonedb`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abcdb`
--
ALTER TABLE `abcdb`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nabeeldb`
--
ALTER TABLE `nabeeldb`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newuserdb`
--
ALTER TABLE `newuserdb`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persephonedb`
--
ALTER TABLE `persephonedb`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
