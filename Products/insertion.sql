-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 01:30 PM
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
-- Database: `insertion`
--

-- --------------------------------------------------------

--
-- Table structure for table `@stds`
--

CREATE TABLE `@stds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `@stds`
--

INSERT INTO `@stds` (`id`, `name`, `age`, `gender`, `email`, `password`, `status`) VALUES
(2, 'arisha_khan', '20', 'female', 'arisha@gmail.com', '222', 0),
(5, 'hoor', '19', 'female', 'hhoor6943@gmail.com', '111', 1),
(6, 'mahnoor', '26', 'female', 'mahnoor@gmail.com', '333', 1),
(7, 'fairy', '18', 'female', 'fairy@gmail.com', '1414', 0),
(8, 'hoor', '19', 'female', 'hhoor6943@gmail.com', '111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pcategory` varchar(255) NOT NULL,
  `pdescription` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `pcategory`, `pdescription`, `pimage`) VALUES
(1, 'dell', 'laptop', 'laptop dell', 'laptop.jpg'),
(2, 'flower butterfly', 'flowers', 'beautiful flower with sunshines and butterflys', 'flowers.jpg'),
(3, 'sports', 'sports car', 'A sports car is a car designed with an emphasis on dynamic performance,and full of best speed', 'car.jpg'),
(4, 'beverage of Turkey', 'turkey tea', 'Tea is a popular drink throughout Turkey and the Turkish diaspora.', 'tea.jpg'),
(5, 'lays', 'chips lays cream and onion', 'crispy with full of taste ', 'chips.jpg'),
(6, 'dell', 'laptop', 'laptop dell', 'laptop.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `@stds`
--
ALTER TABLE `@stds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `@stds`
--
ALTER TABLE `@stds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
