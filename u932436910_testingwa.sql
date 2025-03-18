-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2025 at 08:27 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u932436910_testingwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_role_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `activity` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`_id`, `created_at`, `user_id`, `user_role_id`, `vendor_id`, `activity`) VALUES
(1, '2024-11-13 17:29:46', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(2, '2024-11-13 17:30:02', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(3, '2024-11-13 17:30:13', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(4, '2024-11-13 17:31:07', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(5, '2024-11-13 18:07:20', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(6, '2024-11-13 18:07:21', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(7, '2024-11-13 18:10:48', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(8, '2024-11-13 18:10:53', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(9, '2024-11-13 18:10:55', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(10, '2024-11-13 18:10:55', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(11, '2024-11-13 18:10:56', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(12, '2024-11-13 18:11:36', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(13, '2024-11-13 18:16:39', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(14, '2024-11-13 18:22:52', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(15, '2024-11-13 18:25:10', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(16, '2024-11-13 18:26:02', NULL, NULL, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(17, '2024-11-13 18:26:05', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(18, '2024-11-13 19:56:23', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(19, '2024-11-13 20:14:21', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(20, '2024-11-13 20:43:59', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(21, '2024-11-13 20:44:03', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(22, '2024-11-13 20:44:04', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(23, '2024-11-13 20:44:04', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(24, '2024-11-13 20:44:05', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(25, '2024-11-13 21:45:35', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(26, '2024-11-13 22:22:16', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(27, '2024-11-14 01:56:50', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(28, '2024-11-14 02:03:56', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(29, '2024-11-14 04:07:43', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(30, '2024-11-14 04:09:39', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(31, '2024-11-14 04:14:08', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(32, '2024-11-14 04:24:59', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(33, '2024-11-14 04:38:42', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(34, '2024-11-14 04:39:24', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(35, '2024-11-14 05:02:39', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(36, '2024-11-14 05:05:28', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(37, '2024-11-16 16:47:24', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(38, '2024-11-16 16:48:03', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(39, '2024-11-16 16:48:25', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(40, '2024-11-16 16:49:10', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(41, '2024-11-16 16:49:26', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(42, '2024-11-16 16:49:49', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(43, '2024-11-16 16:50:02', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(44, '2024-11-16 16:56:06', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(45, '2024-11-16 16:59:56', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(46, '2024-11-16 17:00:13', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(47, '2024-11-16 17:00:20', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(48, '2024-11-16 17:01:44', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(49, '2024-11-16 17:02:14', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(50, '2024-11-16 17:04:26', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(51, '2024-11-16 17:05:01', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(52, '2024-11-16 17:05:54', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(53, '2024-11-16 17:07:32', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(54, '2024-11-16 17:07:57', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(55, '2024-11-16 17:12:23', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(56, '2024-11-17 10:18:58', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(57, '2024-11-17 10:20:40', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(58, '2024-11-17 10:21:37', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(59, '2024-11-17 10:21:56', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(60, '2024-11-17 10:23:43', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(61, '2024-11-17 11:41:15', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(62, '2024-11-17 11:41:39', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(63, '2024-11-17 11:45:16', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(64, '2024-11-17 14:07:52', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(65, '2024-11-17 14:13:35', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(66, '2024-11-17 14:15:35', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(67, '2024-11-17 16:07:45', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(68, '2024-11-17 16:09:01', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(69, '2024-11-17 17:24:46', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(70, '2024-11-17 17:51:13', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(71, '2024-11-17 21:21:55', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(72, '2024-11-17 21:23:39', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(73, '2024-11-17 21:25:31', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(74, '2024-11-17 21:26:26', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(75, '2024-11-18 15:42:45', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(76, '2024-11-18 15:43:23', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(77, '2024-11-18 16:40:14', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(78, '2024-11-18 16:47:01', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(79, '2024-11-18 17:30:51', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(80, '2024-11-19 03:21:54', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(81, '2024-11-19 16:57:09', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(82, '2024-11-19 19:34:51', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(83, '2024-11-19 19:34:52', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(84, '2024-11-19 19:35:35', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(85, '2024-11-19 19:35:36', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(86, '2024-11-19 19:35:36', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(87, '2024-11-19 19:35:37', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(88, '2024-11-19 19:41:59', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(89, '2024-11-19 19:42:03', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(90, '2024-11-19 19:42:04', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(91, '2024-11-19 19:42:04', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(92, '2024-11-19 19:42:05', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(93, '2024-11-19 21:12:38', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(94, '2024-11-19 21:48:23', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(95, '2024-11-21 15:37:47', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(96, '2024-11-21 15:38:36', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(97, '2024-11-21 15:42:53', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(98, '2024-11-21 15:49:20', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(99, '2024-11-21 15:54:53', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(100, '2024-11-21 15:55:01', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(101, '2024-11-21 16:09:15', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(102, '2024-11-21 16:33:25', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(103, '2024-11-21 16:34:09', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(104, '2024-11-21 16:40:02', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(105, '2024-11-21 16:43:55', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(106, '2024-11-21 16:43:57', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(107, '2024-11-21 16:44:03', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(108, '2024-11-21 16:57:56', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(109, '2024-11-21 19:08:14', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(110, '2024-11-22 11:23:48', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(111, '2024-11-22 15:48:59', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(112, '2024-11-22 15:49:03', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(113, '2024-11-22 15:49:05', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(114, '2024-11-22 15:49:05', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(115, '2024-11-22 15:49:06', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(116, '2024-11-23 10:54:21', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(117, '2024-11-23 10:54:22', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(118, '2024-11-23 10:55:11', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(119, '2024-11-23 10:55:15', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(120, '2024-11-23 10:55:16', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(121, '2024-11-23 10:55:16', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(122, '2024-11-23 10:55:17', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(123, '2024-11-23 10:55:36', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(124, '2024-11-23 10:55:36', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(125, '2024-11-23 10:55:51', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(126, '2024-11-23 10:56:01', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(127, '2024-11-23 11:26:27', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(128, '2024-11-24 18:55:17', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(129, '2024-11-24 19:14:50', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(130, '2024-11-24 19:29:36', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(131, '2024-11-24 19:29:40', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(132, '2024-11-24 19:29:42', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(133, '2024-11-24 19:29:46', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(134, '2024-11-24 19:30:39', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(135, '2024-11-24 19:30:51', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(136, '2024-11-24 19:31:34', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(137, '2024-11-24 19:31:45', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(138, '2024-11-24 19:32:03', 8, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(139, '2024-11-24 20:14:31', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(140, '2024-11-25 03:59:48', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(141, '2024-11-25 04:00:52', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(142, '2024-11-25 04:00:52', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(143, '2024-11-25 04:03:18', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(144, '2024-11-25 04:03:23', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(145, '2024-11-25 04:03:24', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(146, '2024-11-25 04:03:24', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(147, '2024-11-25 04:03:25', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(148, '2024-11-25 04:03:48', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(149, '2024-11-25 05:33:01', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(150, '2024-11-25 06:36:33', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(151, '2024-11-25 06:36:45', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(152, '2024-11-25 06:36:48', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(153, '2024-11-25 06:45:00', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(154, '2024-11-25 06:45:03', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(155, '2024-11-25 09:39:18', 7, 2, 6, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(156, '2024-11-30 21:40:58', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(157, '2024-11-30 21:41:02', 2, 2, 1, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(158, '2024-12-02 05:28:27', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(159, '2024-12-02 05:28:29', 13, 2, 11, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(160, '2024-12-02 05:28:30', 13, 2, 11, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(161, '2024-12-02 05:28:33', 13, 2, 11, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(162, '2024-12-02 05:29:20', 13, 2, 11, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(163, '2024-12-02 09:43:47', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(164, '2024-12-02 09:43:49', 15, 2, 13, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(165, '2024-12-02 09:43:50', 15, 2, 13, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(166, '2024-12-02 09:43:53', 15, 2, 13, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(167, '2024-12-02 09:53:17', 15, 2, 13, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(168, '2024-12-02 09:56:21', 15, 2, 13, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(169, '2024-12-02 10:54:39', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(170, '2024-12-02 10:54:40', 18, 2, 16, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(171, '2024-12-02 10:58:53', 18, 2, 16, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(172, '2024-12-02 10:58:57', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(173, '2024-12-02 10:58:58', 18, 2, 16, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(174, '2024-12-02 10:58:58', 18, 2, 16, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(175, '2024-12-02 10:58:59', 18, 2, 16, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(176, '2024-12-02 11:11:14', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(177, '2024-12-06 09:56:47', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(178, '2024-12-06 09:57:21', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(179, '2024-12-06 09:57:35', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(180, '2024-12-06 09:58:08', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(181, '2025-01-09 11:05:18', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(182, '2025-01-09 11:05:28', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(183, '2025-01-09 11:06:04', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(184, '2025-01-09 11:08:29', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(185, '2025-01-09 11:16:43', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(186, '2025-01-09 11:16:50', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(187, '2025-01-09 11:20:57', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(188, '2025-01-09 11:27:20', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(189, '2025-01-09 11:30:08', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(190, '2025-01-09 11:34:00', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(191, '2025-01-09 12:39:55', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(192, '2025-01-09 12:41:19', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(193, '2025-01-09 12:42:17', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(194, '2025-01-09 12:46:46', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(195, '2025-01-09 12:53:58', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(196, '2025-01-09 12:54:32', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(197, '2025-01-10 10:00:19', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(198, '2025-01-10 10:00:56', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(199, '2025-01-10 10:00:56', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(200, '2025-01-10 10:04:30', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(201, '2025-01-10 10:04:34', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(202, '2025-01-10 10:04:35', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(203, '2025-01-10 10:04:35', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(204, '2025-01-10 10:04:36', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(205, '2025-01-10 10:05:16', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(206, '2025-01-10 10:05:28', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(207, '2025-01-10 10:05:38', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(208, '2025-01-10 11:24:04', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(209, '2025-01-10 11:33:20', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(210, '2025-01-11 06:54:03', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(211, '2025-01-11 07:02:01', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(212, '2025-01-11 07:59:13', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(213, '2025-01-11 08:08:11', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(214, '2025-01-11 08:10:49', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(215, '2025-01-11 08:13:17', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(216, '2025-01-11 10:09:21', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(217, '2025-01-11 10:32:17', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(218, '2025-01-11 10:56:06', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(219, '2025-01-11 10:56:10', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(220, '2025-01-11 10:56:11', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(221, '2025-01-11 10:56:11', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(222, '2025-01-11 10:56:12', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(223, '2025-01-11 11:02:00', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(224, '2025-01-11 11:02:04', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(225, '2025-01-11 11:02:07', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(226, '2025-01-11 11:02:07', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(227, '2025-01-11 11:02:08', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(228, '2025-01-11 11:12:21', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(229, '2025-01-11 11:12:43', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(230, '2025-01-11 11:16:48', NULL, NULL, NULL, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(231, '2025-01-11 11:16:48', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(232, '2025-01-11 11:19:03', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(233, '2025-01-11 11:19:18', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(234, '2025-01-11 12:19:36', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(235, '2025-01-16 13:57:31', 24, 2, 21, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(236, '2025-03-08 07:16:16', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(237, '2025-03-08 07:16:28', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(238, '2025-03-08 08:15:08', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(239, '2025-03-08 08:15:16', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(240, '2025-03-08 08:15:24', 1, 1, NULL, '{\"message\":\"Site configuration settings stored \\/ updated.\",\"data\":\"[]\"}'),
(241, '2025-03-08 08:16:41', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(242, '2025-03-08 08:16:45', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(243, '2025-03-10 10:11:28', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(244, '2025-03-10 10:11:32', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(245, '2025-03-11 12:57:25', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(246, '2025-03-12 06:39:33', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}'),
(247, '2025-03-12 08:19:10', 21, 2, 19, '{\"message\":\"vendor settings updated\",\"data\":\"[]\"}');

-- --------------------------------------------------------

--
-- Table structure for table `bot_flows`
--

CREATE TABLE `bot_flows` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(150) NOT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `start_trigger` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bot_flows`
--

INSERT INTO `bot_flows` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `title`, `vendors__id`, `__data`, `start_trigger`) VALUES
(7, '8d474444-52a6-4bd2-b663-d8f7374cda5f', 1, '2025-03-18 06:06:25', '2025-01-10 13:04:30', 'tt', 19, '{\"flow_builder_data\":{\"operators\":{\"fc956c03-4eb7-4af1-8131-682fca21dbf2\":{\"top\":\"40\",\"left\":\"520\",\"properties\":{\"title\":\"Test\",\"body\":\"<div class=\\\"btn-group btn-group-sm\\\"><a class=\\\"btn btn-default\\\" style=\\\"padding: 1px;\\\"><\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Edit\\\" class=\\\"btn btn-default btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-pre-callback=\\\"appFuncs.clearContainer\\\" title=\\\"Edit\\\" class=\\\"btn btn-default lw-ajax-link-action\\\" data-response-template=\\\"#lwEditBotReplyBody\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/fc956c03-4eb7-4af1-8131-682fca21dbf2\\/get-update-data\\\" data-toggle=\\\"modal\\\" data-target=\\\"#lwEditBotReply\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Delete\\\" class=\\\"btn btn-danger btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete <\\/a>\\n                                    <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/fc956c03-4eb7-4af1-8131-682fca21dbf2\\/delete-process\\\" class=\\\"btn btn-danger lw-ajax-link-action\\\" data-confirm=\\\"#lwDeleteBotReply-template\\\" title=\\\"Delete\\\" data-callback=\\\"onBotReplyDeleted\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Duplicate\\\" class=\\\"btn btn-light btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/fc956c03-4eb7-4af1-8131-682fca21dbf2\\/duplicate-process\\\" class=\\\"btn btn-light lw-ajax-link-action\\\" data-confirm=\\\"#lwDuplicateBotReply-template\\\" title=\\\"Duplicate\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a>\\n                                    <a class=\\\"btn btn-light\\\" style=\\\"padding: 1px;\\\"><\\/a><\\/div><button style=\\\"display:none;\\\" class=\\\"lw-delete-link-btn lw-operator-link-fc956c03-4eb7-4af1-8131-682fca21dbf2 btn btn-warning btn-block btn-sm\\\" @click=\\\"window.$flowBuilderInstance.flowchart(\'deleteSelected\');\\\"><i class=\\\"fas fa-unlink\\\"><\\/i> Delete Link<\\/button>\",\"inputs\":{\"input\":{\"label\":\"-->\"}},\"outputs\":{\"1\":{\"label\":\"Call Now\"}}}},\"0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d\":{\"top\":\"190\",\"left\":\"250\",\"properties\":{\"title\":\"test2\",\"body\":\"<div class=\\\"btn-group btn-group-sm\\\"><a class=\\\"btn btn-default\\\" style=\\\"padding: 1px;\\\"><\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Edit\\\" class=\\\"btn btn-default btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-pre-callback=\\\"appFuncs.clearContainer\\\" title=\\\"Edit\\\" class=\\\"btn btn-default lw-ajax-link-action\\\" data-response-template=\\\"#lwEditBotReplyBody\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d\\/get-update-data\\\" data-toggle=\\\"modal\\\" data-target=\\\"#lwEditBotReply\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Delete\\\" class=\\\"btn btn-danger btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete <\\/a>\\n                                    <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d\\/delete-process\\\" class=\\\"btn btn-danger lw-ajax-link-action\\\" data-confirm=\\\"#lwDeleteBotReply-template\\\" title=\\\"Delete\\\" data-callback=\\\"onBotReplyDeleted\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Duplicate\\\" class=\\\"btn btn-light btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d\\/duplicate-process\\\" class=\\\"btn btn-light lw-ajax-link-action\\\" data-confirm=\\\"#lwDuplicateBotReply-template\\\" title=\\\"Duplicate\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a>\\n                                    <a class=\\\"btn btn-light\\\" style=\\\"padding: 1px;\\\"><\\/a><\\/div><button style=\\\"display:none;\\\" class=\\\"lw-delete-link-btn lw-operator-link-0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d btn btn-warning btn-block btn-sm\\\" @click=\\\"window.$flowBuilderInstance.flowchart(\'deleteSelected\');\\\"><i class=\\\"fas fa-unlink\\\"><\\/i> Delete Link<\\/button>\",\"inputs\":{\"input\":{\"label\":\"-->\"}}}}},\"links\":[{\"fromOperator\":\"start\",\"fromConnector\":\"start_output\",\"fromSubConnector\":\"0\",\"toOperator\":\"fc956c03-4eb7-4af1-8131-682fca21dbf2\",\"toConnector\":\"input\",\"toSubConnector\":\"0\"},{\"fromOperator\":\"start\",\"fromConnector\":\"start_output\",\"fromSubConnector\":\"0\",\"toOperator\":\"0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d\",\"toConnector\":\"input\",\"toSubConnector\":\"0\"}]}}', 'Hi'),
(8, 'b36206bd-9e65-474e-a527-335f4f07eff0', 2, '2025-03-18 06:39:38', '2025-03-18 06:37:04', 'test', 19, '{\"flow_builder_data\":{\"operators\":{\"2222edc3-3062-484f-b852-4ee749948d65\":{\"top\":\"110\",\"left\":\"370\",\"properties\":{\"title\":\"hii\",\"body\":\"<div class=\\\"btn-group btn-group-sm\\\"><a class=\\\"btn btn-default\\\" style=\\\"padding: 1px;\\\"><\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Edit\\\" class=\\\"btn btn-default btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-pre-callback=\\\"appFuncs.clearContainer\\\" title=\\\"Edit\\\" class=\\\"btn btn-default lw-ajax-link-action\\\" data-response-template=\\\"#lwEditBotReplyBody\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/2222edc3-3062-484f-b852-4ee749948d65\\/get-update-data\\\" data-toggle=\\\"modal\\\" data-target=\\\"#lwEditBotReply\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Delete\\\" class=\\\"btn btn-danger btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete <\\/a>\\n                                    <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/2222edc3-3062-484f-b852-4ee749948d65\\/delete-process\\\" class=\\\"btn btn-danger lw-ajax-link-action\\\" data-confirm=\\\"#lwDeleteBotReply-template\\\" title=\\\"Delete\\\" data-callback=\\\"onBotReplyDeleted\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Duplicate\\\" class=\\\"btn btn-light btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/2222edc3-3062-484f-b852-4ee749948d65\\/duplicate-process\\\" class=\\\"btn btn-light lw-ajax-link-action\\\" data-confirm=\\\"#lwDuplicateBotReply-template\\\" title=\\\"Duplicate\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a>\\n                                    <a class=\\\"btn btn-light\\\" style=\\\"padding: 1px;\\\"><\\/a><\\/div><button style=\\\"display:none;\\\" class=\\\"lw-delete-link-btn lw-operator-link-2222edc3-3062-484f-b852-4ee749948d65 btn btn-warning btn-block btn-sm\\\" @click=\\\"window.$flowBuilderInstance.flowchart(\'deleteSelected\');\\\"><i class=\\\"fas fa-unlink\\\"><\\/i> Delete Link<\\/button>\",\"inputs\":{\"input\":{\"label\":\"-->\"}}}},\"587934aa-bf1d-4c37-8d68-1a5ac13a04a9\":{\"top\":\"190\",\"left\":\"30\",\"properties\":{\"title\":\"question\",\"body\":\"<div class=\\\"btn-group btn-group-sm\\\"><a class=\\\"btn btn-default\\\" style=\\\"padding: 1px;\\\"><\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Edit\\\" class=\\\"btn btn-default btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-pre-callback=\\\"appFuncs.clearContainer\\\" title=\\\"Edit\\\" class=\\\"btn btn-default lw-ajax-link-action\\\" data-response-template=\\\"#lwEditBotReplyBody\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/587934aa-bf1d-4c37-8d68-1a5ac13a04a9\\/get-update-data\\\" data-toggle=\\\"modal\\\" data-target=\\\"#lwEditBotReply\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Delete\\\" class=\\\"btn btn-danger btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete <\\/a>\\n                                    <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/587934aa-bf1d-4c37-8d68-1a5ac13a04a9\\/delete-process\\\" class=\\\"btn btn-danger lw-ajax-link-action\\\" data-confirm=\\\"#lwDeleteBotReply-template\\\" title=\\\"Delete\\\" data-callback=\\\"onBotReplyDeleted\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Duplicate\\\" class=\\\"btn btn-light btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/587934aa-bf1d-4c37-8d68-1a5ac13a04a9\\/duplicate-process\\\" class=\\\"btn btn-light lw-ajax-link-action\\\" data-confirm=\\\"#lwDuplicateBotReply-template\\\" title=\\\"Duplicate\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a>\\n                                    <a class=\\\"btn btn-light\\\" style=\\\"padding: 1px;\\\"><\\/a><\\/div><button style=\\\"display:none;\\\" class=\\\"lw-delete-link-btn lw-operator-link-587934aa-bf1d-4c37-8d68-1a5ac13a04a9 btn btn-warning btn-block btn-sm\\\" @click=\\\"window.$flowBuilderInstance.flowchart(\'deleteSelected\');\\\"><i class=\\\"fas fa-unlink\\\"><\\/i> Delete Link<\\/button>\",\"inputs\":{\"input\":{\"label\":\"-->\"}},\"outputs\":{\"1\":{\"label\":\"Yes\"},\"2\":{\"label\":\"No\"}}}},\"30f28c6e-b27a-4df0-a8ff-e9d96269d21c\":{\"top\":\"330\",\"left\":\"360\",\"properties\":{\"title\":\"bye\",\"body\":\"<div class=\\\"btn-group btn-group-sm\\\"><a class=\\\"btn btn-default\\\" style=\\\"padding: 1px;\\\"><\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Edit\\\" class=\\\"btn btn-default btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-pre-callback=\\\"appFuncs.clearContainer\\\" title=\\\"Edit\\\" class=\\\"btn btn-default lw-ajax-link-action\\\" data-response-template=\\\"#lwEditBotReplyBody\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/30f28c6e-b27a-4df0-a8ff-e9d96269d21c\\/get-update-data\\\" data-toggle=\\\"modal\\\" data-target=\\\"#lwEditBotReply\\\"><i class=\\\"fa fa-edit\\\"><\\/i> Edit<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Delete\\\" class=\\\"btn btn-danger btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete <\\/a>\\n                                    <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/30f28c6e-b27a-4df0-a8ff-e9d96269d21c\\/delete-process\\\" class=\\\"btn btn-danger lw-ajax-link-action\\\" data-confirm=\\\"#lwDeleteBotReply-template\\\" title=\\\"Delete\\\" data-callback=\\\"onBotReplyDeleted\\\"><i class=\\\"fa fa-trash\\\"><\\/i> Delete<\\/a> <a style=\\\"display:none;\\\" x-show=\\\"isUnsavedContent\\\" @click.prevent=\\\"window.unsavedAlert()\\\" title=\\\"Duplicate\\\" class=\\\"btn btn-light btn-sm\\\" href=\\\"#\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a> <a x-show=\\\"!isUnsavedContent\\\" data-method=\\\"post\\\" href=\\\"https:\\/\\/darkred-gorilla-293444.hostingersite.com\\/vendor-console\\/bot-replies\\/30f28c6e-b27a-4df0-a8ff-e9d96269d21c\\/duplicate-process\\\" class=\\\"btn btn-light lw-ajax-link-action\\\" data-confirm=\\\"#lwDuplicateBotReply-template\\\" title=\\\"Duplicate\\\"><i class=\\\"fa fa-copy\\\"><\\/i><\\/a>\\n                                    <a class=\\\"btn btn-light\\\" style=\\\"padding: 1px;\\\"><\\/a><\\/div><button style=\\\"display:none;\\\" class=\\\"lw-delete-link-btn lw-operator-link-30f28c6e-b27a-4df0-a8ff-e9d96269d21c btn btn-warning btn-block btn-sm\\\" @click=\\\"window.$flowBuilderInstance.flowchart(\'deleteSelected\');\\\"><i class=\\\"fas fa-unlink\\\"><\\/i> Delete Link<\\/button>\",\"inputs\":{\"input\":{\"label\":\"-->\"}}}}},\"links\":[{\"fromOperator\":\"start\",\"fromConnector\":\"start_output\",\"fromSubConnector\":\"0\",\"toOperator\":\"587934aa-bf1d-4c37-8d68-1a5ac13a04a9\",\"toConnector\":\"input\",\"toSubConnector\":\"0\"},{\"fromOperator\":\"587934aa-bf1d-4c37-8d68-1a5ac13a04a9\",\"fromConnector\":\"1\",\"fromSubConnector\":\"0\",\"toOperator\":\"2222edc3-3062-484f-b852-4ee749948d65\",\"toConnector\":\"input\",\"toSubConnector\":\"0\"},{\"fromOperator\":\"587934aa-bf1d-4c37-8d68-1a5ac13a04a9\",\"fromConnector\":\"2\",\"fromSubConnector\":\"0\",\"toOperator\":\"30f28c6e-b27a-4df0-a8ff-e9d96269d21c\",\"toConnector\":\"input\",\"toSubConnector\":\"0\"}]}}', 'test12');

-- --------------------------------------------------------

--
-- Table structure for table `bot_replies`
--

CREATE TABLE `bot_replies` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply_text` text NOT NULL,
  `trigger_type` varchar(45) DEFAULT NULL COMMENT 'contains,is',
  `reply_trigger` varchar(255) DEFAULT NULL,
  `priority_index` tinyint(3) UNSIGNED DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `bot_flows__id` int(10) UNSIGNED DEFAULT NULL,
  `bot_replies__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bot_replies`
--

INSERT INTO `bot_replies` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `vendors__id`, `name`, `reply_text`, `trigger_type`, `reply_trigger`, `priority_index`, `__data`, `bot_flows__id`, `bot_replies__id`) VALUES
(17, 'fc956c03-4eb7-4af1-8131-682fca21dbf2', 2, '2025-01-11 08:06:16', '2025-01-10 13:07:36', 19, 'Test', 'Hello sir', 'is', 'Hi', NULL, '{\"interaction_message\":{\"interactive_type\":\"button\",\"media_link\":\"\",\"header_type\":null,\"header_text\":\"\",\"body_text\":\"Hello sir\",\"footer_text\":\"\",\"buttons\":{\"1\":\"Call Now\"},\"cta_url\":null,\"list_data\":null}}', 7, NULL),
(19, '0fbc7d7b-215c-46e1-b657-8ec77eb1bc8d', 2, '2025-01-11 08:07:51', '2025-01-11 08:07:04', 19, 'test2', '', 'is', 'Hi', NULL, '{\"media_message\":{\"media_link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6782269b49111-masthead-678226a8e83fd.png\",\"header_type\":\"image\",\"caption\":\"test\",\"file_name\":\"6782269b49111-masthead-678226a8e83fd.png\"}}', 7, NULL),
(23, '0e067f46-2c63-4a91-a856-fd31dda3995e', 1, '2025-01-11 12:08:12', '2025-01-11 12:07:11', 19, 'Whitelabel', '', 'is', 'Interested', NULL, '{\"media_message\":{\"media_link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/documents\\/67825edac6f55-whitelabel-pricing-67825eef876d4.pdf\",\"header_type\":\"document\",\"caption\":\"Thank you for showing interest in our product! \\ud83d\\ude0a \\r\\n\\r\\nOur team will get in touch with you shortly. \\ud83d\\udcde\\u2728 \\r\\n\\r\\nIn the meantime, feel free to check out our pricing plans for more details. \\ud83d\\udca1\\ud83d\\udcb0\",\"file_name\":\"67825edac6f55-whitelabel-pricing-67825eef876d4.pdf\"}}', NULL, NULL),
(24, '2222edc3-3062-484f-b852-4ee749948d65', 2, '2025-03-18 06:39:21', '2025-03-18 06:37:42', 19, 'hii', 'how are you?', 'is', 'Yes', NULL, '[]', 8, 25),
(25, '587934aa-bf1d-4c37-8d68-1a5ac13a04a9', 2, '2025-03-18 06:39:21', '2025-03-18 06:39:04', 19, 'question', 'what you want to do', 'is', 'test12', NULL, '{\"interaction_message\":{\"interactive_type\":\"button\",\"media_link\":\"\",\"header_type\":null,\"header_text\":\"\",\"body_text\":\"what you want to do\",\"footer_text\":\"\",\"buttons\":{\"1\":\"Yes\",\"2\":\"No\"},\"cta_url\":null,\"list_data\":null}}', 8, NULL),
(26, '30f28c6e-b27a-4df0-a8ff-e9d96269d21c', 2, '2025-03-18 06:39:38', '2025-03-18 06:39:31', 19, 'bye', 'bye', 'is', 'No', NULL, '[]', 8, 25);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `whatsapp_templates__id` int(10) UNSIGNED DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `users__id` int(10) UNSIGNED DEFAULT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `template_language` varchar(45) DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `title`, `whatsapp_templates__id`, `scheduled_at`, `users__id`, `vendors__id`, `template_name`, `__data`, `template_language`, `timezone`) VALUES
(16, '3759750d-de35-4473-b75a-a8fcde144d1f', 1, '2025-01-10 11:24:02', '2025-01-10 11:24:02', 'gh', 18, '2025-01-10 11:24:01', 21, 19, 'hello_world', '{\"total_contacts\":1,\"is_for_template_language_only\":false,\"is_all_contacts\":true}', 'en_US', 'Asia/Kolkata'),
(17, 'df4678a1-669e-4160-acac-3268e6943ad9', 1, '2025-01-10 12:19:12', '2025-01-10 12:19:12', 'welcome_camp', 19, '2025-01-10 12:19:11', 21, 19, 'welcome_msg', '{\"total_contacts\":3,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"8064971b-275d-40ac-a336-b20cbd3648cc\":{\"_id\":11,\"_uid\":\"8064971b-275d-40ac-a336-b20cbd3648cc\",\"title\":\"demo\",\"description\":null,\"total_group_contacts\":3}}}', 'en', 'Asia/Kolkata'),
(18, 'b518e086-443b-4937-a07b-03a971890460', 1, '2025-01-10 12:23:35', '2025-01-10 12:23:35', 'test_camp', 19, '2025-01-10 12:23:34', 21, 19, 'welcome_msg', '{\"total_contacts\":3,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"8064971b-275d-40ac-a336-b20cbd3648cc\":{\"_id\":11,\"_uid\":\"8064971b-275d-40ac-a336-b20cbd3648cc\",\"title\":\"demo\",\"description\":null,\"total_group_contacts\":3}}}', 'en', 'Asia/Kolkata'),
(19, '6a4997f1-a9d6-47b1-ab71-4c60e8831533', 1, '2025-01-10 12:25:53', '2025-01-10 12:25:53', 'camplign_one', 19, '2025-01-10 12:25:52', 21, 19, 'welcome_msg', '{\"total_contacts\":3,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"8064971b-275d-40ac-a336-b20cbd3648cc\":{\"_id\":11,\"_uid\":\"8064971b-275d-40ac-a336-b20cbd3648cc\",\"title\":\"demo\",\"description\":null,\"total_group_contacts\":3}}}', 'en', 'Asia/Kolkata'),
(20, 'abc94b3a-400d-4207-9f60-3198bce0da5c', 1, '2025-01-11 10:01:15', '2025-01-11 10:01:15', 'test', 18, '2025-01-11 10:01:14', 21, 19, 'hello_world', '{\"total_contacts\":4,\"is_for_template_language_only\":false,\"is_all_contacts\":true}', 'en_US', 'Asia/Kolkata'),
(21, '246a1ade-d83a-499a-b0c5-70e042cf1b51', 1, '2025-01-11 10:26:43', '2025-01-11 10:26:43', 'tes', 20, '2025-01-11 10:26:42', 21, 19, 'whitelabel', '{\"total_contacts\":2,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"0649a7c4-b738-4adf-ad2d-3e3113690e98\":{\"_id\":12,\"_uid\":\"0649a7c4-b738-4adf-ad2d-3e3113690e98\",\"title\":\"OMX ADMIN\",\"description\":null,\"total_group_contacts\":2}}}', 'en', 'Asia/Kolkata'),
(22, '513c526a-05b6-434e-a238-29e58ac9b0c9', 1, '2025-01-11 11:28:14', '2025-01-11 11:28:14', 'h', 20, '2025-01-11 11:28:13', 21, 19, 'whitelabel', '{\"total_contacts\":2,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"0649a7c4-b738-4adf-ad2d-3e3113690e98\":{\"_id\":12,\"_uid\":\"0649a7c4-b738-4adf-ad2d-3e3113690e98\",\"title\":\"OMX ADMIN\",\"description\":null,\"total_group_contacts\":2}}}', 'en', 'Asia/Kolkata'),
(23, '6529501e-e8b9-4635-aa49-8ee68e9ca19b', 1, '2025-03-08 07:17:42', '2025-03-08 07:17:42', 'aas', 18, '2025-03-08 07:17:41', 21, 19, 'hello_world', '{\"total_contacts\":2,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"0649a7c4-b738-4adf-ad2d-3e3113690e98\":{\"_id\":12,\"_uid\":\"0649a7c4-b738-4adf-ad2d-3e3113690e98\",\"title\":\"OMX ADMIN\",\"description\":null,\"total_group_contacts\":2}}}', 'en_US', 'Asia/Kolkata'),
(24, 'b4e68f6f-a1f6-4759-ab8d-ec1b63c30146', 1, '2025-03-08 08:16:06', '2025-03-08 08:16:06', 'sas', 18, '2025-03-08 08:16:05', 21, 19, 'hello_world', '{\"total_contacts\":2,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"0649a7c4-b738-4adf-ad2d-3e3113690e98\":{\"_id\":12,\"_uid\":\"0649a7c4-b738-4adf-ad2d-3e3113690e98\",\"title\":\"OMX ADMIN\",\"description\":null,\"total_group_contacts\":2}}}', 'en_US', 'Asia/Kolkata'),
(25, 'd973b180-464b-4806-a296-ec05e8b511c4', 1, '2025-03-10 10:13:31', '2025-03-10 10:13:31', 'testww', 18, '2025-03-10 10:13:29', 21, 19, 'hello_world', '{\"total_contacts\":3,\"is_for_template_language_only\":false,\"is_all_contacts\":false,\"selected_groups\":{\"0649a7c4-b738-4adf-ad2d-3e3113690e98\":{\"_id\":12,\"_uid\":\"0649a7c4-b738-4adf-ad2d-3e3113690e98\",\"title\":\"OMX ADMIN\",\"description\":null,\"total_group_contacts\":3}}}', 'en_US', 'Asia/Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_groups`
--

CREATE TABLE `campaign_groups` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `campaigns__id` int(10) UNSIGNED NOT NULL,
  `contact_groups__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` text DEFAULT NULL,
  `data_type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`_id`, `created_at`, `updated_at`, `name`, `value`, `data_type`) VALUES
(1, '2024-11-13 17:29:46', '2024-11-13 17:29:46', 'logo_name', '677fb298276c0---untitled-design-3.png', 1),
(2, '2024-11-13 17:30:02', '2024-11-13 17:30:02', 'small_logo_name', '677fb022bcc45---omx-flow-logo.png', 1),
(3, '2024-11-13 17:30:13', '2024-11-13 17:30:13', 'favicon_name', '677fb34067d9c---untitled-design-5.png', 1),
(4, '2024-11-13 17:31:07', '2024-11-13 17:31:07', 'name', 'OMX FLOW PANEL', 1),
(5, '2024-11-13 17:31:07', '2024-11-13 17:31:07', 'description', 'Welcome to OMX FLOW - Your Meta Verified Tech Solution Provider\r\nAt OMX FLOW, we bring you the power of Meta Verified technology through our streamlined user plan. Our standard plan is designed to cater to businesses of all sizes, offering a seamless integration of advanced tools and features to enhance your communication and automation needs.\r\n\r\nWhy Choose OMX FLOW?\r\nMeta Verified Excellence: Trusted and verified solutions for reliable performance.\r\nComprehensive Features: From bulk messaging to personalized outreach, auto-responders, and chatbots, we empower your business with cutting-edge tools.\r\nWhite-Label Solutions: Customize and brand your experience with our white-label offerings.\r\nUser-Friendly Interface: Simplified panel for easy navigation and usage.\r\nExceptional Support: Our team ensures smooth onboarding and continuous assistance.\r\nTransform your business communication today with OMX FLOW standard plan. Take the first step toward automation and growth.', 1),
(6, '2024-11-13 17:31:07', '2024-11-13 17:31:07', 'contact_email', 'support@omxdigital.in', 1),
(7, '2024-11-13 17:31:07', '2024-11-13 17:31:07', 'default_language', 'en', 1),
(8, '2024-11-13 17:31:07', '2024-11-13 17:31:07', 'timezone', 'Asia/Kolkata', 1),
(9, '2024-11-13 18:22:52', '2024-11-13 18:22:52', 'broadcast_connection_driver', 'pusher', 1),
(10, '2024-11-13 18:22:52', '2024-11-13 18:22:52', 'pusher_app_id', 'eyJpdiI6InJpNVNpQ1VLamkzQUErcDVTOXlOWmc9PSIsInZhbHVlIjoicloyaHdTQ3lDeWFPOU9La01EWGJUUT09IiwibWFjIjoiM2RiYzA4M2M1MjZiYjIxNDhiMjViMWI5N2NlNzhjZjYxYmQxYTZhMTRjOTY4MmM5MWQ2MTljNTJkMTNiMzEyZSIsInRhZyI6IiJ9', 1),
(11, '2024-11-13 18:22:52', '2024-11-13 18:22:52', 'pusher_app_key', 'eyJpdiI6IlV1ZGcxOTBLSWV4L21OYUlxeGxDd1E9PSIsInZhbHVlIjoiSHFIQ3Q3WVpiVTFCNjZwa2ROeEYvOXNkaWhBYk5nVWljUXFORkVXdVdhST0iLCJtYWMiOiI2ZDdjOGU0OTg2NzQ1ZDJkNjhjYTUzOGI2MzE5NzBiYWJjYzM2NWI2ZmQyYmM2Yzc1ZGU3NTk3MmM2Nzc3MGI2IiwidGFnIjoiIn0=', 1),
(12, '2024-11-13 18:22:52', '2024-11-13 18:22:52', 'pusher_app_secret', 'eyJpdiI6Ii9SYnp5aE85bFhNcTc3bk5IYWNzR3c9PSIsInZhbHVlIjoiWXJONGxONVJQQmVpMFpQY3ZqQnQwamIvc3NsclRUdXRFeDhseDJHdHdPMD0iLCJtYWMiOiIzYjBiZWU0YjMzNWYyN2Y1NmQ3MWQ2MDljMTdiYTcwNzM5ODc0ZWFmNGQyNjhkYWI2YzQzY2E0ZjNmYzljYTY4IiwidGFnIjoiIn0=', 1),
(13, '2024-11-13 18:22:52', '2024-11-13 18:22:52', 'pusher_app_cluster', 'eyJpdiI6IndmSFFybnI1MzlSSEs1MWpCZkFuVnc9PSIsInZhbHVlIjoiNnVDUC9LcFF3TkNLQ05ld29OSlhKZz09IiwibWFjIjoiMGYyZWEzMGRkNjczZTA5ZDE1NDhkYWI3YWM2Njg1MTI3NjJlY2NmYTA3NDEzMDE2NjNlODY2ZTFjYWM0ZjgzOCIsInRhZyI6IiJ9', 1),
(14, '2024-11-13 18:25:10', '2024-11-13 18:25:10', 'cron_setup_done_at', '2024-11-13 18:22:53', 1),
(15, '2024-11-13 18:26:02', '2024-11-13 18:26:02', 'cron_setup_using_artisan_at', '2024-11-13 18:26:02', 1),
(16, '2024-11-13 18:30:38', '2024-11-13 18:30:38', 'subscription_plans', '{\"paid\":{\"plan_3\":{\"id\":\"plan_3\",\"enabled\":\"on\",\"popular\":false,\"title\":\"Ultimate\",\"trial_days\":0,\"features\":{\"contacts\":{\"description\":\"Contacts\",\"limit\":\"-1\"},\"campaigns\":{\"limit_duration\":\"monthly\",\"limit_duration_title\":\"Per Month\",\"description\":\"Campaigns\",\"limit\":\"-1\"},\"bot_replies\":{\"description\":\"Bot Replies\",\"limit\":\"-1\"},\"bot_flows\":{\"description\":\"Bot Flows\",\"limit\":\"-1\"},\"contact_custom_fields\":{\"description\":\"Contact Custom Fields\",\"limit\":\"-1\"},\"system_users\":{\"description\":\"Team Members\\/Agents\",\"limit\":\"-1\"},\"ai_chat_bot\":{\"type\":\"switch\",\"description\":\"AI Chat Bot\",\"limit\":\"1\"},\"api_access\":{\"type\":\"switch\",\"description\":\"API and Webhook Access\",\"limit\":\"1\"}},\"charges\":{\"monthly\":{\"title\":\"monthly\",\"enabled\":0,\"price_id\":null,\"charge\":30},\"yearly\":{\"title\":\"yearly\",\"enabled\":\"on\",\"price_id\":null,\"charge\":20000}}},\"plan_1\":{\"id\":\"plan_1\",\"enabled\":0,\"popular\":true,\"title\":\"Standard\",\"trial_days\":0,\"features\":{\"contacts\":{\"description\":\"Contacts\",\"limit\":\"-1\"},\"campaigns\":{\"limit_duration\":\"monthly\",\"limit_duration_title\":\"Per Month\",\"description\":\"Campaigns\",\"limit\":\"-1\"},\"bot_replies\":{\"description\":\"Bot Replies\",\"limit\":\"-1\"},\"bot_flows\":{\"description\":\"Bot Flows\",\"limit\":\"-1\"},\"contact_custom_fields\":{\"description\":\"Contact Custom Fields\",\"limit\":\"-1\"},\"system_users\":{\"description\":\"Team Members\\/Agents\",\"limit\":\"-1\"},\"ai_chat_bot\":{\"type\":\"switch\",\"description\":\"AI Chat Bot\",\"limit\":\"1\"},\"api_access\":{\"type\":\"switch\",\"description\":\"API and Webhook Access\",\"limit\":\"1\"}},\"charges\":{\"monthly\":{\"title\":\"monthly\",\"enabled\":0,\"price_id\":null,\"charge\":10},\"yearly\":{\"title\":\"yearly\",\"enabled\":\"on\",\"price_id\":null,\"charge\":6000}}},\"plan_2\":{\"id\":\"plan_2\",\"enabled\":\"on\",\"popular\":false,\"title\":\"Premium\",\"trial_days\":0,\"features\":{\"contacts\":{\"description\":\"Contacts\",\"limit\":\"1000\"},\"campaigns\":{\"limit_duration\":\"monthly\",\"limit_duration_title\":\"Per Month\",\"description\":\"Campaigns\",\"limit\":\"50\"},\"bot_replies\":{\"description\":\"Bot Replies\",\"limit\":\"100\"},\"bot_flows\":{\"description\":\"Bot Flows\",\"limit\":\"10\"},\"contact_custom_fields\":{\"description\":\"Contact Custom Fields\",\"limit\":\"100\"},\"system_users\":{\"description\":\"Team Members\\/Agents\",\"limit\":\"10\"},\"ai_chat_bot\":{\"type\":\"switch\",\"description\":\"AI Chat Bot\",\"limit\":\"1\"},\"api_access\":{\"type\":\"switch\",\"description\":\"API and Webhook Access\",\"limit\":\"1\"}},\"charges\":{\"monthly\":{\"title\":\"monthly\",\"enabled\":0,\"price_id\":null,\"charge\":20},\"yearly\":{\"title\":\"yearly\",\"enabled\":\"on\",\"price_id\":null,\"charge\":15000}}}},\"free\":{\"id\":\"free\",\"enabled\":\"on\",\"title\":\"Free Plan\",\"trial_days\":0,\"features\":{\"contacts\":{\"description\":\"Contacts\",\"limit\":\"10\"},\"campaigns\":{\"limit_duration\":\"monthly\",\"limit_duration_title\":\"Per Month\",\"description\":\"Campaigns\",\"limit\":\"5\"},\"bot_replies\":{\"description\":\"Bot Replies\",\"limit\":\"10\"},\"bot_flows\":{\"description\":\"Bot Flows\",\"limit\":\"10\"},\"contact_custom_fields\":{\"description\":\"Contact Custom Fields\",\"limit\":\"2\"},\"system_users\":{\"description\":\"Team Members\\/Agents\",\"limit\":\"5\"},\"ai_chat_bot\":{\"type\":\"switch\",\"description\":\"AI Chat Bot\",\"limit\":\"1\"},\"api_access\":{\"type\":\"switch\",\"description\":\"API and Webhook Access\",\"limit\":\"1\"}}}}', 4),
(17, '2024-11-13 19:56:23', '2024-11-13 19:56:23', 'currency', 'INR', 1),
(18, '2024-11-13 19:56:23', '2024-11-13 19:56:23', 'currency_symbol', '&#8377;', 1),
(19, '2024-11-13 19:56:23', '2024-11-13 19:56:23', 'currency_value', 'INR', 1),
(20, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'enable_vendor_registration', '1', 2),
(21, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'message_for_disabled_registration', '', 1),
(22, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'activation_required_for_new_user', '0', 2),
(23, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'send_welcome_email', '0', 2),
(24, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'welcome_email_content', 'Welcome to OMX FLOW – your trusted platform for seamless WhatsApp marketing! We\'re thrilled to have you on board and can’t wait to help you leverage the power of WhatsApp to boost your business.\r\n\r\nHere’s what you can do next:\r\n\r\n🌟 Explore Your Dashboard\r\nLog in to your account to access powerful tools for bulk messaging, chat automation, and personalized marketing campaigns.\r\n\r\n🌟 Learn the Basics\r\nVisit our Getting Started Guide to understand how to use the platform effectively.\r\n\r\n🌟 Need Assistance?\r\nOur support team is here to help you every step of the way. Feel free to reach out anytime.\r\n\r\n🔒 Keep Your Account Secure\r\nWe prfioritize your privacy and data security. Always safeguard your login credentials.\r\n\r\nOnce again, welcome aboard! Let’s create amazing campaigns together.\r\n\r\nWarm Regards,\r\nTeam OMX FLOW\r\n📧 Email: support@omxdigital.in\r\n🌐 Website: https://omxflow.com', 1),
(25, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'disallow_disposable_emails', '0', 2),
(26, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'user_terms', 'Terms and Conditions\r\nEffective Date: 01-01-2025\r\n\r\nWelcome to OMX Flow! These Terms and Conditions (\"Terms\") govern your use of our website (https://omxflow.com) and our services. By accessing or using our platform, you agree to comply with and be bound by these Terms.\r\n\r\n1. Acceptance of Terms\r\nBy using our website or services, you agree to these Terms and our Privacy Policy. If you do not agree, you must stop using the platform immediately.\r\n\r\n2. Eligibility\r\nYou must be at least 18 years old to use OMX Flow. By accessing the platform, you confirm that you meet this age requirement.\r\n\r\n3. Services Provided\r\nOMX Flow offers tools for WhatsApp marketing, including:\r\n\r\nBulk messaging\r\nChat automation\r\nPersonalized marketing campaigns\r\nTask delegation and performance tracking\r\nThe services are subject to change without prior notice.\r\n\r\n4. User Responsibilities\r\nWhen using OMX Flow, you agree to:\r\n\r\nProvide accurate information during account registration.\r\nUse the platform in compliance with applicable laws and regulations.\r\nRefrain from using the platform for unauthorized or harmful activities, including spamming, harassment, or fraudulent actions.\r\n5. Account Security\r\nYou are responsible for maintaining the confidentiality of your login credentials. OMX Flow will not be liable for any loss resulting from unauthorized access to your account.\r\n\r\n6. Payment and Refunds\r\nUsers agree to pay all fees associated with the selected services.\r\nPayments are non-refundable unless stated otherwise in a specific service agreement.\r\n7. Intellectual Property\r\nAll content on the OMX Flow website, including text, graphics, logos, and software, is the property of OMX Digital Pvt Ltd or its licensors. Unauthorized use is prohibited.\r\n\r\n8. Privacy\r\nWe prioritize your privacy. Please review our Privacy Policy to understand how we collect, use, and safeguard your information.\r\n\r\n9. Limitation of Liability\r\nOMX Flow is not liable for any indirect, incidental, or consequential damages arising from the use of our platform.\r\n\r\n10. Termination\r\nWe reserve the right to suspend or terminate your access to OMX Flow at our discretion, without prior notice, for violating these Terms or engaging in harmful activities.\r\n\r\n11. Governing Law\r\nThese Terms are governed by and construed in accordance with the laws of India.\r\n\r\n12. Changes to Terms\r\nWe may update these Terms from time to time. The latest version will always be available on our website.\r\n\r\n13. Contact Us\r\nFor questions about these Terms, reach out to us at:\r\n📧 Email: support@omxdigital.in', 1),
(27, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'vendor_terms', 'Terms and Conditions\r\nEffective Date: 01-01-2025\r\n\r\nWelcome to OMX Flow! These Terms and Conditions (\"Terms\") govern your use of our website (https://omxflow.com) and our services. By accessing or using our platform, you agree to comply with and be bound by these Terms.\r\n\r\n1. Acceptance of Terms\r\nBy using our website or services, you agree to these Terms and our Privacy Policy. If you do not agree, you must stop using the platform immediately.\r\n\r\n2. Eligibility\r\nYou must be at least 18 years old to use OMX Flow. By accessing the platform, you confirm that you meet this age requirement.\r\n\r\n3. Services Provided\r\nOMX Flow offers tools for WhatsApp marketing, including:\r\n\r\nBulk messaging\r\nChat automation\r\nPersonalized marketing campaigns\r\nTask delegation and performance tracking\r\nThe services are subject to change without prior notice.\r\n\r\n4. User Responsibilities\r\nWhen using OMX Flow, you agree to:\r\n\r\nProvide accurate information during account registration.\r\nUse the platform in compliance with applicable laws and regulations.\r\nRefrain from using the platform for unauthorized or harmful activities, including spamming, harassment, or fraudulent actions.\r\n5. Account Security\r\nYou are responsible for maintaining the confidentiality of your login credentials. OMX Flow will not be liable for any loss resulting from unauthorized access to your account.\r\n\r\n6. Payment and Refunds\r\nUsers agree to pay all fees associated with the selected services.\r\nPayments are non-refundable unless stated otherwise in a specific service agreement.\r\n7. Intellectual Property\r\nAll content on the OMX Flow website, including text, graphics, logos, and software, is the property of OMX Digital Pvt Ltd or its licensors. Unauthorized use is prohibited.\r\n\r\n8. Privacy\r\nWe prioritize your privacy. Please review our Privacy Policy to understand how we collect, use, and safeguard your information.\r\n\r\n9. Limitation of Liability\r\nOMX Flow is not liable for any indirect, incidental, or consequential damages arising from the use of our platform.\r\n\r\n10. Termination\r\nWe reserve the right to suspend or terminate your access to OMX Flow at our discretion, without prior notice, for violating these Terms or engaging in harmful activities.\r\n\r\n11. Governing Law\r\nThese Terms are governed by and construed in accordance with the laws of India.\r\n\r\n12. Changes to Terms\r\nWe may update these Terms from time to time. The latest version will always be available on our website.\r\n\r\n13. Contact Us\r\nFor questions about these Terms, reach out to us at:\r\n📧 Email: support@omxdigital.in', 1),
(28, '2024-11-13 20:14:21', '2024-11-13 20:14:21', 'privacy_policy', 'Privacy Policy\r\nEffective Date: 01-01-2025\r\n\r\nOMX Flow (\"we,\" \"our,\" or \"us\") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website (https://omxflow.com) or use our services.\r\n\r\nBy accessing or using OMX Flow, you agree to the practices described in this Privacy Policy.\r\n\r\n1. Information We Collect\r\na. Personal Information\r\nWhen you register or interact with our platform, we may collect the following:\r\n\r\nName\r\nEmail address\r\nPhone number\r\nBilling and payment details\r\nb. Non-Personal Information\r\nWe also collect non-identifiable information such as:\r\n\r\nBrowser type and version\r\nIP address\r\nDevice information\r\nWebsite usage data (e.g., pages visited, time spent on the site)\r\nc. Cookies and Tracking Technologies\r\nWe use cookies and similar technologies to enhance your experience, analyze usage, and deliver personalized content.\r\n\r\n2. How We Use Your Information\r\nWe use the collected information for the following purposes:\r\n\r\nTo provide and improve our services.\r\nTo process transactions and send billing information.\r\nTo communicate updates, offers, and promotional content.\r\nTo ensure the security of your account.\r\nTo analyze website traffic and user behavior for optimization.\r\n3. How We Share Your Information\r\nWe do not sell, trade, or rent your personal information. However, we may share it under these circumstances:\r\n\r\nService Providers: With trusted third-party vendors who assist in delivering our services (e.g., payment processors, hosting providers).\r\nLegal Compliance: To comply with legal obligations or respond to valid legal requests.\r\nBusiness Transfers: In case of a merger, acquisition, or asset sale, your information may be transferred.\r\n4. Data Security\r\nWe implement robust security measures to protect your data, including encryption, firewalls, and secure access protocols. However, no method of transmission over the internet is entirely secure.\r\n\r\n5. Data Retention\r\nWe retain your personal data only as long as necessary for the purposes outlined in this Privacy Policy, unless a longer retention period is required by law.\r\n\r\n6. Your Rights\r\nYou have the following rights concerning your data:\r\n\r\nAccess: Request a copy of your personal data.\r\nCorrection: Update or correct inaccuracies in your data.\r\nDeletion: Request the deletion of your personal data.\r\nOpt-Out: Unsubscribe from marketing communications.\r\nTo exercise these rights, please contact us at support@omxdigital.in.\r\n\r\n7. Third-Party Links\r\nOur website may contain links to third-party websites. We are not responsible for the privacy practices of these external sites. Please review their privacy policies before engaging.\r\n\r\n8. Children’s Privacy\r\nOMX Flow is not intended for use by individuals under the age of 18. We do not knowingly collect information from children.\r\n\r\n9. Changes to This Privacy Policy\r\nWe may update this Privacy Policy periodically. Any changes will be posted on this page with the updated effective date.\r\n\r\n10. Contact Us\r\nIf you have questions or concerns about this Privacy Policy, please contact us:\r\n📧 Email: support@omxdigital.in', 1),
(29, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'use_env_default_email_settings', '0', 2),
(30, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'mail_driver', 'smtp', 1),
(31, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'mail_from_address', 'support@bots.omxflow.com', 1),
(32, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'mail_from_name', 'OMX FLOW PANEL', 1),
(33, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'smtp_mail_port', '465', 3),
(34, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'smtp_mail_host', 'smtp.hostinger.com', 1),
(35, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'smtp_mail_username', 'support@bots.omxflow.com', 1),
(36, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'smtp_mail_encryption', 'ssl', 1),
(37, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'smtp_mail_password_or_apikey', 'Smtp1.hostinger.com', 1),
(38, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'sparkpost_mail_password_or_apikey', '', 1),
(39, '2024-11-14 02:03:56', '2024-11-14 02:03:56', 'mailgun_domain', '', 1),
(40, '2024-11-14 04:09:39', '2024-11-14 04:09:39', 'contact_details', 'OMX DIGITAL PVT LTD\r\nPh: (M) +91 8170972754 \r\nWeb: omxflow.com | Email: support@omxdigital.in', 1),
(41, '2024-11-14 04:14:08', '2024-11-14 04:14:08', 'enable_upi_payment', '1', 2),
(42, '2024-11-14 04:14:08', '2024-11-14 04:14:08', 'payment_upi_address', 'bhj@fgf', 1),
(43, '2024-11-14 04:14:08', '2024-11-14 04:14:08', 'payment_upi_customer_notes', '', 1),
(44, '2024-11-14 05:02:39', '2024-11-14 05:02:39', 'current_home_page_view', 'outer-home-2', 1),
(45, '2024-11-14 05:02:39', '2024-11-14 05:02:39', 'other_home_page_url', '', 1),
(46, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'disable_bg_image', '1', 2),
(47, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bg_color', '#f2f4f7', 1),
(48, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_sidebar_bg_color', '#ffffff', 1),
(49, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_sidebar_text_color', '#212528', 1),
(50, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_primary', '#75c38c', 1),
(51, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_default', '#172b4d', 1),
(52, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_secondary', '#6c757d', 1),
(53, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_danger', '#ff1928', 1),
(54, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_light', '#adb5bd', 1),
(55, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_dark', '#212528', 1),
(56, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_warning', '#ffc107', 1),
(57, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_success', '#28a745', 1),
(58, '2024-11-16 16:47:24', '2024-11-16 16:47:24', 'app_bs_color_muted', '#8898aa', 1),
(59, '2024-11-18 16:47:01', '2024-11-18 16:47:01', 'enable_embedded_signup', '1', 2),
(60, '2024-11-18 16:47:01', '2024-11-18 16:47:01', 'embedded_signup_app_id', 'eyJpdiI6ImJVeUpMRGtlaDJ0SU1LK0oyMjMwWVE9PSIsInZhbHVlIjoiOW9Leldnb1RCbS9nbThnUGtVU0lpNTVCdnI0TjhTNWZySzZ1dFVRek5GMD0iLCJtYWMiOiJmMjRmYjcxYWI0YTAwOGI1YTExNTY3YTgyNzBlNGI5NjdhOGFjNzRiMTQxNzRiMDA4ZTY3MzA0ODUzZWI1ZjEwIiwidGFnIjoiIn0=', 1),
(61, '2024-11-18 16:47:01', '2024-11-18 16:47:01', 'embedded_signup_app_secret', 'eyJpdiI6ImNnWFZ4M2I5Y2tqOXFHdTR6WU8yTVE9PSIsInZhbHVlIjoiYS82SzhOU3dUWC9uWG9PRnNieXpQRUxndi9jcllJNHpkbDIvT3lqRTlGaUJKdURZZHBzNDFGNnZoOWUxNE4vWCIsIm1hYyI6IjYwMTVlMzBlNzlhNWUwNTc0OWYxMzBkOTQ2ZmYwZWE2ZjA1MzEzMjUxNTQ2ZjdjNDYyZWZjMmIxZmE5ZDdmMjgiLCJ0YWciOiIifQ==', 1),
(62, '2024-11-21 15:37:47', '2024-11-21 15:37:47', 'embedded_signup_config_id', 'eyJpdiI6IldZaTZJQzU5MGZjVm5YTndHWTJ5VVE9PSIsInZhbHVlIjoiL1h0NWdOeml2M09YUFdsSDE1ZTFCSm5YMXErck9SNXNkY0VFaStySXRPMD0iLCJtYWMiOiIxZmVhNzA4NWUxOTlkZTM2YmNmYTFiMjNlMDlmNDg5Yjk3NDg3ZjE0OTc4MDVlM2RiZTEzYzBlOTM4YjZhMTJiIiwidGFnIjoiIn0=', 1),
(63, '2024-11-21 15:49:20', '2024-11-21 15:49:20', 'enable_whatsapp_manual_signup', '1', 2),
(64, '2024-11-22 11:23:48', '2024-11-22 11:23:48', 'contacts_import_limit_per_request', '10000', 3),
(65, '2025-01-09 11:05:18', '2025-01-09 11:05:18', 'queue_setup_done_at', '2025-01-09 11:03:12', 1),
(66, '2025-01-09 11:05:28', '2025-01-09 11:05:28', 'cron_process_messages_per_lot', '35', 3),
(67, '2025-01-09 11:05:28', '2025-01-09 11:05:28', 'enable_queue_jobs_for_campaigns', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `countries__id` smallint(5) UNSIGNED DEFAULT NULL,
  `whatsapp_opt_out` tinyint(3) UNSIGNED DEFAULT NULL,
  `phone_verified_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `wa_id` varchar(45) DEFAULT NULL COMMENT 'Its phone number with country code without + or 0 prefix',
  `language_code` varchar(45) DEFAULT NULL,
  `disable_ai_bot` tinyint(3) UNSIGNED DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `assigned_users__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `first_name`, `last_name`, `countries__id`, `whatsapp_opt_out`, `phone_verified_at`, `email`, `email_verified_at`, `vendors__id`, `wa_id`, `language_code`, `disable_ai_bot`, `__data`, `assigned_users__id`) VALUES
(50, 'fbf4ad76-38c5-4181-9814-81c7a01ed506', NULL, '2025-01-11 10:00:42', '2025-01-11 10:00:42', 'Sir', NULL, 99, NULL, NULL, NULL, NULL, 19, '919951517157', NULL, 1, NULL, NULL),
(51, 'e88422e7-c2c0-49d8-9d38-8d4a30021425', NULL, '2025-01-11 10:09:21', '2025-01-11 10:09:21', 'Test', 'Contact', NULL, NULL, NULL, NULL, NULL, 19, '918170972754', NULL, 1, NULL, NULL),
(52, 'c60a5906-75ca-43cf-93f3-889820929f16', NULL, '2025-01-11 11:33:16', '2025-01-11 10:22:16', 'VINIT', 'JHA', 99, NULL, NULL, 'vjha.367@gmail.com', NULL, 19, '919832531461', 'en', 1, '[]', 21),
(53, 'b389ca09-a222-49b8-be76-02e413b24a28', NULL, '2025-03-10 10:12:51', '2025-03-10 10:12:51', 'Rohit', 'Sharma', 99, NULL, NULL, NULL, NULL, 19, '7908963371', 'en', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `input_name` varchar(255) NOT NULL,
  `input_type` varchar(15) DEFAULT NULL COMMENT 'Text,number,email etc',
  `vendors__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_values`
--

CREATE TABLE `contact_custom_field_values` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `contacts__id` int(10) UNSIGNED NOT NULL,
  `contact_custom_fields__id` int(10) UNSIGNED NOT NULL,
  `field_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_groups`
--

CREATE TABLE `contact_groups` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_groups`
--

INSERT INTO `contact_groups` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `title`, `description`, `vendors__id`) VALUES
(11, '8064971b-275d-40ac-a336-b20cbd3648cc', 1, '2025-01-10 12:16:51', '2025-01-10 12:16:51', 'demo', NULL, 19),
(12, '0649a7c4-b738-4adf-ad2d-3e3113690e98', 1, '2025-01-11 10:21:41', '2025-01-11 10:21:41', 'OMX ADMIN', NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `contact_labels`
--

CREATE TABLE `contact_labels` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `labels__id` int(10) UNSIGNED NOT NULL,
  `contacts__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `_id` smallint(5) UNSIGNED NOT NULL,
  `iso_code` char(2) DEFAULT NULL,
  `name_capitalized` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `iso3_code` char(3) DEFAULT NULL,
  `iso_num_code` smallint(6) DEFAULT NULL,
  `phone_code` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`_id`, `iso_code`, `name_capitalized`, `name`, `iso3_code`, `iso_num_code`, `phone_code`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 243),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 7),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

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
-- Table structure for table `group_contacts`
--

CREATE TABLE `group_contacts` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `contact_groups__id` int(10) UNSIGNED NOT NULL,
  `contacts__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_contacts`
--

INSERT INTO `group_contacts` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `contact_groups__id`, `contacts__id`) VALUES
(28, '5c5941ae-f898-419a-8885-6cfb8957c8f1', NULL, '2025-01-11 10:22:16', '2025-01-11 10:22:16', 12, 52),
(29, 'df1f88d7-6131-4c33-868e-e8defd767320', NULL, '2025-01-11 10:22:43', '2025-01-11 10:22:43', 12, 51),
(30, 'dfd541e8-e2f1-436d-a7b7-49c6f2b081e4', NULL, '2025-03-10 10:12:51', '2025-03-10 10:12:51', 11, 53),
(31, 'b116863b-ca42-49ed-a827-e682e296f0fa', NULL, '2025-03-10 10:12:51', '2025-03-10 10:12:51', 12, 53);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text_color` varchar(10) DEFAULT NULL,
  `bg_color` varchar(10) DEFAULT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempts` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`_id`, `created_at`, `updated_at`, `email`, `role`, `user_id`, `ip_address`) VALUES
(1, '2024-11-13 17:28:59', '2024-11-13 17:28:59', 'superadmin@yourdomain.com', 1, 1, '106.210.146.16'),
(2, '2024-11-13 17:52:49', '2024-11-13 17:52:49', 'superadmin@yourdomain.com', 1, 1, '106.210.146.16'),
(3, '2024-11-13 17:56:11', '2024-11-13 17:56:11', 'support@mtechsystems.co.in', 2, 2, '106.210.146.16'),
(4, '2024-11-13 18:35:07', '2024-11-13 18:35:07', 'support@mtechsystems.co.in', 2, 2, '106.210.146.16'),
(5, '2024-11-13 20:32:56', '2024-11-13 20:32:56', 'support@mtechsystems.co.in', 2, 2, '106.210.146.16'),
(6, '2024-11-14 01:48:23', '2024-11-14 01:48:23', 'superadmin@yourdomain.com', 1, 1, '106.210.146.16'),
(7, '2024-11-14 04:44:21', '2024-11-14 04:44:21', 'mkmayukadam@gmail.com', 2, 3, '106.220.161.86'),
(8, '2024-11-14 04:56:49', '2024-11-14 04:56:49', 'admin@mtechsystems.co.in', 1, 1, '106.220.161.86'),
(9, '2024-11-14 05:15:42', '2024-11-14 05:15:42', 'admin@mtechsystems.co.in', 1, 1, '106.220.161.86'),
(10, '2024-11-14 05:26:05', '2024-11-14 05:26:05', 'support@mtechsystems.co.in', 2, 2, '106.220.161.86'),
(11, '2024-11-14 08:19:58', '2024-11-14 08:19:58', 'admin@mtechsystems.co.in', 1, 1, '106.220.161.86'),
(12, '2024-11-14 10:41:52', '2024-11-14 10:41:52', 'admin@mtechsystems.co.in', 1, 1, '106.220.161.86'),
(13, '2024-11-14 10:42:42', '2024-11-14 10:42:42', 'support@mtechsystems.co.in', 2, 2, '106.220.161.86'),
(14, '2024-11-14 14:32:39', '2024-11-14 14:32:39', 'admin@mtechsystems.co.in', 1, 1, '106.210.183.105'),
(15, '2024-11-14 14:41:56', '2024-11-14 14:41:56', 'admin@mtechsystems.co.in', 1, 1, '106.210.183.105'),
(16, '2024-11-14 15:21:13', '2024-11-14 15:21:13', 'support@mtechsystems.co.in', 2, 2, '106.210.183.105'),
(17, '2024-11-14 16:38:57', '2024-11-14 16:38:57', 'admin@mtechsystems.co.in', 1, 1, '106.210.183.105'),
(18, '2024-11-15 06:05:32', '2024-11-15 06:05:32', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.29'),
(19, '2024-11-15 21:10:20', '2024-11-15 21:10:20', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.14'),
(20, '2024-11-16 10:16:51', '2024-11-16 10:16:51', 'admin@mtechsystems.co.in', 1, 1, '106.220.89.206'),
(21, '2024-11-16 13:43:18', '2024-11-16 13:43:18', 'admin@mtechsystems.co.in', 1, 1, '106.210.219.110'),
(22, '2024-11-16 15:53:56', '2024-11-16 15:53:56', 'admin@mtechsystems.co.in', 1, 1, '106.210.219.110'),
(23, '2024-11-16 16:57:04', '2024-11-16 16:57:04', 'admin@mtechsystems.co.in', 1, 1, '106.210.219.110'),
(24, '2024-11-16 17:00:53', '2024-11-16 17:00:53', 'admin@mtechsystems.co.in', 1, 1, '106.210.219.110'),
(25, '2024-11-17 10:11:46', '2024-11-17 10:11:46', 'admin@mtechsystems.co.in', 1, 1, '49.15.234.129'),
(26, '2024-11-17 11:07:51', '2024-11-17 11:07:51', 'admin@mtechsystems.co.in', 1, 1, '49.15.234.129'),
(27, '2024-11-17 11:08:50', '2024-11-17 11:08:50', 'admin@mtechsystems.co.in', 1, 1, '106.221.0.4'),
(28, '2024-11-18 09:11:40', '2024-11-18 09:11:40', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.27'),
(29, '2024-11-18 10:58:10', '2024-11-18 10:58:10', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.27'),
(30, '2024-11-18 12:51:19', '2024-11-18 12:51:19', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.27'),
(31, '2024-11-18 13:01:12', '2024-11-18 13:01:12', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.27'),
(32, '2024-11-18 15:45:52', '2024-11-18 15:45:52', 'shubhammore003@gmail.com', 2, 4, '2401:4900:79d8:eb71:88b8:ff:fec3:bcd8'),
(33, '2024-11-18 16:03:53', '2024-11-18 16:03:53', 'admin@mtechsystems.co.in', 1, 1, '110.227.0.27'),
(34, '2024-11-18 22:02:28', '2024-11-18 22:02:28', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(35, '2024-11-18 22:57:24', '2024-11-18 22:57:24', 'support@mtechsystems.co.in', 2, 2, '106.210.239.196'),
(36, '2024-11-18 23:56:59', '2024-11-18 23:56:59', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(37, '2024-11-18 23:57:35', '2024-11-18 23:57:35', 'support@mtechsystems.co.in', 2, 2, '106.210.239.196'),
(38, '2024-11-19 03:16:56', '2024-11-19 03:16:56', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(39, '2024-11-19 06:11:31', '2024-11-19 06:11:31', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(40, '2024-11-19 13:18:55', '2024-11-19 13:18:55', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(41, '2024-11-19 14:04:42', '2024-11-19 14:04:42', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(42, '2024-11-19 16:53:32', '2024-11-19 16:53:32', 'admin@mtechsystems.co.in', 1, 1, '106.210.239.196'),
(43, '2024-11-19 17:25:30', '2024-11-19 17:25:30', 'admin@mtechsystems.co.in', 1, 1, '106.216.251.144'),
(44, '2024-11-19 18:46:50', '2024-11-19 18:46:50', 'admin@mtechsystems.co.in', 1, 1, '106.216.251.144'),
(45, '2024-11-19 19:05:06', '2024-11-19 19:05:06', 'admin@mtechsystems.co.in', 1, 1, '106.216.251.144'),
(46, '2024-11-19 19:07:40', '2024-11-19 19:07:40', 'admin@mtechsystems.co.in', 1, 1, '2409:4042:2e4d:77e1:1c30:6f96:c9ae:29c9'),
(47, '2024-11-19 19:49:02', '2024-11-19 19:49:02', 'admin@mtechsystems.co.in', 1, 1, '2409:40c2:504c:fbd0:8000::'),
(48, '2024-11-19 20:45:53', '2024-11-19 20:45:53', 'admin@mtechsystems.co.in', 1, 1, '106.193.218.40'),
(49, '2024-11-19 21:13:30', '2024-11-19 21:13:30', 'admin@mtechsystems.co.in', 1, 1, '106.193.218.40'),
(50, '2024-11-19 21:16:59', '2024-11-19 21:16:59', 'superadmin@yourdomain.com', 1, 1, '106.193.218.40'),
(51, '2024-11-19 21:47:07', '2024-11-19 21:47:07', 'superadmin@yourdomain.com', 1, 1, '106.193.218.40'),
(52, '2024-11-20 04:28:58', '2024-11-20 04:28:58', 'superadmin@yourdomain.com', 1, 1, '106.220.129.121'),
(53, '2024-11-20 13:35:00', '2024-11-20 13:35:00', 'superadmin@yourdomain.com', 1, 1, '106.220.129.121'),
(54, '2024-11-21 15:25:33', '2024-11-21 15:25:33', 'superadmin@yourdomain.com', 1, 1, '106.220.129.121'),
(55, '2024-11-21 15:45:22', '2024-11-21 15:45:22', 'pratikadhikari003@gmail.com', 2, 5, '106.220.129.121'),
(56, '2024-11-21 16:00:48', '2024-11-21 16:00:48', 'superadmin@yourdomain.com', 1, 1, '106.220.129.121'),
(57, '2024-11-21 17:41:06', '2024-11-21 17:41:06', 'superadmin@yourdomain.com', 1, 1, '106.220.129.121'),
(58, '2024-11-21 17:41:49', '2024-11-21 17:41:49', 'superadmin@yourdomain.com', 1, 1, '106.220.129.121'),
(59, '2024-11-21 18:26:45', '2024-11-21 18:26:45', 'superadmin@yourdomain.com', 1, 1, '110.227.0.6'),
(60, '2024-11-21 18:27:06', '2024-11-21 18:27:06', 'superadmin@yourdomain.com', 1, 1, '110.227.0.6'),
(61, '2024-11-22 06:55:17', '2024-11-22 06:55:17', 'superadmin@yourdomain.com', 1, 1, '110.227.0.6'),
(62, '2024-11-22 13:22:01', '2024-11-22 13:22:01', 'superadmin@yourdomain.com', 1, 1, '106.195.10.131'),
(63, '2024-11-22 13:56:29', '2024-11-22 13:56:29', 'superadmin@yourdomain.com', 1, 1, '2409:4081:1c99:4267:549d:6d94:9e7f:695e'),
(64, '2024-11-22 16:32:01', '2024-11-22 16:32:01', 'superadmin@yourdomain.com', 1, 1, '2409:4081:1c99:4267:549d:6d94:9e7f:695e'),
(65, '2024-11-22 20:20:14', '2024-11-22 20:20:14', 'superadmin@yourdomain.com', 1, 1, '110.227.0.29'),
(66, '2024-11-23 04:09:18', '2024-11-23 04:09:18', 'superadmin@yourdomain.com', 1, 1, '110.227.0.29'),
(67, '2024-11-23 05:01:53', '2024-11-23 05:01:53', 'superadmin@yourdomain.com', 1, 1, '110.227.0.29'),
(68, '2024-11-23 06:11:00', '2024-11-23 06:11:00', 'superadmin@yourdomain.com', 1, 1, '2409:4081:1c99:4267:ac67:5c5:b87b:1fc8'),
(69, '2024-11-23 10:21:05', '2024-11-23 10:21:05', 'superadmin@yourdomain.com', 1, 1, '110.227.0.29'),
(70, '2024-11-23 10:50:02', '2024-11-23 10:50:02', 'anjanicreations09@gmail.com', 2, 7, '2409:40d4:116:21a3:fc5e:eb9f:1e43:1209'),
(71, '2024-11-24 16:33:00', '2024-11-24 16:33:00', 'superadmin@yourdomain.com', 1, 1, '106.220.190.14'),
(72, '2024-11-24 16:34:20', '2024-11-24 16:34:20', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(73, '2024-11-24 18:10:31', '2024-11-24 18:10:31', 'yogh84267@gmail.com', 2, 8, '2409:4042:2d92:40c4:4544:8057:bf8b:6a5d'),
(74, '2024-11-24 18:29:20', '2024-11-24 18:29:20', 'yogh84267@gmail.com', 2, 8, '2409:4042:2d92:40c4:4544:8057:bf8b:6a5d'),
(75, '2024-11-24 18:43:09', '2024-11-24 18:43:09', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(76, '2024-11-24 18:43:26', '2024-11-24 18:43:26', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(77, '2024-11-24 18:52:51', '2024-11-24 18:52:51', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(78, '2024-11-24 18:56:42', '2024-11-24 18:56:42', 'yogh84267@gmail.com', 2, 8, '2409:4042:2d92:40c4:4544:8057:bf8b:6a5d'),
(79, '2024-11-24 19:00:19', '2024-11-24 19:00:19', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(80, '2024-11-24 21:03:58', '2024-11-24 21:03:58', 'yogh84267@gmail.com', 1, 8, '2409:4042:2d92:40c4:5c25:1598:f310:bd09'),
(81, '2024-11-24 21:08:15', '2024-11-24 21:08:15', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(82, '2024-11-24 21:18:01', '2024-11-24 21:18:01', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(83, '2024-11-24 21:46:05', '2024-11-24 21:46:05', 'yogh84267@gmail.com', 1, 8, '2409:4042:2d92:40c4:5c25:1598:f310:bd09'),
(84, '2024-11-24 22:13:11', '2024-11-24 22:13:11', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(85, '2024-11-24 23:23:56', '2024-11-24 23:23:56', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(86, '2024-11-24 23:26:13', '2024-11-24 23:26:13', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(87, '2024-11-24 23:28:16', '2024-11-24 23:28:16', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(88, '2024-11-24 23:37:28', '2024-11-24 23:37:28', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(89, '2024-11-24 23:37:39', '2024-11-24 23:37:39', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(90, '2024-11-25 02:21:24', '2024-11-25 02:21:24', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(91, '2024-11-25 03:12:34', '2024-11-25 03:12:34', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(92, '2024-11-25 03:57:57', '2024-11-25 03:57:57', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(93, '2024-11-25 04:17:54', '2024-11-25 04:17:54', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(94, '2024-11-25 04:23:16', '2024-11-25 04:23:16', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(95, '2024-11-25 04:49:18', '2024-11-25 04:49:18', 'yogh84267@gmail.com', 1, 8, '2409:4042:2d92:40c4:5c25:1598:f310:bd09'),
(96, '2024-11-25 05:01:37', '2024-11-25 05:01:37', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(97, '2024-11-25 05:14:37', '2024-11-25 05:14:37', 'shubham@mtechsystems.co.in', 3, 9, '106.220.190.14'),
(98, '2024-11-25 05:18:19', '2024-11-25 05:18:19', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(99, '2024-11-25 06:35:29', '2024-11-25 06:35:29', 'admin@mtechsystems.co.in', 1, 1, '2409:4042:2d92:40c4:7963:403a:5236:df46'),
(100, '2024-11-25 06:44:41', '2024-11-25 06:44:41', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(101, '2024-11-25 06:53:02', '2024-11-25 06:53:02', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(102, '2024-11-25 06:53:40', '2024-11-25 06:53:40', 'test@test.com', 2, 10, '106.220.190.14'),
(103, '2024-11-25 07:29:09', '2024-11-25 07:29:09', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(104, '2024-11-25 07:53:48', '2024-11-25 07:53:48', 'test@test.com', 2, 10, '106.220.190.14'),
(105, '2024-11-25 08:36:46', '2024-11-25 08:36:46', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(106, '2024-11-25 09:47:44', '2024-11-25 09:47:44', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(107, '2024-11-25 09:53:13', '2024-11-25 09:53:13', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(108, '2024-11-25 09:58:26', '2024-11-25 09:58:26', 'admin@mtechsystems.co.in', 1, 1, '2409:40c2:500a:f229:8000::'),
(109, '2024-11-25 09:58:37', '2024-11-25 09:58:37', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(110, '2024-11-25 11:10:44', '2024-11-25 11:10:44', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(111, '2024-11-25 13:30:07', '2024-11-25 13:30:07', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(112, '2024-11-25 13:34:06', '2024-11-25 13:34:06', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(113, '2024-11-25 15:09:43', '2024-11-25 15:09:43', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(114, '2024-11-25 16:22:19', '2024-11-25 16:22:19', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(115, '2024-11-25 16:28:18', '2024-11-25 16:28:18', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(116, '2024-11-25 21:44:20', '2024-11-25 21:44:20', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(117, '2024-11-25 23:36:20', '2024-11-25 23:36:20', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(118, '2024-11-26 02:51:16', '2024-11-26 02:51:16', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(119, '2024-11-26 02:54:22', '2024-11-26 02:54:22', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(120, '2024-11-26 03:19:09', '2024-11-26 03:19:09', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(121, '2024-11-26 10:35:21', '2024-11-26 10:35:21', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(122, '2024-11-26 10:59:18', '2024-11-26 10:59:18', 'admin@mtechsystems.co.in', 1, 1, '2401:4900:79d2:a7cf:b0d7:8887:295:da9a'),
(123, '2024-11-26 11:48:00', '2024-11-26 11:48:00', 'manisaibitspilani@gmail.com', 2, 11, '203.110.83.42'),
(124, '2024-11-26 14:24:16', '2024-11-26 14:24:16', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(125, '2024-11-26 16:40:04', '2024-11-26 16:40:04', 'admin@mtechsystems.co.in', 1, 1, '2401:4900:79d2:a7cf:b0d7:8887:295:da9a'),
(126, '2024-11-26 16:58:05', '2024-11-26 16:58:05', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(127, '2024-11-26 17:38:50', '2024-11-26 17:38:50', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(128, '2024-11-26 18:11:43', '2024-11-26 18:11:43', 'support@mtechsystems.co.in', 2, 2, '2401:4900:1c45:c9f0:f0ea:2194:c66b:6900'),
(129, '2024-11-26 19:02:59', '2024-11-26 19:02:59', 'admin@mtechsystems.co.in', 1, 1, '2409:4081:911:9d0f:7890:3dd2:9616:935d'),
(130, '2024-11-26 19:13:48', '2024-11-26 19:13:48', 'admin@mtechsystems.co.in', 1, 1, '2409:4081:911:9d0f:7890:3dd2:9616:935d'),
(131, '2024-11-26 21:13:18', '2024-11-26 21:13:18', 'pratikadhikari003@gmail.com', 2, 5, '106.220.190.14'),
(132, '2024-11-26 21:24:04', '2024-11-26 21:24:04', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(133, '2024-11-26 21:33:54', '2024-11-26 21:33:54', 'pratikadhikari003@gmail.com', 2, 5, '106.220.190.14'),
(134, '2024-11-26 21:41:50', '2024-11-26 21:41:50', 'support@mtechsystems.co.in', 2, 2, '106.220.190.14'),
(135, '2024-11-27 03:48:26', '2024-11-27 03:48:26', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(136, '2024-11-27 04:05:54', '2024-11-27 04:05:54', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(137, '2024-11-27 05:35:03', '2024-11-27 05:35:03', 'admin@mtechsystems.co.in', 1, 1, '2409:4081:911:9d0f:7890:3dd2:9616:935d'),
(138, '2024-11-27 06:15:50', '2024-11-27 06:15:50', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(139, '2024-11-27 09:56:40', '2024-11-27 09:56:40', 'onlinefungame247@gmail.com', 2, 13, '2405:201:6009:f01f:edee:26bb:f7f:7dfb'),
(140, '2024-11-27 10:45:08', '2024-11-27 10:45:08', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(141, '2024-11-27 11:02:46', '2024-11-27 11:02:46', 'vjha.367@gmail.com', 2, 14, '2401:4900:1c00:3394:bc:9865:ee15:fe2'),
(142, '2024-11-27 14:34:36', '2024-11-27 14:34:36', 'admin@mtechsystems.co.in', 1, 1, '106.220.190.14'),
(143, '2024-11-28 06:11:48', '2024-11-28 06:11:48', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(144, '2024-11-28 08:10:44', '2024-11-28 08:10:44', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(145, '2024-11-28 08:17:46', '2024-11-28 08:17:46', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(146, '2024-11-28 08:32:10', '2024-11-28 08:32:10', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(147, '2024-11-28 08:37:37', '2024-11-28 08:37:37', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(148, '2024-11-28 09:31:46', '2024-11-28 09:31:46', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(149, '2024-11-28 09:35:22', '2024-11-28 09:35:22', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(150, '2024-11-28 09:36:35', '2024-11-28 09:36:35', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(151, '2024-11-28 11:11:35', '2024-11-28 11:11:35', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(152, '2024-11-28 11:14:08', '2024-11-28 11:14:08', 'shital@cellx.in', 2, 15, '123.201.245.34'),
(153, '2024-11-28 17:49:32', '2024-11-28 17:49:32', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(154, '2024-11-28 19:20:17', '2024-11-28 19:20:17', 'support@mtechsystems.co.in', 2, 2, '223.178.144.22'),
(155, '2024-11-28 22:06:47', '2024-11-28 22:06:47', 'admin@mtechsystems.co.in', 1, 1, '223.178.144.22'),
(156, '2024-11-28 22:09:13', '2024-11-28 22:09:13', 'support@mtechsystems.co.in', 2, 2, '223.178.144.22'),
(157, '2024-11-29 05:22:55', '2024-11-29 05:22:55', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.13'),
(158, '2024-11-29 07:58:44', '2024-11-29 07:58:44', 'shital@cellx.in', 2, 15, '219.91.175.91'),
(159, '2024-11-29 08:14:35', '2024-11-29 08:14:35', 'shital@cellx.in', 2, 15, '219.91.175.91'),
(160, '2024-11-29 08:57:42', '2024-11-29 08:57:42', 'onlinefungame247@gmail.com', 2, 13, '2405:201:6009:f01f:eda1:e19d:bcdc:f5be'),
(161, '2024-11-29 09:41:48', '2024-11-29 09:41:48', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.13'),
(162, '2024-11-29 09:45:23', '2024-11-29 09:45:23', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.13'),
(163, '2024-11-29 12:47:24', '2024-11-29 12:47:24', 'onlinefungame247@gmail.com', 2, 13, '2405:201:6009:f01f:eda1:e19d:bcdc:f5be'),
(164, '2024-11-29 13:13:19', '2024-11-29 13:13:19', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.13'),
(165, '2024-11-29 13:18:16', '2024-11-29 13:18:16', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.13'),
(166, '2024-11-29 14:52:21', '2024-11-29 14:52:21', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.13'),
(167, '2024-11-29 15:46:01', '2024-11-29 15:46:01', 'support@mtechsystems.co.in', 2, 2, '106.193.80.13'),
(168, '2024-11-29 16:34:14', '2024-11-29 16:34:14', 'onlinefungame247@gmail.com', 2, 13, '2405:201:6019:5854:a9c8:c121:934a:78c5'),
(169, '2024-11-29 19:22:25', '2024-11-29 19:22:25', 'support@mtechsystems.co.in', 2, 2, '49.15.230.81'),
(170, '2024-11-29 23:04:56', '2024-11-29 23:04:56', 'admin@mtechsystems.co.in', 1, 1, '2409:40c2:5059:a6db:8000::'),
(171, '2024-11-30 06:21:51', '2024-11-30 06:21:51', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(172, '2024-11-30 06:22:25', '2024-11-30 06:22:25', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(173, '2024-11-30 07:44:35', '2024-11-30 07:44:35', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(174, '2024-11-30 08:23:13', '2024-11-30 08:23:13', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(175, '2024-11-30 08:53:40', '2024-11-30 08:53:40', 'support@mtechsystems.co.in', 2, 2, '51.158.237.230'),
(176, '2024-11-30 09:04:25', '2024-11-30 09:04:25', 'onlinefungame247@gmail.com', 2, 13, '2401:4900:3149:6f1b:48aa:4ef2:7174:f6d9'),
(177, '2024-11-30 09:07:34', '2024-11-30 09:07:34', 'akshaygraphics789@gmail.com', 2, 16, '2401:4900:1c44:ebc7:2591:38b6:ce07:14e1'),
(178, '2024-11-30 09:09:00', '2024-11-30 09:09:00', 'support@mtechsystems.co.in', 2, 2, '51.158.237.230'),
(179, '2024-11-30 09:18:10', '2024-11-30 09:18:10', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(180, '2024-11-30 09:19:07', '2024-11-30 09:19:07', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(181, '2024-11-30 09:20:04', '2024-11-30 09:20:04', 'support@mtechsystems.co.in', 2, 2, '106.220.85.238'),
(182, '2024-11-30 09:21:47', '2024-11-30 09:21:47', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(183, '2024-11-30 11:38:03', '2024-11-30 11:38:03', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(184, '2024-11-30 11:59:01', '2024-11-30 11:59:01', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(185, '2024-11-30 12:11:24', '2024-11-30 12:11:24', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(186, '2024-11-30 13:33:18', '2024-11-30 13:33:18', 'support@mtechsystems.co.in', 2, 2, '106.220.85.238'),
(187, '2024-11-30 16:21:40', '2024-11-30 16:21:40', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(188, '2024-11-30 16:36:49', '2024-11-30 16:36:49', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(189, '2024-11-30 16:57:31', '2024-11-30 16:57:31', 'admin@mtechsystems.co.in', 1, 1, '2409:4042:2602:f010:f0a5:6fcf:a3b8:fa7c'),
(190, '2024-11-30 17:24:02', '2024-11-30 17:24:02', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(191, '2024-11-30 18:32:27', '2024-11-30 18:32:27', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(192, '2024-11-30 18:36:58', '2024-11-30 18:36:58', 'support@mtechsystems.co.in', 2, 2, '106.220.85.238'),
(193, '2024-11-30 19:50:43', '2024-11-30 19:50:43', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(194, '2024-11-30 19:51:50', '2024-11-30 19:51:50', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(195, '2024-11-30 20:35:01', '2024-11-30 20:35:01', 'support@mtechsystems.co.in', 2, 2, '106.220.85.238'),
(196, '2024-12-01 04:18:27', '2024-12-01 04:18:27', 'admin@mtechsystems.co.in', 1, 1, '2409:4042:2602:f010:157f:ac04:9f18:e94a'),
(197, '2024-12-01 07:27:43', '2024-12-01 07:27:43', 'admin@mtechsystems.co.in', 1, 1, '106.220.85.238'),
(198, '2024-12-01 19:26:57', '2024-12-01 19:26:57', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.15'),
(199, '2024-12-02 03:18:35', '2024-12-02 03:18:35', 'admin@mtechsystems.co.in', 1, 1, '2409:4042:4e49:afcb:d004:627e:8176:f1f9'),
(200, '2024-12-02 05:25:50', '2024-12-02 05:25:50', 'admin@mtechsystems.co.in', 1, 1, '106.193.80.15'),
(201, '2024-12-02 06:18:35', '2024-12-02 06:18:35', 'info@agtsindia.com', 2, 17, '14.194.181.190'),
(202, '2024-12-02 06:34:44', '2024-12-02 06:34:44', 'admin@mtechsystems.co.in', 1, 1, '110.227.16.25'),
(203, '2024-12-02 08:51:22', '2024-12-02 08:51:22', 'shital@cellx.in', 2, 15, '219.91.175.69'),
(204, '2024-12-02 09:34:41', '2024-12-02 09:34:41', 'info@agtsindia.com', 2, 17, '14.194.181.190'),
(205, '2024-12-02 09:40:20', '2024-12-02 09:40:20', 'admin@mtechsystems.co.in', 1, 1, '110.227.16.25'),
(206, '2024-12-02 09:48:54', '2024-12-02 09:48:54', 'admin@mtechsystems.co.in', 1, 1, '110.227.16.25'),
(207, '2024-12-02 11:05:40', '2024-12-02 11:05:40', 'mr.ayansaha@gmail.com', 2, 19, '115.99.186.161'),
(208, '2024-12-06 09:54:44', '2024-12-06 09:54:44', 'admin@mtechsystems.co.in', 1, 1, '106.193.246.238'),
(209, '2024-12-11 06:34:27', '2024-12-11 06:34:27', 'admin@example.in', 1, 1, '106.193.96.26'),
(210, '2024-12-11 06:43:38', '2024-12-11 06:43:38', 'test@test.com', 2, 20, '106.193.96.26'),
(211, '2025-01-09 11:02:12', '2025-01-09 11:02:12', 'admin@example.in', 1, 1, '2401:4900:1c85:e82e:856d:1d9b:28d:41b'),
(212, '2025-01-09 11:32:31', '2025-01-09 11:32:31', 'admin@example.in', 1, 1, '2401:4900:1c85:e82e:856d:1d9b:28d:41b'),
(213, '2025-01-09 12:13:35', '2025-01-09 12:13:35', 'admin@example.in', 1, 1, '2401:4900:1c85:e82e:856d:1d9b:28d:41b'),
(214, '2025-01-10 05:11:24', '2025-01-10 05:11:24', 'admin@example.in', 1, 1, '2401:4900:1c85:e82e:9ddb:cb37:32a5:e640'),
(215, '2025-01-10 09:50:38', '2025-01-10 09:50:38', 'admin@example.in', 1, 1, '2401:4900:1c85:e82e:9ddb:cb37:32a5:e640'),
(216, '2025-01-10 10:01:35', '2025-01-10 10:01:35', 'admin@example.in', 1, 1, '2401:4900:1c85:e82e:6842:e496:390d:fa70'),
(217, '2025-01-10 12:04:26', '2025-01-10 12:04:26', 'admin@example.in', 1, 1, '106.210.205.170'),
(218, '2025-01-11 05:22:04', '2025-01-11 05:22:04', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:6cd8:1099:f4bb:1847'),
(219, '2025-01-11 05:58:35', '2025-01-11 05:58:35', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:6cd8:1099:f4bb:1847'),
(220, '2025-01-11 06:00:36', '2025-01-11 06:00:36', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:6cd8:1099:f4bb:1847'),
(221, '2025-01-11 07:02:41', '2025-01-11 07:02:41', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:918a:8715:1496:7014'),
(222, '2025-01-11 07:53:15', '2025-01-11 07:53:15', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:a043:5a58:7fbe:1564'),
(223, '2025-01-11 07:55:35', '2025-01-11 07:55:35', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:a043:5a58:7fbe:1564'),
(224, '2025-01-11 09:56:51', '2025-01-11 09:56:51', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:918a:8715:1496:7014'),
(225, '2025-01-13 05:32:00', '2025-01-13 05:32:00', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:4c50:3e89:317b:26ce'),
(226, '2025-01-13 06:38:37', '2025-01-13 06:38:37', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:dc87:ac7f:d604:efdd'),
(227, '2025-01-13 07:15:54', '2025-01-13 07:15:54', 'admin@example.in', 1, 1, '2401:4900:1c00:59ed:4c50:3e89:317b:26ce'),
(228, '2025-01-14 07:41:11', '2025-01-14 07:41:11', 'admin@example.in', 1, 1, '2401:4900:1c84:38ee:8dc3:6b56:a55a:eb25'),
(229, '2025-01-15 10:14:43', '2025-01-15 10:14:43', 'admin@example.in', 1, 1, '2401:4900:1c84:38ee:f0db:2558:e540:9fa'),
(230, '2025-01-16 13:57:06', '2025-01-16 13:57:06', 'kishanpau09@gmail.com', 2, 24, '2a02:26f7:d6cc:6803:0:a98b:1839:f9f1'),
(231, '2025-01-17 09:46:41', '2025-01-17 09:46:41', 'admin@example.in', 1, 1, '2409:40e1:1142:4f69:dfb3:494c:7e23:6b57'),
(232, '2025-03-08 07:15:33', '2025-03-08 07:15:33', 'admin@example.in', 1, 1, '2401:4900:1c01:b4e:c4cb:c687:68e6:82ea'),
(233, '2025-03-08 07:17:43', '2025-03-08 07:17:43', 'admin@example.in', 1, 1, '106.201.141.138'),
(234, '2025-03-13 06:00:07', '2025-03-13 06:00:07', 'admin@example.in', 1, 1, '106.215.99.160'),
(235, '2025-03-13 08:18:37', '2025-03-13 08:18:37', 'admin@example.in', 1, 1, '2401:4900:1c85:1663:d43d:ee35:7c3a:514e'),
(236, '2025-03-18 05:07:31', '2025-03-18 05:07:31', 'admin@example.in', 1, 1, '122.163.43.233');

-- --------------------------------------------------------

--
-- Table structure for table `manual_subscriptions`
--

CREATE TABLE `manual_subscriptions` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `plan_id` varchar(100) DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `charges` decimal(13,4) DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `charges_frequency` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `manual_subscriptions`
--

INSERT INTO `manual_subscriptions` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `plan_id`, `ends_at`, `remarks`, `vendors__id`, `charges`, `__data`, `charges_frequency`) VALUES
(12, 'e317122a-29f2-4023-8caa-3d89f3a86a79', 'active', '2025-01-11 11:29:24', '2025-01-11 11:29:24', 'plan_3', '2026-01-11 00:00:00', NULL, 19, 20000.0000, NULL, 'yearly');

-- --------------------------------------------------------

--
-- Table structure for table `message_labels`
--

CREATE TABLE `message_labels` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `labels__id` int(10) UNSIGNED NOT NULL,
  `whatsapp_message_logs__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `show_in_menu` tinyint(3) UNSIGNED DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `vendors__id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `title`, `show_in_menu`, `content`, `type`, `vendors__id`, `slug`, `image_name`) VALUES
(1, '09035dc7-ee9f-40dd-90df-06a986f34584', '2024-11-13 20:23:31', '2025-01-09 12:44:23', 1, 'Privacy Policy', 1, '1. Introduction\r\nAt OMX FLOW , we are committed to protecting the privacy of our users. This Privacy Policy outlines how we collect, use, and protect personal data when you use our WhatsApp Business API platform.\r\n\r\n2. Data Collection\r\nUser Data: We collect information, including name, contact details, and payment information, during registration and use of the platform.\r\nUsage Data: We may collect technical data such as IP addresses, device types, and browsing patterns to improve platform functionality and ensure security.\r\nEnd-User Data: Users are responsible for obtaining consent from end-users before collecting or processing any personal information through WhatsApp messages.\r\n3. Data Usage\r\nService Provision: We use collected data to provide, support, and improve our WhatsApp Business API services.\r\nCommunication: We may use your contact information to notify you of updates, service changes, or support-related communications.\r\nCompliance: We process data as needed to comply with legal and regulatory requirements, including Meta’s policies.\r\n4. Data Sharing\r\nWe do not sell, rent, or trade user data. However, we may share information with trusted third-party service providers who support our operations, strictly under confidentiality obligations.\r\nWe may disclose data if required by law or to protect our legal rights.\r\n5. Data Security\r\nWe implement security measures to protect against unauthorized access, disclosure, alteration, or destruction of personal data. Users are also responsible for securing their account credentials.\r\n6. Data Retention\r\nWe retain user data only for as long as necessary to fulfill the purposes for which it was collected or to comply with legal obligations.\r\n7. User Rights\r\nUsers may access, modify, or delete their data as permitted by applicable law. For assistance, please contact our support team.\r\n8. Changes to this Privacy Policy\r\nWe may update this Privacy Policy periodically. Users will be notified of significant changes, and continued use of the platform signifies acceptance of the revised policy.\r\n9. Contact Information\r\nFor questions about this Privacy Policy, contact us at:\r\n\r\nEmail: support@omxdigital.in\r\nAddress: Siliguri-734010', 1, NULL, 'privacy', NULL),
(2, '4917936f-a1bd-4dfb-8ae1-d9f04885bd18', '2024-11-13 20:25:18', '2024-11-13 20:25:51', 1, 'Terms And Conditions', 1, '1. User Responsibilities\r\n- Users must use the Platform only for lawful purposes and follow Meta’s WhatsApp Business policies.\r\n- Fraudulent, deceptive, or misleading marketing practices are prohibited.\r\n\r\n2.  Account Security\r\n- Users are responsible for safeguarding their account credentials and must report unauthorized access immediately.\r\n\r\n3. Payments and Billing\r\n- Users agree to pay all service fees on time. Failure to pay may result in account suspension.\r\n\r\n4. Data Protection\r\n- Users must obtain necessary consent from end-users before sending WhatsApp messages and comply with all data privacy laws.\r\n\r\n5. Compliance with Meta Policies\r\n- Users must adhere to Meta’s guidelines to avoid suspension or termination of access to the WhatsApp Business API.', 1, NULL, 'terms', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`_id`, `created_at`, `email`, `token`) VALUES
(7, '2025-01-11 08:13:37', 'vinit.367@gmail.com', '$2y$10$SfT5tpkemLXYoFABpQjdAeEUYzukdZGgKvJPIU0K.0nNXOBbEtbC2');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(19) UNSIGNED NOT NULL,
  `vendor_model__id` bigint(19) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(19) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) DEFAULT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_id` bigint(19) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `contacts__id` int(10) UNSIGNED NOT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `vendor_users__id` int(10) UNSIGNED DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `assigned_users__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `amount` decimal(13,4) DEFAULT NULL,
  `reference_id` varchar(45) NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `vendors__id` int(10) UNSIGNED DEFAULT NULL,
  `subscriptions_id` bigint(19) UNSIGNED DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `manual_subscriptions__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL COMMENT 'Make unique with country phone code',
  `timezone` varchar(45) DEFAULT NULL,
  `registered_via` varchar(15) DEFAULT NULL COMMENT 'Social account',
  `ban_reason` varchar(255) DEFAULT NULL,
  `countries__id` smallint(5) UNSIGNED DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `user_roles__id` tinyint(3) UNSIGNED NOT NULL,
  `vendors__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`_id`, `_uid`, `created_at`, `updated_at`, `username`, `email`, `password`, `status`, `remember_token`, `first_name`, `last_name`, `mobile_number`, `timezone`, `registered_via`, `ban_reason`, `countries__id`, `two_factor_secret`, `two_factor_recovery_codes`, `email_verified_at`, `user_roles__id`, `vendors__id`) VALUES
(1, '50ee1967-7341-4c3a-b071-f2ea0722b179', '2024-11-13 17:26:47', '2024-12-06 10:04:52', 'superadmin', 'admin@example.in', '$2y$10$MSZxndE0sizE2b9rWU/RI.7BEfm3ioPFigDTL0u2A8GqTFsTzoi6u', 1, 'B2axi4SFPckEN7BY9PG0d6DrCtOZMsIRIDuZxdtl7mCuDbi5YXk4IOutXpE3', 'Super', 'Administrator', '9890103757', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(21, '0af193b5-c967-4f52-bd96-e9edd654af7b', '2025-01-09 11:07:20', '2025-01-09 11:07:20', 'omx', 'omxdigital22@gmail.com', '$2y$10$3s02Nt5WGMSguY6clbkzbOBmXWQcTyB3TilERUpJhFj/DouE/mxJS', 1, 't1VhgEoIIuJfh9b2e1N7dEhON2wT4f8nU0E8H8zIJJTg1w3VhjgXIDc4oiGl', 'OMX', 'DIGITAL', '9832531461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 19),
(23, 'f3e073e9-7921-4a58-be40-25c0dfacf0da', '2025-01-11 10:06:12', '2025-01-11 10:06:12', 'amit', 'support@omxdigital.in', '$2y$10$DxrNe6LNnmZw2YVAQnT//OBook6A/9FwwgW0b3ukr6nLG/lH1xZGS', 1, '1703cf4d-6c2a-4906-b303-c8fbbbf407e0', 'Amit', 'OM', '919832531462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `_id` tinyint(3) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`_id`, `_uid`, `status`, `created_at`, `updated_at`, `title`) VALUES
(1, '15f21c9f-88bb-4fec-bad4-03eb9d9065f8', 1, '2024-11-13 17:26:47', '2024-11-13 17:26:47', 'Super Admin'),
(2, '287133c4-2afc-4f65-ab3c-28b0df8a099a', 1, '2024-11-13 17:26:47', '2024-11-13 17:26:47', 'Vendor Admin'),
(3, '30ee1967-4nfc-4f65-87bb-g2ea0722b178', 1, '2024-11-13 17:26:47', '2024-11-13 17:26:47', 'Vendor User');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `key_name` varchar(45) NOT NULL,
  `value` text DEFAULT NULL,
  `data_type` tinyint(4) DEFAULT NULL,
  `users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `ban_reason` varchar(255) DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Restaurent',
  `stripe_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `ban_reason`, `type`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `title`, `logo_image`, `slug`, `domain`, `favicon`) VALUES
(19, 'f147d58e-16e7-4b11-9c34-c79bc1f37d6c', 1, '2025-01-09 11:07:20', '2025-01-09 11:07:20', NULL, 1, NULL, NULL, NULL, NULL, 'OMX', NULL, 'omx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_settings`
--

CREATE TABLE `vendor_settings` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` longtext DEFAULT NULL,
  `data_type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_settings`
--

INSERT INTO `vendor_settings` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `vendors__id`, `name`, `value`, `data_type`) VALUES
(95, '318f140e-120e-4e51-a9c3-62d02fba4208', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'logo_name', '', 1),
(96, '31aacbf7-633c-40c6-8c63-f93315c12ba2', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'favicon_name', '', 1),
(97, '8ab9a905-8796-4117-ba38-d5ac22f106e2', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'name', '', 1),
(98, '711cd599-d480-4583-b92a-394168de2def', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'vendor_slug', '', 1),
(99, 'e5a2e509-c9bc-4c09-8fec-2e1388bf699e', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'contact_email', 'vinit.367@gmail.com', 1),
(100, 'deb4404d-be27-4d3d-b14b-c6d54d01e4e6', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'contact_phone', '983254135', 1),
(101, '9b09d4b2-16d0-49d8-bb5a-d53f5d6bc61f', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'address', 'siliguri', 1),
(102, 'be4023c6-ed17-483e-89f0-0d3eca894353', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'postal_code', '734001', 1),
(103, 'd4ae1c08-ab2f-4afc-a443-4730766e24a2', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'city', 'slg', 1),
(104, 'b23ae7e2-4c2f-4b00-b2b1-7677bbb2c72e', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'state', 'wb', 1),
(105, '2e38b95b-6f4a-4e16-a9f9-a7f4ae582176', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'country', '99', 3),
(106, '68b14bb3-91da-48c8-b5d2-2b986726cd93', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'default_language', 'en', 1),
(107, 'eea54e01-536b-4c91-9d4e-56c4cfade3e9', NULL, '2025-01-09 11:08:29', '2025-01-09 11:08:29', 19, 'timezone', 'Asia/Kolkata', 1),
(108, '4e1a9831-4295-482a-a798-7146d9714fc7', NULL, '2025-01-10 10:00:19', '2025-01-10 10:00:19', 19, 'webhook_verified_at', '2025-01-11 11:16:48', 1),
(109, '440ff992-322d-4ad9-9215-aa2d3bf375d0', NULL, '2025-01-10 10:00:56', '2025-01-10 10:00:56', 19, 'facebook_app_id', 'eyJpdiI6IlUva0tlOTAwOGliZWROemlXcHdEWmc9PSIsInZhbHVlIjoieWFkVXp3c2Vac3dHNGxnQVVyV00xYWRCNUdsdVh6VURSOGhkZ3VVNEw3ND0iLCJtYWMiOiI5OWI5MTJiYjEyZWYwMWFhYjkzYTY2OGQ2MDc4ZjU1NmQ1MGViODQ0N2RlNzI0MTVlOWMwMGQxZThmNWNkMDE0IiwidGFnIjoiIn0=', 1),
(110, 'ca18babe-273a-44fc-8baa-456ea69461b5', NULL, '2025-01-10 10:00:56', '2025-01-10 10:00:56', 19, 'facebook_app_secret', 'eyJpdiI6Imh0UEJ5dmk2UGpnaG4yR3FvYTB3ZWc9PSIsInZhbHVlIjoibDFjQVdtSEpaeFdxRXNhRDBOOGZ5cE5hS3l6VFZoTmVxT3ZFQzVrblB3ZXcwczI1eVZRUVNIc3RkK2sxeVdrbiIsIm1hYyI6ImUyYWM0OTU5YzYzYWI4ZTA1MTQwNzMxMGQ2ZmU0OGMwMDhlNWQwZmRjNjFjOTdkYTZiZmYzMjdmY2Q4ODNlYjgiLCJ0YWciOiIifQ==', 1),
(111, '43c106dd-ec12-4d4b-9a70-067b39b27b3d', NULL, '2025-01-10 10:04:30', '2025-01-10 10:04:30', 19, 'whatsapp_token_info_data', '{\"app_id\":\"393071407142343\",\"type\":\"SYSTEM_USER\",\"application\":\"omx digital pvt ltd\",\"data_access_expires_at\":0,\"expires_at\":0,\"is_valid\":true,\"issued_at\":1736593270,\"scopes\":[\"catalog_management\",\"business_management\",\"whatsapp_business_management\",\"whatsapp_business_messaging\",\"public_profile\"],\"granular_scopes\":[{\"scope\":\"business_management\"},{\"scope\":\"whatsapp_business_management\"},{\"scope\":\"whatsapp_business_messaging\"}],\"user_id\":\"122136011522430048\"}', 4),
(112, '055073bd-634b-4aa6-9e59-3bbb9b46032d', NULL, '2025-01-10 10:04:35', '2025-01-10 10:04:35', 19, 'whatsapp_phone_numbers', '[{\"verified_name\":\"OMX Flow\",\"code_verification_status\":\"EXPIRED\",\"display_phone_number\":\"+91 81598 61911\",\"quality_rating\":\"GREEN\",\"platform_type\":\"CLOUD_API\",\"throughput\":{\"level\":\"STANDARD\"},\"webhook_configuration\":{\"application\":\"https:\\/\\/bots.omxflow.com\\/whatsapp-webhook\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\"},\"id\":\"477921225415071\"}]', 4),
(113, 'b16ef452-e5e5-48c9-92a8-4135d762ab93', NULL, '2025-01-10 10:04:35', '2025-01-10 10:04:35', 19, 'current_phone_number_number', 'eyJpdiI6IjV1VlZKRWVydk5tTERBUWp1R296dnc9PSIsInZhbHVlIjoiRDl6TVNkNmcxWnlVOC92RVIrVHVuZW1IM2RZdThRVGJoSVphei9rcHlTOD0iLCJtYWMiOiJmY2Y5MTU3Y2E0OTU3OTcwMzhiZGJmMDdmODFjYTVmNGRkNmM2ZmIzMzYxMjJhZDNmMDM4NDg3ZmVhMmM2N2VmIiwidGFnIjoiIn0=', 1),
(114, '15482bb5-9d44-4826-9398-c4ff7930da92', NULL, '2025-01-10 10:04:35', '2025-01-10 10:04:35', 19, 'current_phone_number_id', 'eyJpdiI6InBYRUh6RzJ3Yy9DVDVrWkZRbThpQUE9PSIsInZhbHVlIjoidDVmNVhENkZFR0huUmZ3OUV5R1dFN0syTW1rSHR3VVhSOTczVGlrMktKWT0iLCJtYWMiOiI3OTAzZWUwMjcwNzE2YmExZDA0MDUxMGZjZDFmYmRhMDAwMTkxYTk1N2ZjZDRmMzRkZmJlNGVhMDAwOTU4MWIzIiwidGFnIjoiIn0=', 1),
(115, '55c001be-5d61-477f-8c87-a2f648d0729d', NULL, '2025-01-10 10:04:35', '2025-01-10 10:04:35', 19, 'whatsapp_access_token', 'eyJpdiI6IjVpd2Z5a25aNnkreldxR281ajVIc3c9PSIsInZhbHVlIjoiZCtLT1pwSG9LMVVnZmF4eHAzdldHTWh2b2luZnY0SWI2cGY2TzIrdlhxenUyUUlXZGF5VTJxeitGdTlzcU42TUFJTmliN3RRSGdrVUFWbUFESnV5WGZzaCsvMUlqSjhpWFF1YWh2eHhCclgwcmQ4aWM1WFJLNUN5Z3lrV2Q1bHZveTc0bVhBcGJvR1BwRzlqRTh5c0pqMW1OUWkvYU9Hck5Jd1pZcVh0TC9RTm9CRVpqMklHUzd5QlliRHB5T083MkdCemxJY25NcW13dTVVdi9RU3BkSWZlZkttdG5YMHYzaCtRQ3hUTDhpV1U4VG5FcHRXQ0ZSVUYwblk1VDVFV2RSYTdtVDVROHlqYTFaQVRRYit4ckExQXpraGtqOGtmaS9QN2pQcjErWmM9IiwibWFjIjoiYzc1Mzc3NWM1Zjg0MDA1MGUyMGQ4ZDExYTQwZDA0YjUyNmM4M2JiM2I1MTU5MDc5MDU3ZGNlZDY4YjM5M2QwYSIsInRhZyI6IiJ9', 1),
(116, '0794838b-5a53-4868-b0e8-92206a15fd65', NULL, '2025-01-10 10:04:35', '2025-01-10 10:04:35', 19, 'whatsapp_business_account_id', 'eyJpdiI6Indma3hLUVFNc3BGNGRyZGtXdXpORnc9PSIsInZhbHVlIjoiNEUrbzNpc3pEdXNLZWsrT2FsZTc2aC9JY0lTZjc4TTRFTmtaR2I0Tm1kZz0iLCJtYWMiOiJiZWI4ZWU3MjMyMThiZDI5ZmVmZDdmNjgxNzNjZTJlNTA2ZTFjYzkxNzhkOTgzYzQ2MTZiNWEzZDZhYmU0MThlIiwidGFnIjoiIn0=', 1),
(118, '57d7522a-4ca5-4cab-a541-e4d8099333c5', NULL, '2025-01-10 10:04:36', '2025-01-10 10:04:36', 19, 'whatsapp_health_status_data', '{\"543180505542014\":{\"whatsapp_business_account_id\":\"543180505542014\",\"health_status_updated_at\":\"2025-03-10T10:11:32.201955Z\",\"health_status_updated_at_formatted\":\"Monday 10th March 2025 3:41:32 pm\",\"health_data\":{\"health_status\":{\"can_send_message\":\"AVAILABLE\",\"entities\":[{\"entity_type\":\"WABA\",\"id\":\"543180505542014\",\"can_send_message\":\"AVAILABLE\"},{\"entity_type\":\"BUSINESS\",\"id\":\"439262291883732\",\"can_send_message\":\"AVAILABLE\"},{\"entity_type\":\"APP\",\"id\":\"393071407142343\",\"can_send_message\":\"AVAILABLE\"}]},\"id\":\"543180505542014\"}}}', 4),
(119, 'c5947d32-bd8a-43dc-a5f0-d860294e1835', NULL, '2025-01-10 10:04:36', '2025-01-10 10:04:36', 19, 'is_disabled_message_sound_notification', '0', 2),
(120, '9cdfac24-0f60-4e05-88ba-c1cec92bace7', NULL, '2025-01-10 10:05:16', '2025-01-10 10:05:16', 19, 'test_recipient_contact', 'e88422e7-c2c0-49d8-9d38-8d4a30021425', 1),
(122, 'ff96ac9e-1cc6-4791-acaa-d7960d8c2eec', NULL, '2025-01-10 11:24:04', '2025-01-10 11:24:04', 19, 'webhook_messages_field_verified_at', '2025-01-10 11:24:04', 1),
(124, 'edc26670-a386-4f22-94d6-e92734fcef58', NULL, '2025-01-11 11:19:18', '2025-01-11 11:19:18', 19, 'whatsapp_access_token_expired', '0', 2),
(125, '5f5a8693-76ae-43d7-b2a8-7d15d00e3843', NULL, '2025-01-11 12:19:36', '2025-01-11 12:19:36', 19, 'vendor_api_access_token', 'eyJpdiI6IkcvOXR1Rm1YS0crZ3hOaHpWTFFScXc9PSIsInZhbHVlIjoiWkROZENsOWhkRmIzdWJ1MXFRZDBjWkhJcEt4ZFdKQW9mVzl6RUdwa3pEdFNwVkExYWVIeFlqcUJPcWVGcXJicEJLYXM4aUwyTGdSQ3ZsUVdFajROOWlGWGMwK2F1ZjBhWERCeFJWT3IyZ0U9IiwibWFjIjoiMzdjNTkxYjk5ZmMwMDE2ZTI1NDlhZWYwMzQ3YTRmN2Q2ZmQ0M2FlZGVhYzY1YTZiZDNmZmQ0NzIwMzM4YzEyNCIsInRhZyI6IiJ9', 1),
(129, '583c414b-fdcc-445c-9f76-2aa62f8ec728', NULL, '2025-03-11 12:57:25', '2025-03-11 12:57:25', 19, 'enable_vendor_webhook', '1', 2),
(130, '98cf7a88-8e60-40f1-8122-27cd2b467a2b', NULL, '2025-03-11 12:57:25', '2025-03-11 12:57:25', 19, 'vendor_webhook_endpoint', 'https://wa-test-2.onrender.com/webhook', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_users`
--

CREATE TABLE `vendor_users` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_users`
--

INSERT INTO `vendor_users` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `vendors__id`, `users__id`, `__data`) VALUES
(2, '5d3f8a9c-98c1-4d86-b905-21636daaa31b', NULL, '2025-01-11 10:31:39', '2025-01-11 10:06:12', 19, 23, '{\"permissions\":{\"administrative\":\"deny\",\"manage_contacts\":\"deny\",\"manage_campaigns\":\"deny\",\"messaging\":\"allow\",\"manage_templates\":\"deny\",\"assigned_chats_only\":\"deny\",\"manage_bot_replies\":\"deny\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_message_logs`
--

CREATE TABLE `whatsapp_message_logs` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contacts__id` int(10) UNSIGNED DEFAULT NULL,
  `campaigns__id` int(10) UNSIGNED DEFAULT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `contact_wa_id` varchar(45) DEFAULT NULL,
  `wamid` varchar(255) DEFAULT NULL,
  `wab_phone_number_id` varchar(45) DEFAULT NULL,
  `is_incoming_message` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Incoming,outgoing',
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `messaged_at` datetime DEFAULT NULL,
  `is_forwarded` tinyint(1) DEFAULT NULL,
  `replied_to_whatsapp_message_logs__uid` char(36) DEFAULT NULL,
  `messaged_by_users__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whatsapp_message_logs`
--

INSERT INTO `whatsapp_message_logs` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `message`, `contacts__id`, `campaigns__id`, `vendors__id`, `contact_wa_id`, `wamid`, `wab_phone_number_id`, `is_incoming_message`, `__data`, `messaged_at`, `is_forwarded`, `replied_to_whatsapp_message_logs__uid`, `messaged_by_users__id`) VALUES
(530, '8123c5ec-5384-4283-bd5b-933b82680e47', 'read', '2025-01-10 11:24:40', '2025-01-10 11:24:03', NULL, NULL, 16, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSMzkyRTdGNEI5OTE4QTZFNUIzAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":46,\"_uid\":\"93738073-832b-45f5-9bb2-f2e86c75ad66\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSMzkyRTdGNEI5OTE4QTZFNUIzAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSMzkyRTdGNEI5OTE4QTZFNUIzAA==\",\"status\":\"sent\",\"timestamp\":\"1736508243\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"50df0f8c786f1387eb152df16cddaf2b\",\"expiration_timestamp\":\"1736594700\",\"origin\":{\"type\":\"utility\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"utility\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSMzkyRTdGNEI5OTE4QTZFNUIzAA==\",\"status\":\"delivered\",\"timestamp\":\"1736508244\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"50df0f8c786f1387eb152df16cddaf2b\",\"origin\":{\"type\":\"utility\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"utility\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSMzkyRTdGNEI5OTE4QTZFNUIzAA==\",\"status\":\"read\",\"timestamp\":\"1736508279\",\"recipient_id\":\"919832531461\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 11:24:04', NULL, NULL, NULL),
(531, '289b4488-3623-4a3c-bd00-b4c1bbbafa6e', 'read', '2025-01-10 11:25:29', '2025-01-10 11:25:19', 'ok', NULL, NULL, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhgWM0VCMDUyNjhGMjI2QjcwQURENzAxNgA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Vinit Kumar Jha\"},\"wa_id\":\"919832531461\"}],\"messages\":[{\"from\":\"919832531461\",\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhgWM0VCMDUyNjhGMjI2QjcwQURENzAxNgA=\",\"timestamp\":\"1736508318\",\"text\":{\"body\":\"ok\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 11:25:18', NULL, NULL, NULL),
(532, 'bd3f3ca7-a5ef-4c1e-b1c7-e50387912008', 'read', '2025-01-10 13:01:38', '2025-01-10 11:26:32', 'Hi', NULL, NULL, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMDc4NUM1Nzc2NDE4MkJFRTFFMQA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Manisha Ray\"},\"wa_id\":\"917001148119\"}],\"messages\":[{\"from\":\"917001148119\",\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMDc4NUM1Nzc2NDE4MkJFRTFFMQA=\",\"timestamp\":\"1736508391\",\"text\":{\"body\":\"Hi\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 11:26:31', NULL, NULL, NULL),
(533, '661b40f2-5844-4c0b-b8b8-61a85ae6af14', 'read', '2025-01-10 12:07:19', '2025-01-10 11:27:00', 'ok', NULL, NULL, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhgWM0VCMDQyNENEODQwNENGQTdGMDY0MwA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Vinit Kumar Jha\"},\"wa_id\":\"919832531461\"}],\"messages\":[{\"from\":\"919832531461\",\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhgWM0VCMDQyNENEODQwNENGQTdGMDY0MwA=\",\"timestamp\":\"1736508419\",\"text\":{\"body\":\"ok\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 11:26:59', NULL, NULL, NULL),
(535, '6a201883-bbf9-43d8-8712-a89c0da4fd5a', 'read', '2025-01-10 12:35:01', '2025-01-10 12:19:13', NULL, NULL, 17, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSREUyNEVBODIxQjI3RENDQURBAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":46,\"_uid\":\"93738073-832b-45f5-9bb2-f2e86c75ad66\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSREUyNEVBODIxQjI3RENDQURBAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678110345ce57-masthead-3-6781103fd9c6b.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSREUyNEVBODIxQjI3RENDQURBAA==\",\"status\":\"sent\",\"timestamp\":\"1736511555\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSREUyNEVBODIxQjI3RENDQURBAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511589\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSREUyNEVBODIxQjI3RENDQURBAA==\",\"status\":\"read\",\"timestamp\":\"1736512500\",\"recipient_id\":\"919832531461\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:19:49', NULL, NULL, NULL),
(536, 'da5137de-3c9f-4004-9e46-2e3d8d2e4469', 'read', '2025-01-10 12:19:23', '2025-01-10 12:19:13', NULL, NULL, 17, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSMDMyOUZGNTk2OTc3QjA1MDkzAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":47,\"_uid\":\"566bd544-536c-4f60-abe9-9e6b7c19f0b9\",\"first_name\":\"Manisha\",\"last_name\":\"  Ray\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"917001148119\",\"wa_id\":\"917001148119\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSMDMyOUZGNTk2OTc3QjA1MDkzAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678110345ce57-masthead-3-6781103fd9c6b.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSMDMyOUZGNTk2OTc3QjA1MDkzAA==\",\"status\":\"sent\",\"timestamp\":\"1736511556\",\"recipient_id\":\"917001148119\",\"conversation\":{\"id\":\"b8edd785af5a0f2440c43af90017a171\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSMDMyOUZGNTk2OTc3QjA1MDkzAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511556\",\"recipient_id\":\"917001148119\",\"conversation\":{\"id\":\"b8edd785af5a0f2440c43af90017a171\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSMDMyOUZGNTk2OTc3QjA1MDkzAA==\",\"status\":\"read\",\"timestamp\":\"1736511562\",\"recipient_id\":\"917001148119\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:19:16', NULL, NULL, NULL),
(537, '11ed8030-76fe-4eaa-8e3e-c94a71e9c048', 'sent', '2025-01-10 12:19:17', '2025-01-10 12:19:13', NULL, NULL, 17, 19, '918369706985', 'wamid.HBgMOTE4MzY5NzA2OTg1FQIAERgSQzlDQ0Y3RTBGNzg5NTMyMTQ5AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":48,\"_uid\":\"5828342b-c4f6-4ff6-93d5-4c6ea90ba8ff\",\"first_name\":\"Rushikesh\",\"last_name\":\"System\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918369706985\",\"wa_id\":\"918369706985\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MzY5NzA2OTg1FQIAERgSQzlDQ0Y3RTBGNzg5NTMyMTQ5AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678110345ce57-masthead-3-6781103fd9c6b.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5NzA2OTg1FQIAERgSQzlDQ0Y3RTBGNzg5NTMyMTQ5AA==\",\"status\":\"sent\",\"timestamp\":\"1736511556\",\"recipient_id\":\"918369706985\",\"conversation\":{\"id\":\"dfe33d2ff548345a8ca1cce9b70ad6f8\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}]}}', NULL, NULL, NULL, NULL),
(539, '18007a60-2d8e-4e97-8635-18ee6dccc936', 'read', '2025-01-10 12:35:01', '2025-01-10 12:23:36', NULL, NULL, 18, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRkE5MDUwMURGRjA5NzRENENEAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":46,\"_uid\":\"93738073-832b-45f5-9bb2-f2e86c75ad66\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRkE5MDUwMURGRjA5NzRENENEAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6781113f217bc-masthead-3-67811146350ac.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRkE5MDUwMURGRjA5NzRENENEAA==\",\"status\":\"sent\",\"timestamp\":\"1736511817\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRkE5MDUwMURGRjA5NzRENENEAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511819\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRkE5MDUwMURGRjA5NzRENENEAA==\",\"status\":\"read\",\"timestamp\":\"1736512500\",\"recipient_id\":\"919832531461\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:23:39', NULL, NULL, NULL),
(540, '8f315b26-2154-442b-b92d-d66d910f3406', 'read', '2025-01-10 12:23:38', '2025-01-10 12:23:36', NULL, NULL, 18, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSNkJBOTFBNTJEMDA1MzI4MDczAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":47,\"_uid\":\"566bd544-536c-4f60-abe9-9e6b7c19f0b9\",\"first_name\":\"Manisha\",\"last_name\":\"  Ray\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"917001148119\",\"wa_id\":\"917001148119\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSNkJBOTFBNTJEMDA1MzI4MDczAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6781113f217bc-masthead-3-67811146350ac.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSNkJBOTFBNTJEMDA1MzI4MDczAA==\",\"status\":\"sent\",\"timestamp\":\"1736511817\",\"recipient_id\":\"917001148119\",\"conversation\":{\"id\":\"b8edd785af5a0f2440c43af90017a171\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSNkJBOTFBNTJEMDA1MzI4MDczAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511817\",\"recipient_id\":\"917001148119\",\"conversation\":{\"id\":\"b8edd785af5a0f2440c43af90017a171\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSNkJBOTFBNTJEMDA1MzI4MDczAA==\",\"status\":\"read\",\"timestamp\":\"1736511818\",\"recipient_id\":\"917001148119\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:23:37', NULL, NULL, NULL),
(541, 'a52f87dc-40cc-4f4c-895d-4345e328ae1c', 'read', '2025-01-10 12:23:56', '2025-01-10 12:23:36', NULL, NULL, 18, 19, '918369106985', 'wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMzgwQ0YyMjExMTAzRjI5RkNFAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":49,\"_uid\":\"41ad79ac-2f67-4682-9675-3ed63d384005\",\"first_name\":\"Rushikesh\",\"last_name\":null,\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918369106985\",\"wa_id\":\"918369106985\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMzgwQ0YyMjExMTAzRjI5RkNFAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6781113f217bc-masthead-3-67811146350ac.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMzgwQ0YyMjExMTAzRjI5RkNFAA==\",\"status\":\"sent\",\"timestamp\":\"1736511818\",\"recipient_id\":\"918369106985\",\"conversation\":{\"id\":\"0ec26f83f3835fa84bb255d080b5d568\",\"expiration_timestamp\":\"1736598240\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMzgwQ0YyMjExMTAzRjI5RkNFAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511819\",\"recipient_id\":\"918369106985\",\"conversation\":{\"id\":\"0ec26f83f3835fa84bb255d080b5d568\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMzgwQ0YyMjExMTAzRjI5RkNFAA==\",\"status\":\"read\",\"timestamp\":\"1736511835\",\"recipient_id\":\"918369106985\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:23:39', NULL, NULL, NULL),
(543, '479f699c-d835-47ef-b109-ea9f0b1ced7d', 'read', '2025-01-10 12:35:01', '2025-01-10 12:25:54', NULL, NULL, 19, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQkIzQjFDRkYxMzUzRkIxQjgyAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":46,\"_uid\":\"93738073-832b-45f5-9bb2-f2e86c75ad66\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQkIzQjFDRkYxMzUzRkIxQjgyAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678111c3bb6e3-masthead-3-678111d071983.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQkIzQjFDRkYxMzUzRkIxQjgyAA==\",\"status\":\"sent\",\"timestamp\":\"1736511956\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQkIzQjFDRkYxMzUzRkIxQjgyAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511958\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQkIzQjFDRkYxMzUzRkIxQjgyAA==\",\"status\":\"read\",\"timestamp\":\"1736512500\",\"recipient_id\":\"919832531461\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:25:58', NULL, NULL, NULL),
(544, 'c5576453-39a0-4378-9d3b-5babdf149d09', 'read', '2025-01-10 12:26:01', '2025-01-10 12:25:54', NULL, NULL, 19, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSRUEwMzE1MjMxRkJGMkNDREVFAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":47,\"_uid\":\"566bd544-536c-4f60-abe9-9e6b7c19f0b9\",\"first_name\":\"Manisha\",\"last_name\":\"  Ray\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"917001148119\",\"wa_id\":\"917001148119\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSRUEwMzE1MjMxRkJGMkNDREVFAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678111c3bb6e3-masthead-3-678111d071983.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSRUEwMzE1MjMxRkJGMkNDREVFAA==\",\"status\":\"sent\",\"timestamp\":\"1736511955\",\"recipient_id\":\"917001148119\",\"conversation\":{\"id\":\"b8edd785af5a0f2440c43af90017a171\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSRUEwMzE1MjMxRkJGMkNDREVFAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511956\",\"recipient_id\":\"917001148119\",\"conversation\":{\"id\":\"b8edd785af5a0f2440c43af90017a171\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSRUEwMzE1MjMxRkJGMkNDREVFAA==\",\"status\":\"read\",\"timestamp\":\"1736511961\",\"recipient_id\":\"917001148119\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:25:56', NULL, NULL, NULL),
(545, '3210a753-cb2a-4cef-961a-396c328367c1', 'read', '2025-01-10 12:26:04', '2025-01-10 12:25:54', NULL, NULL, 19, 19, '918369106985', 'wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTlGRDU3REI1RjU0REE0RTkyAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":49,\"_uid\":\"41ad79ac-2f67-4682-9675-3ed63d384005\",\"first_name\":\"Rushikesh\",\"last_name\":null,\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918369106985\",\"wa_id\":\"918369106985\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTlGRDU3REI1RjU0REE0RTkyAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ykzsh7wZwpYQ7kNvgF_1X7O&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AnF3c4T0sMc-KtDzNTIK18X&oh=01_Q5AaIPT1tZbtSFdOfXUexR4_EGy4QVO0TIcqCjevGHGUUut3&oe=67A880E9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678111c3bb6e3-masthead-3-678111d071983.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTlGRDU3REI1RjU0REE0RTkyAA==\",\"status\":\"sent\",\"timestamp\":\"1736511955\",\"recipient_id\":\"918369106985\",\"conversation\":{\"id\":\"0ec26f83f3835fa84bb255d080b5d568\",\"expiration_timestamp\":\"1736598240\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTlGRDU3REI1RjU0REE0RTkyAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511956\",\"recipient_id\":\"918369106985\",\"conversation\":{\"id\":\"0ec26f83f3835fa84bb255d080b5d568\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTlGRDU3REI1RjU0REE0RTkyAA==\",\"status\":\"read\",\"timestamp\":\"1736511963\",\"recipient_id\":\"918369106985\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:25:56', NULL, NULL, NULL),
(546, '288b6307-5656-4281-8b53-b0c7c4be208d', 'read', '2025-01-10 13:01:38', '2025-01-10 12:26:07', 'Demo', NULL, NULL, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMDEyMkFGRkEwODkwMDYxMzczMQA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Manisha Ray\"},\"wa_id\":\"917001148119\"}],\"messages\":[{\"context\":{\"from\":\"918159861911\",\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSRUEwMzE1MjMxRkJGMkNDREVFAA==\"},\"from\":\"917001148119\",\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMDEyMkFGRkEwODkwMDYxMzczMQA=\",\"timestamp\":\"1736511964\",\"type\":\"button\",\"button\":{\"payload\":\"Demo\",\"text\":\"Demo\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:26:04', NULL, 'c5576453-39a0-4378-9d3b-5babdf149d09', NULL),
(547, '8f338f4e-e574-4dbe-9156-dc4b54931bcc', 'read', '2025-01-10 12:26:21', '2025-01-10 12:26:15', 'hi sir', NULL, NULL, 19, '918369106985', 'wamid.HBgMOTE4MzY5MTA2OTg1FQIAEhgWM0VCMDQxRDQ2RDU4QzVGMjk3MDhCOQA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"~Rushikesh~\"},\"wa_id\":\"918369106985\"}],\"messages\":[{\"from\":\"918369106985\",\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAEhgWM0VCMDQxRDQ2RDU4QzVGMjk3MDhCOQA=\",\"timestamp\":\"1736511974\",\"text\":{\"body\":\"hi sir\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:26:14', NULL, NULL, NULL),
(548, '241157b8-374e-4d42-b2d4-eae7e6db3b5d', 'read', '2025-01-10 12:26:32', '2025-01-10 12:26:28', 'hello sir', NULL, NULL, 19, '918369106985', 'wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTM2M0IzODgyM0Q1RUZGQThDAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":false,\"message_log_id\":548},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918369106985\",\"wa_id\":\"918369106985\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTM2M0IzODgyM0Q1RUZGQThDAA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918369106985\",\"wa_id\":\"918369106985\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTM2M0IzODgyM0Q1RUZGQThDAA==\"}]},\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTM2M0IzODgyM0Q1RUZGQThDAA==\",\"status\":\"sent\",\"timestamp\":\"1736511989\",\"recipient_id\":\"918369106985\",\"conversation\":{\"id\":\"0ec26f83f3835fa84bb255d080b5d568\",\"expiration_timestamp\":\"1736598240\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTM2M0IzODgyM0Q1RUZGQThDAA==\",\"status\":\"delivered\",\"timestamp\":\"1736511990\",\"recipient_id\":\"918369106985\",\"conversation\":{\"id\":\"0ec26f83f3835fa84bb255d080b5d568\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSQTM2M0IzODgyM0Q1RUZGQThDAA==\",\"status\":\"read\",\"timestamp\":\"1736511991\",\"recipient_id\":\"918369106985\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 12:26:30', NULL, NULL, NULL),
(549, '3ac84301-a614-49b5-8b9d-57979805ffe4', 'read', '2025-01-10 13:10:08', '2025-01-10 13:08:34', 'Hi', NULL, NULL, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMDAwMURGMTdBQzQyNTc0RDIzOQA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Manisha Ray\"},\"wa_id\":\"917001148119\"}],\"messages\":[{\"from\":\"917001148119\",\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMDAwMURGMTdBQzQyNTc0RDIzOQA=\",\"timestamp\":\"1736514513\",\"text\":{\"body\":\"Hi\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 13:08:33', NULL, NULL, NULL),
(550, 'c2cbb54e-9c20-4aa2-b77c-fa12d76686ce', 'read', '2025-01-10 13:10:08', '2025-01-10 13:09:44', 'Hi', NULL, NULL, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMEM1MjUzMTdCMTEyOUJFQjEwRgA=', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Manisha Ray\"},\"wa_id\":\"917001148119\"}],\"messages\":[{\"from\":\"917001148119\",\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAEhgWM0VCMEM1MjUzMTdCMTEyOUJFQjEwRgA=\",\"timestamp\":\"1736514584\",\"text\":{\"body\":\"Hi\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-10 13:09:44', NULL, NULL, NULL),
(552, 'a277d224-0b24-41f3-811a-46acca7520e7', 'accepted', '2025-01-11 10:01:16', '2025-01-11 10:01:16', NULL, NULL, 20, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDdDMzA4QTM1REU3ODQ0QjBGAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":46,\"_uid\":\"93738073-832b-45f5-9bb2-f2e86c75ad66\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDdDMzA4QTM1REU3ODQ0QjBGAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL);
INSERT INTO `whatsapp_message_logs` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `message`, `contacts__id`, `campaigns__id`, `vendors__id`, `contact_wa_id`, `wamid`, `wab_phone_number_id`, `is_incoming_message`, `__data`, `messaged_at`, `is_forwarded`, `replied_to_whatsapp_message_logs__uid`, `messaged_by_users__id`) VALUES
(553, '742a2e49-fbc5-41d7-a770-f68084b17f16', 'accepted', '2025-01-11 10:01:16', '2025-01-11 10:01:16', NULL, NULL, 20, 19, '917001148119', 'wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSM0RDN0Y4RjQ1MjBBNDIwQzU4AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":47,\"_uid\":\"566bd544-536c-4f60-abe9-9e6b7c19f0b9\",\"first_name\":\"Manisha\",\"last_name\":\"  Ray\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"917001148119\",\"wa_id\":\"917001148119\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3MDAxMTQ4MTE5FQIAERgSM0RDN0Y4RjQ1MjBBNDIwQzU4AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(554, '08acd2d1-bb5d-4807-8f27-8ffcea960aaa', 'accepted', '2025-01-11 10:01:16', '2025-01-11 10:01:16', NULL, NULL, 20, 19, '918369106985', 'wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMDM3M0NENzZEOEJBOUQxNDBCAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":49,\"_uid\":\"41ad79ac-2f67-4682-9675-3ed63d384005\",\"first_name\":\"Rushikesh\",\"last_name\":null,\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918369106985\",\"wa_id\":\"918369106985\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MzY5MTA2OTg1FQIAERgSMDM3M0NENzZEOEJBOUQxNDBCAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(555, '241254f2-74c3-4f79-98b4-7d21a13f3c58', 'accepted', '2025-01-11 10:01:16', '2025-01-11 10:01:16', NULL, 50, 20, 19, '919951517157', 'wamid.HBgMOTE5OTUxNTE3MTU3FQIAERgSQ0M3NTU5RUFBNDI3RjEwMDM0AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":50,\"_uid\":\"fbf4ad76-38c5-4181-9814-81c7a01ed506\",\"first_name\":\"Sir\",\"last_name\":null,\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919951517157\",\"wa_id\":\"919951517157\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5OTUxNTE3MTU3FQIAERgSQ0M3NTU5RUFBNDI3RjEwMDM0AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(557, '82e3828a-b8c8-4a2a-b023-3581eeaf2d10', 'accepted', '2025-01-11 10:26:44', '2025-01-11 10:26:44', NULL, 51, 21, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSQjc0RTBBNDZCMzZGNzI2OEM2AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":51,\"_uid\":\"e88422e7-c2c0-49d8-9d38-8d4a30021425\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSQjc0RTBBNDZCMzZGNzI2OEM2AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"whitelabel\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=API6nmKm3V7TS6daEBLkQha&oh=01_Q5AaIHFg4o4RS6q4-56rlbxDVDfaZyglW0RMu3b2ETZbuPu4&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"642883324828209\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=API6nmKm3V7TS6daEBLkQha&oh=01_Q5AaIHFg4o4RS6q4-56rlbxDVDfaZyglW0RMu3b2ETZbuPu4&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6782468abcbdc-masthead-67824762d1fa8.png\"}}]}]}', NULL, NULL, NULL, NULL),
(558, '2041947e-0015-4c61-8103-8c1d022b72a8', 'accepted', '2025-01-11 10:26:44', '2025-01-11 10:26:44', NULL, 52, 21, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDBCQjkwOTA4OTE2MzRDNTA4AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":52,\"_uid\":\"c60a5906-75ca-43cf-93f3-889820929f16\",\"first_name\":\"VINIT\",\"last_name\":\"JHA\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDBCQjkwOTA4OTE2MzRDNTA4AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"whitelabel\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=API6nmKm3V7TS6daEBLkQha&oh=01_Q5AaIHFg4o4RS6q4-56rlbxDVDfaZyglW0RMu3b2ETZbuPu4&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"642883324828209\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=API6nmKm3V7TS6daEBLkQha&oh=01_Q5AaIHFg4o4RS6q4-56rlbxDVDfaZyglW0RMu3b2ETZbuPu4&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6782468abcbdc-masthead-67824762d1fa8.png\"}}]}]}', NULL, NULL, NULL, NULL),
(560, '494eb699-ec32-4536-a40b-e1612d2786da', 'read', '2025-01-11 12:01:33', '2025-01-11 11:28:14', NULL, 51, 22, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMEMxRThEMjlCMDk4REUyNjdBAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":51,\"_uid\":\"e88422e7-c2c0-49d8-9d38-8d4a30021425\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMEMxRThEMjlCMDk4REUyNjdBAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"whitelabel\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AN16bvPy6FZofaCCy5-0joG&oh=01_Q5AaILqt3IwSNxeHjNucRvBhH712_9O7V8_3BGNbvtL2G6Cw&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"642883324828209\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AN16bvPy6FZofaCCy5-0joG&oh=01_Q5AaILqt3IwSNxeHjNucRvBhH712_9O7V8_3BGNbvtL2G6Cw&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678255c04d5ae-masthead-678255cd0fc66.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMEMxRThEMjlCMDk4REUyNjdBAA==\",\"status\":\"sent\",\"timestamp\":\"1736594897\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"expiration_timestamp\":\"1736677620\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMEMxRThEMjlCMDk4REUyNjdBAA==\",\"status\":\"delivered\",\"timestamp\":\"1736594897\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMEMxRThEMjlCMDk4REUyNjdBAA==\",\"status\":\"read\",\"timestamp\":\"1736596892\",\"recipient_id\":\"918170972754\"}]},\"field\":\"messages\"}]}]}}', '2025-01-11 11:28:17', NULL, NULL, NULL),
(561, 'c3cfabc1-ed7f-46ac-a006-58813495cb62', 'read', '2025-01-11 11:30:47', '2025-01-11 11:28:14', NULL, 52, 22, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQUJERTlFOUZENDgxRTMxODdGAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":52,\"_uid\":\"c60a5906-75ca-43cf-93f3-889820929f16\",\"first_name\":\"VINIT\",\"last_name\":\"JHA\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQUJERTlFOUZENDgxRTMxODdGAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"whitelabel\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AN16bvPy6FZofaCCy5-0joG&oh=01_Q5AaILqt3IwSNxeHjNucRvBhH712_9O7V8_3BGNbvtL2G6Cw&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"642883324828209\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=VJDLTGwnUUwQ7kNvgHX6xoQ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=AN16bvPy6FZofaCCy5-0joG&oh=01_Q5AaILqt3IwSNxeHjNucRvBhH712_9O7V8_3BGNbvtL2G6Cw&oe=67A9C1F8\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]},{\"type\":\"header\",\"parameters\":[{\"type\":\"image\",\"image\":{\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/678255c04d5ae-masthead-678255cd0fc66.png\"}}]}],\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQUJERTlFOUZENDgxRTMxODdGAA==\",\"status\":\"sent\",\"timestamp\":\"1736594897\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQUJERTlFOUZENDgxRTMxODdGAA==\",\"status\":\"delivered\",\"timestamp\":\"1736594897\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQUJERTlFOUZENDgxRTMxODdGAA==\",\"status\":\"read\",\"timestamp\":\"1736595046\",\"recipient_id\":\"919832531461\"}]},\"field\":\"messages\"}]}]}}', '2025-01-11 11:28:17', NULL, NULL, NULL),
(562, '03adc89f-20c5-4bd4-8b22-26f410eb728f', 'read', '2025-01-11 11:31:42', '2025-01-11 11:31:36', 'Interested', 52, NULL, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhggNjdEMkY2RjI4NzQyNDI0RTU4MDgwRDBGQTJCNzE0OTkA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Vinit Kumar Jha\"},\"wa_id\":\"919832531461\"}],\"messages\":[{\"context\":{\"from\":\"918159861911\",\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQUJERTlFOUZENDgxRTMxODdGAA==\"},\"from\":\"919832531461\",\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhggNjdEMkY2RjI4NzQyNDI0RTU4MDgwRDBGQTJCNzE0OTkA\",\"timestamp\":\"1736595095\",\"type\":\"button\",\"button\":{\"payload\":\"Interested\",\"text\":\"Interested\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 11:31:35', NULL, 'c3cfabc1-ed7f-46ac-a006-58813495cb62', NULL),
(563, '2475848c-6912-47ae-9f46-16300eb36632', 'read', '2025-01-11 11:31:42', '2025-01-11 11:31:38', NULL, 52, NULL, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDg3MEUwMTRCMzIzMTgyRkVGAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDg3MEUwMTRCMzIzMTgyRkVGAA==\"}]}},\"media_values\":{\"type\":\"document\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/documents\\/6782479e078f2-start-your-own-whatsapp-api-whitelabel-solution-1-1-67824ab374930.pdf\",\"caption\":\"Thank you for showing interest in our product! \\ud83d\\ude0a Our team will get in touch with you shortly. \\ud83d\\udcde\\u2728 In the meantime, feel free to check out our pricing plans for more details. \\ud83d\\udca1\\ud83d\\udcb0\",\"file_name\":\"6782479e078f2-start-your-own-whatsapp-api-whitelabel-solution-1-1-67824ab374930.pdf\",\"original_filename\":\"6782479e078f2-start-your-own-whatsapp-api-whitelabel-solution-1-1-67824ab374930.pdf\"},\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDg3MEUwMTRCMzIzMTgyRkVGAA==\",\"status\":\"sent\",\"timestamp\":\"1736595101\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"expiration_timestamp\":\"1736598000\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDg3MEUwMTRCMzIzMTgyRkVGAA==\",\"status\":\"read\",\"timestamp\":\"1736595101\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSNDg3MEUwMTRCMzIzMTgyRkVGAA==\",\"status\":\"delivered\",\"timestamp\":\"1736595101\",\"recipient_id\":\"919832531461\",\"conversation\":{\"id\":\"0f2dd7b283f70952b2c0a9660d629250\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 11:31:41', NULL, NULL, NULL),
(564, '0f9997ff-57f8-4856-a77c-28b384705444', 'read', '2025-01-11 11:31:58', '2025-01-11 11:31:56', 'Gshs', 52, NULL, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhggNTlDMDU5NjA2NUQ4MjlCMjE5NDg5QTYxRjRDM0FENDEA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"Vinit Kumar Jha\"},\"wa_id\":\"919832531461\"}],\"messages\":[{\"from\":\"919832531461\",\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAEhggNTlDMDU5NjA2NUQ4MjlCMjE5NDg5QTYxRjRDM0FENDEA\",\"timestamp\":\"1736595115\",\"text\":{\"body\":\"Gshs\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-11 11:31:55', NULL, NULL, NULL),
(565, '0ae88502-88f5-4be7-af1f-044559017b30', 'read', '2025-01-11 12:02:37', '2025-01-11 12:01:39', 'Interested', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggOTJCODFDODM2OTBEOTA2NjYxNEQ1NjM5RENCQUY2QkEA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"context\":{\"from\":\"918159861911\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMEMxRThEMjlCMDk4REUyNjdBAA==\"},\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggOTJCODFDODM2OTBEOTA2NjYxNEQ1NjM5RENCQUY2QkEA\",\"timestamp\":\"1736596898\",\"type\":\"button\",\"button\":{\"payload\":\"Interested\",\"text\":\"Interested\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:01:38', NULL, '494eb699-ec32-4536-a40b-e1612d2786da', NULL),
(566, '3cb3913a-72d1-4842-86c3-4d1681ee2965', 'read', '2025-01-11 12:05:01', '2025-01-11 12:02:48', 'Interested', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggNjE4NDUxRjMwOTE4OTBEODMzOUI5MzlFNjBGNDVGQTIA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"context\":{\"from\":\"918159861911\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSNzZFODUyQjI2OTlGOUJFMTIyAA==\"},\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggNjE4NDUxRjMwOTE4OTBEODMzOUI5MzlFNjBGNDVGQTIA\",\"timestamp\":\"1736596967\",\"type\":\"button\",\"button\":{\"payload\":\"Interested\",\"text\":\"Interested\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:02:47', NULL, NULL, NULL),
(567, '54e580db-9952-45ac-a54f-b2010d4faeb6', 'read', '2025-01-11 12:02:53', '2025-01-11 12:02:49', NULL, 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSN0VGNEFDQzU1QzE3MzhFNkFBAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSN0VGNEFDQzU1QzE3MzhFNkFBAA==\"}]}},\"media_values\":{\"type\":\"document\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/documents\\/67825d29dad73-whitelabel-pricing-67825dd2cf7c1.pdf\",\"caption\":\"Thank you for showing interest in our product! \\ud83d\\ude0a \\r\\nOur team will get in touch with you shortly. \\ud83d\\udcde\\u2728 \\r\\nIn the meantime, feel free to check out our pricing plans for more details. \\ud83d\\udca1\",\"file_name\":\"67825d29dad73-whitelabel-pricing-67825dd2cf7c1.pdf\",\"original_filename\":\"67825d29dad73-whitelabel-pricing-67825dd2cf7c1.pdf\"},\"webhook_responses\":{\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSN0VGNEFDQzU1QzE3MzhFNkFBAA==\",\"status\":\"delivered\",\"timestamp\":\"1736596972\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSN0VGNEFDQzU1QzE3MzhFNkFBAA==\",\"status\":\"sent\",\"timestamp\":\"1736596971\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"expiration_timestamp\":\"1736677620\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSN0VGNEFDQzU1QzE3MzhFNkFBAA==\",\"status\":\"read\",\"timestamp\":\"1736596972\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:02:52', NULL, NULL, NULL),
(568, '9fe8322f-d032-4a9c-baa4-6342a686316e', 'read', '2025-01-11 12:05:01', '2025-01-11 12:04:52', 'Interested', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggQzA3NTlGQzY5MDc1QkRFRTcyQjI0NkM2NzM2RUFCMzUA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggQzA3NTlGQzY5MDc1QkRFRTcyQjI0NkM2NzM2RUFCMzUA\",\"timestamp\":\"1736597091\",\"text\":{\"body\":\"Interested\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:04:51', NULL, NULL, NULL),
(569, '67d0bd55-5ecb-4a57-9188-863f42d3e16c', 'read', '2025-01-11 12:04:57', '2025-01-11 12:04:53', NULL, 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDU1NDgzNkMxMDU5NjYyQzc1AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDU1NDgzNkMxMDU5NjYyQzc1AA==\"}]}},\"media_values\":{\"type\":\"document\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/documents\\/67825e45dd07d-whitelabel-pricing-67825e5cd64c1.pdf\",\"caption\":\"Thank you for showing interest in our product! \\ud83d\\ude0a \\r\\n\\r\\nOur team will get in touch with you shortly. \\ud83d\\udcde\\u2728\\r\\n\\r\\nIn the meantime, feel free to check out our pricing plans for more details. \\ud83d\\udca1\",\"file_name\":\"67825e45dd07d-whitelabel-pricing-67825e5cd64c1.pdf\",\"original_filename\":\"67825e45dd07d-whitelabel-pricing-67825e5cd64c1.pdf\"},\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDU1NDgzNkMxMDU5NjYyQzc1AA==\",\"status\":\"sent\",\"timestamp\":\"1736597095\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"expiration_timestamp\":\"1736677620\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDU1NDgzNkMxMDU5NjYyQzc1AA==\",\"status\":\"delivered\",\"timestamp\":\"1736597096\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDU1NDgzNkMxMDU5NjYyQzc1AA==\",\"status\":\"read\",\"timestamp\":\"1736597096\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:04:56', NULL, NULL, NULL),
(570, '2f47294e-c444-4b85-8187-1b9430473197', 'read', '2025-01-11 12:09:11', '2025-01-11 12:07:45', 'Interested', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggOEE4NjI1MEY5QjIxQTA0NEQ0RjVEOUU2Q0IwMjJBN0MA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggOEE4NjI1MEY5QjIxQTA0NEQ0RjVEOUU2Q0IwMjJBN0MA\",\"timestamp\":\"1736597264\",\"text\":{\"body\":\"Interested\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:07:44', NULL, NULL, NULL),
(571, '28981161-47c9-437c-aeca-a3dd48f74c5a', 'read', '2025-01-11 12:07:50', '2025-01-11 12:07:47', NULL, 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUM1NEI2OTBDRTFDMzc3MzNDAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUM1NEI2OTBDRTFDMzc3MzNDAA==\"}]}},\"media_values\":{\"type\":\"document\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/documents\\/67825edac6f55-whitelabel-pricing-67825eef876d4.pdf\",\"caption\":\"Thank you for showing interest in our product! \\ud83d\\ude0a Our team will get in touch with you shortly. \\ud83d\\udcde\\u2728 In the meantime, feel free to check out our pricing plans for more details. \\ud83d\\udca1\\ud83d\\udcb0\",\"file_name\":\"67825edac6f55-whitelabel-pricing-67825eef876d4.pdf\",\"original_filename\":\"67825edac6f55-whitelabel-pricing-67825eef876d4.pdf\"},\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUM1NEI2OTBDRTFDMzc3MzNDAA==\",\"status\":\"sent\",\"timestamp\":\"1736597269\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"expiration_timestamp\":\"1736677620\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUM1NEI2OTBDRTFDMzc3MzNDAA==\",\"status\":\"delivered\",\"timestamp\":\"1736597270\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUM1NEI2OTBDRTFDMzc3MzNDAA==\",\"status\":\"read\",\"timestamp\":\"1736597270\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"018820a8382c60f8b6006a45656c57cf\",\"origin\":{\"type\":\"marketing\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"marketing\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-11 12:07:50', NULL, NULL, NULL),
(572, 'c736ad9c-a6dc-49f1-bf6e-0c021e1428c9', 'failed', '2025-01-13 07:19:05', '2025-01-13 07:19:03', 'hi', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSQTUzMTI5M0QxNEJEMTgxNkVCAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":false,\"message_log_id\":572},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSQTUzMTI5M0QxNEJEMTgxNkVCAA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSQTUzMTI5M0QxNEJEMTgxNkVCAA==\"}]},\"failed\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSQTUzMTI5M0QxNEJEMTgxNkVCAA==\",\"status\":\"failed\",\"timestamp\":\"1736752745\",\"recipient_id\":\"918170972754\",\"errors\":[{\"code\":131047,\"title\":\"Re-engagement message\",\"message\":\"Re-engagement message\",\"error_data\":{\"details\":\"Message failed to send because more than 24 hours have passed since the customer last replied to this number.\"},\"href\":\"https:\\/\\/developers.facebook.com\\/docs\\/whatsapp\\/cloud-api\\/support\\/error-codes\\/\"}]}]},\"field\":\"messages\"}]}]}}', '2025-01-13 07:19:03', NULL, NULL, NULL),
(573, '3f703e51-d808-44b7-adae-9218e2551911', 'read', '2025-01-17 06:59:07', '2025-01-17 06:58:24', 'Hi', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggRENCQkE5RTMxNkNGM0Y4NzkyMzkyMDJBOThCQ0Y2RTUA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggRENCQkE5RTMxNkNGM0Y4NzkyMzkyMDJBOThCQ0Y2RTUA\",\"timestamp\":\"1737097102\",\"text\":{\"body\":\"Hi\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-17 06:58:22', NULL, NULL, NULL),
(574, '81891215-7f6f-43bd-b52c-e8e22dab04a2', 'read', '2025-01-17 06:58:27', '2025-01-17 06:58:24', 'Hello sir', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRjEyMzU3OTVBQ0MzNUQ3NTY2AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true,\"ai_bot_reply\":false,\"interaction_message_data\":{\"interactive_type\":\"button\",\"body_text\":\"Hello sir\",\"buttons\":{\"1\":\"Call Now\"}},\"from_phone_number_id\":\"477921225415071\",\"messageWamid\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggRENCQkE5RTMxNkNGM0Y4NzkyMzkyMDJBOThCQ0Y2RTUA\",\"message_log_id\":574},\"interaction_message_data\":{\"interactive_type\":\"button\",\"media_link\":\"\",\"header_type\":null,\"header_text\":\"\",\"body_text\":\"Hello sir\",\"footer_text\":\"\",\"buttons\":{\"1\":\"Call Now\"},\"cta_url\":null,\"list_data\":null},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRjEyMzU3OTVBQ0MzNUQ3NTY2AA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRjEyMzU3OTVBQ0MzNUQ3NTY2AA==\"}]},\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRjEyMzU3OTVBQ0MzNUQ3NTY2AA==\",\"status\":\"sent\",\"timestamp\":\"1737097105\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"expiration_timestamp\":\"1737183540\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRjEyMzU3OTVBQ0MzNUQ3NTY2AA==\",\"status\":\"delivered\",\"timestamp\":\"1737097106\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRjEyMzU3OTVBQ0MzNUQ3NTY2AA==\",\"status\":\"read\",\"timestamp\":\"1737097106\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-17 06:58:26', NULL, NULL, NULL);
INSERT INTO `whatsapp_message_logs` (`_id`, `_uid`, `status`, `updated_at`, `created_at`, `message`, `contacts__id`, `campaigns__id`, `vendors__id`, `contact_wa_id`, `wamid`, `wab_phone_number_id`, `is_incoming_message`, `__data`, `messaged_at`, `is_forwarded`, `replied_to_whatsapp_message_logs__uid`, `messaged_by_users__id`) VALUES
(575, 'd08665a7-31f5-4c91-8f91-8c570731adc8', 'read', '2025-01-17 06:58:30', '2025-01-17 06:58:26', NULL, 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMTM5QzVCNTk4NDgwNjU3NTJFAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMTM5QzVCNTk4NDgwNjU3NTJFAA==\"}]}},\"media_values\":{\"type\":\"image\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6782269b49111-masthead-678226a8e83fd.png\",\"caption\":\"test\",\"file_name\":\"6782269b49111-masthead-678226a8e83fd.png\",\"original_filename\":\"6782269b49111-masthead-678226a8e83fd.png\"},\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMTM5QzVCNTk4NDgwNjU3NTJFAA==\",\"status\":\"sent\",\"timestamp\":\"1737097109\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"expiration_timestamp\":\"1737183540\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMTM5QzVCNTk4NDgwNjU3NTJFAA==\",\"status\":\"delivered\",\"timestamp\":\"1737097109\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMTM5QzVCNTk4NDgwNjU3NTJFAA==\",\"status\":\"read\",\"timestamp\":\"1737097109\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-17 06:58:29', NULL, NULL, NULL),
(576, 'b2b80e5c-f65d-4aba-841e-1e45cd038204', 'read', '2025-01-17 06:59:07', '2025-01-17 06:58:48', 'Hi', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggMEMwRjkzOTM4OTYwRUMzOTkxNDdBQkU4QTQ2QzNDMEUA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggMEMwRjkzOTM4OTYwRUMzOTkxNDdBQkU4QTQ2QzNDMEUA\",\"timestamp\":\"1737097128\",\"text\":{\"body\":\"Hi\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-17 06:58:48', NULL, NULL, NULL),
(577, 'a884251b-af79-4f70-87f9-9d0e9eacbe35', 'delivered', '2025-01-17 06:58:51', '2025-01-17 06:58:49', 'Hello sir', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSNDRCREEyNDNFNDBBMTY3NzRFAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true,\"ai_bot_reply\":false,\"interaction_message_data\":{\"interactive_type\":\"button\",\"body_text\":\"Hello sir\",\"buttons\":{\"1\":\"Call Now\"}},\"from_phone_number_id\":\"477921225415071\",\"messageWamid\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggMEMwRjkzOTM4OTYwRUMzOTkxNDdBQkU4QTQ2QzNDMEUA\",\"message_log_id\":577},\"interaction_message_data\":{\"interactive_type\":\"button\",\"media_link\":\"\",\"header_type\":null,\"header_text\":\"\",\"body_text\":\"Hello sir\",\"footer_text\":\"\",\"buttons\":{\"1\":\"Call Now\"},\"cta_url\":null,\"list_data\":null},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSNDRCREEyNDNFNDBBMTY3NzRFAA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSNDRCREEyNDNFNDBBMTY3NzRFAA==\"}]},\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSNDRCREEyNDNFNDBBMTY3NzRFAA==\",\"status\":\"sent\",\"timestamp\":\"1737097129\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"expiration_timestamp\":\"1737183540\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSNDRCREEyNDNFNDBBMTY3NzRFAA==\",\"status\":\"delivered\",\"timestamp\":\"1737097130\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-17 06:58:50', NULL, NULL, NULL),
(578, '087985ca-8a55-4193-a889-773fcab8b417', 'read', '2025-01-17 06:58:53', '2025-01-17 06:58:51', NULL, 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkVERDk4RjU4QUY1MUNERkQ1AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkVERDk4RjU4QUY1MUNERkQ1AA==\"}]}},\"media_values\":{\"type\":\"image\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6782269b49111-masthead-678226a8e83fd.png\",\"caption\":\"test\",\"file_name\":\"6782269b49111-masthead-678226a8e83fd.png\",\"original_filename\":\"6782269b49111-masthead-678226a8e83fd.png\"},\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkVERDk4RjU4QUY1MUNERkQ1AA==\",\"status\":\"sent\",\"timestamp\":\"1737097131\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"expiration_timestamp\":\"1737183540\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkVERDk4RjU4QUY1MUNERkQ1AA==\",\"status\":\"read\",\"timestamp\":\"1737097132\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkVERDk4RjU4QUY1MUNERkQ1AA==\",\"status\":\"delivered\",\"timestamp\":\"1737097131\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-17 06:58:51', NULL, NULL, NULL),
(579, 'bd51bcf9-5ca1-40ee-a32b-d1bfb69d2108', 'read', '2025-01-17 07:03:56', '2025-01-17 07:00:15', 'Hi', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggNTAxOTQwODY2RTU2QzUzOTExMkY3RUIzODE1QzI0RTgA', '477921225415071', 1, '{\"webhook_responses\":{\"incoming\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"contacts\":[{\"profile\":{\"name\":\"OMX Digital Pvt Ltd\"},\"wa_id\":\"918170972754\"}],\"messages\":[{\"from\":\"918170972754\",\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggNTAxOTQwODY2RTU2QzUzOTExMkY3RUIzODE1QzI0RTgA\",\"timestamp\":\"1737097214\",\"text\":{\"body\":\"Hi\"},\"type\":\"text\"}]},\"field\":\"messages\"}]}]}}', '2025-01-17 07:00:14', NULL, NULL, NULL),
(580, '85475dbd-1f34-4ab9-bf8f-1059357af657', 'read', '2025-01-17 07:00:18', '2025-01-17 07:00:15', 'Hello sir', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUNEMjhDRkRGNjg2NzUxQUQxAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true,\"ai_bot_reply\":false,\"interaction_message_data\":{\"interactive_type\":\"button\",\"body_text\":\"Hello sir\",\"buttons\":{\"1\":\"Call Now\"}},\"from_phone_number_id\":\"477921225415071\",\"messageWamid\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAEhggNTAxOTQwODY2RTU2QzUzOTExMkY3RUIzODE1QzI0RTgA\",\"message_log_id\":580},\"interaction_message_data\":{\"interactive_type\":\"button\",\"media_link\":\"\",\"header_type\":null,\"header_text\":\"\",\"body_text\":\"Hello sir\",\"footer_text\":\"\",\"buttons\":{\"1\":\"Call Now\"},\"cta_url\":null,\"list_data\":null},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUNEMjhDRkRGNjg2NzUxQUQxAA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUNEMjhDRkRGNjg2NzUxQUQxAA==\"}]},\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUNEMjhDRkRGNjg2NzUxQUQxAA==\",\"status\":\"sent\",\"timestamp\":\"1737097216\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"expiration_timestamp\":\"1737183540\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUNEMjhDRkRGNjg2NzUxQUQxAA==\",\"status\":\"delivered\",\"timestamp\":\"1737097217\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRUNEMjhDRkRGNjg2NzUxQUQxAA==\",\"status\":\"read\",\"timestamp\":\"1737097217\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-17 07:00:17', NULL, NULL, NULL),
(581, '2559bfe6-9467-4cd3-af36-1a920fd369ba', 'read', '2025-01-17 07:00:19', '2025-01-17 07:00:17', NULL, 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMzlFRjVENTg1MzlBMDlGOTEwAA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":true},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMzlFRjVENTg1MzlBMDlGOTEwAA==\"}]}},\"media_values\":{\"type\":\"image\",\"link\":\"https:\\/\\/bots.omxflow.com\\/media-storage\\/vendors\\/f147d58e-16e7-4b11-9c34-c79bc1f37d6c\\/whatsapp_media\\/images\\/6782269b49111-masthead-678226a8e83fd.png\",\"caption\":\"test\",\"file_name\":\"6782269b49111-masthead-678226a8e83fd.png\",\"original_filename\":\"6782269b49111-masthead-678226a8e83fd.png\"},\"webhook_responses\":{\"sent\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMzlFRjVENTg1MzlBMDlGOTEwAA==\",\"status\":\"sent\",\"timestamp\":\"1737097218\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"expiration_timestamp\":\"1737183540\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"delivered\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMzlFRjVENTg1MzlBMDlGOTEwAA==\",\"status\":\"delivered\",\"timestamp\":\"1737097218\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}],\"read\":[{\"id\":\"543180505542014\",\"changes\":[{\"value\":{\"messaging_product\":\"whatsapp\",\"metadata\":{\"display_phone_number\":\"918159861911\",\"phone_number_id\":\"477921225415071\"},\"statuses\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMzlFRjVENTg1MzlBMDlGOTEwAA==\",\"status\":\"read\",\"timestamp\":\"1737097218\",\"recipient_id\":\"918170972754\",\"conversation\":{\"id\":\"6d0544e83e13885728043766956395d7\",\"origin\":{\"type\":\"service\"}},\"pricing\":{\"billable\":true,\"pricing_model\":\"CBP\",\"category\":\"service\"}}]},\"field\":\"messages\"}]}]}}', '2025-01-17 07:00:18', NULL, NULL, NULL),
(583, 'ca4a0875-e705-4470-8730-0a59dab35b8a', 'accepted', '2025-03-08 07:17:43', '2025-03-08 07:17:43', NULL, 51, 23, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMkQ0ODI3NjkyN0FBMzk2NTM1AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":51,\"_uid\":\"e88422e7-c2c0-49d8-9d38-8d4a30021425\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSMkQ0ODI3NjkyN0FBMzk2NTM1AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(584, 'a979bf03-bbdd-4271-bca3-1583ddd96d86', 'accepted', '2025-03-08 07:17:43', '2025-03-08 07:17:43', NULL, 52, 23, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQjk1RkNCM0IzNkUzQTU1QjgwAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":52,\"_uid\":\"c60a5906-75ca-43cf-93f3-889820929f16\",\"first_name\":\"VINIT\",\"last_name\":\"JHA\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSQjk1RkNCM0IzNkUzQTU1QjgwAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(585, '6b9d90cb-640e-4248-b863-72ba1f0b3af4', 'accepted', '2025-03-08 08:13:58', '2025-03-08 08:13:57', 'ok', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSREY5NjhFM0Q5MDA4MTc2MjY2AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":false,\"message_log_id\":585},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSREY5NjhFM0Q5MDA4MTc2MjY2AA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSREY5NjhFM0Q5MDA4MTc2MjY2AA==\"}]}}}', '2025-03-08 08:13:57', NULL, NULL, NULL),
(586, '5b4e201c-25a8-40b0-916d-1970d3443e9b', 'accepted', '2025-03-08 08:15:48', '2025-03-08 08:15:47', 'ok', 51, NULL, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkM5RjJGMTQwMjUyODdFNEU4AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":false,\"message_log_id\":586},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkM5RjJGMTQwMjUyODdFNEU4AA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRkM5RjJGMTQwMjUyODdFNEU4AA==\"}]}}}', '2025-03-08 08:15:47', NULL, NULL, NULL),
(588, '9711cab5-be8b-4742-9207-a9d1862e4094', 'accepted', '2025-03-08 08:16:07', '2025-03-08 08:16:07', NULL, 51, 24, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSM0Y4ODc1NjBCMDI0M0IyRDVCAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":51,\"_uid\":\"e88422e7-c2c0-49d8-9d38-8d4a30021425\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSM0Y4ODc1NjBCMDI0M0IyRDVCAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(589, 'e6f6ef3d-a71e-4c2b-9dca-fe948773b9f3', 'accepted', '2025-03-08 08:16:07', '2025-03-08 08:16:07', NULL, 52, 24, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRTVGQTYyN0RCNkUyQ0RENTM0AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":52,\"_uid\":\"c60a5906-75ca-43cf-93f3-889820929f16\",\"first_name\":\"VINIT\",\"last_name\":\"JHA\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSRTVGQTYyN0RCNkUyQ0RENTM0AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(591, 'ac517952-f084-4807-b411-16b543b09af3', 'accepted', '2025-03-10 10:13:32', '2025-03-10 10:13:32', NULL, 51, 25, 19, '918170972754', 'wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDI1RkMyMkY5MzBFRUNBNTU4AA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":51,\"_uid\":\"e88422e7-c2c0-49d8-9d38-8d4a30021425\",\"first_name\":\"Test\",\"last_name\":\"Contact\",\"countries__id\":null},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"918170972754\",\"wa_id\":\"918170972754\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE4MTcwOTcyNzU0FQIAERgSRDI1RkMyMkY5MzBFRUNBNTU4AA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(592, '0cc0bc1c-94e7-48c5-b39f-8e3c5d594978', 'accepted', '2025-03-10 10:13:32', '2025-03-10 10:13:32', NULL, 52, 25, 19, '919832531461', 'wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSOUQyNkQ1NEFEMzFBMjcyNDBGAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":52,\"_uid\":\"c60a5906-75ca-43cf-93f3-889820929f16\",\"first_name\":\"VINIT\",\"last_name\":\"JHA\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"919832531461\",\"wa_id\":\"919832531461\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE5ODMyNTMxNDYxFQIAERgSOUQyNkQ1NEFEMzFBMjcyNDBGAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(593, '3f0e9e40-5d07-4986-a9dc-72bcfa56ae5a', 'accepted', '2025-03-10 10:13:32', '2025-03-10 10:13:32', NULL, 53, 25, 19, '917908963371', 'wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSNDg2MkFGQkVDNjY5Mzg4RkNDAA==', '477921225415071', 0, '{\"contact_data\":{\"_id\":53,\"_uid\":\"b389ca09-a222-49b8-be76-02e413b24a28\",\"first_name\":\"Rohit\",\"last_name\":\"Sharma\",\"countries__id\":99},\"initial_response\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"7908963371\",\"wa_id\":\"917908963371\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSNDg2MkFGQkVDNjY5Mzg4RkNDAA==\",\"message_status\":\"accepted\"}]},\"template_proforma\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"},\"template_components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"template_component_values\":[{\"type\":\"body\",\"parameters\":[]}]}', NULL, NULL, NULL, NULL),
(594, '3479405c-3df8-4728-8828-a07f1c6ef0bd', 'accepted', '2025-03-12 06:40:04', '2025-03-12 06:40:03', 'hii', 53, NULL, 19, '7908963371', 'wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSMTI2NzlFREE2MDg4QzZEODU2AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":false,\"message_log_id\":594},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"7908963371\",\"wa_id\":\"917908963371\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSMTI2NzlFREE2MDg4QzZEODU2AA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"7908963371\",\"wa_id\":\"917908963371\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSMTI2NzlFREE2MDg4QzZEODU2AA==\"}]}}}', '2025-03-12 06:40:03', NULL, NULL, NULL),
(595, '5b267e67-2464-4d41-a468-07a01a2ca4e6', 'accepted', '2025-03-12 08:19:35', '2025-03-12 08:19:34', 'hii', 53, NULL, 19, '7908963371', 'wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSMDY3QTI2MDQwRUYzNDgyQjk4AA==', '477921225415071', 0, '{\"options\":{\"bot_reply\":false,\"message_log_id\":595},\"initial_response\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"7908963371\",\"wa_id\":\"917908963371\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSMDY3QTI2MDQwRUYzNDgyQjk4AA==\"}]}},\"webhook_responses\":{\"accepted\":{\"messaging_product\":\"whatsapp\",\"contacts\":[{\"input\":\"7908963371\",\"wa_id\":\"917908963371\"}],\"messages\":[{\"id\":\"wamid.HBgMOTE3OTA4OTYzMzcxFQIAERgSMDY3QTI2MDQwRUYzNDgyQjk4AA==\"}]}}}', '2025-03-12 08:19:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_message_queue`
--

CREATE TABLE `whatsapp_message_queue` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `vendors__id` int(10) UNSIGNED NOT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `phone_with_country_code` varchar(45) NOT NULL,
  `campaigns__id` int(10) UNSIGNED NOT NULL,
  `contacts__id` int(10) UNSIGNED DEFAULT NULL,
  `retries` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_templates`
--

CREATE TABLE `whatsapp_templates` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `template_name` varchar(512) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `template_id` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `__data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`__data`)),
  `vendors__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whatsapp_templates`
--

INSERT INTO `whatsapp_templates` (`_id`, `_uid`, `status`, `template_name`, `updated_at`, `created_at`, `template_id`, `category`, `language`, `__data`, `vendors__id`) VALUES
(18, '9cbec32c-1743-49ce-ab10-c01463aebc71', 'APPROVED', 'hello_world', '2025-01-10 10:04:36', '2025-01-10 10:04:36', '576095618593266', 'UTILITY', 'en_US', '{\"template\":{\"name\":\"hello_world\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Hello World\"},{\"type\":\"BODY\",\"text\":\"Welcome and congratulations!! This message demonstrates your ability to send a WhatsApp message notification from the Cloud API, hosted by Meta. Thank you for taking the time to test with us.\"},{\"type\":\"FOOTER\",\"text\":\"WhatsApp Business Platform sample message\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"576095618593266\"}}', 19),
(19, '561ba372-cfe7-4feb-9dda-168f0236c304', 'APPROVED', 'welcome_msg', '2025-01-10 12:15:39', '2025-01-10 12:15:39', '1268746077687269', 'MARKETING', 'en', '{\"template\":{\"name\":\"welcome_msg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473397856_1268746081020602_1075322568604636762_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=6DV82ORORCQQ7kNvgFVCoCB&_nc_oc=AdglitgSEyDnMYeFJnHBT-PEUI5eKqXXtlNkY5R4YfDJzqZy55dL9jcKwq-WMFqzDZjH258JJh71LNlcCyNNCGuJ&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIbAeAD85DINgH7d14pp5DS9oDgQzzJJRr9TMv0SXo2SE&oe=67FA3DE9\"]}},{\"type\":\"BODY\",\"text\":\"Hello,\\r\\nWelcome to OMX Digital.\\r\\nStay Connected For Future Update\"},{\"type\":\"FOOTER\",\"text\":\"OMX DIGITAL\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1268746077687269\"}}', 19),
(20, '4c8b0522-f5b6-482b-a120-d141d3227a56', 'APPROVED', 'whitelabel', '2025-01-11 10:20:25', '2025-01-11 10:20:25', '642883324828209', 'MARKETING', 'en', '{\"template\":{\"name\":\"whitelabel\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473398743_642883328161542_285860444829388931_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=58SfED3-VLEQ7kNvgE0Wazt&_nc_oc=Adhjzo2o6-hzRYRcGCQzbbrXPbMDIEKp6K_sYQKCOm1Qn4EVEYI8dHnrSgtvmPafUVGt8c6dL0IkitO5475P9tO4&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIV_-n7DB0bMQEbB_5_8a5rfEl4Q_dMN4mt_aNtaj100G&oe=67FA2D78\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\udd25 *LIMITED OFFER* \\ud83d\\udd25\\r\\n*Meta Verified WhatsApp API Panel*\\r\\n\\r\\n\\u2705 Source Code + Document Available\\r\\n\\r\\n\\ud83c\\udfaf\\ud83c\\udfaf Features \\ud83c\\udfaf\\ud83c\\udfaf \\r\\n\\u2705 Send bulk messages\\r\\n\\u2705 Chatbot & autoresponders 24\\u00d77\\r\\n\\u2705 Chatbot Flow Builder\\r\\n\\u2705 Schedule Campaign \\r\\n\\u2705 Personalised messaging\\r\\n\\u2705 Chats Assigned To Agents\\r\\n\\u2705 Rest API Available\\r\\n\\r\\n\\ud83d\\udcc2 Source Code + Document Available\\r\\n\\r\\n\\u2705 REBRAND and install this script  on your Domain\\r\\n(Its a White Label Solution for User & Reseller you can sale at your Price.\\r\\n\\r\\n\\ud83d\\udcde Contact us now:\\r\\n\\ud83d\\udcf1 +91 8170972754\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Interested\"},{\"type\":\"URL\",\"text\":\"Visit Website\",\"url\":\"https:\\/\\/bots.omxflow.com\\/\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"642883324828209\"}}', 19),
(21, 'f5c00077-4691-4ce6-9324-0e506e6b1637', 'APPROVED', 'newwhiite', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '502035389361834', 'UTILITY', 'en', '{\"template\":{\"name\":\"newwhiite\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473395081_502035392695167_4206582416824318012_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=iH4M9VlQJS8Q7kNvgFMOGeZ&_nc_oc=Adj9YejWdFW31GWqDbF4aTbIUBHqhSj2UmucwHt90asvCiLbyyYivJLiJ0UewAus_oa7zLO27ePKPwEyTJE8jmo0&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIYkB1k7pMMVSvA6sTJuuYeoZ6Bj2VbusVBRIaSE5-_sw&oe=67FA2942\"]}},{\"type\":\"BODY\",\"text\":\"*{{1}}*\\n\\n*{{2}}*\\n\\n{{3}}\\n\\n{{4}} \\n\\n{{5}} \\n*\\ud83d\\udd39 \\u20b95,000 OFF* - Basic Plan\\n*\\ud83d\\udd39 \\u20b910,000 OFF* - Standard Plan\\n*{{6}}*\\n\\n*{{7}}*\\n\\n\\ud83d\\udcde Contact us now:\\n\\ud83d\\udcf1 +91 8170972754\",\"example\":{\"body_text\":[[\"thank you for order\",\"in omx\",\"now track\",\"your order\",\"online\",\"through\",\"shipped\"]]}},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Start Today\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"sub_category\":\"CUSTOM\",\"id\":\"502035389361834\"}}', 19),
(22, '84cb0df8-b657-405f-8533-f925527b52d1', 'APPROVED', 'hinhg', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '841283838143651', 'MARKETING', 'en', '{\"template\":{\"name\":\"hinhg\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"BODY\",\"text\":\"Why Thousands Trust G Square for Their Dream Home!\\r\\n\\r\\nOwning a home isn\\u2019t just a dream\\u2014it\\u2019s a lifetime investment. With G Square, you\\u2019re investing in trust, transparency, and innovation.\\r\\n\\r\\n\\u2705 12+ Years of Expertise\\r\\nEstablished in 2012, we\\u2019ve delivered 4,000+ acres, working with top corporates like TVS, CEAT, and Murugappa.\\r\\n\\r\\n\\u2705 Prime Ready-to-Build Plots\\r\\nPlots in city locations with all approvals (DTCP, CMDA, RERA) ensure a hassle-free experience.\\r\\n\\r\\n\\u2705 Your Dream Home, Simplified\\r\\nWith G Square Build Assist, enjoy exclusive discounts of up to 30% on construction materials and services.\\r\\n\\r\\n\\u2705 High ROI\\r\\nPlots appreciate by up to 80% in 2 years, offering unparalleled value.\\r\\n\\r\\nhttps:\\/\\/youtube.com\\/watch\\/W3Gf6AmD5_g\\r\\n\\r\\nChoose G Square\\u2014your trusted partner in building communities and dreams.\"}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"841283838143651\"}}', 19),
(23, 'e23b258a-857b-4542-8dfd-bba1bda10f20', 'APPROVED', 'name', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '9957947927551211', 'MARKETING', 'en', '{\"template\":{\"name\":\"name\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"BODY\",\"text\":\"Hi\"}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"9957947927551211\"}}', 19),
(24, 'ec60dee3-1567-404d-8823-1a1db3718df3', 'APPROVED', 'youtube', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '2251459871936166', 'MARKETING', 'en', '{\"template\":{\"name\":\"youtube\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"BODY\",\"text\":\"Why Thousands Trust G Square for Their Dream Home!\\r\\n\\r\\nOwning a home isn\\u2019t just a dream\\u2014it\\u2019s a lifetime investment. With G Square, you\\u2019re investing in trust, transparency, and innovation.\\r\\n\\r\\n\\u2705 12+ Years of Expertise\\r\\nEstablished in 2012, we\\u2019ve delivered 4,000+ acres, working with top corporates like TVS, CEAT, and Murugappa.\\r\\n\\r\\n\\u2705 Prime Ready-to-Build Plots\\r\\nPlots in city locations with all approvals (DTCP, CMDA, RERA) ensure a hassle-free experience.\\r\\n\\r\\n\\u2705 Your Dream Home, Simplified\\r\\nWith G Square Build Assist, enjoy exclusive discounts of up to 30% on construction materials and services.\\r\\n\\r\\n\\u2705 High ROI\\r\\nPlots appreciate by up to 80% in 2 years, offering unparalleled value.\\r\\n\\r\\nChoose G Square\\u2014your trusted partner in building communities and dreams.\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"URL\",\"text\":\"youtube\",\"url\":\"https:\\/\\/youtube.com\\/watch\\/W3Gf6AmD5_g\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"2251459871936166\"}}', 19),
(25, '6129ef13-f40b-4659-b374-2d0a3fa2b44f', 'APPROVED', 'whi', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '975804920845766', 'UTILITY', 'en', '{\"template\":{\"name\":\"whi\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473396523_975804924179099_4220667188102099403_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=7CwlnW0tDnIQ7kNvgGs1LI5&_nc_oc=Adi4QsQgFSscBw_2KyFF6J0XCXO476SPpki44HcwIoA_RYDXDYn61Pb5dRtJpYxvX9DdHLRtDQ3nk_gY9TWoruP-&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIcZ2y5Ua-HEWWL7wZBD-rn3SW2wzvZI8AB9bSS7e7Mel&oe=67FA0B19\"]}},{\"type\":\"BODY\",\"text\":\"{{1}}\\n\\n*Meta Verified WhatsApp API Panel*\\n\\n\\u2705 Source Code + Document Available\\n\\n{{2}}\\n\\n\\ud83d\\udcc2 Source Code + Document Available\\n\\n{{3}}\\n\\n{{4}}\\n\\ud83d\\udcde Contact us now:\\n\\ud83d\\udcf1 +91 8170972754\",\"example\":{\"body_text\":[[\"thank you for order\",\"order id \",\"shipped\",\"thanks\"]]}},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Start Today\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"sub_category\":\"CUSTOM\",\"id\":\"975804920845766\"}}', 19),
(26, '56caca35-99bb-48a9-b9ce-eee28b3dd190', 'APPROVED', 'nsewwhite', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '632001286246517', 'UTILITY', 'en', '{\"template\":{\"name\":\"nsewwhite\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473407960_632001289579850_6090272641444432486_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=9Zd4jfuuqEwQ7kNvgGNHLuH&_nc_oc=AdgThvw77b7PzAINTOcMAkh7UCTLmi6Oz755qSVq4BoN8y1dRFpiir3CEgyFA7oApdjYc5CzVdRzwBoal4BlY7Us&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIUyRri37mB0cpQOhyGOpZ6DZAet1nwvYC0Qp95fztDQe&oe=67FA3E8C\"]}},{\"type\":\"BODY\",\"text\":\"*{{4}}*\\n\\n*{{5}}*\\n*{{6}}*\\n\\n{{1}}\\n{{2}}\\n\\ud83d\\udd39 *\\u20b95,000 OFF* - Basic Plan  \\n\\ud83d\\udd39 *\\u20b910,000 OFF* - Standard Plan\\n{{7}}\\n{{3}}\\n\\n*\\ud83d\\udcde Contact us now:*\\n*\\ud83d\\udcf1 +91 8170972754*\",\"example\":{\"body_text\":[[\"thank you for order\",\"order id\",\"name\",\"track\",\"now\",\"order rec\",\"ok\"]]}},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Demo Video\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"sub_category\":\"CUSTOM\",\"id\":\"632001286246517\"}}', 19),
(27, '5d3c401e-9681-4cef-814b-75a9dc0f0c70', 'APPROVED', 'abcx', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '3556324244661232', 'MARKETING', 'en', '{\"template\":{\"name\":\"abcx\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"DOCUMENT\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473399348_3556324251327898_5009390877046284717_n.pdf?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=3ObHNkiZ71cQ7kNvgELfGjR&_nc_oc=Adjr1Snm5JVlmsAgHhtJWhYfkIDL2XPCAZYvx1oGRreAiwH7lj2s6v5cvUY4Lor2j4INQsIH9nmVYp_c2BW1OTWR&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIew77yKBBbu8JO9OtRyH4ejzBrYFk_fZB6fKYUf6jye1&oe=67FA0C8A\"]}},{\"type\":\"BODY\",\"text\":\"Hello sir\"}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"3556324244661232\"}}', 19),
(28, '1341c9d5-da50-4a61-8cae-d1c13cbbb652', 'APPROVED', 'whitelm', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '1663410037929007', 'UTILITY', 'en', '{\"template\":{\"name\":\"whitelm\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/476382346_1663410041262340_2827628142324904373_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=cIfvuQK08w0Q7kNvgEbG0Tj&_nc_oc=AdhhcstQaWNSaP1FMil26paNKx4COBBGtB9D34ATALPsQfBE_eHPtHJJE9qquoBJ9fMPNJNeylY8j_mSXcI9s7m6&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIQRPeX04eXg-T9Xia2BNiGfr1qFjcon3KdJ-v0JSe3h2&oe=67FA11ED\"]}},{\"type\":\"BODY\",\"text\":\"\\ud83d\\ude80 *Meta Verified WhatsApp API Panel*\\n{{1}}\\n\\u2705 Get Source Code + Documentation  \\n{{2}}\\n\\ud83d\\udcde *Contact us now!*  \\n\\ud83d\\udcf1 +91 8170972754\",\"example\":{\"body_text\":[[\"thank you for order \",\"order id\"]]}},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Start Today\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"sub_category\":\"CUSTOM\",\"id\":\"1663410037929007\"}}', 19),
(29, 'da343486-cd72-4460-9a36-c605155e7ccb', 'APPROVED', 'testing', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '1362440208110747', 'MARKETING', 'en', '{\"template\":{\"name\":\"testing\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473396463_1362443441443757_412127425335684250_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=Jb2_HNr6EocQ7kNvgGsVhW0&_nc_oc=Adhgc2_WUwOq7b3avqeGnrkT_7MRxN47FwoxvqXstKPy_U0ZhrBQcjmLqg7FtooNXpApXMmwSMW8AY0Q32TPfMAi&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIS9MWDRzFGyygQIMP1Xv2jrZEmN2NQONUbjkbJ886BEY&oe=67FA3CF3\"]}},{\"type\":\"BODY\",\"text\":\"Hii,  {{1}} \\r\\nThanks for contacting us\",\"example\":{\"body_text\":[[\"Rohit\"]]}}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1362440208110747\"}}', 19),
(30, 'f8eb5979-d329-4993-aa50-ce46da4deb79', 'APPROVED', 'fe', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '1450001653071880', 'UTILITY', 'en', '{\"template\":{\"name\":\"fe\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473401372_1450001656405213_618814973970774290_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=OyEwDbnewYQQ7kNvgEMJa_e&_nc_oc=AdhqzD_8vAYuQVd83FjBXnpdyJgEhYLyQhC9fMz1PbX7de8KeV5Th6d5Lf3IzVZfpM_fCuGL3Yi101qcsgeeei4K&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaITbvBEyLPi0IL8KMYK55v4zFfsCCgFwfaXk_r4M1IboX&oe=67FA24C1\"]}},{\"type\":\"BODY\",\"text\":\"HI Thank You For order\"}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"1450001653071880\"}}', 19),
(31, '59f6f977-feea-436d-af6c-fe85a84090a6', 'APPROVED', 'demo23', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '856199029931511', 'MARKETING', 'en', '{\"template\":{\"name\":\"demo23\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/473396558_856199033264844_2161822702537433842_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=p0dZi-faxZYQ7kNvgHNQ2CI&_nc_oc=AdhdlSSMZnE5cFnJ3CCPAD2y1EsQ80SYPO220ijn5glAyD_3AGhXdYqT_2W5hhz-QXyOgu1omyCt7ZLiKpZHo7UM&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIUBvtnlIAJGssYap6jeBfWg4YFf20S0fn-d6eJ1odcNN&oe=67FA35BF\"]}},{\"type\":\"BODY\",\"text\":\"Hi Welcome to OMX\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Book Demo\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"856199029931511\"}}', 19),
(32, 'd3ab658f-18e9-44fd-be16-27b6810ab2e8', 'APPROVED', 'grm', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '936836758499727', 'UTILITY', 'en', '{\"template\":{\"name\":\"grm\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"BODY\",\"text\":\"Your order\"}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"id\":\"936836758499727\"}}', 19),
(33, 'c46dcfbb-4366-477d-a096-934044ff3810', 'APPROVED', 'newa', '2025-03-08 07:16:43', '2025-03-08 07:16:43', '947368874105711', 'MARKETING', 'en', '{\"template\":{\"name\":\"newa\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"TEXT\",\"text\":\"Welcome to OMX\"},{\"type\":\"BODY\",\"text\":\"Hello sir\\r\\nthank you\"},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"PHONE_NUMBER\",\"text\":\"Call us\",\"phone_number\":\"+918159861911\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"947368874105711\"}}', 19),
(34, '14c1f6f0-f084-413f-878e-cf9a6b3580b2', 'APPROVED', 'south', '2025-03-11 06:21:08', '2025-03-11 06:21:08', '1672996559971853', 'UTILITY', 'en', '{\"template\":{\"name\":\"south\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/482864146_1672996566638519_4492732362218902669_n.png?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=hI4hyU-_EQsQ7kNvgHNcfPs&_nc_oc=AdgNQf_ft9NmYHhWGyIq6tBJrNETY7tqJzy_gX0OxfiLiv8F5hA0csJ-d25rc45G5TZM1I_nX-8eFm9lZfO98nfq&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIWY2m1UDOLP2-1EwT-nBKE5zocxOohv9196KneI9GsF4&oe=67FA3C4C\"]}},{\"type\":\"BODY\",\"text\":\"*{{1}}*\\n\\n\\ud83d\\ude80 *Meta Verified WhatsApp API Panel*\\n{{2}}\\n\\n{{3}}\\n\\u2705 Get Source Code + Documentation\\n\\n{{4}}\\n{{5}}\\n\\n\\ud83d\\udcde Contact us now!\\n\\ud83d\\udcf1 +91 8170972754\",\"example\":{\"body_text\":[[\"thank you for order\",\"on omx\",\"now track\",\"your order\",\"Thanks\"]]}},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Start Today\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"sub_category\":\"CUSTOM\",\"id\":\"1672996559971853\"}}', 19),
(35, '1099fada-bedf-4849-9dc4-3c118bc25981', 'APPROVED', 'orderf', '2025-03-11 06:21:08', '2025-03-11 06:21:08', '496980720157053', 'UTILITY', 'en', '{\"template\":{\"name\":\"orderf\",\"parameter_format\":\"POSITIONAL\",\"components\":[{\"type\":\"HEADER\",\"format\":\"IMAGE\",\"example\":{\"header_handle\":[\"https:\\/\\/scontent.whatsapp.net\\/v\\/t61.29466-34\\/480420628_496980723490386_5722244671804834356_n.jpg?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=ApZmbxN1R0YQ7kNvgHdjIZz&_nc_oc=Adi4SpLNPB1iP2fY-kfpJ79tPcFW8DYE0UxtJUxPa1U4U8We2d08ylyL8Kcdtr1aiM6amYgT5FOiVlEje8oTeGTk&_nc_zt=3&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&_nc_gid=A7N34QbfCsaw4dg8VtMGlYU&oh=01_Q5AaIdfBxTtyG-Vwrxjtc0rr2sTE1aFkYJSRl7mBKLXQKjcC&oe=67FA3E44\"]}},{\"type\":\"BODY\",\"text\":\"*{{1}}*\\n\\n\\ud83d\\ude80 *Meta Verified WhatsApp API Panel*\\n{{2}}\\n\\n{{3}}\\n\\u2705 Get Source Code + Documentation\\n\\n{{4}}\\n*{{5}}*\\n\\n\\ud83d\\udcde Contact us now!\\n\\ud83d\\udcf1 +91 8170972754\",\"example\":{\"body_text\":[[\"thank you for order \",\"on omx \",\"track now\",\"shop now\",\"thanks\"]]}},{\"type\":\"BUTTONS\",\"buttons\":[{\"type\":\"QUICK_REPLY\",\"text\":\"Start Today\"}]}],\"language\":\"en\",\"status\":\"APPROVED\",\"category\":\"UTILITY\",\"sub_category\":\"CUSTOM\",\"id\":\"496980720157053\"}}', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `bot_flows`
--
ALTER TABLE `bot_flows`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD KEY `fk_bot_flows_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `bot_replies`
--
ALTER TABLE `bot_replies`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_bot_replies_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_bot_replies_bot_flows1_idx` (`bot_flows__id`),
  ADD KEY `fk_bot_replies_bot_replies1_idx` (`bot_replies__id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_campaigns_whatsapp_templates1_idx` (`whatsapp_templates__id`),
  ADD KEY `fk_campaigns_users1_idx` (`users__id`),
  ADD KEY `fk_campaigns_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `campaign_groups`
--
ALTER TABLE `campaign_groups`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_campaign_groups_campaigns1_idx` (`campaigns__id`),
  ADD KEY `fk_campaign_groups_contact_groups1_idx` (`contact_groups__id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_contacts_countries1_idx` (`countries__id`),
  ADD KEY `fk_contacts_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_contacts_users1_idx` (`assigned_users__id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_contact_custom_fields_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `contact_custom_field_values`
--
ALTER TABLE `contact_custom_field_values`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_contact_custom_field_values_contacts1_idx` (`contacts__id`),
  ADD KEY `fk_contact_custom_field_values_contact_custom_fields1_idx` (`contact_custom_fields__id`);

--
-- Indexes for table `contact_groups`
--
ALTER TABLE `contact_groups`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_groups_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `contact_labels`
--
ALTER TABLE `contact_labels`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_contact_labels_labels1_idx` (`labels__id`),
  ADD KEY `fk_contact_labels_contacts1_idx` (`contacts__id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group_contacts`
--
ALTER TABLE `group_contacts`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_group_contacts_contact_groups1_idx` (`contact_groups__id`),
  ADD KEY `fk_group_contacts_contacts1_idx` (`contacts__id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_labels_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `manual_subscriptions`
--
ALTER TABLE `manual_subscriptions`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_manual_subscriptions_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `message_labels`
--
ALTER TABLE `message_labels`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_message_labels_labels1_idx` (`labels__id`),
  ADD KEY `fk_message_labels_whatsapp_message_logs1_idx` (`whatsapp_message_logs__id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_pages_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`vendor_model__id`,`stripe_status`),
  ADD KEY `stripe_status` (`stripe_status`),
  ADD KEY `vendor_model__id` (`vendor_model__id`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stripe_plan_UNIQUE` (`stripe_price`,`subscription_id`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`),
  ADD KEY `fk_subscription_items_subscriptions1_idx` (`subscription_id`),
  ADD KEY `stripe_id` (`stripe_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_tickets_contacts1_idx` (`contacts__id`),
  ADD KEY `fk_tickets_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_tickets_vendor_users1_idx` (`vendor_users__id`),
  ADD KEY `fk_tickets_users1_idx` (`assigned_users__id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `reference_id_UNIQUE` (`reference_id`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_transactions_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_transactions_subscriptions1_idx` (`subscriptions_id`),
  ADD KEY `fk_transactions_manual_subscriptions1_idx` (`manual_subscriptions__id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_users_countries1_idx` (`countries__id`),
  ADD KEY `fk_users_user_roles1_idx` (`user_roles__id`),
  ADD KEY `fk_users_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `name` (`key_name`),
  ADD KEY `fk_user_settings_users1_idx` (`users__id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `stripe_id` (`stripe_id`);

--
-- Indexes for table `vendor_settings`
--
ALTER TABLE `vendor_settings`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_vendor_settings_vendors1_idx` (`vendors__id`);

--
-- Indexes for table `vendor_users`
--
ALTER TABLE `vendor_users`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_vendor_users_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_vendor_users_users1_idx` (`users__id`);

--
-- Indexes for table `whatsapp_message_logs`
--
ALTER TABLE `whatsapp_message_logs`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_whatsapp_message_status_logs_contacts1_idx` (`contacts__id`),
  ADD KEY `fk_whatsapp_message_status_logs_campaigns1_idx` (`campaigns__id`),
  ADD KEY `fk_whatsapp_message_status_logs_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_whatsapp_message_logs_users1_idx` (`messaged_by_users__id`);

--
-- Indexes for table `whatsapp_message_queue`
--
ALTER TABLE `whatsapp_message_queue`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_whatsapp_message_queue_vendors1_idx` (`vendors__id`),
  ADD KEY `fk_whatsapp_message_queue_campaigns1_idx` (`campaigns__id`),
  ADD KEY `fk_whatsapp_message_queue_contacts1_idx` (`contacts__id`);

--
-- Indexes for table `whatsapp_templates`
--
ALTER TABLE `whatsapp_templates`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_whatsapp_templates_vendors1_idx` (`vendors__id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `bot_flows`
--
ALTER TABLE `bot_flows`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bot_replies`
--
ALTER TABLE `bot_replies`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `campaign_groups`
--
ALTER TABLE `campaign_groups`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_custom_field_values`
--
ALTER TABLE `contact_custom_field_values`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_groups`
--
ALTER TABLE `contact_groups`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_labels`
--
ALTER TABLE `contact_labels`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_contacts`
--
ALTER TABLE `group_contacts`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `manual_subscriptions`
--
ALTER TABLE `manual_subscriptions`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `message_labels`
--
ALTER TABLE `message_labels`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(19) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(19) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vendor_settings`
--
ALTER TABLE `vendor_settings`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `vendor_users`
--
ALTER TABLE `vendor_users`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `whatsapp_message_logs`
--
ALTER TABLE `whatsapp_message_logs`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- AUTO_INCREMENT for table `whatsapp_message_queue`
--
ALTER TABLE `whatsapp_message_queue`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `whatsapp_templates`
--
ALTER TABLE `whatsapp_templates`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bot_flows`
--
ALTER TABLE `bot_flows`
  ADD CONSTRAINT `fk_bot_flows_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `bot_replies`
--
ALTER TABLE `bot_replies`
  ADD CONSTRAINT `fk_bot_replies_bot_flows1` FOREIGN KEY (`bot_flows__id`) REFERENCES `bot_flows` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bot_replies_bot_replies1` FOREIGN KEY (`bot_replies__id`) REFERENCES `bot_replies` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bot_replies_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `fk_campaigns_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_campaigns_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_campaigns_whatsapp_templates1` FOREIGN KEY (`whatsapp_templates__id`) REFERENCES `whatsapp_templates` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `campaign_groups`
--
ALTER TABLE `campaign_groups`
  ADD CONSTRAINT `fk_campaign_groups_campaigns1` FOREIGN KEY (`campaigns__id`) REFERENCES `campaigns` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_campaign_groups_contact_groups1` FOREIGN KEY (`contact_groups__id`) REFERENCES `contact_groups` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `fk_contacts_countries1` FOREIGN KEY (`countries__id`) REFERENCES `countries` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contacts_users1` FOREIGN KEY (`assigned_users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contacts_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD CONSTRAINT `fk_contact_custom_fields_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contact_custom_field_values`
--
ALTER TABLE `contact_custom_field_values`
  ADD CONSTRAINT `fk_contact_custom_field_values_contact_custom_fields1` FOREIGN KEY (`contact_custom_fields__id`) REFERENCES `contact_custom_fields` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contact_custom_field_values_contacts1` FOREIGN KEY (`contacts__id`) REFERENCES `contacts` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contact_groups`
--
ALTER TABLE `contact_groups`
  ADD CONSTRAINT `fk_groups_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contact_labels`
--
ALTER TABLE `contact_labels`
  ADD CONSTRAINT `fk_contact_labels_contacts1` FOREIGN KEY (`contacts__id`) REFERENCES `contacts` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contact_labels_labels1` FOREIGN KEY (`labels__id`) REFERENCES `labels` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `group_contacts`
--
ALTER TABLE `group_contacts`
  ADD CONSTRAINT `fk_group_contacts_contact_groups1` FOREIGN KEY (`contact_groups__id`) REFERENCES `contact_groups` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_group_contacts_contacts1` FOREIGN KEY (`contacts__id`) REFERENCES `contacts` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `labels`
--
ALTER TABLE `labels`
  ADD CONSTRAINT `fk_labels_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `manual_subscriptions`
--
ALTER TABLE `manual_subscriptions`
  ADD CONSTRAINT `fk_manual_subscriptions_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `message_labels`
--
ALTER TABLE `message_labels`
  ADD CONSTRAINT `fk_message_labels_labels1` FOREIGN KEY (`labels__id`) REFERENCES `labels` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_message_labels_whatsapp_message_logs1` FOREIGN KEY (`whatsapp_message_logs__id`) REFERENCES `whatsapp_message_logs` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `fk_pages_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD CONSTRAINT `fk_subscription_items_subscriptions1` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_tickets_contacts1` FOREIGN KEY (`contacts__id`) REFERENCES `contacts` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tickets_users1` FOREIGN KEY (`assigned_users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tickets_vendor_users1` FOREIGN KEY (`vendor_users__id`) REFERENCES `vendor_users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tickets_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transactions_manual_subscriptions1` FOREIGN KEY (`manual_subscriptions__id`) REFERENCES `manual_subscriptions` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transactions_subscriptions1` FOREIGN KEY (`subscriptions_id`) REFERENCES `subscriptions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transactions_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_countries1` FOREIGN KEY (`countries__id`) REFERENCES `countries` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_user_roles1` FOREIGN KEY (`user_roles__id`) REFERENCES `user_roles` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `fk_user_settings_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `vendor_settings`
--
ALTER TABLE `vendor_settings`
  ADD CONSTRAINT `fk_vendor_settings_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `vendor_users`
--
ALTER TABLE `vendor_users`
  ADD CONSTRAINT `fk_vendor_users_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendor_users_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `whatsapp_message_logs`
--
ALTER TABLE `whatsapp_message_logs`
  ADD CONSTRAINT `fk_whatsapp_message_logs_users1` FOREIGN KEY (`messaged_by_users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_whatsapp_message_status_logs_campaigns1` FOREIGN KEY (`campaigns__id`) REFERENCES `campaigns` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_whatsapp_message_status_logs_contacts1` FOREIGN KEY (`contacts__id`) REFERENCES `contacts` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_whatsapp_message_status_logs_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `whatsapp_message_queue`
--
ALTER TABLE `whatsapp_message_queue`
  ADD CONSTRAINT `fk_whatsapp_message_queue_campaigns1` FOREIGN KEY (`campaigns__id`) REFERENCES `campaigns` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_whatsapp_message_queue_contacts1` FOREIGN KEY (`contacts__id`) REFERENCES `contacts` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_whatsapp_message_queue_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `whatsapp_templates`
--
ALTER TABLE `whatsapp_templates`
  ADD CONSTRAINT `fk_whatsapp_templates_vendors1` FOREIGN KEY (`vendors__id`) REFERENCES `vendors` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
