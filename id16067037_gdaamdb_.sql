-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2021 at 02:17 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id16067037_gdaamdb_`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_table`
--

CREATE TABLE `detail_table` (
  `DETAIL_ID` int(5) NOT NULL,
  `LOGIN_ID` varchar(25) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `DISPLAY_PIC` longtext NOT NULL,
  `ADDRESS` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_table`
--

INSERT INTO `detail_table` (`DETAIL_ID`, `LOGIN_ID`, `NAME`, `DOB`, `DISPLAY_PIC`, `ADDRESS`) VALUES
(1, '1', 'abc', '2021-03-13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `device_table`
--

CREATE TABLE `device_table` (
  `DEVICE_ID` int(5) NOT NULL,
  `L_ID` int(10) NOT NULL,
  `ADDED_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_table`
--

INSERT INTO `device_table` (`DEVICE_ID`, `L_ID`, `ADDED_TIME`) VALUES
(1, 1, '2021-03-12 09:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `flame_sensor_table`
--

CREATE TABLE `flame_sensor_table` (
  `FLAME_ID` int(5) NOT NULL,
  `DEVICE_ID` int(5) NOT NULL,
  `FLAME_VALUE` varchar(25) NOT NULL,
  `READING_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flame_sensor_table`
--

INSERT INTO `flame_sensor_table` (`FLAME_ID`, `DEVICE_ID`, `FLAME_VALUE`, `READING_TIME`) VALUES
(1, 1, '2', '2021-03-15 15:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `ir_table`
--

CREATE TABLE `ir_table` (
  `IRS_ID` int(5) NOT NULL,
  `DEVICE_ID` int(5) NOT NULL,
  `IR_VALUE` varchar(25) NOT NULL,
  `READING_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ir_table`
--

INSERT INTO `ir_table` (`IRS_ID`, `DEVICE_ID`, `IR_VALUE`, `READING_TIME`) VALUES
(2, 1, '2', '2021-03-15 15:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `LOGIN_ID` int(5) NOT NULL,
  `EMAIL_ID` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL,
  `PHONE_NO` bigint(10) NOT NULL,
  `ROLE` int(2) NOT NULL,
  `STATUS` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`LOGIN_ID`, `EMAIL_ID`, `PASSWORD`, `PHONE_NO`, `ROLE`, `STATUS`) VALUES
(1, '123@gmal.com', '1234', 5674328123, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pir_sensor_table`
--

CREATE TABLE `pir_sensor_table` (
  `PIR_ID` int(5) NOT NULL,
  `DEVICE_ID` int(5) NOT NULL,
  `PIR_VALUE` varchar(25) NOT NULL,
  `READING_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pir_sensor_table`
--

INSERT INTO `pir_sensor_table` (`PIR_ID`, `DEVICE_ID`, `PIR_VALUE`, `READING_TIME`) VALUES
(1, 1, '2', '2021-03-16 06:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `smoke_sensor_table`
--

CREATE TABLE `smoke_sensor_table` (
  `SMOKE_ID` int(5) NOT NULL,
  `DEVICE_ID` int(5) NOT NULL,
  `SMOKE_VALUE` varchar(25) NOT NULL,
  `READING_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smoke_sensor_table`
--

INSERT INTO `smoke_sensor_table` (`SMOKE_ID`, `DEVICE_ID`, `SMOKE_VALUE`, `READING_TIME`) VALUES
(1, 1, '22', '2021-03-16 06:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `ultrasonic_table`
--

CREATE TABLE `ultrasonic_table` (
  `USS_ID` int(5) NOT NULL,
  `DEVICE_ID` int(5) NOT NULL,
  `USS_VALUE` varchar(25) NOT NULL,
  `READING_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ultrasonic_table`
--

INSERT INTO `ultrasonic_table` (`USS_ID`, `DEVICE_ID`, `USS_VALUE`, `READING_TIME`) VALUES
(1, 1, '2', '2021-03-16 06:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `warnings_table`
--

CREATE TABLE `warnings_table` (
  `W_ID` int(5) NOT NULL,
  `DEVICE_ID` int(5) NOT NULL,
  `IR_VALUE` varchar(25) NOT NULL,
  `USS_VALUE` varchar(25) NOT NULL,
  `PIR_VALUE` varchar(25) NOT NULL,
  `SMOKE_VALUE` varchar(25) NOT NULL,
  `FLAME_VALUE` varchar(25) NOT NULL,
  `READING_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_table`
--
ALTER TABLE `detail_table`
  ADD PRIMARY KEY (`DETAIL_ID`);

--
-- Indexes for table `device_table`
--
ALTER TABLE `device_table`
  ADD PRIMARY KEY (`DEVICE_ID`),
  ADD KEY `L_ID` (`L_ID`);

--
-- Indexes for table `flame_sensor_table`
--
ALTER TABLE `flame_sensor_table`
  ADD PRIMARY KEY (`FLAME_ID`),
  ADD KEY `DEVICE_ID` (`DEVICE_ID`);

--
-- Indexes for table `ir_table`
--
ALTER TABLE `ir_table`
  ADD PRIMARY KEY (`IRS_ID`),
  ADD KEY `DEVICE_ID` (`DEVICE_ID`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`LOGIN_ID`);

--
-- Indexes for table `pir_sensor_table`
--
ALTER TABLE `pir_sensor_table`
  ADD PRIMARY KEY (`PIR_ID`),
  ADD KEY `DEVICE_ID` (`DEVICE_ID`);

--
-- Indexes for table `smoke_sensor_table`
--
ALTER TABLE `smoke_sensor_table`
  ADD PRIMARY KEY (`SMOKE_ID`),
  ADD KEY `DEVICE_ID` (`DEVICE_ID`);

--
-- Indexes for table `ultrasonic_table`
--
ALTER TABLE `ultrasonic_table`
  ADD PRIMARY KEY (`USS_ID`),
  ADD KEY `DEVICE_ID` (`DEVICE_ID`);

--
-- Indexes for table `warnings_table`
--
ALTER TABLE `warnings_table`
  ADD PRIMARY KEY (`W_ID`),
  ADD KEY `DEVICE_ID` (`DEVICE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_table`
--
ALTER TABLE `detail_table`
  MODIFY `DETAIL_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `device_table`
--
ALTER TABLE `device_table`
  MODIFY `DEVICE_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flame_sensor_table`
--
ALTER TABLE `flame_sensor_table`
  MODIFY `FLAME_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ir_table`
--
ALTER TABLE `ir_table`
  MODIFY `IRS_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `LOGIN_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pir_sensor_table`
--
ALTER TABLE `pir_sensor_table`
  MODIFY `PIR_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smoke_sensor_table`
--
ALTER TABLE `smoke_sensor_table`
  MODIFY `SMOKE_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ultrasonic_table`
--
ALTER TABLE `ultrasonic_table`
  MODIFY `USS_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warnings_table`
--
ALTER TABLE `warnings_table`
  MODIFY `W_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `device_table`
--
ALTER TABLE `device_table`
  ADD CONSTRAINT `device_table_ibfk_1` FOREIGN KEY (`L_ID`) REFERENCES `device_table` (`DEVICE_ID`);

--
-- Constraints for table `flame_sensor_table`
--
ALTER TABLE `flame_sensor_table`
  ADD CONSTRAINT `flame_sensor_table_ibfk_1` FOREIGN KEY (`DEVICE_ID`) REFERENCES `flame_sensor_table` (`FLAME_ID`);

--
-- Constraints for table `pir_sensor_table`
--
ALTER TABLE `pir_sensor_table`
  ADD CONSTRAINT `pir_sensor_table_ibfk_1` FOREIGN KEY (`DEVICE_ID`) REFERENCES `pir_sensor_table` (`PIR_ID`);

--
-- Constraints for table `smoke_sensor_table`
--
ALTER TABLE `smoke_sensor_table`
  ADD CONSTRAINT `smoke_sensor_table_ibfk_1` FOREIGN KEY (`DEVICE_ID`) REFERENCES `smoke_sensor_table` (`SMOKE_ID`);

--
-- Constraints for table `ultrasonic_table`
--
ALTER TABLE `ultrasonic_table`
  ADD CONSTRAINT `ultrasonic_table_ibfk_1` FOREIGN KEY (`DEVICE_ID`) REFERENCES `ultrasonic_table` (`USS_ID`);

--
-- Constraints for table `warnings_table`
--
ALTER TABLE `warnings_table`
  ADD CONSTRAINT `warnings_table_ibfk_1` FOREIGN KEY (`DEVICE_ID`) REFERENCES `warnings_table` (`W_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
