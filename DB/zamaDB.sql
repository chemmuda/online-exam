-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2020 at 09:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zamaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`) VALUES
(1, '9275', 'Department was added successfully'),
(2, '1185', 'Duplicate record found'),
(3, '5426', 'Could not add department'),
(4, '7823', 'Settings applied successfully'),
(5, '1298', 'Could not apply settings'),
(6, '1289', 'Category was added successfully'),
(7, '7732', 'Could not add category'),
(8, '3598', 'Subject was added successfully'),
(9, '1925', 'Could not add subject'),
(10, '6310', 'Student was added successfully, default password is 123456'),
(11, '9157', 'Could not register student'),
(12, '2074', 'Duplicate phone number found'),
(13, '1189', 'Duplicate email found'),
(14, '2932', 'Examination was added successfully'),
(15, '7788', 'Could not add examination'),
(16, '0357', 'New question was added successfully'),
(17, '3903', 'Could not add question'),
(18, '9174', 'Notice was added successfully'),
(19, '6389', 'Could not add notice'),
(20, '9135', 'You must be admin to access the control panel'),
(21, '9422', 'You must login first'),
(22, '0912', 'Invalid username or password'),
(23, '9122', 'You must be a student to acces the exams'),
(24, '5732', 'Your account has been disabled'),
(25, '8924', 'Account not found'),
(26, '1804', 'New password has been sent to you through your email'),
(27, '1100', 'Could not reset your password');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assessment_records`
--

CREATE TABLE `tbl_assessment_records` (
  `record_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `next_retake` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `department_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_examinations`
--

CREATE TABLE `tbl_examinations` (
  `exam_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `duration` int(255) NOT NULL,
  `passmark` int(255) NOT NULL,
  `re_exam` int(255) NOT NULL,
  `terms` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(255) NOT NULL,
  `notice_id` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `last_update` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `question_id` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `question` longtext NOT NULL,
  `option1` varchar(255) NOT NULL DEFAULT '-',
  `option2` varchar(255) NOT NULL DEFAULT '-',
  `option3` varchar(255) NOT NULL DEFAULT '-',
  `option4` varchar(255) NOT NULL DEFAULT '-',
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `subject_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL DEFAULT '-',
  `category` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `avatar` longblob DEFAULT NULL,
  `acc_stat` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `first_name`, `last_name`, `gender`, `dob`, `address`, `email`, `phone`, `department`, `category`, `login`, `role`, `avatar`, `acc_stat`) VALUES
('admin', 'Chemist', 'Mudavanhu', 'Male', '01/02/1995', '-', 'admin@gmail.com', '+263786378538', '-', '-', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_assessment_records`
--
ALTER TABLE `tbl_assessment_records`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_examinations`
--
ALTER TABLE `tbl_examinations`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_id` (`notice_id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
