-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2020 at 02:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umpvi`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(11) NOT NULL,
  `eventName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `eventName`) VALUES
(1, 'Drive Safe 2020'),
(2, 'Slow Drive 2020');

-- --------------------------------------------------------

--
-- Table structure for table `meritaward`
--

CREATE TABLE `meritaward` (
  `meritawardID` int(11) NOT NULL,
  `userMatricNum` varchar(11) NOT NULL,
  `meritObedientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meritobedient`
--

CREATE TABLE `meritobedient` (
  `meritObedientID` int(11) NOT NULL,
  `meritObedientPosition` varchar(255) NOT NULL,
  `meritObedientPoint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meritobedient`
--

INSERT INTO `meritobedient` (`meritObedientID`, `meritObedientPosition`, `meritObedientPoint`) VALUES
(5, 'Park car at designated parking area', 20),
(6, 'Display sticker', 20),
(7, 'Wear seat belt or helmet', 20),
(8, 'Obey to speed limit', 20);

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `penaltyID` int(11) NOT NULL,
  `penaltyPosition` varchar(255) NOT NULL,
  `penaltyMerit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penaltyID`, `penaltyPosition`, `penaltyMerit`) VALUES
(1, 'Cause accident', 500),
(2, 'Parking violation', 400),
(3, 'No sticker displayed', 300),
(4, 'Not wearing seat belt or helmet', 200);

-- --------------------------------------------------------

--
-- Table structure for table `pointaward`
--

CREATE TABLE `pointaward` (
  `pointAwardID` int(11) NOT NULL,
  `pointAwardTotal` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `eventID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sticker`
--

CREATE TABLE `sticker` (
  `stickerID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `vehicleBrandModel` varchar(255) NOT NULL,
  `vehicleRegNum` varchar(255) NOT NULL,
  `vehicleColor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `vehicleGrant` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trafficviolation`
--

CREATE TABLE `trafficviolation` (
  `trafficviolationID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `penaltyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userFullName` varchar(255) NOT NULL,
  `userIC` bigint(15) NOT NULL,
  `userMatricNum` varchar(255) NOT NULL,
  `userMobile` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `userPassword`, `userFullName`, `userIC`, `userMatricNum`, `userMobile`, `userType`) VALUES
(1, 'syedsyafiq', '1', 'Syed Syafiq bin Syed Alias', 970517385351, 'CB17192', '01111446604', 'Student'),
(2, 'meordaniel', '1', 'Meor Daniel bin Bakri', 97045111622, 'CB17100', '0115648975', 'Staff'),
(3, 'admin', '1', 'admin', 252452455, 'CB17200', '54544534453', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `meritaward`
--
ALTER TABLE `meritaward`
  ADD PRIMARY KEY (`meritawardID`);

--
-- Indexes for table `meritobedient`
--
ALTER TABLE `meritobedient`
  ADD PRIMARY KEY (`meritObedientID`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`penaltyID`);

--
-- Indexes for table `pointaward`
--
ALTER TABLE `pointaward`
  ADD PRIMARY KEY (`pointAwardID`);

--
-- Indexes for table `sticker`
--
ALTER TABLE `sticker`
  ADD PRIMARY KEY (`stickerID`);

--
-- Indexes for table `trafficviolation`
--
ALTER TABLE `trafficviolation`
  ADD PRIMARY KEY (`trafficviolationID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meritaward`
--
ALTER TABLE `meritaward`
  MODIFY `meritawardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `meritobedient`
--
ALTER TABLE `meritobedient`
  MODIFY `meritObedientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `penaltyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pointaward`
--
ALTER TABLE `pointaward`
  MODIFY `pointAwardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sticker`
--
ALTER TABLE `sticker`
  MODIFY `stickerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `trafficviolation`
--
ALTER TABLE `trafficviolation`
  MODIFY `trafficviolationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
