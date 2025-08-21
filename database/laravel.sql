-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2025 at 04:24 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SensorKecepatanAir', 0, NULL, NULL),
(2, 'SensorKetinggianAir', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kecepatan_air`
--

CREATE TABLE `kecepatan_air` (
  `id` bigint UNSIGNED NOT NULL,
  `kecepatan` double NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecepatan_air`
--

INSERT INTO `kecepatan_air` (`id`, `kecepatan`, `keterangan`, `waktu`) VALUES
(10, 0, 'Lambat', '2025-07-20 03:34:14'),
(11, 0, 'Lambat', '2025-07-20 03:34:38'),
(12, 0, 'Lambat', '2025-07-20 03:35:03'),
(13, 0, 'Lambat', '2025-07-20 03:35:28'),
(14, 0, 'Lambat', '2025-07-20 03:35:53'),
(15, 0, 'Lambat', '2025-07-20 03:36:18'),
(16, 0, 'Lambat', '2025-07-20 03:36:42'),
(17, 0, 'Lambat', '2025-07-20 03:37:07'),
(18, 0, 'Lambat', '2025-07-20 03:37:32'),
(19, 0, 'Lambat', '2025-07-20 03:37:56'),
(20, 0, 'Lambat', '2025-07-20 03:38:21'),
(21, 0, 'Lambat', '2025-07-20 03:38:45'),
(22, 0, 'Lambat', '2025-07-20 03:39:10'),
(23, 0, 'Lambat', '2025-07-20 03:39:35'),
(24, 0, 'Lambat', '2025-07-20 03:39:59'),
(25, 0, 'Lambat', '2025-07-20 04:50:14'),
(26, 0, 'Lambat', '2025-07-20 04:50:39'),
(27, 0, 'Lambat', '2025-07-20 04:51:04'),
(28, 0, 'Lambat', '2025-07-20 04:51:29'),
(29, 0, 'Lambat', '2025-07-20 04:51:54'),
(30, 0, 'Lambat', '2025-07-20 04:52:19'),
(31, 0, 'Lambat', '2025-07-20 04:52:44'),
(32, 0, 'Lambat', '2025-07-20 04:53:09'),
(33, 0, 'Lambat', '2025-07-20 04:53:34'),
(34, 0, 'Lambat', '2025-07-20 04:53:59'),
(35, 0, 'Lambat', '2025-07-20 04:54:24'),
(36, 0, 'Lambat', '2025-07-20 04:54:49'),
(37, 0, 'Lambat', '2025-07-20 04:55:14'),
(38, 0, 'Lambat', '2025-07-20 04:55:39'),
(39, 0, 'Lambat', '2025-07-20 04:56:04'),
(40, 0, 'Lambat', '2025-07-20 04:56:29'),
(41, 0, 'Lambat', '2025-07-20 04:56:54'),
(42, 0, 'Lambat', '2025-07-20 04:57:52'),
(43, 0, 'Lambat', '2025-07-20 04:58:17'),
(44, 0, 'Lambat', '2025-07-20 04:58:41'),
(45, 0, 'Lambat', '2025-07-20 04:59:05'),
(46, 1.0991, 'Sedang', '2025-07-20 09:54:18'),
(47, 0.4931, 'Lambat', '2025-07-20 09:54:26'),
(48, 0, 'Lambat', '2025-07-20 09:54:50'),
(49, 0, 'Lambat', '2025-07-20 09:55:14'),
(50, 1.0381, 'Sedang', '2025-07-20 09:55:31'),
(51, 0.278, 'Lambat', '2025-07-20 09:55:35'),
(52, 0.2867, 'Lambat', '2025-07-20 09:55:38'),
(53, 0.5507, 'Sedang', '2025-07-20 09:55:41'),
(54, 0.3353, 'Lambat', '2025-07-20 09:55:52'),
(55, 0.3158, 'Lambat', '2025-07-20 09:55:55'),
(56, 0.3419, 'Lambat', '2025-07-20 09:55:58'),
(57, 0.3071, 'Lambat', '2025-07-20 09:56:02'),
(58, 0.3627, 'Lambat', '2025-07-20 09:56:05'),
(59, 0.3122, 'Lambat', '2025-07-20 09:56:08'),
(60, 0.3478, 'Lambat', '2025-07-20 09:56:12'),
(61, 0.3184, 'Lambat', '2025-07-20 09:56:15'),
(62, 0.3637, 'Lambat', '2025-07-20 09:56:18'),
(63, 0.2863, 'Lambat', '2025-07-20 09:56:22'),
(64, 0.2492, 'Lambat', '2025-07-20 09:56:25'),
(65, 0.2765, 'Lambat', '2025-07-20 09:56:28'),
(66, 0.3873, 'Lambat', '2025-07-20 09:56:31'),
(67, 0.2891, 'Lambat', '2025-07-20 09:56:35'),
(68, 0.2742, 'Lambat', '2025-07-20 09:56:38'),
(69, 0.3721, 'Lambat', '2025-07-20 09:56:41'),
(70, 0.2823, 'Lambat', '2025-07-20 09:56:45'),
(71, 0.438, 'Lambat', '2025-07-20 09:56:49'),
(72, 0.4525, 'Lambat', '2025-07-20 09:56:52'),
(73, 0.2704, 'Lambat', '2025-07-20 09:56:55'),
(74, 0.2886, 'Lambat', '2025-07-20 09:56:59'),
(75, 0.3561, 'Lambat', '2025-07-20 09:57:02'),
(76, 0.3359, 'Lambat', '2025-07-20 09:57:05'),
(77, 0.2966, 'Lambat', '2025-07-20 09:57:08'),
(78, 0.2243, 'Lambat', '2025-07-20 09:57:12'),
(79, 0.1774, 'Lambat', '2025-07-20 09:57:18'),
(80, 0.4794, 'Lambat', '2025-07-20 09:57:21'),
(81, 0.382, 'Lambat', '2025-07-20 09:57:24'),
(82, 0.3246, 'Lambat', '2025-07-20 09:57:28'),
(83, 0.2442, 'Lambat', '2025-07-20 09:57:32'),
(84, 0.2676, 'Lambat', '2025-07-20 09:57:35'),
(85, 0.3327, 'Lambat', '2025-07-20 09:57:38'),
(86, 0.3513, 'Lambat', '2025-07-20 09:57:42'),
(87, 0.2879, 'Lambat', '2025-07-20 09:57:45'),
(88, 0.2939, 'Lambat', '2025-07-20 09:57:49'),
(89, 0.2655, 'Lambat', '2025-07-20 09:57:52'),
(90, 0.5575, 'Sedang', '2025-07-20 09:57:55'),
(91, 0.5641, 'Sedang', '2025-07-20 09:57:58'),
(92, 1.3708, 'Sedang', '2025-07-20 09:58:01'),
(93, 1.6997, 'Sedang', '2025-07-20 09:58:03'),
(94, 1.0466, 'Sedang', '2025-07-20 09:58:05'),
(95, 1.2476, 'Sedang', '2025-07-20 09:58:08'),
(96, 1.0672, 'Sedang', '2025-07-20 09:58:11'),
(97, 1.1953, 'Sedang', '2025-07-20 09:58:13'),
(98, 1.0264, 'Sedang', '2025-07-20 09:58:15'),
(99, 0.724, 'Sedang', '2025-07-20 09:58:18'),
(100, 0.8783, 'Sedang', '2025-07-20 09:58:21'),
(101, 0.9675, 'Sedang', '2025-07-20 09:58:23'),
(102, 0.8124, 'Sedang', '2025-07-20 09:58:25'),
(103, 0.6818, 'Sedang', '2025-07-20 09:58:28'),
(104, 0.689, 'Sedang', '2025-07-20 09:58:31'),
(105, 0.9471, 'Sedang', '2025-07-20 09:58:33'),
(106, 0.7267, 'Sedang', '2025-07-20 09:58:36'),
(107, 1.302, 'Sedang', '2025-07-20 09:58:38'),
(108, 1.171, 'Sedang', '2025-07-20 09:58:41'),
(109, 1.477, 'Sedang', '2025-07-20 09:58:43'),
(110, 1.3483, 'Sedang', '2025-07-20 09:58:45'),
(111, 1.1904, 'Sedang', '2025-07-20 09:58:48'),
(112, 1.0153, 'Sedang', '2025-07-20 09:58:51'),
(113, 0.8187, 'Sedang', '2025-07-20 09:58:53'),
(114, 1.5238, 'Sedang', '2025-07-20 09:58:55'),
(115, 1.0463, 'Sedang', '2025-07-20 09:58:58'),
(116, 0.3551, 'Lambat', '2025-07-20 09:59:02'),
(117, 0.5085, 'Sedang', '2025-07-20 09:59:05'),
(118, 0.3458, 'Lambat', '2025-07-20 09:59:09'),
(119, 0.3092, 'Lambat', '2025-07-20 09:59:12'),
(120, 0.39, 'Lambat', '2025-07-20 09:59:15'),
(121, 0.3233, 'Lambat', '2025-07-20 09:59:20'),
(122, 0.3611, 'Lambat', '2025-07-20 09:59:23'),
(123, 0.4813, 'Lambat', '2025-07-20 09:59:26'),
(124, 0.3022, 'Lambat', '2025-07-20 09:59:29'),
(125, 0.3035, 'Lambat', '2025-07-20 09:59:32'),
(126, 0.2444, 'Lambat', '2025-07-20 09:59:36'),
(127, 0.3644, 'Lambat', '2025-07-20 09:59:39'),
(128, 0.4151, 'Lambat', '2025-07-20 09:59:42'),
(129, 0.3307, 'Lambat', '2025-07-20 09:59:45'),
(130, 0.3124, 'Lambat', '2025-07-20 09:59:49'),
(131, 0.3711, 'Lambat', '2025-07-20 09:59:52'),
(132, 0.6011, 'Sedang', '2025-07-20 09:59:55'),
(133, 0.2591, 'Lambat', '2025-07-20 09:59:58'),
(134, 0.3101, 'Lambat', '2025-07-20 10:00:02'),
(135, 0.297, 'Lambat', '2025-07-20 10:00:05'),
(136, 0.2934, 'Lambat', '2025-07-20 10:00:08'),
(137, 0.4862, 'Lambat', '2025-07-20 10:00:11'),
(138, 0.3495, 'Lambat', '2025-07-20 10:00:14'),
(139, 0.3905, 'Lambat', '2025-07-20 10:00:18'),
(140, 0.4228, 'Lambat', '2025-07-20 10:00:21'),
(141, 0.3378, 'Lambat', '2025-07-20 10:00:25'),
(142, 0.353, 'Lambat', '2025-07-20 10:00:28'),
(143, 0.5144, 'Sedang', '2025-07-20 10:00:31'),
(144, 0.4294, 'Lambat', '2025-07-20 10:00:34'),
(145, 0.4247, 'Lambat', '2025-07-20 10:00:38'),
(146, 0.4531, 'Lambat', '2025-07-20 10:00:42'),
(147, 0.4213, 'Lambat', '2025-07-20 10:00:45'),
(148, 0.2627, 'Lambat', '2025-07-20 10:00:49'),
(149, 0.342, 'Lambat', '2025-07-20 10:00:52'),
(150, 0.4465, 'Lambat', '2025-07-20 10:00:55'),
(151, 0.2865, 'Lambat', '2025-07-20 10:00:58'),
(152, 0.4259, 'Lambat', '2025-07-20 10:01:02'),
(153, 0.4603, 'Lambat', '2025-07-20 10:01:05'),
(154, 0.6922, 'Sedang', '2025-07-20 10:01:08'),
(155, 1.0051, 'Sedang', '2025-07-20 10:01:11'),
(156, 0.756, 'Sedang', '2025-07-20 10:01:13'),
(157, 0.769, 'Sedang', '2025-07-20 10:01:16'),
(158, 0.6459, 'Sedang', '2025-07-20 10:01:18'),
(159, 0.7084, 'Sedang', '2025-07-20 10:01:21'),
(160, 0.555, 'Sedang', '2025-07-20 10:01:24'),
(161, 0.7363, 'Sedang', '2025-07-20 10:01:26'),
(162, 1.4861, 'Sedang', '2025-07-20 10:01:28'),
(163, 1.245, 'Sedang', '2025-07-20 10:01:31'),
(164, 1.3581, 'Sedang', '2025-07-20 10:01:33'),
(165, 1.1463, 'Sedang', '2025-07-20 10:01:36'),
(166, 1.1079, 'Sedang', '2025-07-20 10:01:38'),
(167, 1.1743, 'Sedang', '2025-07-20 10:01:41'),
(168, 1.2824, 'Sedang', '2025-07-20 10:01:43'),
(169, 1.4691, 'Sedang', '2025-07-20 10:01:45'),
(170, 1.3259, 'Sedang', '2025-07-20 10:01:49'),
(171, 1.3617, 'Sedang', '2025-07-20 10:01:51'),
(172, 0.6721, 'Sedang', '2025-07-20 10:01:53'),
(173, 0.9857, 'Sedang', '2025-07-20 10:01:55'),
(174, 1.7508, 'Sedang', '2025-07-20 10:01:58'),
(175, 1.0655, 'Sedang', '2025-07-20 10:02:01'),
(176, 1.2685, 'Sedang', '2025-07-20 10:02:03'),
(177, 1.3774, 'Sedang', '2025-07-20 10:02:05'),
(178, 1.1128, 'Sedang', '2025-07-20 10:02:08'),
(179, 1.4898, 'Sedang', '2025-07-20 10:02:10'),
(180, 1.2533, 'Sedang', '2025-07-20 10:02:12'),
(181, 1.227, 'Sedang', '2025-07-20 10:02:15'),
(182, 1.0799, 'Sedang', '2025-07-20 10:02:17'),
(183, 1.7483, 'Sedang', '2025-07-20 10:02:21'),
(184, 1.3367, 'Sedang', '2025-07-20 10:02:23'),
(185, 1.5675, 'Sedang', '2025-07-20 10:02:26'),
(186, 1.633, 'Sedang', '2025-07-20 10:02:28'),
(187, 1.3376, 'Sedang', '2025-07-20 10:02:30'),
(188, 1.6002, 'Sedang', '2025-07-20 10:02:33'),
(189, 1.4545, 'Sedang', '2025-07-20 10:02:35'),
(190, 1.3214, 'Sedang', '2025-07-20 10:02:37'),
(191, 1.5545, 'Sedang', '2025-07-20 10:02:40'),
(192, 1.3767, 'Sedang', '2025-07-20 10:02:42'),
(193, 1.8165, 'Sedang', '2025-07-20 10:02:45'),
(194, 1.2748, 'Sedang', '2025-07-20 10:02:47'),
(195, 1.5573, 'Sedang', '2025-07-20 10:02:49'),
(196, 1.2332, 'Sedang', '2025-07-20 10:02:52'),
(197, 1.518, 'Sedang', '2025-07-20 10:02:54'),
(198, 1.4099, 'Sedang', '2025-07-20 10:02:56'),
(199, 1.2007, 'Sedang', '2025-07-20 10:02:59'),
(200, 1.1812, 'Sedang', '2025-07-20 10:03:02'),
(201, 1.2372, 'Sedang', '2025-07-20 10:03:04'),
(202, 1.1, 'Sedang', '2025-07-20 10:03:06'),
(203, 1.3184, 'Sedang', '2025-07-20 10:03:09'),
(204, 0.5933, 'Sedang', '2025-07-20 10:03:11'),
(205, 0.3413, 'Lambat', '2025-07-20 10:03:14'),
(206, 0.3481, 'Lambat', '2025-07-20 10:03:17'),
(207, 0.353, 'Lambat', '2025-07-20 10:03:20'),
(208, 0.4076, 'Lambat', '2025-07-20 10:03:23'),
(209, 0.3201, 'Lambat', '2025-07-20 10:03:26'),
(210, 0.2736, 'Lambat', '2025-07-20 10:03:30'),
(211, 0.3552, 'Lambat', '2025-07-20 10:03:33'),
(212, 0.4015, 'Lambat', '2025-07-20 10:03:36'),
(213, 0.281, 'Lambat', '2025-07-20 10:03:40'),
(214, 0.3011, 'Lambat', '2025-07-20 10:03:43'),
(215, 0.3173, 'Lambat', '2025-07-20 10:03:47'),
(216, 0.6704, 'Sedang', '2025-07-20 10:03:50'),
(217, 1.5051, 'Sedang', '2025-07-20 10:03:52'),
(218, 1.119, 'Sedang', '2025-07-20 10:03:54'),
(219, 1.05, 'Sedang', '2025-07-20 10:03:57'),
(220, 0.8451, 'Sedang', '2025-07-20 10:03:59'),
(221, 1.173, 'Sedang', '2025-07-20 10:04:02'),
(222, 1.1373, 'Sedang', '2025-07-20 10:04:04'),
(223, 0.9857, 'Sedang', '2025-07-20 10:04:06'),
(224, 1.1015, 'Sedang', '2025-07-20 10:04:09'),
(225, 1.0606, 'Sedang', '2025-07-20 10:04:11'),
(226, 1.0077, 'Sedang', '2025-07-20 10:04:13'),
(227, 0.3244, 'Lambat', '2025-07-20 10:04:16'),
(228, 0.368, 'Lambat', '2025-07-20 10:04:20'),
(229, 0.297, 'Lambat', '2025-07-20 10:04:23'),
(230, 0.4043, 'Lambat', '2025-07-20 10:04:26'),
(231, 0.3694, 'Lambat', '2025-07-20 10:04:30'),
(232, 0.2984, 'Lambat', '2025-07-20 10:04:34'),
(233, 0.3441, 'Lambat', '2025-07-20 10:04:37'),
(234, 0.2987, 'Lambat', '2025-07-20 10:04:40'),
(235, 0.3384, 'Lambat', '2025-07-20 10:04:43'),
(236, 0.3742, 'Lambat', '2025-07-20 10:04:46'),
(237, 0.3677, 'Lambat', '2025-07-20 10:04:50'),
(238, 0.3915, 'Lambat', '2025-07-20 10:04:53'),
(239, 0.3659, 'Lambat', '2025-07-20 10:04:57'),
(240, 0.3806, 'Lambat', '2025-07-20 10:05:00'),
(241, 0.3475, 'Lambat', '2025-07-20 10:05:03'),
(242, 0.3411, 'Lambat', '2025-07-20 10:05:06'),
(243, 0.3405, 'Lambat', '2025-07-20 10:05:10'),
(244, 0.3235, 'Lambat', '2025-07-20 10:05:13'),
(245, 0.3115, 'Lambat', '2025-07-20 10:05:17'),
(246, 1.04, 'Sedang', '2025-07-29 00:46:46'),
(247, 1.04, 'Sedang', '2025-07-29 00:48:50');

--
-- Triggers `kecepatan_air`
--
DELIMITER $$
CREATE TRIGGER `trigger_kecepatan_air` BEFORE INSERT ON `kecepatan_air` FOR EACH ROW BEGIN
    IF NEW.kecepatan >= 2 THEN
        SET NEW.keterangan = 'Cepat';
    ELSEIF NEW.kecepatan >= 0.5 THEN
        SET NEW.keterangan = 'Sedang';
    ELSE
        SET NEW.keterangan = 'Lambat';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ketinggian_air`
--

CREATE TABLE `ketinggian_air` (
  `id` bigint UNSIGNED NOT NULL,
  `ketinggian` double NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ketinggian_air`
--

INSERT INTO `ketinggian_air` (`id`, `ketinggian`, `keterangan`, `waktu`) VALUES
(10, 0.89, 'Rendah', '2025-07-20 03:34:14'),
(11, 0.88, 'Rendah', '2025-07-20 03:34:38'),
(12, 0.94, 'Rendah', '2025-07-20 03:35:03'),
(13, 0, 'Rendah', '2025-07-20 03:35:28'),
(14, 0, 'Rendah', '2025-07-20 03:35:53'),
(15, 0, 'Rendah', '2025-07-20 03:36:18'),
(16, 0, 'Rendah', '2025-07-20 03:36:42'),
(17, 0, 'Rendah', '2025-07-20 03:37:07'),
(18, 0, 'Rendah', '2025-07-20 03:37:32'),
(19, 0, 'Rendah', '2025-07-20 03:37:56'),
(20, 0, 'Rendah', '2025-07-20 03:38:21'),
(21, 0, 'Rendah', '2025-07-20 03:38:45'),
(22, 0, 'Rendah', '2025-07-20 03:39:10'),
(23, 0, 'Rendah', '2025-07-20 03:39:35'),
(24, 0, 'Rendah', '2025-07-20 03:39:59'),
(25, 2.12, 'Rendah', '2025-07-20 04:50:14'),
(26, 2.14, 'Rendah', '2025-07-20 04:50:39'),
(27, 1.89, 'Rendah', '2025-07-20 04:51:04'),
(28, 1.27, 'Rendah', '2025-07-20 04:51:29'),
(29, 1.17, 'Rendah', '2025-07-20 04:51:54'),
(30, 1.03, 'Rendah', '2025-07-20 04:52:19'),
(31, 0.98, 'Rendah', '2025-07-20 04:52:44'),
(32, 1.03, 'Rendah', '2025-07-20 04:53:09'),
(33, 1.05, 'Rendah', '2025-07-20 04:53:34'),
(34, 1.02, 'Rendah', '2025-07-20 04:53:59'),
(35, 0.96, 'Rendah', '2025-07-20 04:54:24'),
(36, 0.99, 'Rendah', '2025-07-20 04:54:49'),
(37, 1.03, 'Rendah', '2025-07-20 04:55:14'),
(38, 1.55, 'Rendah', '2025-07-20 04:55:39'),
(39, 1.14, 'Rendah', '2025-07-20 04:56:04'),
(40, 1.1, 'Rendah', '2025-07-20 04:56:29'),
(41, 1.08, 'Rendah', '2025-07-20 04:56:54'),
(42, 1.02, 'Rendah', '2025-07-20 04:57:52'),
(43, 1.02, 'Rendah', '2025-07-20 04:58:17'),
(44, 0.99, 'Rendah', '2025-07-20 04:58:41'),
(45, 1.03, 'Rendah', '2025-07-20 04:59:05'),
(46, 5.53, 'Sedang', '2025-07-20 09:54:18'),
(47, 5.51, 'Sedang', '2025-07-20 09:54:26'),
(48, 5.56, 'Sedang', '2025-07-20 09:54:50'),
(49, 5.5, 'Sedang', '2025-07-20 09:55:14'),
(50, 0, 'Rendah', '2025-07-20 09:55:31'),
(51, 0, 'Rendah', '2025-07-20 09:55:35'),
(52, 0, 'Rendah', '2025-07-20 09:55:38'),
(53, 0, 'Rendah', '2025-07-20 09:55:41'),
(54, 11.45, 'Tinggi', '2025-07-20 09:55:52'),
(55, 11.46, 'Tinggi', '2025-07-20 09:55:55'),
(56, 11.49, 'Tinggi', '2025-07-20 09:55:58'),
(57, 11.44, 'Tinggi', '2025-07-20 09:56:01'),
(58, 11.45, 'Tinggi', '2025-07-20 09:56:05'),
(59, 11.46, 'Tinggi', '2025-07-20 09:56:08'),
(60, 11.48, 'Tinggi', '2025-07-20 09:56:12'),
(61, 11.48, 'Tinggi', '2025-07-20 09:56:15'),
(62, 11.48, 'Tinggi', '2025-07-20 09:56:18'),
(63, 11.5, 'Tinggi', '2025-07-20 09:56:22'),
(64, 11.47, 'Tinggi', '2025-07-20 09:56:25'),
(65, 11.5, 'Tinggi', '2025-07-20 09:56:28'),
(66, 11.45, 'Tinggi', '2025-07-20 09:56:31'),
(67, 11.44, 'Tinggi', '2025-07-20 09:56:35'),
(68, 11.4, 'Tinggi', '2025-07-20 09:56:38'),
(69, 11.44, 'Tinggi', '2025-07-20 09:56:41'),
(70, 11.45, 'Tinggi', '2025-07-20 09:56:45'),
(71, 11.45, 'Tinggi', '2025-07-20 09:56:49'),
(72, 11.39, 'Tinggi', '2025-07-20 09:56:52'),
(73, 11.43, 'Tinggi', '2025-07-20 09:56:55'),
(74, 11.44, 'Tinggi', '2025-07-20 09:56:59'),
(75, 11.39, 'Tinggi', '2025-07-20 09:57:02'),
(76, 11.41, 'Tinggi', '2025-07-20 09:57:05'),
(77, 11.41, 'Tinggi', '2025-07-20 09:57:08'),
(78, 11.39, 'Tinggi', '2025-07-20 09:57:12'),
(79, 11.4, 'Tinggi', '2025-07-20 09:57:18'),
(80, 11.56, 'Tinggi', '2025-07-20 09:57:21'),
(81, 11.5, 'Tinggi', '2025-07-20 09:57:24'),
(82, 11.56, 'Tinggi', '2025-07-20 09:57:28'),
(83, 11.59, 'Tinggi', '2025-07-20 09:57:32'),
(84, 11.52, 'Tinggi', '2025-07-20 09:57:35'),
(85, 11.47, 'Tinggi', '2025-07-20 09:57:38'),
(86, 11.45, 'Tinggi', '2025-07-20 09:57:42'),
(87, 11.71, 'Tinggi', '2025-07-20 09:57:45'),
(88, 11.56, 'Tinggi', '2025-07-20 09:57:49'),
(89, 11.5, 'Tinggi', '2025-07-20 09:57:52'),
(90, 11.46, 'Tinggi', '2025-07-20 09:57:55'),
(91, 11.37, 'Tinggi', '2025-07-20 09:57:58'),
(92, 11.38, 'Tinggi', '2025-07-20 09:58:01'),
(93, 11.38, 'Tinggi', '2025-07-20 09:58:03'),
(94, 11.37, 'Tinggi', '2025-07-20 09:58:05'),
(95, 11.39, 'Tinggi', '2025-07-20 09:58:08'),
(96, 11.35, 'Tinggi', '2025-07-20 09:58:11'),
(97, 11.38, 'Tinggi', '2025-07-20 09:58:13'),
(98, 11.44, 'Tinggi', '2025-07-20 09:58:15'),
(99, 11.4, 'Tinggi', '2025-07-20 09:58:18'),
(100, 11.42, 'Tinggi', '2025-07-20 09:58:21'),
(101, 11.41, 'Tinggi', '2025-07-20 09:58:23'),
(102, 11.44, 'Tinggi', '2025-07-20 09:58:25'),
(103, 11.4, 'Tinggi', '2025-07-20 09:58:28'),
(104, 11.41, 'Tinggi', '2025-07-20 09:58:31'),
(105, 11.35, 'Tinggi', '2025-07-20 09:58:33'),
(106, 11.38, 'Tinggi', '2025-07-20 09:58:36'),
(107, 11.41, 'Tinggi', '2025-07-20 09:58:38'),
(108, 11.36, 'Tinggi', '2025-07-20 09:58:41'),
(109, 11.34, 'Tinggi', '2025-07-20 09:58:43'),
(110, 11.33, 'Tinggi', '2025-07-20 09:58:45'),
(111, 11.37, 'Tinggi', '2025-07-20 09:58:48'),
(112, 11.47, 'Tinggi', '2025-07-20 09:58:51'),
(113, 11.39, 'Tinggi', '2025-07-20 09:58:53'),
(114, 11.42, 'Tinggi', '2025-07-20 09:58:55'),
(115, 11.4, 'Tinggi', '2025-07-20 09:58:58'),
(116, 11.41, 'Tinggi', '2025-07-20 09:59:02'),
(117, 11.53, 'Tinggi', '2025-07-20 09:59:05'),
(118, 11.44, 'Tinggi', '2025-07-20 09:59:08'),
(119, 11.55, 'Tinggi', '2025-07-20 09:59:12'),
(120, 11.51, 'Tinggi', '2025-07-20 09:59:15'),
(121, 11.49, 'Tinggi', '2025-07-20 09:59:20'),
(122, 11.49, 'Tinggi', '2025-07-20 09:59:23'),
(123, 11.51, 'Tinggi', '2025-07-20 09:59:26'),
(124, 11.52, 'Tinggi', '2025-07-20 09:59:29'),
(125, 11.52, 'Tinggi', '2025-07-20 09:59:32'),
(126, 11.51, 'Tinggi', '2025-07-20 09:59:36'),
(127, 11.5, 'Tinggi', '2025-07-20 09:59:39'),
(128, 11.49, 'Tinggi', '2025-07-20 09:59:42'),
(129, 11.47, 'Tinggi', '2025-07-20 09:59:45'),
(130, 11.51, 'Tinggi', '2025-07-20 09:59:49'),
(131, 11.46, 'Tinggi', '2025-07-20 09:59:52'),
(132, 11.51, 'Tinggi', '2025-07-20 09:59:55'),
(133, 11.49, 'Tinggi', '2025-07-20 09:59:58'),
(134, 11.48, 'Tinggi', '2025-07-20 10:00:02'),
(135, 11.48, 'Tinggi', '2025-07-20 10:00:05'),
(136, 11.45, 'Tinggi', '2025-07-20 10:00:08'),
(137, 11.48, 'Tinggi', '2025-07-20 10:00:11'),
(138, 11.46, 'Tinggi', '2025-07-20 10:00:14'),
(139, 11.42, 'Tinggi', '2025-07-20 10:00:18'),
(140, 11.46, 'Tinggi', '2025-07-20 10:00:21'),
(141, 11.44, 'Tinggi', '2025-07-20 10:00:25'),
(142, 11.47, 'Tinggi', '2025-07-20 10:00:28'),
(143, 11.47, 'Tinggi', '2025-07-20 10:00:31'),
(144, 11.49, 'Tinggi', '2025-07-20 10:00:34'),
(145, 11.46, 'Tinggi', '2025-07-20 10:00:38'),
(146, 11.48, 'Tinggi', '2025-07-20 10:00:42'),
(147, 11.5, 'Tinggi', '2025-07-20 10:00:45'),
(148, 11.52, 'Tinggi', '2025-07-20 10:00:49'),
(149, 11.49, 'Tinggi', '2025-07-20 10:00:52'),
(150, 11.54, 'Tinggi', '2025-07-20 10:00:55'),
(151, 11.47, 'Tinggi', '2025-07-20 10:00:58'),
(152, 11.44, 'Tinggi', '2025-07-20 10:01:02'),
(153, 11.47, 'Tinggi', '2025-07-20 10:01:05'),
(154, 11.44, 'Tinggi', '2025-07-20 10:01:08'),
(155, 11.39, 'Tinggi', '2025-07-20 10:01:11'),
(156, 11.4, 'Tinggi', '2025-07-20 10:01:13'),
(157, 11.37, 'Tinggi', '2025-07-20 10:01:16'),
(158, 11.39, 'Tinggi', '2025-07-20 10:01:18'),
(159, 11.33, 'Tinggi', '2025-07-20 10:01:21'),
(160, 11.32, 'Tinggi', '2025-07-20 10:01:24'),
(161, 11.37, 'Tinggi', '2025-07-20 10:01:26'),
(162, 11.42, 'Tinggi', '2025-07-20 10:01:28'),
(163, 11.37, 'Tinggi', '2025-07-20 10:01:31'),
(164, 11.36, 'Tinggi', '2025-07-20 10:01:33'),
(165, 11.39, 'Tinggi', '2025-07-20 10:01:36'),
(166, 11.42, 'Tinggi', '2025-07-20 10:01:38'),
(167, 11.44, 'Tinggi', '2025-07-20 10:01:41'),
(168, 11.38, 'Tinggi', '2025-07-20 10:01:43'),
(169, 11.34, 'Tinggi', '2025-07-20 10:01:45'),
(170, 11.38, 'Tinggi', '2025-07-20 10:01:49'),
(171, 11.4, 'Tinggi', '2025-07-20 10:01:51'),
(172, 11.41, 'Tinggi', '2025-07-20 10:01:53'),
(173, 11.38, 'Tinggi', '2025-07-20 10:01:55'),
(174, 11.43, 'Tinggi', '2025-07-20 10:01:58'),
(175, 11.41, 'Tinggi', '2025-07-20 10:02:01'),
(176, 11.33, 'Tinggi', '2025-07-20 10:02:03'),
(177, 11.38, 'Tinggi', '2025-07-20 10:02:05'),
(178, 11.39, 'Tinggi', '2025-07-20 10:02:08'),
(179, 11.4, 'Tinggi', '2025-07-20 10:02:10'),
(180, 11.35, 'Tinggi', '2025-07-20 10:02:12'),
(181, 11.36, 'Tinggi', '2025-07-20 10:02:15'),
(182, 11.36, 'Tinggi', '2025-07-20 10:02:17'),
(183, 11.34, 'Tinggi', '2025-07-20 10:02:21'),
(184, 11.37, 'Tinggi', '2025-07-20 10:02:23'),
(185, 11.38, 'Tinggi', '2025-07-20 10:02:26'),
(186, 11.38, 'Tinggi', '2025-07-20 10:02:28'),
(187, 11.37, 'Tinggi', '2025-07-20 10:02:30'),
(188, 11.43, 'Tinggi', '2025-07-20 10:02:33'),
(189, 11.36, 'Tinggi', '2025-07-20 10:02:35'),
(190, 11.35, 'Tinggi', '2025-07-20 10:02:37'),
(191, 11.4, 'Tinggi', '2025-07-20 10:02:40'),
(192, 11.43, 'Tinggi', '2025-07-20 10:02:42'),
(193, 11.38, 'Tinggi', '2025-07-20 10:02:45'),
(194, 11.4, 'Tinggi', '2025-07-20 10:02:47'),
(195, 11.37, 'Tinggi', '2025-07-20 10:02:49'),
(196, 11.39, 'Tinggi', '2025-07-20 10:02:52'),
(197, 11.44, 'Tinggi', '2025-07-20 10:02:54'),
(198, 11.4, 'Tinggi', '2025-07-20 10:02:56'),
(199, 11.38, 'Tinggi', '2025-07-20 10:02:59'),
(200, 11.39, 'Tinggi', '2025-07-20 10:03:02'),
(201, 11.41, 'Tinggi', '2025-07-20 10:03:04'),
(202, 11.4, 'Tinggi', '2025-07-20 10:03:06'),
(203, 11.32, 'Tinggi', '2025-07-20 10:03:08'),
(204, 11.37, 'Tinggi', '2025-07-20 10:03:11'),
(205, 11.46, 'Tinggi', '2025-07-20 10:03:14'),
(206, 11.37, 'Tinggi', '2025-07-20 10:03:17'),
(207, 11.41, 'Tinggi', '2025-07-20 10:03:20'),
(208, 11.39, 'Tinggi', '2025-07-20 10:03:23'),
(209, 11.39, 'Tinggi', '2025-07-20 10:03:26'),
(210, 11.38, 'Tinggi', '2025-07-20 10:03:30'),
(211, 11.36, 'Tinggi', '2025-07-20 10:03:33'),
(212, 11.41, 'Tinggi', '2025-07-20 10:03:36'),
(213, 11.43, 'Tinggi', '2025-07-20 10:03:40'),
(214, 11.36, 'Tinggi', '2025-07-20 10:03:43'),
(215, 11.44, 'Tinggi', '2025-07-20 10:03:47'),
(216, 11.31, 'Tinggi', '2025-07-20 10:03:50'),
(217, 11.32, 'Tinggi', '2025-07-20 10:03:52'),
(218, 11.33, 'Tinggi', '2025-07-20 10:03:54'),
(219, 11.31, 'Tinggi', '2025-07-20 10:03:57'),
(220, 11.33, 'Tinggi', '2025-07-20 10:03:59'),
(221, 11.32, 'Tinggi', '2025-07-20 10:04:02'),
(222, 11.33, 'Tinggi', '2025-07-20 10:04:04'),
(223, 11.33, 'Tinggi', '2025-07-20 10:04:06'),
(224, 11.3, 'Tinggi', '2025-07-20 10:04:09'),
(225, 11.36, 'Tinggi', '2025-07-20 10:04:11'),
(226, 11.34, 'Tinggi', '2025-07-20 10:04:13'),
(227, 11.33, 'Tinggi', '2025-07-20 10:04:16'),
(228, 11.25, 'Tinggi', '2025-07-20 10:04:20'),
(229, 11.31, 'Tinggi', '2025-07-20 10:04:23'),
(230, 11.31, 'Tinggi', '2025-07-20 10:04:26'),
(231, 11.31, 'Tinggi', '2025-07-20 10:04:30'),
(232, 11.34, 'Tinggi', '2025-07-20 10:04:34'),
(233, 11.41, 'Tinggi', '2025-07-20 10:04:37'),
(234, 11.34, 'Tinggi', '2025-07-20 10:04:40'),
(235, 11.38, 'Tinggi', '2025-07-20 10:04:43'),
(236, 11.35, 'Tinggi', '2025-07-20 10:04:46'),
(237, 11.36, 'Tinggi', '2025-07-20 10:04:50'),
(238, 11.32, 'Tinggi', '2025-07-20 10:04:53'),
(239, 11.33, 'Tinggi', '2025-07-20 10:04:57'),
(240, 11.38, 'Tinggi', '2025-07-20 10:05:00'),
(241, 11.36, 'Tinggi', '2025-07-20 10:05:03'),
(242, 11.29, 'Tinggi', '2025-07-20 10:05:06'),
(243, 11.29, 'Tinggi', '2025-07-20 10:05:10'),
(244, 11.35, 'Tinggi', '2025-07-20 10:05:13'),
(245, 11.31, 'Tinggi', '2025-07-20 10:05:17'),
(246, 10.2, 'Tinggi', '2025-07-29 00:46:45'),
(247, 10.2, 'Tinggi', '2025-07-29 00:48:50');

--
-- Triggers `ketinggian_air`
--
DELIMITER $$
CREATE TRIGGER `trigger_ketinggian_air` BEFORE INSERT ON `ketinggian_air` FOR EACH ROW BEGIN
    IF NEW.ketinggian >= 10 THEN
        SET NEW.keterangan = 'Tinggi';
    ELSEIF NEW.ketinggian >= 5 THEN
        SET NEW.keterangan = 'Sedang';
    ELSE
        SET NEW.keterangan = 'Rendah';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2025_06_19_045626_create_kadar_air_table', 1),
(23, '2025_06_19_053841_create_kecepatan_air_table', 1),
(24, '2025_07_22_122051_add_last_seen_to_devices_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `phone` bigint DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phone`, `location`, `about_me`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$Zwr9OvwzCDRadIn8jgR4NuprLmLYGs5TjmOYkXJY7v1ZHjiL40Z6.', 'admin', NULL, NULL, NULL, NULL, '2025-07-04 01:36:59', '2025-07-05 23:38:44'),
(2, 'Mugni Pradimupi', 'mugni@gmail.com', '$2y$10$azYOpHbcGFyh7NPq3tOqY.8zc3AuDpF2zxZ4GSWQZ.5xUCqlYLW.6', 'admin', NULL, NULL, NULL, NULL, '2025-07-04 02:55:40', '2025-07-04 02:55:40'),
(5, 'Pengguna1', 'pengguna1@gmail.com', '$2y$10$ZwjPe.sHhKj6cJB2VrJ/1uVVyuyNAd/2kTOIeVW7lywXDmbVa1O3i', 'user', NULL, NULL, NULL, NULL, '2025-07-04 07:30:52', '2025-07-04 07:30:52'),
(6, 'Pengguna2', 'pengguna2@gmail.com', '$2y$10$7D6i8qQOT/J.OPDgAcbKoeNknwr9tlDUoT5.uM9GsAjp0FQdo2YOm', 'user', NULL, NULL, NULL, NULL, '2025-07-04 07:31:07', '2025-07-04 07:31:07'),
(7, 'Pengguna3', 'pengguna3@gmail.com', '$2y$10$1rmkGojuEVP0ReztAcf6/u1cd/naPi0QNyh4W0msy.mNa0PSFNh9a', 'user', NULL, NULL, NULL, NULL, '2025-07-05 22:36:40', '2025-07-05 22:36:40'),
(8, 'Pengguna4', 'pengguna4@gmail.com', '$2y$10$Z4DvouvawIdk4LRjwt6cMOhqGgEXPz/yU05TDFzGtRydwcdu2iZhe', 'user', NULL, NULL, NULL, NULL, '2025-07-05 23:43:10', '2025-07-05 23:43:10'),
(9, 'Pengguna5', 'pengguna5@gmail.com', '$2y$10$oYP5nf0G9gkN2I8bSNaZw.XgHKsWWLrfTTIZrKD6.oLB/WE/73O3y', 'user', NULL, NULL, NULL, NULL, '2025-07-05 23:43:32', '2025-07-05 23:43:32'),
(10, 'Pengguna6', 'pengguna6@gmail.com', '$2y$10$wdy.lc4I0wfzZa9IoLrQVuf1y5RxwASQzbmN9n8VWJ1HG4CT.zfFi', 'user', NULL, NULL, NULL, NULL, '2025-07-05 23:43:46', '2025-07-05 23:43:46'),
(11, 'Pengguna7', 'pengguna7@gmail.com', '$2y$10$n.ldHhTIhfrRETzP6NhzF.6Tqg9mdLpAntFqlQFT2Tq9rtPXDzJSW', 'user', NULL, NULL, NULL, NULL, '2025-07-05 23:43:59', '2025-07-05 23:44:09'),
(12, 'Pengguna8', 'pengguna8@gmail.com', '$2y$10$sOvGriC1hzffZPnkl5Rm9.8omd4gOfDRbCgKINyUpvkLi5KyMbEK6', 'user', NULL, NULL, NULL, NULL, '2025-07-05 23:44:27', '2025-07-22 05:10:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kecepatan_air`
--
ALTER TABLE `kecepatan_air`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketinggian_air`
--
ALTER TABLE `ketinggian_air`
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
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kecepatan_air`
--
ALTER TABLE `kecepatan_air`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `ketinggian_air`
--
ALTER TABLE `ketinggian_air`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `StatusKetinggianAir` ON SCHEDULE EVERY 10 SECOND STARTS '2025-07-22 19:41:01' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE devices
  SET status = CASE
    WHEN (
      SELECT TIMESTAMPDIFF(SECOND, MAX(waktu), NOW())
      FROM ketinggian_air
    ) > 15 THEN 0
    ELSE 1
  END
WHERE name = 'SensorKetinggianAir'$$

CREATE DEFINER=`root`@`localhost` EVENT `StatusKecepatanAir` ON SCHEDULE EVERY 10 SECOND STARTS '2025-07-22 19:39:38' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE devices
  SET status = CASE
    WHEN (
      SELECT TIMESTAMPDIFF(SECOND, MAX(waktu), NOW())
      FROM kecepatan_air
    ) > 15 THEN 0
    ELSE 1
  END
WHERE name = 'SensorKecepatanAir'$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
