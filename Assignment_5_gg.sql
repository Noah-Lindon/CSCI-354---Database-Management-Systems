-- phpMyAdmin SQL Dump
-- version 4.2.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2020 at 11:07 PM
-- Server version: 5.6.20
-- PHP Version: 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gg`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `CellPhone` varchar(45) DEFAULT NULL,
  `ExperienceLevel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `LastName`, `FirstName`, `CellPhone`, `ExperienceLevel`) VALUES
(1, 'Smith', 'Sam', '206-254-1234', 'Master'),
(2, 'Evanston', 'Jon', '206-254-2345', 'Senior'),
(3, 'Murray', 'Dale', '260-254-3456', 'Junior'),
(4, 'Murphy', 'Jerry', '585-545-8765', 'Master'),
(5, 'Fontaine', 'Joan', '206-254-4567', 'Senior');

-- --------------------------------------------------------

--
-- Table structure for table `gg_service`
--

CREATE TABLE IF NOT EXISTS `gg_service` (
  `ServiceID` int(11) NOT NULL,
  `ServiceDescription` varchar(45) DEFAULT NULL,
  `CostPerHour` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gg_service`
--

INSERT INTO `gg_service` (`ServiceID`, `ServiceDescription`, `CostPerHour`) VALUES
(1, 'Mow Lawn', '25.00'),
(2, 'Plant Annuals', '25.00'),
(3, 'Weed Garden', '30.00'),
(4, 'Trim Hedge', '45.00'),
(5, 'Prune Small Tree', '60.00'),
(6, 'Trim Medium Tree', '100.00'),
(7, 'Trim Large Tree', '125.00');

-- --------------------------------------------------------

--
-- Table structure for table `owned_property`
--

CREATE TABLE IF NOT EXISTS `owned_property` (
  `PropertyID` int(11) NOT NULL,
  `PropertyName` varchar(45) DEFAULT NULL,
  `PropertyType` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  `OwnerID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owned_property`
--

INSERT INTO `owned_property` (`PropertyID`, `PropertyName`, `PropertyType`, `Street`, `City`, `State`, `Zip`, `OwnerID`) VALUES
(1, 'Eastlake Building', 'Office', '123 Eastlake', 'Seattle', 'WA', '98119', '2'),
(2, 'Elm St Apts', 'Apartments', '4 East Elm', 'Lynwood', 'WA', '98223', '1'),
(3, 'Jerfferson Hill', 'Office', '42 West 7th St', 'Bellevue', 'WA', '98007', '2'),
(4, 'Lake View Apts', 'Apartments', '1265 32nd Avenue', 'Redmond', 'WA', '98052', '3'),
(5, 'Kodak Heights Apts', 'Apartments', '65 32nd Avenue', 'Redmond', 'WA', '98052', '4'),
(6, 'Jones House', 'Private Residence', '1456 48th St', 'Seattle', 'WA', '98007', '1'),
(7, 'Douglas House', 'Private Residence', '1567 51st St', 'Bellevue', 'WA', '98007', '3'),
(8, 'Samuels House', 'Private Residence', '567 151st St', 'Redmond', 'WA', '98052', '5'),
(9, 'Oak St Apts', 'Apartments', '5 West Oak', 'Lynwood', 'WA', '98223', '1');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `OwnerID` int(11) NOT NULL,
  `OwnerName` varchar(45) DEFAULT NULL,
  `OwnerEmailAddress` varchar(45) DEFAULT NULL,
  `OwnerType` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`OwnerID`, `OwnerName`, `OwnerEmailAddress`, `OwnerType`) VALUES
(1, 'Mary Jones', 'Mary.Jones@somewhere.com', 'Individual'),
(2, 'DT Enterprises', 'DTE@dte.com', 'Corporation'),
(3, 'Sam Doublas', 'Sam.Douglas@somewhere.com', 'Individual'),
(4, 'UNY Enterprises', 'UNYE@unye.com', 'Corporation'),
(5, 'Doug Samuels', 'Doug.Samuels@somehwhere.com', 'Individual');

-- --------------------------------------------------------

--
-- Table structure for table `property_service`
--

CREATE TABLE IF NOT EXISTS `property_service` (
  `PropertyServiceID` int(11) NOT NULL,
  `PropertyID` int(11) DEFAULT NULL,
  `ServiceID` int(11) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `HoursWorked` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property_service`
--

INSERT INTO `property_service` (`PropertyServiceID`, `PropertyID`, `ServiceID`, `ServiceDate`, `EmployeeID`, `HoursWorked`) VALUES
(1, 1, 2, '2017-05-05', 1, '4.50'),
(2, 3, 2, '2017-05-08', 3, '4.50'),
(3, 2, 1, '2017-05-08', 3, '2.75'),
(4, 6, 1, '2017-05-10', 5, '2.50'),
(5, 5, 4, '2017-05-12', 4, '7.50'),
(6, 8, 1, '2017-05-15', 4, '2.75'),
(7, 4, 4, '2017-05-19', 1, '1.00'),
(8, 7, 1, '2017-05-21', 2, '2.50'),
(9, 6, 3, '2017-06-03', 5, '2.50'),
(10, 5, 7, '2017-06-08', 4, '10.50'),
(11, 8, 3, '2017-06-12', 4, '2.75'),
(12, 4, 5, '2017-06-15', 1, '5.00'),
(13, 7, 3, '2017-06-19', 2, '4.00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
