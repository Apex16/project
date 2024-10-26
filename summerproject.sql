-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2024 at 10:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `summerproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `start_date`, `end_date`, `image`, `teacher_id`, `price`) VALUES
(10, 'IELTS', 'This is a description for IELTS', '2024-05-23', '2024-06-23', 'ielts.png', 1, 2000),
(11, 'GRE', 'This is a description for GRE', '2024-05-30', '2024-06-30', 'gre.jpg', 2, 1000),
(12, 'PTE', 'This is a description for PTE', '2024-05-24', '2024-06-08', 'pte.png', 3, 3000),
(13, 'TOEFL', 'This is a description for TOEFL', '2024-05-24', '2024-06-08', 'toefl.jpg', 3, 9000),
(15, 'GMAT', 'This is description for GMAT', '2024-06-20', '2024-07-31', 'GMAT Logo.jpg', 6, 8000),
(16, 'SAT', 'This is a description for SAT', '2024-06-19', '2024-07-06', 'satlogo.jpg', 6, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `payment` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `student_id`, `course_id`, `payment`) VALUES
(18, 43, 10, 1),
(19, 46, 13, 1),
(20, 47, 12, 0),
(21, 48, 11, 1),
(22, 45, 15, 1),
(23, 45, 12, 1),
(24, 45, 10, 1),
(25, 45, 13, 1),
(26, 50, 15, 1),
(27, 51, 11, 1),
(28, 48, 10, 1),
(29, 54, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `phone`, `email`, `password`, `image`) VALUES
(43, 'Aarson', '9806035283', 'aarson9099@gmail.com', '$2y$10$70TG.ys9qrWjeLbiH/43eeX4XhX.XU8x1u7QUAGeZIZ9w.KmXepK6', '20.jpg'),
(44, 'Jenith', '9870756732', 'jenith@gmail.com', '$2y$10$DO8nR0NI/oYMB.ibcnBQVumn.QxI/pycud5UzCJECPCzkXMi5Zwpa', 'R.png'),
(45, 'Abinav', '9870603038', 'abinav@gmail.com', '$2y$10$R7AgipyEFO.qURKqReXAQurb8URHUC93NG0xBOAvmM.IOeIAi4SnO', 'hitler1.jpg'),
(46, 'Bishal', '9842637170', 'bishal@gmail.com', '$2y$10$xqLd3kYJBMa40logl.PmF.n89m3OKZtwqLSwmAIqWnL5Fkpiw7Sxi', '29.jpg'),
(47, 'Shikhar', '9806035281', 'shikhar@gmail.com', '$2y$10$BcVSIm6YFT6CgufbFIfIqOf4tQYF9PEP2KjZ23sz4Xi.3/4d9ODT2', '6.jpg'),
(48, 'Padam', '9806035289', 'padam@gmail.com', '$2y$10$CGvJVbiWDiWxVfJK9mO0reNtsA5GbWu3eyj0jJ8xIzssH/9Ke6lCC', '26.jpg'),
(49, 'Pratham', '9842697174', 'pratham@gmail.com', '$2y$10$PIDD2ASmBvzXM5Du44b3ge7DstAKUTuA0KcCp90TM29wOYleKhBni', '5.jpg'),
(50, 'bikram', '9860030232', 'bik@gmail.com', '$2y$10$SEd0ZYzhvCUkFxHu76PH.u3QGpljr2b4Vu9.9eI3EsumCcp8bGlEC', '7.jpg'),
(51, 'Sandhya', '987654301', 'sandhya@gmail.com', '$2y$10$v.CsWQWB.uHKOYqQOXCYIOUAPDoyowe/rCJYKgxMtVN1Y53qEZiMS', '26.jpg'),
(52, 'nayak', '9870772819', 'nayak@gmail.com', '$2y$10$vtf230kfhXp1U4oWeEhEhe59AR/UNa6s8UQn3i67OTaouFoWpDcEy', '5.jpg'),
(53, 'gadha', '9870492104', 'gadha@gmail.com', '85e7772cbfef9c08dcb2f116a00f0ce1', ''),
(54, 'Amanmg', '9834304308', 'aman@gmail.com', '$2y$10$5IeEJgaUB8hkOvK3F/4Uauw89ZWZOPam0276DfAdjMWhSJAFUJ4RC', 'wallpaperflare.com_wallpaper (5).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_approval`
--

CREATE TABLE `student_approval` (
  `student_id` int(10) NOT NULL,
  `status` enum('pending','approved','rejected','') NOT NULL,
  `approval_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_approval`
--

INSERT INTO `student_approval` (`student_id`, `status`, `approval_id`) VALUES
(48, 'rejected', 9),
(50, 'pending', 10),
(50, 'pending', 11);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `image` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `password`, `image`, `phone`) VALUES
(1, 'Shikha Sharma', 'teacher', '23.jpg', '9806035283'),
(2, 'Ram ', 'teacherA', '22.jpg', '9806035288'),
(3, 'Dheeraj Magar', 'teacherB', '21.jpg', '9806035283'),
(5, 'Bidur Dahal', 'teacherC', '20.jpg', '9806035294'),
(6, 'Aarson', 'Aarson', '20.jpg', '9806035289');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `student_id`, `course_id`, `amount`, `date`) VALUES
(2, 45, 10, 2000, '2024-06-18'),
(3, 45, 13, 9000, '2024-06-18'),
(4, 43, 10, 2000, '2024-06-18'),
(5, 46, 13, 9000, '2024-06-18'),
(6, 50, 15, 8000, '2024-06-18'),
(7, 51, 11, 1000, '2024-06-18'),
(8, 48, 11, 1000, '2024-06-18'),
(9, 48, 10, 2000, '2024-06-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_ibfk_1` (`teacher_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollment_ibfk_1` (`course_id`),
  ADD KEY `enrollment_ibfk_2` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_approval`
--
ALTER TABLE `student_approval`
  ADD PRIMARY KEY (`approval_id`),
  ADD KEY `student_approval_ibfk_1` (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student_approval`
--
ALTER TABLE `student_approval`
  MODIFY `approval_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_approval`
--
ALTER TABLE `student_approval`
  ADD CONSTRAINT `student_approval_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
