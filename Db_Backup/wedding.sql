-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2022 at 10:53 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_config`
--

INSERT INTO `admin_config` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'contact_number', '+8801730-710493', 'Contact Mobile Number', '2022-01-10 05:10:43', '2022-01-10 05:18:50'),
(2, 'contact_email', 'shahjahanevents@gmail.com', 'Email Address', '2022-01-10 05:13:12', '2022-01-10 05:19:06'),
(3, 'office_address', 'Road # 28, House # 376/A,\r\n<br>\r\n2nd Floor, New DOHS \r\n<br>\r\nMohakhali 1206 Dhaka,\r\n<br>\r\nDhaka Division, Bangladesh', 'Office Address', '2022-01-10 05:15:35', '2022-01-10 05:20:29'),
(4, 'copyright', 'All rights reserved.', 'Copyright', '2022-01-10 05:21:36', '2022-01-10 05:21:36'),
(5, 'social_facebook_url', 'https://web.facebook.com/shahjahan.events/?_rdc=1&_rdr', 'Facebook Page', '2022-01-10 05:23:17', '2022-01-10 05:23:17'),
(6, 'social_twitter_url', '#', 'Twitter Url', '2022-01-10 05:24:12', '2022-01-10 05:24:12'),
(7, 'social_instagram_url', 'https://www.instagram.com/shahjahan_wedding_planner/', 'Instagram Url', '2022-01-10 05:25:00', '2022-01-10 05:25:00'),
(8, 'social_pinterest_url', '#', 'Pinterest Url', '2022-01-10 05:25:37', '2022-01-10 05:25:37'),
(9, 'website_title', 'Shahjahan Wedding Planner & Event Management Ltd', 'Website Title', '2022-01-10 05:37:03', '2022-01-10 05:37:03'),
(10, 'website_description', 'This organization carries a vivid fame and glory by an incompatible performance in Wedding planning and Event management services since the establishment. Customer’s satisfaction is the highest priority of our service. We not only provide services for wedding and event but also care for the quality. Our professional honesty, sincerity and quality control ensure you a splendid wedding planning and event management which is unique throughout the country.', 'Website Description', '2022-01-10 05:40:58', '2022-01-10 05:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Config', 'fa-toggle-on', 'config', NULL, '2022-01-09 03:04:46', '2022-01-09 03:04:46'),
(9, 0, 9, 'Sliders', 'fa-play-circle-o', 'sliders', NULL, NULL, '2022-01-11 04:39:35'),
(10, 0, 10, 'Services', 'fa-paper-plane', 'services', NULL, '2022-01-11 04:34:27', '2022-01-11 06:11:12'),
(13, 10, 11, 'Category', 'fa-briefcase', 'service-categories', NULL, '2022-01-11 06:10:35', '2022-01-11 06:12:06'),
(14, 10, 12, 'Services', 'fa-paper-plane-o', 'services', NULL, '2022-01-11 06:11:31', '2022-01-11 06:12:06'),
(15, 0, 13, 'Packages', 'fa-check-square-o', 'packages', NULL, '2022-01-11 22:22:52', '2022-01-11 22:23:12'),
(16, 0, 14, 'Portfolios', 'fa-image', 'portfolios', NULL, '2022-01-11 23:41:39', '2022-01-11 23:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-09 02:46:25', '2022-01-09 02:46:25'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:47:02', '2022-01-09 02:47:02'),
(3, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:47:15', '2022-01-09 02:47:15'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:48:29', '2022-01-09 02:48:29'),
(5, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:48:56', '2022-01-09 02:48:56'),
(6, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:08', '2022-01-09 02:49:08'),
(7, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:16', '2022-01-09 02:49:16'),
(8, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:20', '2022-01-09 02:49:20'),
(9, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:37', '2022-01-09 02:49:37'),
(10, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:40', '2022-01-09 02:49:40'),
(11, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:41', '2022-01-09 02:49:41'),
(12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:42', '2022-01-09 02:49:42'),
(13, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:43', '2022-01-09 02:49:43'),
(14, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:44', '2022-01-09 02:49:44'),
(15, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:45', '2022-01-09 02:49:45'),
(16, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:47', '2022-01-09 02:49:47'),
(17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:49', '2022-01-09 02:49:49'),
(18, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:50', '2022-01-09 02:49:50'),
(19, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:52', '2022-01-09 02:49:52'),
(20, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:53', '2022-01-09 02:49:53'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:54', '2022-01-09 02:49:54'),
(22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:49:58', '2022-01-09 02:49:58'),
(23, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:00', '2022-01-09 02:50:00'),
(24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:01', '2022-01-09 02:50:01'),
(25, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:02', '2022-01-09 02:50:02'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:03', '2022-01-09 02:50:03'),
(27, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:06', '2022-01-09 02:50:06'),
(28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:50', '2022-01-09 02:50:50'),
(29, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:52', '2022-01-09 02:50:52'),
(30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:56', '2022-01-09 02:50:56'),
(31, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:50:58', '2022-01-09 02:50:58'),
(32, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:01', '2022-01-09 02:51:01'),
(33, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:09', '2022-01-09 02:51:09'),
(34, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:28', '2022-01-09 02:51:28'),
(35, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:46', '2022-01-09 02:51:46'),
(36, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:48', '2022-01-09 02:51:48'),
(37, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:49', '2022-01-09 02:51:49'),
(38, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:50', '2022-01-09 02:51:50'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:51:51', '2022-01-09 02:51:51'),
(40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:52:01', '2022-01-09 02:52:01'),
(41, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:52:08', '2022-01-09 02:52:08'),
(42, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:52:16', '2022-01-09 02:52:16'),
(43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,name,roles,updated_at,username\",\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:52:26', '2022-01-09 02:52:26'),
(44, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:52:29', '2022-01-09 02:52:29'),
(45, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:53:52', '2022-01-09 02:53:52'),
(46, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:53:55', '2022-01-09 02:53:55'),
(47, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:12', '2022-01-09 02:54:12'),
(48, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:15', '2022-01-09 02:54:15'),
(49, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:20', '2022-01-09 02:54:20'),
(50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:22', '2022-01-09 02:54:22'),
(51, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:26', '2022-01-09 02:54:26'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:40', '2022-01-09 02:54:40'),
(53, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 02:54:42', '2022-01-09 02:54:42'),
(54, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-09 03:00:12', '2022-01-09 03:00:12'),
(55, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:00:20', '2022-01-09 03:00:20'),
(56, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:00:23', '2022-01-09 03:00:23'),
(57, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:00:53', '2022-01-09 03:00:53'),
(58, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:00:56', '2022-01-09 03:00:56'),
(59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-09 03:04:59', '2022-01-09 03:04:59'),
(60, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:05:02', '2022-01-09 03:05:02'),
(61, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-09 03:05:20', '2022-01-09 03:05:20'),
(62, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-09 03:05:22', '2022-01-09 03:05:22'),
(63, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:06:14', '2022-01-09 03:06:14'),
(64, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:09:39', '2022-01-09 03:09:39'),
(65, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:09:45', '2022-01-09 03:09:45'),
(66, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:09:53', '2022-01-09 03:09:53'),
(67, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:11:57', '2022-01-09 03:11:57'),
(68, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 03:39:28', '2022-01-09 03:39:28'),
(69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 05:09:49', '2022-01-10 05:09:49'),
(70, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:09:53', '2022-01-10 05:09:53'),
(71, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:09:57', '2022-01-10 05:09:57'),
(72, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"contact_number\",\"value\":\"+8801717-293722\",\"description\":\"Contact Number\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:10:42', '2022-01-10 05:10:42'),
(73, 1, 'admin/config/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-10 05:10:43', '2022-01-10 05:10:43'),
(74, 1, 'admin/config/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:10:48', '2022-01-10 05:10:48'),
(75, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:10:55', '2022-01-10 05:10:55'),
(76, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:12:38', '2022-01-10 05:12:38'),
(77, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"contact_email\",\"value\":\"info@weeding.com\",\"description\":\"Email Address\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:13:12', '2022-01-10 05:13:12'),
(78, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:13:12', '2022-01-10 05:13:12'),
(79, 1, 'admin/config/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:13:18', '2022-01-10 05:13:18'),
(80, 1, 'admin/config/1', 'PUT', '127.0.0.1', '{\"name\":\"contact_number\",\"value\":\"+8801717-293722\",\"description\":\"Contact Mobile Number\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:13:23', '2022-01-10 05:13:23'),
(81, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:13:23', '2022-01-10 05:13:23'),
(82, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:14:17', '2022-01-10 05:14:17'),
(83, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"office_address\",\"value\":\"Wallaway 5st St Normain\\r\\n<br \\/>New York, USA. 98499\",\"description\":\"Office Address\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:15:35', '2022-01-10 05:15:35'),
(84, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:15:35', '2022-01-10 05:15:35'),
(85, 1, 'admin/config/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:15:47', '2022-01-10 05:15:47'),
(86, 1, 'admin/config/3', 'PUT', '127.0.0.1', '{\"name\":\"office_address\",\"value\":\"Dhaka\\r\\n<br \\/>New York, USA. 98499\",\"description\":\"Office Address\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:17:44', '2022-01-10 05:17:44'),
(87, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:17:44', '2022-01-10 05:17:44'),
(88, 1, 'admin/config/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:18:46', '2022-01-10 05:18:46'),
(89, 1, 'admin/config/1', 'PUT', '127.0.0.1', '{\"name\":\"contact_number\",\"value\":\"+8801730-710493\",\"description\":\"Contact Mobile Number\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:18:50', '2022-01-10 05:18:50'),
(90, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:18:50', '2022-01-10 05:18:50'),
(91, 1, 'admin/config/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:18:54', '2022-01-10 05:18:54'),
(92, 1, 'admin/config/2', 'PUT', '127.0.0.1', '{\"name\":\"contact_email\",\"value\":\"shahjahanevents@gmail.com\",\"description\":\"Email Address\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:19:06', '2022-01-10 05:19:06'),
(93, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:19:06', '2022-01-10 05:19:06'),
(94, 1, 'admin/config/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:19:09', '2022-01-10 05:19:09'),
(95, 1, 'admin/config/3', 'PUT', '127.0.0.1', '{\"name\":\"office_address\",\"value\":\"Road # 28, House # 376\\/A,\\r\\n<br>\\r\\n2nd Floor, New DOHS \\r\\n<br>\\r\\nMohakhali 1206 Dhaka,\\r\\n<br>\\r\\nDhaka Division, Bangladesh\",\"description\":\"Office Address\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:20:29', '2022-01-10 05:20:29'),
(96, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:20:29', '2022-01-10 05:20:29'),
(97, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:21:21', '2022-01-10 05:21:21'),
(98, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"copyright\",\"value\":\"All rights reserved.\",\"description\":\"Copyright\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:21:36', '2022-01-10 05:21:36'),
(99, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:21:36', '2022-01-10 05:21:36'),
(100, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:22:20', '2022-01-10 05:22:20'),
(101, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"social_facebook_url\",\"value\":\"https:\\/\\/web.facebook.com\\/shahjahan.events\\/?_rdc=1&_rdr\",\"description\":\"Facebook Page\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:23:17', '2022-01-10 05:23:17'),
(102, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:23:17', '2022-01-10 05:23:17'),
(103, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:23:19', '2022-01-10 05:23:19'),
(104, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"social_twitter_url\",\"value\":\"#\",\"description\":\"Twitter Url\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:24:12', '2022-01-10 05:24:12'),
(105, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:24:12', '2022-01-10 05:24:12'),
(106, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:24:13', '2022-01-10 05:24:13'),
(107, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"social_instagram_url\",\"value\":\"https:\\/\\/www.instagram.com\\/shahjahan_wedding_planner\\/\",\"description\":\"Instagram Url\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:25:00', '2022-01-10 05:25:00'),
(108, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:25:00', '2022-01-10 05:25:00'),
(109, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:25:18', '2022-01-10 05:25:18'),
(110, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"social_pinterest_url\",\"value\":\"#\",\"description\":\"Pinterest Url\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:25:37', '2022-01-10 05:25:37'),
(111, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:25:37', '2022-01-10 05:25:37'),
(112, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:35:01', '2022-01-10 05:35:01'),
(113, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:36:16', '2022-01-10 05:36:16'),
(114, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"website_title\",\"value\":\"Shahjahan Wedding Planner & Event Management Ltd\",\"description\":\"Website Title\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:37:03', '2022-01-10 05:37:03'),
(115, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:37:03', '2022-01-10 05:37:03'),
(116, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:38:20', '2022-01-10 05:38:20'),
(117, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"website_description\",\"value\":\"This organization carries a vivid fame and glory by an incompatible performance in Wedding planning and Event management services since the establishment. Customer\\u2019s satisfaction is the highest priority of our service.\\r\\nWe not only provide services for wedding and event but also care for the quality. Our professional honesty, sincerity and quality control ensure you a splendid wedding planning and event management which is unique throughout the country.\",\"description\":\"Website Description\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/config\"}', '2022-01-10 05:39:10', '2022-01-10 05:39:10'),
(118, 1, 'admin/config/create', 'GET', '127.0.0.1', '[]', '2022-01-10 05:39:10', '2022-01-10 05:39:10'),
(119, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"website_description\",\"value\":\"This organization carries a vivid fame and glory by an incompatible performance in Wedding planning and Event management services since the establishment. Customer\\u2019s satisfaction is the highest priority of our service. We not only provide services for wedding and event but also care for the quality. Our professional honesty, sincerity and quality control ensure you a splendid wedding planning and event management which is unique throughout the country.\",\"description\":\"Website Description\",\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\"}', '2022-01-10 05:40:58', '2022-01-10 05:40:58'),
(120, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 05:40:58', '2022-01-10 05:40:58'),
(121, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:42:19', '2022-01-10 05:42:19'),
(122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 05:52:09', '2022-01-10 05:52:09'),
(123, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:53:01', '2022-01-10 05:53:01'),
(124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 05:53:11', '2022-01-10 05:53:11'),
(125, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:54:02', '2022-01-10 05:54:02'),
(126, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:54:06', '2022-01-10 05:54:06'),
(127, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 05:57:41', '2022-01-10 05:57:41'),
(128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 06:06:17', '2022-01-10 06:06:17'),
(129, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 06:17:56', '2022-01-10 06:17:56'),
(130, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:17:57', '2022-01-10 06:17:57'),
(131, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:18:00', '2022-01-10 06:18:00'),
(132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:20:31', '2022-01-10 06:20:31'),
(133, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-10 06:23:12', '2022-01-10 06:23:12'),
(134, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:23:19', '2022-01-10 06:23:19'),
(135, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Sliders\",\"icon\":\"fa-list\",\"uri\":\"in\\/sliders\",\"roles\":[null],\"permission\":null,\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/auth\\/menu\"}', '2022-01-10 06:23:28', '2022-01-10 06:23:28'),
(136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-10 06:23:29', '2022-01-10 06:23:29'),
(137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 06:23:46', '2022-01-10 06:23:46'),
(138, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 06:23:56', '2022-01-10 06:23:56'),
(139, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:42:07', '2022-01-10 06:42:07'),
(140, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:42:12', '2022-01-10 06:42:12'),
(141, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Sliders\",\"icon\":\"fa-list\",\"uri\":\"sliders\",\"roles\":[null],\"permission\":null,\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/auth\\/menu\"}', '2022-01-10 06:42:20', '2022-01-10 06:42:20'),
(142, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-10 06:42:20', '2022-01-10 06:42:20'),
(143, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 06:42:28', '2022-01-10 06:42:28'),
(144, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:42:33', '2022-01-10 06:42:33'),
(145, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 06:42:52', '2022-01-10 06:42:52'),
(146, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 06:44:47', '2022-01-10 06:44:47'),
(147, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:13', '2022-01-10 06:46:13'),
(148, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:15', '2022-01-10 06:46:15'),
(149, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:17', '2022-01-10 06:46:17'),
(150, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:19', '2022-01-10 06:46:19'),
(151, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:20', '2022-01-10 06:46:20'),
(152, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:23', '2022-01-10 06:46:23'),
(153, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 06:46:34', '2022-01-10 06:46:34'),
(154, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 06:50:19', '2022-01-10 06:50:19'),
(155, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 06:50:43', '2022-01-10 06:50:43'),
(156, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 06:55:27', '2022-01-10 06:55:27'),
(157, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 06:56:15', '2022-01-10 06:56:15'),
(158, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":null,\"title\":null,\"url\":null,\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\"}', '2022-01-10 07:01:09', '2022-01-10 07:01:09'),
(159, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:01:09', '2022-01-10 07:01:09'),
(160, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:01:20', '2022-01-10 07:01:20'),
(161, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:03:17', '2022-01-10 07:03:17'),
(162, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:03:36', '2022-01-10 07:03:36'),
(163, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:04:12', '2022-01-10 07:04:12'),
(164, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:04:32', '2022-01-10 07:04:32'),
(165, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:04:45', '2022-01-10 07:04:45'),
(166, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:08:48', '2022-01-10 07:08:48'),
(167, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:08:57', '2022-01-10 07:08:57'),
(168, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:09:03', '2022-01-10 07:09:03'),
(169, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:09:36', '2022-01-10 07:09:36'),
(170, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:09:49', '2022-01-10 07:09:49'),
(171, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 07:10:54', '2022-01-10 07:10:54'),
(172, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 07:10:59', '2022-01-10 07:10:59'),
(173, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 07:12:49', '2022-01-10 07:12:49'),
(174, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 07:12:50', '2022-01-10 07:12:50'),
(175, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"fdfd\",\"url\":null,\"_token\":\"jkdGGdRrMiT0tFD2jjmUpQSGsayZdMN4zivZXUVo\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/sliders\"}', '2022-01-10 07:13:05', '2022-01-10 07:13:05'),
(176, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:13:06', '2022-01-10 07:13:06'),
(177, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:13:14', '2022-01-10 07:13:14'),
(178, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:14:31', '2022-01-10 07:14:31'),
(179, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:15:14', '2022-01-10 07:15:14'),
(180, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:15:39', '2022-01-10 07:15:39'),
(181, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:17:55', '2022-01-10 07:17:55'),
(182, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:18:27', '2022-01-10 07:18:27'),
(183, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:21:40', '2022-01-10 07:21:40'),
(184, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:22:03', '2022-01-10 07:22:03'),
(185, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 07:22:13', '2022-01-10 07:22:13'),
(186, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 07:22:15', '2022-01-10 07:22:15'),
(187, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 22:13:53', '2022-01-10 22:13:53'),
(188, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 22:14:16', '2022-01-10 22:14:16'),
(189, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:14:20', '2022-01-10 22:14:20'),
(190, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:14:37', '2022-01-10 22:14:37'),
(191, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-10 22:15:46', '2022-01-10 22:15:46'),
(192, 1, 'admin/sliders/1', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"fdfd\",\"url\":null,\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/sliders\\/create\"}', '2022-01-10 22:16:37', '2022-01-10 22:16:37'),
(193, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 22:16:37', '2022-01-10 22:16:37'),
(194, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:16:44', '2022-01-10 22:16:44'),
(195, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:16:51', '2022-01-10 22:16:51'),
(196, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:02', '2022-01-10 22:17:02'),
(197, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:07', '2022-01-10 22:17:07'),
(198, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"In config\",\"icon\":\"fa-list\",\"uri\":\"config\",\"roles\":[null],\"permission\":null,\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/auth\\/menu\"}', '2022-01-10 22:17:12', '2022-01-10 22:17:12'),
(199, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-10 22:17:12', '2022-01-10 22:17:12'),
(200, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:17', '2022-01-10 22:17:17'),
(201, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Sliders\",\"icon\":\"fa-list\",\"uri\":\"sliders\",\"roles\":[null],\"permission\":null,\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/auth\\/menu\"}', '2022-01-10 22:17:21', '2022-01-10 22:17:21'),
(202, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-10 22:17:21', '2022-01-10 22:17:21'),
(203, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:32', '2022-01-10 22:17:32'),
(204, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:34', '2022-01-10 22:17:34'),
(205, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:35', '2022-01-10 22:17:35'),
(206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:36', '2022-01-10 22:17:36'),
(207, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-10 22:17:38', '2022-01-10 22:17:38'),
(208, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:49', '2022-01-10 22:17:49'),
(209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:56', '2022-01-10 22:17:56'),
(210, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:17:58', '2022-01-10 22:17:58'),
(211, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:01', '2022-01-10 22:18:01'),
(212, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:03', '2022-01-10 22:18:03'),
(213, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:04', '2022-01-10 22:18:04'),
(214, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:05', '2022-01-10 22:18:05'),
(215, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:08', '2022-01-10 22:18:08'),
(216, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:09', '2022-01-10 22:18:09'),
(217, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:13', '2022-01-10 22:18:13'),
(218, 1, 'admin/sliders/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\"}', '2022-01-10 22:18:39', '2022-01-10 22:18:39'),
(219, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:40', '2022-01-10 22:18:40'),
(220, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:18:45', '2022-01-10 22:18:45'),
(221, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"1\",\"short_title\":\"fdfdfd\",\"title\":\"weewe\",\"url\":null,\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/sliders\"}', '2022-01-10 22:18:58', '2022-01-10 22:18:58'),
(222, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:18:58', '2022-01-10 22:18:58'),
(223, 1, 'admin/sliders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:19:05', '2022-01-10 22:19:05'),
(224, 1, 'admin/sliders/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:19:18', '2022-01-10 22:19:18'),
(225, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:22:46', '2022-01-10 22:22:46'),
(226, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:22:47', '2022-01-10 22:22:47'),
(227, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"ererre\",\"url\":null,\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/sliders\"}', '2022-01-10 22:23:05', '2022-01-10 22:23:05'),
(228, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:23:05', '2022-01-10 22:23:05'),
(229, 1, 'admin/sliders/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:23:10', '2022-01-10 22:23:10'),
(230, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:36:29', '2022-01-10 22:36:29'),
(231, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:36:45', '2022-01-10 22:36:45'),
(232, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"wewewe\",\"url\":null,\"_token\":\"WeSpWINmjt4YdCwzD6o4H6yIM707BZEiL46DNyB2\",\"_previous_\":\"http:\\/\\/weeding.test\\/admin\\/sliders\"}', '2022-01-10 22:36:59', '2022-01-10 22:36:59'),
(233, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:36:59', '2022-01-10 22:36:59'),
(234, 1, 'admin/sliders/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:37:07', '2022-01-10 22:37:07'),
(235, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:43:31', '2022-01-10 22:43:31'),
(236, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:43:35', '2022-01-10 22:43:35'),
(237, 1, 'admin/sliders/2,3,4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"QnIr79wT7d8oqSTgyEBefqBUn9q0yo6h9qDMr8c5\"}', '2022-01-10 22:43:45', '2022-01-10 22:43:45'),
(238, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:43:45', '2022-01-10 22:43:45'),
(239, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:43:47', '2022-01-10 22:43:47'),
(240, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"QnIr79wT7d8oqSTgyEBefqBUn9q0yo6h9qDMr8c5\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 22:43:58', '2022-01-10 22:43:58'),
(241, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:43:58', '2022-01-10 22:43:58'),
(242, 1, 'admin/sliders/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:44:30', '2022-01-10 22:44:30'),
(243, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"QnIr79wT7d8oqSTgyEBefqBUn9q0yo6h9qDMr8c5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 22:44:38', '2022-01-10 22:44:38'),
(244, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:44:38', '2022-01-10 22:44:38'),
(245, 1, 'admin/sliders/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:44:41', '2022-01-10 22:44:41'),
(246, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:45:30', '2022-01-10 22:45:30'),
(247, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:45:35', '2022-01-10 22:45:35'),
(248, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:01', '2022-01-10 22:48:01'),
(249, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:09', '2022-01-10 22:48:09'),
(250, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:11', '2022-01-10 22:48:11'),
(251, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:15', '2022-01-10 22:48:15'),
(252, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:19', '2022-01-10 22:48:19'),
(253, 1, 'admin/auth/menu/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"QnIr79wT7d8oqSTgyEBefqBUn9q0yo6h9qDMr8c5\"}', '2022-01-10 22:48:25', '2022-01-10 22:48:25'),
(254, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:26', '2022-01-10 22:48:26'),
(255, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:28', '2022-01-10 22:48:28'),
(256, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:33', '2022-01-10 22:48:33'),
(257, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:36', '2022-01-10 22:48:36'),
(258, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:48:38', '2022-01-10 22:48:38'),
(259, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:48:38', '2022-01-10 22:48:38'),
(260, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:48:38', '2022-01-10 22:48:38'),
(261, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:48:40', '2022-01-10 22:48:40'),
(262, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:49:47', '2022-01-10 22:49:47'),
(263, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 22:49:50', '2022-01-10 22:49:50'),
(264, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:49:59', '2022-01-10 22:49:59'),
(265, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2022-01-10 22:50:20', '2022-01-10 22:50:20'),
(266, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:50:23', '2022-01-10 22:50:23'),
(267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:51:16', '2022-01-10 22:51:16'),
(268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:51:17', '2022-01-10 22:51:17'),
(269, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:51:22', '2022-01-10 22:51:22'),
(270, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:51:23', '2022-01-10 22:51:23'),
(271, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:51:23', '2022-01-10 22:51:23'),
(272, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:51:24', '2022-01-10 22:51:24'),
(273, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:51:25', '2022-01-10 22:51:25'),
(274, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:51:33', '2022-01-10 22:51:33'),
(275, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:51:36', '2022-01-10 22:51:36'),
(276, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:52:18', '2022-01-10 22:52:18'),
(277, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:52:40', '2022-01-10 22:52:40'),
(278, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:53:13', '2022-01-10 22:53:13'),
(279, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-10 22:53:42', '2022-01-10 22:53:42'),
(280, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:53:46', '2022-01-10 22:53:46'),
(281, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 22:56:10', '2022-01-10 22:56:10'),
(282, 1, 'admin/sliders/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:01:52', '2022-01-10 23:01:52'),
(283, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:01:58', '2022-01-10 23:01:58'),
(284, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:02:07', '2022-01-10 23:02:07'),
(285, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:02:26', '2022-01-10 23:02:26'),
(286, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:03:03', '2022-01-10 23:03:03'),
(287, 1, 'admin/sliders/5', 'GET', '127.0.0.1', '[]', '2022-01-10 23:03:03', '2022-01-10 23:03:03'),
(288, 1, 'admin/sliders/5', 'GET', '127.0.0.1', '[]', '2022-01-10 23:03:22', '2022-01-10 23:03:22'),
(289, 1, 'admin/sliders/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:03:25', '2022-01-10 23:03:25'),
(290, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\\/5\"}', '2022-01-10 23:03:30', '2022-01-10 23:03:30'),
(291, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\\/5\"}', '2022-01-10 23:04:05', '2022-01-10 23:04:05'),
(292, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\\/5\"}', '2022-01-10 23:04:13', '2022-01-10 23:04:13'),
(293, 1, 'admin/sliders/5', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"fdfdfd\",\"title\":\"sdsdsd\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\\/5\"}', '2022-01-10 23:04:31', '2022-01-10 23:04:31'),
(294, 1, 'admin/sliders/5', 'GET', '127.0.0.1', '[]', '2022-01-10 23:04:31', '2022-01-10 23:04:31'),
(295, 1, 'admin/sliders/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:04:52', '2022-01-10 23:04:52'),
(296, 1, 'admin/sliders/5', 'GET', '127.0.0.1', '[]', '2022-01-10 23:04:52', '2022-01-10 23:04:52'),
(297, 1, 'admin/sliders/5', 'GET', '127.0.0.1', '[]', '2022-01-10 23:04:58', '2022-01-10 23:04:58'),
(298, 1, 'admin/sliders/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:05:02', '2022-01-10 23:05:02'),
(299, 1, 'admin/sliders/5', 'GET', '127.0.0.1', '[]', '2022-01-10 23:05:02', '2022-01-10 23:05:02'),
(300, 1, 'admin/sliders/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\"}', '2022-01-10 23:06:30', '2022-01-10 23:06:30'),
(301, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:06:31', '2022-01-10 23:06:31'),
(302, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:06:43', '2022-01-10 23:06:43'),
(303, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:06:48', '2022-01-10 23:06:48'),
(304, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:07:03', '2022-01-10 23:07:03'),
(305, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:10:04', '2022-01-10 23:10:04'),
(306, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:11:06', '2022-01-10 23:11:06'),
(307, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:11:36', '2022-01-10 23:11:36'),
(308, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:11:46', '2022-01-10 23:11:46'),
(309, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:12:05', '2022-01-10 23:12:05'),
(310, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:12:14', '2022-01-10 23:12:14'),
(311, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:12:47', '2022-01-10 23:12:47'),
(312, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":null,\"title\":null,\"description\":null,\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\"}', '2022-01-10 23:12:50', '2022-01-10 23:12:50'),
(313, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:12:50', '2022-01-10 23:12:50'),
(314, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"dream wedding\",\"title\":\"To Know Us is to Love Us!\",\"description\":\"We would love to meet up and chat about how we can make YOUR DREAM wedding happen!\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\"}', '2022-01-10 23:13:22', '2022-01-10 23:13:22'),
(315, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:13:23', '2022-01-10 23:13:23'),
(316, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:13:28', '2022-01-10 23:13:28'),
(317, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:13:33', '2022-01-10 23:13:33'),
(318, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:13:34', '2022-01-10 23:13:34'),
(319, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"dream maker\",\"title\":\"Your Personal Dream Maker\",\"description\":\"We believe that it is all about the BIG DREAMS and the small details!\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:14:24', '2022-01-10 23:14:24'),
(320, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:14:24', '2022-01-10 23:14:24'),
(321, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:14:26', '2022-01-10 23:14:26'),
(322, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"planing dream\",\"title\":\"Destination Wedding Planner\",\"description\":\"No matter your dreams - we can assist you in planning your PWE WEDDINGS & EVENTS.\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:14:55', '2022-01-10 23:14:55'),
(323, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:14:55', '2022-01-10 23:14:55'),
(324, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:14:57', '2022-01-10 23:14:57'),
(325, 1, 'admin/sliders/1', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"1\",\"short_title\":\"dream wedding\",\"title\":\"To Know Us is to Love Us!\",\"description\":\"We would love to meet up and chat about how we can make YOUR DREAM wedding happen!\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:15:00', '2022-01-10 23:15:00'),
(326, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:15:00', '2022-01-10 23:15:00'),
(327, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:15:05', '2022-01-10 23:15:05'),
(328, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:15:11', '2022-01-10 23:15:11'),
(329, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:17:09', '2022-01-10 23:17:09'),
(330, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":null,\"title\":null,\"description\":null,\"btn_title\":\"Buy Now\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:17:20', '2022-01-10 23:17:20'),
(331, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2022-01-10 23:17:21', '2022-01-10 23:17:21'),
(332, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:17:24', '2022-01-10 23:17:24'),
(333, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:17:26', '2022-01-10 23:17:26'),
(334, 1, 'admin/sliders/1', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"1\",\"short_title\":\"dream wedding\",\"title\":\"To Know Us is to Love Us!\",\"description\":\"We would love to meet up and chat about how we can make YOUR DREAM wedding happen!\",\"btn_title\":\"Buy Now\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:17:30', '2022-01-10 23:17:30'),
(335, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:17:30', '2022-01-10 23:17:30'),
(336, 1, 'admin/sliders/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:17:32', '2022-01-10 23:17:32'),
(337, 1, 'admin/sliders/2', 'PUT', '127.0.0.1', '{\"thumbnail_type\":\"0\",\"short_title\":\"dream maker\",\"title\":\"Your Personal Dream Maker\",\"description\":\"We believe that it is all about the BIG DREAMS and the small details!\",\"btn_title\":\"Buy Now\",\"url\":null,\"_token\":\"rqje52Hli7y5zouztNKztgGNn07EP7JqZ2jGjp07\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/sliders\"}', '2022-01-10 23:17:35', '2022-01-10 23:17:35');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(338, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:17:35', '2022-01-10 23:17:35'),
(339, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-10 23:17:38', '2022-01-10 23:17:38'),
(340, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:39:49', '2022-01-10 23:39:49'),
(341, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:49:35', '2022-01-10 23:49:35'),
(342, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:49:37', '2022-01-10 23:49:37'),
(343, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-10 23:49:58', '2022-01-10 23:49:58'),
(344, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-10 23:50:07', '2022-01-10 23:50:07'),
(345, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2022-01-11 00:21:14', '2022-01-11 00:21:14'),
(346, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-11 04:33:22', '2022-01-11 04:33:22'),
(347, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:33:27', '2022-01-11 04:33:27'),
(348, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:33:34', '2022-01-11 04:33:34'),
(349, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:33:38', '2022-01-11 04:33:38'),
(350, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-bars\",\"uri\":\"services\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 04:34:27', '2022-01-11 04:34:27'),
(351, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 04:34:28', '2022-01-11 04:34:28'),
(352, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]\"}', '2022-01-11 04:34:42', '2022-01-11 04:34:42'),
(353, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:34:43', '2022-01-11 04:34:43'),
(354, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:34:45', '2022-01-11 04:34:45'),
(355, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:34:55', '2022-01-11 04:34:55'),
(356, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:34:58', '2022-01-11 04:34:58'),
(357, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-paper-plane-o\",\"uri\":\"services\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/auth\\/menu\"}', '2022-01-11 04:38:08', '2022-01-11 04:38:08'),
(358, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 04:38:08', '2022-01-11 04:38:08'),
(359, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 04:38:14', '2022-01-11 04:38:14'),
(360, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:38:16', '2022-01-11 04:38:16'),
(361, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:39:19', '2022-01-11 04:39:19'),
(362, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:39:21', '2022-01-11 04:39:21'),
(363, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:39:24', '2022-01-11 04:39:24'),
(364, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Sliders\",\"icon\":\"fa-play-circle-o\",\"uri\":\"sliders\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/auth\\/menu\"}', '2022-01-11 04:39:35', '2022-01-11 04:39:35'),
(365, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 04:39:36', '2022-01-11 04:39:36'),
(366, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 04:39:38', '2022-01-11 04:39:38'),
(367, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:40:04', '2022-01-11 04:40:04'),
(368, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:43:41', '2022-01-11 04:43:41'),
(369, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:43:46', '2022-01-11 04:43:46'),
(370, 1, 'admin/services', 'POST', '127.0.0.1', '{\"short_title\":\"fdfdfd\",\"title\":\"ewdsf\",\"description\":\"sdffsdf\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/services\"}', '2022-01-11 04:45:54', '2022-01-11 04:45:54'),
(371, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:45:55', '2022-01-11 04:45:55'),
(372, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:46:13', '2022-01-11 04:46:13'),
(373, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-11 04:46:42', '2022-01-11 04:46:42'),
(374, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:46:51', '2022-01-11 04:46:51'),
(375, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:47:50', '2022-01-11 04:47:50'),
(376, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:49:25', '2022-01-11 04:49:25'),
(377, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:49:50', '2022-01-11 04:49:50'),
(378, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:50:22', '2022-01-11 04:50:22'),
(379, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 04:51:24', '2022-01-11 04:51:24'),
(380, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:51:31', '2022-01-11 04:51:31'),
(381, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:57:40', '2022-01-11 04:57:40'),
(382, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:57:43', '2022-01-11 04:57:43'),
(383, 1, 'admin/services/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 04:57:58', '2022-01-11 04:57:58'),
(384, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:57:59', '2022-01-11 04:57:59'),
(385, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 04:58:01', '2022-01-11 04:58:01'),
(386, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 04:58:06', '2022-01-11 04:58:06'),
(387, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 04:58:09', '2022-01-11 04:58:09'),
(388, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 04:58:41', '2022-01-11 04:58:41'),
(389, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 04:58:42', '2022-01-11 04:58:42'),
(390, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 04:58:42', '2022-01-11 04:58:42'),
(391, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 05:00:15', '2022-01-11 05:00:15'),
(392, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 05:01:36', '2022-01-11 05:01:36'),
(393, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 05:02:08', '2022-01-11 05:02:08'),
(394, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 05:02:23', '2022-01-11 05:02:23'),
(395, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 05:02:26', '2022-01-11 05:02:26'),
(396, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 05:02:28', '2022-01-11 05:02:28'),
(397, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 05:06:14', '2022-01-11 05:06:14'),
(398, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 05:06:16', '2022-01-11 05:06:16'),
(399, 1, 'admin/services', 'POST', '127.0.0.1', '{\"short_title\":\"our services\",\"title\":\"Wedding Planner\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em>Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/services\"}', '2022-01-11 05:10:35', '2022-01-11 05:10:35'),
(400, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 05:10:35', '2022-01-11 05:10:35'),
(401, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 05:20:08', '2022-01-11 05:20:08'),
(402, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 05:27:06', '2022-01-11 05:27:06'),
(403, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"key\":\"0\",\"thumbnail\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\"}', '2022-01-11 05:27:09', '2022-01-11 05:27:09'),
(404, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"short_title\":\"our services\",\"title\":\"Wedding Planner\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em>Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/services\"}', '2022-01-11 05:27:17', '2022-01-11 05:27:17'),
(405, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 05:27:17', '2022-01-11 05:27:17'),
(406, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 05:28:35', '2022-01-11 05:28:35'),
(407, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"short_title\":\"our services\",\"title\":\"Wedding Planner\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em>Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/services\"}', '2022-01-11 06:01:41', '2022-01-11 06:01:41'),
(408, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:01:41', '2022-01-11 06:01:41'),
(409, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:01:53', '2022-01-11 06:01:53'),
(410, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"short_title\":\"our services\",\"title\":\"Wedding Planner\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em class=\\\"ql-size-large\\\">Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/services\"}', '2022-01-11 06:01:59', '2022-01-11 06:01:59'),
(411, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:01:59', '2022-01-11 06:01:59'),
(412, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:07:28', '2022-01-11 06:07:28'),
(413, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:07:32', '2022-01-11 06:07:32'),
(414, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-briefcase\",\"uri\":\"service-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:08:03', '2022-01-11 06:08:03'),
(415, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:08:04', '2022-01-11 06:08:04'),
(416, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-paper-plane\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:09:11', '2022-01-11 06:09:11'),
(417, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:09:11', '2022-01-11 06:09:11'),
(418, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:09:26', '2022-01-11 06:09:26'),
(419, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:09:26', '2022-01-11 06:09:26'),
(420, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:09:34', '2022-01-11 06:09:34'),
(421, 1, 'admin/auth/menu/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:10:05', '2022-01-11 06:10:05'),
(422, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:10:05', '2022-01-11 06:10:05'),
(423, 1, 'admin/auth/menu/12', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:10:09', '2022-01-11 06:10:09'),
(424, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:10:09', '2022-01-11 06:10:09'),
(425, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":null,\"icon\":\"fa-briefcase\",\"uri\":\"service-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:10:26', '2022-01-11 06:10:26'),
(426, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:10:27', '2022-01-11 06:10:27'),
(427, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"Category\",\"icon\":\"fa-briefcase\",\"uri\":\"service-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:10:35', '2022-01-11 06:10:35'),
(428, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:10:36', '2022-01-11 06:10:36'),
(429, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:10:41', '2022-01-11 06:10:41'),
(430, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:10:46', '2022-01-11 06:10:46'),
(431, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:10:51', '2022-01-11 06:10:51'),
(432, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:11:02', '2022-01-11 06:11:02'),
(433, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-paper-plane\",\"uri\":\"services\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/auth\\/menu\"}', '2022-01-11 06:11:12', '2022-01-11 06:11:12'),
(434, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:11:12', '2022-01-11 06:11:12'),
(435, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"Services\",\"icon\":\"fa-paper-plane-o\",\"uri\":\"services\",\"roles\":[null],\"permission\":null,\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\"}', '2022-01-11 06:11:31', '2022-01-11 06:11:31'),
(436, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:11:32', '2022-01-11 06:11:32'),
(437, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":13}]}]\"}', '2022-01-11 06:11:37', '2022-01-11 06:11:37'),
(438, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:11:37', '2022-01-11 06:11:37'),
(439, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":13}]}]\"}', '2022-01-11 06:11:39', '2022-01-11 06:11:39'),
(440, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:11:39', '2022-01-11 06:11:39'),
(441, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:11:41', '2022-01-11 06:11:41'),
(442, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:11:45', '2022-01-11 06:11:45'),
(443, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:11:47', '2022-01-11 06:11:47'),
(444, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:11:48', '2022-01-11 06:11:48'),
(445, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:12:00', '2022-01-11 06:12:00'),
(446, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14}]}]\"}', '2022-01-11 06:12:06', '2022-01-11 06:12:06'),
(447, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:12:06', '2022-01-11 06:12:06'),
(448, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14}]}]\"}', '2022-01-11 06:12:08', '2022-01-11 06:12:08'),
(449, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:12:08', '2022-01-11 06:12:08'),
(450, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 06:12:10', '2022-01-11 06:12:10'),
(451, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:12:12', '2022-01-11 06:12:12'),
(452, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:14:44', '2022-01-11 06:14:44'),
(453, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:14:45', '2022-01-11 06:14:45'),
(454, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:14:47', '2022-01-11 06:14:47'),
(455, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Wedding\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/service-categories\"}', '2022-01-11 06:14:55', '2022-01-11 06:14:55'),
(456, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2022-01-11 06:14:56', '2022-01-11 06:14:56'),
(457, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:15:00', '2022-01-11 06:15:00'),
(458, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:15:02', '2022-01-11 06:15:02'),
(459, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:24:32', '2022-01-11 06:24:32'),
(460, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:24:35', '2022-01-11 06:24:35'),
(461, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Service\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-11 06:24:40', '2022-01-11 06:24:40'),
(462, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:24:40', '2022-01-11 06:24:40'),
(463, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:24:42', '2022-01-11 06:24:42'),
(464, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_ServiceCategory\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-11 06:24:46', '2022-01-11 06:24:46'),
(465, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:24:46', '2022-01-11 06:24:46'),
(466, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:32:56', '2022-01-11 06:32:56'),
(467, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:33:10', '2022-01-11 06:33:10'),
(468, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-01-11 06:34:31', '2022-01-11 06:34:31'),
(469, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:34:35', '2022-01-11 06:34:35'),
(470, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:34:37', '2022-01-11 06:34:37'),
(471, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Wedding\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/service-categories\"}', '2022-01-11 06:34:43', '2022-01-11 06:34:43'),
(472, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2022-01-11 06:34:43', '2022-01-11 06:34:43'),
(473, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:34:46', '2022-01-11 06:34:46'),
(474, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:34:48', '2022-01-11 06:34:48'),
(475, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"1\",\"title\":\"WEDDING PLANNER\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em class=\\\"ql-size-large\\\">Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"VfyU0fM5EaXxtHIX77mzLpGCzS1nArDZm3jAXhHs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/services\"}', '2022-01-11 06:39:15', '2022-01-11 06:39:15'),
(476, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:39:15', '2022-01-11 06:39:15'),
(477, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:51:48', '2022-01-11 06:51:48'),
(478, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:51:58', '2022-01-11 06:51:58'),
(479, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 06:52:15', '2022-01-11 06:52:15'),
(480, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:52:53', '2022-01-11 06:52:53'),
(481, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:52:55', '2022-01-11 06:52:55'),
(482, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:52:56', '2022-01-11 06:52:56'),
(483, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:52:59', '2022-01-11 06:52:59'),
(484, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:52:59', '2022-01-11 06:52:59'),
(485, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:53:01', '2022-01-11 06:53:01'),
(486, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:53:01', '2022-01-11 06:53:01'),
(487, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:53:02', '2022-01-11 06:53:02'),
(488, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:53:03', '2022-01-11 06:53:03'),
(489, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2022-01-11 06:53:50', '2022-01-11 06:53:50'),
(490, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2022-01-11 06:54:05', '2022-01-11 06:54:05'),
(491, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2022-01-11 06:54:26', '2022-01-11 06:54:26'),
(492, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2022-01-11 06:54:31', '2022-01-11 06:54:31'),
(493, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:33', '2022-01-11 06:54:33'),
(494, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:37', '2022-01-11 06:54:37'),
(495, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:42', '2022-01-11 06:54:42'),
(496, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:45', '2022-01-11 06:54:45'),
(497, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:46', '2022-01-11 06:54:46'),
(498, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:49', '2022-01-11 06:54:49'),
(499, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:55', '2022-01-11 06:54:55'),
(500, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:54:58', '2022-01-11 06:54:58'),
(501, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-11 06:56:12', '2022-01-11 06:56:12'),
(502, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-11 06:56:28', '2022-01-11 06:56:28'),
(503, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-11 06:56:40', '2022-01-11 06:56:40'),
(504, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-11 06:57:06', '2022-01-11 06:57:06'),
(505, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:57:13', '2022-01-11 06:57:13'),
(506, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:57:39', '2022-01-11 06:57:39'),
(507, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 06:57:42', '2022-01-11 06:57:42'),
(508, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:01:13', '2022-01-11 07:01:13'),
(509, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:01:17', '2022-01-11 07:01:17'),
(510, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:01:19', '2022-01-11 07:01:19'),
(511, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:03:46', '2022-01-11 07:03:46'),
(512, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:03:49', '2022-01-11 07:03:49'),
(513, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:03:51', '2022-01-11 07:03:51'),
(514, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:03:52', '2022-01-11 07:03:52'),
(515, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:03:53', '2022-01-11 07:03:53'),
(516, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:05:05', '2022-01-11 07:05:05'),
(517, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:05:08', '2022-01-11 07:05:08'),
(518, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:05:38', '2022-01-11 07:05:38'),
(519, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:05:46', '2022-01-11 07:05:46'),
(520, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:07:47', '2022-01-11 07:07:47'),
(521, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:07:51', '2022-01-11 07:07:51'),
(522, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:07:53', '2022-01-11 07:07:53'),
(523, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:09:51', '2022-01-11 07:09:51'),
(524, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:10:04', '2022-01-11 07:10:04'),
(525, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:29:51', '2022-01-11 07:29:51'),
(526, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:31:04', '2022-01-11 07:31:04'),
(527, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:31:07', '2022-01-11 07:31:07'),
(528, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:31:08', '2022-01-11 07:31:08'),
(529, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:31:10', '2022-01-11 07:31:10'),
(530, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-01-11 07:45:50', '2022-01-11 07:45:50'),
(531, 1, 'admin/service-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 07:45:54', '2022-01-11 07:45:54'),
(532, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:21:38', '2022-01-11 22:21:38'),
(533, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-11 22:21:41', '2022-01-11 22:21:41'),
(534, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:21:45', '2022-01-11 22:21:45'),
(535, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Packages\",\"icon\":\"fa-check-square-o\",\"uri\":\"packages\",\"roles\":[null],\"permission\":null,\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-11 22:22:52', '2022-01-11 22:22:52'),
(536, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 22:22:52', '2022-01-11 22:22:52'),
(537, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14}]},{\\\"id\\\":15}]\"}', '2022-01-11 22:23:12', '2022-01-11 22:23:12'),
(538, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:23:12', '2022-01-11 22:23:12'),
(539, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14}]},{\\\"id\\\":15}]\"}', '2022-01-11 22:23:14', '2022-01-11 22:23:14'),
(540, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:23:14', '2022-01-11 22:23:14'),
(541, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 22:23:16', '2022-01-11 22:23:16'),
(542, 1, 'admin/packages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:23:18', '2022-01-11 22:23:18'),
(543, 1, 'admin/packages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:23:22', '2022-01-11 22:23:22'),
(544, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2022-01-11 22:25:10', '2022-01-11 22:25:10'),
(545, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"name\":\"dsfsdf\",\"includes\":{\"values\":[\"esfsd\",\"fsdf\",\"sdfsd\"]},\"price\":\"4334\",\"body\":\"<p>sdfsdf<\\/p>\",\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-11 22:25:30', '2022-01-11 22:25:30'),
(546, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2022-01-11 22:25:31', '2022-01-11 22:25:31'),
(547, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"name\":\"dsfsdf\",\"includes\":{\"values\":[\"esfsd\",\"fsdf\",\"sdfsd\"]},\"price\":\"4334\",\"body\":\"<p>sdfsdf<\\/p>\",\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-11 22:26:08', '2022-01-11 22:26:08'),
(548, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:26:08', '2022-01-11 22:26:08'),
(549, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:26:24', '2022-01-11 22:26:24'),
(550, 1, 'admin/packages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:29:18', '2022-01-11 22:29:18'),
(551, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:29:52', '2022-01-11 22:29:52'),
(552, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:30:06', '2022-01-11 22:30:06'),
(553, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:30:17', '2022-01-11 22:30:17'),
(554, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:30:50', '2022-01-11 22:30:50'),
(555, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:00', '2022-01-11 22:31:00'),
(556, 1, 'admin/packages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:06', '2022-01-11 22:31:06'),
(557, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:07', '2022-01-11 22:31:07'),
(558, 1, 'admin/packages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:09', '2022-01-11 22:31:09'),
(559, 1, 'admin/packages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:21', '2022-01-11 22:31:21'),
(560, 1, 'admin/packages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:23', '2022-01-11 22:31:23'),
(561, 1, 'admin/packages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:26', '2022-01-11 22:31:26'),
(562, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:31:40', '2022-01-11 22:31:40'),
(563, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"name\":\"Full Wedding\",\"includes\":{\"values\":[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Make-Up & Hair Dresser\"]},\"price\":\"10000\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em class=\\\"ql-size-large\\\">Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/packages\"}', '2022-01-11 22:32:50', '2022-01-11 22:32:50'),
(564, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:32:51', '2022-01-11 22:32:51'),
(565, 1, 'admin/packages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:32:55', '2022-01-11 22:32:55'),
(566, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"name\":\"Pre - Wedding\",\"includes\":{\"values\":[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Venue Booking\"]},\"price\":\"8500\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em class=\\\"ql-size-large\\\">Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/packages\"}', '2022-01-11 22:33:48', '2022-01-11 22:33:48'),
(567, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:33:48', '2022-01-11 22:33:48'),
(568, 1, 'admin/packages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:33:50', '2022-01-11 22:33:50'),
(569, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"name\":\"Ceremony\",\"includes\":{\"values\":[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Celebrant\"]},\"price\":\"3500\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em class=\\\"ql-size-large\\\">Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/packages\"}', '2022-01-11 22:34:45', '2022-01-11 22:34:45'),
(570, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:34:45', '2022-01-11 22:34:45'),
(571, 1, 'admin/packages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:34:48', '2022-01-11 22:34:48'),
(572, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"name\":\"Party\",\"includes\":{\"values\":[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Party Planner\"]},\"price\":\"2500\",\"body\":\"<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.<\\/p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.<\\/p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.<\\/p><p><br><\\/p><h4><em class=\\\"ql-size-large\\\">Package Includes<\\/em><\\/h4><ol><li>PWE Weddings &amp; Events Workbook<\\/li><li>Unlimited access to expert wedding advice (via e-mail)<\\/li><li>Access to Preferred Vendors List<\\/li><li>Wedding Assistant for wedding day<\\/li><li>Oversee and help with ceremony\\/reception site set up &amp; tear down<\\/li><li>Review of Vendor contracts<\\/li><li>Distribute final payments and gratuities to vendors as necessary<\\/li><\\/ol><p><br><\\/p>\",\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/packages\"}', '2022-01-11 22:35:40', '2022-01-11 22:35:40'),
(573, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:35:41', '2022-01-11 22:35:41'),
(574, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2022-01-11 22:35:47', '2022-01-11 22:35:47'),
(575, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 22:35:48', '2022-01-11 22:35:48'),
(576, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-11 22:35:51', '2022-01-11 22:35:51'),
(577, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 23:41:15', '2022-01-11 23:41:15'),
(578, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 23:41:18', '2022-01-11 23:41:18'),
(579, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Portfolios\",\"icon\":\"fa-image\",\"uri\":\"portfolios\",\"roles\":[null],\"permission\":null,\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-11 23:41:39', '2022-01-11 23:41:39'),
(580, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 23:41:39', '2022-01-11 23:41:39'),
(581, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14}]},{\\\"id\\\":15},{\\\"id\\\":16}]\"}', '2022-01-11 23:41:44', '2022-01-11 23:41:44'),
(582, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 23:41:44', '2022-01-11 23:41:44'),
(583, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14}]},{\\\"id\\\":15},{\\\"id\\\":16}]\"}', '2022-01-11 23:41:45', '2022-01-11 23:41:45'),
(584, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 23:41:46', '2022-01-11 23:41:46'),
(585, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-11 23:41:48', '2022-01-11 23:41:48'),
(586, 1, 'admin/portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-11 23:41:50', '2022-01-11 23:41:50'),
(587, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:04:29', '2022-01-12 00:04:29'),
(588, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-12 00:04:31', '2022-01-12 00:04:31'),
(589, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:06:00', '2022-01-12 00:06:00');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(590, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:07:49', '2022-01-12 00:07:49'),
(591, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:10:55', '2022-01-12 00:10:55'),
(592, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:11:19', '2022-01-12 00:11:19'),
(593, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:12:23', '2022-01-12 00:12:23'),
(594, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:14:06', '2022-01-12 00:14:06'),
(595, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:14:52', '2022-01-12 00:14:52'),
(596, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:18:40', '2022-01-12 00:18:40'),
(597, 1, 'admin/portfolios', 'POST', '127.0.0.1', '{\"package_id\":null,\"name\":null,\"photographer_name\":null,\"location\":null,\"description\":null,\"videos\":{\"values\":[null]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-12 00:18:42', '2022-01-12 00:18:42'),
(598, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:18:42', '2022-01-12 00:18:42'),
(599, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:18:52', '2022-01-12 00:18:52'),
(600, 1, 'admin/portfolios', 'POST', '127.0.0.1', '{\"package_id\":null,\"name\":null,\"photographer_name\":null,\"location\":null,\"description\":null,\"videos\":{\"values\":[null]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-12 00:18:53', '2022-01-12 00:18:53'),
(601, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:18:53', '2022-01-12 00:18:53'),
(602, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:19:17', '2022-01-12 00:19:17'),
(603, 1, 'admin/portfolios', 'POST', '127.0.0.1', '{\"package_id\":null,\"name\":null,\"photographer_name\":null,\"location\":null,\"description\":null,\"videos\":{\"values\":[null]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-12 00:19:19', '2022-01-12 00:19:19'),
(604, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:19:19', '2022-01-12 00:19:19'),
(605, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:19:25', '2022-01-12 00:19:25'),
(606, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:23:03', '2022-01-12 00:23:03'),
(607, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:23:14', '2022-01-12 00:23:14'),
(608, 1, 'admin/portfolios', 'POST', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-12 00:27:34', '2022-01-12 00:27:34'),
(609, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:27:34', '2022-01-12 00:27:34'),
(610, 1, 'admin/portfolios', 'POST', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-12 00:28:03', '2022-01-12 00:28:03'),
(611, 1, 'admin/portfolios/create', 'GET', '127.0.0.1', '[]', '2022-01-12 00:28:03', '2022-01-12 00:28:03'),
(612, 1, 'admin/portfolios', 'POST', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\"}', '2022-01-12 00:28:17', '2022-01-12 00:28:17'),
(613, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:28:17', '2022-01-12 00:28:17'),
(614, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-12 00:42:46', '2022-01-12 00:42:46'),
(615, 1, 'admin/portfolios/1', 'PUT', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":\"0,2,1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18\"},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/portfolios\"}', '2022-01-12 00:42:57', '2022-01-12 00:42:57'),
(616, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-12 00:42:57', '2022-01-12 00:42:57'),
(617, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-12 00:44:31', '2022-01-12 00:44:31'),
(618, 1, 'admin/portfolios/1', 'PUT', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/portfolios\\/create\"}', '2022-01-12 00:44:34', '2022-01-12 00:44:34'),
(619, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-12 00:44:34', '2022-01-12 00:44:34'),
(620, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-12 00:44:53', '2022-01-12 00:44:53'),
(621, 1, 'admin/portfolios/1', 'PUT', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_method\":\"PUT\"}', '2022-01-12 00:44:56', '2022-01-12 00:44:56'),
(622, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:44:56', '2022-01-12 00:44:56'),
(623, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-12 00:44:58', '2022-01-12 00:44:58'),
(624, 1, 'admin/portfolios/1', 'PUT', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":\"0,1,2,3,4,5,6,7,9,8,10,11,12,13,14,15,16,17,18\"},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/portfolios\"}', '2022-01-12 00:45:04', '2022-01-12 00:45:04'),
(625, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-12 00:45:04', '2022-01-12 00:45:04'),
(626, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '[]', '2022-01-12 00:45:07', '2022-01-12 00:45:07'),
(627, 1, 'admin/portfolios/1', 'PUT', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"wedding_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_file_sort_\":{\"pictures\":null},\"_token\":\"zXcXkf1LtJuFv0VISVg4hnrGGCOFvvTEaL5O7aZs\",\"_method\":\"PUT\"}', '2022-01-12 00:45:10', '2022-01-12 00:45:10'),
(628, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:45:10', '2022-01-12 00:45:10'),
(629, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:45:20', '2022-01-12 00:45:20'),
(630, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-12 00:45:22', '2022-01-12 00:45:22'),
(631, 1, 'admin/portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-12 00:45:42', '2022-01-12 00:45:42'),
(632, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:46:39', '2022-01-12 00:46:39'),
(633, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:46:57', '2022-01-12 00:46:57'),
(634, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:47:14', '2022-01-12 00:47:14'),
(635, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:47:29', '2022-01-12 00:47:29'),
(636, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:48:45', '2022-01-12 00:48:45'),
(637, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:49:12', '2022-01-12 00:49:12'),
(638, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:49:48', '2022-01-12 00:49:48'),
(639, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:51:37', '2022-01-12 00:51:37'),
(640, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 00:59:43', '2022-01-12 00:59:43'),
(641, 1, 'admin/portfolios/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-12 04:19:27', '2022-01-12 04:19:27'),
(642, 1, 'admin/portfolios/1', 'PUT', '127.0.0.1', '{\"package_id\":\"2\",\"name\":\"Eleanor & Stefano\",\"event_planner\":\"Rachel Starletta\",\"photographer_name\":\"Janet Lewis\",\"location\":\"Lakewood WA, USA\",\"description\":\"Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.\",\"videos\":{\"values\":[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]},\"_token\":\"pIKcOAg2W9vmVmYIFgTJW1n7i99VALUcLyTdtX47\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wedding.test\\/admin\\/portfolios\"}', '2022-01-12 04:20:09', '2022-01-12 04:20:09'),
(643, 1, 'admin/portfolios', 'GET', '127.0.0.1', '[]', '2022-01-12 04:20:09', '2022-01-12 04:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin Config', 'ext.config', '', '/config*', '2022-01-09 03:04:46', '2022-01-09 03:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-01-09 00:34:06', '2022-01-09 00:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$0MbT4TuI7GZpdXRSV7v5wOotaHGAAGqzor3/H8hTqk56vuW6ikzaq', 'Administrator', NULL, 'XfAapNmLoOrQuKi36kLoziKjgvopB4Wn0dzymPPit3aAQR63isgU8phSbeJe', '2022-01-09 00:34:06', '2022-01-09 00:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2017_07_17_040159_create_config_table', 2),
(10, '2022_01_10_121029_create_sliders_table', 3),
(13, '2022_01_11_120601_create_service_categories_table', 4),
(14, '2022_01_11_131703_create_services_table', 4),
(15, '2022_01_11_131713_create_packages_table', 5),
(16, '2022_01_12_053912_create_portfolios_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `includes` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `includes`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Full Wedding', '10000.00', '[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Make-Up & Hair Dresser\"]', '<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.</p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.</p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.</p><p><br></p><h4><em class=\"ql-size-large\">Package Includes</em></h4><ol><li>PWE Weddings &amp; Events Workbook</li><li>Unlimited access to expert wedding advice (via e-mail)</li><li>Access to Preferred Vendors List</li><li>Wedding Assistant for wedding day</li><li>Oversee and help with ceremony/reception site set up &amp; tear down</li><li>Review of Vendor contracts</li><li>Distribute final payments and gratuities to vendors as necessary</li></ol><p><br></p>', '2022-01-11 22:26:08', '2022-01-11 22:32:50'),
(2, 'Pre - Wedding', '8500.00', '[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Venue Booking\"]', '<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.</p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.</p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.</p><p><br></p><h4><em class=\"ql-size-large\">Package Includes</em></h4><ol><li>PWE Weddings &amp; Events Workbook</li><li>Unlimited access to expert wedding advice (via e-mail)</li><li>Access to Preferred Vendors List</li><li>Wedding Assistant for wedding day</li><li>Oversee and help with ceremony/reception site set up &amp; tear down</li><li>Review of Vendor contracts</li><li>Distribute final payments and gratuities to vendors as necessary</li></ol><p><br></p>', '2022-01-11 22:33:48', '2022-01-11 22:33:48'),
(3, 'Ceremony', '3500.00', '[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Celebrant\"]', '<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.</p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.</p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.</p><p><br></p><h4><em class=\"ql-size-large\">Package Includes</em></h4><ol><li>PWE Weddings &amp; Events Workbook</li><li>Unlimited access to expert wedding advice (via e-mail)</li><li>Access to Preferred Vendors List</li><li>Wedding Assistant for wedding day</li><li>Oversee and help with ceremony/reception site set up &amp; tear down</li><li>Review of Vendor contracts</li><li>Distribute final payments and gratuities to vendors as necessary</li></ol><p><br></p>', '2022-01-11 22:34:45', '2022-01-11 22:34:45'),
(4, 'Party', '2500.00', '[\"Decoration\",\"DJ & Sound\",\"Photographer\",\"Party Planner\"]', '<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.</p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.</p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.</p><p><br></p><h4><em class=\"ql-size-large\">Package Includes</em></h4><ol><li>PWE Weddings &amp; Events Workbook</li><li>Unlimited access to expert wedding advice (via e-mail)</li><li>Access to Preferred Vendors List</li><li>Wedding Assistant for wedding day</li><li>Oversee and help with ceremony/reception site set up &amp; tear down</li><li>Review of Vendor contracts</li><li>Distribute final payments and gratuities to vendors as necessary</li></ol><p><br></p>', '2022-01-11 22:35:40', '2022-01-11 22:35:40');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_planner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photographer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` text COLLATE utf8mb4_unicode_ci,
  `pictures` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `package_id`, `name`, `event_planner`, `photographer_name`, `location`, `thumbnail`, `videos`, `pictures`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Eleanor & Stefano', 'Rachel Starletta', 'Janet Lewis', 'Lakewood WA, USA', 'files/c1.jpg', '[\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\",\"https:\\/\\/www.youtube.com\\/watch?v=mMw1hseXB3k\"]', '[\"images\\/c1.jpg\",\"images\\/c2.jpg\",\"images\\/c3.jpg\",\"images\\/c4.jpg\",\"images\\/c5.jpg\",\"images\\/c6.jpg\",\"images\\/c7.jpg\",\"images\\/c8.jpg\",\"images\\/c9.jpg\",\"images\\/g1.jpg\",\"images\\/g2.jpg\",\"images\\/g3.jpg\",\"images\\/g4.jpg\",\"images\\/g5.jpg\",\"images\\/g6.jpg\",\"images\\/g7.jpg\",\"images\\/g8.jpg\",\"images\\/g9.jpg\",\"images\\/g10.jpg\",\"images\\/19199603.jpg\"]', 'Quality vestibulum mollis accumsan ultricies. Sed urna velit, maximus eu tellus sit amet, condimentum dictum erat. Sed dolor ipsum, luctus quis est eu, vestibulum tincidunt est. Donec egestas aliquet nunc, ac egestas sapien fermentum in. Sed volutpat ac mi faucibus convallis. Praesent facilisis lobortis tellus. Donec laoreet, erat in sagittis dictum, enim enim dignissim sapien.', '2022-01-12 00:28:17', '2022-01-12 04:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_category_id`, `title`, `body`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 'WEDDING PLANNER', '<p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis the gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam maurisine. Aliquam erat the druna volutpat.</p><p>Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus. Sedat themo eros odio semper sollicitudin mi suscipit non. Suspendisse sagie fermentum quamen.</p><p>Qurabit aliquet orci elit gene tristique lorem commodo vitae. Aliquam tince felis mana gravida aliquam, neque libero hendrerit magna, sit amet mollis lacus quam vivensere the liquam erat the druna volutpat. Lhasellus viverra tristique justo. Duis vitae diam neque. Vivamus ac est augue. Vestibule fringilla dui at elit finibus viverra nec a lacus.</p><p><br></p><h4><em class=\"ql-size-large\">Package Includes</em></h4><ol><li>PWE Weddings &amp; Events Workbook</li><li>Unlimited access to expert wedding advice (via e-mail)</li><li>Access to Preferred Vendors List</li><li>Wedding Assistant for wedding day</li><li>Oversee and help with ceremony/reception site set up &amp; tear down</li><li>Review of Vendor contracts</li><li>Distribute final payments and gratuities to vendors as necessary</li></ol><p><br></p>', 'files/7d1ffa34b1ea32bba700e92020e9b68a.jpg', '2022-01-11 06:39:15', '2022-01-11 06:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', '2022-01-11 06:34:43', '2022-01-11 06:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_type` tinyint(1) DEFAULT '0' COMMENT '0=>Image, 1=>Video',
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_title` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `short_title`, `title`, `description`, `thumbnail`, `thumbnail_type`, `btn_url`, `btn_title`, `created_at`, `updated_at`) VALUES
(1, 'dream wedding', 'To Know Us is to Love Us!', 'We would love to meet up and chat about how we can make YOUR DREAM wedding happen!', 'files/pwe.mp4', 1, NULL, 'Buy Now', '2022-01-10 23:13:22', '2022-01-10 23:17:30'),
(2, 'dream maker', 'Your Personal Dream Maker', 'We believe that it is all about the BIG DREAMS and the small details!', 'files/02.jpg', 0, NULL, 'Buy Now', '2022-01-10 23:14:24', '2022-01-10 23:17:35'),
(3, 'planing dream', 'Destination Wedding Planner', 'No matter your dreams - we can assist you in planning your PWE WEDDINGS & EVENTS.', 'files/03.jpg', 0, NULL, NULL, '2022-01-10 23:14:55', '2022-01-10 23:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_name_unique` (`name`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_name_unique` (`name`);

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
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_name_unique` (`name`),
  ADD KEY `portfolios_package_id_index` (`package_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_service_category_id_index` (`service_category_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_categories_name_unique` (`name`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
