-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 02:38 AM
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
-- Database: `quiz_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`id`, `question`, `answer`, `code`) VALUES
(60, 'What is the color of the sky on a clear day', 'blue', '675484de3b517'),
(61, 'What is the first letter of the English alphabet?', 'a', '675484de3b517'),
(62, 'How many days are there in a week?', '7', '675484de3b517'),
(63, 'What is the opposite of hot?', 'Cold', '675485540f498'),
(64, 'What do you call a baby cat?', 'kitten', '675485540f498'),
(65, 'Which fruit is known as the \"king of fruits\"?', 'Mango', '6754857eae2d7'),
(66, '2 + 2', '4', '675485ab444c3'),
(67, '1 + 1', '2', '675485ab444c3'),
(68, '3 + 3', '6', '675485ab444c3'),
(69, '1 + 3', '4', '675485c47e95b'),
(70, '4 + 4', '8', '675485c47e95b'),
(71, '1 + 1', '2', '675485c47e95b'),
(72, '1 + 1', '2', '6754862ecb5cd'),
(73, '11 + 3', '14', '6754862ecb5cd'),
(74, '1 + 3', '4', '675486635a439'),
(75, '1 + 3', '4', '67548670cf32d'),
(76, '2 + 2', '4', '67548670cf32d'),
(77, '2 + 2', '4', '67548ad23d2b0'),
(78, '9 + 1', '10', '67548ad23d2b0'),
(79, '10 + 3', '13', '67548ad23d2b0'),
(80, 'monday tagalog?', 'lunes', '67548ad23d2b0'),
(81, '1 + 1', '2', '67548ad23d2b0');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `quiz_name` varchar(255) NOT NULL,
  `quiz_code` varchar(50) NOT NULL,
  `quiz_items` int(11) NOT NULL,
  `quiz_subject` varchar(255) NOT NULL,
  `quiz_deadline` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `quiz_name`, `quiz_code`, `quiz_items`, `quiz_subject`, `quiz_deadline`) VALUES
(37, 'quiz 1', '675484de3b517', 3, 'integrative programming', '2024-12-16'),
(38, 'quiz 2', '675485540f498', 2, 'integrative programming', '2024-12-10'),
(39, 'quiz 1', '6754857eae2d7', 1, 'web system', '2024-12-11'),
(40, 'quiz 2', '675485ab444c3', 3, 'web system', '2024-12-18'),
(41, 'quiz 1', '675485c47e95b', 3, 'info management', '2024-12-26'),
(42, 'quiz 3', '6754862ecb5cd', 2, 'web system', '2024-12-18'),
(43, 'quiz 4', '675486635a439', 1, 'info management', '2024-12-13'),
(44, 'quiz 2', '67548670cf32d', 2, 'info management', '2024-12-11'),
(45, 'quiz 10', '67548ad23d2b0', 5, 'info management', '2024-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_record`
--

CREATE TABLE `quiz_record` (
  `id` int(11) NOT NULL,
  `quiz_score` varchar(50) NOT NULL,
  `quiz_code` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `quiz_subject` varchar(100) NOT NULL,
  `quiz_name` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quiz_record`
--

INSERT INTO `quiz_record` (`id`, `quiz_score`, `quiz_code`, `student_id`, `student_name`, `quiz_subject`, `quiz_name`, `section`) VALUES
(10, '3/3', '675485c47e95b', '2023-0003 ', 'josh velayo', 'info management', 'quiz 1', '21m3'),
(11, '1/1', '675486635a439', '2023-0003 ', 'josh velayo', 'info management', 'quiz 4', '21m3'),
(12, '1/2', '67548670cf32d', '2023-0003 ', 'josh velayo', 'info management', 'quiz 2', '21m3'),
(13, '0/1', '6754857eae2d7', '2023-0003 ', 'josh velayo', 'web system', 'quiz 1', '21m3'),
(14, '2/3', '675485ab444c3', '2023-0003 ', 'josh velayo', 'web system', 'quiz 2', '21m3'),
(15, '1/3', '675485c47e95b', '2023-0004 ', 'marco abela', 'info management', 'quiz 1', '21m1'),
(16, '0/1', '675486635a439', '2023-0004 ', 'marco abela', 'info management', 'quiz 4', '21m1'),
(17, '0/2', '67548670cf32d', '2023-0004 ', 'marco abela', 'info management', 'quiz 2', '21m1'),
(18, '0/2', '675485540f498', '2023-0004 ', 'marco abela', 'integrative programming', 'quiz 2', '21m1'),
(19, '0/3', '675484de3b517', '2023-0004 ', 'marco abela', 'integrative programming', 'quiz 1', '21m1'),
(20, '0/1', '6754857eae2d7', '2023-0004 ', 'marco abela', 'web system', 'quiz 1', '21m1'),
(21, '1/3', '675485c47e95b', '2023-0005 ', 'rap baranda', 'info management', 'quiz 1', '21m3'),
(22, '0/1', '675486635a439', '2023-0005 ', 'rap baranda', 'info management', 'quiz 4', '21m3'),
(23, '0/3', '675484de3b517', '2023-0005 ', 'rap baranda', 'integrative programming', 'quiz 1', '21m3'),
(24, '0/2', '675485540f498', '2023-0005 ', 'rap baranda', 'integrative programming', 'quiz 2', '21m3'),
(25, '0/1', '6754857eae2d7', '2023-0005 ', 'rap baranda', 'web system', 'quiz 1', '21m3'),
(26, '0/1', '675486635a439', '2023-0006 ', 'aj abuda', 'info management', 'quiz 4', '21m2'),
(27, '1/3', '675485c47e95b', '2023-0006 ', 'aj abuda', 'info management', 'quiz 1', '21m2'),
(28, '0/2', '675485540f498', '2023-0006 ', 'aj abuda', 'integrative programming', 'quiz 2', '21m2'),
(29, '1/3', '675485ab444c3', '2023-0006 ', 'aj abuda', 'web system', 'quiz 2', '21m2'),
(30, '0/1', '6754857eae2d7', '2023-0006 ', 'aj abuda', 'web system', 'quiz 1', '21m2'),
(31, '1/2', '6754862ecb5cd', '2023-0007 ', 'mycee diaz', 'web system', 'quiz 3', '21m1'),
(32, '0/3', '675485ab444c3', '2023-0007 ', 'mycee diaz', 'web system', 'quiz 2', '21m1'),
(33, '0/1', '6754857eae2d7', '2023-0007 ', 'mycee diaz', 'web system', 'quiz 1', '21m1'),
(34, '1/3', '675484de3b517', '2023-0007 ', 'mycee diaz', 'integrative programming', 'quiz 1', '21m1'),
(35, '0/2', '67548670cf32d', '2023-0007 ', 'mycee diaz', 'info management', 'quiz 2', '21m1'),
(36, '2/3', '675485c47e95b', '2023-0002 ', 'ian cortaga', 'info management', 'quiz 1', '21m1'),
(37, '1/1', '675486635a439', '2023-0002 ', 'ian cortaga', 'info management', 'quiz 4', '21m1'),
(38, '2/2', '67548670cf32d', '2023-0002 ', 'ian cortaga', 'info management', 'quiz 2', '21m1'),
(39, '3/3', '675484de3b517', '2023-0002 ', 'ian cortaga', 'integrative programming', 'quiz 1', '21m1'),
(40, '1/2', '675485540f498', '2023-0002 ', 'ian cortaga', 'integrative programming', 'quiz 2', '21m1'),
(41, '0/1', '6754857eae2d7', '2023-0002 ', 'ian cortaga', 'web system', 'quiz 1', '21m1'),
(42, '0/3', '675485ab444c3', '2023-0002 ', 'ian cortaga', 'web system', 'quiz 2', '21m1'),
(43, '0/2', '6754862ecb5cd', '2023-0002 ', 'ian cortaga', 'web system', 'quiz 3', '21m1'),
(44, '2/3', '675485c47e95b', '2023-0001 ', 'krelian quimson', 'info management', 'quiz 1', '21m2'),
(45, '1/1', '675486635a439', '2023-0001 ', 'krelian quimson', 'info management', 'quiz 4', '21m2'),
(46, '2/3', '675484de3b517', '2023-0009 ', 'cass', 'integrative programming', 'quiz 1', '21m2'),
(47, '3/3', '675485c47e95b', '2023-0009 ', 'cass', 'info management', 'quiz 1', '21m2'),
(48, '1/1', '675486635a439', '2023-0009 ', 'cass', 'info management', 'quiz 4', '21m2'),
(49, '0/2', '67548670cf32d', '2023-0001 ', 'krelian quimson', 'info management', 'quiz 2', '21m2'),
(50, '5/5', '67548ad23d2b0', '2023-0001 ', 'krelian quimson', 'info management', 'quiz 10', '21m2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_section` varchar(50) NOT NULL,
  `student_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `student_name`, `student_section`, `student_password`) VALUES
(6, '2023-0001', 'krelian quimson', '21m2', '123'),
(7, '2023-0002', 'ian cortaga', '21m1', '123'),
(8, '2023-0003', 'josh velayo', '21m3', '123'),
(9, '2023-0004', 'marco abela', '21m1', '123'),
(10, '2023-0005', 'rap baranda', '21m3', '123'),
(11, '2023-0006', 'aj abuda', '21m2', '123'),
(12, '2023-0007', 'mycee diaz', '21m1', '123'),
(13, '2023-0009', 'cass', '21m2', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_record`
--
ALTER TABLE `quiz_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `quiz_record`
--
ALTER TABLE `quiz_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
