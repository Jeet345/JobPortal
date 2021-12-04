-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 06:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Name`, `Email`, `Password`, `Status`) VALUES
(1, 'Jeet', 'Mendaparajeet@gmail.com', 'newjeet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(30) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `Id` int(11) NOT NULL,
  `Queries` text NOT NULL,
  `Replies` text NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employeer`
--

CREATE TABLE `employeer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `CompanyName` varchar(50) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `AboutCompany` text NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `Id` int(11) NOT NULL,
  `EmployeerId` int(11) NOT NULL,
  `JobTitle` varchar(30) NOT NULL,
  `JobLocation` varchar(30) NOT NULL,
  `JobExperience` varchar(30) NOT NULL,
  `JobStatus` int(11) NOT NULL DEFAULT 1,
  `JobApplicants` int(11) NOT NULL DEFAULT 0,
  `JobPostingDate` date NOT NULL DEFAULT current_timestamp(),
  `JobSkills` varchar(100) NOT NULL,
  `JobRemoteWork` varchar(10) NOT NULL,
  `JobType` varchar(30) NOT NULL,
  `JobEducation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Languages` text DEFAULT NULL,
  `Resume` varchar(100) DEFAULT NULL,
  `WorkStatus` varchar(20) DEFAULT NULL,
  `Skills` text DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`Id`, `FirstName`, `LastName`, `Email`, `Password`, `Address`, `City`, `State`, `Country`, `DOB`, `Gender`, `Languages`, `Resume`, `WorkStatus`, `Skills`, `Status`) VALUES
(1, 'new name', NULL, 'mendaparajeet@gmail.com', 'newpassword', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'new name', NULL, 'newname@gmail.com', 'kndknede', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'new name 2', NULL, 'newemail@gmail.com', 'newpassword', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Jeet', NULL, 'jitmendapara9252@gmail.com', 'jeet7142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'jeet', NULL, 'oldemail@gmail.com', 'oldemail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'notnew', NULL, 'notnew@gmail.com', 'newpassword', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'ksnkcbck', NULL, 'kwndkwnw@gmail.com', 'kndknwk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_education`
--

CREATE TABLE `jobseeker_education` (
  `Id` int(11) NOT NULL,
  `JobSeekerId` int(11) NOT NULL,
  `Education` varchar(30) NOT NULL,
  `Board` varchar(100) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `PassingYear` int(5) NOT NULL,
  `University` varchar(50) NOT NULL,
  `CourseType` varchar(30) NOT NULL,
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_experience`
--

CREATE TABLE `jobseeker_experience` (
  `Id` int(11) NOT NULL,
  `JobSeekerId` int(11) NOT NULL,
  `Experience` varchar(20) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Organization` varchar(50) NOT NULL,
  `StartMonth` varchar(20) NOT NULL,
  `EndMonth` varchar(20) NOT NULL,
  `Salary` int(11) NOT NULL,
  `JobProfile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_project`
--

CREATE TABLE `jobseeker_project` (
  `Id` int(11) NOT NULL,
  `JobSeekerId` int(11) NOT NULL,
  `ProjectTitle` varchar(100) NOT NULL,
  `ProjectClient` varchar(50) NOT NULL,
  `ProjectStatus` varchar(20) NOT NULL,
  `StartMonth` varchar(20) NOT NULL,
  `EndMonth` varchar(20) NOT NULL,
  `ProjectDetail` text NOT NULL,
  `ProjectSkilles` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `Id` int(11) NOT NULL,
  `JobSeekerId` int(11) NOT NULL,
  `EmployeerId` int(11) NOT NULL,
  `JobCategory` varchar(30) NOT NULL,
  `ApplicationDate` date NOT NULL DEFAULT current_timestamp(),
  `ApplicationStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `employeer`
--
ALTER TABLE `employeer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `jobseeker_experience`
--
ALTER TABLE `jobseeker_experience`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `jobseeker_project`
--
ALTER TABLE `jobseeker_project`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeer`
--
ALTER TABLE `employeer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobseeker_experience`
--
ALTER TABLE `jobseeker_experience`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobseeker_project`
--
ALTER TABLE `jobseeker_project`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
