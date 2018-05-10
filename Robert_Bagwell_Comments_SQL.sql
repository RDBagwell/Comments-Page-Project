-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 02:28 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `body` text NOT NULL,
  `commenter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `uid`, `body`, `commenter`) VALUES
(1, 1, 'First!', 'Robert'),
(2, 2, 'This is the 2nd post', 'Franky'),
(3, 3, 'Meow Meow Cool!', 'D-Cat'),
(4, 4, 'I did it.', 'S@mmyB0y'),
(5, 5, 'This is great!!!\r\n', 'Hannah'),
(6, 1, 'Just one more\r\n', 'Robert');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`) VALUES
(1, 'Robert', 'Bagwell', 'Robert', 'erbagwell@yahoo.com', '$5$$Owen3NVCaQEoztGSs5z/vuFhiFdz0z4ddeMXlqMxiIB'),
(2, 'Frank', 'Enstein', 'Franky', 'fenstein@test.com', '$5$$WNWnwN44uBCDtL.kLKi9VRlS4AIEdMxVn9FO8oH2U74'),
(3, 'Derrick', 'Thecat', 'D-Cat', 'meow@cats.com', '$5$$LAkC1xcqIdXyNWPjAcHF.jKeE7mwm8Jf31ippUBD.83'),
(4, 'Sam', 'Fisher', 'S@mmyB0y', 'samf@nsa.com', '$5$$0GHHuzcwOG8yK6A1D1u1jTKOZYU1wxTSe1umOSdwoDB'),
(5, 'Hannah', 'Michaelson', 'Hannah', 'h.michaelson@gemail.com', '$5$$9EHRmAIJrTQ9oGfxDH9knWYx8KVhDarLSKuTwyvZw97');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
