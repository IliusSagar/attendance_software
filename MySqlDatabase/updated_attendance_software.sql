-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 11:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_software`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=admin_id',
  `date` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_employee_salaries`
--

INSERT INTO `account_employee_salaries` (`id`, `employee_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(5, 13, '2024-01', 1980, '2024-01-23 05:10:26', '2024-01-23 05:10:26'),
(6, 15, '2024-01', 14500, '2024-01-23 05:10:26', '2024-01-23 05:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(3) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL COMMENT 'Employee,Admin',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `uid`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `salary`, `join_date`, `designation_id`) VALUES
(1, 459, 'Admin', 'Admin', 'admin@gmail.com', '2024-01-02 13:20:39', '$2y$10$i01dhfdkN9T71Oe/D5d.JuMtbnWUshM3jYzZ9ktn4s3bq73ohdFcO', NULL, '2024-01-02 13:20:39', '2024-02-10 15:59:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 460, 'Employee', 'Claire Cook', 'didexej@mailinator.com', NULL, '$2y$10$YQjnOmuctpADHlAEueWc6.bI3l2We1yxJnQG76RWximeKhFT/kN0a', NULL, '2024-01-20 02:18:36', '2024-02-10 15:59:56', 'Placeat iure quisqu', 'Qui id veniam illum', 'Male', '202401200925laravel-livewire.jpg', 'Yen Carpenter', 'Bree Howard', 'Chirstan', '2015120001', '1987-01-14', '8055', 2200, '2015-12-06', 17),
(15, 461, 'Employee', 'Zia Riggs', 'soxejydev@mailinator.com', NULL, '$2y$10$PtYFeuYrMtCXbjlz9bs8M.d47v.k0KMklRkwlsSvH/0t/Oc6Mgpmi', NULL, '2024-01-23 00:29:59', '2024-02-10 15:59:56', 'Dicta nulla nulla cu', 'Aut praesentium sit', 'Male', '202401230629vuejs-development-malaysia.jpeg', 'Azalia Melendez', 'Levi Rhodes', 'Chirstan', '2009120014', '1972-10-11', '2047', 15000, '2009-12-04', 17),
(81, 1, 'Employee', '1', '1@example.com', NULL, '$2y$10$jwakLt9aM3eeS0W5ousE4eAgRNvoe0DEmemPI1ZtThrBhrqc5wI.W', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020016', NULL, '1600', 0, NULL, NULL),
(82, 11, 'Employee', 'Hridoy', 'Hridoy@example.com', NULL, '$2y$10$HrrWJsGn/e3zN8y3DxFGG.GCAnhfBOh547S8X1EJ9ipP68IYN/FZa', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020082', NULL, '4616', 0, NULL, NULL),
(83, 2, 'Employee', 'Admin', 'Admin@example.com', NULL, '$2y$10$IyM0KpJaGfkP2emzlEK8TeWN5c9MRXRlUbJnZo7OqU8o1EHQnFrRu', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020083', NULL, '5987', 0, NULL, NULL),
(84, 12, 'Employee', 'Rasel', 'Rasel@example.com', NULL, '$2y$10$5GS211RhZ9x9h6xLlrEgpeW8.Yar8jftkJtL7EBQ4a5eXIE94i1yW', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020084', NULL, '7659', 0, NULL, NULL),
(85, 13, 'Employee', 'Shihan', 'Shihan@example.com', NULL, '$2y$10$L0cBV4uXMlaPwk091Jksde21pG44JN1lvmSaiRW13ccUpg0Znfmwi', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020085', NULL, '1861', 0, NULL, NULL),
(86, 14, 'Admin', 'Hasan', 'Hasan@example.com', NULL, '$2y$10$QMBdTv8Bfc/AdjEoOfxOYeGQDZp8ga8BBvMAB7BqjClgd1srGlNRq', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020086', NULL, '2839', 0, NULL, NULL),
(87, 15, 'Employee', 'Ontor', 'Ontor@example.com', NULL, '$2y$10$1Yg2WAZ8I4/tS3sOtL/IXeeLxjYR8AmTFp0MGJ/ZBdurn3ixWG6Xu', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020086', NULL, '9387', 0, NULL, NULL),
(88, 16, 'Employee', 'Sohidul', 'Sohidul@example.com', NULL, '$2y$10$BGITmX1b88hbbnjetENXpuXembfVvYDqMIQBYYdBZzqy/ms7Ihia.', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020088', NULL, '4123', 0, NULL, NULL),
(89, 17, 'Employee', 'Nishan', 'Nishan@example.com', NULL, '$2y$10$hCY6KfeJsAfojJ7n5ya2HOlDOFdQ7jkLLzsF9roqi2I8O9AwLaZaG', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020089', NULL, '2145', 0, NULL, NULL),
(90, 18, 'Employee', 'Sabbir', 'Sabbir@example.com', NULL, '$2y$10$ihT40itiijc9dHIlBbs5t.flK51ub4kwCd.6vwPMPGBxeQiVm0S3i', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020090', NULL, '6224', 0, NULL, NULL),
(91, 20, 'Employee', 'Jahid', 'Jahid@example.com', NULL, '$2y$10$wIKwPFULkrQYU25.EkzQM.xgbUlRqrhTno9jqJTFGXgI25fX4qSQy', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020091', NULL, '198', 0, NULL, NULL),
(92, 21, 'Employee', 'Shamim', 'Shamim@example.com', NULL, '$2y$10$MTM004h3ZXnmyuf.rUYGW.GyQsby228Xq0NLMsM.pU/9GxXHaQDs6', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020092', NULL, '2776', 0, NULL, NULL),
(93, 99, 'Employee', 'Raihan', 'Raihan@example.com', NULL, '$2y$10$a6Vv8gB/WovnR4Wb/F5bIO/rO80nMm20qflr8mYnYXJJ5p2WjZOyG', NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020093', NULL, '9876', 0, NULL, NULL),
(94, 22, 'Employee', 'Shawon', 'Shawon@example.com', NULL, '$2y$10$0kvOpnCPqXpSX5R4L7N7n.3t549jhup9Ibl0Wd8yqSIqR4B1eIiV2', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020094', NULL, '7545', 0, NULL, NULL),
(95, 23, 'Employee', 'Rakib', 'Rakib@example.com', NULL, '$2y$10$5k6Z/hIWl6i0gui8tPUFEO9enfkQJ27.ZbjjEjw56GxvkWDUGW0ya', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020095', NULL, '9453', 0, NULL, NULL),
(96, 24, 'Employee', 'Yeamin', 'Yeamin@example.com', NULL, '$2y$10$D1cqHBWUsAqpxHXgePxH9Oh2OWOeLLvMaL.TcfyM/U9oCuxJoU8Be', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020096', NULL, '754', 0, NULL, NULL),
(97, 25, 'Employee', 'Pintu', 'Pintu@example.com', NULL, '$2y$10$HAHioQy3RS/.XvVeGaF35uWU.KLN14UsIvF0BxbZvJV/s6cuD/Ptm', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020097', NULL, '9680', 0, NULL, NULL),
(98, 27, 'Employee', 'Yarule', 'Yarule@example.com', NULL, '$2y$10$XNQOgZbdm4GRxGLQEvr4Qe0iE2xRq/0oIaPnVQEjTQMYql91ovI8i', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020098', NULL, '806', 0, NULL, NULL),
(99, 28, 'Employee', 'Mofazzal', 'Mofazzal@example.com', NULL, '$2y$10$V.CYlErQ4EyDRAAPxQs4pe2aHFLkY4/eN6MtMzzQycARYp.y/D2jC', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020099', NULL, '2843', 0, NULL, NULL),
(100, 29, 'Employee', 'Arif', 'Arif@example.com', NULL, '$2y$10$EPstCU1qCizWCPYRdejLueyPsaGAxmAqqyNr3ZELFyrf8ue9yShNi', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020100', NULL, '6504', 0, NULL, NULL),
(101, 30, 'Employee', 'Rashed', 'Rashed@example.com', NULL, '$2y$10$D/egFIRpoN51RfxjXGcqE.ZIRcDMPwDnWE/97tlv1hgNRMt769b6G', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020101', NULL, '6770', 0, NULL, NULL),
(102, 31, 'Employee', 'Saiful', 'Saiful@example.com', NULL, '$2y$10$U.7f.tVJAUatJau3bRVzae9WESri39yKUY6LCjcEB1kvHdgqFKDSq', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020102', NULL, '5487', 0, NULL, NULL),
(103, 32, 'Employee', 'Shahin', 'Shahin@example.com', NULL, '$2y$10$B/YBg11JMDtAjvh2IlHv9uvryA5g1MA2wxTTYQMH1ZBz4/GgPUAIa', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020103', NULL, '662', 0, NULL, NULL),
(104, 33, 'Employee', 'Zishan', 'Zishan@example.com', NULL, '$2y$10$J4YDLYpnMQ5FL3z/qAuuaOglrwfsQfozURMGK0NddOJ7hgPNE4lgG', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020104', NULL, '4236', 0, NULL, NULL),
(105, 34, 'Employee', 'Limon', 'Limon@example.com', NULL, '$2y$10$x11Z2jbAVUU.dDVKOk5t2O73AD9rEBVxcaOBwGmvQxRLSt9DcboxG', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020105', NULL, '5758', 0, NULL, NULL),
(106, 35, 'Employee', 'Morad', 'Morad@example.com', NULL, '$2y$10$VgDuWNe5qp7defJ66MrjZeWMnfW5Ub4pqIMHvrnXcFNX8nVrrNPsi', NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020106', NULL, '6428', 0, NULL, NULL),
(107, 36, 'Employee', 'Abir', 'Abir@example.com', NULL, '$2y$10$t5L5UQo9TpLumm/xPUX0iOOXiAocfIPtDHwVXuo4nYhLB4Q4KQlu.', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020107', NULL, '6773', 0, NULL, NULL),
(108, 37, 'Employee', 'Rakib2', 'Rakib2@example.com', NULL, '$2y$10$nU1BQ87Y4yD/kqrVJrOwqOG.7Kqhaphw3c/Vxm5sqwYhVQyXWWuB2', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020108', NULL, '4169', 0, NULL, NULL),
(109, 38, 'Employee', 'Jakaria', 'Jakaria@example.com', NULL, '$2y$10$U39bMni0a7ae3QcY3T8mRO7/vDClvy0jhGNv1E2vbcNT9fK6Zn/mq', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020109', NULL, '8539', 0, NULL, NULL),
(110, 39, 'Employee', 'Alamin', 'Alamin@example.com', NULL, '$2y$10$/gKqEySJrfONINAAlVn3Aus2Av74u68M3tu4BuRqT8cYjRjF0VsyG', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020110', NULL, '3053', 0, NULL, NULL),
(111, 40, 'Employee', 'Dolan', 'Dolan@example.com', NULL, '$2y$10$RgZhPlWvZlFZZ.tmcqenD.GQLuzKVfUvLLQx/pYPSgtmjcnXKuDWe', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020111', NULL, '2554', 0, NULL, NULL),
(112, 41, 'Employee', 'Suhan', 'Suhan@example.com', NULL, '$2y$10$xqYr7Blf.If/Lzxwo620R.VCUIzqS0IfFMTQNN7/ugoujkyCEdGCy', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020112', NULL, '339', 0, NULL, NULL),
(113, 42, 'Employee', 'Siam', 'Siam@example.com', NULL, '$2y$10$GLl6hBpx.plBbMlrpfPdZOrbhx7023Ch49B2723STTcR/NyhQluVG', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020113', NULL, '7573', 0, NULL, NULL),
(114, 43, 'Employee', 'Sakib', 'Sakib@example.com', NULL, '$2y$10$M5rmR18qZcytohPLQobJEOxLM2KZqj2x38S7AXzjN1nlEkvc4Ekq6', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020114', NULL, '3412', 0, NULL, NULL),
(115, 44, 'Employee', 'Taskif', 'Taskif@example.com', NULL, '$2y$10$G5zdIFCbPzwNnWNRMkPBJO27TUnWkCnIjEOF3E2IsSLu/jjKRcRBS', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020115', NULL, '7946', 0, NULL, NULL),
(116, 45, 'Employee', 'Zubayer', 'Zubayer@example.com', NULL, '$2y$10$YVuacFhsUq1.SZqfKZJqF.3yH4FL6nkKYZ.TxsO.lgZOIN/ze2lzK', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020116', NULL, '3944', 0, NULL, NULL),
(117, 46, 'Employee', 'Sohan', 'Sohan@example.com', NULL, '$2y$10$VD6aQYpJJU8o3wft/B11euQozF/YeScomcTs59Tm9FpH4WWRUWlca', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020117', NULL, '3284', 0, NULL, NULL),
(118, 47, 'Employee', 'Mdrasel', 'Mdrasel@example.com', NULL, '$2y$10$lDOmm5cxUC5ZIQKWsJRDa.xq1SkVqCDb.y5LWKcPDhv6vSO5vKfIS', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020118', NULL, '7713', 0, NULL, NULL),
(119, 48, 'Employee', 'Hafezrayhan', 'Hafezrayhan@example.com', NULL, '$2y$10$.1SP3qZdossZMBLWbBBXduAF5icpzAgo4DL/EJp8GPHiY7VIy8aku', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020119', NULL, '1094', 0, NULL, NULL),
(120, 49, 'Employee', 'Rana', 'Rana@example.com', NULL, '$2y$10$FwDZp0RQvxzdtuh9IjpY7eCSK3Vn1ORE3Ryt3c8RdRvKTFHIJY06e', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020120', NULL, '8458', 0, NULL, NULL),
(121, 50, 'Employee', 'FoysalF', 'FoysalF@example.com', NULL, '$2y$10$b818eKSWTgvEdTCQPHPk2OPuLoHteXLnrX/zVtTLK9BuGB3D2dXHS', NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020121', NULL, '4800', 0, NULL, NULL),
(122, 51, 'Employee', 'Nayeem', 'Nayeem@example.com', NULL, '$2y$10$YCZ7vvySj6Tf7kbCK09leeSbYS4.NquQ.oyBEPTox8jjbdTmeyYIG', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020122', NULL, '3369', 0, NULL, NULL),
(123, 52, 'Employee', 'Yasin', 'Yasin@example.com', NULL, '$2y$10$nfgLD3IwjzUJ2QS0ore4b.Kq3o6Bi6hC2g/PrA94ervIYBSfEtcmC', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020123', NULL, '2811', 0, NULL, NULL),
(124, 53, 'Employee', 'Salman', 'Salman@example.com', NULL, '$2y$10$WjbzTsP91wnofNidD93eG.haVV.TwCrSpMAhae8fJbDbJKHryfR2a', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020124', NULL, '8220', 0, NULL, NULL),
(125, 55, 'Employee', 'Torun', 'Torun@example.com', NULL, '$2y$10$GoiwdxpULogs5NxEEY91luVULclYo.gI9GuKdHxSTXLnIjX35gWfW', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020125', NULL, '7637', 0, NULL, NULL),
(126, 54, 'Employee', 'Sajjad', 'Sajjad@example.com', NULL, '$2y$10$7MFdUwKbJuZ3m2Ch74e5Yua3HotggXMonsJtAEKKvbrLXuEAEGei.', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020126', NULL, '6087', 0, NULL, NULL),
(127, 56, 'Employee', 'Rayhan3', 'Rayhan3@example.com', NULL, '$2y$10$dZPs9xQV.0NfKcTIS1wL2.QIG8l5l5gUVdL3/iFB1leKsr6HiMGvm', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020127', NULL, '9568', 0, NULL, NULL),
(128, 57, 'Employee', 'Sofikul', 'Sofikul@example.com', NULL, '$2y$10$Eq6AaquwU1H9gt4gFcrYa.mQ5mzrkVGdGL5k1IHLnARrFq67T./rm', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020128', NULL, '6526', 0, NULL, NULL),
(129, 58, 'Employee', 'Taj', 'Taj@example.com', NULL, '$2y$10$/KEFi7Ha1rJEIdIJQzIuJO/lfmZw1KUqqD/5/8TaguP2dkbBmxrw.', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020129', NULL, '4925', 0, NULL, NULL),
(130, 59, 'Employee', 'Leon', 'Leon@example.com', NULL, '$2y$10$pMkpzj64M6It3nSi2t1Jweoe6PX0BV1u6xtF/ABg3xHoD5ZgOtLvO', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020130', NULL, '5967', 0, NULL, NULL),
(131, 60, 'Employee', 'Tanvir', 'Tanvir@example.com', NULL, '$2y$10$VTgIR2nCF7SxyrUW8s5GIeSEximQaky1FC2tHKKkjidWEBvUWarHK', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020131', NULL, '1409', 0, NULL, NULL),
(132, 61, 'Employee', 'Sujon', 'Sujon@example.com', NULL, '$2y$10$sNHkHBWmZY2XAIqEMp2jbuLOelFdtwwDknQXcRJouZwtXRYSwprL6', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020132', NULL, '9097', 0, NULL, NULL),
(133, 62, 'Employee', 'Mehedihasan', 'Mehedihasan@example.com', NULL, '$2y$10$O86jAkERbG88sMQby/VkBO3RARglmt/Ws9O.OKiA9XLdRdDf8gBLS', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020133', NULL, '8386', 0, NULL, NULL),
(134, 63, 'Employee', 'Turjo', 'Turjo@example.com', NULL, '$2y$10$o2eJVplD1K/CS6Y5WKDEMOkXynI0V2f455hIRZqY6XQw/Xy610smO', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020134', NULL, '7343', 0, NULL, NULL),
(135, 65, 'Employee', 'Babu', 'Babu@example.com', NULL, '$2y$10$pWay7P9Z9oO41hAJ6A3xJO9dUKIp.Py1KmYVmL8ljxp52V6oIPnzW', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020135', NULL, '8741', 0, NULL, NULL),
(136, 64, 'Employee', 'Hasib', 'Hasib@example.com', NULL, '$2y$10$LHpTYFeNiNI5GVf7RAbwf.elbgvu7FDT2uGbjyXC1FJZ03gClA8ea', NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020136', NULL, '1123', 0, NULL, NULL),
(137, 66, 'Employee', 'Zihad', 'Zihad@example.com', NULL, '$2y$10$c0MdtU97QHWTL5CrFJlBB.ooJ7eEWPBupi9Cayyhg.qFFXpk0PmjG', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020137', NULL, '7392', 0, NULL, NULL),
(138, 67, 'Employee', 'hurayra', 'hurayra@example.com', NULL, '$2y$10$UFT1D6NBO4yOVpMXnNIrouvZl69lMxk922svjfUuSsEL7VgYRlfVS', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020138', NULL, '8163', 0, NULL, NULL),
(139, 68, 'Employee', 'Razzak', 'Razzak@example.com', NULL, '$2y$10$qmwEOmqFy01fXBXpjX4Tn.cSNF6kiwu0h33Ya9bNoUCXzjzynygLa', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020139', NULL, '7454', 0, NULL, NULL),
(140, 69, 'Employee', 'Rony', 'Rony@example.com', NULL, '$2y$10$TN2utB0MupRRUvbcHcoi.uHqt4r6mFbcYgoAXHlvtnBwCMWPHX9fC', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020140', NULL, '8365', 0, NULL, NULL),
(141, 71, 'Employee', 'Alif', 'Alif@example.com', NULL, '$2y$10$zvL3TOFjEfrR71v.2sUfUez5vUvsgpzCHXtNxg5/9hUaCHxKpup6K', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020141', NULL, '8258', 0, NULL, NULL),
(142, 72, 'Employee', 'Reduyan', 'Reduyan@example.com', NULL, '$2y$10$miToqDJQULD627QR7koouuuYePh.Ju7o3mXLvfd3mml6sWRaDA6gi', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020142', NULL, '3419', 0, NULL, NULL),
(143, 73, 'Employee', 'Masum', 'Masum@example.com', NULL, '$2y$10$Y1Rv3ZyWcMVwReMp.6eOku9y9xMd6z8ClsPb2mDR26cRywcfidHuC', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020143', NULL, '2906', 0, NULL, NULL),
(144, 74, 'Employee', 'Emam', 'Emam@example.com', NULL, '$2y$10$fUxiQxmEisFq7.4Bggwj2O7FyI6MXimzTDMwjmXciZZlGZg045V46', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020144', NULL, '6966', 0, NULL, NULL),
(145, 456, 'Admin', 'N/A', 'N/A@example.com', NULL, '$2y$10$LUMoeyOfWnupqbdkaTngpO0IDUY6fTB0ppjQDkKSjg0CzzxhxWrIm', NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020145', NULL, '2364', 0, NULL, NULL),
(148, 457, 'Employee', 'Zia Riggs', 'Zia Riggs457@example.com', NULL, '$2y$10$6g6u4MNPxp28ZmAif59SRu.sRoLaOP8.cJslw2QayuT4GzYrDXV4.', NULL, '2024-02-10 15:58:47', '2024-02-10 15:58:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020145', NULL, '2392', 0, NULL, NULL),
(149, 458, 'Admin', 'Admin', 'Admin458@example.com', NULL, '$2y$10$ZHqccFyKZUVfuhxegnloR.B/9bTOsttGKgGsP9wRWkjspYtOTvbza', NULL, '2024-02-10 15:59:55', '2024-02-10 15:59:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024020149', NULL, '4685', 0, NULL, NULL),
(150, 462, 'Employee', 'Test A1', 'a1@e.co', NULL, '$2y$10$VMI7v4MPmniKetvq1YDHOe1GKG3cWLakO9uVfNW3RWekOok55FjVC', NULL, '2024-02-10 16:01:57', '2024-02-10 16:02:22', '123456', 'test', 'Male', '202402102201temp.jpg_1702462310.jpg', 'F A1', 'M A1', 'Islam', '2023110149', '2024-02-11', '4085', 150, '2023-11-20', 16);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(16, 'Manager', '2024-01-18 05:02:15', '2024-01-18 05:02:15'),
(17, 'Accounts', '2024-01-18 05:02:22', '2024-01-18 05:02:22'),
(18, 'Sales Man', '2024-01-18 05:02:32', '2024-01-18 05:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) DEFAULT NULL COMMENT 'employee_id=admin_id',
  `date` date DEFAULT NULL,
  `attend_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(206, 456, '2024-02-10', 'Check In', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(207, 14, '2024-02-10', 'Check In', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(208, 14, '2024-02-10', 'Check Out', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(209, 456, '2024-02-10', 'Check Out', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(210, 456, '2024-02-10', 'Overtime In', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(211, 456, '2024-02-10', 'Overtime Out', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(212, 14, '2024-02-10', 'Overtime In', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(213, 14, '2024-02-10', 'Overtime Out', '2024-02-10 15:36:30', '2024-02-10 15:36:30'),
(214, 456, '2024-02-11', 'Check In', '2024-02-10 15:37:46', '2024-02-10 15:37:46'),
(215, 456, '2024-02-11', 'Check Out', '2024-02-10 15:38:00', '2024-02-10 15:38:00'),
(216, 462, '2024-02-11', 'Check Out', '2024-02-10 16:02:57', '2024-02-10 16:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=admin_id',
  `leave_purpose_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 13, 6, '2001-09-12', '2022-04-29', '2024-01-23 00:08:19', '2024-01-23 00:08:19'),
(3, 15, 6, '1993-02-18', '1996-09-12', '2024-01-23 00:26:33', '2024-01-23 00:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sallary_logs`
--

CREATE TABLE `employee_sallary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=Admin_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_salary` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_sallary_logs`
--

INSERT INTO `employee_sallary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_salary`, `created_at`, `updated_at`) VALUES
(1, 13, 1200, 1200, 0, '2015-12-06', '2024-01-20 02:18:36', '2024-01-20 02:18:36'),
(3, 13, 1200, 1500, 300, '2024-01-20', '2024-01-20 05:36:02', '2024-01-20 05:36:02'),
(4, 13, 1500, 2000, 500, '2024-01-30', '2024-01-20 05:55:00', '2024-01-20 05:55:00'),
(5, 13, 2000, 2200, 200, '2024-01-23', '2024-01-22 22:53:47', '2024-01-22 22:53:47'),
(6, 15, 15000, 15000, 0, '2009-12-04', '2024-01-23 00:29:59', '2024-01-23 00:29:59'),
(7, 16, 0, 0, 0, NULL, '2024-02-10 06:56:59', '2024-02-10 06:56:59'),
(8, 17, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(9, 18, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(10, 19, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(11, 20, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(12, 21, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(13, 22, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(14, 23, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(15, 24, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(16, 25, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(17, 26, 0, 0, 0, NULL, '2024-02-10 06:57:56', '2024-02-10 06:57:56'),
(18, 27, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(19, 28, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(20, 29, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(21, 30, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(22, 31, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(23, 32, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(24, 33, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(25, 34, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(26, 35, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(27, 36, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(28, 37, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(29, 38, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(30, 39, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(31, 40, 0, 0, 0, NULL, '2024-02-10 06:57:57', '2024-02-10 06:57:57'),
(32, 41, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(33, 42, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(34, 43, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(35, 44, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(36, 45, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(37, 46, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(38, 47, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(39, 48, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(40, 49, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(41, 50, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(42, 51, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(43, 52, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(44, 53, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(45, 54, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(46, 55, 0, 0, 0, NULL, '2024-02-10 06:57:58', '2024-02-10 06:57:58'),
(47, 56, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(48, 57, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(49, 58, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(50, 59, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(51, 60, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(52, 61, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(53, 62, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(54, 63, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(55, 64, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(56, 65, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(57, 66, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(58, 67, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(59, 68, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(60, 69, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(61, 70, 0, 0, 0, NULL, '2024-02-10 06:57:59', '2024-02-10 06:57:59'),
(62, 71, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(63, 72, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(64, 73, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(65, 74, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(66, 75, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(67, 76, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(68, 77, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(69, 78, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(70, 79, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(71, 80, 0, 0, 0, NULL, '2024-02-10 06:58:00', '2024-02-10 06:58:00'),
(72, 81, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(73, 82, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(74, 83, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(75, 84, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(76, 85, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(77, 86, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(78, 87, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(79, 88, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(80, 89, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(81, 90, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(82, 91, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(83, 92, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(84, 93, 0, 0, 0, NULL, '2024-02-10 06:59:41', '2024-02-10 06:59:41'),
(85, 94, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(86, 95, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(87, 96, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(88, 97, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(89, 98, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(90, 99, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(91, 100, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(92, 101, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(93, 102, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(94, 103, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(95, 104, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(96, 105, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(97, 106, 0, 0, 0, NULL, '2024-02-10 06:59:42', '2024-02-10 06:59:42'),
(98, 107, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(99, 108, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(100, 109, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(101, 110, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(102, 111, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(103, 112, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(104, 113, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(105, 114, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(106, 115, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(107, 116, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(108, 117, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(109, 118, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(110, 119, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(111, 120, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(112, 121, 0, 0, 0, NULL, '2024-02-10 06:59:43', '2024-02-10 06:59:43'),
(113, 122, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(114, 123, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(115, 124, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(116, 125, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(117, 126, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(118, 127, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(119, 128, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(120, 129, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(121, 130, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(122, 131, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(123, 132, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(124, 133, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(125, 134, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(126, 135, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(127, 136, 0, 0, 0, NULL, '2024-02-10 06:59:44', '2024-02-10 06:59:44'),
(128, 137, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(129, 138, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(130, 139, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(131, 140, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(132, 141, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(133, 142, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(134, 143, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(135, 144, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(136, 145, 0, 0, 0, NULL, '2024-02-10 06:59:45', '2024-02-10 06:59:45'),
(137, 146, 0, 0, 0, NULL, '2024-02-10 15:52:26', '2024-02-10 15:52:26'),
(138, 148, 0, 0, 0, NULL, '2024-02-10 15:58:47', '2024-02-10 15:58:47'),
(139, 149, 0, 0, 0, NULL, '2024-02-10 15:59:56', '2024-02-10 15:59:56'),
(140, 150, 150, 150, 0, '2023-11-20', '2024-02-10 16:01:57', '2024-02-10 16:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Sick', '2024-01-23 00:02:39', '2024-01-23 00:02:39'),
(7, 'Family Problem', '2024-01-23 00:09:11', '2024-01-23 00:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_02_131240_create_admins_table', 2),
(6, '2024_01_18_092548_create_designations_table', 3),
(7, '2024_01_20_081001_create_employee_sallary_logs_table', 4),
(8, '2024_01_20_120420_create_employee_leaves_table', 5),
(9, '2024_01_20_123737_create_leave_purposes_table', 6),
(10, '2024_01_23_065002_create_employee_attendances_table', 7),
(11, '2024_01_23_100853_create_account_employee_salaries_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User1', 'user1@gmail.com', NULL, '$2y$10$i01dhfdkN9T71Oe/D5d.JuMtbnWUshM3jYzZ9ktn4s3bq73ohdFcO', NULL, '2024-01-02 07:12:11', '2024-01-02 07:12:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
