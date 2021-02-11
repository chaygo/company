-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 07:28 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add product', 1, 'add_product'),
(2, 'Can change product', 1, 'change_product'),
(3, 'Can delete product', 1, 'delete_product'),
(4, 'Can view product', 1, 'view_product'),
(5, 'Can add service', 2, 'add_service'),
(6, 'Can change service', 2, 'change_service'),
(7, 'Can delete service', 2, 'delete_service'),
(8, 'Can view service', 2, 'view_service'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session'),
(33, 'Can add contact message', 9, 'add_contactmessage'),
(34, 'Can change contact message', 9, 'change_contactmessage'),
(35, 'Can delete contact message', 9, 'delete_contactmessage'),
(36, 'Can view contact message', 9, 'view_contactmessage'),
(37, 'Can add setting', 10, 'add_setting'),
(38, 'Can change setting', 10, 'change_setting'),
(39, 'Can delete setting', 10, 'delete_setting'),
(40, 'Can view setting', 10, 'view_setting'),
(41, 'Can add blog', 11, 'add_blog'),
(42, 'Can change blog', 11, 'change_blog'),
(43, 'Can delete blog', 11, 'delete_blog'),
(44, 'Can view blog', 11, 'view_blog'),
(45, 'Can add portfolio photos', 12, 'add_portfoliophotos'),
(46, 'Can change portfolio photos', 12, 'change_portfoliophotos'),
(47, 'Can delete portfolio photos', 12, 'delete_portfoliophotos'),
(48, 'Can view portfolio photos', 12, 'view_portfoliophotos'),
(49, 'Can add portfolio', 13, 'add_portfolio'),
(50, 'Can change portfolio', 13, 'change_portfolio'),
(51, 'Can delete portfolio', 13, 'delete_portfolio'),
(52, 'Can view portfolio', 13, 'view_portfolio'),
(53, 'Can add about picture', 14, 'add_aboutpicture'),
(54, 'Can change about picture', 14, 'change_aboutpicture'),
(55, 'Can delete about picture', 14, 'delete_aboutpicture'),
(56, 'Can view about picture', 14, 'view_aboutpicture'),
(57, 'Can add about us', 15, 'add_aboutus'),
(58, 'Can change about us', 15, 'change_aboutus'),
(59, 'Can delete about us', 15, 'delete_aboutus'),
(60, 'Can view about us', 15, 'view_aboutus'),
(61, 'Can add category', 16, 'add_category'),
(62, 'Can change category', 16, 'change_category'),
(63, 'Can delete category', 16, 'delete_category'),
(64, 'Can view category', 16, 'view_category'),
(65, 'Can add category', 17, 'add_category'),
(66, 'Can change category', 17, 'change_category'),
(67, 'Can delete category', 17, 'delete_category'),
(68, 'Can view category', 17, 'view_category'),
(69, 'Can add product', 18, 'add_product'),
(70, 'Can change product', 18, 'change_product'),
(71, 'Can delete product', 18, 'delete_product'),
(72, 'Can view product', 18, 'view_product'),
(73, 'Can add clients', 19, 'add_clients'),
(74, 'Can change clients', 19, 'change_clients'),
(75, 'Can delete clients', 19, 'delete_clients'),
(76, 'Can view clients', 19, 'view_clients'),
(77, 'Can add achievement', 20, 'add_achievement'),
(78, 'Can change achievement', 20, 'change_achievement'),
(79, 'Can delete achievement', 20, 'delete_achievement'),
(80, 'Can view achievement', 20, 'view_achievement'),
(81, 'Can add service picture', 21, 'add_servicepicture'),
(82, 'Can change service picture', 21, 'change_servicepicture'),
(83, 'Can delete service picture', 21, 'delete_servicepicture'),
(84, 'Can view service picture', 21, 'view_servicepicture'),
(85, 'Can add slider', 22, 'add_slider'),
(86, 'Can change slider', 22, 'change_slider'),
(87, 'Can delete slider', 22, 'delete_slider'),
(88, 'Can view slider', 22, 'view_slider');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$qlHZsmMcir8V$Qov7pJ5FXXrOsEQ4qlFSTUpRQzy8W7L5GuNyzu891P0=', '2021-02-03 07:39:22.599600', 1, 'a1', '', '', 'a1@gmail.com', 1, 1, '2021-01-30 11:25:21.150718');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-31 04:58:25.945205', '1', '', 1, '[{\"added\": {}}]', 9, 1),
(2, '2021-01-31 06:18:56.472665', '1', 'Client1', 1, '[{\"added\": {}}]', 10, 1),
(3, '2021-01-31 17:06:22.770976', '4', 'Flower', 3, '', 9, 1),
(4, '2021-01-31 17:06:22.889292', '3', 'Flower', 3, '', 9, 1),
(5, '2021-01-31 17:06:22.910289', '2', 'Flower', 3, '', 9, 1),
(6, '2021-01-31 17:06:23.144079', '1', 'Flower', 3, '', 9, 1),
(7, '2021-01-31 21:40:34.781704', '2', 'Komyuter hyzmaty', 1, '[{\"added\": {}}]', 2, 1),
(8, '2021-01-31 21:46:52.973326', '2', 'Komyuter hyzmaty', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 2, 1),
(9, '2021-01-31 21:48:52.045359', '3', 'Prezentasiya', 1, '[{\"added\": {}}]', 2, 1),
(10, '2021-02-01 19:31:48.982769', '1', 'About my life and my opinions and my ideas, my wishes', 1, '[{\"added\": {}}]', 11, 1),
(11, '2021-02-02 09:03:48.402516', '1', 'Portfolio object (1)', 1, '[{\"added\": {}}]', 13, 1),
(12, '2021-02-02 09:03:59.325416', '2', 'Portfolio object (2)', 1, '[{\"added\": {}}]', 13, 1),
(13, '2021-02-02 09:04:14.127499', '3', 'Portfolio object (3)', 1, '[{\"added\": {}}]', 13, 1),
(14, '2021-02-02 09:05:59.954127', '1', 'Baby', 1, '[{\"added\": {}}]', 12, 1),
(15, '2021-02-02 09:05:59.956127', '2', 'Baby', 1, '[{\"added\": {}}]', 12, 1),
(16, '2021-02-02 09:06:36.207189', '2', 'Cpp', 2, '[{\"changed\": {\"fields\": [\"Portfolio\", \"Image\", \"Title\", \"Description\"]}}]', 12, 1),
(17, '2021-02-02 09:07:06.924502', '3', 'photo', 1, '[{\"added\": {}}]', 12, 1),
(18, '2021-02-02 11:59:42.896578', '1', 'Car', 1, '[{\"added\": {}}]', 15, 1),
(19, '2021-02-02 12:37:20.907651', '3', 'Prezentasiya', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 2, 1),
(20, '2021-02-03 09:21:23.401105', '1', 'Web', 1, '[{\"added\": {}}]', 17, 1),
(21, '2021-02-03 09:21:38.163724', '2', 'App', 1, '[{\"added\": {}}]', 17, 1),
(22, '2021-02-03 09:22:13.508710', '3', 'Design', 1, '[{\"added\": {}}]', 17, 1),
(23, '2021-02-03 09:26:25.382428', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 18, 1),
(24, '2021-02-03 09:29:47.492344', '1', 'Product object (1)', 2, '[]', 18, 1),
(25, '2021-02-03 09:30:11.238120', '1', 'Product object (1)', 2, '[]', 18, 1),
(26, '2021-02-03 09:31:28.085524', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 18, 1),
(27, '2021-02-03 09:34:53.494430', '2', 'App1', 2, '[{\"changed\": {\"fields\": [\"Visible\"]}}]', 18, 1),
(28, '2021-02-03 09:35:03.139077', '1', 'Web1', 2, '[{\"changed\": {\"fields\": [\"Visible\"]}}]', 18, 1),
(29, '2021-02-03 09:40:31.304712', '2', 'App1', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 18, 1),
(30, '2021-02-03 09:40:45.413188', '1', 'Web1', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 18, 1),
(31, '2021-02-03 10:03:00.165562', '1', 'client1', 1, '[{\"added\": {}}]', 19, 1),
(32, '2021-02-03 10:13:02.727406', '1', 'client1', 3, '', 19, 1),
(33, '2021-02-03 10:13:31.816743', '2', 'client1', 1, '[{\"added\": {}}]', 19, 1),
(34, '2021-02-03 10:34:43.152155', '1', 'Car', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(35, '2021-02-03 10:35:04.496461', '1', 'Car', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(36, '2021-02-03 10:53:56.213585', '1', 'Car', 2, '[{\"added\": {\"name\": \"about picture\", \"object\": \"p1\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"p2\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"p3\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"p4\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"p5\"}}]', 15, 1),
(37, '2021-02-03 11:09:02.840575', '1', 'diplom1', 1, '[{\"added\": {}}]', 20, 1),
(38, '2021-02-03 12:20:25.483179', '3', 'Prezentasiya', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s1\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s2\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s3\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s4\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s5\"}}]', 2, 1),
(39, '2021-02-03 19:34:46.737108', '2', 'client1', 2, '[]', 19, 1),
(40, '2021-02-05 06:52:33.914367', '2', 'Nature', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"about picture\", \"object\": \"a1\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"a2\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"a3\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"a4\"}}, {\"added\": {\"name\": \"about picture\", \"object\": \"a5\"}}]', 15, 1),
(41, '2021-02-05 06:54:18.713682', '1', 'Car', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\", \"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tr]\"]}}]', 15, 1),
(42, '2021-02-05 07:26:32.101660', '1', 'Car', 2, '[{\"changed\": {\"fields\": [\"Title [ru]\"]}}]', 15, 1),
(43, '2021-02-05 07:33:52.931973', '2', 'diplom1', 1, '[{\"added\": {}}]', 20, 1),
(44, '2021-02-05 07:34:30.633840', '1', 'diplom2', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Name [en-us]\", \"Name [ru]\", \"Name [tk]\", \"Name [tr]\"]}}]', 20, 1),
(45, '2021-02-05 10:22:27.471127', '2', 'Komyuter hyzmaty', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s1\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s2\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s3\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s4\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s5\"}}]', 2, 1),
(46, '2021-02-05 10:38:25.957978', '3', 'Prezentasiya', 2, '[]', 2, 1),
(47, '2021-02-06 11:18:57.054750', '2', 'About my life and my opinions and my ideas, my wishes', 1, '[{\"added\": {}}]', 11, 1),
(48, '2021-02-06 11:20:53.975537', '1', 'About my life and my opinions and my ideas, my wishes', 2, '[{\"changed\": {\"fields\": [\"User\", \"User [en-us]\", \"User [ru]\", \"User [tk]\", \"User [tr]\", \"Header\", \"Header [en-us]\", \"Header [ru]\", \"Header [tk]\", \"Header [tr]\", \"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 11, 1),
(49, '2021-02-06 11:35:19.069116', '4', 'Nature', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s1\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s2\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s3\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s4\"}}, {\"added\": {\"name\": \"service picture\", \"object\": \"s5\"}}]', 2, 1),
(50, '2021-02-06 11:37:26.076750', '3', 'Car', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\", \"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 2, 1),
(51, '2021-02-06 11:38:44.591880', '2', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\", \"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tr]\"]}}]', 2, 1),
(52, '2021-02-07 09:14:52.564257', '4', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 2, 1),
(53, '2021-02-07 09:24:03.528130', '3', 'Car', 2, '[{\"changed\": {\"name\": \"service picture\", \"object\": \"car1\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car2\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car3\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car4\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car5\", \"fields\": [\"Title\"]}}]', 2, 1),
(54, '2021-02-07 09:39:56.853549', '3', 'Car', 2, '[{\"changed\": {\"name\": \"service picture\", \"object\": \"car1\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car2\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car3\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car4\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car5\", \"fields\": [\"Image\"]}}]', 2, 1),
(55, '2021-02-07 09:44:25.809794', '3', 'Car', 2, '[{\"changed\": {\"name\": \"service picture\", \"object\": \"car1\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car2\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car3\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car4\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"service picture\", \"object\": \"car5\", \"fields\": [\"Image\"]}}]', 2, 1),
(56, '2021-02-07 09:55:07.455351', '4', 'Nature', 2, '[]', 2, 1),
(57, '2021-02-07 10:11:07.427497', '2', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 2, 1),
(58, '2021-02-07 10:11:33.313673', '2', 'Nature', 2, '[]', 2, 1),
(59, '2021-02-07 10:22:19.823678', '2', 'Nature', 2, '[]', 15, 1),
(60, '2021-02-07 10:27:41.068853', '2', 'About my life and my opinions and my ideas, my wishes', 2, '[{\"changed\": {\"fields\": [\"Description [ru]\", \"Description [tk]\"]}}]', 11, 1),
(61, '2021-02-07 10:28:48.538634', '1', 'About my life and my opinions and my ideas, my wishes', 2, '[{\"changed\": {\"fields\": [\"Header [ru]\"]}}]', 11, 1),
(62, '2021-02-07 10:29:32.942652', '2', 'About my life and my opinions and my ideas, my wishes', 2, '[{\"changed\": {\"fields\": [\"Header [ru]\", \"Header [tk]\"]}}]', 11, 1),
(63, '2021-02-07 10:31:00.173724', '4', 'Web1', 1, '[{\"added\": {}}]', 17, 1),
(64, '2021-02-07 10:32:16.242295', '1', 'Web', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\"]}}]', 17, 1),
(65, '2021-02-07 10:33:05.114412', '2', 'App', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\"]}}]', 17, 1),
(66, '2021-02-07 10:34:06.079055', '3', 'Design', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\"]}}]', 17, 1),
(67, '2021-02-07 10:36:40.299340', '1', 'Web1', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\", \"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 18, 1),
(68, '2021-02-07 10:52:12.683399', '2', 'App', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Title [en-us]\", \"Title [ru]\", \"Title [tk]\", \"Title [tr]\", \"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 18, 1),
(69, '2021-02-07 10:56:27.817658', '3', 'Car', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Description [en-us]\", \"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 2, 1),
(70, '2021-02-07 11:51:24.468060', '4', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Title [ru]\"]}}]', 2, 1),
(71, '2021-02-07 11:51:38.300964', '2', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Title [ru]\"]}}]', 2, 1),
(72, '2021-02-07 12:00:49.005493', '1', 'Family', 1, '[{\"added\": {}}]', 22, 1),
(73, '2021-02-07 12:04:27.140208', '2', 'Friendship', 1, '[{\"added\": {}}]', 22, 1),
(74, '2021-02-07 12:08:59.745129', '3', 'Company', 1, '[{\"added\": {}}]', 22, 1),
(75, '2021-02-07 19:44:04.266726', '4', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Description [ru]\"]}}]', 2, 1),
(76, '2021-02-07 19:44:35.093457', '2', 'Nature', 2, '[]', 2, 1),
(77, '2021-02-07 19:46:54.465946', '2', 'Nature', 2, '[{\"changed\": {\"fields\": [\"Description [ru]\"]}}]', 2, 1),
(78, '2021-02-08 06:28:04.817640', '1', 'Car', 2, '[{\"changed\": {\"fields\": [\"Description [ru]\", \"Description [tk]\", \"Description [tr]\"]}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(7, 'contenttypes', 'contenttype'),
(14, 'home', 'aboutpicture'),
(15, 'home', 'aboutus'),
(20, 'home', 'achievement'),
(11, 'home', 'blog'),
(19, 'home', 'clients'),
(9, 'home', 'contactmessage'),
(10, 'home', 'setting'),
(22, 'home', 'slider'),
(16, 'product', 'category'),
(13, 'product', 'portfolio'),
(12, 'product', 'portfoliophotos'),
(1, 'product', 'product'),
(17, 'products', 'category'),
(18, 'products', 'product'),
(2, 'service', 'service'),
(21, 'service', 'servicepicture'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-30 11:20:05.090364'),
(2, 'auth', '0001_initial', '2021-01-30 11:20:06.953844'),
(3, 'admin', '0001_initial', '2021-01-30 11:20:15.717610'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-30 11:20:18.975290'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-30 11:20:19.184291'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-30 11:20:21.111182'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-30 11:20:21.221357'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-30 11:20:21.388063'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-30 11:20:21.444067'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-30 11:20:22.102869'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-30 11:20:22.139206'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-30 11:20:22.207736'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-30 11:20:22.379607'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-30 11:20:22.509038'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-30 11:20:22.633993'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-30 11:20:22.748967'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-30 11:20:22.864737'),
(18, 'product', '0001_initial', '2021-01-30 11:20:23.202058'),
(19, 'product', '0002_auto_20210130_1603', '2021-01-30 11:20:23.247200'),
(20, 'product', '0003_auto_20210130_1610', '2021-01-30 11:20:23.287302'),
(21, 'product', '0004_remove_product_describe', '2021-01-30 11:20:23.898861'),
(22, 'service', '0001_initial', '2021-01-30 11:20:24.358652'),
(23, 'service', '0002_auto_20210130_1603', '2021-01-30 11:20:24.399715'),
(24, 'service', '0003_auto_20210130_1610', '2021-01-30 11:20:24.434752'),
(25, 'service', '0004_remove_service_describe', '2021-01-30 11:20:25.032878'),
(26, 'sessions', '0001_initial', '2021-01-30 11:20:25.627682'),
(27, 'product', '0005_product_describe', '2021-01-30 11:27:24.126016'),
(28, 'product', '0006_auto_20210130_1628', '2021-01-30 11:28:52.199519'),
(29, 'service', '0005_service_describe', '2021-01-30 11:30:32.278867'),
(33, 'home', '0001_initial', '2021-01-31 06:16:18.555874'),
(34, 'service', '0006_service_icon', '2021-01-31 21:45:48.900796'),
(35, 'home', '0002_blog', '2021-02-01 19:09:09.278041'),
(36, 'home', '0003_blog_image', '2021-02-01 19:21:43.429268'),
(37, 'product', '0007_portfolio_portfoliophotos', '2021-02-02 09:02:06.042873'),
(38, 'home', '0004_aboutpicture_aboutus', '2021-02-02 11:46:36.814283'),
(39, 'service', '0007_auto_20210202_1736', '2021-02-02 12:36:20.609473'),
(40, 'product', '0008_portfoliophotos_visible', '2021-02-03 07:38:37.967745'),
(41, 'products', '0001_initial', '2021-02-03 09:18:48.856636'),
(42, 'products', '0002_product_visible', '2021-02-03 09:34:13.101266'),
(43, 'products', '0003_product_image', '2021-02-03 09:39:50.005567'),
(44, 'home', '0005_clients', '2021-02-03 09:58:44.823057'),
(45, 'home', '0006_achievement', '2021-02-03 11:07:33.487527'),
(46, 'service', '0008_servicepicture', '2021-02-03 12:10:17.202130'),
(47, 'service', '0009_servicepicture_service', '2021-02-03 12:12:48.374076'),
(48, 'home', '0007_auto_20210205_1058', '2021-02-05 05:58:45.778911'),
(49, 'home', '0008_auto_20210205_1108', '2021-02-05 06:10:11.183480'),
(50, 'home', '0009_auto_20210205_1231', '2021-02-05 07:31:36.138242'),
(51, 'home', '0010_auto_20210206_1456', '2021-02-06 09:57:08.048385'),
(52, 'home', '0011_auto_20210206_1546', '2021-02-06 10:46:25.586055'),
(53, 'products', '0004_auto_20210206_1546', '2021-02-06 10:46:27.809118'),
(54, 'service', '0010_auto_20210206_1546', '2021-02-06 10:46:29.005559'),
(55, 'home', '0012_slider', '2021-02-07 11:48:30.074447'),
(56, 'home', '0013_auto_20210207_1654', '2021-02-07 11:54:23.185071');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('anm9f2dvsn4izctwn0hyzahprfagkk88', '.eJxVjM0OwiAQhN-FsyHLjyzx6N1nILtApWogKe2p8d2VpAc9znzfzC4CbWsJW89LmJO4CCVOvx1TfOY6QHpQvTcZW12XmeVQ5EG7vLWUX9fD_Tso1MtYE0c2ROCSt2rCs0ZGcI4Sc0bMEA3ob7bAEc2E1pE2xoEC79miEe8P83Q3VA:1l5oNl:Rc4Q0e2kaslfecoHrdk3OV4tbrwMfLrSaYTMtlTsa-g', '2021-02-13 11:25:37.809380'),
('qdiot0kzmwgy7fhutjyduli7iuqw0md4', '.eJxVjjkOwyAQRe9CHaFhCWOlTJ8zoBnAS2JhyZgqyt0Dkouk_NvTfwtP9Zh9LWn3SxQ3ocTl12MKr5R7EJ-Up02GLR_7wrJX5JkW-dhiWu9n9w8wU5n7mjiwIQIXB6tGvGpkBOcoMifEBMGAbtoCBzQjWkfaGAcKhoEtmg5d24FKU2q4YxefL89DPMs:1l7Z2P:JKrI2SXNNM4aNgJzOWA6kAwy3eHoTsw8G1eingnTZ-k', '2021-02-18 07:26:49.231500'),
('wfnqab23kkx2nqyejsck2nk6jnel2b88', '.eJxVjM0OwiAQhN-FsyHLjyzx6N1nILtApWogKe2p8d2VpAc9znzfzC4CbWsJW89LmJO4CCVOvx1TfOY6QHpQvTcZW12XmeVQ5EG7vLWUX9fD_Tso1MtYE0c2ROCSt2rCs0ZGcI4Sc0bMEA3ob7bAEc2E1pE2xoEC79miEe8P83Q3VA:1l6uGk:0hBc2oeaUGr6AasQslXPAb7gTyWwgkGhbU6puo9eAM4', '2021-02-16 11:54:54.749282');

-- --------------------------------------------------------

--
-- Table structure for table `home_aboutpicture`
--

CREATE TABLE `home_aboutpicture` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `aboutus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_aboutpicture`
--

INSERT INTO `home_aboutpicture` (`id`, `title`, `image`, `aboutus_id`) VALUES
(1, 'p1', 'images/aboutus/20170304_154543.jpg', 1),
(2, 'p2', 'images/aboutus/20180219_192209.png', 1),
(3, 'p3', 'images/aboutus/Screenshot_20171104-171800.png', 1),
(4, 'p4', 'images/aboutus/Screenshot_20171115-213012.png', 1),
(5, 'p5', 'images/aboutus/Screenshot_20171115-212808.png', 1),
(6, 'a1', 'images/aboutus/20180624_183534.jpg', 2),
(7, 'a2', 'images/aboutus/1491527318747.jpg', 2),
(8, 'a3', 'images/aboutus/LINE_P20170426_164557895.jpg', 2),
(9, 'a4', 'images/aboutus/20180624_183521.jpg', 2),
(10, 'a5', 'images/aboutus/1493727804205.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_aboutus`
--

CREATE TABLE `home_aboutus` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `description_en_us` longtext DEFAULT NULL,
  `description_ru` longtext DEFAULT NULL,
  `description_tk` longtext DEFAULT NULL,
  `description_tr` longtext DEFAULT NULL,
  `title_en_us` varchar(250) DEFAULT NULL,
  `title_ru` varchar(250) DEFAULT NULL,
  `title_tk` varchar(250) DEFAULT NULL,
  `title_tr` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_aboutus`
--

INSERT INTO `home_aboutus` (`id`, `image`, `title`, `description`, `description_en_us`, `description_ru`, `description_tk`, `description_tr`, `title_en_us`, `title_ru`, `title_tk`, `title_tr`) VALUES
(1, 'images/aboutus/4.jpg', 'Car', '<p><em><strong>Nature</strong></em>&nbsp;is a British weekly&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scientific_journal\" title=\"Scientific journal\">scientific journal</a>&nbsp;founded and based in&nbsp;<a href=\"https://en.wikipedia.org/wiki/London\" title=\"London\">London, England</a>. As a multidisciplinary publication,&nbsp;<em>Nature</em>&nbsp;features&nbsp;<a href=\"https://en.wikipedia.org/wiki/Peer_review\" title=\"Peer review\">peer-reviewed</a>&nbsp;research from a variety of academic disciplines, mainly in science, technology, and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Natural_science\" title=\"Natural science\">natural sciences</a>. It has core editorial offices across the United States, continental Europe, and Asia under the international scientific publishing company&nbsp;<a href=\"https://en.wikipedia.org/wiki/Springer_Nature\" title=\"Springer Nature\">Springer Nature</a>.&nbsp;<em>Nature</em>&nbsp;was one of the world&#39;s most cited scientific journals by the Science Edition of the 2019&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Journal_Citation_Reports\" title=\"Journal Citation Reports\">Journal Citation Reports</a></em>&nbsp;(with an ascribed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Impact_factor\" title=\"Impact factor\">impact factor</a>&nbsp;of 42.778),<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-WoS-1\">[1]</a></sup>&nbsp;making it one of the world&#39;s most-read and most prestigious&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_journals\" title=\"Academic journals\">academic journals</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-3\">[3]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-4\">[4]</a></sup>&nbsp;As of 2012, it claimed an online readership of about three million unique readers per month.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-:2-5\">[5]</a></sup></p>', '<p><em><strong>Nature</strong></em>&nbsp;is a British weekly&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scientific_journal\" title=\"Scientific journal\">scientific journal</a>&nbsp;founded and based in&nbsp;<a href=\"https://en.wikipedia.org/wiki/London\" title=\"London\">London, England</a>. As a multidisciplinary publication,&nbsp;<em>Nature</em>&nbsp;features&nbsp;<a href=\"https://en.wikipedia.org/wiki/Peer_review\" title=\"Peer review\">peer-reviewed</a>&nbsp;research from a variety of academic disciplines, mainly in science, technology, and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Natural_science\" title=\"Natural science\">natural sciences</a>. It has core editorial offices across the United States, continental Europe, and Asia under the international scientific publishing company&nbsp;<a href=\"https://en.wikipedia.org/wiki/Springer_Nature\" title=\"Springer Nature\">Springer Nature</a>.&nbsp;<em>Nature</em>&nbsp;was one of the world&#39;s most cited scientific journals by the Science Edition of the 2019&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Journal_Citation_Reports\" title=\"Journal Citation Reports\">Journal Citation Reports</a></em>&nbsp;(with an ascribed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Impact_factor\" title=\"Impact factor\">impact factor</a>&nbsp;of 42.778),<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-WoS-1\">[1]</a></sup>&nbsp;making it one of the world&#39;s most-read and most prestigious&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_journals\" title=\"Academic journals\">academic journals</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-3\">[3]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-4\">[4]</a></sup>&nbsp;As of 2012, it claimed an online readership of about three million unique readers per month.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-:2-5\">[5]</a></sup></p>', '<p><strong>Приро́да:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0\" title=\"Природа\">Природа</a>&nbsp;&mdash; материальный мир планеты Земля, в сущности&nbsp;&mdash; основной объект изучения науки. В быту слово&nbsp;<em>&laquo;природа&raquo;</em>&nbsp;часто употребляется в значении&nbsp;<em>естественная среда обитания человека</em>&nbsp;(всё, что нас окружает, за исключением созданного человеком).</li>\r\n	<li><a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D1%83%D1%89%D0%BD%D0%BE%D1%81%D1%82%D1%8C\" title=\"Сущность\">Сущность</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%95%D1%81%D1%82%D0%B5%D1%81%D1%82%D0%B2%D0%BE\" title=\"Естество\">естество</a>&nbsp;&mdash;&nbsp;<em>природа</em>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%BE%D0%B3\" title=\"Бог\">Бога</a>,&nbsp;<em>природа</em>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%B5%D0%BB\" title=\"Ангел\">ангела</a>,&nbsp;<em>природа</em>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A7%D0%B5%D0%BB%D0%BE%D0%B2%D0%B5%D0%BA\" title=\"Человек\">человека</a>,&nbsp;<em>природа</em>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE\" title=\"Электричество\">электричества</a>&nbsp;&mdash; может быть, определяющие свойства объекта, позволяющие отнести его к его роду (некоторой классификации: к Богу, к ангелам, к людям, к электричеству).\r\n	<ul>\r\n		<li><a href=\"https://ru.wikipedia.org/wiki/%D0%A4%D1%8E%D1%81%D0%B8%D1%81\" title=\"Фюсис\">Фюсис</a>&nbsp;&mdash; &laquo;природа&raquo; применительно к христианскому богословию.</li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D1%82%D0%B5%D0%BE%D1%80%D0%B8%D1%8F_%D0%B8%D0%B3%D1%80)\" title=\"Природа (теория игр)\">Природа</a>&nbsp;&mdash; конструкция в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BE%D1%80%D0%B8%D1%8F_%D0%B8%D0%B3%D1%80\" title=\"Теория игр\">теории игр</a>.</li>\r\n	<li>&laquo;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D1%81%D0%BA%D1%83%D0%BB%D1%8C%D0%BF%D1%82%D1%83%D1%80%D0%B0)\" title=\"Природа (скульптура)\">Природа</a>&raquo;&nbsp;&mdash; скульптура чешского&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C_%D0%B8%D1%81%D0%BA%D1%83%D1%81%D1%81%D1%82%D0%B2\" title=\"Деятель искусств\">художника</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD%D0%B5%D1%80\" title=\"Дизайнер\">дизайнера</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%85%D0%B0,_%D0%90%D0%BB%D1%8C%D1%84%D0%BE%D0%BD%D1%81_%D0%9C%D0%B0%D1%80%D0%B8%D0%B0\" title=\"Муха, Альфонс Мариа\">Альфонса Мухи</a>.</li>\r\n	<li>&laquo;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D0%B6%D1%83%D1%80%D0%BD%D0%B0%D0%BB)\" title=\"Природа (журнал)\">Природа</a>&raquo;&nbsp;&mdash; ежемесячный научно-популярный журнал&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D0%B0%D0%BA%D0%B0%D0%B4%D0%B5%D0%BC%D0%B8%D1%8F_%D0%BD%D0%B0%D1%83%D0%BA\" title=\"Российская академия наук\">Российской академии наук</a>, публикации которого, посвящены (<a href=\"https://ru.wikipedia.org/wiki/%D0%95%D1%81%D1%82%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5_%D0%BD%D0%B0%D1%83%D0%BA%D0%B8\" title=\"Естественные науки\">естественно-научной</a>) тематике. Издаётся с января 1912 года.</li>\r\n	<li>&laquo;<a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D1%81%D0%B1%D0%BE%D1%80%D0%BD%D0%B8%D0%BA)&amp;action=edit&amp;redlink=1\" title=\"Природа (сборник) (страница отсутствует)\">Природа</a>&raquo; &mdash; сборник выходивший в Москве с 1873 по 1877 год<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D1%8F)#cite_note-1\">[1]</a></sup>.</li>\r\n	<li>&laquo;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D0%BC%D0%BE%D0%B4%D1%83%D0%BB%D1%8C_%D0%BE%D1%80%D0%B1%D0%B8%D1%82%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9_%D1%81%D1%82%D0%B0%D0%BD%D1%86%D0%B8%D0%B8_%C2%AB%D0%9C%D0%B8%D1%80%C2%BB)\" title=\"Природа (модуль орбитальной станции «Мир»)\">Природа</a>&raquo;&nbsp;&mdash; модуль орбитальной станции &laquo;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D1%80_(%D0%BE%D1%80%D0%B1%D0%B8%D1%82%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D0%B0%D0%BD%D1%86%D0%B8%D1%8F)\" title=\"Мир (орбитальная станция)\">Мир</a>&raquo;.</li>\r\n	<li>&laquo;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D1%80%D0%BE%D0%B4%D0%B0_(%D0%AD%D0%BC%D0%B5%D1%80%D1%81%D0%BE%D0%BD)\" title=\"Природа (Эмерсон)\">Природа</a>&raquo;&nbsp;&mdash; философское эссе&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BC%D0%B5%D1%80%D1%81%D0%BE%D0%BD,_%D0%A0%D0%B0%D0%BB%D1%8C%D1%84_%D0%A3%D0%BE%D0%BB%D0%B4%D0%BE\" title=\"Эмерсон, Ральф Уолдо\">Ральфа Эмерсона</a>&nbsp;(1836).</li>\r\n	<li>&laquo;Природа&raquo; &mdash; самая известная программа для квантово-химических расчётов, написанная российскими учёными (Дм. Лайков и др.).</li>\r\n</ul>\r\n\r\n<h2>Топоним</h2>\r\n\r\n<p>&nbsp;</p>', '<p><strong>Mowzuk: Tebigatyň we jemgyỳetiň gatnaşyklary</strong></p>\r\n\r\n<p><strong>Meỳilnama:</strong></p>\r\n\r\n<p>1. Mukaddes Ruhnama t&uuml;rkmen milletiniň tebigat bilen gatnaşyklary barada.</p>\r\n\r\n<p>2. T&uuml;rkmenistanyň tebigy şertleri.</p>\r\n\r\n<p>3. Ilkinji ekaran&ccedil;ylygyň we maldar&ccedil;ylygyň ỳ&uuml;ze &ccedil;ykmagy &uuml;&ccedil;in amatly şertler. Jeỳtun, Uzboỳ, &Auml;new medeniỳetleri.</p>\r\n\r\n<p>1. Adamyň peỳda bolmagy we jemgyỳetiň d&ouml;remegi bilen tebigat d&uuml;ş&uuml;njesiniň mazmuny &ouml;zgerỳ&auml;r. Tebigat d&uuml;ş&uuml;njesi iki manyda ulanylyp başlaỳar. Giň manyda jemgyỳet d&uuml;ş&uuml;njesi tebigatda girizilỳ&auml;r. Dar manyda ulanylanda tebigat jemgyỳetde &uuml;zňelikde g&ouml;z &ouml;ň&uuml;ne getirilỳ&auml;r. Jemgyỳet bilen tebigatyň &ouml;zara t&auml;sirleri baradaky taglymat, birinjiden tebigat bilen jemgyỳetiň arasyndaky hil taỳdan tapawutlyklary ykrar etmeklige beỳleki tarapdan bolsa olary biri-birine garşy goỳmazlyga esaslanỳar. Adam tebigat tarapyndan d&ouml;redilendir we jany-teni bilen oňa degişlidir.</p>\r\n\r\n<p>Adamyň tebigata garaşlylygy uzak wagtlap dowam edipdir. Diňe z&auml;hmet &ccedil;ekmegi &ouml;wrenmek bilen adamzat tebigatdan saỳlanỳar we jemgyỳet emele gelỳ&auml;r. Jemgyỳet bilen tebigatyň arasyndaky arabaglanyşyklaryň iki g&ouml;rn&uuml;şi bar. Birinjisi &ndash; tebigatyň jemgyỳete edỳ&auml;n t&auml;siri. Ikinjisi &ndash; jemgyỳetiň tebigata edỳ&auml;n t&auml;siri. Jemgyỳet tebigat bilen berk &ouml;zara baglanyşykly. Şeỳle baglanyşyk bolmasa jemgyỳet ỳaşap bilmezdi. Seb&auml;bi adam &ouml;z&uuml;niň ỳaşaỳyşy &uuml;&ccedil;in gerek bolan maddy we ruhy serişdeleriň hemmesini tebigatdan alỳar. Amatly tebigy şertler (maỳyl howa tebigy baỳlyklar, derỳalar, tokaỳlar) jemgyỳetiň &ouml;s&uuml;şine itergi berỳ&auml;r, tersine amatsyz tebigy şertler (gaty sowuk &yacute;a-da yssy howa şertleri) jemgy&yacute;etiň &ouml;s&uuml;şine &yacute;aramaz t&auml;sir ed&yacute;&auml;r. Amatly tebigy şertler diỳlende diňe bir tebigy baỳlyklaryň mukdar tarapy g&ouml;z &ouml;ň&uuml;nde tutulman, eỳsem olaryň k&ouml;pd&uuml;rliligi hem uly &auml;hmiỳete eỳedir.</p>\r\n\r\n<p>Adamyň z&auml;hmet &ccedil;ekmegi netijesinde tebigat &ouml;zgerỳ&auml;r. Adamzadyň uzak wagtyň dowamynda eden t&auml;siriniň netijesinde Ỳeriň tebigy ỳagdaỳy g&uuml;ỳ&ccedil;li &ouml;zgerdilipdir. Şol &ouml;zgerişe ylymda &ndash; Noosfera diỳip at berilỳ&auml;r. (W. I. Wernadskiỳ).</p>\r\n\r\n<p>Adamzat ilkibaşda tebigatdan diňe almaly diỳip d&uuml;ş&uuml;nipdir. &ldquo;Adam tebigatyň &uuml;st&uuml;nden agalyk etmelidir&rdquo; diỳen ters d&uuml;ş&uuml;nje kemala gelipdir. Adamlar uzak wagtlap tebigatyň jemgyỳete n&auml;hili zyỳan ỳetirip biljegi barada pikir ỳ&ouml;redip bilm&auml;ndir. Ha&ccedil;anda adamzat tebigatyň &ouml;z&uuml;ne ỳetirilen zyỳan &uuml;&ccedil;in &ldquo;ar alỳandygyna&rdquo; g&ouml;z ỳetireninden soň, tebigaty goramak, hapalamazlyk barada alada edip başlady. Netijede tebigatyň we jemgyỳetiň gatnaşyklary bilen baglanyşykly &ndash; ekologiỳa (tebigaty goramak) meselesi ỳ&uuml;ze &ccedil;ykdy.</p>', '<p><strong>Mowzuk: Tebigatyň we jemgyỳetiň gatnaşyklary</strong></p>\r\n\r\n<p><strong>Meỳilnama:</strong></p>\r\n\r\n<p>1. Mukaddes Ruhnama t&uuml;rkmen milletiniň tebigat bilen gatnaşyklary barada.</p>\r\n\r\n<p>2. T&uuml;rkmenistanyň tebigy şertleri.</p>\r\n\r\n<p>3. Ilkinji ekaran&ccedil;ylygyň we maldar&ccedil;ylygyň ỳ&uuml;ze &ccedil;ykmagy &uuml;&ccedil;in amatly şertler. Jeỳtun, Uzboỳ, &Auml;new medeniỳetleri.</p>\r\n\r\n<p>1. Adamyň peỳda bolmagy we jemgyỳetiň d&ouml;remegi bilen tebigat d&uuml;ş&uuml;njesiniň mazmuny &ouml;zgerỳ&auml;r. Tebigat d&uuml;ş&uuml;njesi iki manyda ulanylyp başlaỳar. Giň manyda jemgyỳet d&uuml;ş&uuml;njesi tebigatda girizilỳ&auml;r. Dar manyda ulanylanda tebigat jemgyỳetde &uuml;zňelikde g&ouml;z &ouml;ň&uuml;ne getirilỳ&auml;r. Jemgyỳet bilen tebigatyň &ouml;zara t&auml;sirleri baradaky taglymat, birinjiden tebigat bilen jemgyỳetiň arasyndaky hil taỳdan tapawutlyklary ykrar etmeklige beỳleki tarapdan bolsa olary biri-birine garşy goỳmazlyga esaslanỳar. Adam tebigat tarapyndan d&ouml;redilendir we jany-teni bilen oňa degişlidir.</p>\r\n\r\n<p>Adamyň tebigata garaşlylygy uzak wagtlap dowam edipdir. Diňe z&auml;hmet &ccedil;ekmegi &ouml;wrenmek bilen adamzat tebigatdan saỳlanỳar we jemgyỳet emele gelỳ&auml;r. Jemgyỳet bilen tebigatyň arasyndaky arabaglanyşyklaryň iki g&ouml;rn&uuml;şi bar. Birinjisi &ndash; tebigatyň jemgyỳete edỳ&auml;n t&auml;siri. Ikinjisi &ndash; jemgyỳetiň tebigata edỳ&auml;n t&auml;siri. Jemgyỳet tebigat bilen berk &ouml;zara baglanyşykly. Şeỳle baglanyşyk bolmasa jemgyỳet ỳaşap bilmezdi. Seb&auml;bi adam &ouml;z&uuml;niň ỳaşaỳyşy &uuml;&ccedil;in gerek bolan maddy we ruhy serişdeleriň hemmesini tebigatdan alỳar. Amatly tebigy şertler (maỳyl howa tebigy baỳlyklar, derỳalar, tokaỳlar) jemgyỳetiň &ouml;s&uuml;şine itergi berỳ&auml;r, tersine amatsyz tebigy şertler (gaty sowuk &yacute;a-da yssy howa şertleri) jemgy&yacute;etiň &ouml;s&uuml;şine &yacute;aramaz t&auml;sir ed&yacute;&auml;r. Amatly tebigy şertler diỳlende diňe bir tebigy baỳlyklaryň mukdar tarapy g&ouml;z &ouml;ň&uuml;nde tutulman, eỳsem olaryň k&ouml;pd&uuml;rliligi hem uly &auml;hmiỳete eỳedir.</p>\r\n\r\n<p>Adamyň z&auml;hmet &ccedil;ekmegi netijesinde tebigat &ouml;zgerỳ&auml;r. Adamzadyň uzak wagtyň dowamynda eden t&auml;siriniň netijesinde Ỳeriň tebigy ỳagdaỳy g&uuml;ỳ&ccedil;li &ouml;zgerdilipdir. Şol &ouml;zgerişe ylymda &ndash; Noosfera diỳip at berilỳ&auml;r. (W. I. Wernadskiỳ).</p>\r\n\r\n<p>Adamzat ilkibaşda tebigatdan diňe almaly diỳip d&uuml;ş&uuml;nipdir. &ldquo;Adam tebigatyň &uuml;st&uuml;nden agalyk etmelidir&rdquo; diỳen ters d&uuml;ş&uuml;nje kemala gelipdir. Adamlar uzak wagtlap tebigatyň jemgyỳete n&auml;hili zyỳan ỳetirip biljegi barada pikir ỳ&ouml;redip bilm&auml;ndir. Ha&ccedil;anda adamzat tebigatyň &ouml;z&uuml;ne ỳetirilen zyỳan &uuml;&ccedil;in &ldquo;ar alỳandygyna&rdquo; g&ouml;z ỳetireninden soň, tebigaty goramak, hapalamazlyk barada alada edip başlady. Netijede tebigatyň we jemgyỳetiň gatnaşyklary bilen baglanyşykly &ndash; ekologiỳa (tebigaty goramak) meselesi ỳ&uuml;ze &ccedil;ykdy.</p>\r\n\r\n<p>&nbsp;</p>', 'Car', 'Природа', 'Tebigat', 'Tebigat'),
(2, 'images/aboutus/LINE_P20170426_164557903_MvKmdCf.jpg', 'Nature', '<p><em><strong>Nature</strong></em>&nbsp;is a British weekly&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scientific_journal\" title=\"Scientific journal\">scientific journal</a>&nbsp;founded and based in&nbsp;<a href=\"https://en.wikipedia.org/wiki/London\" title=\"London\">London, England</a>. As a multidisciplinary publication,&nbsp;<em>Nature</em>&nbsp;features&nbsp;<a href=\"https://en.wikipedia.org/wiki/Peer_review\" title=\"Peer review\">peer-reviewed</a>&nbsp;research from a variety of academic disciplines, mainly in science, technology, and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Natural_science\" title=\"Natural science\">natural sciences</a>. It has core editorial offices across the United States, continental Europe, and Asia under the international scientific publishing company&nbsp;<a href=\"https://en.wikipedia.org/wiki/Springer_Nature\" title=\"Springer Nature\">Springer Nature</a>.&nbsp;<em>Nature</em>&nbsp;was one of the world&#39;s most cited scientific journals by the Science Edition of the 2019&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Journal_Citation_Reports\" title=\"Journal Citation Reports\">Journal Citation Reports</a></em>&nbsp;(with an ascribed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Impact_factor\" title=\"Impact factor\">impact factor</a>&nbsp;of 42.778),<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-WoS-1\">[1]</a></sup>&nbsp;making it one of the world&#39;s most-read and most prestigious&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_journals\" title=\"Academic journals\">academic journals</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-3\">[3]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-4\">[4]</a></sup>&nbsp;As of 2012, it claimed an online readership of about three million unique readers per month.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-:2-5\">[5]</a></sup></p>', '<p><em><strong>Nature</strong></em>&nbsp;is a British weekly&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scientific_journal\" title=\"Scientific journal\">scientific journal</a>&nbsp;founded and based in&nbsp;<a href=\"https://en.wikipedia.org/wiki/London\" title=\"London\">London, England</a>. As a multidisciplinary publication,&nbsp;<em>Nature</em>&nbsp;features&nbsp;<a href=\"https://en.wikipedia.org/wiki/Peer_review\" title=\"Peer review\">peer-reviewed</a>&nbsp;research from a variety of academic disciplines, mainly in science, technology, and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Natural_science\" title=\"Natural science\">natural sciences</a>. It has core editorial offices across the United States, continental Europe, and Asia under the international scientific publishing company&nbsp;<a href=\"https://en.wikipedia.org/wiki/Springer_Nature\" title=\"Springer Nature\">Springer Nature</a>.&nbsp;<em>Nature</em>&nbsp;was one of the world&#39;s most cited scientific journals by the Science Edition of the 2019&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Journal_Citation_Reports\" title=\"Journal Citation Reports\">Journal Citation Reports</a></em>&nbsp;(with an ascribed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Impact_factor\" title=\"Impact factor\">impact factor</a>&nbsp;of 42.778),<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-WoS-1\">[1]</a></sup>&nbsp;making it one of the world&#39;s most-read and most prestigious&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_journals\" title=\"Academic journals\">academic journals</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-3\">[3]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-4\">[4]</a></sup>&nbsp;As of 2012, it claimed an online readership of about three million unique readers per month.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-:2-5\">[5]</a></sup></p>', '<p><em><strong>Nature</strong></em>&nbsp;is a British weekly&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scientific_journal\" title=\"Scientific journal\">scientific journal</a>&nbsp;founded and based in&nbsp;<a href=\"https://en.wikipedia.org/wiki/London\" title=\"London\">London, England</a>. As a multidisciplinary publication,&nbsp;<em>Nature</em>&nbsp;features&nbsp;<a href=\"https://en.wikipedia.org/wiki/Peer_review\" title=\"Peer review\">peer-reviewed</a>&nbsp;research from a variety of academic disciplines, mainly in science, technology, and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Natural_science\" title=\"Natural science\">natural sciences</a>. It has core editorial offices across the United States, continental Europe, and Asia under the international scientific publishing company&nbsp;<a href=\"https://en.wikipedia.org/wiki/Springer_Nature\" title=\"Springer Nature\">Springer Nature</a>.&nbsp;<em>Nature</em>&nbsp;was one of the world&#39;s most cited scientific journals by the Science Edition of the 2019&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Journal_Citation_Reports\" title=\"Journal Citation Reports\">Journal Citation Reports</a></em>&nbsp;(with an ascribed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Impact_factor\" title=\"Impact factor\">impact factor</a>&nbsp;of 42.778),<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-WoS-1\">[1]</a></sup>&nbsp;making it one of the world&#39;s most-read and most prestigious&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_journals\" title=\"Academic journals\">academic journals</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-3\">[3]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-4\">[4]</a></sup>&nbsp;As of 2012, it claimed an online readership of about three million unique readers per month.<sup><a href=\"https://en.wikipedia.org/wiki/Nature_(journal)#cite_note-:2-5\">[5]</a></sup></p>', '<p><span style=\"font-size:36px\"><strong>tebigat</strong> adamyn in yakyn dosdy.<em><u><strong>Tebigatdaky</strong></u></em> bar zatlar bizin rahatlygymyz uchin dynch almagymyz uchin doredilen yaly. Tebigat bilen ynsanyn arasynda ozara baglanyshyk bar.</span></p>', '<p>Nature is a British weekly scientific journal founded and based in London, England. As a multidisciplinary publication, Nature features peer-reviewed research from a variety of academic disciplines, mainly in science, technology, and the natural sciences. It has core editorial offices across the United States, continental Europe, and Asia under the international scientific publishing company Springer Nature. Nature was one of the world&#39;s most cited scientific journals by the Science Edition of the 2019 Journal Citation Reports (with an ascribed impact factor of 42.778),[1] making it one of the world&#39;s most-read and most prestigious academic journals.[2][3][4] As of 2012, it claimed an online readership of about three million unique readers per month.[5]</p>', 'Nature', 'nature', 'Tebigat', 'Tebigat');

-- --------------------------------------------------------

--
-- Table structure for table `home_achievement`
--

CREATE TABLE `home_achievement` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name_en_us` varchar(50) DEFAULT NULL,
  `name_ru` varchar(50) DEFAULT NULL,
  `name_tk` varchar(50) DEFAULT NULL,
  `name_tr` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_achievement`
--

INSERT INTO `home_achievement` (`id`, `name`, `image`, `name_en_us`, `name_ru`, `name_tk`, `name_tr`) VALUES
(1, 'diplom2', 'image/achievement/20171106_220134.png', 'diplom2', 'Продукт2', 'diplom2', 'diplom2'),
(2, 'diplom1', 'image/achievement/1491527318747.jpg', 'diplom1', 'Продукт1', 'diplom1', 'diplom1');

-- --------------------------------------------------------

--
-- Table structure for table `home_blog`
--

CREATE TABLE `home_blog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `numbercomment` int(11) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description_en_us` longtext DEFAULT NULL,
  `description_ru` longtext DEFAULT NULL,
  `description_tk` longtext DEFAULT NULL,
  `description_tr` longtext DEFAULT NULL,
  `header_en_us` varchar(200) DEFAULT NULL,
  `header_ru` varchar(200) DEFAULT NULL,
  `header_tk` varchar(200) DEFAULT NULL,
  `header_tr` varchar(200) DEFAULT NULL,
  `user_en_us` varchar(100) DEFAULT NULL,
  `user_ru` varchar(100) DEFAULT NULL,
  `user_tk` varchar(100) DEFAULT NULL,
  `user_tr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_blog`
--

INSERT INTO `home_blog` (`id`, `user`, `header`, `description`, `numbercomment`, `create_at`, `update_at`, `image`, `description_en_us`, `description_ru`, `description_tk`, `description_tr`, `header_en_us`, `header_ru`, `header_tk`, `header_tr`, `user_en_us`, `user_ru`, `user_tk`, `user_tr`) VALUES
(1, 'Chaygo', 'About my life and my opinions and my ideas, my wishes', '<p>About my life and my opinions and my ideas, my wishes</p>', 30, '2021-02-01 19:31:48.940013', '2021-02-07 10:28:48.503632', 'images/blog/Screenshot_20171103-211302.png', '<p>About my life and my opinions and my ideas, my wishes</p>', '<p>About my life and my opinions and my ideas, my wishes</p>', '<p>About my life and my opinions and my ideas, my wishes</p>', '<p>About my life and my opinions and my ideas, my wishes</p>', 'About my life and my opinions and my ideas, my wishes', 'Жизнь', 'About my life and my opinions and my ideas, my wishes', 'About my life and my opinions and my ideas, my wishes', 'Chaygo', 'Чайго', 'Chaygo', 'Chaygo'),
(2, 'Morena', 'About my life and my opinions and my ideas, my wishes', '<p>About my life and my opinions and my ideas, my wishes</p>', 3, '2021-02-06 11:18:56.856751', '2021-02-07 10:29:32.908330', 'images/blog/Screenshot_20171104-171800.png', '<p>About my life and my opinions and my ideas, my wishes</p>', '<p>Жизнь полна красоты. Обрати на это внимание. Вдохни запах дождя и почувствуй ветер. Живи свою жизнь на полную силу и борись за свои мечты!<br />\r\nИсточник:&nbsp;<a href=\"https://millionstatusov.ru/aforizmy/life.html\">https://millionstatusov.ru/aforizmy/life.html</a></p>', '<p>Durmuşyň her bir g&uuml;ni bize t&auml;ze bir m&uuml;mkin&ccedil;ilik , t&auml;ze bir başlangy&ccedil;. G&uuml;nde g&uuml;neşiň ş&ouml;hlesini g&ouml;rmek, m&auml;hriban k&auml;b&auml;ň, gahryman kakaňy g&ouml;rmek bu d&uuml;n&yacute;&auml;d&auml;ki uly bagt bolsa gerek!</p>', '<p>About my life and my opinions and my ideas, my wishes</p>', 'About my life and my opinions and my ideas, my wishes', 'Цитаты и афоризмы про жизнь - Статусы, цитаты и стихи.', 'Durmuş', 'About my life and my opinions and my ideas, my wishes', 'Morena', 'морена', 'Morena', 'Morena');

-- --------------------------------------------------------

--
-- Table structure for table `home_clients`
--

CREATE TABLE `home_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_clients`
--

INSERT INTO `home_clients` (`id`, `name`, `image`) VALUES
(2, 'client1', 'image/clients/client-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_contactmessage`
--

CREATE TABLE `home_contactmessage` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` longtext NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `home_setting`
--

CREATE TABLE `home_setting` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `smtpserver` varchar(50) NOT NULL,
  `smtpemail` varchar(50) NOT NULL,
  `smtppassword` varchar(50) NOT NULL,
  `smtpport` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `aboutus` longtext NOT NULL,
  `contact` longtext NOT NULL,
  `references` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_setting`
--

INSERT INTO `home_setting` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `icon`, `aboutus`, `contact`, `references`, `status`, `create_at`, `update_at`) VALUES
(1, 'Client1', 'sanly_galam', 'sanly_galam', 'Sanly_galam', 'G.Kulyyew koch. Begenchli. 2 etaj 201 otag', '+99365123456', 'charyyewa2014@gmail.com', 'smtp@gmail.com', 'charyyewa2014@gmail.com', 'aygozel2014', '587', '', '', '', '', 'True', '2021-01-31 06:18:56.440560', '2021-01-31 06:18:56.440560');

-- --------------------------------------------------------

--
-- Table structure for table `home_slider`
--

CREATE TABLE `home_slider` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `header` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_en_us` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ru` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_tk` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_tr` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_en_us` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_ru` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_tk` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_tr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_slider`
--

INSERT INTO `home_slider` (`id`, `image`, `header`, `description`, `description_en_us`, `description_ru`, `description_tk`, `description_tr`, `header_en_us`, `header_ru`, `header_tk`, `header_tr`) VALUES
(1, 'image/slider/slide-1.jpg', 'Family', 'Family is like our protection house', 'Family is like our protection house', 'Семья очен дорога для нас', 'Maşgala biziň sarsylmaz galamyz', 'Aile bizim en buyuk hazinemiz', 'Family', 'Семья', 'Maşgala', 'Maşgala'),
(2, 'image/slider/slide-2.jpg', 'Friendship', 'Friendship friendship friendship', 'Friendship friendship friendship', 'Друзя', 'Dost ! Ol seniň iň günleriňde ýanyňda bolan ynsan. Ýöne biz käwagt onuň gadryny bilmeýäris!', 'Arkadash!Senin en zor gununde yaninda olan insan. Ama bazen biz bilemiyorus onlaryn fedakarliklarini!', 'Friendship', 'Друзя', 'Dostluk', 'Arakadashlik'),
(3, 'image/slider/slide-3.jpg', 'Company', 'Company', 'Company', 'Компания', 'Kompaniya', 'Kompaniya', 'Company', 'Компания', 'Kompaniýa', 'Kompaniya');

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title_en_us` varchar(100) DEFAULT NULL,
  `title_ru` varchar(100) DEFAULT NULL,
  `title_tk` varchar(100) DEFAULT NULL,
  `title_tr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `title`, `slug`, `create_at`, `update_at`, `parent_id`, `title_en_us`, `title_ru`, `title_tk`, `title_tr`) VALUES
(1, 'Web', 'web', '2021-02-03 09:21:23.363847', '2021-02-07 10:32:16.216615', NULL, 'Web', 'Веб', 'Web', 'Web'),
(2, 'App', 'app', '2021-02-03 09:21:38.126877', '2021-02-07 10:33:05.086414', NULL, 'App', 'Апп', 'programma', 'programma'),
(3, 'Design', 'design', '2021-02-03 09:22:13.478714', '2021-02-07 10:34:05.929186', NULL, 'Design', 'дизайн', 'Dizaýn', 'Dizaýn'),
(4, 'Web1', 'web', '2021-02-07 10:31:00.135900', '2021-02-07 10:31:00.136901', NULL, 'Web1', 'Природа', 'Tebigat', 'Tebigat');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description_en_us` longtext DEFAULT NULL,
  `description_ru` longtext DEFAULT NULL,
  `description_tk` longtext DEFAULT NULL,
  `description_tr` longtext DEFAULT NULL,
  `title_en_us` varchar(100) DEFAULT NULL,
  `title_ru` varchar(100) DEFAULT NULL,
  `title_tk` varchar(100) DEFAULT NULL,
  `title_tr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `title`, `description`, `create_at`, `update_at`, `category_id`, `visible`, `image`, `description_en_us`, `description_ru`, `description_tk`, `description_tr`, `title_en_us`, `title_ru`, `title_tk`, `title_tr`) VALUES
(1, 'Web1', '<p>web site</p>', '2021-02-03 09:26:25.369293', '2021-02-07 10:36:40.267093', 1, 1, 'image/products/4.jpg', '<p>web site</p>', '<p>веб сайт</p>', '<p>Websahypa</p>', '<p>Websahypa</p>', 'Web1', 'Веб1', 'Web1', 'Web1'),
(2, 'App', '<h2><a href=\"https://incipia.co/post/app-marketing/study-of-the-top-100-app-store-app-descriptions/\">Best App Description Practices From the Top 100 Apps</a></h2>\r\n\r\n<p>Gabe Kwakyi | December 15, 2016</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Following up on an earlier study of the top&nbsp;<a href=\"https://incipia.co/post/app-marketing/app-store-screenshots-study-of-the-top-100-apps/\">100 app screenshots</a>, today we analyzed the trends in descriptions of the top 100 apps in the Apple App Store. Below are our summarized &amp; detailed findings, along with additional observations and examples of descriptions lastly. If you have any questions, would like to see the raw data or have an idea for a future app store study, please let us know by sending an email to&nbsp;<a href=\"mailto:hello@incipia.co\">hello@incipia.co.</a></p>\r\n\r\n<h1>Summary Findings</h1>\r\n\r\n<ol>\r\n	<li>Being more efficient with the description was the big takeaway, as putting less into the description was correlated with a much better rank across multiple data points:\r\n	<ol>\r\n		<li>The longer the app&#39;s description, the worse its rank was. It may be that efficiency leads to a better rank, or that the higher ranking apps simply chose to use fewer characters.</li>\r\n		<li>Furthermore, it seemed that apps which listed their features out (which can take up a lot of space) did not do too much better than those that did not bother.</li>\r\n		<li>Apps that used more contiguous lines in their opening before giving users some white space for breathing room also saw lower average ranks.</li>\r\n	</ol>\r\n	</li>\r\n</ol>', '2021-02-03 09:31:28.055469', '2021-02-07 10:52:12.630366', 2, 1, 'image/products/2.jpg', '<h2><a href=\"https://incipia.co/post/app-marketing/study-of-the-top-100-app-store-app-descriptions/\">Best App Description Practices From the Top 100 Apps</a></h2>\r\n\r\n<p>Gabe Kwakyi | December 15, 2016</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Following up on an earlier study of the top&nbsp;<a href=\"https://incipia.co/post/app-marketing/app-store-screenshots-study-of-the-top-100-apps/\">100 app screenshots</a>, today we analyzed the trends in descriptions of the top 100 apps in the Apple App Store. Below are our summarized &amp; detailed findings, along with additional observations and examples of descriptions lastly. If you have any questions, would like to see the raw data or have an idea for a future app store study, please let us know by sending an email to&nbsp;<a href=\"mailto:hello@incipia.co\">hello@incipia.co.</a></p>\r\n\r\n<h1>Summary Findings</h1>\r\n\r\n<ol>\r\n	<li>Being more efficient with the description was the big takeaway, as putting less into the description was correlated with a much better rank across multiple data points:\r\n	<ol>\r\n		<li>The longer the app&#39;s description, the worse its rank was. It may be that efficiency leads to a better rank, or that the higher ranking apps simply chose to use fewer characters.</li>\r\n		<li>Furthermore, it seemed that apps which listed their features out (which can take up a lot of space) did not do too much better than those that did not bother.</li>\r\n		<li>Apps that used more contiguous lines in their opening before giving users some white space for breathing room also saw lower average ranks.</li>\r\n	</ol>\r\n	</li>\r\n</ol>', '<h2>&nbsp;</h2>\r\n\r\n<h1>Ватные диски</h1>\r\n\r\n<p>Ватные диски являются недорогим и практичным гигиеническим средством, которое с большим успехом может использоваться для занимательного творчества. Помимо доступности данного материала, ватные диски отлично обрабатываются: они легко разрезаются, сворачиваются, изгибаются, клеятся, раскрашиваются любыми подручными средствами.</p>', '<p><strong>Informatika</strong>&mdash;Informasi&yacute;a informatikanyň ilkinji we d&uuml;&yacute;pli d&uuml;ş&uuml;njeleriniň biridir. Şonuň &uuml;&ccedil;in informasi&yacute;a d&uuml;ş&uuml;njesine gysga&ccedil;a kesgitleme bermek &yacute;a-da ony bir s&ouml;zlem bilen be&yacute;an etmek m&uuml;mkin d&auml;ldir.</p>\r\n\r\n<p>Informasi&yacute;a &ldquo;informatio&rdquo; di&yacute;en latyn s&ouml;z&uuml;nden gelip &ccedil;yk&yacute;ar we t&uuml;rkmen dilinde &ldquo;d&uuml;ş&uuml;ndirmek&rdquo;, &ldquo;a&yacute;dyň etmek&rdquo;, &ldquo;be&yacute;an etmek&rdquo;, &ldquo;a&yacute;dyp bermek&rdquo;, &ldquo;habarlylyk&rdquo;, &ldquo;maglumatlylyk&rdquo; di&yacute;en &yacute;aly manylary ber&yacute;&auml;r. Biziň &yacute;erine &yacute;etir&yacute;&auml;n islendik işimiz ha&yacute;sydyr bir habary, maglumaty kabul etmek we pe&yacute;dalanmak bilen baglanyşyklydyr. Meselem, kitap, gazet okamak, surata, telewizora seretmek we ş. m. arkaly biz habarlary, maglumatlary kabul ed&yacute;&auml;ris, &yacute;atda sakla&yacute;arys, topla&yacute;arys, &ouml;z&uuml;miz&ccedil;e ga&yacute;tadan işle&yacute;&auml;ris hem-de başgalara &yacute;a&yacute;rad&yacute;arys. Hat &yacute;azsak-da, telefonda g&uuml;rleşsek-de s&ouml;hbetdeşimize ha&yacute;sydyr bir habary, maglumaty ber&yacute;&auml;ris. Islendik mesel&auml;ni &ccedil;&ouml;zmek &uuml;&ccedil;in maglumatlar bilen işle&yacute;&auml;ris, mesel&auml;niň şertinde berlen d&uuml;ş&uuml;njeden başlap, оnuň &ccedil;&ouml;zg&uuml;dinde &ndash; t&auml;ze bir d&uuml;ş&uuml;nj&auml; gel&yacute;&auml;ris. Habar bermeler &ouml;n&uuml;m&ccedil;ilikde we durmuşda &yacute;azgylar we &ccedil;yzgylar, maglumatlar we hasabatlar, jedweller (tablisalar) &yacute;aly g&ouml;rn&uuml;şlerde hem duş gelip bil&yacute;&auml;rler. &Ccedil;yzgylar we saz eserleri, kitaplar we suratlar, spektakllar we kinofilmler - bularyň barysy-da informasi&yacute;alaryň be&yacute;an edilşiniň g&ouml;rn&uuml;şleridir. Maglumat anyklyk we dolulyk, gymmatlylyk we derwa&yacute;yslyk, a&yacute;dyňlyk we d&uuml;şn&uuml;klilik &yacute;aly birn&auml;&ccedil;e esasy h&auml;si&yacute;etlere e&yacute;edir. Işiň hakyky &yacute;agda&yacute;yny h&auml;si&yacute;etlendir&yacute;&auml;n maglumat anyk maglumatdyr. Anyk d&auml;l maglumatyň n&auml;dogry d&uuml;ş&uuml;njelere &yacute;a-da n&auml;dogry &ccedil;&ouml;z&uuml;wlere getirmegi m&uuml;mkin. Eger habar &ccedil;&ouml;zg&uuml;di kabul etmek &uuml;&ccedil;in &yacute;eterlik bolsa, onda оňа doly maglumat di&yacute;il&yacute;&auml;r. Doly d&auml;l maglumat &ccedil;&ouml;zg&uuml;di kabul etmekde &yacute;a-da оňа d&uuml;ş&uuml;nmekde kyn&ccedil;ylyk d&ouml;red&yacute;&auml;r. maglumatyň gymmatlylygy onuň k&ouml;megi bilen n&auml;hili meseleleriň &ccedil;&ouml;z&uuml;lişine baglydyr. Derwa&yacute;ys maglumat şertleri &uuml;&yacute;tg&auml;p dur&yacute;an işlerde zerurdyr. D&uuml;şn&uuml;ksiz s&ouml;zler bilen aňladylan habar pe&yacute;dasyz bolup biler. Beril&yacute;&auml;n maglumat, habar a&yacute;dyň we d&uuml;şň&uuml;kli bolmalydyr.</p>\r\n\r\n<h2>Informasi&yacute;alaryň kodlanyşy. Maglumatlaryň mukdarynyň &ouml;l&ccedil;eg birlikleri</h2>', '<p><strong>Informatika</strong>&mdash;Informasi&yacute;a informatikanyň ilkinji we d&uuml;&yacute;pli d&uuml;ş&uuml;njeleriniň biridir. Şonuň &uuml;&ccedil;in informasi&yacute;a d&uuml;ş&uuml;njesine gysga&ccedil;a kesgitleme bermek &yacute;a-da ony bir s&ouml;zlem bilen be&yacute;an etmek m&uuml;mkin d&auml;ldir.</p>\r\n\r\n<p>Informasi&yacute;a &ldquo;informatio&rdquo; di&yacute;en latyn s&ouml;z&uuml;nden gelip &ccedil;yk&yacute;ar we t&uuml;rkmen dilinde &ldquo;d&uuml;ş&uuml;ndirmek&rdquo;, &ldquo;a&yacute;dyň etmek&rdquo;, &ldquo;be&yacute;an etmek&rdquo;, &ldquo;a&yacute;dyp bermek&rdquo;, &ldquo;habarlylyk&rdquo;, &ldquo;maglumatlylyk&rdquo; di&yacute;en &yacute;aly manylary ber&yacute;&auml;r. Biziň &yacute;erine &yacute;etir&yacute;&auml;n islendik işimiz ha&yacute;sydyr bir habary, maglumaty kabul etmek we pe&yacute;dalanmak bilen baglanyşyklydyr. Meselem, kitap, gazet okamak, surata, telewizora seretmek we ş. m. arkaly biz habarlary, maglumatlary kabul ed&yacute;&auml;ris, &yacute;atda sakla&yacute;arys, topla&yacute;arys, &ouml;z&uuml;miz&ccedil;e ga&yacute;tadan işle&yacute;&auml;ris hem-de başgalara &yacute;a&yacute;rad&yacute;arys. Hat &yacute;azsak-da, telefonda g&uuml;rleşsek-de s&ouml;hbetdeşimize ha&yacute;sydyr bir habary, maglumaty ber&yacute;&auml;ris. Islendik mesel&auml;ni &ccedil;&ouml;zmek &uuml;&ccedil;in maglumatlar bilen işle&yacute;&auml;ris, mesel&auml;niň şertinde berlen d&uuml;ş&uuml;njeden başlap, оnuň &ccedil;&ouml;zg&uuml;dinde &ndash; t&auml;ze bir d&uuml;ş&uuml;nj&auml; gel&yacute;&auml;ris. Habar bermeler &ouml;n&uuml;m&ccedil;ilikde we durmuşda &yacute;azgylar we &ccedil;yzgylar, maglumatlar we hasabatlar, jedweller (tablisalar) &yacute;aly g&ouml;rn&uuml;şlerde hem duş gelip bil&yacute;&auml;rler. &Ccedil;yzgylar we saz eserleri, kitaplar we suratlar, spektakllar we kinofilmler - bularyň barysy-da informasi&yacute;alaryň be&yacute;an edilşiniň g&ouml;rn&uuml;şleridir. Maglumat anyklyk we dolulyk, gymmatlylyk we derwa&yacute;yslyk, a&yacute;dyňlyk we d&uuml;şn&uuml;klilik &yacute;aly birn&auml;&ccedil;e esasy h&auml;si&yacute;etlere e&yacute;edir. Işiň hakyky &yacute;agda&yacute;yny h&auml;si&yacute;etlendir&yacute;&auml;n maglumat anyk maglumatdyr. Anyk d&auml;l maglumatyň n&auml;dogry d&uuml;ş&uuml;njelere &yacute;a-da n&auml;dogry &ccedil;&ouml;z&uuml;wlere getirmegi m&uuml;mkin. Eger habar &ccedil;&ouml;zg&uuml;di kabul etmek &uuml;&ccedil;in &yacute;eterlik bolsa, onda оňа doly maglumat di&yacute;il&yacute;&auml;r. Doly d&auml;l maglumat &ccedil;&ouml;zg&uuml;di kabul etmekde &yacute;a-da оňа d&uuml;ş&uuml;nmekde kyn&ccedil;ylyk d&ouml;red&yacute;&auml;r. maglumatyň gymmatlylygy onuň k&ouml;megi bilen n&auml;hili meseleleriň &ccedil;&ouml;z&uuml;lişine baglydyr. Derwa&yacute;ys maglumat şertleri &uuml;&yacute;tg&auml;p dur&yacute;an işlerde zerurdyr. D&uuml;şn&uuml;ksiz s&ouml;zler bilen aňladylan habar pe&yacute;dasyz bolup biler. Beril&yacute;&auml;n maglumat, habar a&yacute;dyň we d&uuml;şň&uuml;kli bolmalydyr.</p>\r\n\r\n<h2>Informasi&yacute;alaryň kodlanyşy. Maglumatlaryň mukdarynyň &ouml;l&ccedil;eg birlikleri</h2>', 'App', 'Апп', 'programma', 'programma');

-- --------------------------------------------------------

--
-- Table structure for table `service_service`
--

CREATE TABLE `service_service` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `create_at` date NOT NULL,
  `update_at` date NOT NULL,
  `description_en_us` longtext DEFAULT NULL,
  `description_ru` longtext DEFAULT NULL,
  `description_tk` longtext DEFAULT NULL,
  `description_tr` longtext DEFAULT NULL,
  `title_en_us` varchar(300) DEFAULT NULL,
  `title_ru` varchar(300) DEFAULT NULL,
  `title_tk` varchar(300) DEFAULT NULL,
  `title_tr` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_service`
--

INSERT INTO `service_service` (`id`, `title`, `description`, `status`, `image`, `create_at`, `update_at`, `description_en_us`, `description_ru`, `description_tk`, `description_tr`, `title_en_us`, `title_ru`, `title_tk`, `title_tr`) VALUES
(2, 'Nature', '<p><a href=\"https://www.toppr.com/guides/english/\" title=\"Go to the English\">English</a>&nbsp;&gt;&nbsp;<a href=\"https://www.toppr.com/guides/essays/\" title=\"Go to the Essays\">Essays</a>&nbsp;&gt;&nbsp;Nature Essay for Students and Children</p>\r\n\r\n<p><a href=\"https://www.toppr.com/guides/essays/\">Essays</a></p>\r\n\r\n<h1>Nature Essay for Students and Children</h1>\r\n\r\n<h2>500+ Words Nature Essay</h2>\r\n\r\n<p><a href=\"https://www.toppr.com/guides/geography/environment/environment/\">Nature</a>&nbsp;is an important and integral part of mankind. It is one of the greatest blessings for human life; however, nowadays humans fail to recognize it as one. Nature has been an inspiration for numerous poets, writers, artists and more of yesteryears. This remarkable creation inspired them to write poems and stories in the glory of it. They truly valued nature which reflects in their works even today. Essentially, nature is everything we are surrounded by like the water we drink, the air we breathe, the sun we soak in, the birds we hear chirping, the moon we gaze at and more. Above all, it is rich and vibrant and consists of both<a href=\"https://www.toppr.com/guides/biology/the-living-world/living-things/\">&nbsp;living</a>&nbsp;and non-living things. Therefore, people of the modern age should also learn something from people of yesteryear and start valuing nature before it gets too late.</p>\r\n\r\n<p>SolveQuestions</p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-about-100-words-on-my-ambition-in-life-is-to-become-a/\" target=\"_blank\">Write an essay about100100words on &quot;My ambition in life is to become a doctor&quot;.</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-about-100-words-on-my-ambition-in-life-is-to-become-a/\" target=\"_blank\">1 Verified answer</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-about-100-words-on-my-ambition-in-life-is-to-become-a/\" target=\"_blank\"><img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/tick.png\" /></a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-by-developing-the-following-hintsfriendship-between-sue-and-johnsy-johnsy-attacked/\" target=\"_blank\">Write an essay by developing the following hints:<br />\r\nFriendship between Sue and Johnsy - Johnsy attacked by pneumonia - her thought of death - counting the falling leaves of the ivy plant - Sue&#39;s effort - Behman - his aim in life - bold gesture of Behrman - painting the fallen leaf - change in Johnsy&#39;s outlook - motivation to live - Behrman&#39;s death due to pneumonia - his masterpiece.</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-by-developing-the-following-hintsfriendship-between-sue-and-johnsy-johnsy-attacked/\" target=\"_blank\">1 Verified answer</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-by-developing-the-following-hintsfriendship-between-sue-and-johnsy-johnsy-attacked/\" target=\"_blank\"><img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/tick.png\" /></a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-on-heaven-and-hell/\" target=\"_blank\">Write an essay on &#39;Heaven and hell&#39;.</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-on-heaven-and-hell/\" target=\"_blank\">1 Verified answer</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-on-heaven-and-hell/\" target=\"_blank\"><img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/tick.png\" /></a></p>\r\n\r\n<p>VIEW MORE<img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/chevron.png\" /></p>\r\n\r\n<p><img alt=\"nature essay\" src=\"https://d1whtlypfis84e.cloudfront.net/guides/wp-content/uploads/2019/07/23090714/nature-1024x682.jpeg\" style=\"height:639px; width:960px\" /></p>\r\n\r\n<h3><strong>Significance of Nature</strong></h3>\r\n\r\n<p>Nature has been in existence long before humans and ever since it has taken care of mankind and nourished it forever. In other words, it offers us a protective layer which guards us against all kinds of damages and harms. Survival of mankind without nature is impossible and humans need to understand that.</p>\r\n\r\n<p>If nature has the ability to protect us, it is also powerful enough to destroy the entire mankind. Every form of nature, for instance, the&nbsp;<a href=\"https://www.toppr.com/guides/science/getting-to-know-plants/flowering-plants/\">plants</a>,&nbsp;<a href=\"https://www.toppr.com/guides/biology/reproduction-in-animals/\">animals</a>, rivers, mountains, moon, and more holds equal significance for us. Absence of one element is enough to cause a catastrophe in the functioning of human life.</p>\r\n\r\n<p>We fulfill our healthy lifestyle by eating and drinking healthy, which nature gives us. Similarly, it provides us with water and food that enables us to do so. Rainfall and sunshine, the two most important elements to survive are derived from nature itself.</p>\r\n\r\n<p>Further, the air we breathe and the wood we use for various purposes are a gift of nature only. But, with technological advancements, people are not paying attention to nature. The need to conserve and balance the natural assets is rising day by day which requires immediate attention.</p>\r\n\r\n<p>&nbsp;</p>', 'Yes', 'images/service/clr-icon1_QpzofaY.png', '2021-02-01', '2021-02-08', '<p><a href=\"https://www.toppr.com/guides/english/\" title=\"Go to the English\">English</a>&nbsp;&gt;&nbsp;<a href=\"https://www.toppr.com/guides/essays/\" title=\"Go to the Essays\">Essays</a>&nbsp;&gt;&nbsp;Nature Essay for Students and Children</p>\r\n\r\n<p><a href=\"https://www.toppr.com/guides/essays/\">Essays</a></p>\r\n\r\n<h1>Nature Essay for Students and Children</h1>\r\n\r\n<h2>500+ Words Nature Essay</h2>\r\n\r\n<p><a href=\"https://www.toppr.com/guides/geography/environment/environment/\">Nature</a>&nbsp;is an important and integral part of mankind. It is one of the greatest blessings for human life; however, nowadays humans fail to recognize it as one. Nature has been an inspiration for numerous poets, writers, artists and more of yesteryears. This remarkable creation inspired them to write poems and stories in the glory of it. They truly valued nature which reflects in their works even today. Essentially, nature is everything we are surrounded by like the water we drink, the air we breathe, the sun we soak in, the birds we hear chirping, the moon we gaze at and more. Above all, it is rich and vibrant and consists of both<a href=\"https://www.toppr.com/guides/biology/the-living-world/living-things/\">&nbsp;living</a>&nbsp;and non-living things. Therefore, people of the modern age should also learn something from people of yesteryear and start valuing nature before it gets too late.</p>\r\n\r\n<p>SolveQuestions</p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-about-100-words-on-my-ambition-in-life-is-to-become-a/\" target=\"_blank\">Write an essay about100100words on &quot;My ambition in life is to become a doctor&quot;.</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-about-100-words-on-my-ambition-in-life-is-to-become-a/\" target=\"_blank\">1 Verified answer</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-about-100-words-on-my-ambition-in-life-is-to-become-a/\" target=\"_blank\"><img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/tick.png\" /></a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-by-developing-the-following-hintsfriendship-between-sue-and-johnsy-johnsy-attacked/\" target=\"_blank\">Write an essay by developing the following hints:<br />\r\nFriendship between Sue and Johnsy - Johnsy attacked by pneumonia - her thought of death - counting the falling leaves of the ivy plant - Sue&#39;s effort - Behman - his aim in life - bold gesture of Behrman - painting the fallen leaf - change in Johnsy&#39;s outlook - motivation to live - Behrman&#39;s death due to pneumonia - his masterpiece.</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-by-developing-the-following-hintsfriendship-between-sue-and-johnsy-johnsy-attacked/\" target=\"_blank\">1 Verified answer</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-by-developing-the-following-hintsfriendship-between-sue-and-johnsy-johnsy-attacked/\" target=\"_blank\"><img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/tick.png\" /></a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-on-heaven-and-hell/\" target=\"_blank\">Write an essay on &#39;Heaven and hell&#39;.</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-on-heaven-and-hell/\" target=\"_blank\">1 Verified answer</a></p>\r\n\r\n<p><a href=\"https://www.toppr.com/ask/question/write-an-essay-on-heaven-and-hell/\" target=\"_blank\"><img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/tick.png\" /></a></p>\r\n\r\n<p>VIEW MORE<img src=\"https://www.toppr.com/guides/wp-content/themes/toppr-guides-v1/images/related-contents/chevron.png\" /></p>\r\n\r\n<p><img alt=\"nature essay\" src=\"https://d1whtlypfis84e.cloudfront.net/guides/wp-content/uploads/2019/07/23090714/nature-1024x682.jpeg\" style=\"height:639px; width:960px\" /></p>\r\n\r\n<h3><strong>Significance of Nature</strong></h3>\r\n\r\n<p>Nature has been in existence long before humans and ever since it has taken care of mankind and nourished it forever. In other words, it offers us a protective layer which guards us against all kinds of damages and harms. Survival of mankind without nature is impossible and humans need to understand that.</p>\r\n\r\n<p>If nature has the ability to protect us, it is also powerful enough to destroy the entire mankind. Every form of nature, for instance, the&nbsp;<a href=\"https://www.toppr.com/guides/science/getting-to-know-plants/flowering-plants/\">plants</a>,&nbsp;<a href=\"https://www.toppr.com/guides/biology/reproduction-in-animals/\">animals</a>, rivers, mountains, moon, and more holds equal significance for us. Absence of one element is enough to cause a catastrophe in the functioning of human life.</p>\r\n\r\n<p>We fulfill our healthy lifestyle by eating and drinking healthy, which nature gives us. Similarly, it provides us with water and food that enables us to do so. Rainfall and sunshine, the two most important elements to survive are derived from nature itself.</p>\r\n\r\n<p>Further, the air we breathe and the wood we use for various purposes are a gift of nature only. But, with technological advancements, people are not paying attention to nature. The need to conserve and balance the natural assets is rising day by day which requires immediate attention.</p>\r\n\r\n<p>&nbsp;</p>', '<pre>\r\n<strong>Природа</strong>&nbsp;&mdash; материальный мир планеты Земля, в сущности &mdash; основной объект изучения науки.\r\n В быту слово &laquo;<strong>природа</strong>&raquo; часто употребляется в значении естественная среда обитания ч\r\nеловека (всё, что нас окружает, за исключением созданного человеком).</pre>\r\n\r\n<p>&nbsp;</p>', '<p>Hormatly okyjylarymyz! Gola&yacute;da Siziň &uuml;&ccedil;in d&ouml;redijilik toparymyz bolup, &yacute;urdumyzyň daglarynyň aja&yacute;yp &yacute;erine baryp, şol &yacute;er barada wideo &yacute;azgylar etdik.</p>\r\n\r\n<p>T&auml;sinlik g&ouml;rjek bolsaň, daglara bar di&yacute;lişi &yacute;aly, hakykatdan hem daglarymyzdaky tebigy gowaklar hem syrly rowa&yacute;atlary bilen &ouml;z&uuml;ne bendi ed&yacute;&auml;r. Şe&yacute;le tebigy gowaklaryň biri hem B&auml;herden etrabynyň &ccedil;&auml;klerind&auml;ki &ldquo;Kyrkgyz&rdquo; gowagy hemmeler &uuml;&ccedil;in&nbsp; gyzykly bolsa gerek.</p>\r\n\r\n<p>Jemi 9 minutdan gowrak bolan aja&yacute;yp wideo habary dolulygyna `Atavatan Turkmenistan` You Tube kanalyndan tomaşa edip bilersiňiz! Wideo dolulygyna iň&nbsp; You Tube kanalymyza &yacute;erleşdirildi.</p>', '<pre>\r\nПрирода прекрасна</pre>\r\n\r\n<p>&nbsp;</p>', 'Nature', 'Природа', 'Tebigat', 'Tebigat'),
(3, 'Car', '<p>A&nbsp;<strong>car</strong>&nbsp;(or&nbsp;<strong>automobile</strong>) is a wheeled&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motor_vehicle\" title=\"Motor vehicle\">motor vehicle</a>&nbsp;used for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transportation\" title=\"Transportation\">transportation</a>. Most definitions of&nbsp;<em>cars</em>&nbsp;say that they run primarily on roads, seat one to eight people, have four&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wheels\" title=\"Wheels\">wheels</a>, and mainly transport people rather than goods.<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-OEDmotrcar-3\">[3]</a></sup></p>\r\n\r\n<p>Cars came into global use during the 20th century, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Developed_country\" title=\"Developed country\">developed economies</a>&nbsp;depend on them. The year 1886 is regarded as the birth year of the modern car when German inventor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Karl_Benz\" title=\"Karl Benz\">Karl Benz</a>&nbsp;patented his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Benz_Patent-Motorwagen\" title=\"Benz Patent-Motorwagen\">Benz Patent-Motorwagen</a>. Cars became widely available in the early 20th century. One of the first cars accessible to the masses was the 1908&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ford_Model_T\" title=\"Ford Model T\">Model T</a>, an American car manufactured by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ford_Motor_Company\" title=\"Ford Motor Company\">Ford Motor Company</a>. Cars were rapidly adopted in the US, where they replaced&nbsp;<a href=\"https://en.wikipedia.org/wiki/Draft_animal\" title=\"Draft animal\">animal-drawn</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Carriage\" title=\"Carriage\">carriages</a>&nbsp;and carts, but took much longer to be accepted in Western Europe and other parts of the world.<sup>[<em><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Citation_needed\" title=\"Wikipedia:Citation needed\">citation needed</a></em>]</sup></p>\r\n\r\n<p>Cars have controls for driving, parking, passenger comfort, and a variety of lights. Over the decades, additional features and controls have been added to vehicles, making them progressively more complex, but also more reliable and easier to operate.<sup>[<em><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Citation_needed\" title=\"Wikipedia:Citation needed\">citation needed</a></em>]</sup>&nbsp;These include rear-reversing cameras,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Automobile_air_conditioning\" title=\"Automobile air conditioning\">air conditioning</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Automotive_navigation_system\" title=\"Automotive navigation system\">navigation systems</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/In-car_entertainment\" title=\"In-car entertainment\">in-car entertainment</a>. Most cars in use in the 2010s are propelled by an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internal_combustion_engine\" title=\"Internal combustion engine\">internal combustion engine</a>, fueled by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Combustion\" title=\"Combustion\">combustion</a>&nbsp;of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fossil_fuel\" title=\"Fossil fuel\">fossil fuels</a>.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_car\" title=\"Electric car\">Electric cars</a>, which were invented early in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/History_of_the_automobile\" title=\"History of the automobile\">history of the car</a>, became commercially available in the 2000s and are predicted to cost less to buy than gasoline cars before 2025.<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-4\">[4]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-5\">[5]</a></sup>&nbsp;The transition from fossil fuels to electric cars features prominently in most&nbsp;<a href=\"https://en.wikipedia.org/wiki/Climate_change_mitigation_scenarios\" title=\"Climate change mitigation scenarios\">climate change mitigation scenarios</a>,<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-6\">[6]</a></sup>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Project_Drawdown\" title=\"Project Drawdown\">Project Drawdown</a>&#39;s 100 actionable solutions for climate change.<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-7\">[7]</a></sup></p>\r\n\r\n<p>&nbsp;</p>', 'Yes', 'images/service/clr-icon2.png', '2021-02-01', '2021-02-07', '<p>A&nbsp;<strong>car</strong>&nbsp;(or&nbsp;<strong>automobile</strong>) is a wheeled&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motor_vehicle\" title=\"Motor vehicle\">motor vehicle</a>&nbsp;used for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transportation\" title=\"Transportation\">transportation</a>. Most definitions of&nbsp;<em>cars</em>&nbsp;say that they run primarily on roads, seat one to eight people, have four&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wheels\" title=\"Wheels\">wheels</a>, and mainly transport people rather than goods.<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-2\">[2]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-OEDmotrcar-3\">[3]</a></sup></p>\r\n\r\n<p>Cars came into global use during the 20th century, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Developed_country\" title=\"Developed country\">developed economies</a>&nbsp;depend on them. The year 1886 is regarded as the birth year of the modern car when German inventor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Karl_Benz\" title=\"Karl Benz\">Karl Benz</a>&nbsp;patented his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Benz_Patent-Motorwagen\" title=\"Benz Patent-Motorwagen\">Benz Patent-Motorwagen</a>. Cars became widely available in the early 20th century. One of the first cars accessible to the masses was the 1908&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ford_Model_T\" title=\"Ford Model T\">Model T</a>, an American car manufactured by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ford_Motor_Company\" title=\"Ford Motor Company\">Ford Motor Company</a>. Cars were rapidly adopted in the US, where they replaced&nbsp;<a href=\"https://en.wikipedia.org/wiki/Draft_animal\" title=\"Draft animal\">animal-drawn</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Carriage\" title=\"Carriage\">carriages</a>&nbsp;and carts, but took much longer to be accepted in Western Europe and other parts of the world.<sup>[<em><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Citation_needed\" title=\"Wikipedia:Citation needed\">citation needed</a></em>]</sup></p>\r\n\r\n<p>Cars have controls for driving, parking, passenger comfort, and a variety of lights. Over the decades, additional features and controls have been added to vehicles, making them progressively more complex, but also more reliable and easier to operate.<sup>[<em><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Citation_needed\" title=\"Wikipedia:Citation needed\">citation needed</a></em>]</sup>&nbsp;These include rear-reversing cameras,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Automobile_air_conditioning\" title=\"Automobile air conditioning\">air conditioning</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Automotive_navigation_system\" title=\"Automotive navigation system\">navigation systems</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/In-car_entertainment\" title=\"In-car entertainment\">in-car entertainment</a>. Most cars in use in the 2010s are propelled by an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internal_combustion_engine\" title=\"Internal combustion engine\">internal combustion engine</a>, fueled by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Combustion\" title=\"Combustion\">combustion</a>&nbsp;of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fossil_fuel\" title=\"Fossil fuel\">fossil fuels</a>.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_car\" title=\"Electric car\">Electric cars</a>, which were invented early in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/History_of_the_automobile\" title=\"History of the automobile\">history of the car</a>, became commercially available in the 2000s and are predicted to cost less to buy than gasoline cars before 2025.<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-4\">[4]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-5\">[5]</a></sup>&nbsp;The transition from fossil fuels to electric cars features prominently in most&nbsp;<a href=\"https://en.wikipedia.org/wiki/Climate_change_mitigation_scenarios\" title=\"Climate change mitigation scenarios\">climate change mitigation scenarios</a>,<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-6\">[6]</a></sup>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Project_Drawdown\" title=\"Project Drawdown\">Project Drawdown</a>&#39;s 100 actionable solutions for climate change.<sup><a href=\"https://en.wikipedia.org/wiki/Car#cite_note-7\">[7]</a></sup></p>\r\n\r\n<p>&nbsp;</p>', '<p><strong>Маши́на</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D1%82%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Латинский язык\">лат.</a>&nbsp;machina&nbsp;&mdash; &laquo;устройство, конструкция&raquo;, от&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B5%D0%B3%D1%80%D0%B5%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Древнегреческий язык\">др.-греч.</a>&nbsp;&mu;&eta;&chi;&alpha;&nu;ή&nbsp;&mdash; &laquo;приспособление, способ&raquo;)&nbsp;&mdash; техническое&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%BE\" title=\"Устройство\">приспособление</a>, выполняющее механические движения для преобразования&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BD%D0%B5%D1%80%D0%B3%D0%B8%D1%8F\" title=\"Энергия\">энергии</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB\" title=\"Материал\">материалов</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F\" title=\"Информация\">информации</a><sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0#cite_note-:0-1\">[1]</a></sup>.</p>\r\n\r\n<p>В более расширенном современном определении, появившемся с развитием&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%B8%D0%BA%D0%B0\" title=\"Электроника\">электроники</a>, машиной является&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D0%B0\" title=\"Техника\">технический</a>&nbsp;объект, состоящий из взаимосвязанных функциональных частей (деталей, узлов, устройств,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D1%85%D0%B0%D0%BD%D0%B8%D0%B7%D0%BC\" title=\"Механизм\">механизмов</a>&nbsp;и др.), использующий&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BD%D0%B5%D1%80%D0%B3%D0%B8%D1%8F\" title=\"Энергия\">энергию</a>&nbsp;для выполнения возложенных на него функций<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0#cite_note-2\">[2]</a></sup>. В этом понимании машина может и не содержать механически движущихся частей. Примером таких устройств служат электронно-вычислительная машина (<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80\" title=\"Компьютер\">компьютер</a>),&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B0%D0%BD%D1%81%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%BE%D1%80\" title=\"Трансформатор\">электрический трансформатор</a><sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0#cite_note-:0-1\">[1]</a></sup>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D1%81%D0%BA%D0%BE%D1%80%D0%B8%D1%82%D0%B5%D0%BB%D1%8C_%D0%B7%D0%B0%D1%80%D1%8F%D0%B6%D0%B5%D0%BD%D0%BD%D1%8B%D1%85_%D1%87%D0%B0%D1%81%D1%82%D0%B8%D1%86\" title=\"Ускоритель заряженных частиц\">ускоритель заряженных частиц</a>.</p>\r\n\r\n<p>Машины используются для выполнения определённых действий:</p>\r\n\r\n<ul>\r\n	<li>с целью уменьшения нагрузки на человека</li>\r\n	<li>полной замены человека при выполнении конкретной задачи.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<p><a href=\"https://turkmenportal.com/images/uploads/catalog/858ef17f2cd32f5add6635adbaa3ec0b.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/858ef17f2cd32f5add6635adbaa3ec0b-391334-425x300-3.JPG\" /></a></p>\r\n\r\n<p><a href=\"https://turkmenportal.com/images/uploads/catalog/d0ea457c3e76aeaf3be0bd788cbe8eba.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/d0ea457c3e76aeaf3be0bd788cbe8eba-391335-425x300-3.JPG\" /></a></p>\r\n\r\n<p><a href=\"https://turkmenportal.com/images/uploads/catalog/bcbda3d93934111d4754c09572df615e.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/bcbda3d93934111d4754c09572df615e-391336-425x300-3.JPG\" /></a></p>\r\n\r\n<p><a href=\"https://turkmenportal.com/images/uploads/catalog/1ef35b12221903c8b7ffe24121123141.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/1ef35b12221903c8b7ffe24121123141-391337-425x300-3.JPG\" /></a></p>\r\n\r\n<p>Собственник:</p>\r\n\r\n<p><strong>rovshen mamednurov</strong></p>\r\n\r\n<p>Телефон:</p>\r\n\r\n<p><strong>+99363484247</strong></p>\r\n\r\n<p>Почта:</p>\r\n\r\n<p><strong>simpothic_boy@mail.ru</strong></p>\r\n\r\n<p>Цена:</p>\r\n\r\n<p><strong>34000</strong></p>\r\n\r\n<p>satlyk toy bezegleri tayyn sowda we iş, to&yacute; bezeglerini bezemek u&ccedil;in arkalar guller matalar mashyn bezegleri şa&yacute;ly bezegler hemmesi baraljaga bahany gowy oňuşarys yada obmen maşyn bilen katology we ta&yacute;&yacute;ar klientleri bar</p>\r\n\r\n<p>&nbsp;</p>', '<p><a href=\"https://turkmenportal.com/images/uploads/catalog/858ef17f2cd32f5add6635adbaa3ec0b.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/858ef17f2cd32f5add6635adbaa3ec0b-391334-425x300-3.JPG\" /></a></p>\r\n\r\n<p><a href=\"https://turkmenportal.com/images/uploads/catalog/d0ea457c3e76aeaf3be0bd788cbe8eba.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/d0ea457c3e76aeaf3be0bd788cbe8eba-391335-425x300-3.JPG\" /></a></p>\r\n\r\n<p><a href=\"https://turkmenportal.com/images/uploads/catalog/bcbda3d93934111d4754c09572df615e.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/bcbda3d93934111d4754c09572df615e-391336-425x300-3.JPG\" /></a></p>\r\n\r\n<p><a href=\"https://turkmenportal.com/images/uploads/catalog/1ef35b12221903c8b7ffe24121123141.JPG\"><img src=\"https://turkmenportal.com/images/uploads/cache/catalog/1ef35b12221903c8b7ffe24121123141-391337-425x300-3.JPG\" /></a></p>\r\n\r\n<p>Собственник:</p>\r\n\r\n<p><strong>rovshen mamednurov</strong></p>\r\n\r\n<p>Телефон:</p>\r\n\r\n<p><strong>+99363484247</strong></p>\r\n\r\n<p>Почта:</p>\r\n\r\n<p><strong>simpothic_boy@mail.ru</strong></p>\r\n\r\n<p>Цена:</p>\r\n\r\n<p><strong>34000</strong></p>\r\n\r\n<p>satlyk toy bezegleri tayyn sowda we iş, to&yacute; bezeglerini bezemek u&ccedil;in arkalar guller matalar mashyn bezegleri şa&yacute;ly bezegler hemmesi baraljaga bahany gowy oňuşarys yada obmen maşyn bilen katology we ta&yacute;&yacute;ar klientleri bar</p>\r\n\r\n<p>&nbsp;</p>', 'Car', 'Car', 'mashyn', 'araba'),
(4, 'Nature', '<p>Nature is beautiful</p>', 'Yes', 'images/service/clr-icon3.png', '2021-02-06', '2021-02-08', '<p>Nature is beautiful</p>', '<pre>\r\nмриапор</pre>\r\n\r\n<p>мьиплом</p>\r\n\r\n<p>мтлкеорип</p>\r\n\r\n<p>&nbsp;</p>', '<p>tebigat owadan</p>', '<p>tebigat guzel</p>', 'Nature', 'Природа', 'Tebigat', 'Tebigat');

-- --------------------------------------------------------

--
-- Table structure for table `service_servicepicture`
--

CREATE TABLE `service_servicepicture` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_servicepicture`
--

INSERT INTO `service_servicepicture` (`id`, `title`, `image`, `service_id`) VALUES
(1, 'car1', 'images/service/c1.jpg', 3),
(2, 'car2', 'images/service/c2.jpg', 3),
(3, 'car3', 'images/service/c3.jpg', 3),
(4, 'car4', 'images/service/c3_gbWplmw.jpg', 3),
(5, 'car5', 'images/service/c2_q593xzo.jpg', 3),
(6, 's1', 'images/service/20180624_183534_AmVNgpl.jpg', 2),
(7, 's2', 'images/service/Screenshot_20180621-105626.png', 2),
(8, 's3', 'images/service/1491527318747_dKeFdZD.jpg', 2),
(9, 's4', 'images/service/Screenshot_20180413-193322.jpg', 2),
(10, 's5', 'images/service/Screenshot_20180621-105646.png', 2),
(11, 's1', 'images/service/20180624_183531.jpg', 4),
(12, 's2', 'images/service/LINE_P20170426_164557903.jpg', 4),
(13, 's3', 'images/service/1491527318747_RLsfJ84.jpg', 4),
(14, 's4', 'images/service/Screenshot_20180621-105631.png', 4),
(15, 's5', 'images/service/Screenshot_20180621-105626_PkMO21I.png', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_aboutpicture`
--
ALTER TABLE `home_aboutpicture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aboutpicture_aboutus_id_6f0128e5_fk_home_aboutus_id` (`aboutus_id`);

--
-- Indexes for table `home_aboutus`
--
ALTER TABLE `home_aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_achievement`
--
ALTER TABLE `home_achievement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_blog`
--
ALTER TABLE `home_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_clients`
--
ALTER TABLE `home_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_contactmessage`
--
ALTER TABLE `home_contactmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_setting`
--
ALTER TABLE `home_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_parent_id_3388f6c9_fk_products_category_id` (`parent_id`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`);

--
-- Indexes for table `service_service`
--
ALTER TABLE `service_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_servicepicture`
--
ALTER TABLE `service_servicepicture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_servicepicture_service_id_b2a51ff9_fk_service_service_id` (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `home_aboutpicture`
--
ALTER TABLE `home_aboutpicture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `home_aboutus`
--
ALTER TABLE `home_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_achievement`
--
ALTER TABLE `home_achievement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_blog`
--
ALTER TABLE `home_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_clients`
--
ALTER TABLE `home_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_contactmessage`
--
ALTER TABLE `home_contactmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_setting`
--
ALTER TABLE `home_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_service`
--
ALTER TABLE `service_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_servicepicture`
--
ALTER TABLE `service_servicepicture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_aboutpicture`
--
ALTER TABLE `home_aboutpicture`
  ADD CONSTRAINT `home_aboutpicture_aboutus_id_6f0128e5_fk_home_aboutus_id` FOREIGN KEY (`aboutus_id`) REFERENCES `home_aboutus` (`id`);

--
-- Constraints for table `products_category`
--
ALTER TABLE `products_category`
  ADD CONSTRAINT `products_category_parent_id_3388f6c9_fk_products_category_id` FOREIGN KEY (`parent_id`) REFERENCES `products_category` (`id`);

--
-- Constraints for table `products_product`
--
ALTER TABLE `products_product`
  ADD CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`);

--
-- Constraints for table `service_servicepicture`
--
ALTER TABLE `service_servicepicture`
  ADD CONSTRAINT `service_servicepicture_service_id_b2a51ff9_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
