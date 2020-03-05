-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 05:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patwarix`
--

-- --------------------------------------------------------

--
-- Table structure for table `marketplace`
--

CREATE TABLE `marketplace` (
  `Serial No.` int(3) NOT NULL,
  `Picture` text NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Plot_Size` int(3) NOT NULL,
  `Price` int(15) NOT NULL,
  `Property_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

CREATE TABLE `passwords` (
  `Serial No.` int(3) NOT NULL,
  `Useir_ID` int(3) NOT NULL,
  `Public_Key` varchar(42) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`Serial No.`, `Useir_ID`, `Public_Key`, `Password`) VALUES
(1, 1, '63FaC9201494f0bd17B9892B9fae4d52fe3BD377', 'Fahad12');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `Property_ID` int(15) NOT NULL,
  `CNIC` bigint(13) NOT NULL,
  `HASH Code` longtext NOT NULL,
  `ABI` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ABI`)),
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user details`
--

CREATE TABLE `user details` (
  `CNIC` bigint(13) NOT NULL,
  `First Name` varchar(25) NOT NULL,
  `Middle Name` varchar(25) NOT NULL,
  `Last Name` varchar(25) NOT NULL,
  `D.O.B` date NOT NULL,
  `Gender` char(1) NOT NULL,
  `Father's Name` varchar(40) NOT NULL,
  `Address` text NOT NULL,
  `Contact No.` int(11) NOT NULL,
  `Email` text NOT NULL,
  `Public Key` varchar(42) NOT NULL,
  `User ID` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user details`
--

INSERT INTO `user details` (`CNIC`, `First Name`, `Middle Name`, `Last Name`, `D.O.B`, `Gender`, `Father's Name`, `Address`, `Contact No.`, `Email`, `Public Key`, `User ID`) VALUES
(3420292856185, 'Fahad', 'Mumtaz', 'Ahmed', '1997-07-25', 'M', 'Mumtaz Ahmed', 'House#107, Street 13, Doctors Society, PWD Road, Islamabad, Pakistan', 335538366, 'fahad_mumtaz@outlook.com', '63FaC9201494f0bd17B9892B9fae4d52fe3BD377', 1),
(3450576145618, 'Shiekh', 'Muhammad ', 'Wasif', '1996-07-22', 'M', 'Shiekh Ali', 'House#11, Street 1, Phase 3, Bahria Town, Rawalpindi, Pakistan', 321564733, 'wasif@gmail.com', 'cd2a3d9f938e13cd947ec0i8um67fe734df8d8861', 2),
(5620292856185, 'Ahmed', 'Yasir', 'Shiekh', '1998-06-25', 'M', 'Yasir Ali', 'House#108, Street 12, Doctors Society, PWD Road, Islamabad, Pakistan', 335538452, 'Ahmed_Yasir@outlook.com', 'A9FaC9201494f0bd17B9892B9fae4d52fe3BD466', 3),
(6750576145618, 'Shiekh', 'Jawad', 'Feroze', '1992-01-22', 'M', 'Feroz Ali', 'House#221, Street 16, Phase 2, Bahria Town, Rawalpindi, Pakistan', 334536473, 'feroz@gmail.com', 'ab4a3d8f938g13cd947ec0i8um67fe734df8dab67', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`Serial No.`);

--
-- Indexes for table `passwords`
--
ALTER TABLE `passwords`
  ADD PRIMARY KEY (`Serial No.`),
  ADD KEY `Useir_ID` (`Useir_ID`),
  ADD KEY `Public_Key` (`Public_Key`),
  ADD KEY `Public_Key_2` (`Public_Key`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`Property_ID`),
  ADD UNIQUE KEY `UNIQUE` (`CNIC`),
  ADD UNIQUE KEY `HASH Code` (`HASH Code`) USING HASH,
  ADD KEY `CNIC` (`CNIC`);

--
-- Indexes for table `user details`
--
ALTER TABLE `user details`
  ADD PRIMARY KEY (`User ID`),
  ADD UNIQUE KEY `CNIC` (`CNIC`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`CNIC`) REFERENCES `user details` (`CNIC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
