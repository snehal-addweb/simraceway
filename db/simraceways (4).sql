-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Oct 09, 2018 at 07:35 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simraceways`
--

-- --------------------------------------------------------

--
-- Table structure for table `AddCarsAndClasses`
--

CREATE TABLE `AddCarsAndClasses` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Stastics` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Power` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Weight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddCarsAndClasses`
--

INSERT INTO `AddCarsAndClasses` (`ID`, `Name`, `Stastics`, `Power`, `Weight`, `Description`) VALUES
(35, 'F3', '2 * Race a 25 min.', '5000 HP', '5000 plus Engine', 'Aurom ipsum track combo free at simraceway.com. Another day, another race in the battle for fireworksfrom race 1, the drivers seemed to settlethe Simraceway Championship chase down his benchmark time.\r\n\r\nAurom ipsum Frank came closest, but still fell 0.17 seconds shy, meaning he would line up on the outside of row 1. Next up was Doug Tuttle, John Jstremski, elov, who lined up in 8th.');

-- --------------------------------------------------------

--
-- Table structure for table `AddCarsAndClasses_Live`
--

CREATE TABLE `AddCarsAndClasses_Live` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Stastics` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Power` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Weight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AddCarsAndClasses_Photo`
--

CREATE TABLE `AddCarsAndClasses_Photo` (
  `ID` int(11) NOT NULL,
  `AddCarsAndClassesID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddCarsAndClasses_Photo`
--

INSERT INTO `AddCarsAndClasses_Photo` (`ID`, `AddCarsAndClassesID`, `ImageID`) VALUES
(1, 35, 48),
(2, 35, 49),
(3, 35, 47);

-- --------------------------------------------------------

--
-- Table structure for table `AddCarsAndClasses_Versions`
--

CREATE TABLE `AddCarsAndClasses_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Stastics` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Power` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Weight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddCarsAndClasses_Versions`
--

INSERT INTO `AddCarsAndClasses_Versions` (`ID`, `RecordID`, `Version`, `Name`, `Stastics`, `Power`, `Weight`, `Description`) VALUES
(1, 35, 1, NULL, NULL, NULL, NULL, NULL),
(2, 35, 2, 'F3', '2 * Race a 25 min.', '5000 HP', '5000 plus Engine', 'Aurom ipsum track combo free at simraceway.com. Another day, another race in the battle for fireworksfrom race 1, the drivers seemed to settlethe Simraceway Championship chase down his benchmark time.\r\n\r\nAurom ipsum Frank came closest, but still fell 0.17 seconds shy, meaning he would line up on the outside of row 1. Next up was Doug Tuttle, John Jstremski, elov, who lined up in 8th.'),
(3, 35, 3, 'F3', '2 * Race a 25 min.', '5000 HP', '5000 plus Engine', 'Aurom ipsum track combo free at simraceway.com. Another day, another race in the battle for fireworksfrom race 1, the drivers seemed to settlethe Simraceway Championship chase down his benchmark time.\r\n\r\nAurom ipsum Frank came closest, but still fell 0.17 seconds shy, meaning he would line up on the outside of row 1. Next up was Doug Tuttle, John Jstremski, elov, who lined up in 8th.');

-- --------------------------------------------------------

--
-- Table structure for table `AddEvent`
--

CREATE TABLE `AddEvent` (
  `ID` int(11) NOT NULL,
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Place` mediumtext CHARACTER SET utf8,
  `Time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `Race` mediumtext CHARACTER SET utf8,
  `StartTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EndTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SeriesID` int(11) NOT NULL DEFAULT '0',
  `ReportsID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddEvent`
--

INSERT INTO `AddEvent` (`ID`, `EventName`, `StartDate`, `EndDate`, `Place`, `Time`, `PhotoID`, `Race`, `StartTime`, `EndTime`, `SeriesID`, `ReportsID`) VALUES
(18, 'Race', '2018-09-12 01:05:00', '2018-09-14 02:06:00', 'Abad', '07:00:00', 19, '1, 2 & 5', '04:00:00', '06:00:00', 0, 0),
(25, 'New event', '2018-08-25 07:09:00', '2018-08-31 09:06:00', NULL, NULL, 19, '4, 5 & 6', '05:00:00', '07:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AddEvent_Live`
--

CREATE TABLE `AddEvent_Live` (
  `ID` int(11) NOT NULL,
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Place` mediumtext CHARACTER SET utf8,
  `Time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `Race` mediumtext CHARACTER SET utf8,
  `StartTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EndTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SeriesID` int(11) NOT NULL DEFAULT '0',
  `ReportsID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AddEvent_Versions`
--

CREATE TABLE `AddEvent_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Place` mediumtext CHARACTER SET utf8,
  `Time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `Race` mediumtext CHARACTER SET utf8,
  `StartTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EndTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SeriesID` int(11) NOT NULL DEFAULT '0',
  `ReportsID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddEvent_Versions`
--

INSERT INTO `AddEvent_Versions` (`ID`, `RecordID`, `Version`, `EventName`, `StartDate`, `EndDate`, `Place`, `Time`, `PhotoID`, `Race`, `StartTime`, `EndTime`, `SeriesID`, `ReportsID`) VALUES
(1, 18, 5, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0),
(2, 18, 6, 'Race', '2018-08-06 00:00:00', '2018-08-14 00:00:00', 'Abad', '07:00:00', 0, NULL, NULL, NULL, 0, 0),
(3, 18, 7, 'Race', '2018-08-06 00:00:00', '2018-08-14 00:00:00', 'Abad', '07:00:00', 0, NULL, NULL, NULL, 0, 0),
(4, 18, 8, 'Race', '2018-08-06 00:00:00', '2018-08-14 00:00:00', 'Abad', '07:00:00', 4, NULL, NULL, NULL, 0, 0),
(5, 18, 9, 'Race', '2018-08-06 00:00:00', '2018-08-14 00:00:00', NULL, NULL, 4, '1, 2 & 5', '04:00:00', '06:00:00', 0, 0),
(6, 18, 10, 'Race', '2018-08-06 00:00:00', '2018-08-14 00:00:00', NULL, NULL, 19, '1, 2 & 5', '04:00:00', '06:00:00', 0, 0),
(7, 25, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0),
(8, 25, 2, 'New event', '2018-08-31 00:00:00', '2018-08-31 00:00:00', NULL, NULL, 19, 'asjkdgqwhbdwqdnasdas', '05:00:00', '07:00:00', 0, 0),
(9, 25, 3, 'New event', '2018-08-31 00:00:00', '2018-08-31 00:00:00', NULL, NULL, 19, '4, 5 & 6', '05:00:00', '07:00:00', 0, 0),
(10, 25, 4, 'New event', '2018-08-25 00:00:00', '2018-08-31 00:00:00', NULL, NULL, 19, '4, 5 & 6', '05:00:00', '07:00:00', 0, 0),
(11, 18, 11, 'Race', '2018-09-05 00:00:00', '2018-08-14 00:00:00', NULL, NULL, 19, '1, 2 & 5', '04:00:00', '06:00:00', 0, 0),
(12, 18, 12, 'Race', '2018-09-12 00:00:00', '2018-08-14 00:00:00', NULL, NULL, 19, '1, 2 & 5', '04:00:00', '06:00:00', 0, 0),
(13, 18, 13, 'Race', '2018-09-12 01:05:00', '2018-08-14 00:00:00', NULL, NULL, 19, '1, 2 & 5', '04:00:00', '06:00:00', 0, 0),
(14, 18, 14, 'Race', '2018-09-12 01:05:00', '2018-08-14 02:06:00', NULL, NULL, 19, '1, 2 & 5', NULL, NULL, 0, 0),
(15, 25, 5, 'New event', '2018-08-25 07:09:00', '2018-08-31 09:06:00', NULL, NULL, 19, '4, 5 & 6', NULL, NULL, 0, 0),
(16, 25, 6, 'New event', '2018-08-25 07:09:00', '2018-08-31 09:06:00', NULL, NULL, 19, '4, 5 & 6', NULL, NULL, 0, 0),
(17, 18, 15, 'Race', '2018-09-12 01:05:00', '2018-09-14 02:06:00', NULL, NULL, 19, '1, 2 & 5', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`ID`, `PostsPerPage`) VALUES
(14, 10);

-- --------------------------------------------------------

--
-- Table structure for table `BlogCategory`
--

CREATE TABLE `BlogCategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Blog\\Model\\BlogCategory') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Blog\\Model\\BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost`
--

CREATE TABLE `BlogPost` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogPost`
--

INSERT INTO `BlogPost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`) VALUES
(15, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Authors`
--

CREATE TABLE `BlogPost_Authors` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogPost_Authors`
--

INSERT INTO `BlogPost_Authors` (`ID`, `BlogPostID`, `MemberID`) VALUES
(1, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Categories`
--

CREATE TABLE `BlogPost_Categories` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogCategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Live`
--

CREATE TABLE `BlogPost_Live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Tags`
--

CREATE TABLE `BlogPost_Tags` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogTagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Versions`
--

CREATE TABLE `BlogPost_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogPost_Versions`
--

INSERT INTO `BlogPost_Versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`) VALUES
(1, 15, 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTag`
--

CREATE TABLE `BlogTag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Blog\\Model\\BlogTag') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Blog\\Model\\BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Contributors`
--

CREATE TABLE `Blog_Contributors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Editors`
--

CREATE TABLE `Blog_Editors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Live`
--

CREATE TABLE `Blog_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Versions`
--

CREATE TABLE `Blog_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blog_Versions`
--

INSERT INTO `Blog_Versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`) VALUES
(1, 14, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Writers`
--

CREATE TABLE `Blog_Writers` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Calendar`
--

CREATE TABLE `Calendar` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEntry`
--

CREATE TABLE `CalendarEntry` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PurpleSpider\\BasicCalendar\\CalendarEntry') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext CHARACTER SET utf8,
  `Date` date DEFAULT NULL,
  `Time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `CalendarPageID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `EventTitle` mediumtext CHARACTER SET utf8,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `Status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Race` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CalendarHomeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CalendarEntry`
--

INSERT INTO `CalendarEntry` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Date`, `Time`, `Description`, `CalendarPageID`, `ImageID`, `EventTitle`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `Status`, `Race`, `CalendarHomeID`) VALUES
(9, 'PurpleSpider\\BasicCalendar\\CalendarEntry', '2018-10-04 05:35:49', '2018-10-04 04:42:16', 'Open Practice KARTS Only', '2018-10-04', '9:00', NULL, 53, 19, NULL, NULL, '2018-10-06', NULL, '5:00', 'stage 2', '1, 2 & 3', 0),
(10, 'PurpleSpider\\BasicCalendar\\CalendarEntry', '2018-10-05 00:29:48', '2018-10-05 00:29:48', 'Race 1', '2018-10-06', '9:00', NULL, 53, 52, NULL, NULL, '2018-10-06', NULL, '5:00', 'Sold out', '1, 2 & 3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `CalendarPage`
--

CREATE TABLE `CalendarPage` (
  `ID` int(11) NOT NULL,
  `EventTabFirst` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ManageAllEvents` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AboutID` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `CalendarHomeID` int(11) NOT NULL DEFAULT '0',
  `CalendarHomeImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CalendarPage`
--

INSERT INTO `CalendarPage` (`ID`, `EventTabFirst`, `ManageAllEvents`, `AboutID`, `PhotoID`, `CalendarHomeID`, `CalendarHomeImageID`) VALUES
(37, 0, 1, 44, 0, 0, 0),
(53, 0, 0, 0, 0, 0, 55);

-- --------------------------------------------------------

--
-- Table structure for table `CalendarPage_Live`
--

CREATE TABLE `CalendarPage_Live` (
  `ID` int(11) NOT NULL,
  `EventTabFirst` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ManageAllEvents` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AboutID` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `CalendarHomeID` int(11) NOT NULL DEFAULT '0',
  `CalendarHomeImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CalendarPage_Live`
--

INSERT INTO `CalendarPage_Live` (`ID`, `EventTabFirst`, `ManageAllEvents`, `AboutID`, `PhotoID`, `CalendarHomeID`, `CalendarHomeImageID`) VALUES
(37, 0, 0, 0, 0, 0, 0),
(53, 0, 0, 0, 0, 0, 55);

-- --------------------------------------------------------

--
-- Table structure for table `CalendarPage_Versions`
--

CREATE TABLE `CalendarPage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EventTabFirst` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ManageAllEvents` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AboutID` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `CalendarHomeID` int(11) NOT NULL DEFAULT '0',
  `CalendarHomeImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CalendarPage_Versions`
--

INSERT INTO `CalendarPage_Versions` (`ID`, `RecordID`, `Version`, `EventTabFirst`, `ManageAllEvents`, `AboutID`, `PhotoID`, `CalendarHomeID`, `CalendarHomeImageID`) VALUES
(1, 37, 1, 0, 0, 0, 0, 0, 0),
(2, 37, 2, 0, 0, 0, 0, 0, 0),
(3, 37, 3, 0, 0, 0, 0, 0, 0),
(4, 37, 4, 0, 0, 0, 0, 0, 0),
(5, 37, 5, 0, 1, 0, 0, 0, 0),
(6, 37, 6, 0, 1, 53, 0, 0, 0),
(7, 37, 7, 0, 1, 44, 0, 0, 0),
(8, 47, 1, 0, 0, 0, 0, 0, 0),
(9, 47, 2, 0, 0, 0, 0, 0, 0),
(10, 48, 1, 0, 0, 0, 0, 0, 0),
(11, 53, 1, 0, 0, 0, 0, 0, 0),
(12, 53, 2, 0, 0, 0, 0, 0, 0),
(13, 53, 3, 0, 0, 0, 0, 0, 0),
(14, 53, 4, 0, 0, 0, 0, 0, 0),
(15, 53, 5, 0, 0, 0, 0, 0, 0),
(16, 53, 6, 0, 0, 0, 0, 0, 0),
(17, 53, 7, 0, 0, 0, 0, 0, 0),
(18, 53, 8, 0, 0, 0, 0, 0, 55),
(19, 53, 9, 0, 0, 0, 0, 0, 55);

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Authors`
--

CREATE TABLE `Calendar_Authors` (
  `ID` int(11) NOT NULL,
  `CalendarID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Component_Calendar`
--

CREATE TABLE `Calendar_Component_Calendar` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Component_CalendarEntry`
--

CREATE TABLE `Calendar_Component_CalendarEntry` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Calendar\\Component\\CalendarEntry') CHARACTER SET utf8 DEFAULT 'Calendar\\Component\\CalendarEntry',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Component_Calendar_Live`
--

CREATE TABLE `Calendar_Component_Calendar_Live` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Component_Calendar_Versions`
--

CREATE TABLE `Calendar_Component_Calendar_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Calendar_Component_Calendar_Versions`
--

INSERT INTO `Calendar_Component_Calendar_Versions` (`ID`, `RecordID`, `Version`, `PhotoID`) VALUES
(1, 42, 1, 0),
(2, 42, 2, 0),
(3, 42, 3, 0),
(4, 44, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Live`
--

CREATE TABLE `Calendar_Live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Calendar_Versions`
--

CREATE TABLE `Calendar_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CarsAndClasses_Component_CarsAndClasses`
--

CREATE TABLE `CarsAndClasses_Component_CarsAndClasses` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CarsAndClasses_Component_CarsAndClasses_Live`
--

CREATE TABLE `CarsAndClasses_Component_CarsAndClasses_Live` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CarsAndClasses_Component_CarsAndClasses_Versions`
--

CREATE TABLE `CarsAndClasses_Component_CarsAndClasses_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ChangeSet`
--

CREATE TABLE `ChangeSet` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `State` enum('open','published','reverted') CHARACTER SET utf8 DEFAULT 'open',
  `IsInferred` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Description` mediumtext CHARACTER SET utf8,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ChangeSet`
--

INSERT INTO `ChangeSet` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `State`, `IsInferred`, `Description`, `PublishDate`, `LastSynced`, `OwnerID`, `PublisherID`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:43:57', '2018-08-06 07:43:57', 'Generated by publish of \'Calendar\' at Aug 6, 2018, 7:43:57 AM', 'published', 1, NULL, '2018-08-06 07:43:57', '2018-08-06 07:43:57', 0, 1),
(2, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:45:43', '2018-08-06 07:45:43', 'Generated by publish of \'Standings & Results\' at Aug 6, 2018, 7:45:43 AM', 'published', 1, NULL, '2018-08-06 07:45:43', '2018-08-06 07:45:43', 0, 1),
(3, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:47:54', '2018-08-06 07:47:53', 'Generated by publish of \'How to get involved\' at Aug 6, 2018, 7:47:53 AM', 'published', 1, NULL, '2018-08-06 07:47:54', '2018-08-06 07:47:53', 0, 1),
(4, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:48:27', '2018-08-06 07:48:27', 'Generated by publish of \'How to get involved\' at Aug 6, 2018, 7:48:27 AM', 'published', 1, NULL, '2018-08-06 07:48:27', '2018-08-06 07:48:27', 0, 1),
(5, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:50:58', '2018-08-06 07:50:57', 'Generated by publish of \'Media\' at Aug 6, 2018, 7:50:57 AM', 'published', 1, NULL, '2018-08-06 07:50:58', '2018-08-06 07:50:57', 0, 1),
(6, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:51:03', '2018-08-06 07:51:02', 'Generated by publish of \'Media\' at Aug 6, 2018, 7:51:02 AM', 'published', 1, NULL, '2018-08-06 07:51:03', '2018-08-06 07:51:02', 0, 1),
(7, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:51:33', '2018-08-06 07:51:33', 'Generated by publish of \'Cars and Classes\' at Aug 6, 2018, 7:51:33 AM', 'published', 1, NULL, '2018-08-06 07:51:33', '2018-08-06 07:51:33', 0, 1),
(8, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:51:39', '2018-08-06 07:51:39', 'Generated by publish of \'Cars and Classes\' at Aug 6, 2018, 7:51:39 AM', 'published', 1, NULL, '2018-08-06 07:51:39', '2018-08-06 07:51:39', 0, 1),
(9, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:54:46', '2018-08-06 07:54:46', 'Generated by publish of \'Simraceway\' at Aug 6, 2018, 7:54:46 AM', 'published', 1, NULL, '2018-08-06 07:54:46', '2018-08-06 07:54:46', 0, 1),
(10, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 07:55:39', '2018-08-06 07:55:39', 'Generated by publish of \'Mirani, Dharati\' at Aug 6, 2018, 7:55:39 AM', 'published', 1, NULL, '2018-08-06 07:55:39', '2018-08-06 07:55:39', 0, 1),
(11, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 08:08:43', '2018-08-06 08:08:43', 'Generated by publish of \'Simraceway\' at Aug 6, 2018, 8:08:43 AM', 'published', 1, NULL, '2018-08-06 08:08:43', '2018-08-06 08:08:43', 0, 1),
(12, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 08:10:04', '2018-08-06 08:10:04', 'Generated by publish of \'series\' at Aug 6, 2018, 8:10:04 AM', 'published', 1, NULL, '2018-08-06 08:10:04', '2018-08-06 08:10:04', 0, 1),
(13, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-06 08:19:27', '2018-08-06 08:19:27', 'Generated by publish of \'series\' at Aug 6, 2018, 8:19:27 AM', 'published', 1, NULL, '2018-08-06 08:19:27', '2018-08-06 08:19:27', 0, 1),
(14, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:25:33', '2018-08-07 00:25:32', 'Generated by publish of \'series\' at Aug 7, 2018, 12:25:32 AM', 'published', 1, NULL, '2018-08-07 00:25:33', '2018-08-07 00:25:33', 0, 1),
(15, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:27:52', '2018-08-07 00:27:52', 'Generated by publish of \'series\' at Aug 7, 2018, 12:27:52 AM', 'published', 1, NULL, '2018-08-07 00:27:52', '2018-08-07 00:27:52', 0, 1),
(16, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:28:27', '2018-08-07 00:28:27', 'Generated by publish of \'series\' at Aug 7, 2018, 12:28:27 AM', 'published', 1, NULL, '2018-08-07 00:28:27', '2018-08-07 00:28:27', 0, 1),
(17, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:35:18', '2018-08-07 00:35:18', 'Generated by publish of \'series\' at Aug 7, 2018, 12:35:18 AM', 'published', 1, NULL, '2018-08-07 00:35:18', '2018-08-07 00:35:18', 0, 1),
(18, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:38:49', '2018-08-07 00:38:49', 'Generated by publish of \'series\' at Aug 7, 2018, 12:38:49 AM', 'published', 1, NULL, '2018-08-07 00:38:49', '2018-08-07 00:38:49', 0, 1),
(19, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:54:37', '2018-08-07 00:54:37', 'Generated by publish of \'series\' at Aug 7, 2018, 12:54:37 AM', 'published', 1, NULL, '2018-08-07 00:54:37', '2018-08-07 00:54:37', 0, 1),
(20, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 00:56:42', '2018-08-07 00:56:42', 'Generated by publish of \'series\' at Aug 7, 2018, 12:56:42 AM', 'published', 1, NULL, '2018-08-07 00:56:42', '2018-08-07 00:56:42', 0, 1),
(21, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 02:53:06', '2018-08-07 02:53:06', 'Generated by publish of \'Home\' at Aug 7, 2018, 2:53:06 AM', 'published', 1, NULL, '2018-08-07 02:53:06', '2018-08-07 02:53:06', 0, 1),
(22, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 02:54:00', '2018-08-07 02:54:00', 'Generated by publish of \'brahmbhatt, snehal\' at Aug 7, 2018, 2:54:00 AM', 'published', 1, NULL, '2018-08-07 02:54:00', '2018-08-07 02:54:00', 0, 1),
(23, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 03:25:25', '2018-08-07 03:25:25', 'Generated by publish of \'Home\' at Aug 7, 2018, 3:25:25 AM', 'published', 1, NULL, '2018-08-07 03:25:25', '2018-08-07 03:25:25', 0, 1),
(24, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 03:25:58', '2018-08-07 03:25:58', 'Generated by publish of \'Home\' at Aug 7, 2018, 3:25:58 AM', 'published', 1, NULL, '2018-08-07 03:25:58', '2018-08-07 03:25:58', 0, 1),
(25, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-07 08:30:55', '2018-08-07 08:30:54', 'Generated by publish of \'Home\' at Aug 7, 2018, 8:30:54 AM', 'published', 1, NULL, '2018-08-07 08:30:55', '2018-08-07 08:30:55', 0, 1),
(26, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-08 23:52:54', '2018-08-08 23:52:54', 'Generated by publish of \'New Events Detail\' at Aug 8, 2018, 11:52:54 PM', 'published', 1, NULL, '2018-08-08 23:52:54', '2018-08-08 23:52:54', 0, 1),
(27, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-09 03:17:39', '2018-08-09 03:17:37', 'Generated by publish of \'New Events Detail\' at Aug 9, 2018, 3:17:37 AM', 'published', 1, NULL, '2018-08-09 03:17:39', '2018-08-09 03:17:38', 0, 1),
(28, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-10 04:32:20', '2018-08-10 04:32:19', 'Generated by publish of \'New Events Detail\' at Aug 10, 2018, 4:32:19 AM', 'published', 1, NULL, '2018-08-10 04:32:20', '2018-08-10 04:32:20', 0, 1),
(29, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-10 04:32:58', '2018-08-10 04:32:57', 'Generated by publish of \'New Events Detail\' at Aug 10, 2018, 4:32:57 AM', 'published', 1, NULL, '2018-08-10 04:32:58', '2018-08-10 04:32:57', 0, 1),
(30, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-13 00:31:21', '2018-08-13 00:31:20', 'Generated by publish of \'series\' at Aug 13, 2018, 12:31:20 AM', 'published', 1, NULL, '2018-08-13 00:31:21', '2018-08-13 00:31:20', 0, 1),
(31, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-13 01:21:58', '2018-08-13 01:21:56', 'Generated by publish of \'New Events Detail\' at Aug 13, 2018, 1:21:56 AM', 'published', 1, NULL, '2018-08-13 01:21:58', '2018-08-13 01:21:57', 0, 1),
(32, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-13 01:50:07', '2018-08-13 01:50:05', 'Generated by publish of \'New Events Detail\' at Aug 13, 2018, 1:50:05 AM', 'published', 1, NULL, '2018-08-13 01:50:07', '2018-08-13 01:50:06', 0, 1),
(33, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-13 02:21:52', '2018-08-13 02:21:50', 'Generated by publish of \'New Events Detail\' at Aug 13, 2018, 2:21:50 AM', 'published', 1, NULL, '2018-08-13 02:21:52', '2018-08-13 02:21:51', 0, 1),
(34, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-14 02:38:19', '2018-08-14 02:38:18', 'Generated by publish of \'Gallary\' at Aug 14, 2018, 2:38:18 AM', 'published', 1, NULL, '2018-08-14 02:38:19', '2018-08-14 02:38:19', 0, 1),
(35, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-14 02:38:30', '2018-08-14 02:38:29', 'Generated by publish of \'HOME\' at Aug 14, 2018, 2:38:29 AM', 'published', 1, NULL, '2018-08-14 02:38:30', '2018-08-14 02:38:29', 0, 1),
(36, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-14 02:54:12', '2018-08-14 02:54:10', 'Generated by publish of \'How to get involved\' at Aug 14, 2018, 2:54:10 AM', 'published', 1, NULL, '2018-08-14 02:54:12', '2018-08-14 02:54:11', 0, 1),
(37, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-14 02:54:47', '2018-08-14 02:54:47', 'Generated by publish of \'HOME\' at Aug 14, 2018, 2:54:47 AM', 'published', 1, NULL, '2018-08-14 02:54:47', '2018-08-14 02:54:47', 0, 1),
(38, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-17 13:20:31', '2018-08-17 13:20:31', 'Generated by publish of \'series\' at Aug 17, 2018, 1:20:31 PM', 'published', 1, NULL, '2018-08-17 13:20:31', '2018-08-17 13:20:31', 0, 1),
(39, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-17 13:24:11', '2018-08-17 13:24:10', 'Generated by publish of \'New Page\' at Aug 17, 2018, 1:24:10 PM', 'published', 1, NULL, '2018-08-17 13:24:11', '2018-08-17 13:24:10', 0, 1),
(40, 'SilverStripe\\Versioned\\ChangeSet', '2018-08-20 02:18:01', '2018-08-20 02:18:01', 'Generated by publish of \'Home\' at Aug 20, 2018, 2:18:01 AM', 'published', 1, NULL, '2018-08-20 02:18:01', '2018-08-20 02:18:01', 0, 1),
(41, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-10 03:15:51', '2018-09-10 03:15:46', 'Generated by publish of \'Home\' at Sep 10, 2018, 3:15:46 AM', 'published', 1, NULL, '2018-09-10 03:15:51', '2018-09-10 03:15:47', 0, 1),
(42, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-11 07:26:10', '2018-09-11 07:26:10', 'Generated by publish of \'series\' at Sep 11, 2018, 7:26:10 AM', 'published', 1, NULL, '2018-09-11 07:26:10', '2018-09-11 07:26:10', 0, 1),
(43, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 06:02:32', '2018-09-24 06:02:30', 'Generated by publish of \'Add Cars And Classes 1\' at Sep 24, 2018, 6:02:30 AM', 'published', 1, NULL, '2018-09-24 06:02:32', '2018-09-24 06:02:31', 0, 1),
(44, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 06:02:48', '2018-09-24 06:02:47', 'Generated by publish of \'Cars And Classes\' at Sep 24, 2018, 6:02:47 AM', 'published', 1, NULL, '2018-09-24 06:02:48', '2018-09-24 06:02:47', 0, 1),
(45, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 07:03:40', '2018-09-24 07:03:40', 'Generated by publish of \'Open Practice Cart only\' at Sep 24, 2018, 7:03:40 AM', 'published', 1, NULL, '2018-09-24 07:03:40', '2018-09-24 07:03:40', 0, 1),
(46, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 07:04:17', '2018-09-24 07:04:17', 'Generated by publish of \'New Calendar Page\' at Sep 24, 2018, 7:04:17 AM', 'published', 1, NULL, '2018-09-24 07:04:17', '2018-09-24 07:04:17', 0, 1),
(47, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 07:05:00', '2018-09-24 07:05:00', 'Generated by publish of \'Event Calendar 2018\' at Sep 24, 2018, 7:05:00 AM', 'published', 1, NULL, '2018-09-24 07:05:00', '2018-09-24 07:05:00', 0, 1),
(48, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 07:05:43', '2018-09-24 07:05:43', 'Generated by publish of \'Test Events\' at Sep 24, 2018, 7:05:43 AM', 'published', 1, NULL, '2018-09-24 07:05:43', '2018-09-24 07:05:43', 0, 1),
(49, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 07:05:48', '2018-09-24 07:05:48', 'Generated by publish of \'Test Events\' at Sep 24, 2018, 7:05:48 AM', 'published', 1, NULL, '2018-09-24 07:05:48', '2018-09-24 07:05:48', 0, 1),
(50, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-24 07:25:36', '2018-09-24 07:25:36', 'Generated by publish of \'Test Event\' at Sep 24, 2018, 7:25:36 AM', 'published', 1, NULL, '2018-09-24 07:25:36', '2018-09-24 07:25:36', 0, 1),
(51, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-25 03:07:11', '2018-09-25 03:07:11', 'Generated by publish of \'Demo\' at Sep 25, 2018, 3:07:11 AM', 'published', 1, NULL, '2018-09-25 03:07:11', '2018-09-25 03:07:11', 0, 1),
(52, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-25 03:07:54', '2018-09-25 03:07:54', 'Generated by publish of \'past event\' at Sep 25, 2018, 3:07:54 AM', 'published', 1, NULL, '2018-09-25 03:07:54', '2018-09-25 03:07:54', 0, 1),
(53, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-25 05:15:29', '2018-09-25 05:15:29', 'Generated by publish of \'Demo 2\' at Sep 25, 2018, 5:15:29 AM', 'published', 1, NULL, '2018-09-25 05:15:29', '2018-09-25 05:15:29', 0, 1),
(54, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-27 08:23:11', '2018-09-27 08:23:11', 'Generated by publish of \'Event Calendar\' at Sep 27, 2018, 8:23:10 AM', 'published', 1, NULL, '2018-09-27 08:23:11', '2018-09-27 08:23:11', 0, 1),
(55, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-28 06:24:30', '2018-09-28 06:24:25', 'Generated by publish of \'Home\' at Sep 28, 2018, 6:24:25 AM', 'published', 1, NULL, '2018-09-28 06:24:30', '2018-09-28 06:24:27', 0, 1),
(56, 'SilverStripe\\Versioned\\ChangeSet', '2018-09-28 08:30:03', '2018-09-28 08:30:02', 'Generated by publish of \'Standing And Result\' at Sep 28, 2018, 8:30:02 AM', 'published', 1, NULL, '2018-09-28 08:30:03', '2018-09-28 08:30:02', 0, 1),
(57, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-03 05:30:07', '2018-10-03 05:30:06', 'Generated by publish of \'Race\' at Oct 3, 2018, 5:30:06 AM', 'published', 1, NULL, '2018-10-03 05:30:07', '2018-10-03 05:30:06', 0, 1),
(58, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-03 05:30:26', '2018-10-03 05:30:25', 'Generated by publish of \'Race\' at Oct 3, 2018, 5:30:25 AM', 'published', 1, NULL, '2018-10-03 05:30:26', '2018-10-03 05:30:25', 0, 1),
(59, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-03 05:34:17', '2018-10-03 05:34:16', 'Generated by publish of \'New Calendar Page\' at Oct 3, 2018, 5:34:16 AM', 'published', 1, NULL, '2018-10-03 05:34:17', '2018-10-03 05:34:16', 0, 1),
(60, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-03 05:42:45', '2018-10-03 05:42:45', 'Generated by publish of \'Race 2\' at Oct 3, 2018, 5:42:45 AM', 'published', 1, NULL, '2018-10-03 05:42:45', '2018-10-03 05:42:45', 0, 1),
(61, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 04:42:18', '2018-10-04 04:42:17', 'Generated by publish of \'Open Practice KARTS Only\' at Oct 4, 2018, 4:42:17 AM', 'published', 1, NULL, '2018-10-04 04:42:18', '2018-10-04 04:42:17', 0, 1),
(62, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 04:43:04', '2018-10-04 04:43:02', 'Generated by publish of \'New Calendar Page\' at Oct 4, 2018, 4:43:02 AM', 'published', 1, NULL, '2018-10-04 04:43:04', '2018-10-04 04:43:03', 0, 1),
(63, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:10:14', '2018-10-04 05:10:11', 'Generated by publish of \'New Home\' at Oct 4, 2018, 5:10:11 AM', 'published', 1, NULL, '2018-10-04 05:10:14', '2018-10-04 05:10:12', 0, 1),
(64, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:14:35', '2018-10-04 05:14:31', 'Generated by publish of \'Home\' at Oct 4, 2018, 5:14:31 AM', 'published', 1, NULL, '2018-10-04 05:14:35', '2018-10-04 05:14:32', 0, 1),
(65, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:16:48', '2018-10-04 05:16:43', 'Generated by publish of \'Home\' at Oct 4, 2018, 5:16:43 AM', 'published', 1, NULL, '2018-10-04 05:16:48', '2018-10-04 05:16:45', 0, 1),
(66, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:24:32', '2018-10-04 05:24:32', 'Generated by publish of \'Calendar Page\' at Oct 4, 2018, 5:24:32 AM', 'published', 1, NULL, '2018-10-04 05:24:32', '2018-10-04 05:24:32', 0, 1),
(67, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:25:16', '2018-10-04 05:25:16', 'Generated by publish of \'Calendar\' at Oct 4, 2018, 5:25:16 AM', 'published', 1, NULL, '2018-10-04 05:25:16', '2018-10-04 05:25:16', 0, 1),
(68, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:35:50', '2018-10-04 05:35:49', 'Generated by publish of \'Open Practice KARTS Only\' at Oct 4, 2018, 5:35:49 AM', 'published', 1, NULL, '2018-10-04 05:35:50', '2018-10-04 05:35:50', 0, 1),
(69, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-04 05:56:49', '2018-10-04 05:56:48', 'Generated by publish of \'Calendar\' at Oct 4, 2018, 5:56:48 AM', 'published', 1, NULL, '2018-10-04 05:56:49', '2018-10-04 05:56:48', 0, 1),
(70, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-05 00:29:48', '2018-10-05 00:29:48', 'Generated by publish of \'Race 1\' at Oct 5, 2018, 12:29:48 AM', 'published', 1, NULL, '2018-10-05 00:29:48', '2018-10-05 00:29:48', 0, 1),
(71, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-05 07:35:14', '2018-10-05 07:35:10', 'Generated by publish of \'Standing And Result\' at Oct 5, 2018, 7:35:10 AM', 'published', 1, NULL, '2018-10-05 07:35:14', '2018-10-05 07:35:11', 0, 1),
(72, 'SilverStripe\\Versioned\\ChangeSet', '2018-10-05 07:39:48', '2018-10-05 07:39:44', 'Generated by publish of \'Standing And Result\' at Oct 5, 2018, 7:39:44 AM', 'published', 1, NULL, '2018-10-05 07:39:48', '2018-10-05 07:39:45', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ChangeSetItem`
--

CREATE TABLE `ChangeSetItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int(11) NOT NULL DEFAULT '0',
  `VersionAfter` int(11) NOT NULL DEFAULT '0',
  `Added` enum('explicitly','implicitly') CHARACTER SET utf8 DEFAULT 'implicitly',
  `ChangeSetID` int(11) NOT NULL DEFAULT '0',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `ObjectClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ChangeSetItem`
--

INSERT INTO `ChangeSetItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `VersionBefore`, `VersionAfter`, `Added`, `ChangeSetID`, `ObjectID`, `ObjectClass`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:43:57', '2018-08-06 07:43:57', 2, 4, 'explicitly', 1, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(2, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:45:43', '2018-08-06 07:45:43', 2, 4, 'explicitly', 2, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(3, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:47:54', '2018-08-06 07:47:53', 0, 3, 'explicitly', 3, 6, 'SilverStripe\\CMS\\Model\\SiteTree'),
(4, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:48:27', '2018-08-06 07:48:27', 3, 5, 'explicitly', 4, 6, 'SilverStripe\\CMS\\Model\\SiteTree'),
(5, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:50:58', '2018-08-06 07:50:57', 0, 3, 'explicitly', 5, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(6, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:51:03', '2018-08-06 07:51:02', 3, 5, 'explicitly', 6, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(7, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:51:33', '2018-08-06 07:51:33', 0, 3, 'explicitly', 7, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(8, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:51:39', '2018-08-06 07:51:39', 3, 5, 'explicitly', 8, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(9, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:54:46', '2018-08-06 07:54:46', 0, 0, 'explicitly', 9, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(10, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 07:55:39', '2018-08-06 07:55:39', 0, 0, 'explicitly', 10, 1, 'SilverStripe\\Security\\Member'),
(11, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 08:08:43', '2018-08-06 08:08:43', 0, 0, 'explicitly', 11, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(12, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 08:10:04', '2018-08-06 08:10:04', 0, 0, 'explicitly', 12, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(13, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-06 08:19:27', '2018-08-06 08:19:27', 0, 0, 'explicitly', 13, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(14, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:25:33', '2018-08-07 00:25:32', 0, 0, 'explicitly', 14, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(15, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:27:52', '2018-08-07 00:27:52', 0, 0, 'explicitly', 15, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(16, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:28:27', '2018-08-07 00:28:27', 0, 0, 'explicitly', 16, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(17, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:35:18', '2018-08-07 00:35:18', 0, 0, 'explicitly', 17, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(18, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:38:49', '2018-08-07 00:38:49', 0, 0, 'explicitly', 18, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(19, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:54:37', '2018-08-07 00:54:37', 0, 0, 'explicitly', 19, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(20, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 00:56:42', '2018-08-07 00:56:42', 0, 0, 'explicitly', 20, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(21, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 02:53:06', '2018-08-07 02:53:06', 2, 4, 'explicitly', 21, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(22, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 02:54:00', '2018-08-07 02:54:00', 0, 0, 'explicitly', 22, 2, 'SilverStripe\\Security\\Member'),
(23, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 03:25:25', '2018-08-07 03:25:25', 4, 6, 'explicitly', 23, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(24, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 03:25:58', '2018-08-07 03:25:58', 6, 8, 'explicitly', 24, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(25, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-07 08:30:55', '2018-08-07 08:30:54', 8, 10, 'explicitly', 25, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(26, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-08 23:52:54', '2018-08-08 23:52:54', 0, 5, 'explicitly', 26, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(27, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-09 03:17:39', '2018-08-09 03:17:38', 0, 7, 'explicitly', 27, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(28, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-10 04:32:20', '2018-08-10 04:32:19', 0, 3, 'explicitly', 28, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(29, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-10 04:32:58', '2018-08-10 04:32:57', 3, 5, 'explicitly', 29, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(30, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-13 00:31:20', '2018-08-13 00:31:20', 0, 0, 'explicitly', 30, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(31, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-13 01:21:57', '2018-08-13 01:21:56', 0, 9, 'explicitly', 31, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(32, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-13 01:21:58', '2018-08-13 01:21:57', 0, 2, 'implicitly', 31, 4, 'SilverStripe\\Assets\\File'),
(33, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-13 01:50:07', '2018-08-13 01:50:05', 0, 12, 'explicitly', 32, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(34, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-13 01:50:07', '2018-08-13 01:50:06', 2, 2, 'implicitly', 32, 4, 'SilverStripe\\Assets\\File'),
(35, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-13 02:21:52', '2018-08-13 02:21:50', 0, 13, 'explicitly', 33, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(36, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-14 02:38:19', '2018-08-14 02:38:18', 0, 4, 'explicitly', 34, 19, 'SilverStripe\\CMS\\Model\\SiteTree'),
(37, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-14 02:38:30', '2018-08-14 02:38:29', 0, 3, 'explicitly', 35, 17, 'SilverStripe\\CMS\\Model\\SiteTree'),
(38, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-14 02:54:12', '2018-08-14 02:54:11', 5, 7, 'explicitly', 36, 6, 'SilverStripe\\CMS\\Model\\SiteTree'),
(39, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-14 02:54:47', '2018-08-14 02:54:47', 3, 5, 'explicitly', 37, 17, 'SilverStripe\\CMS\\Model\\SiteTree'),
(40, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-17 13:20:31', '2018-08-17 13:20:31', 0, 0, 'explicitly', 38, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(41, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-17 13:24:11', '2018-08-17 13:24:10', 5, 8, 'explicitly', 39, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(42, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-08-20 02:18:01', '2018-08-20 02:18:01', 0, 9, 'explicitly', 40, 17, 'SilverStripe\\CMS\\Model\\SiteTree'),
(43, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:47', '2018-09-10 03:15:46', 9, 9, 'explicitly', 41, 17, 'SilverStripe\\CMS\\Model\\SiteTree'),
(44, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:48', '2018-09-10 03:15:46', 0, 2, 'implicitly', 41, 22, 'SilverStripe\\Assets\\File'),
(45, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:48', '2018-09-10 03:15:46', 0, 2, 'implicitly', 41, 21, 'SilverStripe\\Assets\\File'),
(46, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:48', '2018-09-10 03:15:47', 0, 2, 'implicitly', 41, 14, 'SilverStripe\\Assets\\File'),
(47, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:49', '2018-09-10 03:15:47', 0, 2, 'implicitly', 41, 16, 'SilverStripe\\Assets\\File'),
(48, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:49', '2018-09-10 03:15:47', 0, 2, 'implicitly', 41, 17, 'SilverStripe\\Assets\\File'),
(49, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:50', '2018-09-10 03:15:47', 0, 2, 'implicitly', 41, 18, 'SilverStripe\\Assets\\File'),
(50, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:50', '2018-09-10 03:15:47', 0, 2, 'implicitly', 41, 15, 'SilverStripe\\Assets\\File'),
(51, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-10 03:15:50', '2018-09-10 03:15:47', 0, 2, 'implicitly', 41, 13, 'SilverStripe\\Assets\\File'),
(52, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-11 07:26:10', '2018-09-11 07:26:10', 0, 0, 'explicitly', 42, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(53, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 06:02:31', '2018-09-24 06:02:30', 0, 3, 'explicitly', 43, 35, 'SilverStripe\\CMS\\Model\\SiteTree'),
(54, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 06:02:32', '2018-09-24 06:02:31', 0, 2, 'implicitly', 43, 48, 'SilverStripe\\Assets\\File'),
(55, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 06:02:32', '2018-09-24 06:02:31', 0, 2, 'implicitly', 43, 49, 'SilverStripe\\Assets\\File'),
(56, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 06:02:32', '2018-09-24 06:02:31', 0, 2, 'implicitly', 43, 47, 'SilverStripe\\Assets\\File'),
(57, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 06:02:47', '2018-09-24 06:02:47', 0, 3, 'explicitly', 44, 34, 'SilverStripe\\CMS\\Model\\SiteTree'),
(58, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 07:03:40', '2018-09-24 07:03:40', 0, 0, 'explicitly', 45, 1, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(61, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 07:05:43', '2018-09-24 07:05:43', 0, 0, 'explicitly', 48, 2, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(62, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 07:05:48', '2018-09-24 07:05:48', 0, 0, 'explicitly', 49, 2, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(63, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 07:25:36', '2018-09-24 07:25:36', 0, 0, 'explicitly', 50, 3, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(64, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-24 07:25:36', '2018-09-24 07:25:36', 0, 2, 'implicitly', 50, 52, 'SilverStripe\\Assets\\File'),
(65, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-25 03:07:11', '2018-09-25 03:07:11', 0, 0, 'explicitly', 51, 4, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(66, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-25 03:07:54', '2018-09-25 03:07:54', 0, 0, 'explicitly', 52, 5, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(67, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-25 05:15:29', '2018-09-25 05:15:29', 0, 0, 'explicitly', 53, 6, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(69, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:27', '2018-09-28 06:24:26', 0, 19, 'explicitly', 55, 17, 'SilverStripe\\CMS\\Model\\SiteTree'),
(70, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:28', '2018-09-28 06:24:26', 0, 2, 'implicitly', 55, 44, 'SilverStripe\\Assets\\File'),
(71, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:28', '2018-09-28 06:24:26', 0, 2, 'implicitly', 55, 46, 'SilverStripe\\Assets\\File'),
(72, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:26', 0, 2, 'implicitly', 55, 45, 'SilverStripe\\Assets\\File'),
(73, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:26', 2, 2, 'implicitly', 55, 14, 'SilverStripe\\Assets\\File'),
(74, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:26', 2, 2, 'implicitly', 55, 16, 'SilverStripe\\Assets\\File'),
(75, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:26', 2, 2, 'implicitly', 55, 17, 'SilverStripe\\Assets\\File'),
(76, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:26', 2, 2, 'implicitly', 55, 18, 'SilverStripe\\Assets\\File'),
(77, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:26', 2, 2, 'implicitly', 55, 15, 'SilverStripe\\Assets\\File'),
(78, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:29', '2018-09-28 06:24:27', 2, 2, 'implicitly', 55, 13, 'SilverStripe\\Assets\\File'),
(79, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:30', '2018-09-28 06:24:27', 0, 2, 'implicitly', 55, 36, 'SilverStripe\\Assets\\File'),
(80, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 06:24:30', '2018-09-28 06:24:27', 0, 2, 'implicitly', 55, 54, 'SilverStripe\\Assets\\File'),
(81, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 08:30:03', '2018-09-28 08:30:02', 0, 3, 'explicitly', 56, 46, 'SilverStripe\\CMS\\Model\\SiteTree'),
(82, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-09-28 08:30:03', '2018-09-28 08:30:02', 2, 2, 'implicitly', 56, 49, 'SilverStripe\\Assets\\File'),
(83, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-03 05:30:06', '2018-10-03 05:30:06', 0, 0, 'explicitly', 57, 7, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(84, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-03 05:30:26', '2018-10-03 05:30:25', 0, 0, 'explicitly', 58, 7, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(86, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-03 05:42:45', '2018-10-03 05:42:45', 0, 0, 'explicitly', 60, 8, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(87, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 04:42:17', '2018-10-04 04:42:17', 0, 0, 'explicitly', 61, 9, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(88, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 04:42:18', '2018-10-04 04:42:17', 0, 2, 'implicitly', 61, 19, 'SilverStripe\\Assets\\File'),
(89, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 04:43:03', '2018-10-04 04:43:02', 0, 2, 'explicitly', 62, 53, 'SilverStripe\\CMS\\Model\\SiteTree'),
(90, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:10:13', '2018-10-04 05:10:11', 0, 2, 'explicitly', 63, 63, 'SilverStripe\\CMS\\Model\\SiteTree'),
(91, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:10:13', '2018-10-04 05:10:12', 0, 2, 'implicitly', 63, 55, 'SilverStripe\\Assets\\File'),
(92, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:10:14', '2018-10-04 05:10:12', 2, 2, 'implicitly', 63, 54, 'SilverStripe\\Assets\\File'),
(93, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:33', '2018-10-04 05:14:31', 2, 5, 'explicitly', 64, 63, 'SilverStripe\\CMS\\Model\\SiteTree'),
(94, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:33', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 55, 'SilverStripe\\Assets\\File'),
(95, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:34', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 54, 'SilverStripe\\Assets\\File'),
(96, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:34', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 46, 'SilverStripe\\Assets\\File'),
(97, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:34', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 14, 'SilverStripe\\Assets\\File'),
(98, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:34', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 16, 'SilverStripe\\Assets\\File'),
(99, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:34', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 13, 'SilverStripe\\Assets\\File'),
(100, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:35', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 45, 'SilverStripe\\Assets\\File'),
(101, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:14:35', '2018-10-04 05:14:32', 2, 2, 'implicitly', 64, 49, 'SilverStripe\\Assets\\File'),
(102, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:46', '2018-10-04 05:16:43', 5, 7, 'explicitly', 65, 63, 'SilverStripe\\CMS\\Model\\SiteTree'),
(103, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:46', '2018-10-04 05:16:44', 2, 2, 'implicitly', 65, 55, 'SilverStripe\\Assets\\File'),
(104, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:46', '2018-10-04 05:16:44', 2, 2, 'implicitly', 65, 54, 'SilverStripe\\Assets\\File'),
(105, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:47', '2018-10-04 05:16:44', 2, 2, 'implicitly', 65, 46, 'SilverStripe\\Assets\\File'),
(106, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:47', '2018-10-04 05:16:44', 2, 2, 'implicitly', 65, 14, 'SilverStripe\\Assets\\File'),
(107, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:47', '2018-10-04 05:16:44', 2, 2, 'implicitly', 65, 16, 'SilverStripe\\Assets\\File'),
(108, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:47', '2018-10-04 05:16:44', 2, 2, 'implicitly', 65, 13, 'SilverStripe\\Assets\\File'),
(109, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:47', '2018-10-04 05:16:45', 2, 2, 'implicitly', 65, 45, 'SilverStripe\\Assets\\File'),
(110, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:48', '2018-10-04 05:16:45', 2, 2, 'implicitly', 65, 49, 'SilverStripe\\Assets\\File'),
(111, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:16:48', '2018-10-04 05:16:45', 2, 2, 'implicitly', 65, 47, 'SilverStripe\\Assets\\File'),
(112, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:24:32', '2018-10-04 05:24:32', 2, 4, 'explicitly', 66, 53, 'SilverStripe\\CMS\\Model\\SiteTree'),
(113, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:25:16', '2018-10-04 05:25:16', 4, 6, 'explicitly', 67, 53, 'SilverStripe\\CMS\\Model\\SiteTree'),
(114, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:35:50', '2018-10-04 05:35:49', 0, 0, 'explicitly', 68, 9, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(115, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:35:50', '2018-10-04 05:35:50', 2, 2, 'implicitly', 68, 19, 'SilverStripe\\Assets\\File'),
(116, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:56:49', '2018-10-04 05:56:48', 6, 9, 'explicitly', 69, 53, 'SilverStripe\\CMS\\Model\\SiteTree'),
(117, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-04 05:56:49', '2018-10-04 05:56:48', 2, 2, 'implicitly', 69, 55, 'SilverStripe\\Assets\\File'),
(118, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 00:29:48', '2018-10-05 00:29:48', 0, 0, 'explicitly', 70, 10, 'PurpleSpider\\BasicCalendar\\CalendarEntry'),
(119, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 00:29:48', '2018-10-05 00:29:48', 2, 2, 'implicitly', 70, 52, 'SilverStripe\\Assets\\File'),
(120, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:12', '2018-10-05 07:35:11', 3, 6, 'explicitly', 71, 46, 'SilverStripe\\CMS\\Model\\SiteTree'),
(121, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:12', '2018-10-05 07:35:11', 2, 2, 'implicitly', 71, 49, 'SilverStripe\\Assets\\File'),
(122, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:12', '2018-10-05 07:35:11', 2, 2, 'implicitly', 71, 55, 'SilverStripe\\Assets\\File'),
(123, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:12', '2018-10-05 07:35:11', 2, 2, 'implicitly', 71, 54, 'SilverStripe\\Assets\\File'),
(124, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:13', '2018-10-05 07:35:11', 0, 2, 'implicitly', 71, 53, 'SilverStripe\\Assets\\File'),
(125, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:13', '2018-10-05 07:35:11', 0, 2, 'implicitly', 71, 56, 'SilverStripe\\Assets\\File'),
(126, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:13', '2018-10-05 07:35:11', 2, 2, 'implicitly', 71, 48, 'SilverStripe\\Assets\\File'),
(127, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:14', '2018-10-05 07:35:11', 0, 2, 'implicitly', 71, 57, 'SilverStripe\\Assets\\File'),
(128, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:35:14', '2018-10-05 07:35:11', 2, 2, 'implicitly', 71, 47, 'SilverStripe\\Assets\\File'),
(129, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:46', '2018-10-05 07:39:44', 6, 6, 'explicitly', 72, 46, 'SilverStripe\\CMS\\Model\\SiteTree'),
(130, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:46', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 49, 'SilverStripe\\Assets\\File'),
(131, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:46', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 55, 'SilverStripe\\Assets\\File'),
(132, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:46', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 54, 'SilverStripe\\Assets\\File'),
(133, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:46', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 56, 'SilverStripe\\Assets\\File'),
(134, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:46', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 48, 'SilverStripe\\Assets\\File'),
(135, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:47', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 57, 'SilverStripe\\Assets\\File'),
(136, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:47', '2018-10-05 07:39:45', 0, 2, 'implicitly', 72, 58, 'SilverStripe\\Assets\\File'),
(137, 'SilverStripe\\Versioned\\ChangeSetItem', '2018-10-05 07:39:47', '2018-10-05 07:39:45', 2, 2, 'implicitly', 72, 47, 'SilverStripe\\Assets\\File');

-- --------------------------------------------------------

--
-- Table structure for table `ChangeSetItem_ReferencedBy`
--

CREATE TABLE `ChangeSetItem_ReferencedBy` (
  `ID` int(11) NOT NULL,
  `ChangeSetItemID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ChangeSetItem_ReferencedBy`
--

INSERT INTO `ChangeSetItem_ReferencedBy` (`ID`, `ChangeSetItemID`, `ChildID`) VALUES
(1, 32, 31),
(2, 34, 33),
(3, 44, 43),
(4, 45, 43),
(5, 46, 43),
(6, 47, 43),
(7, 48, 43),
(8, 49, 43),
(9, 50, 43),
(10, 51, 43),
(11, 54, 53),
(12, 55, 53),
(13, 56, 53),
(14, 64, 63),
(15, 70, 69),
(16, 71, 69),
(17, 72, 69),
(18, 73, 69),
(19, 74, 69),
(20, 75, 69),
(21, 76, 69),
(22, 77, 69),
(23, 78, 69),
(24, 79, 69),
(25, 80, 69),
(26, 82, 81),
(27, 88, 87),
(28, 91, 90),
(29, 92, 90),
(30, 94, 93),
(31, 95, 93),
(32, 96, 93),
(33, 97, 93),
(34, 98, 93),
(35, 99, 93),
(36, 100, 93),
(37, 101, 93),
(38, 103, 102),
(39, 104, 102),
(40, 105, 102),
(41, 106, 102),
(42, 107, 102),
(43, 108, 102),
(44, 109, 102),
(45, 110, 102),
(46, 111, 102),
(47, 115, 114),
(48, 117, 116),
(49, 119, 118),
(50, 121, 120),
(51, 122, 120),
(52, 123, 120),
(53, 124, 120),
(54, 125, 120),
(55, 126, 120),
(56, 127, 120),
(57, 128, 120),
(58, 130, 129),
(59, 131, 129),
(60, 132, 129),
(61, 133, 129),
(62, 134, 129),
(63, 135, 129),
(64, 136, 129),
(65, 137, 129);

-- --------------------------------------------------------

--
-- Table structure for table `ChildHowToGetInvolved`
--

CREATE TABLE `ChildHowToGetInvolved` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Titles` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ChildHowToGetInvolved`
--

INSERT INTO `ChildHowToGetInvolved` (`ID`, `Title`, `Price`, `About`, `Titles`) VALUES
(22, 'New Add New Get Involved', '59298', 'sdfsdfsdfdsf', 'Championship series package All 18 Races'),
(23, NULL, '$59,970', 'Lorem ipsum dolor sit amet, adipisic-ing elit, sed do eiusmod.', 'Championship Series Package All 18 Races'),
(31, NULL, '$00,0', 'Entry fee Waived for Turn 1 Club Members', 'Championship Series Package All 18 Races'),
(32, NULL, '$00,0', 'Total cost of Repair', 'Crash Damage'),
(84, NULL, '$6', 'This is only for demo', 'Demo'),
(85, NULL, '$8', 'This also for demo', 'Demo'),
(86, NULL, '$9 ', 'This also for demo', 'Demo');

-- --------------------------------------------------------

--
-- Table structure for table `ChildHowToGetInvolved_Live`
--

CREATE TABLE `ChildHowToGetInvolved_Live` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Titles` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ChildHowToGetInvolved_Versions`
--

CREATE TABLE `ChildHowToGetInvolved_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Titles` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ChildHowToGetInvolved_Versions`
--

INSERT INTO `ChildHowToGetInvolved_Versions` (`ID`, `RecordID`, `Version`, `Title`, `Price`, `About`, `Titles`) VALUES
(1, 22, 1, 'New Add New Get Involved', NULL, NULL, NULL),
(2, 22, 2, 'New Add New Get Involved', NULL, NULL, NULL),
(3, 22, 3, 'New Add New Get Involved', NULL, NULL, NULL),
(4, 22, 4, NULL, NULL, NULL, NULL),
(5, 22, 5, NULL, '59298', 'sdfsdfsdfdsf', 'Championship series package All 18 Races'),
(6, 23, 1, NULL, NULL, NULL, NULL),
(7, 23, 2, NULL, NULL, NULL, NULL),
(8, 23, 3, NULL, '2343434', 'asddsd', 'asdadasdas'),
(9, 23, 4, NULL, NULL, 'Lorem ipsum dolor sit amet, adipisic-ing elit, sed do eiusmod.', 'Championship Series Package All 18 Races'),
(10, 23, 5, NULL, '59970', 'Lorem ipsum dolor sit amet, adipisic-ing elit, sed do eiusmod.', 'Championship Series Package All 18 Races'),
(11, 31, 1, NULL, NULL, NULL, NULL),
(12, 31, 2, NULL, NULL, 'Entry fee Waived for Turn 1 Club Members', 'Championship Series Package All 18 Races'),
(13, 31, 3, NULL, '1', 'Entry fee Waived for Turn 1 Club Members', 'Championship Series Package All 18 Races'),
(14, 32, 1, NULL, NULL, NULL, NULL),
(15, 32, 2, NULL, NULL, 'Total cost of Repair', 'Crash Damage'),
(16, 32, 3, NULL, '1', 'Total cost of Repair', 'Crash Damage'),
(17, 23, 6, NULL, '$59,970', 'Lorem ipsum dolor sit amet, adipisic-ing elit, sed do eiusmod.', 'Championship Series Package All 18 Races'),
(18, 31, 4, NULL, '$0', 'Entry fee Waived for Turn 1 Club Members', 'Championship Series Package All 18 Races'),
(19, 31, 5, NULL, '$00,0', 'Entry fee Waived for Turn 1 Club Members', 'Championship Series Package All 18 Races'),
(20, 32, 4, NULL, '$00,0', 'Total cost of Repair', 'Crash Damage'),
(21, 84, 1, NULL, NULL, NULL, NULL),
(22, 84, 2, NULL, '$6', 'This is only for demo', 'Demo'),
(23, 84, 3, NULL, '$6', 'This is only for demo', 'Demo'),
(24, 85, 1, NULL, NULL, NULL, NULL),
(25, 85, 2, NULL, '$8', 'This also for demo', 'Demo'),
(26, 86, 1, NULL, NULL, NULL, NULL),
(27, 86, 2, NULL, '$9 ', 'This also for demo', 'Demo');

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `ClientPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`ID`, `Name`, `City`, `PhotoID`, `ClientPhotoID`) VALUES
(18, 'sonama raceway', 'UK', 4, 0),
(19, 'Aero', 'US', 11, 42),
(20, 'sonama', 'UK', 0, 37),
(26, 'Hammer', 'UK', 0, 39),
(27, 'marmot', 'AHMEDABAD', 0, 38),
(28, 'perelli', 'AHMEDABAD', 0, 40),
(29, 'polaris', 'canada', 0, 41),
(66, 'XYZ', 'AHMEDABAD', 0, 37),
(80, 'mamron', 'AHMEDABAD', 0, 38),
(81, NULL, NULL, 0, 40),
(82, NULL, NULL, 0, 41),
(83, NULL, NULL, 0, 39);

-- --------------------------------------------------------

--
-- Table structure for table `Client_Live`
--

CREATE TABLE `Client_Live` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `ClientPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Client_Versions`
--

CREATE TABLE `Client_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `ClientPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Client_Versions`
--

INSERT INTO `Client_Versions` (`ID`, `RecordID`, `Version`, `Name`, `City`, `PhotoID`, `ClientPhotoID`) VALUES
(1, 18, 1, NULL, NULL, 0, 0),
(2, 18, 2, 'sonama raceway', 'UK', 0, 0),
(3, 18, 3, 'sonama raceway', 'UK', 0, 0),
(4, 18, 4, 'sonama raceway', 'UK', 4, 0),
(5, 19, 6, NULL, NULL, 0, 0),
(6, 19, 7, 'desaser', 'US', 4, 0),
(7, 19, 8, 'desaser', 'US', 4, 0),
(8, 19, 9, 'desaser', 'US', 11, 0),
(9, 19, 10, 'desaser', 'US', 0, 14),
(10, 20, 2, NULL, NULL, 0, 0),
(11, 20, 3, 'sad', 'UK', 0, 17),
(12, 20, 4, 'sad', 'UK', 0, 17),
(13, 19, 11, 'Aero', 'US', 0, 28),
(14, 19, 12, 'Aero', 'US', 0, 28),
(15, 20, 5, 'sonama', 'UK', 0, 33),
(16, 26, 1, NULL, NULL, 0, 0),
(17, 26, 2, 'Hammer', 'UK', 0, 29),
(18, 27, 1, NULL, NULL, 0, 0),
(19, 27, 2, 'marmot', 'AHMEDABAD', 0, 30),
(20, 28, 1, NULL, NULL, 0, 0),
(21, 28, 2, 'perelli', 'AHMEDABAD', 0, 31),
(22, 29, 1, NULL, NULL, 0, 0),
(23, 29, 2, 'polaris', 'canada', 0, 32),
(24, 19, 13, 'Aero', 'US', 0, 43),
(25, 20, 6, 'sonama', 'UK', 0, 37),
(26, 19, 14, 'Aero', 'US', 0, 42),
(27, 26, 3, 'Hammer', 'UK', 0, 39),
(28, 27, 3, 'marmot', 'AHMEDABAD', 0, 38),
(29, 28, 3, 'perelli', 'AHMEDABAD', 0, 40),
(30, 29, 3, 'polaris', 'canada', 0, 41),
(31, 66, 1, NULL, NULL, 0, 0),
(32, 66, 2, 'XYZ', 'AHMEDABAD', 0, 37),
(33, 80, 1, NULL, NULL, 0, 0),
(34, 80, 2, 'mamron', 'AHMEDABAD', 0, 38),
(35, 81, 1, NULL, NULL, 0, 0),
(36, 81, 2, NULL, NULL, 0, 40),
(37, 82, 1, NULL, NULL, 0, 0),
(38, 82, 2, NULL, NULL, 0, 41),
(39, 83, 1, NULL, NULL, 0, 0),
(40, 83, 2, NULL, NULL, 0, 39),
(41, 83, 3, NULL, NULL, 0, 39);

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox`
--

CREATE TABLE `EditableCheckbox` (
  `ID` int(11) NOT NULL,
  `CheckedDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox_Live`
--

CREATE TABLE `EditableCheckbox_Live` (
  `ID` int(11) NOT NULL,
  `CheckedDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox_Versions`
--

CREATE TABLE `EditableCheckbox_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CheckedDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCountryDropdownField`
--

CREATE TABLE `EditableCountryDropdownField` (
  `ID` int(11) NOT NULL,
  `UseEmptyString` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCountryDropdownField_Live`
--

CREATE TABLE `EditableCountryDropdownField_Live` (
  `ID` int(11) NOT NULL,
  `UseEmptyString` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCountryDropdownField_Versions`
--

CREATE TABLE `EditableCountryDropdownField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `UseEmptyString` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCustomRule`
--

CREATE TABLE `EditableCustomRule` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableCustomRule') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCustomRule_Live`
--

CREATE TABLE `EditableCustomRule_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableCustomRule') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCustomRule_Versions`
--

CREATE TABLE `EditableCustomRule_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableCustomRule') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDateField`
--

CREATE TABLE `EditableDateField` (
  `ID` int(11) NOT NULL,
  `DefaultToToday` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDateField_Live`
--

CREATE TABLE `EditableDateField_Live` (
  `ID` int(11) NOT NULL,
  `DefaultToToday` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDateField_Versions`
--

CREATE TABLE `EditableDateField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `DefaultToToday` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdown`
--

CREATE TABLE `EditableDropdown` (
  `ID` int(11) NOT NULL,
  `UseEmptyString` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdown_Live`
--

CREATE TABLE `EditableDropdown_Live` (
  `ID` int(11) NOT NULL,
  `UseEmptyString` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdown_Versions`
--

CREATE TABLE `EditableDropdown_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `UseEmptyString` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFieldGroup`
--

CREATE TABLE `EditableFieldGroup` (
  `ID` int(11) NOT NULL,
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFieldGroup_Live`
--

CREATE TABLE `EditableFieldGroup_Live` (
  `ID` int(11) NOT NULL,
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFieldGroup_Versions`
--

CREATE TABLE `EditableFieldGroup_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFieldGroup_Versions`
--

INSERT INTO `EditableFieldGroup_Versions` (`ID`, `RecordID`, `Version`, `EndID`) VALUES
(1, 8, 1, 0),
(2, 8, 2, 0),
(3, 8, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField`
--

CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL,
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField_Live`
--

CREATE TABLE `EditableFileField_Live` (
  `ID` int(11) NOT NULL,
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField_Versions`
--

CREATE TABLE `EditableFileField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField`
--

CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ShowInSummary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayRulesConjunction` enum('And','Or') CHARACTER SET utf8 DEFAULT 'Or',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField`
--

INSERT INTO `EditableFormField` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ShowInSummary`, `Placeholder`, `DisplayRulesConjunction`, `ParentID`, `ParentClass`) VALUES
(11, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 02:56:36', '2018-08-09 08:34:44', 3, 'EditableFormStep_b2b08', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(12, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 02:56:36', '2018-08-10 01:22:03', 3, 'EditableFormStep_2722e', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 10, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(13, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 02:56:36', '2018-08-10 01:22:13', 3, 'EditableFormStep_e4a4f', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 11, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(14, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-13 00:43:46', '2018-08-13 00:43:46', 2, 'EditableFormStep_ab978', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 13, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(15, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-13 04:30:05', '2018-08-13 04:30:04', 2, 'EditableTextField_9936d', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 13, 'SilverStripe\\UserForms\\Model\\UserDefinedForm');

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField_Live`
--

CREATE TABLE `EditableFormField_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ShowInSummary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayRulesConjunction` enum('And','Or') CHARACTER SET utf8 DEFAULT 'Or',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField_Versions`
--

CREATE TABLE `EditableFormField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ShowInSummary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayRulesConjunction` enum('And','Or') CHARACTER SET utf8 DEFAULT 'Or',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField','SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm','Events\\Component\\EventsDetail') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField_Versions`
--

INSERT INTO `EditableFormField_Versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ShowInSummary`, `Placeholder`, `DisplayRulesConjunction`, `ParentID`, `ParentClass`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:38:48', '2018-08-09 07:38:48', 'EditableFormStep_39459', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(2, 1, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:38:48', '2018-08-09 07:38:48', 'EditableFormStep_39459', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(3, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-09 07:39:16', '2018-08-09 07:39:16', 'EditableTextField_d12c8', NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(4, 2, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-09 07:39:16', '2018-08-09 07:39:16', 'EditableTextField_d12c8', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(5, 1, 3, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:39:34', '2018-08-09 07:38:48', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(6, 2, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-09 07:39:41', '2018-08-09 07:39:16', 'EditableTextField_d12c8', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(7, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:39:41', '2018-08-09 07:39:41', 'EditableFormStep_0a9cc', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(8, 3, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:39:42', '2018-08-09 07:39:41', 'EditableFormStep_0a9cc', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(9, 4, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:39:42', '2018-08-09 07:39:42', 'EditableFormStep_c8f01', NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(10, 4, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:39:43', '2018-08-09 07:39:42', 'EditableFormStep_c8f01', NULL, NULL, 3, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(11, 5, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:08', '2018-08-09 07:42:08', 'EditableFormStep_a2e83', NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(12, 5, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:09', '2018-08-09 07:42:08', 'EditableFormStep_a2e83', NULL, NULL, 4, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(13, 3, 3, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:15', '2018-08-09 07:39:41', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(14, 2, 4, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-09 07:42:18', '2018-08-09 07:39:16', 'EditableTextField_d12c8', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(15, 4, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:18', '2018-08-09 07:39:42', 'EditableFormStep_c8f01', NULL, NULL, 3, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(16, 5, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:18', '2018-08-09 07:42:08', 'EditableFormStep_a2e83', NULL, NULL, 4, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(17, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:19', '2018-08-09 07:42:19', 'EditableFormStep_a54a4', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(18, 6, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:19', '2018-08-09 07:42:19', 'EditableFormStep_a54a4', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(19, 2, 5, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-09 07:42:20', '2018-08-09 07:39:16', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(20, 6, 3, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:24', '2018-08-09 07:42:19', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(21, 5, 4, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:29', '2018-08-09 07:42:08', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(22, 4, 4, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:34', '2018-08-09 07:39:42', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(23, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:42', '2018-08-09 07:42:42', 'EditableFormStep_59a00', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(24, 7, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 07:42:43', '2018-08-09 07:42:42', 'EditableFormStep_59a00', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(25, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup', '2018-08-09 07:42:44', '2018-08-09 07:42:44', 'EditableFieldGroup_fa56e', NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(26, 8, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup', '2018-08-09 07:42:44', '2018-08-09 07:42:44', 'EditableFieldGroup_fa56e', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(27, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd', '2018-08-09 07:42:44', '2018-08-09 07:42:44', 'EditableFieldGroupEnd_01154', NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(28, 9, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd', '2018-08-09 07:42:44', '2018-08-09 07:42:44', 'EditableFieldGroupEnd_01154', NULL, NULL, 3, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(29, 8, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup', '2018-08-09 07:42:44', '2018-08-09 07:42:44', 'EditableFieldGroup_fa56e', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(30, 9, 3, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd', '2018-08-09 08:34:18', '2018-08-09 07:42:44', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(31, 8, 4, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup', '2018-08-09 08:34:23', '2018-08-09 07:42:44', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(32, 7, 3, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 08:34:28', '2018-08-09 07:42:42', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(33, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 08:34:32', '2018-08-09 08:34:32', 'EditableFormStep_5c94b', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(34, 10, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 08:34:33', '2018-08-09 08:34:32', 'EditableFormStep_5c94b', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(35, 10, 3, 0, 1, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 08:34:42', '2018-08-09 08:34:32', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(36, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 08:34:44', '2018-08-09 08:34:44', 'EditableFormStep_b2b08', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(37, 11, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-09 08:34:45', '2018-08-09 08:34:44', 'EditableFormStep_b2b08', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'Events\\Component\\EventsDetail'),
(38, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 01:22:03', '2018-08-10 01:22:03', 'EditableFormStep_2722e', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(39, 12, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 01:22:04', '2018-08-10 01:22:03', 'EditableFormStep_2722e', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 10, 'Events\\Component\\EventsDetail'),
(40, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 01:22:13', '2018-08-10 01:22:13', 'EditableFormStep_e4a4f', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'),
(41, 13, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 01:22:13', '2018-08-10 01:22:13', 'EditableFormStep_e4a4f', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 11, 'Events\\Component\\EventsDetail'),
(42, 11, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 02:56:36', '2018-08-09 08:34:44', 'EditableFormStep_b2b08', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 9, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(43, 12, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 02:56:36', '2018-08-10 01:22:03', 'EditableFormStep_2722e', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 10, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(44, 13, 3, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-10 02:56:36', '2018-08-10 01:22:13', 'EditableFormStep_e4a4f', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 11, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(45, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-13 00:43:46', '2018-08-13 00:43:46', 'EditableFormStep_ab978', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(46, 14, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep', '2018-08-13 00:43:46', '2018-08-13 00:43:46', 'EditableFormStep_ab978', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 13, 'SilverStripe\\UserForms\\Model\\UserDefinedForm'),
(47, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-13 04:30:04', '2018-08-13 04:30:04', 'EditableTextField_9936d', NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 0, 'SilverStripe\\Assets\\File'),
(48, 15, 2, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField', '2018-08-13 04:30:05', '2018-08-13 04:30:04', 'EditableTextField_9936d', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 0, NULL, 'Or', 13, 'SilverStripe\\UserForms\\Model\\UserDefinedForm');

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormHeading`
--

CREATE TABLE `EditableFormHeading` (
  `ID` int(11) NOT NULL,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormHeading_Live`
--

CREATE TABLE `EditableFormHeading_Live` (
  `ID` int(11) NOT NULL,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormHeading_Versions`
--

CREATE TABLE `EditableFormHeading_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableLiteralField`
--

CREATE TABLE `EditableLiteralField` (
  `ID` int(11) NOT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableLiteralField_Live`
--

CREATE TABLE `EditableLiteralField_Live` (
  `ID` int(11) NOT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableLiteralField_Versions`
--

CREATE TABLE `EditableLiteralField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField`
--

CREATE TABLE `EditableMemberListField` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField_Live`
--

CREATE TABLE `EditableMemberListField_Live` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField_Versions`
--

CREATE TABLE `EditableMemberListField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableNumericField`
--

CREATE TABLE `EditableNumericField` (
  `ID` int(11) NOT NULL,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableNumericField_Live`
--

CREATE TABLE `EditableNumericField_Live` (
  `ID` int(11) NOT NULL,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableNumericField_Versions`
--

CREATE TABLE `EditableNumericField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption`
--

CREATE TABLE `EditableOption` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption_Live`
--

CREATE TABLE `EditableOption_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption_Versions`
--

CREATE TABLE `EditableOption_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField`
--

CREATE TABLE `EditableTextField` (
  `ID` int(11) NOT NULL,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Autocomplete` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField`
--

INSERT INTO `EditableTextField` (`ID`, `MinLength`, `MaxLength`, `Rows`, `Autocomplete`) VALUES
(15, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField_Live`
--

CREATE TABLE `EditableTextField_Live` (
  `ID` int(11) NOT NULL,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Autocomplete` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField_Versions`
--

CREATE TABLE `EditableTextField_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Autocomplete` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField_Versions`
--

INSERT INTO `EditableTextField_Versions` (`ID`, `RecordID`, `Version`, `MinLength`, `MaxLength`, `Rows`, `Autocomplete`) VALUES
(1, 2, 1, 0, 0, 1, NULL),
(2, 2, 2, 0, 0, 1, NULL),
(3, 2, 3, 0, 0, 1, NULL),
(4, 2, 4, 0, 0, 1, NULL),
(5, 15, 1, 0, 0, 1, NULL),
(6, 15, 2, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Embed`
--

CREATE TABLE `Embed` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('gorriecoe\\Embed\\Models\\Embed','gorriecoe\\Embed\\Models\\Video') CHARACTER SET utf8 DEFAULT 'gorriecoe\\Embed\\Models\\Embed',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `EmbedTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedSourceURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedSourceImageURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedHTML` mediumtext CHARACTER SET utf8,
  `EmbedWidth` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedHeight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedAspectRatio` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedDescription` mediumtext CHARACTER SET utf8,
  `EmbedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500),
(10, 404),
(11, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(5, 500),
(10, 404),
(11, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Versions`
--

CREATE TABLE `ErrorPage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_Versions`
--

INSERT INTO `ErrorPage_Versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 4, 2, 404),
(3, 5, 1, 500),
(4, 5, 2, 500),
(5, 10, 2, 404),
(6, 10, 3, 404),
(7, 11, 15, 500),
(8, 11, 16, 500);

-- --------------------------------------------------------

--
-- Table structure for table `EventChild_Component_EventsDetail`
--

CREATE TABLE `EventChild_Component_EventsDetail` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventChild_Component_EventsDetail_Contributors`
--

CREATE TABLE `EventChild_Component_EventsDetail_Contributors` (
  `ID` int(11) NOT NULL,
  `EventChild_Component_EventsDetailID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventChild_Component_EventsDetail_Editors`
--

CREATE TABLE `EventChild_Component_EventsDetail_Editors` (
  `ID` int(11) NOT NULL,
  `EventChild_Component_EventsDetailID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventChild_Component_EventsDetail_Live`
--

CREATE TABLE `EventChild_Component_EventsDetail_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventChild_Component_EventsDetail_Versions`
--

CREATE TABLE `EventChild_Component_EventsDetail_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventChild_Component_EventsDetail_Writers`
--

CREATE TABLE `EventChild_Component_EventsDetail_Writers` (
  `ID` int(11) NOT NULL,
  `EventChild_Component_EventsDetailID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage`
--

CREATE TABLE `EventGallarypage` (
  `ID` int(11) NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `AboutID` int(11) NOT NULL DEFAULT '0',
  `NewsTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NewsImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage`
--

INSERT INTO `EventGallarypage` (`ID`, `Email`, `Number`, `Description`, `AboutID`, `NewsTitle`, `NewsImageID`) VALUES
(17, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem', 36, 'Simraceway\'s open-Wheel Race Series is back for 2018', 54),
(54, NULL, NULL, NULL, 0, NULL, 0),
(55, NULL, NULL, NULL, 0, NULL, 0),
(62, NULL, NULL, NULL, 0, NULL, 0),
(63, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, 'Bipartisan Bill Would Bar DHS from Arresting Immigrant Child Sponsors', 47);

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_File`
--

CREATE TABLE `EventGallarypage_File` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_Gallary`
--

CREATE TABLE `EventGallarypage_Gallary` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage_Gallary`
--

INSERT INTO `EventGallarypage_Gallary` (`ID`, `EventGallarypageID`, `ImageID`) VALUES
(1, 17, 14),
(2, 17, 16),
(3, 17, 17),
(4, 17, 18),
(5, 17, 15),
(6, 17, 13),
(7, 63, 46),
(8, 63, 14),
(9, 63, 16),
(10, 63, 13),
(11, 63, 45);

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_HomePhoto`
--

CREATE TABLE `EventGallarypage_HomePhoto` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage_HomePhoto`
--

INSERT INTO `EventGallarypage_HomePhoto` (`ID`, `EventGallarypageID`, `ImageID`) VALUES
(6, 17, 44),
(7, 17, 46),
(8, 17, 45),
(9, 63, 55),
(10, 63, 54);

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_Live`
--

CREATE TABLE `EventGallarypage_Live` (
  `ID` int(11) NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `AboutID` int(11) NOT NULL DEFAULT '0',
  `NewsTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NewsImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage_Live`
--

INSERT INTO `EventGallarypage_Live` (`ID`, `Email`, `Number`, `Description`, `AboutID`, `NewsTitle`, `NewsImageID`) VALUES
(17, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 36, 'Simraceway\'s open-Wheel Race Series is back for 2018', 54),
(63, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, 'Bipartisan Bill Would Bar DHS from Arresting Immigrant Child Sponsors', 47);

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_MP4`
--

CREATE TABLE `EventGallarypage_MP4` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_Photo`
--

CREATE TABLE `EventGallarypage_Photo` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_Versions`
--

CREATE TABLE `EventGallarypage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `AboutID` int(11) NOT NULL DEFAULT '0',
  `NewsTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NewsImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage_Versions`
--

INSERT INTO `EventGallarypage_Versions` (`ID`, `RecordID`, `Version`, `Email`, `Number`, `Description`, `AboutID`, `NewsTitle`, `NewsImageID`) VALUES
(1, 17, 11, 'johnyharper@gmail.com', '9898989898', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 34, NULL, 0),
(2, 17, 12, 'DCT@SIMRACEWAY.COM', NULL, 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 34, NULL, 0),
(3, 17, 13, 'DCT@SIMRACEWAY.COM', '18007330345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 34, NULL, 0),
(4, 17, 14, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 34, NULL, 0),
(5, 17, 15, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 34, NULL, 0),
(6, 17, 16, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 34, NULL, 0),
(7, 17, 17, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 36, NULL, 0),
(8, 17, 18, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 36, 'Simraceway\'s open-Wheel Race Series is back for 2018', 54),
(9, 17, 19, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit', 36, 'Simraceway\'s open-Wheel Race Series is back for 2018', 54),
(10, 17, 20, 'DCT@SIMRACEWAY.COM', '1800-733-0345', 'lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem ipsum sit dolor amet lorem', 36, 'Simraceway\'s open-Wheel Race Series is back for 2018', 54),
(11, 54, 1, NULL, NULL, NULL, 0, NULL, 0),
(12, 55, 1, NULL, NULL, NULL, 0, NULL, 0),
(13, 62, 1, NULL, NULL, NULL, 0, NULL, 0),
(14, 63, 1, NULL, NULL, NULL, 0, NULL, 0),
(15, 63, 2, NULL, NULL, NULL, 0, NULL, 0),
(16, 63, 3, NULL, NULL, NULL, 0, NULL, 0),
(17, 63, 4, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, NULL, 0),
(18, 63, 5, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, NULL, 0),
(19, 63, 6, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, 'Bipartisan Bill Would Bar DHS from Arresting Immigrant Child Sponsors', 47),
(20, 63, 7, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, 'Bipartisan Bill Would Bar DHS from Arresting Immigrant Child Sponsors', 47),
(21, 63, 8, 'addweb@gamil.com', '18000-323-090', 'The Television Academy recognized many programs highlighting racial justice issues during its award ceremony for achievement in broadcast news and documentaries.\r\n\r\n', 49, 'Bipartisan Bill Would Bar DHS from Arresting Immigrant Child Sponsors', 47);

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_Video`
--

CREATE TABLE `EventGallarypage_Video` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage_Video`
--

INSERT INTO `EventGallarypage_Video` (`ID`, `EventGallarypageID`, `FileID`) VALUES
(3, 17, 24);

-- --------------------------------------------------------

--
-- Table structure for table `EventGallarypage_Webcams`
--

CREATE TABLE `EventGallarypage_Webcams` (
  `ID` int(11) NOT NULL,
  `EventGallarypageID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventGallarypage_Webcams`
--

INSERT INTO `EventGallarypage_Webcams` (`ID`, `EventGallarypageID`, `FileID`) VALUES
(1, 17, 26),
(2, 17, 27);

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`ID`, `PhotoID`, `PostsPerPage`) VALUES
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(20, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Eventspage`
--

CREATE TABLE `Eventspage` (
  `ID` int(11) NOT NULL,
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `place` mediumtext CHARACTER SET utf8,
  `Time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Eventspage`
--

INSERT INTO `Eventspage` (`ID`, `EventName`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `StartDate`, `EndDate`, `place`, `Time`, `PhotoID`) VALUES
(9, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(10, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0),
(11, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4),
(16, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0),
(21, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `EventspageEventspage`
--

CREATE TABLE `EventspageEventspage` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','Events\\Component\\EventsDetail','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\Submission\\EventSubmittedForm'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Eventspage_Live`
--

CREATE TABLE `Eventspage_Live` (
  `ID` int(11) NOT NULL,
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `place` mediumtext CHARACTER SET utf8,
  `Time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Eventspage_Live`
--

INSERT INTO `Eventspage_Live` (`ID`, `EventName`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `StartDate`, `EndDate`, `place`, `Time`, `PhotoID`) VALUES
(11, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Eventspage_Versions`
--

CREATE TABLE `Eventspage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `place` mediumtext CHARACTER SET utf8,
  `Time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Eventspage_Versions`
--

INSERT INTO `Eventspage_Versions` (`ID`, `RecordID`, `Version`, `EventName`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `StartDate`, `EndDate`, `place`, `Time`, `PhotoID`) VALUES
(1, 9, 1, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0),
(2, 9, 2, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', 'Ahmedabad', '22:00:00', 0),
(3, 9, 3, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', NULL, '22:00:00', 0),
(4, 9, 4, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(5, 9, 5, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(6, 9, 7, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(7, 9, 8, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(8, 9, 9, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(9, 9, 10, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(10, 9, 11, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(11, 10, 1, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0),
(12, 11, 1, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0),
(13, 11, 2, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 0),
(14, 11, 3, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 0),
(15, 11, 4, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 0),
(16, 11, 5, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 0),
(17, 11, 7, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4),
(18, 11, 8, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4),
(19, 11, 9, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4),
(20, 11, 11, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4),
(21, 11, 12, 'sdfs', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-16', '2018-08-10', NULL, '03:00:00', 4),
(22, 9, 13, 'Racing', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '2018-08-01', '2018-08-23', '2018-08-30', '22:00:00', 0),
(23, 16, 1, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0),
(24, 21, 1, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Events_Component_EventsDetail`
--

CREATE TABLE `Events_Component_EventsDetail` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Events_Component_EventsDetail`
--

INSERT INTO `Events_Component_EventsDetail` (`ID`, `PostsPerPage`, `PhotoID`) VALUES
(11, 0, 0),
(17, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Events_Component_EventsDetail_Contributors`
--

CREATE TABLE `Events_Component_EventsDetail_Contributors` (
  `ID` int(11) NOT NULL,
  `Events_Component_EventsDetailID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Events_Component_EventsDetail_Editors`
--

CREATE TABLE `Events_Component_EventsDetail_Editors` (
  `ID` int(11) NOT NULL,
  `Events_Component_EventsDetailID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Events_Component_EventsDetail_Live`
--

CREATE TABLE `Events_Component_EventsDetail_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Events_Component_EventsDetail_Versions`
--

CREATE TABLE `Events_Component_EventsDetail_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Events_Component_EventsDetail_Versions`
--

INSERT INTO `Events_Component_EventsDetail_Versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`, `PhotoID`) VALUES
(1, 11, 13, 0, 0),
(2, 17, 1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Events_Component_EventsDetail_Writers`
--

CREATE TABLE `Events_Component_EventsDetail_Writers` (
  `ID` int(11) NOT NULL,
  `Events_Component_EventsDetailID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Events_Live`
--

CREATE TABLE `Events_Live` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Events_Photo`
--

CREATE TABLE `Events_Photo` (
  `ID` int(11) NOT NULL,
  `EventsID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Events_Versions`
--

CREATE TABLE `Events_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Events_Versions`
--

INSERT INTO `Events_Versions` (`ID`, `RecordID`, `Version`, `PhotoID`, `PostsPerPage`) VALUES
(1, 20, 1, 0, 10),
(2, 12, 2, 0, 0),
(3, 13, 2, 0, 0),
(4, 14, 2, 0, 0),
(5, 15, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 2, 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 2, 'Inherit', 'Inherit', 'cms-branding', 'cms-branding', 1, 1, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Image', '2018-09-11 07:26:10', '2018-08-07 00:25:30', 11, 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(4, 'SilverStripe\\Assets\\Image', '2018-08-13 01:21:58', '2018-08-13 01:03:54', 2, 'Inherit', 'Inherit', 'Screenshot-from-2018-08-10-18-15-01.png', 'Screenshot from 2018 08 10 18 15 01', 1, 1, 1, '36b82dab222c1ccf5e6988db56fea1fa00dad5f1', 'Uploads/Screenshot-from-2018-08-10-18-15-01.png', NULL),
(5, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:23', '2018-08-14 02:11:23', 1, 'Inherit', 'Inherit', 'menu_like_this.png', 'menu like this', 1, 1, 1, 'd6af023cc8aa54a98511bc3a524ea62a87cfa4b3', 'Uploads/menu_like_this.png', NULL),
(6, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:25', '2018-08-14 02:11:25', 1, 'Inherit', 'Inherit', 'delete_confirm_box.png', 'delete confirm box', 1, 1, 1, '7c6ce9a42ddb72ef70e4b28ca07b857ec9af7060', 'Uploads/delete_confirm_box.png', NULL),
(7, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:26', '2018-08-14 02:11:26', 1, 'Inherit', 'Inherit', 'icon-cogs-d12473.png', 'icon cogs d12473', 1, 1, 1, '7f81d44769c579fa24d34a3e7d9229b05c0c5991', 'Uploads/icon-cogs-d12473.png', NULL),
(8, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:28', '2018-08-14 02:11:28', 1, 'Inherit', 'Inherit', 'icon-down-8ee816.png', 'icon down 8ee816', 1, 1, 1, '87081644a43247bae3b26b84f85171c528844888', 'Uploads/icon-down-8ee816.png', NULL),
(9, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:29', '2018-08-14 02:11:29', 1, 'Inherit', 'Inherit', 'icon-padlock-356809.png', 'icon padlock 356809', 1, 1, 1, 'abe90bedbb1c0a17afe9ba4665d8a5a41f0e4490', 'Uploads/icon-padlock-356809.png', NULL),
(10, 'SilverStripe\\Assets\\Image', '2018-08-14 02:17:43', '2018-08-14 02:17:43', 1, 'Inherit', 'Inherit', 'roma-mockup-601502.png', 'roma mockup 601502', 1, 1, 1, '291b6a55e9ad9821e5fdea3acc28399177269d1f', 'Uploads/roma-mockup-601502.png', NULL),
(11, 'SilverStripe\\Assets\\Image', '2018-08-14 02:24:45', '2018-08-14 02:24:45', 1, 'Inherit', 'Inherit', 'Screenshot-from-2018-08-13-11-49-07.png', 'Screenshot from 2018 08 13 11 49 07', 1, 1, 1, '6076483dcb8dce3b9eb3dc5e716ea6dafcb395e0', 'Uploads/Screenshot-from-2018-08-13-11-49-07.png', NULL),
(12, 'SilverStripe\\Assets\\Folder', '2018-08-21 00:37:55', '2018-08-21 00:37:55', 2, 'Inherit', 'Inherit', 'Home-Racing', 'Home Racing', 1, 1, 1, NULL, NULL, NULL),
(13, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:50', '2018-08-21 00:57:03', 2, 'Inherit', 'Inherit', 'images.jpeg', 'images', 1, 12, 1, '04a25cf8ecb8348081dd70b22104f1d7bd24ddaf', 'Uploads/Home-Racing/images.jpeg', NULL),
(14, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-08-21 00:57:22', 2, 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 12, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/Home-Racing/images-1.jpeg', NULL),
(15, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:50', '2018-08-21 00:57:28', 2, 'Inherit', 'Inherit', 'images-7.jpeg', 'images 7', 1, 12, 1, '42b981ed029f759f767aaa7023d33f8b249cb5a4', 'Uploads/Home-Racing/images-7.jpeg', NULL),
(16, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-08-21 01:04:17', 2, 'Inherit', 'Inherit', 'images-3.jpeg', 'images 3', 1, 12, 1, 'c20af142d08d2d11f779de233a21d824611e3f42', 'Uploads/Home-Racing/images-3.jpeg', NULL),
(17, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:49', '2018-08-21 01:04:17', 2, 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 12, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/Home-Racing/images-4.jpeg', NULL),
(18, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:49', '2018-08-21 01:04:18', 2, 'Inherit', 'Inherit', 'images-5.jpeg', 'images 5', 1, 12, 1, 'f9c0c94f565d18dedeb3e028c1f888db334cdc0e', 'Uploads/Home-Racing/images-5.jpeg', NULL),
(19, 'SilverStripe\\Assets\\Image', '2018-10-04 04:42:18', '2018-08-21 01:39:59', 2, 'Inherit', 'Inherit', 'download.png', 'download', 1, 12, 1, 'f598a4bafc13f0fcc54ea5545d2c9dd10af1d6c5', 'Uploads/Home-Racing/download.png', NULL),
(20, 'SilverStripe\\Assets\\File', '2018-09-10 00:53:15', '2018-09-10 00:53:15', 1, 'Inherit', 'Inherit', 'Cars_moving_in_a_city.mp4', 'Cars moving in a city', 1, 12, 1, '90adf9c32e4ae0815d46e21c52010b65b11a9534', 'Uploads/Home-Racing/Cars_moving_in_a_city.mp4', NULL),
(21, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-09-10 01:59:59', 2, 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-36.png', 'Screenshot from 2018 09 10 12 27 36', 1, 12, 1, 'ce9ad9e7021ea23834d28d4dc842e6762534dab2', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-36.png', NULL),
(22, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:47', '2018-09-10 02:00:07', 2, 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-19.png', 'Screenshot from 2018 09 10 12 27 19', 1, 12, 1, '985a7ea1f4b77d1e4d1488c6a3e3fd0aa42497e3', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-19.png', NULL),
(23, 'SilverStripe\\Assets\\Folder', '2018-09-10 02:05:02', '2018-09-10 02:05:02', 2, 'Inherit', 'Inherit', 'videos', 'videos', 1, 0, 1, NULL, NULL, NULL),
(24, 'SilverStripe\\Assets\\File', '2018-09-10 02:05:48', '2018-09-10 02:05:48', 1, 'Inherit', 'Inherit', 'Cars_moving_in_a_city.mp4', 'Cars moving in a city', 1, 23, 1, '90adf9c32e4ae0815d46e21c52010b65b11a9534', 'videos/Cars_moving_in_a_city.mp4', NULL),
(25, 'SilverStripe\\Assets\\File', '2018-09-10 02:06:09', '2018-09-10 02:06:09', 1, 'Inherit', 'Inherit', 'artisan.txt', 'artisan', 1, 23, 1, '93a0494e55f5e1ee100c241316283f04ba03f3c4', 'videos/artisan.txt', NULL),
(26, 'SilverStripe\\Assets\\File', '2018-09-10 02:43:00', '2018-09-10 02:43:00', 1, 'Inherit', 'Inherit', 'Cars_moving_in_a_city', 'Cars_moving_in_a_city', 1, 0, 1, NULL, NULL, NULL),
(27, 'SilverStripe\\Assets\\File', '2018-09-10 02:48:15', '2018-09-10 02:48:15', 1, 'Inherit', 'Inherit', '24', 'xgdsx', 1, 0, 1, NULL, NULL, NULL),
(28, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:40', '2018-09-11 02:08:40', 1, 'Inherit', 'Inherit', 'aeroLogo2.png', 'aeroLogo2', 1, 12, 1, '5579ab5a51d99ba607f1cf379d96a3d4a733609c', 'Uploads/Home-Racing/aeroLogo2.png', NULL),
(29, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 1, 'Inherit', 'Inherit', 'hammer.png', 'hammer', 1, 12, 1, 'cd6c318cff3cb86c899a507c4582f38100816d63', 'Uploads/Home-Racing/hammer.png', NULL),
(30, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 1, 'Inherit', 'Inherit', 'marmot.jpeg', 'marmot', 1, 12, 1, '540b9b0c709939f479d9b2583a2fb9097b429181', 'Uploads/Home-Racing/marmot.jpeg', NULL),
(31, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 1, 'Inherit', 'Inherit', 'pirelli.png', 'pirelli', 1, 12, 1, '55618dd4041d8c37b87f2b93d836eee6f0a80921', 'Uploads/Home-Racing/pirelli.png', NULL),
(32, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 1, 'Inherit', 'Inherit', 'polaris.png', 'polaris', 1, 12, 1, '454e6fd4e4b2ad277a8098e2f9c3b9615b0a06ae', 'Uploads/Home-Racing/polaris.png', NULL),
(33, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:42', '2018-09-11 02:08:42', 1, 'Inherit', 'Inherit', 'sonama.png', 'sonama', 1, 12, 1, 'a72c8ffa532a17cd4fb78694a2e8119fb338ac7a', 'Uploads/Home-Racing/sonama.png', NULL),
(34, 'SilverStripe\\Assets\\Image', '2018-09-11 02:26:06', '2018-09-11 02:26:06', 1, 'Inherit', 'Inherit', 'Screenshot-from-2018-09-11-12-54-03.png', 'Screenshot from 2018 09 11 12 54 03', 1, 12, 1, 'acaab26ca8dd050067951159ec914b6ed1fea88c', 'Uploads/Home-Racing/Screenshot-from-2018-09-11-12-54-03.png', NULL),
(35, 'SilverStripe\\Assets\\Image', '2018-09-11 06:11:04', '2018-09-11 06:11:04', 1, 'Inherit', 'Inherit', 'formula-1-vision-concept-2025-by-antonio-paglia-design.jpg', 'formula 1 vision concept 2025 by antonio paglia design', 1, 12, 1, 'd5e2bcdafa882944cf6578672f07ee48a6862e53', 'Uploads/Home-Racing/formula-1-vision-concept-2025-by-antonio-paglia-design.jpg', NULL),
(36, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:30', '2018-09-11 08:07:17', 2, 'Inherit', 'Inherit', 'Our-Car.png', 'Our Car', 1, 12, 1, 'fa6700a2a03674e44341be1aade80dbc8af38040', 'Uploads/Home-Racing/Our-Car.png', NULL),
(37, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:18', '2018-09-11 08:07:18', 1, 'Inherit', 'Inherit', 'logo-1.png', 'logo 1', 1, 12, 1, '5c709f606fbcc814a55f26258e481d124606e303', 'Uploads/Home-Racing/logo-1.png', NULL),
(38, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:19', '2018-09-11 08:07:19', 1, 'Inherit', 'Inherit', 'logo-2.png', 'logo 2', 1, 12, 1, '6cad6f9672465110659101d28ea776dd1e73058a', 'Uploads/Home-Racing/logo-2.png', NULL),
(39, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:24', '2018-09-11 08:07:24', 1, 'Inherit', 'Inherit', 'logo-5.png', 'logo 5', 1, 12, 1, '74f5162a4faaa8cf3b1386f8914c533cf0faa07e', 'Uploads/Home-Racing/logo-5.png', NULL),
(40, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:25', '2018-09-11 08:07:25', 1, 'Inherit', 'Inherit', 'logo-3.png', 'logo 3', 1, 12, 1, '8fa29ebee59650e91d50fa49a1aa184bcdf7b5a6', 'Uploads/Home-Racing/logo-3.png', NULL),
(41, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:25', '2018-09-11 08:07:25', 1, 'Inherit', 'Inherit', 'logo-4.png', 'logo 4', 1, 12, 1, '9172dbf9f7991969999c61ea660ec366d51d7be3', 'Uploads/Home-Racing/logo-4.png', NULL),
(42, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:25', '2018-09-11 08:07:25', 1, 'Inherit', 'Inherit', 'logo-6.png', 'logo 6', 1, 12, 1, '1e9a7cab8d590db3ca2a14e2e916def015e29fe2', 'Uploads/Home-Racing/logo-6.png', NULL),
(43, 'SilverStripe\\Assets\\Image', '2018-09-11 08:08:28', '2018-09-11 08:08:28', 1, 'Inherit', 'Inherit', 'logo-1-v2.png', 'logo 1 v2', 1, 12, 1, '5c709f606fbcc814a55f26258e481d124606e303', 'Uploads/Home-Racing/logo-1-v2.png', NULL),
(44, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:27', '2018-09-12 03:31:56', 2, 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 12, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/Home-Racing/car.jpg', NULL),
(45, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:28', '2018-09-12 03:31:58', 2, 'Inherit', 'Inherit', 'jackson_storm_cars_3_4k_8k-t2.jpg', 'jackson storm cars 3 4k 8k t2', 1, 12, 1, '167092613c5f3d5b054a61626f8714283955bade', 'Uploads/Home-Racing/jackson_storm_cars_3_4k_8k-t2.jpg', NULL),
(46, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:28', '2018-09-12 03:31:59', 2, 'Inherit', 'Inherit', 'hd_96e9a361b0ffe42542346b48dd73af83.jpg', 'hd 96e9a361b0ffe42542346b48dd73af83', 1, 12, 1, '47a9c3c8ed6e03c0b76fd9b2490ab5907fb79456', 'Uploads/Home-Racing/hd_96e9a361b0ffe42542346b48dd73af83.jpg', NULL),
(47, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:32', '2018-09-24 05:46:02', 2, 'Inherit', 'Inherit', 'OnTrack-Margay-RIGP-2017.jpg', 'OnTrack Margay RIGP 2017', 1, 1, 1, '6394cc84e843503e4f00e9ce91e037abe9138964', 'Uploads/OnTrack-Margay-RIGP-2017.jpg', NULL),
(48, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:31', '2018-09-24 05:46:03', 2, 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1.jpeg', NULL),
(49, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:32', '2018-09-24 05:46:04', 2, 'Inherit', 'Inherit', 'images-2.jpeg', 'images 2', 1, 1, 1, '35a930a0d803cac23b30456828fe531535a3e78f', 'Uploads/images-2.jpeg', NULL),
(50, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 2, 'Inherit', 'Inherit', 'Managed', 'Managed', 1, 0, 1, NULL, NULL, NULL),
(51, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 2, 'Inherit', 'Inherit', 'CalendarImages', 'CalendarImages', 1, 50, 1, NULL, NULL, NULL),
(52, 'SilverStripe\\Assets\\Image', '2018-09-24 07:25:36', '2018-09-24 07:25:34', 2, 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 51, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Managed/CalendarImages/images-1.jpeg', NULL),
(53, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:13', '2018-09-25 02:34:46', 2, 'Inherit', 'Inherit', 'images-1-v2.jpeg', 'images 1 v2', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1-v2.jpeg', NULL),
(54, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:30', '2018-09-28 06:24:11', 2, 'Inherit', 'Inherit', 'i-mpqwctr-x3.jpg', 'i mpqwctr x3', 1, 1, 1, '9eed6fa4789aaa99659bf318c814ee0388e866ff', 'Uploads/i-mpqwctr-x3.jpg', NULL),
(55, 'SilverStripe\\Assets\\Image', '2018-10-04 05:10:13', '2018-10-04 04:42:55', 2, 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 1, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/car.jpg', NULL),
(56, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:13', '2018-10-05 00:32:08', 2, 'Inherit', 'Inherit', 'images-1-v3.jpeg', 'images 1 v3', 1, 1, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/images-1-v3.jpeg', NULL),
(57, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:14', '2018-10-05 00:32:08', 2, 'Inherit', 'Inherit', 'images-2-v2.jpeg', 'images 2 v2', 1, 1, 1, '69012a85e1fd5c513af1b5a6b7013bbdfcd4dfb5', 'Uploads/images-2-v2.jpeg', NULL),
(58, 'SilverStripe\\Assets\\Image', '2018-10-05 07:39:47', '2018-10-05 00:32:08', 2, 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 1, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/images-4.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FileLink`
--

CREATE TABLE `FileLink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\Shortcodes\\FileLink') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\Shortcodes\\FileLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `File_EditorGroups`
--

CREATE TABLE `File_EditorGroups` (
  `ID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `File_Live`
--

CREATE TABLE `File_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File_Live`
--

INSERT INTO `File_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 2, 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 2, 'Inherit', 'Inherit', 'cms-branding', 'cms-branding', 1, 1, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Image', '2018-09-11 07:26:10', '2018-08-07 00:25:30', 11, 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(4, 'SilverStripe\\Assets\\Image', '2018-08-13 01:21:58', '2018-08-13 01:03:54', 2, 'Inherit', 'Inherit', 'Screenshot-from-2018-08-10-18-15-01.png', 'Screenshot from 2018 08 10 18 15 01', 1, 1, 1, '36b82dab222c1ccf5e6988db56fea1fa00dad5f1', 'Uploads/Screenshot-from-2018-08-10-18-15-01.png', NULL),
(12, 'SilverStripe\\Assets\\Folder', '2018-08-21 00:37:55', '2018-08-21 00:37:55', 2, 'Inherit', 'Inherit', 'Home-Racing', 'Home Racing', 1, 1, 1, NULL, NULL, NULL),
(13, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:50', '2018-08-21 00:57:03', 2, 'Inherit', 'Inherit', 'images.jpeg', 'images', 1, 12, 1, '04a25cf8ecb8348081dd70b22104f1d7bd24ddaf', 'Uploads/Home-Racing/images.jpeg', NULL),
(14, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-08-21 00:57:22', 2, 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 12, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/Home-Racing/images-1.jpeg', NULL),
(15, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:50', '2018-08-21 00:57:28', 2, 'Inherit', 'Inherit', 'images-7.jpeg', 'images 7', 1, 12, 1, '42b981ed029f759f767aaa7023d33f8b249cb5a4', 'Uploads/Home-Racing/images-7.jpeg', NULL),
(16, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-08-21 01:04:17', 2, 'Inherit', 'Inherit', 'images-3.jpeg', 'images 3', 1, 12, 1, 'c20af142d08d2d11f779de233a21d824611e3f42', 'Uploads/Home-Racing/images-3.jpeg', NULL),
(17, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:49', '2018-08-21 01:04:17', 2, 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 12, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/Home-Racing/images-4.jpeg', NULL),
(18, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:49', '2018-08-21 01:04:18', 2, 'Inherit', 'Inherit', 'images-5.jpeg', 'images 5', 1, 12, 1, 'f9c0c94f565d18dedeb3e028c1f888db334cdc0e', 'Uploads/Home-Racing/images-5.jpeg', NULL),
(19, 'SilverStripe\\Assets\\Image', '2018-10-04 04:42:18', '2018-08-21 01:39:59', 2, 'Inherit', 'Inherit', 'download.png', 'download', 1, 12, 1, 'f598a4bafc13f0fcc54ea5545d2c9dd10af1d6c5', 'Uploads/Home-Racing/download.png', NULL),
(21, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-09-10 01:59:59', 2, 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-36.png', 'Screenshot from 2018 09 10 12 27 36', 1, 12, 1, 'ce9ad9e7021ea23834d28d4dc842e6762534dab2', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-36.png', NULL),
(22, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:47', '2018-09-10 02:00:07', 2, 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-19.png', 'Screenshot from 2018 09 10 12 27 19', 1, 12, 1, '985a7ea1f4b77d1e4d1488c6a3e3fd0aa42497e3', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-19.png', NULL),
(23, 'SilverStripe\\Assets\\Folder', '2018-09-10 02:05:02', '2018-09-10 02:05:02', 2, 'Inherit', 'Inherit', 'videos', 'videos', 1, 0, 1, NULL, NULL, NULL),
(36, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:30', '2018-09-11 08:07:17', 2, 'Inherit', 'Inherit', 'Our-Car.png', 'Our Car', 1, 12, 1, 'fa6700a2a03674e44341be1aade80dbc8af38040', 'Uploads/Home-Racing/Our-Car.png', NULL),
(44, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:27', '2018-09-12 03:31:56', 2, 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 12, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/Home-Racing/car.jpg', NULL),
(45, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:28', '2018-09-12 03:31:58', 2, 'Inherit', 'Inherit', 'jackson_storm_cars_3_4k_8k-t2.jpg', 'jackson storm cars 3 4k 8k t2', 1, 12, 1, '167092613c5f3d5b054a61626f8714283955bade', 'Uploads/Home-Racing/jackson_storm_cars_3_4k_8k-t2.jpg', NULL),
(46, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:28', '2018-09-12 03:31:59', 2, 'Inherit', 'Inherit', 'hd_96e9a361b0ffe42542346b48dd73af83.jpg', 'hd 96e9a361b0ffe42542346b48dd73af83', 1, 12, 1, '47a9c3c8ed6e03c0b76fd9b2490ab5907fb79456', 'Uploads/Home-Racing/hd_96e9a361b0ffe42542346b48dd73af83.jpg', NULL),
(47, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:32', '2018-09-24 05:46:02', 2, 'Inherit', 'Inherit', 'OnTrack-Margay-RIGP-2017.jpg', 'OnTrack Margay RIGP 2017', 1, 1, 1, '6394cc84e843503e4f00e9ce91e037abe9138964', 'Uploads/OnTrack-Margay-RIGP-2017.jpg', NULL),
(48, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:31', '2018-09-24 05:46:03', 2, 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1.jpeg', NULL),
(49, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:32', '2018-09-24 05:46:04', 2, 'Inherit', 'Inherit', 'images-2.jpeg', 'images 2', 1, 1, 1, '35a930a0d803cac23b30456828fe531535a3e78f', 'Uploads/images-2.jpeg', NULL),
(50, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 2, 'Inherit', 'Inherit', 'Managed', 'Managed', 1, 0, 1, NULL, NULL, NULL),
(51, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 2, 'Inherit', 'Inherit', 'CalendarImages', 'CalendarImages', 1, 50, 1, NULL, NULL, NULL),
(52, 'SilverStripe\\Assets\\Image', '2018-09-24 07:25:36', '2018-09-24 07:25:34', 2, 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 51, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Managed/CalendarImages/images-1.jpeg', NULL),
(53, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:13', '2018-09-25 02:34:46', 2, 'Inherit', 'Inherit', 'images-1-v2.jpeg', 'images 1 v2', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1-v2.jpeg', NULL),
(54, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:30', '2018-09-28 06:24:11', 2, 'Inherit', 'Inherit', 'i-mpqwctr-x3.jpg', 'i mpqwctr x3', 1, 1, 1, '9eed6fa4789aaa99659bf318c814ee0388e866ff', 'Uploads/i-mpqwctr-x3.jpg', NULL),
(55, 'SilverStripe\\Assets\\Image', '2018-10-04 05:10:13', '2018-10-04 04:42:55', 2, 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 1, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/car.jpg', NULL),
(56, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:13', '2018-10-05 00:32:08', 2, 'Inherit', 'Inherit', 'images-1-v3.jpeg', 'images 1 v3', 1, 1, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/images-1-v3.jpeg', NULL),
(57, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:14', '2018-10-05 00:32:08', 2, 'Inherit', 'Inherit', 'images-2-v2.jpeg', 'images 2 v2', 1, 1, 1, '69012a85e1fd5c513af1b5a6b7013bbdfcd4dfb5', 'Uploads/images-2-v2.jpeg', NULL),
(58, 'SilverStripe\\Assets\\Image', '2018-10-05 07:39:47', '2018-10-05 00:32:08', 2, 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 1, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/images-4.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `File_Versions`
--

CREATE TABLE `File_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File_Versions`
--

INSERT INTO `File_Versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(2, 1, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(3, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 'Inherit', 'Inherit', 'cms-branding', 'cms-branding', 1, 1, 1, NULL, NULL, NULL),
(4, 2, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2018-08-06 08:24:59', '2018-08-06 08:24:59', 'Inherit', 'Inherit', 'cms-branding', 'cms-branding', 1, 1, 1, NULL, NULL, NULL),
(5, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-07 00:25:30', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(6, 3, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:25:32', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(7, 3, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:27:52', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(8, 3, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:28:27', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(9, 3, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:35:18', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(10, 3, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:38:48', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(11, 3, 7, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:54:37', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(12, 3, 8, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-07 00:56:42', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(13, 3, 9, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-13 00:31:19', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(14, 4, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-13 01:03:54', '2018-08-13 01:03:54', 'Inherit', 'Inherit', 'Screenshot-from-2018-08-10-18-15-01.png', 'Screenshot from 2018 08 10 18 15 01', 1, 1, 1, '36b82dab222c1ccf5e6988db56fea1fa00dad5f1', 'Uploads/Screenshot-from-2018-08-10-18-15-01.png', NULL),
(15, 4, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-13 01:21:58', '2018-08-13 01:03:54', 'Inherit', 'Inherit', 'Screenshot-from-2018-08-10-18-15-01.png', 'Screenshot from 2018 08 10 18 15 01', 1, 1, 1, '36b82dab222c1ccf5e6988db56fea1fa00dad5f1', 'Uploads/Screenshot-from-2018-08-10-18-15-01.png', NULL),
(16, 5, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:23', '2018-08-14 02:11:23', 'Inherit', 'Inherit', 'menu_like_this.png', 'menu like this', 1, 1, 1, 'd6af023cc8aa54a98511bc3a524ea62a87cfa4b3', 'Uploads/menu_like_this.png', NULL),
(17, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:25', '2018-08-14 02:11:25', 'Inherit', 'Inherit', 'delete_confirm_box.png', 'delete confirm box', 1, 1, 1, '7c6ce9a42ddb72ef70e4b28ca07b857ec9af7060', 'Uploads/delete_confirm_box.png', NULL),
(18, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:26', '2018-08-14 02:11:26', 'Inherit', 'Inherit', 'icon-cogs-d12473.png', 'icon cogs d12473', 1, 1, 1, '7f81d44769c579fa24d34a3e7d9229b05c0c5991', 'Uploads/icon-cogs-d12473.png', NULL),
(19, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:28', '2018-08-14 02:11:28', 'Inherit', 'Inherit', 'icon-down-8ee816.png', 'icon down 8ee816', 1, 1, 1, '87081644a43247bae3b26b84f85171c528844888', 'Uploads/icon-down-8ee816.png', NULL),
(20, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:11:29', '2018-08-14 02:11:29', 'Inherit', 'Inherit', 'icon-padlock-356809.png', 'icon padlock 356809', 1, 1, 1, 'abe90bedbb1c0a17afe9ba4665d8a5a41f0e4490', 'Uploads/icon-padlock-356809.png', NULL),
(21, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:17:43', '2018-08-14 02:17:43', 'Inherit', 'Inherit', 'roma-mockup-601502.png', 'roma mockup 601502', 1, 1, 1, '291b6a55e9ad9821e5fdea3acc28399177269d1f', 'Uploads/roma-mockup-601502.png', NULL),
(22, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-14 02:24:45', '2018-08-14 02:24:45', 'Inherit', 'Inherit', 'Screenshot-from-2018-08-13-11-49-07.png', 'Screenshot from 2018 08 13 11 49 07', 1, 1, 1, '6076483dcb8dce3b9eb3dc5e716ea6dafcb395e0', 'Uploads/Screenshot-from-2018-08-13-11-49-07.png', NULL),
(23, 3, 10, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-08-17 13:20:30', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(24, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2018-08-21 00:37:55', '2018-08-21 00:37:55', 'Inherit', 'Inherit', 'Home-Racing', 'Home Racing', 1, 1, 1, NULL, NULL, NULL),
(25, 12, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2018-08-21 00:37:55', '2018-08-21 00:37:55', 'Inherit', 'Inherit', 'Home-Racing', 'Home Racing', 1, 1, 1, NULL, NULL, NULL),
(26, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 00:57:03', '2018-08-21 00:57:03', 'Inherit', 'Inherit', 'images.jpeg', 'images', 1, 12, 1, '04a25cf8ecb8348081dd70b22104f1d7bd24ddaf', 'Uploads/Home-Racing/images.jpeg', NULL),
(27, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 00:57:22', '2018-08-21 00:57:22', 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 12, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/Home-Racing/images-1.jpeg', NULL),
(28, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 00:57:28', '2018-08-21 00:57:28', 'Inherit', 'Inherit', 'images-7.jpeg', 'images 7', 1, 12, 1, '42b981ed029f759f767aaa7023d33f8b249cb5a4', 'Uploads/Home-Racing/images-7.jpeg', NULL),
(29, 16, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 01:04:17', '2018-08-21 01:04:17', 'Inherit', 'Inherit', 'images-3.jpeg', 'images 3', 1, 12, 1, 'c20af142d08d2d11f779de233a21d824611e3f42', 'Uploads/Home-Racing/images-3.jpeg', NULL),
(30, 17, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 01:04:17', '2018-08-21 01:04:17', 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 12, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/Home-Racing/images-4.jpeg', NULL),
(31, 18, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 01:04:18', '2018-08-21 01:04:18', 'Inherit', 'Inherit', 'images-5.jpeg', 'images 5', 1, 12, 1, 'f9c0c94f565d18dedeb3e028c1f888db334cdc0e', 'Uploads/Home-Racing/images-5.jpeg', NULL),
(32, 19, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-08-21 01:39:59', '2018-08-21 01:39:59', 'Inherit', 'Inherit', 'download.png', 'download', 1, 12, 1, 'f598a4bafc13f0fcc54ea5545d2c9dd10af1d6c5', 'Uploads/Home-Racing/download.png', NULL),
(33, 20, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2018-09-10 00:53:15', '2018-09-10 00:53:15', 'Inherit', 'Inherit', 'Cars_moving_in_a_city.mp4', 'Cars moving in a city', 1, 12, 1, '90adf9c32e4ae0815d46e21c52010b65b11a9534', 'Uploads/Home-Racing/Cars_moving_in_a_city.mp4', NULL),
(34, 21, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-10 01:59:59', '2018-09-10 01:59:59', 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-36.png', 'Screenshot from 2018 09 10 12 27 36', 1, 12, 1, 'ce9ad9e7021ea23834d28d4dc842e6762534dab2', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-36.png', NULL),
(35, 22, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-10 02:00:07', '2018-09-10 02:00:07', 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-19.png', 'Screenshot from 2018 09 10 12 27 19', 1, 12, 1, '985a7ea1f4b77d1e4d1488c6a3e3fd0aa42497e3', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-19.png', NULL),
(36, 23, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2018-09-10 02:05:02', '2018-09-10 02:05:02', 'Inherit', 'Inherit', 'videos', 'videos', 1, 0, 1, NULL, NULL, NULL),
(37, 23, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2018-09-10 02:05:02', '2018-09-10 02:05:02', 'Inherit', 'Inherit', 'videos', 'videos', 1, 0, 1, NULL, NULL, NULL),
(38, 24, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2018-09-10 02:05:48', '2018-09-10 02:05:48', 'Inherit', 'Inherit', 'Cars_moving_in_a_city.mp4', 'Cars moving in a city', 1, 23, 1, '90adf9c32e4ae0815d46e21c52010b65b11a9534', 'videos/Cars_moving_in_a_city.mp4', NULL),
(39, 25, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2018-09-10 02:06:09', '2018-09-10 02:06:09', 'Inherit', 'Inherit', 'artisan.txt', 'artisan', 1, 23, 1, '93a0494e55f5e1ee100c241316283f04ba03f3c4', 'videos/artisan.txt', NULL),
(40, 26, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2018-09-10 02:43:00', '2018-09-10 02:43:00', 'Inherit', 'Inherit', 'Cars_moving_in_a_city', 'Cars_moving_in_a_city', 1, 0, 1, NULL, NULL, NULL),
(41, 27, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2018-09-10 02:48:15', '2018-09-10 02:48:15', 'Inherit', 'Inherit', '24', 'xgdsx', 1, 0, 1, NULL, NULL, NULL),
(42, 22, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:47', '2018-09-10 02:00:07', 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-19.png', 'Screenshot from 2018 09 10 12 27 19', 1, 12, 1, '985a7ea1f4b77d1e4d1488c6a3e3fd0aa42497e3', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-19.png', NULL),
(43, 21, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-09-10 01:59:59', 'Inherit', 'Inherit', 'Screenshot-from-2018-09-10-12-27-36.png', 'Screenshot from 2018 09 10 12 27 36', 1, 12, 1, 'ce9ad9e7021ea23834d28d4dc842e6762534dab2', 'Uploads/Home-Racing/Screenshot-from-2018-09-10-12-27-36.png', NULL),
(44, 14, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-08-21 00:57:22', 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 12, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/Home-Racing/images-1.jpeg', NULL),
(45, 16, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:48', '2018-08-21 01:04:17', 'Inherit', 'Inherit', 'images-3.jpeg', 'images 3', 1, 12, 1, 'c20af142d08d2d11f779de233a21d824611e3f42', 'Uploads/Home-Racing/images-3.jpeg', NULL),
(46, 17, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:49', '2018-08-21 01:04:17', 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 12, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/Home-Racing/images-4.jpeg', NULL),
(47, 18, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:49', '2018-08-21 01:04:18', 'Inherit', 'Inherit', 'images-5.jpeg', 'images 5', 1, 12, 1, 'f9c0c94f565d18dedeb3e028c1f888db334cdc0e', 'Uploads/Home-Racing/images-5.jpeg', NULL),
(48, 15, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:50', '2018-08-21 00:57:28', 'Inherit', 'Inherit', 'images-7.jpeg', 'images 7', 1, 12, 1, '42b981ed029f759f767aaa7023d33f8b249cb5a4', 'Uploads/Home-Racing/images-7.jpeg', NULL),
(49, 13, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-10 03:15:50', '2018-08-21 00:57:03', 'Inherit', 'Inherit', 'images.jpeg', 'images', 1, 12, 1, '04a25cf8ecb8348081dd70b22104f1d7bd24ddaf', 'Uploads/Home-Racing/images.jpeg', NULL),
(50, 28, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:40', '2018-09-11 02:08:40', 'Inherit', 'Inherit', 'aeroLogo2.png', 'aeroLogo2', 1, 12, 1, '5579ab5a51d99ba607f1cf379d96a3d4a733609c', 'Uploads/Home-Racing/aeroLogo2.png', NULL),
(51, 29, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 'Inherit', 'Inherit', 'hammer.png', 'hammer', 1, 12, 1, 'cd6c318cff3cb86c899a507c4582f38100816d63', 'Uploads/Home-Racing/hammer.png', NULL),
(52, 30, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 'Inherit', 'Inherit', 'marmot.jpeg', 'marmot', 1, 12, 1, '540b9b0c709939f479d9b2583a2fb9097b429181', 'Uploads/Home-Racing/marmot.jpeg', NULL),
(53, 31, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 'Inherit', 'Inherit', 'pirelli.png', 'pirelli', 1, 12, 1, '55618dd4041d8c37b87f2b93d836eee6f0a80921', 'Uploads/Home-Racing/pirelli.png', NULL),
(54, 32, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:41', '2018-09-11 02:08:41', 'Inherit', 'Inherit', 'polaris.png', 'polaris', 1, 12, 1, '454e6fd4e4b2ad277a8098e2f9c3b9615b0a06ae', 'Uploads/Home-Racing/polaris.png', NULL),
(55, 33, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:08:42', '2018-09-11 02:08:42', 'Inherit', 'Inherit', 'sonama.png', 'sonama', 1, 12, 1, 'a72c8ffa532a17cd4fb78694a2e8119fb338ac7a', 'Uploads/Home-Racing/sonama.png', NULL),
(56, 34, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 02:26:06', '2018-09-11 02:26:06', 'Inherit', 'Inherit', 'Screenshot-from-2018-09-11-12-54-03.png', 'Screenshot from 2018 09 11 12 54 03', 1, 12, 1, 'acaab26ca8dd050067951159ec914b6ed1fea88c', 'Uploads/Home-Racing/Screenshot-from-2018-09-11-12-54-03.png', NULL),
(57, 35, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 06:11:04', '2018-09-11 06:11:04', 'Inherit', 'Inherit', 'formula-1-vision-concept-2025-by-antonio-paglia-design.jpg', 'formula 1 vision concept 2025 by antonio paglia design', 1, 12, 1, 'd5e2bcdafa882944cf6578672f07ee48a6862e53', 'Uploads/Home-Racing/formula-1-vision-concept-2025-by-antonio-paglia-design.jpg', NULL),
(58, 3, 11, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-11 07:26:10', '2018-08-07 00:25:30', 'Inherit', 'Inherit', 'srwpdcblackrgbjuly12.png', 'srwpdcblackrgbjuly12', 1, 2, 1, '9261ad04958693d73fc35b9fbd6f3e3c8c29d5f9', 'Uploads/cms-branding/srwpdcblackrgbjuly12.png', NULL),
(59, 36, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:17', '2018-09-11 08:07:17', 'Inherit', 'Inherit', 'Our-Car.png', 'Our Car', 1, 12, 1, 'fa6700a2a03674e44341be1aade80dbc8af38040', 'Uploads/Home-Racing/Our-Car.png', NULL),
(60, 37, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:18', '2018-09-11 08:07:18', 'Inherit', 'Inherit', 'logo-1.png', 'logo 1', 1, 12, 1, '5c709f606fbcc814a55f26258e481d124606e303', 'Uploads/Home-Racing/logo-1.png', NULL),
(61, 38, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:19', '2018-09-11 08:07:19', 'Inherit', 'Inherit', 'logo-2.png', 'logo 2', 1, 12, 1, '6cad6f9672465110659101d28ea776dd1e73058a', 'Uploads/Home-Racing/logo-2.png', NULL),
(62, 39, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:24', '2018-09-11 08:07:24', 'Inherit', 'Inherit', 'logo-5.png', 'logo 5', 1, 12, 1, '74f5162a4faaa8cf3b1386f8914c533cf0faa07e', 'Uploads/Home-Racing/logo-5.png', NULL),
(63, 40, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:25', '2018-09-11 08:07:25', 'Inherit', 'Inherit', 'logo-3.png', 'logo 3', 1, 12, 1, '8fa29ebee59650e91d50fa49a1aa184bcdf7b5a6', 'Uploads/Home-Racing/logo-3.png', NULL),
(64, 41, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:25', '2018-09-11 08:07:25', 'Inherit', 'Inherit', 'logo-4.png', 'logo 4', 1, 12, 1, '9172dbf9f7991969999c61ea660ec366d51d7be3', 'Uploads/Home-Racing/logo-4.png', NULL),
(65, 42, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:07:25', '2018-09-11 08:07:25', 'Inherit', 'Inherit', 'logo-6.png', 'logo 6', 1, 12, 1, '1e9a7cab8d590db3ca2a14e2e916def015e29fe2', 'Uploads/Home-Racing/logo-6.png', NULL),
(66, 43, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-11 08:08:28', '2018-09-11 08:08:28', 'Inherit', 'Inherit', 'logo-1-v2.png', 'logo 1 v2', 1, 12, 1, '5c709f606fbcc814a55f26258e481d124606e303', 'Uploads/Home-Racing/logo-1-v2.png', NULL),
(67, 44, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-12 03:31:56', '2018-09-12 03:31:56', 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 12, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/Home-Racing/car.jpg', NULL),
(68, 45, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-12 03:31:58', '2018-09-12 03:31:58', 'Inherit', 'Inherit', 'jackson_storm_cars_3_4k_8k-t2.jpg', 'jackson storm cars 3 4k 8k t2', 1, 12, 1, '167092613c5f3d5b054a61626f8714283955bade', 'Uploads/Home-Racing/jackson_storm_cars_3_4k_8k-t2.jpg', NULL),
(69, 46, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-12 03:31:59', '2018-09-12 03:31:59', 'Inherit', 'Inherit', 'hd_96e9a361b0ffe42542346b48dd73af83.jpg', 'hd 96e9a361b0ffe42542346b48dd73af83', 1, 12, 1, '47a9c3c8ed6e03c0b76fd9b2490ab5907fb79456', 'Uploads/Home-Racing/hd_96e9a361b0ffe42542346b48dd73af83.jpg', NULL),
(70, 47, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-24 05:46:02', '2018-09-24 05:46:02', 'Inherit', 'Inherit', 'OnTrack-Margay-RIGP-2017.jpg', 'OnTrack Margay RIGP 2017', 1, 1, 1, '6394cc84e843503e4f00e9ce91e037abe9138964', 'Uploads/OnTrack-Margay-RIGP-2017.jpg', NULL),
(71, 48, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-24 05:46:03', '2018-09-24 05:46:03', 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1.jpeg', NULL),
(72, 49, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-24 05:46:04', '2018-09-24 05:46:04', 'Inherit', 'Inherit', 'images-2.jpeg', 'images 2', 1, 1, 1, '35a930a0d803cac23b30456828fe531535a3e78f', 'Uploads/images-2.jpeg', NULL),
(73, 48, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:31', '2018-09-24 05:46:03', 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1.jpeg', NULL),
(74, 49, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:32', '2018-09-24 05:46:04', 'Inherit', 'Inherit', 'images-2.jpeg', 'images 2', 1, 1, 1, '35a930a0d803cac23b30456828fe531535a3e78f', 'Uploads/images-2.jpeg', NULL),
(75, 47, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-24 06:02:32', '2018-09-24 05:46:02', 'Inherit', 'Inherit', 'OnTrack-Margay-RIGP-2017.jpg', 'OnTrack Margay RIGP 2017', 1, 1, 1, '6394cc84e843503e4f00e9ce91e037abe9138964', 'Uploads/OnTrack-Margay-RIGP-2017.jpg', NULL),
(76, 50, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 'Inherit', 'Inherit', 'Managed', 'Managed', 1, 0, 1, NULL, NULL, NULL),
(77, 50, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 'Inherit', 'Inherit', 'Managed', 'Managed', 1, 0, 1, NULL, NULL, NULL),
(78, 51, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 'Inherit', 'Inherit', 'CalendarImages', 'CalendarImages', 1, 50, 1, NULL, NULL, NULL),
(79, 51, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2018-09-24 07:02:24', '2018-09-24 07:02:24', 'Inherit', 'Inherit', 'CalendarImages', 'CalendarImages', 1, 50, 1, NULL, NULL, NULL),
(80, 52, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-24 07:25:34', '2018-09-24 07:25:34', 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 51, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Managed/CalendarImages/images-1.jpeg', NULL),
(81, 52, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-24 07:25:36', '2018-09-24 07:25:34', 'Inherit', 'Inherit', 'images-1.jpeg', 'images 1', 1, 51, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Managed/CalendarImages/images-1.jpeg', NULL),
(82, 53, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-25 02:34:46', '2018-09-25 02:34:46', 'Inherit', 'Inherit', 'images-1-v2.jpeg', 'images 1 v2', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1-v2.jpeg', NULL),
(83, 54, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:11', '2018-09-28 06:24:11', 'Inherit', 'Inherit', 'i-mpqwctr-x3.jpg', 'i mpqwctr x3', 1, 1, 1, '9eed6fa4789aaa99659bf318c814ee0388e866ff', 'Uploads/i-mpqwctr-x3.jpg', NULL),
(84, 44, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:27', '2018-09-12 03:31:56', 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 12, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/Home-Racing/car.jpg', NULL),
(85, 46, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:28', '2018-09-12 03:31:59', 'Inherit', 'Inherit', 'hd_96e9a361b0ffe42542346b48dd73af83.jpg', 'hd 96e9a361b0ffe42542346b48dd73af83', 1, 12, 1, '47a9c3c8ed6e03c0b76fd9b2490ab5907fb79456', 'Uploads/Home-Racing/hd_96e9a361b0ffe42542346b48dd73af83.jpg', NULL),
(86, 45, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:28', '2018-09-12 03:31:58', 'Inherit', 'Inherit', 'jackson_storm_cars_3_4k_8k-t2.jpg', 'jackson storm cars 3 4k 8k t2', 1, 12, 1, '167092613c5f3d5b054a61626f8714283955bade', 'Uploads/Home-Racing/jackson_storm_cars_3_4k_8k-t2.jpg', NULL),
(87, 36, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:30', '2018-09-11 08:07:17', 'Inherit', 'Inherit', 'Our-Car.png', 'Our Car', 1, 12, 1, 'fa6700a2a03674e44341be1aade80dbc8af38040', 'Uploads/Home-Racing/Our-Car.png', NULL),
(88, 54, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-09-28 06:24:30', '2018-09-28 06:24:11', 'Inherit', 'Inherit', 'i-mpqwctr-x3.jpg', 'i mpqwctr x3', 1, 1, 1, '9eed6fa4789aaa99659bf318c814ee0388e866ff', 'Uploads/i-mpqwctr-x3.jpg', NULL),
(89, 19, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-10-04 04:42:18', '2018-08-21 01:39:59', 'Inherit', 'Inherit', 'download.png', 'download', 1, 12, 1, 'f598a4bafc13f0fcc54ea5545d2c9dd10af1d6c5', 'Uploads/Home-Racing/download.png', NULL),
(90, 55, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-10-04 04:42:55', '2018-10-04 04:42:55', 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 1, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/car.jpg', NULL),
(91, 55, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-10-04 05:10:13', '2018-10-04 04:42:55', 'Inherit', 'Inherit', 'car.jpg', 'car', 1, 1, 1, '6a71cfcfd0e49be414e0190efa099f22b0084284', 'Uploads/car.jpg', NULL),
(92, 56, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-10-05 00:32:08', '2018-10-05 00:32:08', 'Inherit', 'Inherit', 'images-1-v3.jpeg', 'images 1 v3', 1, 1, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/images-1-v3.jpeg', NULL),
(93, 57, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-10-05 00:32:08', '2018-10-05 00:32:08', 'Inherit', 'Inherit', 'images-2-v2.jpeg', 'images 2 v2', 1, 1, 1, '69012a85e1fd5c513af1b5a6b7013bbdfcd4dfb5', 'Uploads/images-2-v2.jpeg', NULL),
(94, 58, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2018-10-05 00:32:08', '2018-10-05 00:32:08', 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 1, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/images-4.jpeg', NULL),
(95, 53, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:13', '2018-09-25 02:34:46', 'Inherit', 'Inherit', 'images-1-v2.jpeg', 'images 1 v2', 1, 1, 1, 'fe89c47cfc4e1e99837bfe2d5e38b2306b94dbc5', 'Uploads/images-1-v2.jpeg', NULL),
(96, 56, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:13', '2018-10-05 00:32:08', 'Inherit', 'Inherit', 'images-1-v3.jpeg', 'images 1 v3', 1, 1, 1, '3800a7c81ab3d54bce35a2e2b0c5c1ce2916a61b', 'Uploads/images-1-v3.jpeg', NULL),
(97, 57, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-10-05 07:35:14', '2018-10-05 00:32:08', 'Inherit', 'Inherit', 'images-2-v2.jpeg', 'images 2 v2', 1, 1, 1, '69012a85e1fd5c513af1b5a6b7013bbdfcd4dfb5', 'Uploads/images-2-v2.jpeg', NULL),
(98, 58, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2018-10-05 07:39:47', '2018-10-05 00:32:08', 'Inherit', 'Inherit', 'images-4.jpeg', 'images 4', 1, 1, 1, '3b97f44392b2ad3e15a825f4bf6800990f66d15f', 'Uploads/images-4.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `File_ViewerGroups`
--

CREATE TABLE `File_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Gallary_Component_Gallary_Photo`
--

CREATE TABLE `Gallary_Component_Gallary_Photo` (
  `ID` int(11) NOT NULL,
  `Gallary_Component_GallaryID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Gallary_Component_Gallary_Photo`
--

INSERT INTO `Gallary_Component_Gallary_Photo` (`ID`, `Gallary_Component_GallaryID`, `ImageID`) VALUES
(1, 19, 4),
(2, 19, 11);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Group') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'SilverStripe\\Security\\Group', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'SilverStripe\\Security\\Group', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
(3, 'SilverStripe\\Security\\Group', '2018-08-13 05:21:38', '2018-08-13 05:21:38', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0),
(4, 'SilverStripe\\Security\\Group', '2018-08-13 07:33:59', '2018-08-13 07:33:59', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0),
(5, 'SilverStripe\\Security\\Group', '2018-08-13 07:34:00', '2018-08-13 07:34:00', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0),
(6, 'SilverStripe\\Security\\Group', '2018-08-13 07:35:05', '2018-08-13 07:35:05', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0),
(7, 'SilverStripe\\Security\\Group', '2018-08-17 12:55:26', '2018-08-17 12:55:26', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `HowToGetInvolved`
--

CREATE TABLE `HowToGetInvolved` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `HowToGetInvolved_Live`
--

CREATE TABLE `HowToGetInvolved_Live` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `HowToGetInvolved_Versions`
--

CREATE TABLE `HowToGetInvolved_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmailHashed` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LoginAttempt`
--

INSERT INTO `LoginAttempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `EmailHashed`, `Status`, `IP`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\LoginAttempt', '2018-08-06 07:31:44', '2018-08-06 07:31:44', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(2, 'SilverStripe\\Security\\LoginAttempt', '2018-08-07 00:18:24', '2018-08-07 00:18:24', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(3, 'SilverStripe\\Security\\LoginAttempt', '2018-08-07 02:54:20', '2018-08-07 02:54:20', NULL, '0795638bff6286673f024037b2313bf5fe00c088', 'Success', '172.20.0.1', 2),
(4, 'SilverStripe\\Security\\LoginAttempt', '2018-08-07 02:55:46', '2018-08-07 02:55:46', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(5, 'SilverStripe\\Security\\LoginAttempt', '2018-08-07 06:36:04', '2018-08-07 06:36:04', NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Success', '172.20.0.1', 1),
(6, 'SilverStripe\\Security\\LoginAttempt', '2018-08-08 00:43:09', '2018-08-08 00:43:09', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '172.20.0.1', 0),
(7, 'SilverStripe\\Security\\LoginAttempt', '2018-08-08 00:43:13', '2018-08-08 00:43:13', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '172.20.0.1', 0),
(8, 'SilverStripe\\Security\\LoginAttempt', '2018-08-08 00:43:17', '2018-08-08 00:43:17', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '172.20.0.1', 0),
(9, 'SilverStripe\\Security\\LoginAttempt', '2018-08-08 00:43:36', '2018-08-08 00:43:36', NULL, '0795638bff6286673f024037b2313bf5fe00c088', 'Success', '172.20.0.1', 2),
(10, 'SilverStripe\\Security\\LoginAttempt', '2018-08-08 00:44:03', '2018-08-08 00:44:03', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(11, 'SilverStripe\\Security\\LoginAttempt', '2018-08-08 23:38:51', '2018-08-08 23:38:51', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(12, 'SilverStripe\\Security\\LoginAttempt', '2018-08-09 07:38:24', '2018-08-09 07:38:24', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(13, 'SilverStripe\\Security\\LoginAttempt', '2018-08-09 23:46:47', '2018-08-09 23:46:47', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(14, 'SilverStripe\\Security\\LoginAttempt', '2018-08-10 01:16:29', '2018-08-10 01:16:29', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(15, 'SilverStripe\\Security\\LoginAttempt', '2018-08-12 23:39:38', '2018-08-12 23:39:38', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(16, 'SilverStripe\\Security\\LoginAttempt', '2018-08-13 04:29:35', '2018-08-13 04:29:35', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(17, 'SilverStripe\\Security\\LoginAttempt', '2018-08-13 23:56:17', '2018-08-13 23:56:17', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(18, 'SilverStripe\\Security\\LoginAttempt', '2018-08-20 04:55:54', '2018-08-20 04:55:54', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(19, 'SilverStripe\\Security\\LoginAttempt', '2018-08-20 01:29:15', '2018-08-20 01:29:15', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(20, 'SilverStripe\\Security\\LoginAttempt', '2018-08-20 07:34:59', '2018-08-20 07:34:59', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(21, 'SilverStripe\\Security\\LoginAttempt', '2018-08-21 23:43:42', '2018-08-21 23:43:42', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(22, 'SilverStripe\\Security\\LoginAttempt', '2018-08-27 23:51:07', '2018-08-27 23:51:07', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(23, 'SilverStripe\\Security\\LoginAttempt', '2018-08-30 01:41:16', '2018-08-30 01:41:16', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(24, 'SilverStripe\\Security\\LoginAttempt', '2018-08-31 00:03:11', '2018-08-31 00:03:11', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(25, 'SilverStripe\\Security\\LoginAttempt', '2018-09-10 00:49:44', '2018-09-10 00:49:44', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(26, 'SilverStripe\\Security\\LoginAttempt', '2018-09-10 23:46:54', '2018-09-10 23:46:54', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(27, 'SilverStripe\\Security\\LoginAttempt', '2018-09-11 23:48:54', '2018-09-11 23:48:54', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(28, 'SilverStripe\\Security\\LoginAttempt', '2018-09-13 00:48:47', '2018-09-13 00:48:47', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(29, 'SilverStripe\\Security\\LoginAttempt', '2018-09-13 23:44:20', '2018-09-13 23:44:20', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(30, 'SilverStripe\\Security\\LoginAttempt', '2018-09-19 05:33:06', '2018-09-19 05:33:06', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(31, 'SilverStripe\\Security\\LoginAttempt', '2018-09-24 03:06:46', '2018-09-24 03:06:46', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(32, 'SilverStripe\\Security\\LoginAttempt', '2018-09-25 01:29:57', '2018-09-25 01:29:57', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(33, 'SilverStripe\\Security\\LoginAttempt', '2018-09-25 23:33:26', '2018-09-25 23:33:26', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(34, 'SilverStripe\\Security\\LoginAttempt', '2018-09-26 01:39:06', '2018-09-26 01:39:06', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(35, 'SilverStripe\\Security\\LoginAttempt', '2018-09-26 23:27:12', '2018-09-26 23:27:12', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(36, 'SilverStripe\\Security\\LoginAttempt', '2018-09-27 00:37:44', '2018-09-27 00:37:44', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(37, 'SilverStripe\\Security\\LoginAttempt', '2018-09-27 23:36:31', '2018-09-27 23:36:31', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(38, 'SilverStripe\\Security\\LoginAttempt', '2018-09-28 08:07:24', '2018-09-28 08:07:24', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(39, 'SilverStripe\\Security\\LoginAttempt', '2018-10-01 01:09:29', '2018-10-01 01:09:29', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(40, 'SilverStripe\\Security\\LoginAttempt', '2018-10-01 05:04:42', '2018-10-01 05:04:42', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.20.0.1', 1),
(41, 'SilverStripe\\Security\\LoginAttempt', '2018-10-03 05:24:15', '2018-10-03 05:24:15', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(42, 'SilverStripe\\Security\\LoginAttempt', '2018-10-03 23:34:49', '2018-10-03 23:34:49', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(43, 'SilverStripe\\Security\\LoginAttempt', '2018-10-04 23:35:17', '2018-10-04 23:35:17', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(44, 'SilverStripe\\Security\\LoginAttempt', '2018-10-05 02:54:25', '2018-10-05 02:54:25', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(45, 'SilverStripe\\Security\\LoginAttempt', '2018-10-08 01:32:30', '2018-10-08 01:32:30', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1),
(46, 'SilverStripe\\Security\\LoginAttempt', '2018-10-09 02:14:01', '2018-10-09 02:14:01', NULL, 'd3942dce589a8baf879be01b717184712b119a72', 'Success', '172.18.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Member') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BlogProfileSummary` mediumtext CHARACTER SET utf8,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `URLSegment`, `BlogProfileSummary`, `BlogProfileImageID`) VALUES
(1, 'SilverStripe\\Security\\Member', '2018-10-09 02:14:01', '2018-08-06 07:31:22', 'Dharati', 'Mirani', 'admin@admin.com', '9ea2336ded4f36f3cbe5ff5f93ca72fe3a18e33b', '2018-10-12 02:14:01', '$2y$10$75235702df913317195ecOE.pygxrAdIfsR/LiOngFgnCqzsTUIhW', NULL, NULL, 'blowfish', '10$75235702df913317195eca', NULL, NULL, 'en_US', 0, 'dharati-mirani', NULL, 0),
(2, 'SilverStripe\\Security\\Member', '2018-08-08 00:43:36', '2018-08-07 02:54:00', 'snehal', 'brahmbhatt', 'snehal.addweb@gmail.com', 'b00c23ac2360871589278feb582442434a0ef4d7', '2018-08-11 00:43:36', '$2y$10$8ef3786e3139f122ffc7dudX5cQtHK2hrByQMPG/R.fu2dG8e5jVe', NULL, NULL, 'blowfish', '10$8ef3786e3139f122ffc7d7', NULL, NULL, 'en_US', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\MemberPassword', '2018-08-06 07:31:22', '2018-08-06 07:31:22', NULL, NULL, 'none', 1),
(2, 'SilverStripe\\Security\\MemberPassword', '2018-08-06 07:31:22', '2018-08-06 07:31:22', '$2y$10$75235702df913317195ecOE.pygxrAdIfsR/LiOngFgnCqzsTUIhW', '10$75235702df913317195eca', 'blowfish', 1),
(3, 'SilverStripe\\Security\\MemberPassword', '2018-08-07 02:54:00', '2018-08-07 02:54:00', '$2y$10$8ef3786e3139f122ffc7dudX5cQtHK2hrByQMPG/R.fu2dG8e5jVe', '10$8ef3786e3139f122ffc7d7', 'blowfish', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Permission') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'SilverStripe\\Security\\Permission', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'SilverStripe\\Security\\Permission', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'SilverStripe\\Security\\Permission', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'SilverStripe\\Security\\Permission', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'SilverStripe\\Security\\Permission', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'ADMIN', 0, 1, 2),
(6, 'SilverStripe\\Security\\Permission', '2018-08-13 05:21:38', '2018-08-13 05:21:38', 'CMS_ACCESS_CMSMain', 0, 1, 3),
(7, 'SilverStripe\\Security\\Permission', '2018-08-13 07:33:59', '2018-08-13 07:33:59', 'CMS_ACCESS_CMSMain', 0, 1, 4),
(8, 'SilverStripe\\Security\\Permission', '2018-08-13 07:34:00', '2018-08-13 07:34:00', 'CMS_ACCESS_CMSMain', 0, 1, 5),
(9, 'SilverStripe\\Security\\Permission', '2018-08-13 07:35:06', '2018-08-13 07:35:06', 'CMS_ACCESS_CMSMain', 0, 1, 6),
(10, 'SilverStripe\\Security\\Permission', '2018-08-17 12:55:26', '2018-08-17 12:55:26', 'CMS_ACCESS_CMSMain', 0, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Race`
--

CREATE TABLE `Race` (
  `ID` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `Race` mediumtext CHARACTER SET utf8,
  `Name` mediumtext CHARACTER SET utf8,
  `PhotosID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Race`
--

INSERT INTO `Race` (`ID`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `Race`, `Name`, `PhotosID`) VALUES
(70, '2018-10-04', '2018-10-06', '9:00', '5:00', '1, 2 & 4', 'Sonama Raceway', 19),
(76, '2018-10-17', '2018-10-18', '9:00', '5:00', '3 & 4', 'Race 2', 19),
(77, '2018-10-20', '2018-10-21', '8:00', '3:00', '5 & 6', 'Race 3', 19),
(78, '2018-10-25', '2018-10-26', '5:00', '7:00', '8', 'Race 4', 19),
(79, '2018-10-27', '2018-10-28', '6:00', '8:00', '8 & 9', 'Race 5', 19);

-- --------------------------------------------------------

--
-- Table structure for table `Race_Live`
--

CREATE TABLE `Race_Live` (
  `ID` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `Race` mediumtext CHARACTER SET utf8,
  `Name` mediumtext CHARACTER SET utf8,
  `PhotosID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Race_Versions`
--

CREATE TABLE `Race_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `Race` mediumtext CHARACTER SET utf8,
  `Name` mediumtext CHARACTER SET utf8,
  `PhotosID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Race_Versions`
--

INSERT INTO `Race_Versions` (`ID`, `RecordID`, `Version`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `Race`, `Name`, `PhotosID`) VALUES
(1, 70, 5, '2018-10-04', '2018-10-06', '9:00', '5:00', '1, 2 & 4', 'Sonama Raceway', 19),
(2, 76, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 76, 2, '2018-10-17', '2018-10-18', '9:00', '5:00', '3 & 4', 'Race 2', 19),
(4, 77, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 77, 2, '2018-10-20', '2018-10-21', '8:00', '3:00', '5 & 6', 'Race 3', 19),
(6, 77, 3, '2018-10-20', '2018-10-21', '8:00', '3:00', '5 & 6', 'Race 3', 19),
(7, 78, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 78, 2, '2018-10-25', '2018-10-26', '5:00', '7:00', '8', 'Race 4', 19),
(9, 79, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 79, 2, '2018-10-27', '2018-10-28', '6:00', '8:00', '8 & 9', 'Race 5', 19);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Versions`
--

CREATE TABLE `RedirectorPage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RememberLoginHash`
--

CREATE TABLE `RememberLoginHash` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `Hash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Reports`
--

CREATE TABLE `Reports` (
  `ID` int(11) NOT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Date` date DEFAULT NULL,
  `Race` mediumtext CHARACTER SET utf8,
  `Name` mediumtext CHARACTER SET utf8,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `ReportPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reports`
--

INSERT INTO `Reports` (`ID`, `Description`, `Date`, `Race`, `Name`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `ReportPhotoID`) VALUES
(45, 'The tenth generation of Mitsubishi\'s high-performance flagship model first rolled off the production lines in October 2007, a whopping fifteen years after it was initially introduced. Originally intended for the Japanese market only, the Evo\'s generous specifications and motorsports pedigree soon captured the hearts and minds of rev heads and racers around the world and an automotive legend was born.\r\n\r\nFeaturing a high-tech chassis, a brand new lightweight 2-liter, 4-cylinder turbocharged engine capable of producing 291 bhp upwards and an advanced, full-time four-wheel drive system, the Evolution X offers a range of different models which include either manual 5-speed or semi-automatic 6-speed twin-clutch SST transmissions.\r\n\r\nSpeculation remains as to whether the Evo X is to be the last in the icon\'s impressive dynasty after Mitsubishi seemed to suggest that the company wished to head in a more environmentally-friendly direction. If this car really does represent the end of the road for the mighty Evo, what better way to send it off than taking the 2010 Mitsubishi Lancer Evolution X around our tracks at insane speeds?\r\n\r\n\r\nThe tenth generation of Mitsubishi\'s high-performance flagship model first rolled off the production lines in October 2007, a whopping fifteen years after it was initially introduced. Originally intended for the Japanese market only, the Evo\'s generous specifications and motorsports pedigree soon captured the hearts and minds of rev heads and racers around the world and an automotive legend was born.\r\n\r\nFeaturing a high-tech chassis, a brand new lightweight 2-liter, 4-cylinder turbocharged engine capable of producing 291 bhp upwards and an advanced, full-time four-wheel drive system, the Evolution X offers a range of different models which include either manual 5-speed or semi-automatic 6-speed twin-clutch SST transmissions.\r\n\r\nSpeculation remains as to whether the Evo X is to be the last in the icon\'s impressive dynasty after Mitsubishi seemed to suggest that the company wished to head in a more environmentally-friendly direction. If this car really does represent the end of the road for the mighty Evo, what better way to send it off than taking the 2010 Mitsubishi Lancer Evolution X around our tracks at insane speeds?\r\n\r\n\r\nThe tenth generation of Mitsubishi\'s high-performance flagship model first rolled off the production lines in October 2007, a whopping fifteen years after it was initially introduced. Originally intended for the Japanese market only, the Evo\'s generous specifications and motorsports pedigree soon captured the hearts and minds of rev heads and racers around the world and an automotive legend was born.\r\n\r\nFeaturing a high-tech chassis, a brand new lightweight 2-liter, 4-cylinder turbocharged engine capable of producing 291 bhp upwards and an advanced, full-time four-wheel drive system, the Evolution X offers a range of different models which include either manual 5-speed or semi-automatic 6-speed twin-clutch SST transmissions.\r\n\r\nSpeculation remains as to whether the Evo X is to be the last in the icon\'s impressive dynasty after Mitsubishi seemed to suggest that the company wished to head in a more environmentally-friendly direction. If this car really does represent the end of the road for the mighty Evo, what better way to send it off than taking the 2010 Mitsubishi Lancer Evolution X around our tracks at insane speeds?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(67, 'The present study examines the portrayal of Black men and women in the images and texts of advertisements featured in Black-oriented magazines. A comparative content analysis is conducted on ads featured in Essence and Jet magazines for 2003 and 2004. Quantitative and qualitative data analyses reveal that Black people are portrayed both positively and negatively. Ideologies of racism and White supremacy continue to pervade advertisements featured in Black magazines, and this is problematic because new images and texts concerning Black people will be based on such negative attitudes. It is not enough to increase the number of positive portrayals of Black people; negative portrayals must also decrease and eventually be eliminated altogether.\r\n\r\nThe present study examines the portrayal of Black men and women in the images and texts of advertisements featured in Black-oriented magazines. A comparative content analysis is conducted on ads featured in Essence and Jet magazines for 2003 and 2004. Quantitative and qualitative data analyses reveal that Black people are portrayed both positively and negatively. Ideologies of racism and White supremacy continue to pervade advertisements featured in Black magazines, and this is problematic because new images and texts concerning Black people will be based on such negative attitudes. It is not enough to increase the number of positive portrayals of Black people; negative portrayals must also decrease and eventually be eliminated altogether.\r\n\r\nThe present study examines the portrayal of Black men and women in the images and texts of advertisements featured in Black-oriented magazines. A comparative content analysis is conducted on ads featured in Essence and Jet magazines for 2003 and 2004. Quantitative and qualitative data analyses reveal that Black people are portrayed both positively and negatively. Ideologies of racism and White supremacy continue to pervade advertisements featured in Black magazines, and this is problematic because new images and texts concerning Black people will be based on such negative attitudes. It is not enough to increase the number of positive portrayals of Black people; negative portrayals must also decrease and eventually be eliminated altogether.\r\n\r\n', '2018-10-04', '1', 'SONAMA RACEWAY', NULL, NULL, NULL, NULL, 0),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, 'We are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n', NULL, '1, 2 & 3', 'Sonama Raceway', '2018-10-11', '2018-10-13', '9:00', '5:00', 0),
(71, 'Panoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\n', '2018-10-05', '1', 'Sonama Raceway', NULL, NULL, NULL, NULL, 54),
(72, 'Does nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.\r\n\r\nDoes nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.\r\n\r\nDoes nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.', '2018-10-12', '2', 'Sonama Raceway', NULL, NULL, NULL, NULL, 47);

-- --------------------------------------------------------

--
-- Table structure for table `Reports_Live`
--

CREATE TABLE `Reports_Live` (
  `ID` int(11) NOT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Date` date DEFAULT NULL,
  `Race` mediumtext CHARACTER SET utf8,
  `Name` mediumtext CHARACTER SET utf8,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `ReportPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Reports_Photos`
--

CREATE TABLE `Reports_Photos` (
  `ID` int(11) NOT NULL,
  `ReportsID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reports_Photos`
--

INSERT INTO `Reports_Photos` (`ID`, `ReportsID`, `ImageID`) VALUES
(1, 45, 33),
(2, 67, 54),
(3, 67, 53),
(4, 67, 48),
(5, 70, 19);

-- --------------------------------------------------------

--
-- Table structure for table `Reports_ReportPhotos`
--

CREATE TABLE `Reports_ReportPhotos` (
  `ID` int(11) NOT NULL,
  `ReportsID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reports_ReportPhotos`
--

INSERT INTO `Reports_ReportPhotos` (`ID`, `ReportsID`, `ImageID`) VALUES
(1, 71, 53),
(2, 71, 48),
(3, 71, 49),
(4, 72, 56),
(5, 72, 57),
(6, 72, 58);

-- --------------------------------------------------------

--
-- Table structure for table `Reports_Versions`
--

CREATE TABLE `Reports_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Description` mediumtext CHARACTER SET utf8,
  `Date` date DEFAULT NULL,
  `Race` mediumtext CHARACTER SET utf8,
  `Name` mediumtext CHARACTER SET utf8,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` mediumtext CHARACTER SET utf8,
  `EndTime` mediumtext CHARACTER SET utf8,
  `ReportPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reports_Versions`
--

INSERT INTO `Reports_Versions` (`ID`, `RecordID`, `Version`, `Description`, `Date`, `Race`, `Name`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `ReportPhotoID`) VALUES
(1, 45, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 45, 2, 'The tenth generation of Mitsubishi\'s high-performance flagship model first rolled off the production lines in October 2007, a whopping fifteen years after it was initially introduced. Originally intended for the Japanese market only, the Evo\'s generous specifications and motorsports pedigree soon captured the hearts and minds of rev heads and racers around the world and an automotive legend was born.\r\n\r\nFeaturing a high-tech chassis, a brand new lightweight 2-liter, 4-cylinder turbocharged engine capable of producing 291 bhp upwards and an advanced, full-time four-wheel drive system, the Evolution X offers a range of different models which include either manual 5-speed or semi-automatic 6-speed twin-clutch SST transmissions.\r\n\r\nSpeculation remains as to whether the Evo X is to be the last in the icon\'s impressive dynasty after Mitsubishi seemed to suggest that the company wished to head in a more environmentally-friendly direction. If this car really does represent the end of the road for the mighty Evo, what better way to send it off than taking the 2010 Mitsubishi Lancer Evolution X around our tracks at insane speeds?\r\n\r\n\r\nThe tenth generation of Mitsubishi\'s high-performance flagship model first rolled off the production lines in October 2007, a whopping fifteen years after it was initially introduced. Originally intended for the Japanese market only, the Evo\'s generous specifications and motorsports pedigree soon captured the hearts and minds of rev heads and racers around the world and an automotive legend was born.\r\n\r\nFeaturing a high-tech chassis, a brand new lightweight 2-liter, 4-cylinder turbocharged engine capable of producing 291 bhp upwards and an advanced, full-time four-wheel drive system, the Evolution X offers a range of different models which include either manual 5-speed or semi-automatic 6-speed twin-clutch SST transmissions.\r\n\r\nSpeculation remains as to whether the Evo X is to be the last in the icon\'s impressive dynasty after Mitsubishi seemed to suggest that the company wished to head in a more environmentally-friendly direction. If this car really does represent the end of the road for the mighty Evo, what better way to send it off than taking the 2010 Mitsubishi Lancer Evolution X around our tracks at insane speeds?\r\n\r\n\r\nThe tenth generation of Mitsubishi\'s high-performance flagship model first rolled off the production lines in October 2007, a whopping fifteen years after it was initially introduced. Originally intended for the Japanese market only, the Evo\'s generous specifications and motorsports pedigree soon captured the hearts and minds of rev heads and racers around the world and an automotive legend was born.\r\n\r\nFeaturing a high-tech chassis, a brand new lightweight 2-liter, 4-cylinder turbocharged engine capable of producing 291 bhp upwards and an advanced, full-time four-wheel drive system, the Evolution X offers a range of different models which include either manual 5-speed or semi-automatic 6-speed twin-clutch SST transmissions.\r\n\r\nSpeculation remains as to whether the Evo X is to be the last in the icon\'s impressive dynasty after Mitsubishi seemed to suggest that the company wished to head in a more environmentally-friendly direction. If this car really does represent the end of the road for the mighty Evo, what better way to send it off than taking the 2010 Mitsubishi Lancer Evolution X around our tracks at insane speeds?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 67, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 67, 2, 'The present study examines the portrayal of Black men and women in the images and texts of advertisements featured in Black-oriented magazines. A comparative content analysis is conducted on ads featured in Essence and Jet magazines for 2003 and 2004. Quantitative and qualitative data analyses reveal that Black people are portrayed both positively and negatively. Ideologies of racism and White supremacy continue to pervade advertisements featured in Black magazines, and this is problematic because new images and texts concerning Black people will be based on such negative attitudes. It is not enough to increase the number of positive portrayals of Black people; negative portrayals must also decrease and eventually be eliminated altogether.\r\n\r\nThe present study examines the portrayal of Black men and women in the images and texts of advertisements featured in Black-oriented magazines. A comparative content analysis is conducted on ads featured in Essence and Jet magazines for 2003 and 2004. Quantitative and qualitative data analyses reveal that Black people are portrayed both positively and negatively. Ideologies of racism and White supremacy continue to pervade advertisements featured in Black magazines, and this is problematic because new images and texts concerning Black people will be based on such negative attitudes. It is not enough to increase the number of positive portrayals of Black people; negative portrayals must also decrease and eventually be eliminated altogether.\r\n\r\nThe present study examines the portrayal of Black men and women in the images and texts of advertisements featured in Black-oriented magazines. A comparative content analysis is conducted on ads featured in Essence and Jet magazines for 2003 and 2004. Quantitative and qualitative data analyses reveal that Black people are portrayed both positively and negatively. Ideologies of racism and White supremacy continue to pervade advertisements featured in Black magazines, and this is problematic because new images and texts concerning Black people will be based on such negative attitudes. It is not enough to increase the number of positive portrayals of Black people; negative portrayals must also decrease and eventually be eliminated altogether.\r\n\r\n', '2018-10-04', '1', 'SONAMA RACEWAY', NULL, NULL, NULL, NULL, 0),
(5, 69, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 70, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 70, 2, 'We are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n', NULL, '1, 2, 3', 'Sonama Raceway', '2018-10-11', '2018-10-13', '9:00', '5:00', 0),
(8, 70, 3, 'We are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n', NULL, '1, 2, 3', 'Sonama Raceway', '2018-10-11', '2018-10-13', '9:00', '5:00', 0),
(9, 70, 4, 'We are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n\r\nWe are stocked with just about everything we need for BLU but as we continue to grow don\'t forget about donating any coolers, chairs, cones...just about anything you can imagine at an ultra to BLR. What we don\'t use, you can be assured will find a great home. \r\n', NULL, '1, 2 & 3', 'Sonama Raceway', '2018-10-11', '2018-10-13', '9:00', '5:00', 0),
(10, 71, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 71, 2, 'Panoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\n', '2018-10-05', '1', 'Sonama Raceway', NULL, NULL, NULL, NULL, 0),
(12, 72, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 72, 2, 'Does nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.\r\n\r\nDoes nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.\r\n\r\nDoes nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.', '2018-10-12', '2', 'Sonama Raceway', NULL, NULL, NULL, NULL, 0),
(14, 72, 3, 'Does nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.\r\n\r\nDoes nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.\r\n\r\nDoes nothing adding an echo $hc to the beginning of the function just prints -1 regardless of what i put in the parentheses.\r\nSo why is this? The documentation seems to indicate that I can pass parameters to controller functions. What am I doing wrong?\r\n\r\nHaving browsed through some forum posts I have come to the conclusion that I can\'t pass properties as parameters anways and that would kill this particular implementation. But I am still curious as to why I can\'t seem to pass a literal.\r\n\r\nBeyond this, what is the best method of pre processing database values? Should I be incorporating the controller function into the model? Probably the best way to go about this is to sanitize and standardize the database entries for $HotelCategory after input in the cms. IMHO the most elegant way to do this would be with an accessor function setHotelCategoy. But I am not sure they exist in silverstripe. So I am asking if silverstripe detects such accessor functions.', '2018-10-12', '2', 'Sonama Raceway', NULL, NULL, NULL, NULL, 47),
(15, 71, 3, 'Panoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\nPanoply has made the difficult decision to not move forward with the podcast \"Our National Conversation About Conversations About Race.\" We loved working with Baratunde, Raquel, Tanner, and Anna over the last two years, and are proud of their important contributions to the dialog about race in America. However, frequent scheduling issues made it difficult to produce the show that we all wanted to create. Though the cancelation was unrelated to the current political climate, we regret the timing. Ending it now is painful, but a growing company like ours must make hard decisions, and this was one of the hardest. Now more than ever, Panoply recognizes the urgent need for diverse voices and frank conversations, and we’re committed to covering the important topics of race and ethnicity in America. Please stay tuned!\r\n\r\n', '2018-10-05', '1', 'Sonama Raceway', NULL, NULL, NULL, NULL, 54);

-- --------------------------------------------------------

--
-- Table structure for table `Results`
--

CREATE TABLE `Results` (
  `ID` int(11) NOT NULL,
  `FinishingPosition` mediumtext CHARACTER SET utf8,
  `Driver` mediumtext CHARACTER SET utf8,
  `LapTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Results`
--

INSERT INTO `Results` (`ID`, `FinishingPosition`, `Driver`, `LapTime`) VALUES
(73, '01', '07 - Peter Ludwing', '05:50:00'),
(74, '02', '04 - Brain Frank', '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Results_Live`
--

CREATE TABLE `Results_Live` (
  `ID` int(11) NOT NULL,
  `FinishingPosition` mediumtext CHARACTER SET utf8,
  `Driver` mediumtext CHARACTER SET utf8,
  `LapTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Results_Versions`
--

CREATE TABLE `Results_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FinishingPosition` mediumtext CHARACTER SET utf8,
  `Driver` mediumtext CHARACTER SET utf8,
  `LapTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Results_Versions`
--

INSERT INTO `Results_Versions` (`ID`, `RecordID`, `Version`, `FinishingPosition`, `Driver`, `LapTime`) VALUES
(1, 73, 1, NULL, NULL, NULL),
(2, 73, 2, '01', '07 - Peter Ludwing', '05:50:00'),
(3, 73, 3, '01', '07 - Peter Ludwing', '05:50:00'),
(4, 73, 4, '01', '07 - Peter Ludwing', '05:50:00'),
(5, 74, 1, NULL, NULL, NULL),
(6, 74, 2, '02', '04 - Brain Frank', '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Series`
--

CREATE TABLE `Series` (
  `ID` int(11) NOT NULL,
  `Year` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SeriesPhotoID` int(11) NOT NULL DEFAULT '0',
  `Series` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Series`
--

INSERT INTO `Series` (`ID`, `Year`, `Title`, `SeriesPhotoID`, `Series`) VALUES
(30, '2018', 'Series 2018', 35, 'Simraceway\'s Open-wheel Race Series is back for 2018.'),
(87, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Series_Live`
--

CREATE TABLE `Series_Live` (
  `ID` int(11) NOT NULL,
  `Year` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SeriesPhotoID` int(11) NOT NULL DEFAULT '0',
  `Series` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Series_Versions`
--

CREATE TABLE `Series_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Year` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SeriesPhotoID` int(11) NOT NULL DEFAULT '0',
  `Series` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Series_Versions`
--

INSERT INTO `Series_Versions` (`ID`, `RecordID`, `Version`, `Year`, `Title`, `SeriesPhotoID`, `Series`) VALUES
(1, 30, 1, NULL, 'New Series', 0, NULL),
(2, 30, 2, '2018', 'Series 2018', 35, NULL),
(3, 30, 3, '2018', NULL, 35, 'series'),
(4, 30, 4, '2018', NULL, 35, 'Simraceway\'s Open-wheel Race Series is back for 2018.'),
(5, 87, 1, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') CHARACTER SET utf8 DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CMSLogoID` int(11) NOT NULL DEFAULT '0',
  `Facebook` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Twitter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LinkedIn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Instagram` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CopyRight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Address` mediumtext CHARACTER SET utf8,
  `PhoneNumber1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhoneNumber2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `About` mediumtext CHARACTER SET utf8,
  `Email` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `CMSLogoID`, `Facebook`, `Twitter`, `LinkedIn`, `Instagram`, `CopyRight`, `Address`, `PhoneNumber1`, `PhoneNumber2`, `About`, `Email`) VALUES
(1, 'SilverStripe\\SiteConfig\\SiteConfig', '2018-09-11 07:26:09', '2018-08-06 07:31:21', 'series', 'Simraceway', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 3, 'https://www.facebook.com/SRW.PDC', 'https://twitter.com/simraceway', 'https://www.linkedin.com/company/emotive-&-jim-russell-racing-driving-school/', 'https://www.instagram.com/simraceway/', 'COPYRIGHT @ 2018 SIMRACEWAY. ALL RIGHTS RESERVED ', 'Turn 1, Sonama Raceway, 29359 arnold Drive, Sonama, CA 95476', '1800-733-0345', '(707) 938-9889', 'Quis nostrud exercitation ullamco laboris nisi ut ex ea commodo consequat. Duis aute irure dolor in repregenderit in voluptate.', 'pdc_info@simraceway..com');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','Event\\Component\\Race','Event\\Component\\Reports') CHARACTER SET utf8 DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(10, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:23', '2018-08-20 01:29:23', 'Inherit', 'Inherit', 3, 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 0),
(11, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:24', '2018-08-20 01:29:24', 'Inherit', 'Inherit', 16, 'server-error-2', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 3, 0, 0, NULL, 0),
(34, 'CarsAndClasses\\Component\\CarsAndClasses', '2018-09-24 06:02:47', '2018-09-24 05:13:22', 'Inherit', 'Inherit', 3, 'cars-and-classes', 'Cars And Classes', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(35, 'CarsAndClasses\\Component\\AddCarsAndClasses', '2018-09-24 06:02:31', '2018-09-24 05:14:10', 'Inherit', 'Inherit', 3, 'add-cars-and-classes', 'Add Cars And Classes 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 34),
(46, 'StandingAndResult\\Component\\StandingAndResult', '2018-10-05 07:39:44', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 6, 'standing-and-result', 'Standing And Result', NULL, '<p><span>Bundles are a quick and cost-effective way of building car collections and increasing the number of available Events and Quick Races. Multi-Car QR Bundles offer the added benefit of instantly providing all the cars required to enter an exciting Multi-Car Quick Race.</span></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(53, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:56:49', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 9, 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(63, 'Home\\Component\\Home', '2018-10-04 05:24:19', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 8, 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(66, 'Home\\Component\\Client', '2018-10-04 05:11:58', '2018-10-04 05:11:08', 'Inherit', 'Inherit', 2, 'sonama', 'sonama', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 63),
(67, 'Event\\Component\\Reports', '2018-10-04 06:45:12', '2018-10-04 06:36:44', 'Inherit', 'Inherit', 2, 'new-reports', 'New Reports', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 46),
(69, 'Event\\Component\\Race', '2018-10-04 07:05:00', '2018-10-04 07:05:00', 'Inherit', 'Inherit', 1, 'new-race', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 46),
(70, 'StandingAndResult\\Component\\Race', '2018-10-04 07:58:41', '2018-10-04 07:06:09', 'Inherit', 'Inherit', 5, 'race', 'Race 1', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 46),
(71, 'StandingAndResult\\Component\\RaceReport', '2018-10-05 01:22:27', '2018-10-04 08:03:06', 'Inherit', 'Inherit', 3, 'race-report-1', 'Race Report 1', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 46),
(72, 'StandingAndResult\\Component\\RaceReport', '2018-10-05 00:46:19', '2018-10-05 00:31:20', 'Inherit', 'Inherit', 3, 'race-report-2', 'Race Report 2', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 46),
(73, 'StandingAndResult\\Component\\Result', '2018-10-05 01:51:18', '2018-10-05 01:49:10', 'Inherit', 'Inherit', 4, 'result', 'Result1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 72),
(74, 'StandingAndResult\\Component\\Result', '2018-10-05 03:24:08', '2018-10-05 03:23:35', 'Inherit', 'Inherit', 2, 'result-2', 'Result2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 72),
(75, 'Page', '2018-10-05 07:31:05', '2018-10-05 07:31:05', 'Inherit', 'Inherit', 2, 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(76, 'StandingAndResult\\Component\\Race', '2018-10-09 02:17:56', '2018-10-09 02:16:46', 'Inherit', 'Inherit', 2, 'race-2', 'Race 2', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 46),
(77, 'StandingAndResult\\Component\\Race', '2018-10-09 02:19:27', '2018-10-09 02:18:29', 'Inherit', 'Inherit', 3, 'race-3', 'Race 3', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 46),
(78, 'StandingAndResult\\Component\\Race', '2018-10-09 02:20:35', '2018-10-09 02:19:44', 'Inherit', 'Inherit', 2, 'race-4', 'Race 4', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 46),
(79, 'StandingAndResult\\Component\\Race', '2018-10-09 02:22:10', '2018-10-09 02:20:58', 'Inherit', 'Inherit', 2, 'race-5', 'Race 5', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 46),
(80, 'Home\\Component\\Client', '2018-10-09 02:23:42', '2018-10-09 02:22:59', 'Inherit', 'Inherit', 2, 'client', 'Client 2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 63),
(81, 'Home\\Component\\Client', '2018-10-09 02:24:30', '2018-10-09 02:24:04', 'Inherit', 'Inherit', 2, 'client-3', ' Client 3', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 63),
(82, 'Home\\Component\\Client', '2018-10-09 02:25:28', '2018-10-09 02:24:56', 'Inherit', 'Inherit', 2, 'client-4', 'Client 4', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 63),
(83, 'Home\\Component\\Client', '2018-10-09 02:26:29', '2018-10-09 02:25:59', 'Inherit', 'Inherit', 3, 'client-5', 'Client 5', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 63),
(84, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:27:21', '2018-10-09 02:26:46', 'Inherit', 'Inherit', 3, 'add-new-get-involved-1', 'Add New Get Involved 1', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 63),
(85, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:28:17', '2018-10-09 02:27:55', 'Inherit', 'Inherit', 2, 'add-new-get-involved-2', 'Add New Get Involved 2', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 63),
(86, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:29:05', '2018-10-09 02:28:34', 'Inherit', 'Inherit', 2, 'add-new-get-involved-3', 'Add New Get Involved 3', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 63),
(87, 'Home\\Component\\Series', '2018-10-09 02:29:51', '2018-10-09 02:29:51', 'Inherit', 'Inherit', 1, 'new-series', 'New Series', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 63);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTreeLink`
--

CREATE TABLE `SiteTreeLink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTreeLink') CHARACTER SET utf8 DEFAULT 'SilverStripe\\CMS\\Model\\SiteTreeLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField','') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTreeLink`
--

INSERT INTO `SiteTreeLink` (`ID`, `ClassName`, `LastEdited`, `Created`, `LinkedID`, `ParentID`, `ParentClass`) VALUES
(1, 'SilverStripe\\CMS\\Model\\SiteTreeLink', '2018-09-24 07:20:51', '2018-09-24 07:12:31', 38, 0, NULL),
(2, 'SilverStripe\\CMS\\Model\\SiteTreeLink', '2018-09-25 02:00:51', '2018-09-25 01:57:43', 38, 0, NULL),
(3, 'SilverStripe\\CMS\\Model\\SiteTreeLink', '2018-09-25 02:01:03', '2018-09-25 01:59:45', 39, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

INSERT INTO `SiteTree_EditorGroups` (`ID`, `SiteTreeID`, `GroupID`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm') CHARACTER SET utf8 DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 0),
(10, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:23', '2018-08-20 01:29:23', 'Inherit', 'Inherit', 3, 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 0),
(11, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:24', '2018-08-20 01:29:24', 'Inherit', 'Inherit', 16, 'server-error-2', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 3, 0, 0, NULL, 0),
(34, 'CarsAndClasses\\Component\\CarsAndClasses', '2018-09-24 06:02:47', '2018-09-24 05:13:22', 'Inherit', 'Inherit', 3, 'cars-and-classes', 'Cars And Classes', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(46, 'StandingAndResult\\Component\\StandingAndResult', '2018-10-05 07:35:12', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 6, 'standing-and-result', 'Standing And Result', NULL, '<p><span>Bundles are a quick and cost-effective way of building car collections and increasing the number of available Events and Quick Races. Multi-Car QR Bundles offer the added benefit of instantly providing all the cars required to enter an exciting Multi-Car Quick Race.</span></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(53, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:56:49', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 9, 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(63, 'Home\\Component\\Home', '2018-10-04 05:16:46', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 7, 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(75, 'Page', '2018-10-05 07:31:05', '2018-10-05 07:31:05', 'Inherit', 'Inherit', 2, 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Versions`
--

CREATE TABLE `SiteTree_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','Event\\Component\\Race','Event\\Component\\Reports','Event\\Component\\AddNewGetInvolved','Event\\Component\\Client','Event\\Component\\Events','Event\\Component\\Series','Event\\Component\\AddEvent','Calendar\\Component\\Calendar','Involved\\Component\\AddNewGetInvolved','Events\\Component\\Events','Event\\Component\\EventChild','Events\\Component\\EventsDetail','Client\\Component\\Client','Events\\Component\\EventChild','Gallary\\Component\\Gallary','GallaryPage') CHARACTER SET utf8 DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_Versions`
--

INSERT INTO `SiteTree_Versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 1, 1, 0, 0, 1, 0, 0, 'Page', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 1, 2, 1, 0, 1, 0, 0, 'Page', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(3, 2, 1, 0, 0, 1, 0, 0, 'Page', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(4, 2, 2, 1, 0, 1, 0, 0, 'Page', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(5, 3, 1, 0, 0, 1, 0, 0, 'Page', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(6, 3, 2, 1, 0, 1, 0, 0, 'Page', '2018-08-06 07:31:21', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(7, 4, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(8, 4, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(9, 5, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(10, 5, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-06 07:31:22', '2018-08-06 07:31:22', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(11, 2, 3, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:43:56', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'calendar', 'Calendar', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(12, 2, 4, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:43:57', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'calendar', 'Calendar', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(13, 3, 3, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:45:43', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'standings-and-results', 'Standings & Results', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(14, 3, 4, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:45:43', '2018-08-06 07:31:21', 'Inherit', 'Inherit', 'standings-and-results', 'Standings & Results', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(15, 6, 1, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:47:32', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(16, 6, 2, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:47:53', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'how-to-get-involved', 'How to get involved', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(17, 6, 3, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:47:54', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'how-to-get-involved', 'How to get involved', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(18, 6, 4, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:48:21', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'how-to-get-involved', 'How to get involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(19, 6, 5, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:48:27', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'how-to-get-involved', 'How to get involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(20, 7, 1, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:49:04', '2018-08-06 07:49:04', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(21, 7, 2, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:50:57', '2018-08-06 07:49:04', 'Inherit', 'Inherit', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(22, 7, 3, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:50:58', '2018-08-06 07:49:04', 'Inherit', 'Inherit', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(23, 7, 4, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:51:01', '2018-08-06 07:49:04', 'Inherit', 'Inherit', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(24, 7, 5, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:51:03', '2018-08-06 07:49:04', 'Inherit', 'Inherit', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(25, 8, 1, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:51:15', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(26, 8, 2, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:51:33', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars and Classes', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(27, 8, 3, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:51:33', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars and Classes', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(28, 8, 4, 0, 0, 1, 1, 0, 'Page', '2018-08-06 07:51:37', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars and Classes', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(29, 8, 5, 1, 0, 1, 1, 1, 'Page', '2018-08-06 07:51:39', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars and Classes', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(30, 1, 3, 0, 0, 1, 1, 0, 'Page', '2018-08-07 02:53:05', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(31, 1, 4, 1, 0, 1, 1, 1, 'Page', '2018-08-07 02:53:06', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(32, 1, 5, 0, 0, 1, 1, 0, 'Page', '2018-08-07 03:25:25', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<p>This is home page</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(33, 1, 6, 1, 0, 1, 1, 1, 'Page', '2018-08-07 03:25:25', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<p>This is home page</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(34, 1, 7, 0, 0, 1, 1, 0, 'Page', '2018-08-07 03:25:58', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<h2>This is home page</h2>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(35, 1, 8, 1, 0, 1, 1, 1, 'Page', '2018-08-07 03:25:58', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<h2>This is home page</h2>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(36, 1, 9, 0, 0, 1, 1, 0, 'Page', '2018-08-07 08:30:54', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<h2>This is the home page</h2>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(37, 1, 10, 1, 0, 1, 1, 1, 'Page', '2018-08-07 08:30:55', '2018-08-06 07:31:21', 'Inherit', 'OnlyTheseUsers', 'home', 'Home', NULL, '<h2>This is the home page</h2>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(38, 9, 1, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-08 03:15:04', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(39, 9, 2, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-08 03:37:15', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(40, 9, 3, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-08 23:48:14', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(41, 9, 4, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-08 23:48:30', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(42, 9, 5, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-08 23:52:54', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(43, 9, 6, 1, 1, 0, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-08 23:53:28', '2018-08-08 03:15:04', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(44, 9, 7, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-09 03:17:38', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(45, 9, 8, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 01:21:30', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 6),
(46, 9, 9, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 01:21:31', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 6),
(47, 9, 10, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 01:21:37', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(48, 9, 11, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 01:21:38', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(49, 10, 1, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 01:22:02', '2018-08-10 01:22:02', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9),
(50, 11, 1, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 01:22:11', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(51, 11, 2, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 03:23:19', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(52, 11, 3, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-10 04:32:20', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(53, 11, 4, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-10 04:32:53', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, '<p>$columns</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(54, 11, 5, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-10 04:32:58', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, '<p>$columns</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(55, 12, 1, 0, 0, 1, 1, 0, 'GallaryPage', '2018-08-10 05:15:36', '2018-08-10 05:15:36', 'Inherit', 'Inherit', 'new-gallary-page', 'New Gallary Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(56, 9, 12, 1, 1, 0, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-12 23:40:06', '2018-08-08 03:15:04', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(57, 11, 6, 1, 1, 0, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-12 23:40:18', '2018-08-10 01:22:11', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(58, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\UserForms\\Model\\UserDefinedForm', '2018-08-13 00:43:44', '2018-08-13 00:43:44', 'Inherit', 'Inherit', 'new-user-defined-form', 'New User Defined Form', NULL, '$UserDefinedForm', NULL, NULL, 1, 1, 12, 0, 0, NULL, 0),
(59, 11, 7, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-13 01:03:58', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, '<p>$columns</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(60, 11, 8, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-13 01:21:56', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, '<p>$columns</p>', NULL, '<meta name=\"customName\" content=\"your custom content here\">', 1, 1, 10, 0, 0, NULL, 0),
(61, 11, 9, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-13 01:21:57', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, '<p>$columns</p>', NULL, '<meta name=\"customName\" content=\"your custom content here\">', 1, 1, 10, 0, 0, NULL, 0),
(62, 11, 10, 1, 1, 0, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-13 01:22:26', '2018-08-10 01:22:11', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(63, 11, 11, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-13 01:22:39', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, NULL, NULL, '<meta name=\"customName\" content=\"your custom content here\">', 1, 1, 10, 0, 0, NULL, 0),
(64, 11, 12, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-13 01:50:06', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, NULL, NULL, '<meta name=\"customName\" content=\"your custom content here\">', 1, 1, 10, 0, 0, NULL, 0),
(65, 9, 13, 1, 0, 1, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-13 02:21:52', '2018-08-08 03:15:04', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(66, 9, 14, 1, 1, 0, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-13 02:22:11', '2018-08-08 03:15:04', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(67, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2018-08-13 05:21:38', '2018-08-13 05:21:38', 'Inherit', 'Inherit', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 0),
(68, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2018-08-13 05:24:01', '2018-08-13 05:24:01', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 14),
(69, 16, 1, 0, 0, 1, 1, 0, 'Events\\Component\\EventChild', '2018-08-13 07:17:29', '2018-08-13 07:17:29', 'Inherit', 'Inherit', 'new-event-child', 'New Event Child', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 11),
(70, 11, 13, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-13 07:33:59', '2018-08-10 01:22:11', 'Inherit', 'Inherit', 'new-events-detail-2', 'New Events Detail', NULL, NULL, NULL, '<meta name=\"customName\" content=\"your custom content here\">', 1, 1, 10, 0, 0, NULL, 0),
(71, 11, 14, 1, 1, 0, 1, 1, 'Events\\Component\\EventsDetail', '2018-08-13 07:34:08', '2018-08-10 01:22:11', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(72, 17, 1, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-13 07:35:05', '2018-08-13 07:35:05', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(73, 18, 1, 0, 0, 1, 1, 0, 'Client\\Component\\Client', '2018-08-13 08:01:58', '2018-08-13 08:01:58', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(74, 18, 2, 0, 0, 1, 1, 0, 'Client\\Component\\Client', '2018-08-13 08:10:12', '2018-08-13 08:01:58', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(75, 18, 3, 0, 0, 1, 1, 0, 'Client\\Component\\Client', '2018-08-13 08:10:35', '2018-08-13 08:01:58', 'Inherit', 'Inherit', 'sonama-raceway', 'sonama raceway', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(76, 17, 2, 0, 0, 1, 1, 0, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-08-14 01:35:04', '2018-08-13 07:35:05', 'Inherit', 'Inherit', 'home-2', 'HOME', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(77, 19, 1, 0, 0, 1, 1, 0, 'Gallary\\Component\\Gallary', '2018-08-14 02:11:10', '2018-08-14 02:11:10', 'Inherit', 'Inherit', 'new-gallary', 'New Gallary', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(78, 19, 2, 0, 0, 1, 1, 0, 'Gallary\\Component\\Gallary', '2018-08-14 02:12:09', '2018-08-14 02:11:10', 'Inherit', 'Inherit', 'gallary', 'Gallary', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(79, 18, 4, 0, 0, 1, 1, 0, 'Client\\Component\\Client', '2018-08-14 02:18:47', '2018-08-13 08:01:58', 'Inherit', 'Inherit', 'sonama-raceway', 'sonama raceway', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(80, 19, 3, 0, 0, 1, 1, 0, 'Gallary\\Component\\Gallary', '2018-08-14 02:25:05', '2018-08-14 02:11:10', 'Inherit', 'Inherit', 'gallary', 'Gallary', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(81, 19, 4, 1, 0, 1, 1, 1, 'Gallary\\Component\\Gallary', '2018-08-14 02:38:19', '2018-08-14 02:11:10', 'Inherit', 'Inherit', 'gallary', 'Gallary', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(82, 17, 3, 1, 0, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-08-14 02:38:30', '2018-08-13 07:35:05', 'Inherit', 'Inherit', 'home-2', 'HOME', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(83, 6, 6, 0, 0, 1, 1, 0, 'Page', '2018-08-14 02:54:10', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'how-to-get-involved', 'How to get involved', NULL, '<p>dgdfgdfgfdgfdgdg</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(84, 6, 7, 1, 0, 1, 1, 1, 'Page', '2018-08-14 02:54:12', '2018-08-06 07:47:32', 'Inherit', 'Inherit', 'how-to-get-involved', 'How to get involved', NULL, '<p>dgdfgdfgfdgfdgdg</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(85, 17, 4, 0, 0, 1, 1, 0, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-08-14 02:54:47', '2018-08-13 07:35:05', 'Inherit', 'Inherit', 'home-2', 'HOME', NULL, '<p>zdfsdfsdf</p>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(86, 17, 5, 1, 0, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-08-14 02:54:47', '2018-08-13 07:35:05', 'Inherit', 'Inherit', 'home-2', 'HOME', NULL, '<p>zdfsdfsdf</p>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(87, 20, 1, 0, 0, 1, 1, 0, 'Events\\Component\\EventsDetail', '2018-08-17 12:55:26', '2018-08-17 12:55:26', 'Inherit', 'Inherit', 'new-events-detail', 'New Events Detail', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(88, 21, 1, 0, 0, 1, 1, 0, 'Event\\Component\\EventChild', '2018-08-17 13:02:48', '2018-08-17 13:02:48', 'Inherit', 'Inherit', 'new-event-child', 'New Event Child', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 17),
(89, 1, 11, 1, 1, 0, 1, 1, 'Page', '2018-08-17 13:17:42', '2018-08-06 07:31:21', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(90, 2, 5, 1, 1, 0, 1, 1, 'Page', '2018-08-17 13:17:53', '2018-08-06 07:31:21', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(91, 3, 5, 1, 1, 0, 1, 1, 'Page', '2018-08-17 13:18:54', '2018-08-06 07:31:21', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(92, 6, 8, 1, 1, 0, 1, 1, 'Page', '2018-08-17 13:19:04', '2018-08-06 07:47:32', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(93, 7, 6, 1, 1, 0, 1, 1, 'Page', '2018-08-17 13:19:14', '2018-08-06 07:49:04', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(94, 4, 3, 1, 1, 0, 1, 1, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-17 13:19:26', '2018-08-06 07:31:22', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(95, 19, 5, 1, 1, 0, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-08-17 13:19:37', '2018-08-14 02:11:10', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(96, 17, 6, 1, 1, 0, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-08-17 13:19:37', '2018-08-13 07:35:05', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(97, 8, 6, 0, 0, 1, 1, 0, 'Page', '2018-08-17 13:22:15', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars and Classes', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(98, 8, 7, 0, 0, 1, 1, 0, 'Page', '2018-08-17 13:23:36', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(99, 8, 8, 1, 0, 1, 1, 1, 'Page', '2018-08-17 13:24:10', '2018-08-06 07:51:15', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(100, 9, 15, 0, 0, 1, 1, 0, 'Page', '2018-08-20 01:29:23', '2018-08-20 01:29:23', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(101, 9, 16, 1, 0, 1, 1, 1, 'Page', '2018-08-20 01:29:23', '2018-08-20 01:29:23', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(102, 10, 2, 0, 0, 1, 1, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:23', '2018-08-20 01:29:23', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 9, 0, 0, NULL, 0),
(103, 10, 3, 1, 0, 1, 1, 1, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:23', '2018-08-20 01:29:23', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 9, 0, 0, NULL, 0),
(104, 11, 15, 0, 0, 1, 1, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:24', '2018-08-20 01:29:24', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 10, 0, 0, NULL, 0),
(105, 11, 16, 1, 0, 1, 1, 1, 'SilverStripe\\ErrorPage\\ErrorPage', '2018-08-20 01:29:24', '2018-08-20 01:29:24', 'Inherit', 'Inherit', 'server-error-2', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 10, 0, 0, NULL, 0),
(106, 12, 2, 0, 0, 1, 1, 0, 'Events\\Component\\Events', '2018-08-20 01:33:17', '2018-08-20 01:33:17', 'Inherit', 'Inherit', 'new-events', 'New Events', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(107, 13, 2, 0, 0, 1, 1, 0, 'Events\\Component\\Events', '2018-08-20 01:36:48', '2018-08-20 01:36:48', 'Inherit', 'Inherit', 'new-events-2', 'New Events', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 0),
(108, 14, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-08-20 01:37:54', '2018-08-20 01:37:54', 'Inherit', 'Inherit', 'new-events-3', 'New Events', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 0),
(109, 15, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-08-20 01:42:24', '2018-08-20 01:42:24', 'Inherit', 'Inherit', 'new-events-4', 'New Events', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 0),
(110, 16, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-08-20 01:47:02', '2018-08-20 01:47:02', 'Inherit', 'Inherit', 'new-events-5', 'New Events', NULL, NULL, NULL, NULL, 1, 1, 15, 0, 0, NULL, 0),
(111, 17, 7, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-08-20 01:51:00', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'new-events-6', 'New Events', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(112, 18, 5, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-20 01:57:08', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(113, 18, 6, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-20 01:57:35', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(114, 18, 7, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-20 01:57:52', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(115, 19, 6, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-20 02:00:34', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(116, 19, 7, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-20 02:01:08', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(117, 19, 8, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-20 02:01:30', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'client-1', 'Client 1', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(118, 17, 8, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-08-20 02:18:00', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(119, 17, 9, 1, 0, 1, 1, 1, 'Event\\Component\\Events', '2018-08-20 02:18:01', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(120, 8, 9, 1, 1, 0, 1, 1, 'Page', '2018-08-20 04:36:42', '2018-08-06 07:51:15', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(121, 9, 17, 1, 1, 0, 1, 1, 'Page', '2018-08-20 04:36:53', '2018-08-20 01:29:23', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(122, 18, 8, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-20 04:50:29', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(123, 19, 9, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-21 00:15:13', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'client-1', 'Client 1', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(124, 18, 9, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-21 00:28:11', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(125, 19, 10, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-21 01:12:00', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'client-1', 'Client 1', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(126, 20, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-21 01:33:34', '2018-08-21 01:33:34', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 17),
(127, 20, 3, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-21 01:34:04', '2018-08-21 01:33:34', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 17),
(128, 20, 4, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-08-21 01:34:24', '2018-08-21 01:33:34', 'Inherit', 'Inherit', 'client-2', 'Client 2', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 17),
(129, 18, 10, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-21 01:40:11', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(130, 21, 2, 0, 0, 1, 1, 0, 'Involved\\Component\\HowToGetInvolved', '2018-08-21 03:11:07', '2018-08-21 03:11:07', 'Inherit', 'Inherit', 'new-how-to-get-involved', 'New How To Get Involved', NULL, NULL, NULL, NULL, 1, 1, 17, 0, 0, NULL, 0),
(131, 21, 3, 0, 0, 1, 1, 0, 'Involved\\Component\\HowToGetInvolved', '2018-08-21 03:14:28', '2018-08-21 03:11:07', 'Inherit', 'Inherit', 'how-to-get-involved', 'How To Get Involved', NULL, NULL, NULL, NULL, 1, 1, 17, 0, 0, NULL, 0),
(132, 22, 1, 0, 0, 1, 1, 0, 'Involved\\Component\\AddNewGetInvolved', '2018-08-21 03:14:38', '2018-08-21 03:14:38', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 21),
(133, 22, 2, 0, 0, 1, 1, 0, 'Involved\\Component\\AddNewGetInvolved', '2018-08-21 03:16:17', '2018-08-21 03:14:38', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', 'step 1', NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 21),
(134, 22, 3, 0, 0, 1, 1, 0, 'Involved\\Component\\AddNewGetInvolved', '2018-08-21 03:16:37', '2018-08-21 03:14:38', 'Inherit', 'Inherit', 'step-1', 'New Add New Get Involved', 'step 1', NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 21),
(135, 22, 4, 0, 0, 1, 1, 0, 'Involved\\Component\\AddNewGetInvolved', '2018-08-21 03:18:23', '2018-08-21 03:14:38', 'Inherit', 'Inherit', 'step-1', 'Step 1', 'step 1', NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 21),
(136, 22, 5, 0, 0, 1, 1, 0, 'Involved\\Component\\AddNewGetInvolved', '2018-08-21 03:19:54', '2018-08-21 03:14:38', 'Inherit', 'Inherit', 'step-1', 'Step 1', 'step 1', NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 21),
(137, 23, 1, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-08-21 03:31:13', '2018-08-21 03:31:13', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 17),
(138, 23, 2, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-08-21 03:32:05', '2018-08-21 03:31:13', 'Inherit', 'Inherit', 'first-add-new-get-involved', 'First Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 17),
(139, 23, 3, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-08-21 03:32:52', '2018-08-21 03:31:13', 'Inherit', 'Inherit', 'first-add-new-get-involved', 'First Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 17),
(140, 24, 1, 0, 0, 1, 1, 0, 'Page', '2018-08-22 00:26:36', '2018-08-22 00:26:36', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(141, 24, 2, 1, 0, 1, 1, 1, 'Page', '2018-08-22 00:26:36', '2018-08-22 00:26:36', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(142, 25, 1, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-30 01:46:32', '2018-08-30 01:46:32', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 17),
(143, 25, 2, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-08-30 01:47:29', '2018-08-30 01:46:32', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 17),
(144, 17, 10, 1, 1, 0, 1, 1, 'Event\\Component\\Events', '2018-09-10 03:15:55', '2018-08-20 01:51:00', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(145, 19, 11, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:08:58', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'client-1', 'Client 1', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(146, 19, 12, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:09:11', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'aero', 'Aero', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(147, 20, 5, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:09:39', '2018-08-21 01:33:34', 'Inherit', 'Inherit', 'sonama', 'sonama', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 17),
(148, 26, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:10:06', '2018-09-11 02:10:06', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 17),
(149, 26, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:10:41', '2018-09-11 02:10:06', 'Inherit', 'Inherit', 'hammer', 'Hammer', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 17),
(150, 27, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:10:56', '2018-09-11 02:10:56', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 17),
(151, 27, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:11:29', '2018-09-11 02:10:56', 'Inherit', 'Inherit', 'marmot', 'marmot', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 17),
(152, 28, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:11:42', '2018-09-11 02:11:42', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 17),
(153, 28, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:12:10', '2018-09-11 02:11:42', 'Inherit', 'Inherit', 'pirelli', 'pirelli', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 17),
(154, 29, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:12:23', '2018-09-11 02:12:23', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 17),
(155, 29, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 02:13:00', '2018-09-11 02:12:23', 'Inherit', 'Inherit', 'polaris', 'polaris', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 17),
(156, 17, 11, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 02:32:06', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(157, 30, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Series', '2018-09-11 05:08:21', '2018-09-11 05:08:21', 'Inherit', 'Inherit', 'new-series', 'New Series', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 17),
(158, 30, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Series', '2018-09-11 06:11:19', '2018-09-11 05:08:21', 'Inherit', 'Inherit', 'series-2018', 'Series 2018', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 17),
(159, 30, 3, 0, 0, 1, 1, 0, 'Event\\Component\\Series', '2018-09-11 06:14:18', '2018-09-11 05:08:21', 'Inherit', 'Inherit', 'series-2018', 'Series 2018', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 17),
(160, 30, 4, 0, 0, 1, 1, 0, 'Event\\Component\\Series', '2018-09-11 07:20:08', '2018-09-11 05:08:21', 'Inherit', 'Inherit', 'series-2018', 'Series 2018', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 17),
(161, 17, 12, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 07:30:15', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(162, 17, 13, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 07:31:26', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(163, 17, 14, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 07:33:48', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(164, 23, 4, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:37:16', '2018-08-21 03:31:13', 'Inherit', 'Inherit', 'first-add-new-get-involved', 'First Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 17),
(165, 23, 5, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:37:28', '2018-08-21 03:31:13', 'Inherit', 'Inherit', 'first-add-new-get-involved', 'First Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 17),
(166, 31, 1, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:37:58', '2018-09-11 07:37:58', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 17),
(167, 31, 2, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:39:19', '2018-09-11 07:37:58', 'Inherit', 'Inherit', 'second-add-new-get-involved', 'second Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 17),
(168, 31, 3, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:39:46', '2018-09-11 07:37:58', 'Inherit', 'Inherit', 'second-add-new-get-involved', 'second Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 17),
(169, 32, 1, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:40:13', '2018-09-11 07:40:13', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 17),
(170, 32, 2, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:41:29', '2018-09-11 07:40:13', 'Inherit', 'Inherit', 'third-add-new-get-involved', 'third Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 17),
(171, 32, 3, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:41:35', '2018-09-11 07:40:13', 'Inherit', 'Inherit', 'third-add-new-get-involved', 'third Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 17),
(172, 23, 6, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:45:01', '2018-08-21 03:31:13', 'Inherit', 'Inherit', 'first-add-new-get-involved', 'First Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 17),
(173, 31, 4, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:45:24', '2018-09-11 07:37:58', 'Inherit', 'Inherit', 'second-add-new-get-involved', 'second Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 17),
(174, 31, 5, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:45:31', '2018-09-11 07:37:58', 'Inherit', 'Inherit', 'second-add-new-get-involved', 'second Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 17),
(175, 32, 4, 0, 0, 1, 1, 0, 'Event\\Component\\AddNewGetInvolved', '2018-09-11 07:45:42', '2018-09-11 07:40:13', 'Inherit', 'Inherit', 'third-add-new-get-involved', 'third Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 17),
(176, 17, 15, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 07:54:00', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, '<p>This program is best racing series</p>', NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(177, 17, 16, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 07:56:50', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, '<h3>This program is the</h3><h1>Best Advanced Racing Series</h1><h3>I Have Been involved in ....</h3>', NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(178, 17, 17, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-11 08:07:29', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, '<h3>This program is the</h3><h1>Best Advanced Racing Series</h1><h3>I Have Been involved in ....</h3>', NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(179, 19, 13, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:08:45', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'aero', 'Aero', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(180, 20, 6, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:09:23', '2018-08-21 01:33:34', 'Inherit', 'Inherit', 'sonama', 'sonama', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 17),
(181, 19, 14, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:09:58', '2018-08-20 02:00:34', 'Inherit', 'Inherit', 'aero', 'Aero', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 17),
(182, 26, 3, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:10:24', '2018-09-11 02:10:06', 'Inherit', 'Inherit', 'hammer', 'Hammer', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 17),
(183, 27, 3, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:10:49', '2018-09-11 02:10:56', 'Inherit', 'Inherit', 'marmot', 'marmot', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 17),
(184, 28, 3, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:11:08', '2018-09-11 02:11:42', 'Inherit', 'Inherit', 'pirelli', 'pirelli', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 17),
(185, 29, 3, 0, 0, 1, 1, 0, 'Event\\Component\\Client', '2018-09-11 08:11:42', '2018-09-11 02:12:23', 'Inherit', 'Inherit', 'polaris', 'polaris', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 17),
(186, 25, 3, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 00:39:17', '2018-08-30 01:46:32', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 17),
(187, 25, 4, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 00:48:32', '2018-08-30 01:46:32', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 17),
(188, 18, 11, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 03:04:23', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(189, 18, 12, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 03:04:57', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(190, 18, 13, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 03:10:14', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(191, 18, 14, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 03:15:56', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(192, 25, 5, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-12 03:16:22', '2018-08-30 01:46:32', 'Inherit', 'Inherit', 'new-add-event', 'New Add Event', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 17),
(193, 33, 1, 0, 0, 1, 1, 0, 'Calendar\\Component\\Calendar', '2018-09-12 04:59:09', '2018-09-12 04:59:09', 'Inherit', 'Inherit', 'new-calendar', 'New Calendar', NULL, NULL, NULL, NULL, 1, 1, 18, 0, 0, NULL, 0),
(194, 33, 2, 0, 0, 1, 1, 0, 'Calendar\\Component\\Calendar', '2018-09-12 05:00:07', '2018-09-12 04:59:09', 'Inherit', 'Inherit', 'calendar', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 18, 0, 0, NULL, 0),
(195, 34, 1, 0, 0, 1, 1, 0, 'CarsAndClasses\\Component\\CarsAndClasses', '2018-09-24 05:13:22', '2018-09-24 05:13:22', 'Inherit', 'Inherit', 'new-cars-and-classes', 'New Cars And Classes', NULL, NULL, NULL, NULL, 1, 1, 19, 0, 0, NULL, 0),
(196, 34, 2, 0, 0, 1, 1, 0, 'CarsAndClasses\\Component\\CarsAndClasses', '2018-09-24 05:13:53', '2018-09-24 05:13:22', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars And Classes', NULL, NULL, NULL, NULL, 1, 1, 19, 0, 0, NULL, 0),
(197, 35, 1, 0, 0, 1, 1, 0, 'CarsAndClasses\\Component\\AddCarsAndClasses', '2018-09-24 05:14:10', '2018-09-24 05:14:10', 'Inherit', 'Inherit', 'new-add-cars-and-classes', 'New Add Cars And Classes', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 34),
(198, 35, 2, 0, 0, 1, 1, 0, 'CarsAndClasses\\Component\\AddCarsAndClasses', '2018-09-24 05:20:44', '2018-09-24 05:14:10', 'Inherit', 'Inherit', 'add-cars-and-classes', 'Add Cars And Classes 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 34),
(199, 35, 3, 1, 0, 1, 1, 1, 'CarsAndClasses\\Component\\AddCarsAndClasses', '2018-09-24 06:02:31', '2018-09-24 05:14:10', 'Inherit', 'Inherit', 'add-cars-and-classes', 'Add Cars And Classes 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 34),
(200, 34, 3, 1, 0, 1, 1, 1, 'CarsAndClasses\\Component\\CarsAndClasses', '2018-09-24 06:02:47', '2018-09-24 05:13:22', 'Inherit', 'Inherit', 'cars-and-classes', 'Cars And Classes', NULL, NULL, NULL, NULL, 1, 1, 19, 0, 0, NULL, 0),
(201, 35, 4, 1, 1, 0, 1, 1, 'CarsAndClasses\\Component\\AddCarsAndClasses', '2018-09-24 06:03:10', '2018-09-24 05:14:10', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(202, 24, 3, 1, 1, 1, 1, 1, 'Page', '2018-09-24 06:34:29', '2018-08-22 00:26:36', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(203, 36, 1, 0, 0, 1, 1, 0, 'Page', '2018-09-24 07:01:44', '2018-09-24 07:01:44', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(204, 36, 2, 1, 0, 1, 1, 1, 'Page', '2018-09-24 07:01:45', '2018-09-24 07:01:44', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(205, 37, 1, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-24 07:02:09', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(206, 37, 2, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-24 07:04:17', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(207, 37, 3, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-24 07:04:58', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'event-calendar-2018', 'Event Calendar 2018', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(208, 37, 4, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-24 07:05:00', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'event-calendar-2018', 'Event Calendar 2018', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(209, 38, 1, 0, 0, 1, 1, 0, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-24 07:12:31', '2018-09-24 07:12:31', 'Inherit', 'Inherit', 'race-2-sonama-raceway', 'Race 2 - SONAMA RACEWAY ', NULL, '<p>askjdjaskhdsajdasdnmas dasmd&nbsp;Upcoming Events<br>Upcoming Eventsjsjdashdsadjsad</p><p>a,smasdhkjasdnasdnjksad</p><p>&nbsp;</p>', NULL, NULL, 1, 1, 21, 0, 0, NULL, 0),
(210, 38, 2, 1, 1, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-24 07:20:45', '2018-09-24 07:12:31', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(211, 36, 3, 1, 1, 1, 1, 1, 'Page', '2018-09-25 01:30:45', '2018-09-24 07:01:44', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(212, 37, 5, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-25 01:37:00', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'event-calendar-2018', 'Event Calendar 2018', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(213, 33, 3, 1, 1, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-25 01:38:00', '2018-09-12 04:59:09', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(214, 38, 3, 0, 0, 1, 1, 0, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-25 01:57:43', '2018-09-25 01:57:43', 'Inherit', 'Inherit', 'standing-and-results', 'Standing and Results', NULL, NULL, NULL, NULL, 1, 1, 21, 0, 0, NULL, 0),
(215, 39, 1, 0, 0, 1, 1, 0, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-25 01:59:45', '2018-09-25 01:59:45', 'Inherit', 'Inherit', 'standing-and-results-2', 'Standing and Results', NULL, NULL, NULL, NULL, 1, 1, 22, 0, 0, NULL, 0),
(216, 38, 4, 1, 1, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-25 02:01:24', '2018-09-25 01:57:43', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0);
INSERT INTO `SiteTree_Versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(217, 40, 1, 0, 0, 1, 1, 0, 'Page', '2018-09-25 02:17:58', '2018-09-25 02:17:58', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(218, 40, 2, 1, 0, 1, 1, 1, 'Page', '2018-09-25 02:17:58', '2018-09-25 02:17:58', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(219, 37, 6, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-25 02:34:51', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'event-calendar-2018', 'Event Calendar 2018', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(220, 37, 7, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-09-25 02:51:29', '2018-09-24 07:02:09', 'Inherit', 'Inherit', 'event-calendar-2018', 'Event Calendar 2018', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(221, 41, 1, 0, 0, 1, 1, 0, 'Page', '2018-09-27 07:56:03', '2018-09-27 07:56:03', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 23, 0, 0, NULL, 0),
(222, 37, 8, 1, 1, 0, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-27 08:15:17', '2018-09-24 07:02:09', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(223, 40, 3, 1, 1, 1, 1, 1, 'Page', '2018-09-27 08:16:06', '2018-09-25 02:17:58', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(224, 22, 6, 0, 1, 1, 1, 0, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-27 08:16:59', '2018-08-21 03:14:38', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(225, 21, 4, 1, 1, 1, 1, 1, 'Involved\\Component\\HowToGetInvolved', '2018-09-27 08:16:59', '2018-08-21 03:11:07', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(226, 37, 9, 1, 1, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-27 08:17:23', '2018-09-24 07:02:09', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(227, 39, 2, 1, 1, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2018-09-27 08:17:37', '2018-09-25 01:59:45', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(228, 41, 2, 1, 1, 1, 1, 1, 'Page', '2018-09-27 08:17:51', '2018-09-27 07:56:03', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(229, 42, 1, 0, 0, 1, 1, 0, 'Calendar\\Component\\Calendar', '2018-09-27 08:21:40', '2018-09-27 08:21:40', 'Inherit', 'Inherit', 'new-calendar', 'New Calendar', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(230, 42, 2, 0, 0, 1, 1, 0, 'Calendar\\Component\\Calendar', '2018-09-27 08:23:10', '2018-09-27 08:21:40', 'Inherit', 'Inherit', 'event-calendar', 'Event Calendar', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(231, 42, 3, 1, 0, 1, 1, 1, 'Calendar\\Component\\Calendar', '2018-09-27 08:23:11', '2018-09-27 08:21:40', 'Inherit', 'Inherit', 'event-calendar', 'Event Calendar', NULL, NULL, NULL, NULL, 1, 1, 20, 0, 0, NULL, 0),
(232, 43, 1, 0, 0, 1, 1, 0, 'Page', '2018-09-27 23:49:26', '2018-09-27 23:49:26', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(233, 43, 2, 1, 0, 1, 1, 1, 'Page', '2018-09-27 23:49:27', '2018-09-27 23:49:26', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(234, 44, 1, 0, 0, 1, 1, 0, 'Calendar\\Component\\Calendar', '2018-09-27 23:53:56', '2018-09-27 23:53:56', 'Inherit', 'Inherit', 'new-calendar', 'New Calendar', NULL, NULL, NULL, NULL, 1, 1, 21, 0, 0, NULL, 0),
(235, 25, 6, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-09-28 00:05:01', '2018-08-30 01:46:32', 'Inherit', 'Inherit', 'event-2', 'Event 2', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 17),
(236, 17, 18, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-09-28 06:24:25', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, '<h3>This program is the</h3><h1>Best Advanced Racing Series</h1><h3>I Have Been involved in ....</h3>', NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(237, 17, 19, 1, 0, 1, 1, 1, 'Event\\Component\\Events', '2018-09-28 06:24:27', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, '<h3>This program is the</h3><h1>Best Advanced Racing Series</h1><h3>I Have Been involved in ....</h3>', NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(238, 45, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Reports', '2018-09-28 08:13:42', '2018-09-28 08:13:42', 'Inherit', 'Inherit', 'new-reports', 'New Reports', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 18),
(239, 45, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Reports', '2018-09-28 08:15:53', '2018-09-28 08:13:42', 'Inherit', 'Inherit', 'reports', 'Reports', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 18),
(240, 46, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\StandingAndResult', '2018-09-28 08:20:45', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 'new-standing-and-result', 'New Standing And Result', NULL, NULL, NULL, NULL, 1, 1, 22, 0, 0, NULL, 0),
(241, 46, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\StandingAndResult', '2018-09-28 08:30:02', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 'standing-and-result', 'Standing And Result', NULL, NULL, NULL, NULL, 1, 1, 22, 0, 0, NULL, 0),
(242, 46, 3, 1, 0, 1, 1, 1, 'StandingAndResult\\Component\\StandingAndResult', '2018-09-28 08:30:03', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 'standing-and-result', 'Standing And Result', NULL, NULL, NULL, NULL, 1, 1, 22, 0, 0, NULL, 0),
(243, 17, 20, 0, 0, 1, 1, 0, 'Event\\Component\\Events', '2018-10-01 02:08:26', '2018-08-20 01:51:00', 'Inherit', 'Inherit', 'home-2', 'Home', NULL, '<h3>This program is the</h3><h1>Best Advanced Racing Series</h1><h3>I Have Been involved in ....</h3>', NULL, NULL, 1, 1, 16, 0, 0, NULL, 0),
(244, 47, 1, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-03 05:29:27', '2018-10-03 05:29:27', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 23, 0, 0, NULL, 0),
(245, 47, 2, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-03 05:34:16', '2018-10-03 05:29:27', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 23, 0, 0, NULL, 0),
(246, 18, 15, 0, 0, 1, 1, 0, 'Event\\Component\\AddEvent', '2018-10-03 08:21:20', '2018-08-20 01:57:08', 'Inherit', 'Inherit', 'event-1', 'Event 1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 17),
(247, 48, 1, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 02:21:52', '2018-10-04 02:21:52', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 47),
(248, 48, 2, 0, 1, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 03:21:41', '2018-10-04 02:21:52', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(249, 47, 3, 1, 1, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 03:21:41', '2018-10-03 05:29:27', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(250, 44, 2, 1, 1, 1, 1, 1, 'Calendar\\Component\\Calendar', '2018-10-04 03:22:19', '2018-09-27 23:53:56', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(251, 42, 4, 1, 1, 1, 1, 1, 'Calendar\\Component\\Calendar', '2018-10-04 03:22:52', '2018-09-27 08:21:40', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(252, 49, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 03:27:57', '2018-10-04 03:27:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(253, 49, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 03:27:57', '2018-10-04 03:27:57', 'Inherit', 'Inherit', 'home-3', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(254, 50, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 03:28:09', '2018-10-04 03:28:09', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(255, 50, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 03:28:09', '2018-10-04 03:28:09', 'Inherit', 'Inherit', 'home-4', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(256, 51, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 03:30:20', '2018-10-04 03:30:20', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(257, 51, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 03:30:20', '2018-10-04 03:30:20', 'Inherit', 'Inherit', 'home-5', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(258, 52, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 03:30:32', '2018-10-04 03:30:32', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(259, 52, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 03:30:32', '2018-10-04 03:30:32', 'Inherit', 'Inherit', 'home-6', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(260, 49, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-04 04:36:59', '2018-10-04 03:27:57', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(261, 50, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-04 04:37:37', '2018-10-04 03:28:09', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(262, 51, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-04 04:38:11', '2018-10-04 03:30:20', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(263, 52, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-04 04:38:34', '2018-10-04 03:30:32', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(264, 53, 1, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 04:39:13', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 23, 0, 0, NULL, 0),
(265, 53, 2, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 04:43:03', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'new-calendar-page', 'New Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 23, 0, 0, NULL, 0),
(266, 54, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 04:44:02', '2018-10-04 04:44:02', 'Inherit', 'Inherit', 'new-home', 'New Home', NULL, NULL, NULL, NULL, 1, 1, 24, 0, 0, NULL, 0),
(267, 55, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 04:44:28', '2018-10-04 04:44:28', 'Inherit', 'Inherit', 'new-home-2', 'New Home', NULL, NULL, NULL, NULL, 1, 1, 25, 0, 0, NULL, 0),
(268, 56, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 04:55:00', '2018-10-04 04:55:00', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(269, 56, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 04:55:00', '2018-10-04 04:55:00', 'Inherit', 'Inherit', 'home-3', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(270, 57, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 04:55:03', '2018-10-04 04:55:03', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(271, 57, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 04:55:03', '2018-10-04 04:55:03', 'Inherit', 'Inherit', 'home-4', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(272, 58, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 04:56:50', '2018-10-04 04:56:50', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(273, 58, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 04:56:50', '2018-10-04 04:56:50', 'Inherit', 'Inherit', 'home-5', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(274, 59, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 04:56:53', '2018-10-04 04:56:53', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(275, 59, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 04:56:53', '2018-10-04 04:56:53', 'Inherit', 'Inherit', 'home-6', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(276, 60, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 05:02:10', '2018-10-04 05:02:10', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(277, 60, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 05:02:11', '2018-10-04 05:02:10', 'Inherit', 'Inherit', 'home-7', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(278, 61, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 05:02:23', '2018-10-04 05:02:23', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(279, 61, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 05:02:23', '2018-10-04 05:02:23', 'Inherit', 'Inherit', 'home-8', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(280, 62, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 05:02:58', '2018-10-04 05:02:58', 'Inherit', 'Inherit', 'new-home-3', 'New Home', NULL, NULL, NULL, NULL, 1, 1, 26, 0, 0, NULL, 0),
(281, 63, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 05:04:13', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'New Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(282, 64, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 05:09:02', '2018-10-04 05:09:02', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(283, 64, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 05:09:02', '2018-10-04 05:09:02', 'Inherit', 'Inherit', 'home-9', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(284, 65, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 05:09:15', '2018-10-04 05:09:15', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(285, 65, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 05:09:15', '2018-10-04 05:09:15', 'Inherit', 'Inherit', 'home-10', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(286, 63, 2, 1, 0, 1, 1, 1, 'Home\\Component\\Home', '2018-10-04 05:10:12', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'New Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(287, 66, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-04 05:11:08', '2018-10-04 05:11:08', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 63),
(288, 66, 2, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-04 05:11:58', '2018-10-04 05:11:08', 'Inherit', 'Inherit', 'sonama', 'sonama', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 63),
(289, 63, 3, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 05:12:55', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(290, 63, 4, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 05:14:30', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(291, 63, 5, 1, 0, 1, 1, 1, 'Home\\Component\\Home', '2018-10-04 05:14:33', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(292, 63, 6, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 05:16:42', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(293, 63, 7, 1, 0, 1, 1, 1, 'Home\\Component\\Home', '2018-10-04 05:16:46', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 27, 0, 0, NULL, 0),
(294, 56, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-04 05:18:58', '2018-10-04 04:55:00', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(295, 63, 8, 0, 0, 1, 1, 0, 'Home\\Component\\Home', '2018-10-04 05:24:19', '2018-10-04 05:04:13', 'Inherit', 'Inherit', 'new-home-4', 'Home', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(296, 53, 3, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:24:32', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(297, 53, 4, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:24:32', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(298, 53, 5, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:25:16', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(299, 53, 6, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:25:16', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(300, 53, 7, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:25:40', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(301, 46, 4, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\StandingAndResult', '2018-10-04 05:25:41', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 'standing-and-result', 'Standing And Result', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(302, 53, 8, 0, 0, 1, 1, 0, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:56:47', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(303, 53, 9, 1, 0, 1, 1, 1, 'PurpleSpider\\BasicCalendar\\CalendarPage', '2018-10-04 05:56:49', '2018-10-04 04:39:13', 'Inherit', 'Inherit', 'calendar-page', 'Calendar', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(304, 67, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Reports', '2018-10-04 06:36:44', '2018-10-04 06:36:44', 'Inherit', 'Inherit', 'new-reports', 'New Reports', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 46),
(305, 68, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-04 06:43:00', '2018-10-04 06:43:00', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(306, 68, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-04 06:43:00', '2018-10-04 06:43:00', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(307, 67, 2, 0, 0, 1, 1, 0, 'Event\\Component\\Reports', '2018-10-04 06:45:12', '2018-10-04 06:36:44', 'Inherit', 'Inherit', 'new-reports', 'New Reports', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 46),
(308, 69, 1, 0, 0, 1, 1, 0, 'Event\\Component\\Race', '2018-10-04 07:05:00', '2018-10-04 07:05:00', 'Inherit', 'Inherit', 'new-race', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 46),
(309, 70, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-04 07:06:09', '2018-10-04 07:06:09', 'Inherit', 'Inherit', 'new-race-2', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 46),
(310, 70, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-04 07:12:11', '2018-10-04 07:06:09', 'Inherit', 'Inherit', 'new-race-2', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 46),
(311, 70, 3, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-04 07:13:05', '2018-10-04 07:06:09', 'Inherit', 'Inherit', 'race', 'Race 1', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 46),
(312, 70, 4, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-04 07:15:47', '2018-10-04 07:06:09', 'Inherit', 'Inherit', 'race', 'Race 1', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 46),
(313, 70, 5, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-04 07:58:41', '2018-10-04 07:06:09', 'Inherit', 'Inherit', 'race', 'Race 1', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 46),
(314, 71, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\RaceReport', '2018-10-04 08:03:06', '2018-10-04 08:03:06', 'Inherit', 'Inherit', 'new-race-report', 'New Race Report', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 46),
(315, 71, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\RaceReport', '2018-10-04 08:06:12', '2018-10-04 08:03:06', 'Inherit', 'Inherit', 'race-report-1', 'Race Report 1', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 46),
(316, 72, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\RaceReport', '2018-10-05 00:31:20', '2018-10-05 00:31:20', 'Inherit', 'Inherit', 'new-race-report', 'New Race Report', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 46),
(317, 72, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\RaceReport', '2018-10-05 00:32:09', '2018-10-05 00:31:20', 'Inherit', 'Inherit', 'race-report-2', 'Race Report 2', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 46),
(318, 72, 3, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\RaceReport', '2018-10-05 00:46:19', '2018-10-05 00:31:20', 'Inherit', 'Inherit', 'race-report-2', 'Race Report 2', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 46),
(319, 71, 3, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\RaceReport', '2018-10-05 01:22:27', '2018-10-04 08:03:06', 'Inherit', 'Inherit', 'race-report-1', 'Race Report 1', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 46),
(320, 73, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Result', '2018-10-05 01:49:10', '2018-10-05 01:49:10', 'Inherit', 'Inherit', 'new-result', 'New Result', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 72),
(321, 73, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Result', '2018-10-05 01:50:59', '2018-10-05 01:49:10', 'Inherit', 'Inherit', 'new-result', 'New Result', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 72),
(322, 73, 3, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Result', '2018-10-05 01:51:10', '2018-10-05 01:49:10', 'Inherit', 'Inherit', 'result', 'Result', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 72),
(323, 73, 4, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Result', '2018-10-05 01:51:18', '2018-10-05 01:49:10', 'Inherit', 'Inherit', 'result', 'Result1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 72),
(324, 74, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Result', '2018-10-05 03:23:35', '2018-10-05 03:23:35', 'Inherit', 'Inherit', 'new-result', 'New Result', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 72),
(325, 74, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Result', '2018-10-05 03:24:08', '2018-10-05 03:23:35', 'Inherit', 'Inherit', 'result-2', 'Result2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 72),
(326, 68, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-05 05:18:42', '2018-10-04 06:43:00', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(327, 65, 3, 1, 1, 1, 1, 1, 'Page', '2018-10-05 05:19:02', '2018-10-04 05:09:15', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(328, 75, 1, 0, 0, 1, 1, 0, 'Page', '2018-10-05 07:31:05', '2018-10-05 07:31:05', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(329, 75, 2, 1, 0, 1, 1, 1, 'Page', '2018-10-05 07:31:05', '2018-10-05 07:31:05', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(330, 46, 5, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\StandingAndResult', '2018-10-05 07:35:10', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 'standing-and-result', 'Standing And Result', NULL, '<p><span>Bundles are a quick and cost-effective way of building car collections and increasing the number of available Events and Quick Races. Multi-Car QR Bundles offer the added benefit of instantly providing all the cars required to enter an exciting Multi-Car Quick Race.</span></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(331, 46, 6, 1, 0, 1, 1, 1, 'StandingAndResult\\Component\\StandingAndResult', '2018-10-05 07:35:12', '2018-09-28 08:20:45', 'Inherit', 'Inherit', 'standing-and-result', 'Standing And Result', NULL, '<p><span>Bundles are a quick and cost-effective way of building car collections and increasing the number of available Events and Quick Races. Multi-Car QR Bundles offer the added benefit of instantly providing all the cars required to enter an exciting Multi-Car Quick Race.</span></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(332, 76, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:16:46', '2018-10-09 02:16:46', 'Inherit', 'Inherit', 'new-race-2', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 46),
(333, 76, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:17:56', '2018-10-09 02:16:46', 'Inherit', 'Inherit', 'race-2', 'Race 2', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 46),
(334, 77, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:18:29', '2018-10-09 02:18:29', 'Inherit', 'Inherit', 'new-race-2', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 46),
(335, 77, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:19:16', '2018-10-09 02:18:29', 'Inherit', 'Inherit', 'race-3', 'Race', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 46),
(336, 77, 3, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:19:27', '2018-10-09 02:18:29', 'Inherit', 'Inherit', 'race-3', 'Race 3', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 46),
(337, 78, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:19:44', '2018-10-09 02:19:44', 'Inherit', 'Inherit', 'new-race-2', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 46),
(338, 78, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:20:35', '2018-10-09 02:19:44', 'Inherit', 'Inherit', 'race-4', 'Race 4', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 46),
(339, 79, 1, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:20:58', '2018-10-09 02:20:58', 'Inherit', 'Inherit', 'new-race-2', 'New Race', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 46),
(340, 79, 2, 0, 0, 1, 1, 0, 'StandingAndResult\\Component\\Race', '2018-10-09 02:22:10', '2018-10-09 02:20:58', 'Inherit', 'Inherit', 'race-5', 'Race 5', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 46),
(341, 80, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:22:59', '2018-10-09 02:22:59', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 63),
(342, 80, 2, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:23:42', '2018-10-09 02:22:59', 'Inherit', 'Inherit', 'client', 'Client 2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 63),
(343, 81, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:24:04', '2018-10-09 02:24:04', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 63),
(344, 81, 2, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:24:30', '2018-10-09 02:24:04', 'Inherit', 'Inherit', 'client-3', ' Client 3', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 63),
(345, 82, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:24:56', '2018-10-09 02:24:56', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 63),
(346, 82, 2, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:25:28', '2018-10-09 02:24:56', 'Inherit', 'Inherit', 'client-4', 'Client 4', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 63),
(347, 83, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:25:59', '2018-10-09 02:25:59', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 63),
(348, 83, 2, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:26:18', '2018-10-09 02:25:59', 'Inherit', 'Inherit', 'new-client', 'New Client', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 63),
(349, 83, 3, 0, 0, 1, 1, 0, 'Home\\Component\\Client', '2018-10-09 02:26:29', '2018-10-09 02:25:59', 'Inherit', 'Inherit', 'client-5', 'Client 5', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 63),
(350, 84, 1, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:26:46', '2018-10-09 02:26:46', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 63),
(351, 84, 2, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:27:09', '2018-10-09 02:26:46', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 63),
(352, 84, 3, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:27:21', '2018-10-09 02:26:46', 'Inherit', 'Inherit', 'add-new-get-involved-1', 'Add New Get Involved 1', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 63),
(353, 85, 1, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:27:55', '2018-10-09 02:27:55', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 63),
(354, 85, 2, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:28:17', '2018-10-09 02:27:55', 'Inherit', 'Inherit', 'add-new-get-involved-2', 'Add New Get Involved 2', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 63),
(355, 86, 1, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:28:34', '2018-10-09 02:28:34', 'Inherit', 'Inherit', 'new-add-new-get-involved', 'New Add New Get Involved', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 63),
(356, 86, 2, 0, 0, 1, 1, 0, 'Home\\Component\\AddNewGetInvolved', '2018-10-09 02:29:05', '2018-10-09 02:28:34', 'Inherit', 'Inherit', 'add-new-get-involved-3', 'Add New Get Involved 3', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 63),
(357, 87, 1, 0, 0, 1, 1, 0, 'Home\\Component\\Series', '2018-10-09 02:29:51', '2018-10-09 02:29:51', 'Inherit', 'Inherit', 'new-series', 'New Series', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 63);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `StandingAndResult_Component_StandingAndResult`
--

CREATE TABLE `StandingAndResult_Component_StandingAndResult` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StandingAndResult_Component_StandingAndResult`
--

INSERT INTO `StandingAndResult_Component_StandingAndResult` (`ID`, `PhotoID`) VALUES
(46, 49);

-- --------------------------------------------------------

--
-- Table structure for table `StandingAndResult_Component_StandingAndResult_Gallary`
--

CREATE TABLE `StandingAndResult_Component_StandingAndResult_Gallary` (
  `ID` int(11) NOT NULL,
  `StandingAndResult_Component_StandingAndResultID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StandingAndResult_Component_StandingAndResult_Gallary`
--

INSERT INTO `StandingAndResult_Component_StandingAndResult_Gallary` (`ID`, `StandingAndResult_Component_StandingAndResultID`, `ImageID`) VALUES
(1, 46, 55),
(2, 46, 54),
(3, 46, 53),
(4, 46, 56),
(5, 46, 48),
(6, 46, 57),
(7, 46, 49),
(8, 46, 47);

-- --------------------------------------------------------

--
-- Table structure for table `StandingAndResult_Component_StandingAndResult_Live`
--

CREATE TABLE `StandingAndResult_Component_StandingAndResult_Live` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StandingAndResult_Component_StandingAndResult_Live`
--

INSERT INTO `StandingAndResult_Component_StandingAndResult_Live` (`ID`, `PhotoID`) VALUES
(46, 49);

-- --------------------------------------------------------

--
-- Table structure for table `StandingAndResult_Component_StandingAndResult_ResultsGallary`
--

CREATE TABLE `StandingAndResult_Component_StandingAndResult_ResultsGallary` (
  `ID` int(11) NOT NULL,
  `StandingAndResult_Component_StandingAndResultID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StandingAndResult_Component_StandingAndResult_ResultsGallary`
--

INSERT INTO `StandingAndResult_Component_StandingAndResult_ResultsGallary` (`ID`, `StandingAndResult_Component_StandingAndResultID`, `ImageID`) VALUES
(1, 46, 55),
(2, 46, 54),
(3, 46, 56),
(4, 46, 48),
(5, 46, 57),
(6, 46, 49),
(7, 46, 58),
(8, 46, 47);

-- --------------------------------------------------------

--
-- Table structure for table `StandingAndResult_Component_StandingAndResult_Versions`
--

CREATE TABLE `StandingAndResult_Component_StandingAndResult_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StandingAndResult_Component_StandingAndResult_Versions`
--

INSERT INTO `StandingAndResult_Component_StandingAndResult_Versions` (`ID`, `RecordID`, `Version`, `PhotoID`) VALUES
(1, 46, 2, 49),
(2, 46, 3, 49),
(3, 46, 4, 49),
(4, 46, 5, 49),
(5, 46, 6, 49);

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFileField`
--

CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedForm`
--

CREATE TABLE `SubmittedForm` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFormField`
--

CREATE TABLE `SubmittedFormField` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm`
--

CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL,
  `SubmitButtonText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm`
--

INSERT INTO `UserDefinedForm` (`ID`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`) VALUES
(13, NULL, NULL, '<p>Thanks, we\'ve received your submission.</p>', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_EmailRecipient`
--

CREATE TABLE `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailSubject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailFrom` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailReplyTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailBody` mediumtext CHARACTER SET utf8,
  `EmailBodyHtml` mediumtext CHARACTER SET utf8,
  `EmailTemplate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SendPlain` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CustomRulesCondition` enum('And','Or') CHARACTER SET utf8 DEFAULT 'And',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailSubjectFieldID` int(11) NOT NULL DEFAULT '0',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `FormClass` enum('PurpleSpider\\BasicCalendar\\CalendarEntry','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','gorriecoe\\Embed\\Models\\Embed','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','gorriecoe\\Embed\\Models\\Video','Page','CarsAndClasses\\Component\\AddCarsAndClasses','Home\\Component\\AddNewGetInvolved','CarsAndClasses\\Component\\CarsAndClasses','Home\\Component\\Client','Home\\Component\\Home','Involved\\Component\\HowToGetInvolved','StandingAndResult\\Component\\Race','StandingAndResult\\Component\\RaceReport','StandingAndResult\\Component\\Result','Home\\Component\\Series','StandingAndResult\\Component\\StandingAndResult','PurpleSpider\\BasicCalendar\\CalendarPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') CHARACTER SET utf8 DEFAULT 'PurpleSpider\\BasicCalendar\\CalendarEntry'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_EmailRecipientCondition`
--

CREATE TABLE `UserDefinedForm_EmailRecipientCondition` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition') CHARACTER SET utf8 DEFAULT 'SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ConditionOption` enum('IsBlank','IsNotBlank','Equals','NotEquals','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `ConditionValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_Live`
--

CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL,
  `SubmitButtonText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_Versions`
--

CREATE TABLE `UserDefinedForm_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_Versions`
--

INSERT INTO `UserDefinedForm_Versions` (`ID`, `RecordID`, `Version`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`) VALUES
(1, 13, 1, NULL, NULL, '<p>Thanks, we\'ve received your submission.</p>', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Versions`
--

CREATE TABLE `VirtualPage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_CarsAndClasses_Component_CarsAndClasses`
--

CREATE TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses` (
  `ID` int(11) NOT NULL,
  `AddCarsAndClassesID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_CarsAndClasses_Component_CarsAndClasses`
--

INSERT INTO `_obsolete_CarsAndClasses_Component_CarsAndClasses` (`ID`, `AddCarsAndClassesID`) VALUES
(34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live`
--

CREATE TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live` (
  `ID` int(11) NOT NULL,
  `AddCarsAndClassesID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live`
--

INSERT INTO `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live` (`ID`, `AddCarsAndClassesID`) VALUES
(34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions`
--

CREATE TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AddCarsAndClassesID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions`
--

INSERT INTO `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions` (`ID`, `RecordID`, `Version`, `AddCarsAndClassesID`) VALUES
(1, 34, 1, 0),
(2, 34, 2, 0),
(3, 34, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EventGallarypage`
--

CREATE TABLE `_obsolete_EventGallarypage` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_EventGallarypage`
--

INSERT INTO `_obsolete_EventGallarypage` (`ID`, `PhotoID`) VALUES
(16, 0),
(17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EventGallarypage_Live`
--

CREATE TABLE `_obsolete_EventGallarypage_Live` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_EventGallarypage_Live`
--

INSERT INTO `_obsolete_EventGallarypage_Live` (`ID`, `PhotoID`) VALUES
(17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EventGallarypage_Versions`
--

CREATE TABLE `_obsolete_EventGallarypage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_EventGallarypage_Versions`
--

INSERT INTO `_obsolete_EventGallarypage_Versions` (`ID`, `RecordID`, `Version`, `PhotoID`) VALUES
(1, 16, 2, 0),
(2, 17, 7, 0),
(3, 17, 8, 0),
(4, 17, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Gallarypage`
--

CREATE TABLE `_obsolete_Gallarypage` (
  `ID` int(11) NOT NULL,
  `Photos` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Gallarypage_Live`
--

CREATE TABLE `_obsolete_Gallarypage_Live` (
  `ID` int(11) NOT NULL,
  `Photos` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Gallarypage_Versions`
--

CREATE TABLE `_obsolete_Gallarypage_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Photos` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Gallary_Component_Gallary`
--

CREATE TABLE `_obsolete_Gallary_Component_Gallary` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_Gallary_Component_Gallary`
--

INSERT INTO `_obsolete_Gallary_Component_Gallary` (`ID`, `PhotoID`) VALUES
(19, 11);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Gallary_Component_Gallary_Live`
--

CREATE TABLE `_obsolete_Gallary_Component_Gallary_Live` (
  `ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Gallary_Component_Gallary_Versions`
--

CREATE TABLE `_obsolete_Gallary_Component_Gallary_Versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_Gallary_Component_Gallary_Versions`
--

INSERT INTO `_obsolete_Gallary_Component_Gallary_Versions` (`ID`, `RecordID`, `Version`, `PhotoID`) VALUES
(1, 19, 3, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AddCarsAndClasses`
--
ALTER TABLE `AddCarsAndClasses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AddCarsAndClasses_Live`
--
ALTER TABLE `AddCarsAndClasses_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AddCarsAndClasses_Photo`
--
ALTER TABLE `AddCarsAndClasses_Photo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AddCarsAndClassesID` (`AddCarsAndClassesID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `AddCarsAndClasses_Versions`
--
ALTER TABLE `AddCarsAndClasses_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `AddEvent`
--
ALTER TABLE `AddEvent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `SeriesID` (`SeriesID`),
  ADD KEY `ReportsID` (`ReportsID`);

--
-- Indexes for table `AddEvent_Live`
--
ALTER TABLE `AddEvent_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `SeriesID` (`SeriesID`),
  ADD KEY `ReportsID` (`ReportsID`);

--
-- Indexes for table `AddEvent_Versions`
--
ALTER TABLE `AddEvent_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `SeriesID` (`SeriesID`),
  ADD KEY `ReportsID` (`ReportsID`);

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `BlogPost`
--
ALTER TABLE `BlogPost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogCategoryID` (`BlogCategoryID`);

--
-- Indexes for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogTagID` (`BlogTagID`);

--
-- Indexes for table `BlogPost_Versions`
--
ALTER TABLE `BlogPost_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `BlogTag`
--
ALTER TABLE `BlogTag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Blog_Versions`
--
ALTER TABLE `Blog_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Calendar`
--
ALTER TABLE `Calendar`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `CalendarEntry`
--
ALTER TABLE `CalendarEntry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Date` (`Date`),
  ADD KEY `Time` (`Time`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `CalendarPageID` (`CalendarPageID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `CalendarHomeID` (`CalendarHomeID`);

--
-- Indexes for table `CalendarPage`
--
ALTER TABLE `CalendarPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AboutID` (`AboutID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `CalendarHomeID` (`CalendarHomeID`),
  ADD KEY `CalendarHomeImageID` (`CalendarHomeImageID`);

--
-- Indexes for table `CalendarPage_Live`
--
ALTER TABLE `CalendarPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AboutID` (`AboutID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `CalendarHomeID` (`CalendarHomeID`),
  ADD KEY `CalendarHomeImageID` (`CalendarHomeImageID`);

--
-- Indexes for table `CalendarPage_Versions`
--
ALTER TABLE `CalendarPage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AboutID` (`AboutID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `CalendarHomeID` (`CalendarHomeID`),
  ADD KEY `CalendarHomeImageID` (`CalendarHomeImageID`);

--
-- Indexes for table `Calendar_Authors`
--
ALTER TABLE `Calendar_Authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CalendarID` (`CalendarID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Calendar_Component_Calendar`
--
ALTER TABLE `Calendar_Component_Calendar`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Calendar_Component_CalendarEntry`
--
ALTER TABLE `Calendar_Component_CalendarEntry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Calendar_Component_Calendar_Live`
--
ALTER TABLE `Calendar_Component_Calendar_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Calendar_Component_Calendar_Versions`
--
ALTER TABLE `Calendar_Component_Calendar_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Calendar_Live`
--
ALTER TABLE `Calendar_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `Calendar_Versions`
--
ALTER TABLE `Calendar_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `CarsAndClasses_Component_CarsAndClasses`
--
ALTER TABLE `CarsAndClasses_Component_CarsAndClasses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `CarsAndClasses_Component_CarsAndClasses_Live`
--
ALTER TABLE `CarsAndClasses_Component_CarsAndClasses_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `CarsAndClasses_Component_CarsAndClasses_Versions`
--
ALTER TABLE `CarsAndClasses_Component_CarsAndClasses_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `ChangeSet`
--
ALTER TABLE `ChangeSet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `State` (`State`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `PublisherID` (`PublisherID`);

--
-- Indexes for table `ChangeSetItem`
--
ALTER TABLE `ChangeSetItem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ChangeSetID` (`ChangeSetID`),
  ADD KEY `Object` (`ObjectID`,`ObjectClass`);

--
-- Indexes for table `ChangeSetItem_ReferencedBy`
--
ALTER TABLE `ChangeSetItem_ReferencedBy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ChangeSetItemID` (`ChangeSetItemID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `ChildHowToGetInvolved`
--
ALTER TABLE `ChildHowToGetInvolved`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ChildHowToGetInvolved_Live`
--
ALTER TABLE `ChildHowToGetInvolved_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ChildHowToGetInvolved_Versions`
--
ALTER TABLE `ChildHowToGetInvolved_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `ClientPhotoID` (`ClientPhotoID`);

--
-- Indexes for table `Client_Live`
--
ALTER TABLE `Client_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `ClientPhotoID` (`ClientPhotoID`);

--
-- Indexes for table `Client_Versions`
--
ALTER TABLE `Client_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `ClientPhotoID` (`ClientPhotoID`);

--
-- Indexes for table `EditableCheckbox`
--
ALTER TABLE `EditableCheckbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableCheckbox_Live`
--
ALTER TABLE `EditableCheckbox_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableCheckbox_Versions`
--
ALTER TABLE `EditableCheckbox_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableCountryDropdownField`
--
ALTER TABLE `EditableCountryDropdownField`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableCountryDropdownField_Live`
--
ALTER TABLE `EditableCountryDropdownField_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableCountryDropdownField_Versions`
--
ALTER TABLE `EditableCountryDropdownField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableCustomRule`
--
ALTER TABLE `EditableCustomRule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ConditionFieldID` (`ConditionFieldID`);

--
-- Indexes for table `EditableCustomRule_Live`
--
ALTER TABLE `EditableCustomRule_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ConditionFieldID` (`ConditionFieldID`);

--
-- Indexes for table `EditableCustomRule_Versions`
--
ALTER TABLE `EditableCustomRule_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ConditionFieldID` (`ConditionFieldID`);

--
-- Indexes for table `EditableDateField`
--
ALTER TABLE `EditableDateField`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDateField_Live`
--
ALTER TABLE `EditableDateField_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDateField_Versions`
--
ALTER TABLE `EditableDateField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableDropdown`
--
ALTER TABLE `EditableDropdown`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDropdown_Live`
--
ALTER TABLE `EditableDropdown_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDropdown_Versions`
--
ALTER TABLE `EditableDropdown_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableFieldGroup`
--
ALTER TABLE `EditableFieldGroup`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EndID` (`EndID`);

--
-- Indexes for table `EditableFieldGroup_Live`
--
ALTER TABLE `EditableFieldGroup_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EndID` (`EndID`);

--
-- Indexes for table `EditableFieldGroup_Versions`
--
ALTER TABLE `EditableFieldGroup_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `EndID` (`EndID`);

--
-- Indexes for table `EditableFileField`
--
ALTER TABLE `EditableFileField`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FolderID` (`FolderID`);

--
-- Indexes for table `EditableFileField_Live`
--
ALTER TABLE `EditableFileField_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FolderID` (`FolderID`);

--
-- Indexes for table `EditableFileField_Versions`
--
ALTER TABLE `EditableFileField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FolderID` (`FolderID`);

--
-- Indexes for table `EditableFormField`
--
ALTER TABLE `EditableFormField`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `EditableFormField_Live`
--
ALTER TABLE `EditableFormField_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `EditableFormField_Versions`
--
ALTER TABLE `EditableFormField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `EditableFormHeading`
--
ALTER TABLE `EditableFormHeading`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableFormHeading_Live`
--
ALTER TABLE `EditableFormHeading_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableFormHeading_Versions`
--
ALTER TABLE `EditableFormHeading_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableLiteralField`
--
ALTER TABLE `EditableLiteralField`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableLiteralField_Live`
--
ALTER TABLE `EditableLiteralField_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableLiteralField_Versions`
--
ALTER TABLE `EditableLiteralField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableMemberListField`
--
ALTER TABLE `EditableMemberListField`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `EditableMemberListField_Live`
--
ALTER TABLE `EditableMemberListField_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `EditableMemberListField_Versions`
--
ALTER TABLE `EditableMemberListField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `EditableNumericField`
--
ALTER TABLE `EditableNumericField`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableNumericField_Live`
--
ALTER TABLE `EditableNumericField_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableNumericField_Versions`
--
ALTER TABLE `EditableNumericField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableOption`
--
ALTER TABLE `EditableOption`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `EditableOption_Live`
--
ALTER TABLE `EditableOption_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `EditableOption_Versions`
--
ALTER TABLE `EditableOption_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `EditableTextField`
--
ALTER TABLE `EditableTextField`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableTextField_Live`
--
ALTER TABLE `EditableTextField_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableTextField_Versions`
--
ALTER TABLE `EditableTextField_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Embed`
--
ALTER TABLE `Embed`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `EmbedImageID` (`EmbedImageID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Versions`
--
ALTER TABLE `ErrorPage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `EventChild_Component_EventsDetail`
--
ALTER TABLE `EventChild_Component_EventsDetail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `EventChild_Component_EventsDetail_Contributors`
--
ALTER TABLE `EventChild_Component_EventsDetail_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventChild_Component_EventsDetailID` (`EventChild_Component_EventsDetailID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `EventChild_Component_EventsDetail_Editors`
--
ALTER TABLE `EventChild_Component_EventsDetail_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventChild_Component_EventsDetailID` (`EventChild_Component_EventsDetailID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `EventChild_Component_EventsDetail_Live`
--
ALTER TABLE `EventChild_Component_EventsDetail_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `EventChild_Component_EventsDetail_Versions`
--
ALTER TABLE `EventChild_Component_EventsDetail_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `EventChild_Component_EventsDetail_Writers`
--
ALTER TABLE `EventChild_Component_EventsDetail_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventChild_Component_EventsDetailID` (`EventChild_Component_EventsDetailID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `EventGallarypage`
--
ALTER TABLE `EventGallarypage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AboutID` (`AboutID`),
  ADD KEY `NewsImageID` (`NewsImageID`);

--
-- Indexes for table `EventGallarypage_File`
--
ALTER TABLE `EventGallarypage_File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `EventGallarypage_Gallary`
--
ALTER TABLE `EventGallarypage_Gallary`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `EventGallarypage_HomePhoto`
--
ALTER TABLE `EventGallarypage_HomePhoto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `EventGallarypage_Live`
--
ALTER TABLE `EventGallarypage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AboutID` (`AboutID`),
  ADD KEY `NewsImageID` (`NewsImageID`);

--
-- Indexes for table `EventGallarypage_MP4`
--
ALTER TABLE `EventGallarypage_MP4`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `EventGallarypage_Photo`
--
ALTER TABLE `EventGallarypage_Photo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `EventGallarypage_Versions`
--
ALTER TABLE `EventGallarypage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AboutID` (`AboutID`),
  ADD KEY `NewsImageID` (`NewsImageID`);

--
-- Indexes for table `EventGallarypage_Video`
--
ALTER TABLE `EventGallarypage_Video`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `EventGallarypage_Webcams`
--
ALTER TABLE `EventGallarypage_Webcams`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventGallarypageID` (`EventGallarypageID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Eventspage`
--
ALTER TABLE `Eventspage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `EventspageEventspage`
--
ALTER TABLE `EventspageEventspage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubmittedByID` (`SubmittedByID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `Eventspage_Live`
--
ALTER TABLE `Eventspage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Eventspage_Versions`
--
ALTER TABLE `Eventspage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Events_Component_EventsDetail`
--
ALTER TABLE `Events_Component_EventsDetail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Events_Component_EventsDetail_Contributors`
--
ALTER TABLE `Events_Component_EventsDetail_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Events_Component_EventsDetailID` (`Events_Component_EventsDetailID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Events_Component_EventsDetail_Editors`
--
ALTER TABLE `Events_Component_EventsDetail_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Events_Component_EventsDetailID` (`Events_Component_EventsDetailID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Events_Component_EventsDetail_Live`
--
ALTER TABLE `Events_Component_EventsDetail_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Events_Component_EventsDetail_Versions`
--
ALTER TABLE `Events_Component_EventsDetail_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Events_Component_EventsDetail_Writers`
--
ALTER TABLE `Events_Component_EventsDetail_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Events_Component_EventsDetailID` (`Events_Component_EventsDetailID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Events_Live`
--
ALTER TABLE `Events_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Events_Photo`
--
ALTER TABLE `Events_Photo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventsID` (`EventsID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `Events_Versions`
--
ALTER TABLE `Events_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `FileLink`
--
ALTER TABLE `FileLink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LinkedID` (`LinkedID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `File_EditorGroups`
--
ALTER TABLE `File_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `File_Live`
--
ALTER TABLE `File_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `File_Versions`
--
ALTER TABLE `File_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `File_ViewerGroups`
--
ALTER TABLE `File_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `Gallary_Component_Gallary_Photo`
--
ALTER TABLE `Gallary_Component_Gallary_Photo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Gallary_Component_GallaryID` (`Gallary_Component_GallaryID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `HowToGetInvolved`
--
ALTER TABLE `HowToGetInvolved`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HowToGetInvolved_Live`
--
ALTER TABLE `HowToGetInvolved_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HowToGetInvolved_Versions`
--
ALTER TABLE `HowToGetInvolved_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Surname` (`Surname`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `Email` (`Email`),
  ADD KEY `BlogProfileImageID` (`BlogProfileImageID`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Title` (`Title`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `Race`
--
ALTER TABLE `Race`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotosID` (`PhotosID`);

--
-- Indexes for table `Race_Live`
--
ALTER TABLE `Race_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotosID` (`PhotosID`);

--
-- Indexes for table `Race_Versions`
--
ALTER TABLE `Race_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotosID` (`PhotosID`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Versions`
--
ALTER TABLE `RedirectorPage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RememberLoginHash`
--
ALTER TABLE `RememberLoginHash`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `DeviceID` (`DeviceID`),
  ADD KEY `Hash` (`Hash`);

--
-- Indexes for table `Reports`
--
ALTER TABLE `Reports`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ReportPhotoID` (`ReportPhotoID`);

--
-- Indexes for table `Reports_Live`
--
ALTER TABLE `Reports_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ReportPhotoID` (`ReportPhotoID`);

--
-- Indexes for table `Reports_Photos`
--
ALTER TABLE `Reports_Photos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ReportsID` (`ReportsID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `Reports_ReportPhotos`
--
ALTER TABLE `Reports_ReportPhotos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ReportsID` (`ReportsID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `Reports_Versions`
--
ALTER TABLE `Reports_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `ReportPhotoID` (`ReportPhotoID`);

--
-- Indexes for table `Results`
--
ALTER TABLE `Results`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Results_Live`
--
ALTER TABLE `Results_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Results_Versions`
--
ALTER TABLE `Results_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Series`
--
ALTER TABLE `Series`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SeriesPhotoID` (`SeriesPhotoID`);

--
-- Indexes for table `Series_Live`
--
ALTER TABLE `Series_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SeriesPhotoID` (`SeriesPhotoID`);

--
-- Indexes for table `Series_Versions`
--
ALTER TABLE `Series_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `SeriesPhotoID` (`SeriesPhotoID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `CMSLogoID` (`CMSLogoID`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `SiteTreeLink`
--
ALTER TABLE `SiteTreeLink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LinkedID` (`LinkedID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `SiteTree_Versions`
--
ALTER TABLE `SiteTree_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `StandingAndResult_Component_StandingAndResult`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `StandingAndResult_Component_StandingAndResult_Gallary`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_Gallary`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `StandingAndResult_Component_StandingAndResultID` (`StandingAndResult_Component_StandingAndResultID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `StandingAndResult_Component_StandingAndResult_Live`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `StandingAndResult_Component_StandingAndResult_ResultsGallary`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_ResultsGallary`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `StandingAndResult_Component_StandingAndResultID` (`StandingAndResult_Component_StandingAndResultID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `StandingAndResult_Component_StandingAndResult_Versions`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `SubmittedFileField`
--
ALTER TABLE `SubmittedFileField`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UploadedFileID` (`UploadedFileID`);

--
-- Indexes for table `SubmittedForm`
--
ALTER TABLE `SubmittedForm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubmittedByID` (`SubmittedByID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `SubmittedFormField`
--
ALTER TABLE `SubmittedFormField`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `UserDefinedForm`
--
ALTER TABLE `UserDefinedForm`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserDefinedForm_EmailRecipient`
--
ALTER TABLE `UserDefinedForm_EmailRecipient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  ADD KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  ADD KEY `SendEmailSubjectFieldID` (`SendEmailSubjectFieldID`),
  ADD KEY `Form` (`FormID`,`FormClass`);

--
-- Indexes for table `UserDefinedForm_EmailRecipientCondition`
--
ALTER TABLE `UserDefinedForm_EmailRecipientCondition`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ConditionFieldID` (`ConditionFieldID`);

--
-- Indexes for table `UserDefinedForm_Live`
--
ALTER TABLE `UserDefinedForm_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserDefinedForm_Versions`
--
ALTER TABLE `UserDefinedForm_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Versions`
--
ALTER TABLE `VirtualPage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `_obsolete_CarsAndClasses_Component_CarsAndClasses`
--
ALTER TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AddCarsAndClassesID` (`AddCarsAndClassesID`);

--
-- Indexes for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live`
--
ALTER TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AddCarsAndClassesID` (`AddCarsAndClassesID`);

--
-- Indexes for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions`
--
ALTER TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AddCarsAndClassesID` (`AddCarsAndClassesID`);

--
-- Indexes for table `_obsolete_EventGallarypage`
--
ALTER TABLE `_obsolete_EventGallarypage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `_obsolete_EventGallarypage_Live`
--
ALTER TABLE `_obsolete_EventGallarypage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `_obsolete_EventGallarypage_Versions`
--
ALTER TABLE `_obsolete_EventGallarypage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `_obsolete_Gallarypage`
--
ALTER TABLE `_obsolete_Gallarypage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `_obsolete_Gallarypage_Live`
--
ALTER TABLE `_obsolete_Gallarypage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `_obsolete_Gallarypage_Versions`
--
ALTER TABLE `_obsolete_Gallarypage_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `_obsolete_Gallary_Component_Gallary`
--
ALTER TABLE `_obsolete_Gallary_Component_Gallary`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `_obsolete_Gallary_Component_Gallary_Live`
--
ALTER TABLE `_obsolete_Gallary_Component_Gallary_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `_obsolete_Gallary_Component_Gallary_Versions`
--
ALTER TABLE `_obsolete_Gallary_Component_Gallary_Versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AddCarsAndClasses`
--
ALTER TABLE `AddCarsAndClasses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `AddCarsAndClasses_Live`
--
ALTER TABLE `AddCarsAndClasses_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AddCarsAndClasses_Photo`
--
ALTER TABLE `AddCarsAndClasses_Photo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `AddCarsAndClasses_Versions`
--
ALTER TABLE `AddCarsAndClasses_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `AddEvent`
--
ALTER TABLE `AddEvent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `AddEvent_Live`
--
ALTER TABLE `AddEvent_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AddEvent_Versions`
--
ALTER TABLE `AddEvent_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogPost`
--
ALTER TABLE `BlogPost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogPost_Versions`
--
ALTER TABLE `BlogPost_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BlogTag`
--
ALTER TABLE `BlogTag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Versions`
--
ALTER TABLE `Blog_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendar`
--
ALTER TABLE `Calendar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEntry`
--
ALTER TABLE `CalendarEntry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `CalendarPage`
--
ALTER TABLE `CalendarPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `CalendarPage_Live`
--
ALTER TABLE `CalendarPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `CalendarPage_Versions`
--
ALTER TABLE `CalendarPage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Calendar_Authors`
--
ALTER TABLE `Calendar_Authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendar_Component_Calendar`
--
ALTER TABLE `Calendar_Component_Calendar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendar_Component_CalendarEntry`
--
ALTER TABLE `Calendar_Component_CalendarEntry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendar_Component_Calendar_Live`
--
ALTER TABLE `Calendar_Component_Calendar_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendar_Component_Calendar_Versions`
--
ALTER TABLE `Calendar_Component_Calendar_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Calendar_Live`
--
ALTER TABLE `Calendar_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendar_Versions`
--
ALTER TABLE `Calendar_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CarsAndClasses_Component_CarsAndClasses`
--
ALTER TABLE `CarsAndClasses_Component_CarsAndClasses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CarsAndClasses_Component_CarsAndClasses_Live`
--
ALTER TABLE `CarsAndClasses_Component_CarsAndClasses_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CarsAndClasses_Component_CarsAndClasses_Versions`
--
ALTER TABLE `CarsAndClasses_Component_CarsAndClasses_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ChangeSet`
--
ALTER TABLE `ChangeSet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `ChangeSetItem`
--
ALTER TABLE `ChangeSetItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `ChangeSetItem_ReferencedBy`
--
ALTER TABLE `ChangeSetItem_ReferencedBy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ChildHowToGetInvolved`
--
ALTER TABLE `ChildHowToGetInvolved`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `ChildHowToGetInvolved_Live`
--
ALTER TABLE `ChildHowToGetInvolved_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ChildHowToGetInvolved_Versions`
--
ALTER TABLE `ChildHowToGetInvolved_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `Client_Live`
--
ALTER TABLE `Client_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Client_Versions`
--
ALTER TABLE `Client_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `EditableCheckbox`
--
ALTER TABLE `EditableCheckbox`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCheckbox_Live`
--
ALTER TABLE `EditableCheckbox_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCheckbox_Versions`
--
ALTER TABLE `EditableCheckbox_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCountryDropdownField`
--
ALTER TABLE `EditableCountryDropdownField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCountryDropdownField_Live`
--
ALTER TABLE `EditableCountryDropdownField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCountryDropdownField_Versions`
--
ALTER TABLE `EditableCountryDropdownField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCustomRule`
--
ALTER TABLE `EditableCustomRule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCustomRule_Live`
--
ALTER TABLE `EditableCustomRule_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableCustomRule_Versions`
--
ALTER TABLE `EditableCustomRule_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableDateField`
--
ALTER TABLE `EditableDateField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableDateField_Live`
--
ALTER TABLE `EditableDateField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableDateField_Versions`
--
ALTER TABLE `EditableDateField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableDropdown`
--
ALTER TABLE `EditableDropdown`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableDropdown_Live`
--
ALTER TABLE `EditableDropdown_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableDropdown_Versions`
--
ALTER TABLE `EditableDropdown_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFieldGroup`
--
ALTER TABLE `EditableFieldGroup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFieldGroup_Live`
--
ALTER TABLE `EditableFieldGroup_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFieldGroup_Versions`
--
ALTER TABLE `EditableFieldGroup_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `EditableFileField`
--
ALTER TABLE `EditableFileField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFileField_Live`
--
ALTER TABLE `EditableFileField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFileField_Versions`
--
ALTER TABLE `EditableFileField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFormField`
--
ALTER TABLE `EditableFormField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `EditableFormField_Live`
--
ALTER TABLE `EditableFormField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFormField_Versions`
--
ALTER TABLE `EditableFormField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `EditableFormHeading`
--
ALTER TABLE `EditableFormHeading`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFormHeading_Live`
--
ALTER TABLE `EditableFormHeading_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableFormHeading_Versions`
--
ALTER TABLE `EditableFormHeading_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableLiteralField`
--
ALTER TABLE `EditableLiteralField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableLiteralField_Live`
--
ALTER TABLE `EditableLiteralField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableLiteralField_Versions`
--
ALTER TABLE `EditableLiteralField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableMemberListField`
--
ALTER TABLE `EditableMemberListField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableMemberListField_Live`
--
ALTER TABLE `EditableMemberListField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableMemberListField_Versions`
--
ALTER TABLE `EditableMemberListField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableNumericField`
--
ALTER TABLE `EditableNumericField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableNumericField_Live`
--
ALTER TABLE `EditableNumericField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableNumericField_Versions`
--
ALTER TABLE `EditableNumericField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableOption`
--
ALTER TABLE `EditableOption`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableOption_Live`
--
ALTER TABLE `EditableOption_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableOption_Versions`
--
ALTER TABLE `EditableOption_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableTextField`
--
ALTER TABLE `EditableTextField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `EditableTextField_Live`
--
ALTER TABLE `EditableTextField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EditableTextField_Versions`
--
ALTER TABLE `EditableTextField_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Embed`
--
ALTER TABLE `Embed`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ErrorPage_Versions`
--
ALTER TABLE `ErrorPage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `EventChild_Component_EventsDetail`
--
ALTER TABLE `EventChild_Component_EventsDetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventChild_Component_EventsDetail_Contributors`
--
ALTER TABLE `EventChild_Component_EventsDetail_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventChild_Component_EventsDetail_Editors`
--
ALTER TABLE `EventChild_Component_EventsDetail_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventChild_Component_EventsDetail_Live`
--
ALTER TABLE `EventChild_Component_EventsDetail_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventChild_Component_EventsDetail_Versions`
--
ALTER TABLE `EventChild_Component_EventsDetail_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventChild_Component_EventsDetail_Writers`
--
ALTER TABLE `EventChild_Component_EventsDetail_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventGallarypage`
--
ALTER TABLE `EventGallarypage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `EventGallarypage_File`
--
ALTER TABLE `EventGallarypage_File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventGallarypage_Gallary`
--
ALTER TABLE `EventGallarypage_Gallary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `EventGallarypage_HomePhoto`
--
ALTER TABLE `EventGallarypage_HomePhoto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EventGallarypage_Live`
--
ALTER TABLE `EventGallarypage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `EventGallarypage_MP4`
--
ALTER TABLE `EventGallarypage_MP4`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventGallarypage_Photo`
--
ALTER TABLE `EventGallarypage_Photo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventGallarypage_Versions`
--
ALTER TABLE `EventGallarypage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `EventGallarypage_Video`
--
ALTER TABLE `EventGallarypage_Video`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `EventGallarypage_Webcams`
--
ALTER TABLE `EventGallarypage_Webcams`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Eventspage`
--
ALTER TABLE `Eventspage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `EventspageEventspage`
--
ALTER TABLE `EventspageEventspage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Eventspage_Live`
--
ALTER TABLE `Eventspage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Eventspage_Versions`
--
ALTER TABLE `Eventspage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `Events_Component_EventsDetail`
--
ALTER TABLE `Events_Component_EventsDetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Events_Component_EventsDetail_Contributors`
--
ALTER TABLE `Events_Component_EventsDetail_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events_Component_EventsDetail_Editors`
--
ALTER TABLE `Events_Component_EventsDetail_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events_Component_EventsDetail_Live`
--
ALTER TABLE `Events_Component_EventsDetail_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events_Component_EventsDetail_Versions`
--
ALTER TABLE `Events_Component_EventsDetail_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Events_Component_EventsDetail_Writers`
--
ALTER TABLE `Events_Component_EventsDetail_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events_Live`
--
ALTER TABLE `Events_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events_Photo`
--
ALTER TABLE `Events_Photo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events_Versions`
--
ALTER TABLE `Events_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `FileLink`
--
ALTER TABLE `FileLink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `File_EditorGroups`
--
ALTER TABLE `File_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `File_Live`
--
ALTER TABLE `File_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `File_Versions`
--
ALTER TABLE `File_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `File_ViewerGroups`
--
ALTER TABLE `File_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Gallary_Component_Gallary_Photo`
--
ALTER TABLE `Gallary_Component_Gallary_Photo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HowToGetInvolved`
--
ALTER TABLE `HowToGetInvolved`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HowToGetInvolved_Live`
--
ALTER TABLE `HowToGetInvolved_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HowToGetInvolved_Versions`
--
ALTER TABLE `HowToGetInvolved_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Race`
--
ALTER TABLE `Race`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `Race_Live`
--
ALTER TABLE `Race_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Race_Versions`
--
ALTER TABLE `Race_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RedirectorPage_Versions`
--
ALTER TABLE `RedirectorPage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RememberLoginHash`
--
ALTER TABLE `RememberLoginHash`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reports`
--
ALTER TABLE `Reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `Reports_Live`
--
ALTER TABLE `Reports_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reports_Photos`
--
ALTER TABLE `Reports_Photos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Reports_ReportPhotos`
--
ALTER TABLE `Reports_ReportPhotos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Reports_Versions`
--
ALTER TABLE `Reports_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Results`
--
ALTER TABLE `Results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `Results_Live`
--
ALTER TABLE `Results_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Results_Versions`
--
ALTER TABLE `Results_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Series`
--
ALTER TABLE `Series`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `Series_Live`
--
ALTER TABLE `Series_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Series_Versions`
--
ALTER TABLE `Series_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `SiteTreeLink`
--
ALTER TABLE `SiteTreeLink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `SiteTree_Versions`
--
ALTER TABLE `SiteTree_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StandingAndResult_Component_StandingAndResult`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `StandingAndResult_Component_StandingAndResult_Gallary`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_Gallary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `StandingAndResult_Component_StandingAndResult_Live`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `StandingAndResult_Component_StandingAndResult_ResultsGallary`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_ResultsGallary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `StandingAndResult_Component_StandingAndResult_Versions`
--
ALTER TABLE `StandingAndResult_Component_StandingAndResult_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SubmittedFileField`
--
ALTER TABLE `SubmittedFileField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubmittedForm`
--
ALTER TABLE `SubmittedForm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubmittedFormField`
--
ALTER TABLE `SubmittedFormField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserDefinedForm`
--
ALTER TABLE `UserDefinedForm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `UserDefinedForm_EmailRecipient`
--
ALTER TABLE `UserDefinedForm_EmailRecipient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserDefinedForm_EmailRecipientCondition`
--
ALTER TABLE `UserDefinedForm_EmailRecipientCondition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserDefinedForm_Live`
--
ALTER TABLE `UserDefinedForm_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserDefinedForm_Versions`
--
ALTER TABLE `UserDefinedForm_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VirtualPage_Versions`
--
ALTER TABLE `VirtualPage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_CarsAndClasses_Component_CarsAndClasses`
--
ALTER TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live`
--
ALTER TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions`
--
ALTER TABLE `_obsolete_CarsAndClasses_Component_CarsAndClasses_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `_obsolete_EventGallarypage`
--
ALTER TABLE `_obsolete_EventGallarypage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `_obsolete_EventGallarypage_Live`
--
ALTER TABLE `_obsolete_EventGallarypage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `_obsolete_EventGallarypage_Versions`
--
ALTER TABLE `_obsolete_EventGallarypage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `_obsolete_Gallarypage`
--
ALTER TABLE `_obsolete_Gallarypage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_Gallarypage_Live`
--
ALTER TABLE `_obsolete_Gallarypage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_Gallarypage_Versions`
--
ALTER TABLE `_obsolete_Gallarypage_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_Gallary_Component_Gallary`
--
ALTER TABLE `_obsolete_Gallary_Component_Gallary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `_obsolete_Gallary_Component_Gallary_Live`
--
ALTER TABLE `_obsolete_Gallary_Component_Gallary_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_Gallary_Component_Gallary_Versions`
--
ALTER TABLE `_obsolete_Gallary_Component_Gallary_Versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
