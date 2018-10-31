-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 08:44 PM
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
-- Database: `librarysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ISBNNO` int(11) NOT NULL,
  `Author_Name` varchar(50) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBNNO`, `Author_Name`, `Book_Name`, `Price`) VALUES
(1, 'Paul Dybala', 'Life Is Great', 1000),
(2, 'Griezman', 'Spy for the enemy', 500),
(3, 'Angel DiMaria', 'The Journey', 800),
(4, 'Gabriel Jesus', 'Ballon D\'or', 290),
(5, 'Sterling', 'The Great Saver', 550),
(6, 'Ivan Rakitc', 'Wisdom Tooth', 600),
(7, 'Andre Iniesta', 'Wisdom', 650);

-- --------------------------------------------------------

--
-- Table structure for table `book_return`
--

CREATE TABLE `book_return` (
  `TransactionID` int(11) NOT NULL,
  `DateReturn` date NOT NULL,
  `ReturnDuration` date NOT NULL,
  `Fine` int(25) NOT NULL,
  `IssueID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `IssueID` int(11) NOT NULL,
  `MemberId` int(25) NOT NULL,
  `IssueDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `ISBNNO` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `MobileNo` int(25) NOT NULL,
  `Adress` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `Name`, `MobileNo`, `Adress`, `Gender`, `DOB`) VALUES
(1, 'Thigo Silva', 701177867, 'France, Paris', 'Male', '1993-12-01'),
(2, 'Duglas costa ', 701177867, 'Italy, Roma', 'Male', '1994-02-01'),
(3, 'Lucas Vusques', 701897657, 'Spain, Madrid', 'Male', '1996-11-15'),
(4, 'Nelson Semedo', 701897657, 'Portugal, Poruts', 'Male', '1996-09-22'),
(5, 'Isco Frans', 701909090, 'Spain, SeVilla', 'Male', '1994-01-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ISBNNO`);

--
-- Indexes for table `book_return`
--
ALTER TABLE `book_return`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `IssueID` (`IssueID`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`IssueID`),
  ADD KEY `ISBNNO` (`ISBNNO`,`MemberId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `ISBNNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `book_return`
--
ALTER TABLE `book_return`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `IssueID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
