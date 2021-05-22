-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 06:59 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mzfitnezz`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workplace_id` bigint(20) UNSIGNED NOT NULL,
  `starttime` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endtime` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `workplace_id`, `starttime`, `endtime`, `duration`, `startdate`, `enddate`, `description`, `deleted_at`) VALUES
(1, 1, '07:00 AM', '08:00 PM', '30', '2019-07-01', '2019-07-31', 'GT', NULL),
(2, 1, '08:00 AM', '09:00 AM', '30', '2019-07-01', '2019-07-31', 'PT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batch_members`
--

CREATE TABLE `batch_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `joiningdate` date NOT NULL,
  `validupto` date NOT NULL,
  `duration` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees` double(12,2) NOT NULL,
  `paymentdetails` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch_members`
--

INSERT INTO `batch_members` (`id`, `member_id`, `batch_id`, `joiningdate`, `validupto`, `duration`, `package`, `fees`, `paymentdetails`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-07-01', '2019-07-31', '30', '1', 3000.00, 'Cash', '2019-07-27 09:16:13', '2019-07-27 09:16:13', NULL),
(2, 2, 1, '2019-07-01', '2019-07-31', '30', '1', 3000.00, 'Cash', '2019-07-27 09:16:29', '2019-07-27 09:16:29', NULL),
(3, 3, 1, '2019-07-01', '2019-07-31', '30', '1', 3000.00, 'Cash', '2019-07-27 09:16:42', '2019-07-27 09:16:42', NULL),
(4, 4, 2, '2019-07-01', '2019-07-31', '30', '2', 4500.00, 'Cash', '2019-07-27 09:16:59', '2019-07-27 09:16:59', NULL),
(5, 5, 2, '2019-07-01', '2019-07-31', '30', '2', 4500.00, 'Cash', '2019-07-27 09:17:14', '2019-07-27 09:17:14', NULL),
(6, 6, 2, '2019-07-01', '2019-07-31', '30', '2', 4500.00, 'Cash', '2019-07-27 09:17:27', '2019-07-27 09:17:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `birth_date` date DEFAULT NULL,
  `branch` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txtcolor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `contact`, `email`, `address`, `birth_date`, `branch`, `blood_group`, `bgcolor`, `txtcolor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prakash Gujarati', 'Assistant Professor', '9601026377', 'gujaratiprakash@gmail.com', 'Rajkot', '1990-04-08', 'AminMarg', 'b-', '#000000', '#ffffff', '2019-05-28 05:53:38', '2019-07-28 10:46:26', NULL),
(2, 'ashish popat', 'Trainer', '9898729274', 'ashishpopat12@gmail.com', 'Rajkot', '1984-10-12', 'AminMarg', '+A', '#4f99ff', '#ffffff', '2019-05-29 19:32:08', '2019-07-28 10:49:30', NULL),
(3, 'priyanka kamdar', 'trainer', '9228817771', 'priyanka@gmail.com', 'rajkot', '1989-01-31', 'branch 1', '+A', '#f2ff00', '#000000', '2019-05-30 04:16:30', '2019-07-28 10:50:27', NULL),
(4, 'jagruti solanki', 'trainer', '9723790938', 'jagrutisolanki77@gmail.com', 'rajkot', '1994-05-02', 'branch 1', '+o', '#ffffe3', '#ff0000', '2019-05-30 04:19:33', '2019-07-28 10:52:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_schedules`
--

CREATE TABLE `employee_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `checkin` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_schedules`
--

INSERT INTO `employee_schedules` (`id`, `employee_id`, `batch_id`, `day`, `date`, `checkin`, `checkout`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 'Monday', '2019-07-29', '07:00 AM', '08:00 AM', 'FirstDay', '2019-07-27 09:18:21', '2019-07-27 09:18:21', NULL),
(2, 2, 1, 'Tuesday', '2019-07-30', '07:00 AM', '08:00 AM', 'SecondDay - GT', '2019-07-27 09:18:43', '2019-07-27 09:18:43', NULL),
(3, 1, 1, 'Wednesday', '2019-07-31', '07:00 AM', '08:00 AM', 'ThirdDay - GT', '2019-07-27 09:19:04', '2019-07-27 09:19:04', NULL),
(4, 4, 1, 'Thursday', '2019-08-01', '07:00 AM', '08:00 AM', 'FourthDay - GT', '2019-07-27 09:21:26', '2019-07-27 09:21:26', NULL),
(5, 2, 2, 'Monday', '2019-07-29', '08:00 AM', '09:00 AM', 'FirstDay - PT', '2019-07-27 11:30:51', '2019-07-27 11:30:51', NULL),
(6, 1, 1, 'Friday', '2019-08-02', '07:00 AM', '08:00 AM', 'test', '2019-07-27 12:02:10', '2019-07-27 12:02:10', NULL),
(7, 4, 1, 'Saturday', '2019-08-03', '07:00 AM', '08:00 AM', 'Day - GT', '2019-07-27 23:57:09', '2019-07-27 23:57:09', NULL),
(8, 2, 2, 'Wednesday', '2019-07-31', '08:00 AM', '09:00 AM', 'wd pt', '2019-07-27 23:57:45', '2019-07-27 23:57:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_workouts`
--

CREATE TABLE `employee_workouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `workout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workout_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `workout_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `employee_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feeds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `contact` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `married` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `updateson` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `followupby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextfollowup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `service` text COLLATE utf8mb4_unicode_ci,
  `servicecomment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `age`, `contact`, `email`, `address`, `height`, `weight`, `birth_date`, `reference`, `married`, `status`, `goal`, `medical`, `comments`, `updateson`, `joining_date`, `followupby`, `nextfollowup`, `remarks`, `service`, `servicecomment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Manali', 30, '9908989898', 'gujarati.android@gmail.com', 'Rajkot', 174, 47, '1999-07-27', NULL, 'notselected', 'notselected', NULL, NULL, NULL, '', NULL, 'A', 'A', 'remark', 'Personal/General Training', 't1', '2019-07-27 08:56:22', '2019-07-27 08:56:22', NULL),
(2, 'Prakash', 29, NULL, NULL, NULL, NULL, NULL, '1990-04-30', NULL, 'married', 'housewife', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '2019-05-19 23:19:07', '2019-05-20 02:35:31', NULL),
(3, 'Mulraz', 32, '9898989898', NULL, NULL, NULL, NULL, '1987-05-01', NULL, 'married', 'housewife', NULL, NULL, NULL, 'Whatsapp', NULL, NULL, NULL, NULL, 'Personal/General Training', 'Personal/General Training COmments', '2019-05-19 23:41:17', '2019-05-30 04:08:25', NULL),
(4, 'dipti tank', 0, '8980805561', 'dipuchokhar90@gmail.com', 'rajkot', 6, 1, '2019-05-15', NULL, 'married', 'others', 'weight loss', NULL, NULL, 'Whatsapp,SMS,Email,Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-05-20 15:44:50', '2019-06-25 16:47:54', NULL),
(5, 'shyam pathak', 0, '7878573449', NULL, 'maruti nagar', 5, 1, '2019-05-03', NULL, 'married', 'others', 'fitness', NULL, 'mon - tue = 8-9 pm', 'Call', '2019-05-24', 'priti mam', NULL, NULL, '', '', '2019-05-20 16:56:04', '2019-05-22 04:27:40', NULL),
(6, 'nikita soni', NULL, '8120062005', NULL, 'indraprasth nagar', NULL, NULL, NULL, 'self', 'married', 'housewife', 'weight loss', 'spondiloarthritis', 'taking trial in 10-11 am today', '', NULL, 'RVR', NULL, NULL, '', '', '2019-05-20 17:36:45', '2019-05-20 17:36:45', NULL),
(7, 'trushti modi', NULL, NULL, NULL, 'nutan nagar kalawad road', NULL, 1, NULL, NULL, 'unmarried', 'others', 'stamina', 'no', NULL, 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-20 22:40:05', '2019-05-20 22:40:05', NULL),
(8, 'nayna kaku', NULL, '9998728884', NULL, '46- aarya shree res b\\h speedwell party plot nr ambika township', NULL, 1, NULL, 'wallking', 'married', 'housewife', 'weight loss', NULL, NULL, 'Whatsapp,Call', NULL, 'priti mam', NULL, 'tomorrow want ro trial', '', '', '2019-05-20 23:10:34', '2019-05-20 23:10:34', NULL),
(9, 'Prakash Gujarati', 28, '9601026377', 'gujaratiprakash@gmail.com', 'Rajkot', 100, 1, '1990-04-08', 'Dr Stavan Patel', 'notselected', 'notselected', 'Weight Gain', 'Nil', 'Nil', 'Whatsapp,SMS,Email,Call', '2019-06-01', 'Mulrazsinh', 'Jun', 'Dia Plan Suggestions for Weight Gain', 'Personal/General Training,Stamina Batch', 'Pushups and Seat and Stand up|Dia Plan Suggestions for Weight Gain', '2019-05-21 22:28:35', '2019-05-30 04:08:52', NULL),
(10, 'rohan', 0, '1122556687', 'srutvik9@gmail.com', 'sadffasdkljfaslkjdlj', 45, 123, '2019-03-15', 'dskjdshfkhdsk', 'unmarried', 'others', 'to fit', 'nothing', 'no comments', 'Whatsapp', '2019-03-14', 'jhadsfkashk', 'kjdhfkjs', 'lkdajfljsaljfla', 'Only Diet Sessions', 'hjaslfasd', '2019-05-24 02:42:34', '2019-05-30 04:08:04', NULL),
(11, 'ram', 0, '4564544646', 'srutvik9@gmail.com', 'ljdlkfjdksl', 6, 72, '2019-04-17', 'dadfad', 'unmarried', 'student', 'to fit', 'nothing', 'no comments', 'Whatsapp,Email', '2019-05-25', 'adfdsff', 'fkhjsadhfkjs', 'dafdsnhkjfhk', 'Inch-Loss Therapy', 'djskhfkds', '2019-05-24 02:54:27', '2019-05-24 04:01:28', NULL),
(12, 'harita pravinbhai lunagariya', 29, '7405108080', 'haritalunagariya2@gmail.com', 'C - 101 , silver heights , nana mava circle , 150 ft. ring road rajkot.', 5, 51, '1989-06-23', 'online', 'unmarried', NULL, 'thigh & hip toning', NULL, '9 -10 am', 'Whatsapp,SMS,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-24 03:16:46', '2019-05-24 03:16:46', NULL),
(13, 'kdj', 32, '9510162532', 'fabticmedia@gmail.com', 'rwqrwwqw', 5, 65, NULL, 'priyanka mam', 'notselected', 'notselected', NULL, 'low blood pressure', NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-24 04:00:11', '2019-05-24 04:00:11', NULL),
(14, 'nupur vadaliya', 74, '9687989892', NULL, 'govindrartna villa near nana moava', 172, 74, NULL, 'ralative', 'notselected', 'student', NULL, NULL, NULL, 'Whatsapp', NULL, 'ridhi', NULL, NULL, '', '', '2019-05-27 18:11:41', '2019-05-27 18:11:41', NULL),
(15, 'nidhi padalia', 24, '8140410166', 'nidhi.ramani90@gmail.com', '702 \' rishikesh exotica , 150 ft. ring rd. rajkot', 5, 56, NULL, 'banner', 'married', 'housewife', 'weight loss & body toning', NULL, 'trial 2nd june after', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 03:30:38', '2019-05-28 03:30:38', NULL);

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
(3, '2019_05_17_094252_create_members_table', 1),
(4, '2019_05_27_134515_create_employees_table', 1),
(5, '2019_07_14_071200_create_workplaces_table', 1),
(6, '2019_07_14_071218_create_batches_table', 1),
(7, '2019_07_14_071256_create_packages_table', 1),
(8, '2019_07_14_071312_create_batch_members_table', 1),
(9, '2019_07_14_071315_create_employee_schedules_table', 1),
(10, '2019_07_14_071334_create_employee_workouts_table', 1),
(11, '2019_07_14_071353_create_feedback_table', 1),
(12, '2019_07_24_135343_create_workouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `package_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `purpose`, `duration`, `price`, `package_description`, `status`, `deleted_at`) VALUES
(1, 'BasicPack', 'GT', '30', 3000.00, 'GT', '1', NULL),
(2, 'BasicPack', 'PT', '30', 4500.00, 'PT', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mzfitnezz', 'mzfitnezz@gmail.com', NULL, '$2y$10$BqCUD.HBlLaEa.yr0CwgWueWLNuxS1DJ6xUiI0PyWE0vrc.CZTjnq', NULL, '2019-07-27 08:24:52', '2019-07-27 08:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `workouts`
--

CREATE TABLE `workouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workout_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workouts`
--

INSERT INTO `workouts` (`id`, `workout_name`) VALUES
(1, 'Zumba'),
(2, 'Jazzercise'),
(3, 'Ballroom Dancing'),
(4, 'Belly Dancing'),
(5, 'Warm Up'),
(6, 'Bolly Soul'),
(7, 'Stretching'),
(8, 'Push-up'),
(9, 'Contralateral Limb Raises'),
(10, 'Bent Knee Push-up'),
(11, 'Downward-facing Dog'),
(12, 'Bent-Knee Sit-up / Crunches'),
(13, 'Push-up with Single-leg Raise'),
(14, 'Front Plank'),
(15, 'Side Plank with Bent Knee'),
(16, 'Supine Reverse Crunches'),
(17, 'Cobra');

-- --------------------------------------------------------

--
-- Table structure for table `workplaces`
--

CREATE TABLE `workplaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workplaces`
--

INSERT INTO `workplaces` (`id`, `name`, `address`, `person`, `contact`, `deleted_at`) VALUES
(1, 'Aminmarg', 'Aminmarg, Rajkot', 'Mulraz Zala', '9925024413', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batches_workplace_id_foreign` (`workplace_id`);

--
-- Indexes for table `batch_members`
--
ALTER TABLE `batch_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_members_member_id_foreign` (`member_id`),
  ADD KEY `batch_members_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_schedules`
--
ALTER TABLE `employee_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_schedules_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_schedules_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `employee_workouts`
--
ALTER TABLE `employee_workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_workouts_employee_schedule_id_foreign` (`employee_schedule_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_member_id_foreign` (`member_id`),
  ADD KEY `feedback_employee_schedule_id_foreign` (`employee_schedule_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workouts`
--
ALTER TABLE `workouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workplaces`
--
ALTER TABLE `workplaces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `batch_members`
--
ALTER TABLE `batch_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_schedules`
--
ALTER TABLE `employee_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_workouts`
--
ALTER TABLE `employee_workouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workouts`
--
ALTER TABLE `workouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `workplaces`
--
ALTER TABLE `workplaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batches`
--
ALTER TABLE `batches`
  ADD CONSTRAINT `batches_workplace_id_foreign` FOREIGN KEY (`workplace_id`) REFERENCES `workplaces` (`id`);

--
-- Constraints for table `batch_members`
--
ALTER TABLE `batch_members`
  ADD CONSTRAINT `batch_members_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `batch_members_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `employee_schedules`
--
ALTER TABLE `employee_schedules`
  ADD CONSTRAINT `employee_schedules_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `employee_schedules_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employee_workouts`
--
ALTER TABLE `employee_workouts`
  ADD CONSTRAINT `employee_workouts_employee_schedule_id_foreign` FOREIGN KEY (`employee_schedule_id`) REFERENCES `employee_schedules` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_employee_schedule_id_foreign` FOREIGN KEY (`employee_schedule_id`) REFERENCES `employee_schedules` (`id`),
  ADD CONSTRAINT `feedback_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
