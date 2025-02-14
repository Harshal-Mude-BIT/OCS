-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 07:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocs`
--

-- --------------------------------------------------------

--
-- Table structure for table `incharges`
--

CREATE TABLE `incharges` (
  `ID` decimal(2,0) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Name` varchar(60) NOT NULL,
  `Department` enum('Fine Department','Computer Center','Library','Sports','Training & Placement','Scholarship','Account','First Year Department','Computer Engineering','Electrical Engineering','Civil Engineering','Mechanical Engineering') NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incharges`
--

INSERT INTO `incharges` (`ID`, `Username`, `Password`, `Name`, `Department`, `image`) VALUES
(1, 'FY_HOD', 'BIT_ADMIN_FY', 'Dr. Vivek Bhusari', 'First Year Department', '1Dr. Vivek Bhusari29452.png'),
(2, 'COMP_HOD', 'BIT_ADMIN_COMP', 'Prof. Shetal Kale', 'Computer Engineering', '2Prof. Shetal Kale16969.png'),
(3, 'MECH_HOD', 'BIT_ADMIN_MECH', 'Dr. Dipak Bhope', 'Mechanical Engineering', '3Dr. Dipak Bhope81497.png'),
(4, 'ELC_HOD', 'BIT_ADMIN_ELE', 'Dr. Harshit Dalvi', 'Electrical Engineering', '4Dr. Harshit Dalvi87008.png'),
(5, 'CVL_HOD', 'BIT_ADMIN_CVL', 'Dr. Sanjay Mahajan', 'Civil Engineering', '5Dr. Sanjay Mahajan17199.png'),
(6, 'FINE_DEPT', 'BIT_FINE_ADMIN', 'Akshay Saraf', 'Fine Department', '6Akshay Saraf88945.png'),
(7, 'CC_HOD', 'BIT_ADMIN_CC', 'Pankaj Samudre', 'Computer Center', ''),
(8, 'LIB_HOD', 'BIT_ADMIN_LIB', 'Chetan Tandon', 'Library', ''),
(9, 'SPORT', 'BIT_ADMIN_SPORT', 'Dr. Nilesh Ashtankar', 'Sports', '9Dr. Nilesh Ashtankar45538.png'),
(10, 'TNP', 'BIT_ADMIN_TNP', 'Dr. Kantilal Joshi', 'Training & Placement', ''),
(11, 'SCHR_DEPT', 'BIT_ADMIN_SCHR', 'Sachin Kakde', 'Scholarship', ''),
(12, 'ACCNT_DEPT', 'BIT_ADMIN_ACC', 'Parag Kombe', 'Account', '');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `PRN` varchar(13) NOT NULL,
  `name` varchar(60) NOT NULL,
  `Year_of_study` decimal(1,0) NOT NULL,
  `Branch` enum('Computer Engineering','Electrical Engineering','Civil Engineering','Mechanical Engineering') NOT NULL,
  `Section` enum('A','B','') NOT NULL,
  `Year_of_grad` year(4) NOT NULL,
  `HOD_status` tinyint(1) DEFAULT NULL,
  `fine_status` tinyint(1) DEFAULT NULL,
  `CC_status` tinyint(1) DEFAULT NULL,
  `Library_HOD_status` tinyint(1) DEFAULT NULL,
  `Sports_status` tinyint(1) DEFAULT NULL,
  `TNP_status` tinyint(1) DEFAULT NULL,
  `Scholarship_status` tinyint(1) DEFAULT NULL,
  `Accountant_status` tinyint(1) DEFAULT NULL,
  `HOD_reject` text NOT NULL,
  `Fine_reject` text NOT NULL,
  `CC_reject` text NOT NULL,
  `Library_reject` text NOT NULL,
  `Sports_reject` text NOT NULL,
  `T&P_reject` text NOT NULL,
  `Scholarship_reject` text NOT NULL,
  `Account_reject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`PRN`, `name`, `Year_of_study`, `Branch`, `Section`, `Year_of_grad`, `HOD_status`, `fine_status`, `CC_status`, `Library_HOD_status`, `Sports_status`, `TNP_status`, `Scholarship_status`, `Accountant_status`, `HOD_reject`, `Fine_reject`, `CC_reject`, `Library_reject`, `Sports_reject`, `T&P_reject`, `Scholarship_reject`, `Account_reject`) VALUES
('0123456789012', 'Anika Singh', 0, 'Electrical Engineering', 'B', '2032', 1, 1, 0, 1, 1, 1, 1, 1, '', '', 'you have not submittted project', '', '', '', '', 'undefined'),
('1122334455667', 'Aryan Kapoor', 0, 'Civil Engineering', 'A', '2033', NULL, 1, 0, 1, 1, 1, 1, NULL, 'pede kab laoge', '', '', '', '', '', '', ''),
('1234567890123', 'Aarav Patel', 0, 'Computer Engineering', 'A', '2023', 1, 1, 1, 1, 1, 1, 1, 1, 'pata nahi\n', '', '', '', '', '', '', 'undefined'),
('2146491245083', 'Chaitanya Ashish Rawat', 0, 'Computer Engineering', 'B', '2025', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'trial\n', '1', 'CC reject', 'jl', 'jnoi', 'ojipijp', 'olpojp;lj', 'nonklnin'),
('2146491245094', 'Harshal Maruti Mude', 0, 'Civil Engineering', 'B', '0000', NULL, 1, 0, 0, 0, 0, 0, NULL, 'tumne abb tak report nhi di hai', '', '', '', '', '', '', ''),
('2146491245099', 'Mrudula  Ravindra Pangul', 3, 'Computer Engineering', 'B', '2025', 0, 0, 0, 0, 0, 0, 1, NULL, 'notv s', '', '', '', '', '', '', ''),
('2146491248088', 'Hanumanji Pawan Putra', 3, 'Computer Engineering', 'B', '2025', NULL, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', ''),
('2233445566778', 'Kavya Patel', 0, 'Mechanical Engineering', 'B', '2025', NULL, 1, 0, 1, 0, 1, 1, NULL, '', '', '', '', '', '', '', ''),
('2246491245008', 'tiger nitin shroff', 3, 'Civil Engineering', 'A', '2024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', ''),
('2345678901234', 'Diya Singh', 0, 'Electrical Engineering', 'B', '2024', NULL, 1, 0, 1, 0, 1, 1, NULL, '', '', '', '', '', '', '', ''),
('314649245083', 'Mahendra  Singh Dhoni', 1, 'Mechanical Engineering', '', '2022', NULL, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '\r\n', ''),
('3344556677889', 'Aaradhya Sharma', 0, 'Computer Engineering', 'A', '2026', NULL, 0, 0, 0, 1, 0, 1, NULL, '', '', '', '', '', '', '', ''),
('3456789012345', 'Rohan Sharma', 0, 'Civil Engineering', 'A', '2025', NULL, 0, 1, 0, 1, 0, 1, NULL, 'd', '', '', '', '', '', '', ''),
('4455667788990', 'Vihaan Verma', 0, 'Electrical Engineering', 'B', '2027', NULL, 1, 0, 1, 0, 1, 0, NULL, '', '', '', '', '', '', '', ''),
('4567890123456', 'Sneha Gupta', 0, 'Mechanical Engineering', 'B', '2026', NULL, 1, 0, 1, 0, 1, 1, NULL, '', '', '', '', '', '', '', ''),
('5566778899001', 'Aanya Reddy', 0, 'Civil Engineering', 'A', '2028', NULL, 0, 1, 0, 1, 0, 1, NULL, 'z', '', '', '', '', '', '', ''),
('6677889900112', 'Advait Joshi', 0, 'Mechanical Engineering', 'B', '2029', NULL, 1, 0, 1, 0, 1, 0, NULL, '', '', '', '', '', '', '', ''),
('6789012345678', 'Ananya Desai', 0, 'Electrical Engineering', 'B', '2028', NULL, 1, 0, 1, 0, 1, 0, NULL, '', '', '', '', '', '', '', ''),
('7788990011223', 'Anvi Kumar', 0, 'Computer Engineering', 'A', '2030', NULL, 0, 0, 0, 1, 0, 1, NULL, '', '', '', '', '', '', '', ''),
('7890123456789', 'Aditya Reddy', 0, 'Civil Engineering', 'A', '2029', NULL, 0, 1, 0, 1, 0, 1, NULL, 'a', '', '', '', '', '', '', ''),
('7894561230032', 'Anita Ashish Rawat', 0, 'Computer Engineering', 'A', '1975', NULL, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', ''),
('8899001122334', 'Arjun Singh', 0, 'Electrical Engineering', 'B', '2031', NULL, 1, 0, 1, 0, 1, 0, NULL, '', '', '', '', '', '', '', ''),
('8901234567890', 'Khushi Joshi', 0, 'Mechanical Engineering', 'B', '2030', NULL, 1, 0, 1, 0, 1, 0, NULL, '', '', '', '', '', '', '', ''),
('9012345678901', 'Vivaan Kumar', 0, 'Computer Engineering', 'A', '2031', NULL, 0, 1, 0, 1, 0, 1, NULL, '', '', '', '', '', '', '', ''),
('9480052855846', 'Piyush Manoj Raut', 1, 'Computer Engineering', 'B', '2020', NULL, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', ''),
('9879798745669', 'Avantika  dwij  Narange', 1, 'Computer Engineering', 'A', '2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Firstname` varchar(20) NOT NULL,
  `Middlename` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `college_email` varchar(50) NOT NULL,
  `mobile` decimal(10,0) NOT NULL,
  `Year_of_study` decimal(1,0) NOT NULL,
  `Branch` enum('Computer Engineering','Electrical Engineering','Civil Engineering','Mechanical Engineering') NOT NULL,
  `Section` enum('A','B','') NOT NULL,
  `Year_of_grad` year(4) NOT NULL,
  `PRN` varchar(13) NOT NULL,
  `Enrollment_no` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `POB` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `L-Clg` varchar(200) NOT NULL,
  `YOAdm` year(4) NOT NULL,
  `religion` varchar(40) NOT NULL,
  `category` enum('SC','ST','DTNT','VJNT','OPEN','OBC','SBC') NOT NULL,
  `desc` varchar(2000) DEFAULT NULL,
  `CauMonStatus` enum('Yes','No') NOT NULL,
  `ProfilePhoto` varchar(1000) DEFAULT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Firstname`, `Middlename`, `Lastname`, `college_email`, `mobile`, `Year_of_study`, `Branch`, `Section`, `Year_of_grad`, `PRN`, `Enrollment_no`, `DOB`, `POB`, `Nationality`, `L-Clg`, `YOAdm`, `religion`, `category`, `desc`, `CauMonStatus`, `ProfilePhoto`, `TIMESTAMP`) VALUES
('Anika', 'Singh', 'Patel', 'anika.patel@example.com', 8876543210, 2, 'Electrical Engineering', 'B', '2023', '0123456789012', 'EN01234567', '1999-03-15', 'Delhi', 'Indian', 'OPQ College', '2019', 'Hindu', 'SC', 'Tech enthusiast', 'Yes', '', '2023-12-17 18:35:34'),
('Aryan', 'Kapoor', 'Kumar', 'aryan.kumar@example.com', 8765432129, 3, 'Civil Engineering', 'A', '2022', '1122334455667', 'EN11223344', '2000-08-20', 'Pune', 'Indian', 'XYZ College', '2018', 'Christian', 'ST', 'Aspiring entrepreneur', 'No', '', '2023-12-17 18:34:45'),
('Aarav', 'Kumar', 'Patel', 'aarav.patel@example.com', 9876543210, 1, 'Computer Engineering', 'A', '2024', '1234567890123', 'EN12345678', '1998-05-10', 'Mumbai', 'Indian', 'XYZ College', '2020', 'Hindu', 'OPEN', 'Good student', 'No', '', '2023-11-28 15:17:53'),
('Chaitanya', 'Ashish', 'Rawat', 'cheturawat@gmail.com', 9405528955, 3, 'Computer Engineering', 'B', '2025', '2146491245083', 'EN65894287', '2023-11-22', 'Wardha', 'Indian', 'Bajaj College of Science', '2021', 'Hindu', 'OPEN', 'graduated', 'Yes', '214649124508380357Computer EngineeringB2025WhatsApp Image 2023-11-28 at 4.51.23 PM.jpeg', '2024-02-11 11:49:19'),
('Harshal', 'Maruti', 'Mude', 'co.2021.hmmude@bitwardha.ac.in', 8999756849, 4, 'Civil Engineering', 'B', '0000', '2146491245094', 'EN65894239', '2023-11-24', 'Wardha', 'Indian', 'Amity University Delhi', '2021', 'Hindu', 'ST', '', 'Yes', '2146491245094Civil EngineeringB.jpeg', '2023-12-17 18:41:32'),
('Mrudula ', 'Ravindra', 'Pangul', 'co.2021.mrpangul@bitwardha.ac.in', 9518718068, 3, 'Computer Engineering', 'B', '2025', '2146491245099', 'EN21214517', '2003-07-15', 'Wani', 'Indian', 'Janta Mahavidya Wardha', '2021', 'Hindu', 'OBC', 'Graduated', 'Yes', '', '2024-02-15 10:59:01'),
('Hanumanji', 'Pawan', 'Putra', 'JaiShreeRam@bitwardha.ac.in', 9172953751, 3, 'Computer Engineering', 'B', '2025', '2146491248088', 'EN65894328', '2024-03-20', 'Ayodhya', 'Indian', 'NO College', '0000', 'Hindu', 'OPEN', 'testing', 'No', '214649124808846871Computer EngineeringB2025student.png', '2024-03-07 21:05:56'),
('Kavya', 'Patel', 'Verma', 'kavya.verma@example.com', 7654321198, 4, 'Mechanical Engineering', 'B', '2021', '2233445566778', 'EN22334455', '2001-01-05', 'Jaipur', 'Indian', 'ABC College', '2017', 'Muslim', 'DTNT', 'Passionate about robotics', 'Yes', '', '2023-12-17 18:36:27'),
('tiger', 'nitin', 'shroff', 'co.2021.hmmudshroff@bitwardha.ac.in', 9999999999, 3, 'Civil Engineering', 'A', '2024', '2246491245008', 'EN1234', '2024-02-28', 'Goa', 'Indian', 'shantibai college of science', '0000', 'Sikh', 'SC', 'harrased', 'Yes', '224649124500896923Civil EngineeringA2024croopPsPhoto.jpg', '2024-03-28 18:24:37'),
('Diya', 'Singh', 'Sharma', 'diya.sharma@example.com', 8765432109, 2, 'Electrical Engineering', 'B', '2023', '2345678901234', 'EN23456789', '1999-02-15', 'Delhi', 'Indian', 'ABC College', '2019', 'Hindu', 'SC', 'Hardworking', 'Yes', '', '2023-11-28 15:17:53'),
('Mahendra ', 'Singh', 'Dhoni', 'msdhoni@bitwardha.ac.in', 8999531985, 1, 'Mechanical Engineering', '', '2022', '314649245083', 'EN1', '2024-01-30', 'Wardha', 'Indian', 'shantibai college of science', '2026', 'Hindu', 'OPEN', '', 'Yes', '31464924508322810Mechanical Engineering2022ms.jpg', '2024-01-30 03:46:45'),
('Aaradhya', 'Sharma', 'Singh', 'aaradhya.singh@example.com', 6543210887, 1, 'Computer Engineering', 'A', '2024', '3344556677889', 'EN33445566', '1998-12-30', 'Kolkata', 'Indian', 'PQR College', '2020', 'Sikh', 'VJNT', 'Music enthusiast', 'No', '', '2023-12-17 18:40:18'),
('Rohan', 'Kumar', 'Sharma', 'rohan.sharma@example.com', 7654321098, 3, 'Civil Engineering', 'A', '2022', '3456789012345', 'EN34567890', '2000-07-20', 'Pune', 'Indian', 'PQR College', '2018', 'Christian', 'ST', 'Active participant', 'No', '', '2023-11-28 15:17:53'),
('Vihaan', 'Verma', 'Sharma', 'vihaan.sharma@example.com', 5432109875, 2, 'Electrical Engineering', 'B', '2023', '4455667788990', 'EN44556677', '1999-08-18', 'Bangalore', 'Indian', 'LMN College', '2019', 'Hindu', 'OPEN', 'Nature photographer', 'Yes', '', '2023-12-17 18:39:40'),
('Sneha', 'Gupta', 'Verma', 'sneha.verma@example.com', 6543210987, 4, 'Mechanical Engineering', 'B', '2021', '4567890123456', 'EN45678901', '2001-01-05', 'Jaipur', 'Indian', 'LMN College', '2017', 'Muslim', 'DTNT', 'Creative thinker', 'Yes', '', '2023-11-28 15:17:53'),
('Aanya', 'Reddy', 'Kumar', 'aanya.kumar@example.com', 4321098764, 3, 'Civil Engineering', 'A', '2022', '5566778899001', 'EN55667788', '2000-03-25', 'Chennai', 'Indian', 'OPQ College', '2018', 'Christian', 'OBC', 'Athlete', 'No', '', '2023-12-17 18:36:58'),
('Advait', 'Joshi', 'Patel', 'advait.patel@example.com', 3210987653, 4, 'Mechanical Engineering', 'B', '2021', '6677889900112', 'EN66778899', '2001-10-12', 'Hyderabad', 'Indian', 'XYZ College', '2017', 'Muslim', 'SBC', 'Chess player', 'Yes', '', '2023-12-17 18:39:09'),
('Ananya', 'Desai', 'Patel', 'ananya.patel@example.com', 4321098765, 2, 'Electrical Engineering', 'B', '2023', '6789012345678', 'EN67890123', '1999-08-18', 'Bangalore', 'Indian', 'XYZ College', '2019', 'Hindu', 'OPEN', 'Artistic soul', 'Yes', '', '2023-11-28 15:17:53'),
('Anvi', 'Kumar', 'Sharma', 'anvi.sharma@example.com', 2109876545, 1, 'Computer Engineering', 'A', '2024', '7788990011223', 'EN77889900', '1998-06-08', 'Mumbai', 'Indian', 'PQR College', '2020', 'Hindu', 'OPEN', 'Debater', 'No', '', '2023-12-17 18:38:36'),
('Aditya', 'Reddy', 'Kumar', 'aditya.kumar@example.com', 3210987654, 3, 'Civil Engineering', 'A', '2022', '7890123456789', 'EN78901234', '2000-03-25', 'Chennai', 'Indian', 'ABC College', '2018', 'Christian', 'OBC', 'Tech geek', 'No', '', '2023-11-28 15:17:53'),
('Anita', 'Ashish', 'Rawat', 'anitarawat@gmail.com', 9403555600, 3, 'Computer Engineering', 'A', '0000', '7894561230032', 'EN65894247', '2023-11-13', 'Wardha', 'Indian', 'Amity University Delhi', '2021', 'Sikh', 'OPEN', '', 'Yes', 'cr49835anita.jpeg', '2023-12-17 18:41:41'),
('Arjun', 'Singh', 'Verma', 'arjun.verma@example.com', 1098765431, 2, 'Electrical Engineering', 'B', '2023', '8899001122334', 'EN88990011', '1999-03-15', 'Delhi', 'Indian', 'LMN College', '2019', 'Hindu', 'SC', 'Chess enthusiast', 'Yes', '', '2023-12-17 18:37:30'),
('Khushi', 'Joshi', 'Sharma', 'khushi.sharma@example.com', 2109876543, 4, 'Mechanical Engineering', 'B', '2021', '8901234567890', 'EN89012345', '2001-10-12', 'Hyderabad', 'Indian', 'PQR College', '2017', 'Muslim', 'SBC', 'Bookworm', 'Yes', '', '2023-11-28 15:17:53'),
('Vivaan', 'Kumar', 'Verma', 'vivaan.verma@example.com', 1098765432, 1, 'Computer Engineering', 'A', '2024', '9012345678901', 'EN90123456', '1998-06-08', 'Mumbai', 'Indian', 'LMN College', '2020', 'Hindu', 'OPEN', 'Nature lover', 'No', '', '2023-11-28 15:17:53'),
('Piyush', 'Manoj', 'Raut', 'co.2021.pmraut@bitwardha.ac.in', 9408895555, 1, 'Computer Engineering', 'B', '2020', '9480052855846', 'EN89789876', '2024-03-05', 'wardha', 'Indian', 'abc college', '2021', 'Buddhist', 'SC', 'Graduated', 'Yes', '948005285584629427Computer EngineeringB202031464924508322810Mechanical Engineering2022ms.jpg', '2024-03-27 12:10:11'),
('Avantika ', 'dwij ', 'Narange', 'co.2021.adnaranje@bitwardha.ac.in', 9897198971, 1, 'Computer Engineering', 'A', '2025', '9879798745669', 'EN78945698', '2024-03-07', 'Wardha', 'Indian', 'Bajaj College of Science', '2021', 'Hindu', 'OBC', 'Graduated', 'Yes', '987979874566950850Computer EngineeringA2025ethics.png', '2024-03-28 18:26:47');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `insert_into_status` AFTER INSERT ON `student` FOR EACH ROW BEGIN
        INSERT INTO status (PRN, name,Year_of_study, Branch, Year_of_grad, Section)
        VALUES (NEW.PRN, CONCAT(NEW.Firstname,' ',NEW.Middlename,' ', NEW.Lastname),NEW.Year_of_study, NEW.Branch, NEW.Year_of_grad, NEW.Section);
    END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incharges`
--
ALTER TABLE `incharges`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`PRN`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`PRN`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `college_email` (`college_email`),
  ADD UNIQUE KEY `Enrollment_no` (`Enrollment_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`PRN`) REFERENCES `student` (`PRN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
