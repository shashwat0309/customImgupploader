-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 11:55 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `img_uploader`
--

-- --------------------------------------------------------

--
-- Table structure for table `art_work_price`
--

CREATE TABLE `art_work_price` (
  `price_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `img_id` bigint(20) NOT NULL,
  `price` bigint(1) NOT NULL,
  `add_price` bigint(20) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `total_price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `img_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `img_src` varchar(1000) NOT NULL,
  `img_height` varchar(200) NOT NULL,
  `img_width` varchar(200) NOT NULL,
  `img_quality` varchar(200) NOT NULL,
  `Img_given_width` bigint(20) NOT NULL,
  `Img_given_height` bigint(20) NOT NULL,
  `designer_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`) VALUES
(1, 'asd', 'asd'),
(2, 'asd', 'asd@gmail.com'),
(3, 'asdsd', 'asd@gmail.com'),
(4, 'xvc', 'xcv'),
(5, 'asd', 'asd@gmail.coma'),
(6, 'asd', 'asd'),
(7, 'asd', 'dfgdfg'),
(8, 'fd', 'df'),
(9, 'fd', 'df');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
