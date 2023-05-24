-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 01:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sil`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categories', 7, 'add_categories'),
(26, 'Can change categories', 7, 'change_categories'),
(27, 'Can delete categories', 7, 'delete_categories'),
(28, 'Can view categories', 7, 'view_categories'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add payment', 9, 'add_payment'),
(34, 'Can change payment', 9, 'change_payment'),
(35, 'Can delete payment', 9, 'delete_payment'),
(36, 'Can view payment', 9, 'view_payment'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add categories', 11, 'add_categories'),
(42, 'Can change categories', 11, 'change_categories'),
(43, 'Can delete categories', 11, 'delete_categories'),
(44, 'Can view categories', 11, 'view_categories'),
(45, 'Can add course', 12, 'add_course'),
(46, 'Can change course', 12, 'change_course'),
(47, 'Can delete course', 12, 'delete_course'),
(48, 'Can view course', 12, 'view_course'),
(49, 'Can add silmodel', 13, 'add_silmodel'),
(50, 'Can change silmodel', 13, 'change_silmodel'),
(51, 'Can delete silmodel', 13, 'delete_silmodel'),
(52, 'Can view silmodel', 13, 'view_silmodel'),
(53, 'Can add cartt', 14, 'add_cartt'),
(54, 'Can change cartt', 14, 'change_cartt'),
(55, 'Can delete cartt', 14, 'delete_cartt'),
(56, 'Can view cartt', 14, 'view_cartt');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$sqw8Rc35iGW6gV37TQ5R00$LD9pafawPUF96nJk9XKvetadZQfZ3hP8Dzbd0qrBdGs=', '2023-04-12 10:19:31.962908', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-04-04 09:44:15.175791'),
(2, 'pbkdf2_sha256$600000$sqw8Rc35iGW6gV37TQ5R00$LD9pafawPUF96nJk9XKvetadZQfZ3hP8Dzbd0qrBdGs=', NULL, 0, 'soja', 'soja', 'j', 'soja@gmail.com', 0, 0, '0000-00-00 00:00:00.000000'),
(4, 'pbkdf2_sha256$600000$jjKKpTsGBlZchrg8gddwwc$6xzobzl8OVr4woJvkb1hlObUASBHsM7Tnff27xusahM=', '2023-04-12 10:59:22.018936', 0, 'Abhiram', '', '', 'abhiram.r8898@gmail.com', 0, 1, '2023-04-12 08:09:43.797147'),
(5, 'pbkdf2_sha256$600000$6hs02NJ0zTD404qltB5tlW$vgJmdTh/7SBWeJPc0V3tt5JUSZJ8OatpoBjZnW6Yb/0=', NULL, 0, 'arjun', '', '', 'arjun@gmail.com', 0, 1, '2023-04-12 11:10:50.890824');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-04 10:00:59.985787', '1', 'Development', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-04-04 10:12:05.557453', '1', 'Javascript for Beginners', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-04-04 11:44:08.243377', '2', 'Python and Django Full Stack Web Developer Bootcamp', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-04-04 11:51:06.843945', '2', 'Python and Django Full Stack', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(5, '2023-04-04 11:53:10.858568', '3', 'React - The Complete Guide', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-04-04 11:53:51.505646', '3', 'React - The Complete Guide', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(7, '2023-04-04 11:54:18.408549', '3', 'React - The Complete Guide', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(8, '2023-04-04 11:57:10.097576', '4', 'The Complete Node.js Developer', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-04-04 12:02:15.721944', '4', 'The Complete Node.js Developer', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(10, '2023-04-04 12:11:30.446822', '5', 'MongoDB', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-04-04 12:13:17.904683', '6', 'The Complete 2023 Web Development', 1, '[{\"added\": {}}]', 8, 1),
(12, '2023-04-04 12:13:55.087087', '6', 'The Complete 2023 Web Development', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(13, '2023-04-04 12:15:36.474481', '7', 'API and Web Service', 1, '[{\"added\": {}}]', 8, 1),
(14, '2023-04-04 12:17:42.432091', '8', '100 Days Of Code', 1, '[{\"added\": {}}]', 8, 1),
(15, '2023-04-05 03:57:47.263251', '17', 'Operating Systems & Servers', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Image\"]}}]', 8, 1),
(16, '2023-04-05 03:59:07.440611', '16', 'Hardware', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(17, '2023-04-05 04:01:39.512681', '15', 'Network & Security', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(18, '2023-04-05 04:13:33.066071', '5', 'MongoDB', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(19, '2023-04-05 04:14:18.280863', '8', '100 Days Of Code', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(20, '2023-04-05 04:15:16.632799', '6', 'The Complete 2023 Web Development', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(21, '2023-04-05 04:15:42.630186', '7', 'API and Web Service', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(22, '2023-04-05 04:16:38.331255', '16', 'Hardware', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(23, '2023-04-05 04:17:26.208894', '15', 'Network & Security', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(24, '2023-04-05 04:18:28.342917', '17', 'Operating Systems & Servers', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(25, '2023-04-05 04:37:29.458121', '3', 'React - The Complete Guide', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(26, '2023-04-05 04:40:05.704627', '2', 'Python and Django Full Stack', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(27, '2023-04-05 06:00:09.401651', '3', 'Finance & Accounting', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Description\"]}}]', 7, 1),
(28, '2023-04-05 06:00:24.161636', '2', 'Business', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(29, '2023-04-05 06:01:31.831857', '12', 'Accounting & Bookkeeping', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Image\"]}}]', 8, 1),
(30, '2023-04-05 06:01:55.115776', '10', 'Sales and Persuasion Skills for Startups', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(31, '2023-04-05 06:02:02.035477', '13', 'Cryptocurrency & Blockchain', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(32, '2023-04-05 06:02:31.667492', '14', 'Investing & Trading', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(33, '2023-04-05 06:02:42.612520', '11', 'Customer Service Training', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(34, '2023-04-05 06:03:28.811728', '9', 'Chief Financial Officer Leadership Program', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(35, '2023-04-05 06:03:55.201431', '10', 'Sales and Persuasion Skills for Startups', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(36, '2023-04-05 06:04:30.530136', '11', 'Customer Service Training', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(37, '2023-04-05 06:11:08.253125', '4', 'IT & Software', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]', 7, 1),
(38, '2023-04-05 06:11:36.832084', '3', 'Finance & Accounting', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(39, '2023-04-05 06:11:51.104043', '3', 'Finance & Accounting', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(40, '2023-04-05 06:33:09.347338', '2', 'Python and Django Full Stack', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(41, '2023-04-05 06:33:30.147001', '2', 'Python and Django Full Stack', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(42, '2023-04-05 06:33:52.410242', '2', 'Python and Django Full Stack', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(43, '2023-04-05 06:34:05.945817', '3', 'React - The Complete Guide', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(44, '2023-04-05 07:12:18.571526', '2', 'Python and Django Full Stack', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(45, '2023-04-05 07:12:38.806096', '3', 'React - The Complete Guide', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(46, '2023-04-05 07:12:57.915667', '4', 'The Complete Node.js Developer', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(47, '2023-04-05 07:13:32.077913', '6', 'The Complete 2023 Web Development', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'sil_admin', 'categories'),
(12, 'sil_admin', 'course'),
(10, 'sil_user', 'cart'),
(14, 'sil_user', 'cartt'),
(7, 'sil_user', 'categories'),
(8, 'sil_user', 'course'),
(9, 'sil_user', 'payment'),
(13, 'sil_user', 'silmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-04 09:40:02.510236'),
(2, 'auth', '0001_initial', '2023-04-04 09:40:03.128650'),
(3, 'admin', '0001_initial', '2023-04-04 09:40:03.261122'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-04 09:40:03.272117'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-04 09:40:03.282542'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-04 09:40:03.354497'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-04 09:40:03.402086'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-04 09:40:03.426087'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-04 09:40:03.434409'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-04 09:40:03.484659'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-04 09:40:03.486646'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-04 09:40:03.496659'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-04 09:40:03.519667'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-04 09:40:03.539667'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-04 09:40:03.559568'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-04 09:40:03.573020'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-04 09:40:03.592893'),
(18, 'sessions', '0001_initial', '2023-04-04 09:40:03.622323'),
(19, 'sil_user', '0001_initial', '2023-04-04 09:40:03.845734'),
(20, 'sil_user', '0002_cart_course_id', '2023-04-04 10:10:44.516234'),
(21, 'sil_admin', '0001_initial', '2023-04-05 11:22:18.844736'),
(22, 'sil_admin', '0002_remove_course_category_id_delete_categories_and_more', '2023-04-05 11:40:16.472230'),
(23, 'sil_user', '0003_silmodel', '2023-04-12 08:06:44.699360');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sil_user_categories`
--

CREATE TABLE `sil_user_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sil_user_categories`
--

INSERT INTO `sil_user_categories` (`id`, `name`, `image`, `description`) VALUES
(1, 'Development', 'category/bg3.jpeg', 'Development Courses Courses to get you started'),
(2, 'Business', 'category/business_1.png', 'Choose courses taught by real-world experts.'),
(3, 'Finance & Accounting', 'category/finance_and_accounting.png', 'Learn introductory accounting & finance through various courses.'),
(4, 'IT & Software', 'category/it_1.png', 'Learn at your own pace, with lifetime access on mobile and desktop');

-- --------------------------------------------------------

--
-- Table structure for table `sil_user_course`
--

CREATE TABLE `sil_user_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `category_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sil_user_course`
--

INSERT INTO `sil_user_course` (`id`, `name`, `description`, `image`, `price`, `status`, `duration`, `category_id_id`) VALUES
(1, 'Javascript for Beginners', 'Learn javascript online and supercharge your web design with this Javascript for beginners training course.', 'courses/bg2.jpeg', 499, 'Paid', 6, 1),
(2, 'Python and Django Full Stack', 'Learn to build  websites using HTML , CSS , Bootstrap , Javascript  , Python 3  and Django!', 'courses/python.jpeg', 499, 'Paid', 6, 1),
(3, 'React - The Complete Guide', 'Dive in and learn React.js  Learn Reactjs, Hooks, Redux, React Routing, Animations, Next.js! and more.', 'courses/reactjs.png', 999, 'Paid', 6, 1),
(4, 'The Complete Node.js Developer', 'Learn Node.js by building real-world applications with Node JS, Express, MongoDB, Jest.', 'courses/node.png', 699, 'Paid', 4, 1),
(5, 'MongoDB', 'Master MongoDB Development for Web & Mobile Apps. CRUD Operations, Indexes, Aggregation Framework - All about MongoDB!', 'courses/pngwing.com.png', 399, 'Paid', 3, 1),
(6, 'The Complete 2023 Web Development', 'Understand HTML, CSS, Javascript, Node, React, MongoDB, Web3 and DApps', 'courses/pngwing.com_2.png', 499, 'Paid', 4, 1),
(7, 'API and Web Service', 'Includes API, Web Services using REST, JSON, XML, HTTP, SOAP, OAuth, OpenID Connect, Postman and Python', 'courses/pngwing.com_3.png', 599, 'Paid', 3, 1),
(8, '100 Days Of Code', 'Learn web development from A to Z in 100 days (or at your own pace) - from \"basic\" to \"advanced\", it\'s all included!', 'courses/pngwing.com_1.png', 1, 'Paid', 3, 1),
(9, 'Chief Financial Officer Leadership Program', 'An ever expanding program of courses helping financial professionals aspire to the top levels of financial leadership.', 'courses/leadership.png', 549, 'paid', 6, 2),
(10, 'Sales and Persuasion Skills for Startups', 'Start-ups and entrepreneurs are a mixed bunch. But one thing the winners all have in common Is – the ability to influence others.', 'courses/sales.png', 649, 'paid', 2, 2),
(11, 'Customer Service Training', 'This course teaches the basics of customer service and translates that knowledge into practical application. Its a wonderful course to have.', 'courses/customer.png', 449, 'paid', 3, 2),
(12, 'Accounting & Bookkeeping', 'how to correctly manage your business’s money. Real-world experts will show you the ins and outs of bookkeeping through easy, step-by-step instructions and hands-on exercises.', 'courses/accounting__bookkeeping.png', 1, 'paid', 6, 3),
(13, 'Cryptocurrency & Blockchain', 'This course will provide you with an understanding of a new technology that is set to disrupt the way we deal with money!', 'courses/cryptocurrency.png', 399, 'paid', 3, 3),
(14, 'Investing & Trading', 'You can increase your personal wealth and ensure financial stability for you and your family. Investing courses can teach you the nuances of financially growing your own monetary worth.', 'courses/investment.png', 799, 'paid', 6, 3),
(15, 'Network & Security', 'Find a cyber security course on Udemy, and gain skills to help you counter cyber threats and grow as a cyber security specialist. With cyber security training, you can develop expertise that is expected to be in demand well into the future. Cyber', 'courses/pngwing.com_5.png', 1, 'paid', 3, 4),
(16, 'Hardware', 'This course is designed to equip the candidates for becoming an Entry Level L1, Desktop Support, Service Engineer, Customer Support Engineer, FM Engineer, Hardware Engineer and IT Support Specialist in End User Computing environment.', 'courses/pngwing.com_4.png', 449, 'paid', 6, 4),
(17, 'Operating Systems & Servers', 'The course covers the topics such as Types of Operating System, process and their management, CPU Scheduling Algorithm, Synchronization and their need, Deadlock, Memories and their management, and File Systems.', 'courses/pngwing.com_6.png', 449, 'paid', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sil_user_payment`
--

CREATE TABLE `sil_user_payment` (
  `id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `course_id_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sil_user_silmodel`
--

CREATE TABLE `sil_user_silmodel` (
  `id` bigint(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sil_user_silmodel`
--

INSERT INTO `sil_user_silmodel` (`id`, `phone`, `image`, `user_id`) VALUES
(1, 8943120775, 'images/abhi_KZcOxff.jpeg', 4),
(2, 8943120775, 'images/sonu.jpg', 5);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `sil_user_categories`
--
ALTER TABLE `sil_user_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sil_user_course`
--
ALTER TABLE `sil_user_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sil_user_course_category_id_id_1ae8fc49_fk_sil_user_` (`category_id_id`);

--
-- Indexes for table `sil_user_payment`
--
ALTER TABLE `sil_user_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sil_user_payment_course_id_id_b3cb7a38_fk_sil_user_course_id` (`course_id_id`),
  ADD KEY `sil_user_payment_user_id_id_67949fa8_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `sil_user_silmodel`
--
ALTER TABLE `sil_user_silmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sil_user_silmodel_user_id_0d4e76c9_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sil_user_categories`
--
ALTER TABLE `sil_user_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sil_user_course`
--
ALTER TABLE `sil_user_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sil_user_payment`
--
ALTER TABLE `sil_user_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sil_user_silmodel`
--
ALTER TABLE `sil_user_silmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sil_user_course`
--
ALTER TABLE `sil_user_course`
  ADD CONSTRAINT `sil_user_course_category_id_id_1ae8fc49_fk_sil_user_` FOREIGN KEY (`category_id_id`) REFERENCES `sil_user_categories` (`id`);

--
-- Constraints for table `sil_user_payment`
--
ALTER TABLE `sil_user_payment`
  ADD CONSTRAINT `sil_user_payment_course_id_id_b3cb7a38_fk_sil_user_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `sil_user_course` (`id`),
  ADD CONSTRAINT `sil_user_payment_user_id_id_67949fa8_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sil_user_silmodel`
--
ALTER TABLE `sil_user_silmodel`
  ADD CONSTRAINT `sil_user_silmodel_user_id_0d4e76c9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
