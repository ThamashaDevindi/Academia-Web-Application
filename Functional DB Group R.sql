-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 10:20 AM
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
-- Database: `academisis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` varchar(20) NOT NULL,
  `Ad_username` varchar(30) NOT NULL,
  `Ad_Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Id`, `Ad_username`, `Ad_Password`) VALUES
('ad1', 'fdo@gmail.com', '39ab3633689c322ef610689e3e42b318');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `Attendence_Id` int(20) NOT NULL,
  `Att_Status` varchar(20) NOT NULL,
  `Att_Date` date NOT NULL,
  `Student_Id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`Attendence_Id`, `Att_Status`, `Att_Date`, `Student_Id`) VALUES
(1, 'AB', '2023-07-05', 1),
(2, 'P', '2023-07-05', 2),
(3, 'AB', '2023-07-05', 3),
(4, 'P', '2023-07-05', 4),
(5, 'P', '2023-07-05', 5),
(6, 'P', '2023-07-05', 6),
(7, 'P', '2023-07-05', 7),
(8, 'MC', '2023-07-05', 8);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` varchar(20) NOT NULL,
  `Course_Name` varchar(30) NOT NULL,
  `Course_Credit` int(5) NOT NULL,
  `Department_Id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Course_Name`, `Course_Credit`, `Department_Id`) VALUES
('c1', 'Accounting', 3, 'd1'),
('c2', 'Economics', 2, 'd1'),
('c3', 'Electronics', 3, 'd2'),
('c4', 'Basic Sciences', 3, 'd2'),
('c5', 'Software Development', 3, 'd3'),
('c6', 'Mathematics', 3, 'd3'),
('c7', 'Art', 3, 'd4'),
('c8', 'English', 2, 'd4');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_Id` varchar(20) NOT NULL,
  `D_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_Id`, `D_Name`) VALUES
('d1', 'Management'),
('d2', 'Engineering Technology'),
('d3', 'Computer Sceince & Informatics'),
('d4', 'Visual Arts');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_Id` int(20) NOT NULL,
  `Event_Name` varchar(30) NOT NULL,
  `Held_Date` date NOT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_Id`, `Event_Name`, `Held_Date`, `Description`) VALUES
(1, 'Galena', '2023-09-10', 'Most popular event'),
(2, 'ENM Trophy', '2023-10-15', 'Cricket tournament'),
(3, 'Galena', '2023-08-26', 'most interesting');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `Grade_Id` int(20) NOT NULL,
  `Marks` int(10) NOT NULL,
  `GPA` float(4,2) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Student_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`Grade_Id`, `Marks`, `GPA`, `Course_ID`, `Student_ID`) VALUES
(1, 68, 3.22, 'c1', 1),
(2, 68, 3.22, 'c2', 1),
(3, 68, 3.22, 'c1', 2),
(4, 68, 3.22, 'c2', 2),
(5, 68, 3.22, 'c3', 3),
(6, 68, 3.22, 'c4', 3),
(7, 68, 3.22, 'c3', 4),
(8, 68, 3.22, 'c4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `Lecturer_Id` int(20) NOT NULL,
  `L_First_name` varchar(30) NOT NULL,
  `L_Last_name` varchar(30) NOT NULL,
  `L_User_name` varchar(30) NOT NULL,
  `L_password` varchar(150) DEFAULT NULL,
  `L_Tele_phone` varchar(30) NOT NULL,
  `L_Gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`Lecturer_Id`, `L_First_name`, `L_Last_name`, `L_User_name`, `L_password`, `L_Tele_phone`, `L_Gender`) VALUES
(1, 'Ravindu', 'Munasinghe', 'ravindu@gmail.com', '1790f19d6edb09a7a94870e99c7b0689', '071 6585496', 'male'),
(2, 'Udaya', 'Vithanage', 'udaya@gmail.com', '0b8f76569f7cb605e836a83681a12e4e', '071 2884639', 'male'),
(3, 'Yamuna', 'Dissanayaka', 'yamuna@gmail.com', 'bc972d641eda2101bea71e9a9789a983', '076 7553951', 'female'),
(4, 'Pramila', 'Withanarachchi', 'pramila@gmail.com', '70522c76a4bd92406124dc2d299dda9e', '078 1245687', 'female'),
(5, 'Indika', 'Wijesinghe', 'indika@gmail.com', '4681c16c08269524fc1b1d907b70ae91', '071 4556987', 'male'),
(6, 'Samadhi', 'Kumarasinghe', 'samadhi@gmail.com', 'c20ad12fda9467bafee326aa0dd4da22', '076 1221547', 'female'),
(7, 'Iresha', 'Jayawardhana', 'iresha@gmail.com', '70ff2648521f2f745a7a536d6466b4e0', '072 4545666', 'female'),
(8, 'Pahan', 'Bandara', 'pahan@gmail.com', '0a5ec4821dbd05f875fce4e3f838d1b2', '071 3636333', 'male'),
(9, 'fathima', 'shihara', 'shihara@gmail.com', '1c74a3ce39feab6041fc938e55a481e1', '0776578768', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(20) NOT NULL,
  `Student_First_Name` varchar(30) NOT NULL,
  `Student_Last_Name` varchar(30) NOT NULL,
  `S_Gender` varchar(20) NOT NULL,
  `S_Address` varchar(255) NOT NULL,
  `S_username` varchar(30) NOT NULL,
  `S_Password` varchar(150) DEFAULT NULL,
  `S_DOB` date NOT NULL,
  `S_Tele_Phone` varchar(11) NOT NULL,
  `S_Talent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Student_First_Name`, `Student_Last_Name`, `S_Gender`, `S_Address`, `S_username`, `S_Password`, `S_DOB`, `S_Tele_Phone`, `S_Talent`) VALUES
(1, 'Sithara', 'Vithana', 'female', 'New Town, Anuradhapura.', 'sithara@gmail.com', '97e04bd8df867d480059f262486d58c1', '1997-04-30', '071 2548693', 'Dancing'),
(2, 'Thamasha', 'Munasinghe', 'female', '355,Hospital Road, Kurunagala.', 'thamasha@gmail.com', '980b3801ef93b104f81058402b5c5c45', '2000-03-30', '071 3526741', 'Art');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Id` INT AUTO_INCREMENT PRIMARY KEY,
  `T_Start_Time` TIME NOT NULL,
  `T_End_Time` TIME NOT NULL,
  `Monday` VARCHAR(20) NOT NULL,
  `Tuesday` VARCHAR(20) NOT NULL,
  `Wednesday` VARCHAR(20) NOT NULL,
  `Thursday` VARCHAR(20) NOT NULL,
  `Friday` VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`T_Start_Time`, `T_End_Time`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`) VALUES
('08:00:00', '10:00:00', 'c1', 'c2', 'c3', 'c4', 'c5'),
('08:00:00', '10:00:00', 'c2', 'c1', 'c7', 'c6', 'c7'),
('08:00:00', '10:00:00', 'c3', 'c3', 'c8', 'c2', 'c8'),
('08:00:00', '10:00:00', 'c4', 'c4', 'c1', 'c7', 'c4'),
('08:00:00', '10:00:00', 'c5', 'c5', 'c2', 'c8', 'c6'),
('08:00:00', '10:00:00', 'c6', 'c6', 'c5', 'c1', 'c2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_Id`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`Attendence_Id`),
  ADD KEY `Student_Id` (`Student_Id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Department_Id` (`Department_Id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_Id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_Id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`Grade_Id`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`Lecturer_Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Time_TableID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `Attendence_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Event_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `Grade_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `Lecturer_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendence`
--
ALTER TABLE `attendence`
  ADD CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Department_Id`) REFERENCES `department` (`Department_Id`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
