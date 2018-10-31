-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 08:46 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `courierid` int(11) NOT NULL,
  `couriername` varchar(25) NOT NULL,
  `courieraddress` varchar(25) NOT NULL,
  `courierdescr` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`courierid`, `couriername`, `courieraddress`, `courierdescr`) VALUES
(1, 'Ben Courier', 'Nairobi', 'Letter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `email`) VALUES
(1, 'Bonheur', 14, 'Bonheurkiriku@gmail.com'),
(2, 'josee', 12, 'joseematondo@gmail.com'),
(3, 'yves', 12, 'yvesmahama@gmail.com'),
(5, 'Adrien', 21, 'Adrienmatabaro@yahoo.com'),
(6, 'Thiago', 15, 'Thiagomotta@yahoo.fr'),
(7, 'Angel', 13, 'Angeldimaria@hotmail.com'),
(8, 'Lukaku', 23, 'lukakuromero@yahoo.fr'),
(9, 'Jesse', 22, 'Jesselingard@yahoo.com'),
(10, 'Tony', 24, 'tonycroos@icloud.com'),
(11, 'Lucas', 24, 'lucasvusques@yahoo.com'),
(12, 'Marcelo', 23, 'marceloviera@gmail.com'),
(13, 'Karim', 33, 'karimbenzema@yahoo.cd'),
(14, 'Gareth', 44, 'GarethBale@gmail.com'),
(15, 'Marco', 45, 'marcoansensio@icloud.com'),
(16, 'Keylor', 41, 'Keylornavas@icloud.fr'),
(17, 'Daniel', 56, 'Danicarvajal@gmail.com'),
(18, 'Kylian', 37, 'Kylianmbappe@gmail.com'),
(19, 'Edison', 18, 'EdisonCavani@yahoo.fr'),
(20, 'Lassana', 19, 'Lassanadiarra@icloud.com');

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`courierid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `courierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
