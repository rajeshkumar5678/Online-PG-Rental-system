-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 06:41 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookpg`
--

CREATE TABLE `tblbookpg` (
  `ID` int(10) NOT NULL,
  `Userid` int(10) DEFAULT NULL,
  `Pgid` int(10) DEFAULT NULL,
  `BookingNumber` int(10) NOT NULL,
  `CheckinDate` date DEFAULT NULL,
  `UserMsg` varchar(250) DEFAULT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookpg`
--

INSERT INTO `tblbookpg` (`ID`, `Userid`, `Pgid`, `BookingNumber`, `CheckinDate`, `UserMsg`, `BookingDate`, `Remark`, `Status`, `RemDate`) VALUES
(18, 1, 11, 276253459, '2019-05-22', 'I arrived on 22 may in morning 10 am', '2019-05-20 11:34:09', 'Your Booking has been confirmed.', 'Confirmed', '2019-06-15 13:39:01'),
(19, 2, 16, 966726570, '2019-05-21', 'Give your contact number', '2019-05-20 11:35:55', '', NULL, '2019-06-06 15:29:55'),
(20, 3, 14, 705533047, '2019-05-24', 'Hi, I will arrive on 24 may in eve', '2019-05-20 11:37:23', '', NULL, '2019-06-06 15:29:57'),
(21, 4, 16, 811839401, '2019-05-27', 'bkjhjhhiu', '2019-05-20 11:38:13', '', NULL, '2019-06-06 15:30:00'),
(22, 1, 11, 189316467, '2019-06-28', 'This is sample text fro testing.', '2019-06-06 16:45:47', 'All seat filled.', 'Cancelled', '2019-06-15 13:38:38'),
(24, 1, 13, 369910293, '2019-07-20', 'This is sample text for testing. testing Data', '2019-06-06 17:13:08', 'All Rooms were already full. ', 'Cancelled', '2019-06-15 13:39:45'),
(25, 5, 20, 496196975, '2019-06-30', 'This is sample text for testing.', '2019-06-18 18:21:17', 'Your Accomodation is confirmed', 'Confirmed', '2019-06-18 18:22:13'),
(26, 6, 21, 796853265, '2021-04-30', 'i want this pg', '2021-04-29 06:53:46', 'done', 'Confirmed', '2021-04-29 06:54:52'),
(27, 7, 23, 511239729, '2021-04-30', 'wants to book you pg', '2021-04-29 10:47:49', 'done', 'Confirmed', '2021-04-29 10:48:27'),
(28, 8, 25, 115207427, '2021-05-22', 'Wants to book your pg', '2021-05-06 07:37:42', 'YOU ARE ELIGIBLE TO BOOK THIS PG', 'Confirmed', '2021-05-06 07:39:57'),
(29, 9, 23, 955009396, '2021-05-22', 'I want to book your Pg.', '2021-05-13 03:27:55', 'sorry No more Bed available your booking has been ', 'Cancelled', '2021-05-13 03:32:55'),
(30, 9, 26, 379049864, '2021-05-14', 'WANTS TO BOOK YOUR PG', '2021-05-13 03:53:16', 'CONFIRMED. ', 'Confirmed', '2021-05-13 03:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `StateID` int(10) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(2, 3, 'Banaras', '2021-05-07 08:41:00'),
(13, 2, 'Indore', '2021-05-07 08:44:57'),
(15, 11, 'Chennai', '2021-05-11 18:15:10'),
(16, 5, 'Noida', '2021-05-12 19:24:54'),
(17, 13, 'Patna', '2021-05-12 19:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

CREATE TABLE `tblowner` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Rahul Singh', 'guru@gmail.com', 9898989898, '202cb962ac59075b964b07152d234b70', '2021-05-07 11:06:51'),
(3, 'Pg owner test', 'pgtest@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2021-05-10 18:16:54'),
(4, 'Geeta', 'gk@gmail', 7857997971, '12994e541a84ef530a76e727874dad3a', '2021-04-29 06:48:57'),
(5, 'sonu', 'sonu@gmail.com', 7676767676, '81b073de9370ea873f548e31b8adc081', '2021-04-29 09:11:13'),
(6, 'mali shankar', 'malisk@gmail.com', 7878787878, 'ff6bf4a1885b675c94bd89a1434a7786', '2021-04-29 10:37:51'),
(7, 'archana', 'archu@gmail.com', 7676767676, '578142d7880a2dab41b484354ad85faf', '2021-04-29 10:49:28'),
(8, 'Ganesh', 'gkk@gmail.com', 7676767898, 'f2355c7927016203e08504e94c04e294', '2021-05-13 03:35:47'),
(9, 'Ashish Pal', 'ash@gmail.com', 7979797979, '7c2c4f856daba8f5aeb834496e4edada', '2021-05-13 03:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Fulfillment` mediumtext NOT NULL,
  `FutureServices` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`, `Fulfillment`, `FutureServices`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: left;\"><b>PG Accommodation&nbsp;System</b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">The aim of pg accommodation system to provide user friendly environment to pg seeker at affordable price. Test data</div>', '2019-06-18 18:15:38', 'The technological revolution in computers has enhanced our abilities to teach. MDS has remained on the cutting edge by instituting the use of computer simulators and remote Web-accessed study material. The company will continue to seek new ways to provide a better and more convenient teaching environment through technology. The virtual class room is a thing of the near future, and we are positioning ourselves to be among the first who will provide such services.', 'The company is in the process of launching a new division for the Seattle office that will encompass training classes for commercial drivers licenses and motorcycle licenses. These services will include comprehensive indoor training classes, job placement assistance for truck and bus drivers, and rented vehicles to practice with, and use for license testing. This program will be launched in 3rd quarter 2004. Depending on its success, management plans to incorporate this program into all the field offices by 3rd quarter 2005..'),
(2, 'contactus', 'Contact Us', '<b>PG Accomodation System</b><div><b>Contact Number:</b>+91-8083241211</div><div><b>email: </b>info@gmail.com</div><div><b>Address : </b>test address</div>', '2021-05-12 13:45:38', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpg`
--

CREATE TABLE `tblpg` (
  `ID` int(10) NOT NULL,
  `OwnerID` int(20) NOT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `PGTitle` varchar(200) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `RPmonth` varchar(120) DEFAULT NULL,
  `norooms` varchar(45) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Electricity` varchar(40) DEFAULT NULL,
  `Parking` varchar(40) DEFAULT NULL,
  `Refregerator` varchar(40) DEFAULT NULL,
  `Furnished` varchar(40) DEFAULT NULL,
  `AC` varchar(40) DEFAULT NULL,
  `Balcony` varchar(40) DEFAULT NULL,
  `StudyTable` varchar(40) DEFAULT NULL,
  `Laundry` varchar(40) DEFAULT NULL,
  `Security` varchar(40) DEFAULT NULL,
  `MealsBreakfast` varchar(45) DEFAULT NULL,
  `MealLunch` varchar(45) NOT NULL,
  `MealDinner` varchar(45) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsActive` int(1) DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpg`
--

INSERT INTO `tblpg` (`ID`, `OwnerID`, `StateName`, `CityName`, `PGTitle`, `Type`, `RPmonth`, `norooms`, `Address`, `Image`, `Electricity`, `Parking`, `Refregerator`, `Furnished`, `AC`, `Balcony`, `StudyTable`, `Laundry`, `Security`, `MealsBreakfast`, `MealLunch`, `MealDinner`, `RegDate`, `IsActive`, `LastUpdationDate`) VALUES
(11, 1, 'Utter Pradesh', 'Lucknow', 'Janki Devi PG House', 'Both', '7000', '10', 'Hazrat Ganj D-145 near cant road', '4a4d107c7d7cfa34e099dc3484ade755.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Breakfast', '', '', '2019-05-08 11:29:10', NULL, '2019-06-07 07:23:02'),
(13, 1, 'Madhya Pradesh', 'Indore', 'Sanjay PG House', 'Girls', '5000', '5', 'A-178, Nehru Marg near reliance fresh', '1e6ae4ada992769567b71815f124fac5.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Dinner', '', '', '2019-05-08 12:20:44', NULL, NULL),
(14, 1, 'Utter Pradesh', 'Allahabad', 'KGM PG House', 'Both', '6000', '6', 'D-145678 Near jaharlal nehru road', 'efc1a80c391be252d7d777a437f86870.jpg', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', '', '', '2019-05-08 15:45:41', NULL, NULL),
(16, 2, 'Madhya Pradesh', 'Jaipur', 'Baba PG', '', '4000', '5', 'D-124,fhgfytkjuol', 'b9fb9d37bdf15a699bc071ce49baea53.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes', '2019-05-08 15:49:48', NULL, '2019-06-14 17:55:12'),
(20, 3, 'Tamilnadu', 'Chennai', 'Test PG', '', '10000', '10', 'Chennai', 'ca4851415e6adf8c1f187327c9e5d0fe.jpg', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', '2019-06-18 18:18:15', NULL, '2019-06-18 18:18:57'),
(21, 4, 'Tamilnadu', 'Chennai', 'gk pg', 'Boys', '8000', '2', 'MIT WPU Paud Road Near Durga Cafe,  kothrud pune', '059412d4263dcf225f0ae1c2e9ac45fd.png', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-04-29 06:50:40', NULL, NULL),
(22, 5, 'Sikkim', 'Gangtok', 'PUNE PG', 'Boys', '8000', '5', 'MIT WPU Paud Road Near Durga Cafe,  kothrud pune', '059412d4263dcf225f0ae1c2e9ac45fd.png', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-04-29 09:15:15', NULL, NULL),
(23, 6, 'Tamilnadu', 'Chennai', 'shankar mali pg', 'Boys', '90000', '5', 'MIT WPU Paud Road Near Durga Cafe,  kothrud pune', '7fdc1a630c238af0815181f9faa190f5.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-04-29 10:45:54', NULL, NULL),
(24, 7, 'Utter Pradesh', 'Banaras', 'Archana PG', 'Boys', '90000', '5', 'MIT WPU Paud Road Near Durga Cafe,  kothrud pune', '7fdc1a630c238af0815181f9faa190f5.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-04-29 11:03:44', NULL, NULL),
(25, 4, 'Madhya Pradesh', 'Jaipur', 'Rajesh kumar pg', 'Both', '8000', '2', 'Sharmistha Building Mira road, Thane Maharashtra', '059412d4263dcf225f0ae1c2e9ac45fd.png', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-05-06 07:32:26', NULL, NULL),
(26, 8, 'Bihar', 'Patna', 'Ganesh Tikar', 'Both', '8000', '5', 'MIT WPU Paud Road Near Durga Cafe,  kothrud pune', '8b09d051e33907f0d9a433f17703c3ff.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-05-13 03:44:07', NULL, NULL),
(27, 9, 'Madhya Pradesh', 'Indore', 'ASHISH PAL', 'Girls', '8000', '2', 'MIT WPU Paud Road Near Durga Cafe,  kothrud pune', '8b09d051e33907f0d9a433f17703c3ff.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2021-05-13 03:50:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(2, 'Madhya Pradesh', '2021-05-07 07:07:03'),
(3, 'Utter Pradesh', '2021-05-07 07:07:21'),
(4, 'Andra Pradesh', '2021-05-08 07:07:31'),
(5, 'Delhi/NCR', '2021-05-09 07:07:39'),
(6, 'Kerala', '2021-05-10 07:07:58'),
(11, 'Tamilnadu', '2021-05-12 18:14:43'),
(13, 'Bihar', '2021-05-12 19:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ComAddress` varchar(250) DEFAULT NULL,
  `EmergencyNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `FatherName`, `dob`, `ComAddress`, `EmergencyNumber`, `Password`, `RegDate`, `LastUpdationDate`) VALUES
(1, 'Shantanu Bhardwaj', 'abc@gmail.com', 1111111111, '', '0000-00-00', '', 0, '202cb962ac59075b964b07152d234b70', '2019-05-10 04:08:17', '2019-06-06 17:22:19'),
(2, 'Khusbu', 'abc@gmail.com', 779797977, '', '0000-00-00', '', 0, '202cb962ac59075b964b07152d234b70', '2019-05-10 04:29:46', NULL),
(3, 'Sunita Verma', 'verma@gmail.com', 8797979798, 'Mr. R.K Sharma', '1989-05-26', 'W-365, Merrut', 8989898989, '81dc9bdb52d04dc20036dbd8313ed055', '2019-05-10 04:32:39', '2019-06-07 05:58:51'),
(4, 'Raj', 've@gmail.com', 7977979797, 'Mr.Vivek', '2005-03-21', 'Chandra Vihar H.no:367 Gore gao Mumbai', 8797987979, '202cb962ac59075b964b07152d234b70', '2019-05-10 04:33:17', '2019-06-07 06:03:27'),
(5, 'test user', 'testuser@gmail.com', 1234567890, 'Test', '2018-05-02', 'New Delhi', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2019-06-18 18:19:51', '2019-06-18 18:20:42'),
(6, 'Pallavi', 'pl@gmail.com', 8787878787, NULL, NULL, NULL, NULL, '81b073de9370ea873f548e31b8adc081', '2021-04-29 06:53:00', NULL),
(7, 'mali shankar', 'malisk@gmail.com', 7878787878, NULL, NULL, NULL, NULL, 'd372d4727d7feea47b8c92f8a137c05d', '2021-04-29 10:35:27', NULL),
(8, 'Anuradha', 'anu@gmail.com', 9898878765, NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', '2021-05-06 07:36:35', NULL),
(9, 'Amit Waghmare', 'am@gmail.com', 8798878787, NULL, NULL, NULL, NULL, 'd472d3a7efbb66e574df1cf17ae20533', '2021-05-13 03:26:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookpg`
--
ALTER TABLE `tblbookpg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblowner`
--
ALTER TABLE `tblowner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpg`
--
ALTER TABLE `tblpg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbookpg`
--
ALTER TABLE `tblbookpg`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblowner`
--
ALTER TABLE `tblowner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpg`
--
ALTER TABLE `tblpg`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
