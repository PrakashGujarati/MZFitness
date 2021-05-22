-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2020 at 07:18 PM
-- Server version: 10.1.44-MariaDB-cll-lve
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wgujaratigraphic_advocate`
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
(1, 1, '06:00 AM', '07:00 AM', '30', '2019-07-01', '2019-07-31', 'gt batch', NULL),
(2, 1, '07:00 PM', '08:00 PM', '30', '2019-07-01', '2019-07-31', 'PT', NULL),
(3, 2, '01:00 PM', '02:00 PM', '30', '2019-12-01', '2019-12-31', 'Fresher - GT', NULL);

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
(1, 4, 1, '2019-07-02', '2019-08-01', '30', '1', 3000.00, 'Cash', '2019-07-27 09:53:27', '2019-07-27 09:53:27', NULL),
(2, 5, 2, '2019-07-01', '2019-07-31', '30', '1', 3000.00, 'Cash', '2019-07-30 03:31:36', '2019-07-30 03:31:36', NULL),
(3, 7, 2, '2019-07-01', '2019-07-31', '30', '1', 3000.00, 'Cash', '2019-07-30 03:31:36', '2019-07-30 03:31:36', NULL),
(4, 12, 2, '2019-07-01', '2019-07-31', '30', '1', 3000.00, 'Cash', '2019-07-30 03:31:36', '2019-07-30 03:31:36', NULL),
(5, 6, 1, '2019-08-01', '2019-08-31', '30', '1', 3000.00, 'Cash', '2019-08-01 10:00:52', '2019-08-01 10:00:52', NULL),
(6, 4, 1, '2019-12-01', '2019-12-31', '30', '2', 7999.00, 'Cash', '2019-12-26 02:10:33', '2019-12-26 02:10:33', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bgcolor` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txtcolor` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `contact`, `email`, `address`, `birth_date`, `branch`, `blood_group`, `created_at`, `updated_at`, `deleted_at`, `bgcolor`, `txtcolor`) VALUES
(1, 'Prakash Gujarati', 'Assistant Professor', '9601026377', 'gujaratiprakash@gmail.com', 'Rajkot', '1990-04-08', 'AminMarg', NULL, '2019-05-28 05:53:38', '2019-05-28 05:54:18', '2019-05-28 05:54:18', NULL, NULL),
(2, 'ashish popat', 'Trainer', '9898729274', 'ashishpopat12@gmail.com', 'Rajkot', '1984-10-12', 'mz1 amin marg', '+A', '2019-05-29 19:32:08', '2019-12-03 21:52:45', '2019-12-03 21:52:45', '#ec3333', '#ffffff'),
(3, 'priyanka kamdar', 'trainer', '9228817771', 'priyanka@gmail.com', 'rajkot', '1989-01-31', 'mz1 amin marg', '+A', '2019-05-30 04:16:30', '2019-12-03 21:52:55', '2019-12-03 21:52:55', '#28edff', '#0004ff'),
(4, 'jagruti solanki', 'trainer', '9723790938', 'jagrutisolanki77@gmail.com', 'rajkot', '1994-05-02', 'mz1 amin marg', '+o', '2019-05-30 04:19:33', '2019-12-03 21:53:01', '2019-12-03 21:53:01', '#1800ff', '#ffffff'),
(5, 'namrata manseta', 'trainer', '9033274574', 'namratamanseta74574@gmail.com', '\"atman\" apt.\r\n behind bigbite,\r\n near amrapali fatak,\r\nraiya road,\r\nrajkot.', '1992-01-01', 'mz1 amin marg', NULL, '2019-12-03 21:35:49', '2019-12-03 21:53:08', '2019-12-03 21:53:08', '#642b2b', '#6f3c3c'),
(6, 'vatsal pathak', 'trainer', '7405533551', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 21:39:11', '2019-12-03 21:53:19', '2019-12-03 21:53:19', NULL, NULL),
(7, 'dr.mulraj sir', 'CEO', '9925024413', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:27:51', '2019-12-26 02:06:42', NULL, '#bb4646', '#fffdfd'),
(8, 'ashish sir', 'MD', '9898729274', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:28:51', '2019-12-03 22:28:51', NULL, NULL, NULL),
(9, 'vatsal sir', 'trainer', '7405533551', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:29:44', '2019-12-03 22:29:44', NULL, NULL, NULL),
(10, 'namrata mem', 'back office work & trainer', '9033274574', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:30:28', '2019-12-03 22:45:51', NULL, NULL, NULL),
(11, 'mayur sir', 'trainer', '9723412506', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:31:21', '2019-12-03 22:31:21', NULL, NULL, NULL),
(12, 'karan sir', 'trainer', '8460284774', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:32:25', '2019-12-03 22:32:25', NULL, NULL, NULL),
(13, 'priyanka mam', 'trainer', '9228817771', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:33:53', '2019-12-03 22:33:53', NULL, NULL, NULL),
(14, 'namrata mem yoga', 'trainer', '9429070077', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:35:11', '2019-12-03 22:35:11', NULL, NULL, NULL),
(15, 'namrata mem yoga', 'trainer', '9429070077', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:35:12', '2019-12-03 22:38:15', '2019-12-03 22:38:15', NULL, NULL),
(16, 'priti mem', 'trainer', '9909303109', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:35:59', '2019-12-03 22:35:59', NULL, NULL, NULL),
(17, 'priti mem', 'trainer', '9909303109', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:36:02', '2019-12-03 22:38:02', '2019-12-03 22:38:02', NULL, NULL),
(18, 'riddhi mem zumba', 'physiotherapist & trainer', '9408041923', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:37:49', '2019-12-03 22:37:49', NULL, NULL, NULL),
(19, 'sumi mem', 'dietitian', '9978960660', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:39:53', '2019-12-03 22:39:53', NULL, NULL, NULL),
(20, 'sumi mem', 'dietitian', '9978960660', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:39:53', '2019-12-03 22:40:32', '2019-12-03 22:40:32', NULL, NULL),
(21, 'geeta mem', 'therapist', '7874729068', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:42:12', '2019-12-03 22:42:12', NULL, NULL, NULL),
(22, 'riddhi mem', 'back office work', '9510162532', NULL, 'rajkot', NULL, 'mz1 amin marg', NULL, '2019-12-03 22:43:33', '2019-12-03 22:43:33', NULL, NULL, NULL);

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
(1, 3, 1, 'Friday', '2019-07-19', '06:00 AM', '07:00 AM', 'cardio training', '2019-07-27 09:54:47', '2019-08-04 21:35:34', NULL),
(2, 3, 1, 'Friday', '2019-08-02', '06:00 AM', '07:00 AM', 'GT', '2019-07-30 01:00:19', '2019-07-30 02:38:40', NULL),
(3, 2, 1, 'Thursday', '2019-08-01', '06:00 AM', '07:00 AM', 'GT', '2019-07-30 01:00:54', '2019-07-30 01:00:54', NULL),
(4, 3, 1, 'Wednesday', '2019-08-07', '06:00 AM', '07:00 AM', 'GT', '2019-07-30 01:08:31', '2019-08-05 07:59:00', NULL),
(5, 4, 1, 'Tuesday', '2019-07-30', '06:00 AM', '07:00 AM', 'GT', '2019-07-30 02:48:52', '2019-07-30 02:49:06', NULL),
(6, 2, 1, 'Thursday', '2019-08-08', '06:00 AM', '07:00 AM', 'GT', '2019-07-30 03:27:00', '2019-07-30 03:27:19', NULL),
(7, 3, 2, 'Wednesday', '2019-07-31', '07:00 PM', '08:00 PM', 'PT', '2019-07-30 03:32:01', '2019-07-30 03:32:01', NULL),
(8, 3, 2, 'Tuesday', '2019-08-13', '07:00 PM', '08:00 PM', 'gt', '2019-07-31 01:40:14', '2019-07-31 01:42:01', NULL),
(9, 2, 2, 'Monday', '2019-08-05', '07:00 PM', '08:00 PM', 'ggg', '2019-08-01 10:38:53', '2019-08-01 10:41:24', NULL),
(10, 4, 1, 'Tuesday', '2019-08-06', '06:00 AM', '07:00 AM', '123', '2019-08-05 07:59:32', '2019-08-05 07:59:32', NULL);

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

--
-- Dumping data for table `employee_workouts`
--

INSERT INTO `employee_workouts` (`id`, `employee_schedule_id`, `workout`, `workout_description`, `workout_duration`, `deleted_at`) VALUES
(1, 1, '5', 'simple', '10', NULL),
(2, 1, '1', 's1, s2', '30', NULL),
(3, 1, '7', 'cooldown', '20', NULL),
(4, 2, 'Warm Up', 'W1', '10', NULL),
(5, 2, 'Zumba', 'S1,s2', '30', NULL),
(6, 2, 'Stretching', 'finil', '15', NULL),
(7, 2, 'Cobra', 'relex update', '5', NULL),
(8, 3, 'Push-up', 'adf', '10', NULL),
(9, 3, 'Zumba', 's1,s2', '30', NULL),
(10, 9, 'Zumba', 'fftftjjij', '10', NULL),
(11, 9, 'Bolly Soul', 'ygyg', '20', NULL);

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
(1, 'Prakash Gujarati', 29, '9601026377', NULL, NULL, NULL, NULL, '1990-04-08', NULL, 'married', 'housewife', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '2019-05-19 21:01:11', '2019-05-20 02:35:24', '2019-05-20 02:35:24'),
(2, 'Prakash', 29, NULL, NULL, NULL, NULL, NULL, '1990-04-30', NULL, 'married', 'housewife', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '2019-05-19 23:19:07', '2019-05-20 02:35:31', '2019-05-20 02:35:31'),
(3, 'Mulraz', 32, '9898989898', NULL, NULL, NULL, NULL, '1987-05-01', NULL, 'married', 'housewife', NULL, NULL, NULL, 'Whatsapp', NULL, NULL, NULL, NULL, 'Personal/General Training', 'Personal/General Training COmments', '2019-05-19 23:41:17', '2019-05-30 04:08:25', '2019-05-30 04:08:25'),
(4, 'dipti tank', 0, '8980805561', 'dipuchokhar90@gmail.com', 'rajkot', 6, 1, '2019-05-15', NULL, 'married', 'others', 'weight loss', NULL, NULL, 'Whatsapp,SMS,Email,Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-05-20 15:44:50', '2019-06-25 16:47:54', NULL),
(5, 'shyam pathak', 0, '7878573449', NULL, 'maruti nagar', 5, 1, '2019-05-03', NULL, 'married', 'others', 'fitness', NULL, 'mon - tue = 8-9 pm', 'Call', '2019-05-24', 'priti mam', NULL, NULL, '', '', '2019-05-20 16:56:04', '2019-05-22 04:27:40', NULL),
(6, 'nikita soni', NULL, '8120062005', NULL, 'indraprasth nagar', NULL, NULL, NULL, 'self', 'married', 'housewife', 'weight loss', 'spondiloarthritis', 'taking trial in 10-11 am today', '', NULL, 'RVR', NULL, NULL, '', '', '2019-05-20 17:36:45', '2019-05-20 17:36:45', NULL),
(7, 'trushti modi', NULL, NULL, NULL, 'nutan nagar kalawad road', NULL, 1, NULL, NULL, 'unmarried', 'others', 'stamina', 'no', NULL, 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-20 22:40:05', '2019-05-20 22:40:05', NULL),
(8, 'nayna kaku', NULL, '9998728884', NULL, '46- aarya shree res b\\h speedwell party plot nr ambika township', NULL, 1, NULL, 'wallking', 'married', 'housewife', 'weight loss', NULL, NULL, 'Whatsapp,Call', NULL, 'priti mam', NULL, 'tomorrow want ro trial', '', '', '2019-05-20 23:10:34', '2019-05-20 23:10:34', NULL),
(9, 'Prakash Gujarati', 28, '9601026377', 'gujaratiprakash@gmail.com', 'Rajkot', 100, 1, '1990-04-08', 'Dr Stavan Patel', 'notselected', 'notselected', 'Weight Gain', 'Nil', 'Nil', 'Whatsapp,SMS,Email,Call', '2019-06-01', 'Mulrazsinh', 'Jun', 'Dia Plan Suggestions for Weight Gain', 'Personal/General Training,Stamina Batch', 'Pushups and Seat and Stand up|Dia Plan Suggestions for Weight Gain', '2019-05-21 22:28:35', '2019-05-30 04:08:52', '2019-05-30 04:08:52'),
(10, 'rohan', 0, '1122556687', 'srutvik9@gmail.com', 'sadffasdkljfaslkjdlj', 45, 123, '2019-03-15', 'dskjdshfkhdsk', 'unmarried', 'others', 'to fit', 'nothing', 'no comments', 'Whatsapp', '2019-03-14', 'jhadsfkashk', 'kjdhfkjs', 'lkdajfljsaljfla', 'Only Diet Sessions', 'hjaslfasd', '2019-05-24 02:42:34', '2019-05-30 04:08:04', '2019-05-30 04:08:04'),
(11, 'ram', 0, '4564544646', 'srutvik9@gmail.com', 'ljdlkfjdksl', 6, 72, '2019-04-17', 'dadfad', 'unmarried', 'student', 'to fit', 'nothing', 'no comments', 'Whatsapp,Email', '2019-05-25', 'adfdsff', 'fkhjsadhfkjs', 'dafdsnhkjfhk', 'Inch-Loss Therapy', 'djskhfkds', '2019-05-24 02:54:27', '2019-05-24 04:01:28', '2019-05-24 04:01:28'),
(12, 'harita pravinbhai lunagariya', 29, '7405108080', 'haritalunagariya2@gmail.com', 'C - 101 , silver heights , nana mava circle , 150 ft. ring road rajkot.', 5, 51, '1989-06-23', 'online', 'unmarried', NULL, 'thigh & hip toning', NULL, '9 -10 am', 'Whatsapp,SMS,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-24 03:16:46', '2019-05-24 03:16:46', NULL),
(13, 'kdj', 32, '9510162532', 'fabticmedia@gmail.com', 'rwqrwwqw', 5, 65, NULL, 'priyanka mam', 'notselected', 'notselected', NULL, 'low blood pressure', NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-24 04:00:11', '2019-05-24 04:00:11', NULL),
(14, 'nupur vadaliya', 74, '9687989892', NULL, 'govindrartna villa near nana moava', 172, 74, NULL, 'ralative', 'notselected', 'student', NULL, NULL, NULL, 'Whatsapp', NULL, 'ridhi', NULL, NULL, '', '', '2019-05-27 18:11:41', '2019-05-27 18:11:41', NULL),
(15, 'nidhi padalia', 24, '8140410166', 'nidhi.ramani90@gmail.com', '702 \' rishikesh exotica , 150 ft. ring rd. rajkot', 5, 56, NULL, 'banner', 'married', 'housewife', 'weight loss & body toning', NULL, 'trial 2nd june after', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 03:30:38', '2019-05-28 03:30:38', NULL),
(16, 'nidhi padalia', 24, '8140410166', 'nidhi.ramani90@gmail.com', '702 \' rishikesh exotica , 150 ft. ring rd. rajkot', 5, 56, NULL, 'banner', 'married', 'housewife', 'weight loss & body toning', NULL, 'trial 2nd june after', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 03:30:40', '2019-05-28 03:31:29', '2019-05-28 03:31:29'),
(17, 'nancy nan mommin', 27, '8078677480', 'gmanita66@yahoo.in', 'rajkot gujrat', 5, 70, NULL, 'self', 'unmarried', 'employed', 'weight loss', NULL, 'will cl for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-05-28 03:50:40', '2019-05-28 03:50:40', NULL),
(18, 'nirali  sautoki', 20, '9913531125', NULL, 'rajkot', 5, 45, NULL, 'google', 'unmarried', 'student', 'fitness', NULL, '6 to 7 pm  2morrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 03:57:05', '2019-05-28 03:57:05', NULL),
(19, 'jaymin pobari', 24, '7383488646', 'jaymin.pobari@gmail.com', 'yagnik road', 6, 24, NULL, 'walking ( rishikesh )', 'unmarried', 'notselected', '10 kg weight loss', NULL, 'he will cl for trial , send all flyer on whats app', 'Whatsapp,SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 04:08:24', '2019-05-28 04:08:24', NULL),
(20, 'nikita rathod', 24, '9913212958', NULL, '\" MANIDEEP\" sitaram print , maruti nagar , pedak road rajkot 360003', 5, 39, NULL, 'lina mam', 'unmarried', 'student', '55 kg', 'seeing dr. arvind vikani', NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 04:14:52', '2019-05-28 04:14:52', NULL),
(21, 'jagruti koradia', 42, '9904022975', 'jagruti.koradia@tges.org', 'diamond residency  - sadhuvasvani road , near gitanjali college', 5, 80, NULL, 'online', 'married', 'teacher', 'lose weight & stemina', 'bp', '1 month monday joining', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 17:26:23', '2019-05-28 17:26:23', NULL),
(22, 'dr. ravi ketecha', 24, '9429586561', NULL, 'rajkot', 5, 55, NULL, NULL, 'unmarried', NULL, 'fitness & reduction', NULL, 'will cl us to come for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-05-28 17:30:51', '2019-05-28 17:30:51', NULL),
(23, 'nisihit desai', 36, '9879599133', 'nisheshd@hdfclife.com', '\" SAMAHI \" 4 - ramkrishna nagar', 6, 65, NULL, 'jagruti solanki', 'married', 'employed', 'fitness', 'spine - surgery LS - S1', '1 year = mon - tue - wed trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-29 02:45:35', '2019-05-29 02:45:35', NULL),
(24, 'khushbu r sabhad', 17, '9824333337', 'khushbusabhad8@gmail.com', 'sant kabir road , brommiya pasa 10/11 , rajkot - 360001', 5, 50, NULL, 'siddhi', 'unmarried', 'student', 'weight loss', NULL, '5-6 pm trial sat & mon', 'Email', NULL, 'RVR', NULL, NULL, '', '', '2019-05-29 02:51:57', '2019-05-29 02:51:57', NULL),
(25, 'dr. devanshi dave', 29, '9428995991', NULL, '\" JAY \" , amin marg , near payal dairy , rajkot', 5, 85, NULL, 'by road', 'notselected', 'gynecologiest', 'weight loss & stay fit', NULL, '6-7 am trial - 2 person ,monday', 'Whatsapp,SMS', NULL, 'priti', NULL, NULL, '', '', '2019-06-13 16:57:51', '2019-06-13 16:57:51', NULL),
(26, 'nidhi benani', 29, '9033198746', NULL, '\" SHIV - NIVAS \" , 6- raghuvir para , dhebar road , rajkot', 5, 42, NULL, 'online search', 'married', 'employed', 'fitness', NULL, '2 days trial = 7-8 pm', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-13 17:03:56', '2019-06-13 17:03:56', NULL),
(27, 'dilip solanki', 35, '8200370058', 'dmsolanki@gmail.com', 'Gadhiya nagar society , stree no. 2 , sant kabir road , rajkot', 6, 56, NULL, NULL, 'unmarried', NULL, NULL, NULL, NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-13 17:14:05', '2019-06-13 17:14:05', NULL),
(28, 'bhavik m ambani', 24, '8000356070', NULL, '\" VARODARAN \", mehul nagar - st no. - 3 , b/h nilkanth cinima , rajkot', 6, 74, NULL, NULL, 'unmarried', 'employed', 'weight loss', NULL, 'monday 8-9pm convenient', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-06-13 17:20:39', '2019-06-13 17:20:39', NULL),
(29, 'avadh kakkad', 19, '9099039555', 'avadhk1999@gmail.com', '\"SHREE KAMNATH \" b/h panchvati hall ,panchratna park -1 , rajkot , gujrat', 6, 105, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, NULL, 'Whatsapp', NULL, 'priti', NULL, NULL, '', '', '2019-06-13 17:26:11', '2019-06-13 17:26:11', NULL),
(30, 'kaushal makadia', 18, '8758447471', 'kaushalmakadia123@gmail.com', 'B - 504 , rani tower , kalawad road , rajkot -360005', 6, 70, NULL, 'vishal kacharia', 'unmarried', 'student', 'weight loss & body shaping', NULL, '2 days = 8-9 am', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-13 17:33:53', '2019-06-13 17:33:53', NULL),
(31, 'shaileshbhai patel', 50, '9824906336', NULL, '22 , new jagnath , plot 30 vidhyabhavan society , rajkot', 5, 94, NULL, NULL, 'married', 'employed', 'weight loss', 'BP 90 - 140', 'trial = tue - wed', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 03:10:47', '2019-06-14 03:10:47', NULL),
(32, 'radha barbhaya', 27, '9638215583', NULL, '\"shreeji niwas \" block no. 110 , vrundavan society , opp. nyari filter plant , kalawad road , rajkot', 5, 64, NULL, 'by group', 'unmarried', 'nothing', 'reduce weight', NULL, 'trial 6-7 pm', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 03:15:08', '2019-06-14 03:15:08', NULL),
(33, 'parry parsana', 31, '9662988448', NULL, '\" CHAITANYA \" , silverstone 3 , opp. bigbazar , rajkot', 5, 81, NULL, 'friends', 'married', 'housewife', 'weight loss', NULL, 'trial = 2morrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 15:41:52', '2019-06-14 15:41:52', NULL),
(34, 'komal parmar', 22, '9909601996', 'komalparmar125@gmail.com', 'jamnagar road , rajkot', 5, 57, NULL, 'online search', 'married', 'student', 'weight loss by 5 kgs', NULL, '10 - 11 = 2morrow trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 15:47:22', '2019-06-14 15:47:22', NULL),
(35, 'priya barbhaya', 21, '7600075748', 'priya.barbhaya@yahoo.com', '\" DHARMA - BHAKTI \" prahlad plot 27/43 , rajkot', 5, 64, NULL, NULL, 'married', 'student', 'body shaping & overall fitness', NULL, '4-5 pm = 2morrow', 'Whatsapp,Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 15:55:16', '2019-06-14 15:55:16', NULL),
(36, 'priya sorathiya', 25, '9737377704', 'pia.patel11110@gmail.com', '\" MEET \" , 8 tapovan society , amin marg ,rajkot -360004', 5, 56, NULL, 'by road', 'married', 'employed', 'weight loss', NULL, '7-8 am mz-2 15/6/19 saturday', 'Whatsapp', '2019-06-15', 'priti mam', NULL, NULL, '', '', '2019-06-14 16:52:39', '2019-06-14 16:52:39', NULL),
(37, 'dhwani patel', 25, '9727716281', 'DDG.patel@gmail.com', 'amin marg , rajkot - 360004', 5, 57, NULL, 'by road', 'married', 'employed', 'weight loss', NULL, '7-8 am mz-2 15/6/19 saturday', 'Whatsapp', '2019-06-15', 'priti mam', NULL, NULL, '', '', '2019-06-14 17:21:38', '2019-06-14 17:21:38', NULL),
(38, 'brijesh a ranpara', 22, '8200577459', NULL, '\" RAMESHWAR \"vardhman nagar 6 , palace road , rajkot', 6, 63, NULL, NULL, 'unmarried', NULL, 'fit & fine body', 'non', 'non', 'Call', NULL, 'pr', NULL, NULL, '', '', '2019-06-17 04:25:34', '2019-06-17 04:25:34', NULL),
(39, 'atikant jain', 28, '9971685952', NULL, '129/14 gurugram , haryana ,122001', 6, 80, NULL, NULL, 'unmarried', 'employed', '75 kg with shaping & toning', NULL, '8 to 9 pm 2 days trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 15:41:52', '2019-06-18 15:41:52', NULL),
(40, 'radhika dedania', 19, '9512244084', 'radhika.dedania17@gmail.com', '801 - A , rudraksh appt. , shree colony , near parnakuti society , saurashtra high school , main road', 77, 77, NULL, 'vanshita', 'unmarried', 'student', 'reduce weight', NULL, '8-9 am trial 12 /6 & 14/6', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 16:14:08', '2019-09-15 20:41:15', '2019-09-15 20:41:15'),
(41, 'radhika dedania', 19, '9512244084', 'radhika.dedania17@gmail.com', '801 - A , rudraksh appt. , shree colony , near parnakuti society , saurashtra high school , main road', 77, 77, NULL, 'vanshita', 'unmarried', 'student', 'reduce weight', NULL, '8-9 am trial 12 /6 & 14/6', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 16:14:13', '2019-06-18 16:14:13', NULL),
(42, 'pooja kotak', 30, '9978650225', NULL, 'm 142 , gujarat housing board , amin marg , rajkot', 5, 43, NULL, NULL, 'unmarried', 'employed', 'fitness', NULL, '4-5 = tomorrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 16:17:48', '2019-06-18 16:17:48', NULL),
(43, 'neha bhavsar', 30, '9601694435', NULL, 'm 143 , gujarat housing board , amin marg ,rajkot', 5, 44, NULL, NULL, 'unmarried', 'employed', 'fitness', NULL, '4-5 = tomorrow', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 16:21:12', '2019-06-18 16:21:12', NULL),
(44, 'chandra', 20, '9638267070', NULL, 'Tirthbhumi app. atithi chowk , atithi chowk , panchhvati main road , rajkot', 5, 48, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '6-7 am trial 2morrow or day after', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 16:29:21', '2019-06-18 16:29:21', NULL),
(45, 'kajal pankaj', 50, '9925188950', NULL, '2 - bansi park , amin marg , rajkot', 5, 81, NULL, NULL, 'married', 'housewife', 'weight loss', 'sycitica , neck problem', '10 - 11 am trial 2morrow', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 16:35:16', '2019-06-18 16:35:16', NULL),
(46, 'parul darshit dhaduk', 30, '7878800008', NULL, '\" PAVAN \" shree colony soc. , saurashtra high school road , kalawad road , rajkot', 5, 78, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '15 th june', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 16:40:18', '2019-06-18 16:40:18', NULL),
(47, 'jay m joshi', 21, '9638253071', 'jay2361997@gmail.com', '\" JAY \" 2 - narmada park , amin marg , rajkot', 6, 98, NULL, 'advertisment', 'unmarried', 'student', '75 kgs', NULL, 'will cl for trial', 'Whatsapp', NULL, 'pr', NULL, NULL, '', '', '2019-06-18 16:44:56', '2019-06-18 16:44:56', NULL),
(48, 'riya sanghvi', 16, '8200269171', NULL, '\" JAGDISH \" , 18 sardarnagar main road , near poojara telecom', 5, 52, NULL, NULL, 'unmarried', 'student', 'flexibility', NULL, '6-7 pm , tomorrow trial  20/6', 'Whatsapp,Call', '2020-06-19', 'priti mam', NULL, NULL, '', '', '2019-06-19 15:43:36', '2019-06-19 15:43:36', NULL),
(49, 'beenaben ajaybhai dangar', 30, '9924477666', NULL, '\" SAGAR \" bhomeshwar soc. main road , b/h press colony , jamnagar road , rajkot - 360006', 6, 90, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '3-4 pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 15:47:33', '2019-06-19 15:47:33', NULL),
(50, 'prachi patel', 29, '9898553383', 'prachisinojiya@gmail.com', 'k - 2 , 201 , kevalam park , ambika township , rajkot', 5, 49, NULL, NULL, 'married', 'employed', 'fitness', NULL, '5 - 6 pm -20/6 & 21/6', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 15:57:26', '2019-06-19 15:57:26', NULL),
(51, 'sumita vijaybhai vekariya', 41, '9687174029', NULL, 'fulvadi park main road , satyasai road , rajkot', 5, 71, NULL, NULL, 'married', 'housewife', NULL, NULL, '4 - 5 pm trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 16:20:15', '2019-06-19 16:20:15', NULL),
(52, 'sumita vijaybhai vekariya', 41, '9687174029', NULL, 'fulvadi park main road , satyasai road , rajkot', 5, 71, NULL, NULL, 'married', 'housewife', NULL, NULL, '4 - 5 pm trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 16:20:16', '2019-06-19 16:20:16', NULL),
(53, 'arvind d dangar', 38, '9898989847', NULL, 'amin marg , gujarat housing board society  , street no. 6', 9, 103, NULL, NULL, 'married', 'employed', 'weight loss', NULL, '6 - 7 am trial - 20/6', '', NULL, 'RVR', NULL, NULL, '', '', '2019-06-19 16:25:36', '2019-06-19 16:25:36', NULL),
(54, 'sheetal buddhdev', 38, '9081076262', NULL, 'limdavadi main road \" kashish \" kalawad road rajkot', 5, 73, NULL, NULL, 'married', 'housewife', '10 kg weight loss', NULL, 'non', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-20 18:34:16', '2019-06-20 18:34:16', NULL),
(55, 'parvinder singh', 21, '8882345991', 'parvinderdove@gmail.com', 'launge boys hostel , kkv', 5, 80, NULL, 'atmiya clg', 'unmarried', 'student', 'weight loss', NULL, '7 to 8 pm trial today (21 -6-19)', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-20 18:39:53', '2019-06-20 18:39:53', NULL),
(56, 'dr. neepa c dholakia', 32, '9979500627', 'neepashah@gmail.com', 'c - 101 gold stone , opp. pramukhswami auditorium , raiya road , rajkot', 4, 67, NULL, 'self', 'married', 'doctor', 'reduce weight', 'obese', '4 - 5 pm trial', 'Whatsapp', NULL, 'mz', NULL, NULL, '', '', '2019-06-20 18:46:50', '2019-06-20 18:46:50', NULL),
(57, 'goral mehta', 28, '9909692359', NULL, '90 kotecha nagar , b/s kotecha girls school , amin marg', 6, 60, NULL, NULL, 'unmarried', 'employed', 'fitness', NULL, 'cl her for yoga certification', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-20 18:50:45', '2019-06-20 18:50:45', NULL),
(58, 'ravina markana / kinjal patel', 26, '9687377095', NULL, '\" KOHINOOR \" , opp. efil tower , kalawad road , rajkot  /\r\nbhakti nagar rajkot', 6, 52, NULL, NULL, 'married', 'employed', 'weight loss', NULL, 'trial regarding talk to kinjal', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-21 16:17:01', '2019-06-21 16:17:01', NULL),
(59, 'dolly manek', 31, '9909904204', NULL, '\" A - 102 \" , 24 CARAT , nr.  IOC colony , b/h crystal mall , kalawad road', 5, 69, NULL, NULL, 'unmarried', 'freelancing', 'inch loss', NULL, 'mon & tue - trial- 5 to 6 pm', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-21 16:28:56', '2019-06-21 16:28:56', NULL),
(60, 'rajiv parekh', 36, '9099923010', NULL, '401, oscar tower', 5, 87, NULL, NULL, 'married', 'employed', 'weight loss', NULL, '8-9 pm  = tue =trial - 1 person', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-23 15:51:49', '2019-06-23 15:51:49', NULL),
(61, 'amita p dodiya', 26, '9773220094', NULL, 'university road , rajkot', 6, 66, NULL, 'own', 'unmarried', 'student', 'weight loss', NULL, '6 - 7 am = trial = july - 1st join', 'Call', '2019-07-01', 'priti mam', NULL, NULL, '', '', '2019-06-23 15:56:05', '2019-06-23 15:56:05', NULL),
(62, 'bansi s parsana', 21, '9662906542', 'bansi.parsana43@gmail.com', 'savan , ranchod nagar', 5, 74, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '10 - 11 am monday', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-23 16:09:08', '2019-06-23 16:09:08', NULL),
(63, 'maya l vadoliya', 21, '6354442798', 'mayavadoliya11@gmail.com', 'satyasai hospital , narayan nagar , street no :- 2 , kalawad road , rajkot', 5, 62, NULL, NULL, 'unmarried', 'student', 'weight loss & body shaping', NULL, 'mon - tue = 7 to 8 pm', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-23 16:47:35', '2019-06-23 16:47:35', NULL),
(64, 'dr. shweta trivedi', 29, '9901442630', 'drshweta220420@gmail.com', '17/18 , \" TRISHA BUNGLOWS 1 \" new chandan super market , amin marg', 5, 56, NULL, 'dr. amee mehta', 'married', 'doctor', 'prenatal yoga', 'nil', 'she will start from 1st july , before that she will come to meet mz', 'Whatsapp,Call', NULL, 'mz', NULL, NULL, '', '', '2019-06-23 17:02:54', '2019-06-23 17:02:54', NULL),
(65, 'jhanvi pattni', 21, '7048632325', 'jhanvipattni98@gmail.com', '\" Trilok \" , janta society , 1/11 , block no. 99 , tagore road , rajkot', 5, 74, NULL, NULL, 'unmarried', 'student', NULL, NULL, 'non', 'Call', NULL, 'gita mam', NULL, NULL, '', '', '2019-06-25 17:35:28', '2019-06-25 17:35:28', NULL),
(66, 'juhi karia', 21, '7878035469', 'juhikaria17598@gmail.com', '\" JUHI \" , airport road , sankalp siddhi park , rajkot - 360007', 5, 57, NULL, NULL, 'unmarried', 'student', '50', NULL, 'non', 'Call', NULL, 'gita mam', NULL, NULL, '', '', '2019-06-25 17:43:49', '2019-06-25 17:43:49', NULL),
(67, 'palak gupta', 15, '9773486657', 'omprakash9032@gmail.com', '\" SHYAM\" amrut park - 3 , amin marg road , rajkot', 5, 74, NULL, 'nistha di', 'unmarried', 'student', 'fitness', NULL, 'non', 'Call', NULL, 'gita mam', NULL, NULL, '', '', '2019-06-25 17:48:45', '2019-06-25 17:48:45', NULL),
(68, 'komal vithalani', 31, '9924640616', NULL, '302 , vraj vallabh - 2 , 11/15 B , manhar plot , near mangla road , rajkot', 5, 80, NULL, 'google', 'married', 'housewife', 'weight loss', NULL, 'tomorrow 1 call to know decision', 'Call', NULL, 'priti', NULL, NULL, '', '', '2019-06-25 17:53:15', '2019-06-25 17:53:15', NULL),
(69, 'khyati k dodiya', 21, '6354113829', 'khyatidodiya9@gmail.com', 'mavdi main road , gunatet nagar street no -10 , rajkot', 5, 65, NULL, 'friends', 'married', 'infd', 'weight loss', NULL, '4 - 5 pm = today = will come & 2morrow join', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-25 18:05:09', '2019-06-25 18:11:04', '2019-06-25 18:11:04'),
(70, 'khyati k dodiya', 21, '6354113829', 'khyatidodiya9@gmail.com', 'mavdi main road , gunatet nagar street no -10 , rajkot', 5, 65, NULL, 'friends', 'married', 'infd', 'weight loss', NULL, '4 - 5 pm = today = will come & 2morrow join', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:05:11', '2019-06-25 18:11:19', NULL),
(71, 'jignesh dhandhukiya', 27, '9624211111', 'j.dhandhukiya@gmail.com', '\" GURUKRUPA \" , krishna nagar , n/r radha nagar , nana mava road', 6, 81, NULL, NULL, 'married', 'employed', 'fitness & weight loss', NULL, '6-7  - 6 month - payment', 'Whatsapp,SMS,Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:10:44', '2019-06-25 18:10:44', NULL),
(72, 'chandan k gohel', 41, '9909137037', NULL, 'arnish grand apartment , block no. - 701 , 150 ft ring road , near old reliance mall , rajkot', 5, 80, NULL, NULL, 'married', 'housewife', 'weight loss', 'bp', NULL, 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:15:15', '2019-06-25 18:15:15', NULL),
(73, 'meera patel', 43, '9909992793', NULL, '801 , arnish grand , jalaram - 2 , 150 ft ring road , rajkot', 6, 78, NULL, NULL, 'married', 'housewife', 'fitness & weight loss', NULL, 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:18:14', '2019-06-25 18:18:14', NULL),
(74, 'ruchi patel', 27, '8160292814', NULL, 'rajkot', 5, 83, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '10 - 11 pm 1 - days = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:20:28', '2019-06-25 18:20:28', NULL),
(75, 'shefali soni', 21, '8140833118', NULL, '\" PREM \" , 1 karan park , opp. astron society , vidhyut nagar main road , rajkot', 5, 83, NULL, 'friends', 'married', 'student', 'weight loss', NULL, '4 to 5 pm , wed she want to join', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:25:52', '2019-06-25 18:25:52', NULL),
(76, 'tanvi sanjay karia', 17, '9428835400', NULL, '102 - sakar flat , jalaram plot - 2 , street -5 , indira circle , rajkot', 5, 50, NULL, NULL, 'unmarried', 'student', 'fitness', NULL, NULL, 'SMS,Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:29:25', '2019-06-25 18:29:25', NULL),
(77, 'divyam sir', 23, '9586988810', NULL, 's.k chowk , gandhi gram', 5, 82, NULL, NULL, 'unmarried', NULL, 'fitness & weight loss', NULL, 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 18:39:38', '2019-06-25 18:39:38', NULL),
(78, 'bhavana lodhiya', 50, '9924161026', NULL, '\" VRAJRAJ \", plot no. - 65 , nutan nagar -6 , kalawad road , rajkot', 5, 65, NULL, NULL, 'married', 'housewife', 'fitness', 'joint pain', '10 -11 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 15:44:08', '2019-06-26 15:44:08', NULL),
(79, 'rucha jay shukla', 27, '7069853153', 'riyusmartlook@gmail.com', '\" AVADH \" , Alka society ,balaji hall near , rajkot', 5, 55, NULL, 'priyanka', 'married', 'employed', 'lose weight', NULL, '3 - 4 pm = 27/6 trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 15:49:07', '2019-06-26 15:49:07', NULL),
(80, 'dr. khyati a pansuriya', 35, '9904939747', 'khyatiborad84@gmail.com', '33 , satellite park , sadhu vaswani road , near patidar chowk , rajkot', 5, 74, NULL, NULL, 'married', 'employed', '60 kg target weight', NULL, '10 - 11 am = trial = 5th july', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 15:57:06', '2019-06-26 15:57:06', NULL),
(81, 'sangita nayan ratanpara', 39, '9408751033', NULL, '\" MEGHNAYAN \" , michi\'s restaurant street  , university road , rajkot 360005', 5, 66, NULL, NULL, 'married', 'housewife', 'weight loss & body shaping', NULL, 'tomorrow 1 call to know decision', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 16:01:18', '2019-06-26 16:01:18', NULL),
(82, 'sejal kalavadia', 37, '9428279191', NULL, '602 / shilabdh tower , near panchayat nagar , university road , rajkot', 5, 65, NULL, NULL, 'married', 'housewife', 'fitness , weight loss & relaxation', NULL, '6 - pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 16:29:49', '2019-06-26 16:29:49', NULL),
(83, 'payal pratik ranpara', 26, '9638925656', 'payal2709@gmail.com', '\" PALNA \" , 22/51 prahlad plot , digvijay main road , rajkot', 5, 73, NULL, 'hetal mam', 'married', 'housewife', '15 kg weight loss', 'starting phase of PCOD', 'diet 1 month', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 14:11:34', '2019-06-30 14:11:34', NULL),
(84, 'vijay chavda', 24, '9528109999', 'vijayahir0001@gmail.com', '150 ft ring road , labhdeep society , rajkot', 5, 65, NULL, NULL, 'unmarried', 'student', 'weight loss & stay fit', NULL, '8 - 9 pm - mon - tue trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 14:16:52', '2019-06-30 14:16:52', NULL),
(85, 'aditya nanekar', 32, '9168045757', 'adi.nanekar@gmail.com', 'jalaram - 3 , nr. indira circle , rajkot', 5, 68, NULL, NULL, 'married', 'employed', 'fitness/ six pack', NULL, '2 - person = trial = 8 to 9 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 14:20:54', '2019-06-30 14:20:54', NULL),
(86, 'ram bhetariya', 25, '7621041761', NULL, '150 ft ring road , raiya exchange , rajkot', 5, 45, NULL, NULL, 'unmarried', 'student', 'stay fit', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 14:33:01', '2019-06-30 14:33:01', NULL),
(87, 'krupa a vadgama', 24, '9328651322', 'krupagajjar96@gmail.com', 'non', 5, 55, NULL, NULL, 'unmarried', NULL, NULL, NULL, 'trial monday 8 to 9 am', 'Whatsapp', NULL, 'mz', NULL, NULL, '', '', '2019-06-30 14:37:29', '2019-06-30 14:37:29', NULL),
(88, 'sangeeta mehta', 34, '9979650291', 'sangeeta..mehta1603@gmail.com', 'dharmjivan - madhuram hospital', 5, 52, NULL, 'frnd', 'married', 'housewife', 'fitness', NULL, '3-4 pm yesterday', 'Whatsapp,SMS,Call', '2019-07-01', 'priti mam', NULL, NULL, '', '', '2019-07-01 16:42:42', '2019-07-01 16:42:42', NULL),
(89, 'foram d bhatt', 18, '8758989184', NULL, 'palm city E - 1 , flat no. - 102 , opp vidhyaniketan school , near patidar chowk , sadhuvasvani road , rajkot', 5, 45, NULL, 'self', 'unmarried', 'student', 'fitness', NULL, '5-6 pm 1 month , early joining process', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 16:47:49', '2019-07-01 16:47:49', NULL),
(90, 'neetaben amrutlal dholariya', 52, '9925045992', NULL, '\" NEELAM \" 2 - indraprasth nagar , akshar marg, rajkot', 5, 79, NULL, NULL, 'married', 'housewife', NULL, 'bp', '7-8 pm', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 16:53:42', '2019-07-01 16:53:42', NULL),
(91, 'nishant chandarana', 22, '7359355599', 'chandaranan@gmail.com', 'j - cliff appt.flat no. 701 , race course', 5, 122, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, 'fri - sat = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 17:07:48', '2019-07-01 17:08:24', NULL),
(92, 'aditi shukla', 24, '9427221134', '111aditishukla@gmail.com', '\" VEDMATA \" sardarnagar 9 , block no. - 36/c, kalawad road , rajkot', 6, 72, NULL, 'website', 'married', 'housewife', '62 kg', 'cholestrol , thyroid, back problem , may - misscariage', '8 - 9 am = trial', 'Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 17:14:09', '2019-07-01 17:14:09', NULL),
(93, 'chandani sheth', 34, '9974311100', NULL, 'non', 5, 59, NULL, NULL, 'married', 'self employed', '55 kg', '2 C - sections', '9 - 10 am 2morrow', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-01 17:17:26', '2019-07-01 17:17:26', NULL),
(94, 'chandani sheth', 34, '9974311100', NULL, 'non', 5, 59, NULL, NULL, 'married', 'self employed', '55 kg', '2 C - sections', '9 - 10 am 2morrow', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-01 17:17:32', '2019-07-01 17:17:32', NULL),
(95, 'ripal v akbari', 24, '8758474741', NULL, '\" SHREE \" , silver stone - 1 , street no - 3 , near , oskar tower , rajkot', 5, 50, NULL, NULL, 'married', 'housewife', 'for fitness', NULL, '10 - 11 = 2morrow trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-02 04:20:39', '2019-07-02 04:20:39', NULL),
(96, 'riya  / janvi', 22, '7600796231', NULL, '202 , shilabkh tower , panchayat bus stop , university road , rajkot', 5, 46, NULL, NULL, 'unmarried', 'student', 'weight gain / body shaping', 'janvi\'s weight = 49', '10 - 11 or 11 -12 = 2morrow = trial', 'SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-02 04:26:39', '2019-07-02 04:26:39', NULL),
(97, 'foram shah', 28, '9426548314', 'foramshah12@gmail.com', '401 - omega tower, opp. babyland school, kalawad road .', 5, 57, NULL, 'mansi tanna', 'married', 'housewife', 'shaping & toning', NULL, '5 - 6 pm', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-03 04:14:55', '2019-07-03 04:14:55', NULL),
(98, 'dixita', 26, '7572888899', 'dixitadesai.93@gmail.com', '\" AUM \" , amin marg', 5, 45, NULL, 'by road', 'married', 'employed', 'fitness & gain', NULL, '10 to 11 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-03 04:22:53', '2019-07-03 04:22:53', NULL),
(99, 'varsha jasmin savalia', 43, '7359100069', 'crown.int@hotmail.com', '\" VRINDAVAN \" 37 , shree colony society', 5, 61, NULL, NULL, 'married', 'bussiness woman', 'reduce weight & perfect shaping', NULL, '6 to 7 am = 2morrow she will come joining', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-03 04:32:36', '2019-07-03 04:32:36', NULL),
(100, 'vandna mam / charu mirani', 49, '9898202220', NULL, 'amin marg', 5, 66, NULL, 'manan & niyati', 'married', 'housewife', 'weight loss & stay fit', NULL, '8 - 9am 2morrow = trial - 2 person', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-03 04:40:31', '2019-07-03 04:40:31', NULL),
(101, 'archana rawat', 32, '7698595133', 'archanarawat1907@gmail.com', 'krishna international school , bhavnagar road , aaji dam .', 5, 69, NULL, NULL, 'married', 'housewife', 'fitness', NULL, 'monday trial', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-04 15:09:15', '2019-07-04 15:09:15', NULL),
(102, 'sagar e chauhan', 20, '8347944860', 'sagarchauhan459@gmail.com', '306 , kabra house , chala , vapi', 6, 79, NULL, NULL, 'unmarried', 'student', 'fitness', NULL, 'sat - mon - trial = 7-8 pm', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-04 15:13:03', '2019-07-04 15:13:03', NULL),
(103, 'dhaval shah', 25, '7575070054', 'shah87233@gmail.com', '22 - new jagnath plot .', 5, 92, NULL, 'by road', 'unmarried', 'self employed', 'lose belly fat', NULL, '17 days', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-04 15:17:12', '2019-07-04 15:17:12', NULL),
(104, 'dipesh shukla', 22, '8238235530', NULL, '1/4 rampark society , near RMC swimming pool', 5, 85, NULL, NULL, 'unmarried', 'student', 'weight loss & loss belly fat', NULL, 'mon & tue - 2 person - trial = 8 - 9 pm', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-04 15:27:18', '2019-07-04 15:27:18', NULL),
(105, 'mansi vedia', 22, '7621857561', NULL, 'laxmivadi - 7/9 corner , near bolbala temple , rajkot', 5, 47, NULL, NULL, 'unmarried', 'business woman', 'weight gain - 55 kg', 'non', '4 -5 pm', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-04 15:55:46', '2019-07-04 15:55:46', NULL),
(106, 'mayur dholakia', 25, '9737480361', 'mayurdholakiya24@gmail.com', 'nilkanth cinema , 4 , b/h nilkanth cinema , rajkot', 5, 60, NULL, 'just dial', 'unmarried', 'printing', 'weight gain', NULL, 'non', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 14:58:34', '2019-07-05 14:58:34', NULL),
(107, 'nikita amlani', 26, '9730540104', NULL, 'shikhar apt. , indira circle', 6, 77, NULL, NULL, 'unmarried', 'employed', 'loss weight & increase stamina', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 15:02:53', '2019-07-05 15:02:53', NULL),
(108, 'nikita amlani', 26, '9730540104', NULL, 'shikhar apt. , indira circle', 6, 77, NULL, NULL, 'unmarried', 'employed', 'loss weight & increase stamina', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 15:02:57', '2019-07-05 15:02:57', NULL),
(109, 'riya mam', 24, '9978400068', 'riya doshi12296@gmail.com', '\" ADIT \" 4, prakash society , opp. nirmala school , rajkot', 5, 45, NULL, 'wallking', 'married', 'housewife', 'fitness', NULL, '4 to 5 pm = trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 15:09:36', '2019-07-05 15:09:36', NULL),
(110, 'aradhana jadeja', 31, '9725922577', 'aradhnajadeja1@gmail.com', 'shree ram - 32 , shivam nagar , b/h parimal school , kalawad road , rajkot -360005', 6, 73, NULL, 'karansinh zala', 'unmarried', 'interior designer', 'weight loss', NULL, '7 to 8 am', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 15:14:44', '2019-07-05 15:14:44', NULL),
(111, 'mital patel', 28, '7878487575', NULL, 'kingsland , amin marg , rajkot', 45, 45, NULL, 'hording', 'notselected', 'employed', 'fitness', 'non', 'only yoga', 'Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-07-05 15:18:00', '2019-07-05 15:18:00', NULL),
(112, 'riya dineshbhai akbari', 25, '9574980642', NULL, '\" SHREEJIDHAN \" , goverdhan soc. , nr. narmada park , amin marg , rajkot', 5, 59, NULL, 'by add', 'unmarried', 'home stayed', 'weight loss', NULL, '10 - 11 am =mon - tue', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-07 15:49:34', '2019-07-07 15:49:34', NULL),
(113, 'vidhi panchasana', 20, '8758372461', 'panchasanavidhi@gmail.com', 'krishna nagar main road , daraminarayan chowk', 5, 40, NULL, NULL, 'unmarried', 'student', 'weight gain', NULL, 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-07 16:08:13', '2019-07-07 16:08:13', NULL),
(114, 'bhoomi manan bhimani', 25, '9638999265', 'dhruvabhoomi2@!gmail.com', 'A-101 , gunjan point , kalawad road', 84, 84, NULL, 'by road', 'married', 'housewife', 'to loose 10 kg', 'non', '10 - 11 - 2 days = mon - tue', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-07 16:14:14', '2019-07-07 16:14:14', NULL),
(115, 'bijal bavishi', 40, '9426817689', 'sbavishi891@gmail.com', 'A - 62 raghukul , shroff road , near sharda baag , rajkot', 5, 55, NULL, 'pooja hobby center', 'married', 'housewife', 'want to reduce weight', 'calf pain', 'will cl us to come for trial', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-07 16:21:52', '2019-07-07 16:21:52', NULL),
(116, 'kumud dalal', 42, '9825205535', 'kumuddalal.kd@gmail.com', '2 , shakuntala soc , opp. s.n.k school , university road , rajkot', 5, 65, NULL, NULL, 'married', 'housewife', 'fitness', 'non', 'nom', 'SMS,Call', NULL, 'priyanka', NULL, NULL, '', '', '2019-07-07 16:47:18', '2019-07-07 16:47:18', NULL),
(117, 'kautuki kharbe', 17, '9375114815', NULL, 'Aditya Heights H - 102 , sadhuvasvani road , gopal chowk , rajkot', 5, 55, NULL, 'by road', 'unmarried', 'student', 'dance', NULL, '6 to 7 - 7 - 8 pm , starting date - 1 call by informed', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 14:23:03', '2019-07-08 14:23:03', NULL),
(118, 'drishti timbadiya', 22, '7575034353', 'drishtitimbadiya29@gmail.com', '\" SHREENATHJI \"  , sanket park - 1 , street no - 2 , near Big Bazar , rajkot - 360005', 6, 59, NULL, NULL, 'unmarried', 'student', '50', NULL, '4 - 5 pm = 2morrow -2 person', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 15:01:49', '2019-07-08 15:01:49', NULL),
(119, 'matangi gadhaiya', 22, '7575034353', NULL, '\" SHREENATHJI \" sanket park- 1 , street no - 2 , near Big Bazar , , rajkot - 360005', 5, 47, NULL, NULL, 'unmarried', 'student', '50', NULL, '4 to 5 pm = tomorrow - 2 person', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 15:56:07', '2019-07-08 15:56:07', NULL),
(120, 'nikita tolia', 32, '8780343861', 'nikita.tolia87@gmail.com', 'nirmala road , 4 balmukund plot , rajkot\r\nwhats app - 8306274327', 5, 81, NULL, 'net', 'married', 'employed', 'weight loss & stay fit', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 16:01:03', '2019-07-08 16:01:03', NULL),
(121, 'roopendra sharma', 27, '9772123499', NULL, 'panchwati marg , near jalaram hospital , land mark  amin marg , rajkot', 6, 73, NULL, NULL, 'unmarried', 'employed', 'weight loss & stay fit', 'non', '7-8 am - 2morrow = 10/7/19 = 1 person', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 16:07:45', '2019-07-08 16:07:45', NULL),
(122, 'hanif', 23, '8460786186', NULL, 'rajkot', 6, 80, NULL, NULL, 'unmarried', 'employed', 'stay fit', NULL, '7-8 am - 2morrow = 10/7/19 = 2 person', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 16:11:04', '2019-07-08 16:11:04', NULL),
(123, 'dhara d khirsaria', 30, '9099071153', 'dharakhirsaria@gmail.com', '301 , meghmalhar appt. , opp. gandhi vidhyalay , b/h panchvati society', 5, 54, NULL, NULL, 'married', 'housewife', 'to get slim & fit body structure', NULL, '3-4 pm 2day (9-7-19)', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 17:06:02', '2019-07-08 17:06:02', NULL),
(124, 'sneha', 27, '9924913300', NULL, 'amin marg , shivam appt - 301', 5, 86, NULL, 'friend', 'married', 'housewife', '55 kg', NULL, '3-4 pm 2day (9-7-19)', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 17:09:27', '2019-07-08 17:09:27', NULL),
(125, 'bharti getaxancar', 48, '7990205969', 'bhartigeta@gmail.com', '22 B , bhaktidham soc. , 150 ft ring road , opp. amrutsagar party plot , rajkot', 5, 70, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '2 days - free trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 15:02:49', '2019-07-11 15:02:49', NULL),
(126, 'reema sakariya', 27, '9537881444', 'sakariyareema@gmail.com', '\" AMIDHARA \" , parnakuti main road , jay park - 1 ,', 6, 67, NULL, 'asis bhai', 'married', 'housewife', 'weight loss', 'nop', '4 - 5 pm = 2morrow -2 person', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 15:08:15', '2019-07-11 15:08:15', NULL),
(127, 'hetal bataviya', 35, '8155999959', NULL, '\" CHAITNYA \" 2nd fl , 201 , 16/17 panchnath plot , limda chowk , rajkot', 5, 69, NULL, NULL, 'married', 'housewife', 'reduce fat', NULL, '11 am - 12 pm = 2morrow = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 15:12:34', '2019-07-11 15:12:34', NULL),
(128, 'aarzoo asalm gulabsah', 23, '9773224719', NULL, 'mandas plot 5 , mangles main road', 5, 70, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '3-4 pm - 15 days 5 kg WLC-4', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 15:17:25', '2019-07-11 15:17:25', NULL),
(129, 'nirali raval', 23, '7999998149', NULL, 'alka puri , 11-4 corner , raiya road', 5, 65, NULL, 'dilip bhai ( the fitness zone gym )', 'unmarried', 'home stayed', 'weight loss', 'non', '8-9 kale', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 15:21:53', '2019-07-11 15:21:53', NULL),
(130, 'krunal', 1, '9898989898', '1', '1', 148, 1, '2019-07-13', '1', 'notselected', 'notselected', '1', '1', '1', 'Whatsapp', '2019-07-13', '1', '1', NULL, 'Personal/General Training', 'ptest', '2019-07-12 19:25:46', '2019-07-12 19:26:43', '2019-07-12 19:26:43'),
(131, 'mahendrabhai bhagdev', 45, '7575076203', NULL, 'keval app. , kevdawadi , rajkot', 5, 65, NULL, 'net', 'married', 'bussiness', 'weight loss', 'right knee - burn - pain', '2 days = 6- 7 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-17 15:03:16', '2019-07-17 15:03:16', NULL),
(132, 'darshna soni', 35, '9099298039', NULL, '3 , raval nagar , nr. 150 ft ring road , rajkot', 5, 108, NULL, 'ashish popat', 'married', 'employed', '20 to 30 kg loss in 6 month', 'thyroid only', '6-7 -pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-17 15:06:13', '2019-07-17 15:06:13', NULL),
(133, 'kruti jethva', 24, '7202005176', NULL, '\" astha \" karan park', 5, 48, NULL, 'jd', 'unmarried', 'doctor', 'to decrease tummy area', 'NRH', 'she will cl us for trial ( no disturbance )', '', NULL, 'mz', NULL, NULL, '', '', '2019-07-17 16:12:58', '2019-07-17 16:12:58', NULL),
(134, 'darshita B SANGHRAJKA', 30, '7016525677', NULL, '\" NR. BHAKTI NAGAR \"', 5, 73, NULL, NULL, 'unmarried', 'bussiness', 'weight loss', NULL, 'non', 'Whatsapp,Call', '2018-07-19', 'mz', NULL, NULL, '', '', '2019-07-17 16:30:08', '2019-07-17 16:30:08', NULL),
(135, 'sandra', 24, '9173845483', NULL, 'marwadi university', 60, 65, NULL, 'passport', 'unmarried', NULL, 'to loss 5 kgs', NULL, '6-7 pm', 'Whatsapp', NULL, 'mz', NULL, NULL, '', '', '2019-07-17 17:15:45', '2019-07-17 17:15:45', NULL),
(136, 'nirali s doshi', 30, '9409151564', 'smitdoshi@gmail.com', '603 , shanti heights app. , akashwani chowk , above celebration restaurant , near SNK', 5, 70, NULL, NULL, 'married', 'housewife', 'to decrease weight about 15 kg', NULL, '15 days weight loss challenge , 10 - 11 am - 2morrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-17 17:32:06', '2019-07-17 17:32:06', NULL),
(137, 'mariyam sadikot', 22, '9979118680', 'mariyamsadikot20@gmail.com', 'nobel residency, diwanpara 6 , rajkot', 156, 55, NULL, NULL, 'married', 'student', 'fitness', 'thyroid - hypothyroidism', '6-7 am or 7-8 am - 22/7/19 , 1 day trial - 1 person', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-07-24 15:57:38', '2019-07-24 15:57:38', NULL),
(138, 'jhanavi dave', 21, '8409883973', 'jhanavi.dave@yahoo.co.in', 'nisarg bunglows , nr. university road', 5, 59, NULL, NULL, 'unmarried', 'student', 'non', 'non', 'mz - talk - followup', 'Call', NULL, 'mz', NULL, NULL, '', '', '2019-07-24 16:02:40', '2019-07-24 16:02:40', NULL),
(139, 'bhavnaben karia', 61, '9909904440', NULL, '103 , \" SHRUSTI \" Appts. , opp saint mary school , rajkot', 5, 68, NULL, 'purvi vaghela', 'married', 'housewife', 'weight loss', 'haath ma problem che , shoulder bolt , lock ma thi utari jai che.', '9 to 10 am - mon', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-24 16:11:17', '2019-07-24 16:11:17', NULL),
(140, 'nikita odedra', 17, '9727797777', NULL, '6 limbudi wadi\r\nopp yogi amrut appartment', 5, 56, NULL, 'friend mansi', 'unmarried', 'student', 'non', NULL, '6 pm = 2 day trial - 2morrow', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-24 16:16:51', '2019-07-24 16:16:51', NULL),
(141, 'kunj dhulesia', 18, '9586560905', NULL, 'non', 180, 81, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, 'non', 'Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-07-24 16:19:16', '2019-07-24 16:19:16', NULL),
(142, 'pooja patel', 20, '9429513851', NULL, 'kalawad road', 5, 70, NULL, NULL, 'unmarried', 'student', 'weight loss & body shaping', NULL, 'will cl for trial', '', NULL, 'RVR', NULL, NULL, '', '', '2019-07-24 16:59:46', '2019-07-24 16:59:46', NULL),
(143, 'utsav d nirmal', 23, '7878111170', 'nirmaluts78@gmail.com', 'jivan nagar', 6, 85, NULL, NULL, 'unmarried', 'notselected', 'weight loss & muscle bultup', NULL, 'will cl us to come for trial', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-24 17:04:48', '2019-07-24 17:04:48', NULL),
(144, 'sawan dhaduk', 26, '9638310004', NULL, '11/B kailash bangh society  ( gondal )', 171, 131, NULL, NULL, 'notselected', 'notselected', 'weight loss', NULL, 'he will cl MZ', '', NULL, 'MZ', NULL, 'only diet', '', '', '2019-07-24 17:08:10', '2019-07-24 17:08:10', NULL),
(145, 'pavitra jadeja', 22, '8320063897', NULL, '92 , kailash kevalam , kalawad road , rajkot', 6, 92, NULL, NULL, 'unmarried', NULL, 'weight loss', 'PCOD', 'gold package  ( DONE )', 'Whatsapp,SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-24 17:13:08', '2019-07-24 17:13:08', NULL),
(146, 'meera trada', 33, '9909049549', NULL, 'B- 304 , radhevilla , near marvel hospital , mavadi , rajkot', 4, 56, NULL, NULL, 'married', 'employed', 'weight loss', NULL, 'she want 5- 6 pm challenge batch', 'Whatsapp', NULL, 'MZ', NULL, NULL, '', '', '2019-07-24 17:16:52', '2019-07-24 17:16:52', NULL),
(147, 'manali j khunt', 23, '8000737315', NULL, '\" TAPOBHUMI \" , 3/9 alka society , opp.shubh corner complex , mavdi road , rajkot', 5, 75, NULL, NULL, 'unmarried', 'employed', 'weight loss', NULL, 'after 20 july she want trial', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 15:10:50', '2019-07-25 15:10:50', NULL),
(148, 'miral r shah', 39, '9998762662', 'visionhouse@yahoo.com', 'vision house 102 - destination complex , amin marg .', 5, 79, NULL, 'stavan bhai & incy bhabhi', 'married', 'bussiness', 'weight loss', 'high blood pressure with high lipid profile', 'he will cl priti mam in 2 days', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 15:23:26', '2019-07-25 15:23:26', NULL),
(149, 'daxrajsinh jadeja', 19, '7778901349', 'dakshraj1616@gmail.com', 'virani chowk , \" GIRIRAJ \" , block no- 38', 5, 104, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '15 days weight loss challenge 8-9 pm - 17th', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 16:38:43', '2019-07-25 16:38:43', NULL),
(150, 'daxrajsinh jadeja', 19, '7778901349', 'dakshraj1616@gmail.com', 'virani chowk , \" GIRIRAJ \" , block no- 38', 5, 104, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '15 days weight loss challenge 8-9 pm - 17th', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 16:38:44', '2019-07-25 16:38:44', NULL),
(151, 'avani bhalani', 36, '9426992969', NULL, 'c- 22 , oscar tower , opp - big bazar', 5, 73, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, 'will cl us to come for trial', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-25 16:50:25', '2019-07-25 16:50:25', NULL),
(152, 'yash bhati', 24, '9638756363', NULL, 'bhidbhanjan nagar , university road', 6, 86, NULL, 'vivek joshi', 'unmarried', 'employed', 'weight loss & stay fit', NULL, '6 am mon & tue = trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-25 16:54:20', '2019-07-25 16:54:20', NULL),
(153, 'viral r tanna', 25, '8320857558', 'viraltanna456@gmail.com', 'bedi naka tower rajkot', 167, 45, NULL, 'ph contact', 'unmarried', 'bussinessman', 'weigh gain by 15 kg', NULL, '8-9 am trial', 'Whatsapp,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-25 17:01:52', '2019-07-25 17:01:52', NULL),
(154, 'heena kashyap shukla', 55, '9825900999', NULL, '\" RAJGRUHI \" 2, nutan nagar society , kalawad road', 5, 70, NULL, 'trupti jain', 'married', 'housewife', '5 kg reduce', 'blood pressure', '6 + 8 ( 7: 30 am )', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 17:09:44', '2019-07-25 17:09:44', NULL),
(155, 'dipal vaghadiya', 38, '9428155966', NULL, '\" MAHAKALI KRUPA \" \r\nvinay society', 5, 90, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '8 - 9 am trial', 'Whatsapp', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 17:12:35', '2019-07-25 17:12:35', NULL),
(156, 'jigar yogesh shah', 26, '9998584841', NULL, '105  , lichis appt. rajkot', 5, 53, NULL, 'google', 'unmarried', 'employed', 'weight gain + fitness + body shape', 'non', 'trial 2morrow 6 to 7 am', 'Whatsapp', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 17:20:02', '2019-07-25 17:20:02', NULL),
(157, 'atul kalaria', 58, '9825076069', 'atulkalaria@yahoo.com', '61 - b , suraj - 2 , shroff road , rajkot', 5, 65, NULL, 'dr. shaial k', 'married', 'CA', 'fitness', 'non', 'tue  - wed = come for trial', 'SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 21:17:49', '2019-07-28 21:17:49', NULL),
(158, 'suresh tank', 45, '9558699876', NULL, '\" VISHNU RAJ \"', 6, 78, NULL, NULL, 'notselected', NULL, 'fitness', 'no', '7-8 am', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 21:24:06', '2019-07-28 21:24:06', NULL),
(159, 'dr. janki bhardwaj', 23, '9979358033', 'jankibhardwaj666@gmail.com', 'chitrakut app - B , block no. -102 , behind crystal mall , kalawad road , rajkot - 360005', 5, 90, NULL, NULL, 'unmarried', 'part time physio', 'certification pillatis', 'nil', 'trainer - pillatis', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 21:50:36', '2019-07-28 21:50:36', NULL),
(160, 'meera parsana', 25, '9825700225', 'meeraparsana25@gmail.com', '\" OM \" , bharatvan society , amin marg , rajkot', 5, 48, NULL, 'by group', 'married', 'housewife', 'fitness', NULL, '2 days - 4 to 5 = today - will join', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 21:58:03', '2019-07-28 21:58:03', NULL),
(161, 'meera parsana', 25, '9825700225', 'meeraparsana25@gmail.com', '\" OM \" , bharatvan society , amin marg , rajkot', 5, 48, NULL, 'by group', 'married', 'housewife', 'fitness', NULL, '2 days - 4 to 5 = today - will join', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 21:58:07', '2019-07-28 21:58:07', NULL);
INSERT INTO `members` (`id`, `name`, `age`, `contact`, `email`, `address`, `height`, `weight`, `birth_date`, `reference`, `married`, `status`, `goal`, `medical`, `comments`, `updateson`, `joining_date`, `followupby`, `nextfollowup`, `remarks`, `service`, `servicecomment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(162, 'chintan barot', 22, '8000030019', 'barotchintan7@gmail.com', 'shree chamunda  krupa , somnath soc  : 2 , 150 feet ring road , rajkot', 6, 65, NULL, NULL, 'unmarried', 'student', 'general health', NULL, '6- 7 am', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 22:54:15', '2019-07-28 22:54:15', NULL),
(163, 'vikas gohel', 22, '8460757637', NULL, 'A - 30 , ajmera shashtrinagar rajkot -360001', 6, 58, NULL, 'bhavik buddhdev', 'unmarried', NULL, 'body shaping & overall fitness', NULL, 'dance trainer', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 22:59:27', '2019-07-28 22:59:27', NULL),
(164, 'riya mam', 19, '8849873875', NULL, '\" AMI - VARSHA \" , 5 - jankaliyan soc. , amin marg , rajkot', 5, 59, NULL, NULL, 'unmarried', 'student', 'fitness', NULL, '9 - 10 am , 3-4 pm ,  4-5 pm', 'Whatsapp,SMS,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 23:06:06', '2019-07-28 23:06:06', NULL),
(165, 'digja dhanesha', 21, '9824037230', 'dhaneshadigjia@gmail.com', '\" KRUSHN KUNJ \" vimal nagar street no. - 6', 5, 40, NULL, NULL, 'unmarried', 'student', 'body maintain', NULL, '5 to 6 pm = 2morrow', 'SMS,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 23:19:55', '2019-07-28 23:19:55', NULL),
(166, 'riya chavda', 20, '9227575275', 'riyachavda783@gmail.com', '4 karan park opps astron society , kalawad road , rajkot', 5, 56, NULL, 'dr. yogesh parmar', 'unmarried', 'student', 'body shaping', NULL, NULL, '', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-28 23:43:12', '2019-07-28 23:43:12', NULL),
(167, 'shriya patel', 15, '9825294650', 'shriya.patel601@gmail.com', 'kings land app 302 , amin marg 360001', 5, 56, NULL, NULL, 'unmarried', 'student', 'weight loss', 'ligament stretches', '5-6 pm = 2 person 2morrow pay', 'SMS,Call', '2024-07-19', 'priti mam', NULL, NULL, '', '', '2019-08-01 23:55:04', '2019-08-01 23:55:04', NULL),
(168, 'kajal patel', 72, '9429470370', 'shriya.patel601@gmail.com', 'king\'s land app. - 302 , amin marg 360001', 5, 72, NULL, NULL, 'married', 'housewife', 'weight loss', 'ligament stretches', '5 - 6 pm = 2 person 2morrow pay', 'SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-02 00:04:33', '2019-08-02 00:04:33', NULL),
(169, 'twisha patel', 21, '9825062099', 'pambhartwisha@gmail.com', '9/4 corner indraprasth nagar , \" kirtar \" amin marg', 5, 70, NULL, 'hasnain sadikot', 'unmarried', 'student', 'weight loss', NULL, '4-5 = 10-11 tomorrow = trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-02 22:48:55', '2019-08-02 22:48:55', NULL),
(170, 'devanshi m ranpara', 16, '9723895583', NULL, 'prahlad plot - 21/49 , avadh plaza- 5 , rajkot', 5, 79, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '6-7 pm = trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-02 22:55:19', '2019-08-02 22:55:19', NULL),
(171, 'devang patel', 27, '7405569363', NULL, '5 champak nagar rajkot 360003', 5, 95, NULL, 'youtube', 'married', 'bussinessman', 'weight loss', NULL, '1 st trial =', 'Call', '2019-08-01', 'priti mam', NULL, NULL, '', '', '2019-08-05 20:49:32', '2019-08-05 20:49:32', NULL),
(172, 'dhrumil mer', 26, '9714877797', 'dhrumilmer@gmail.com', 'st - 8 , parijat society , beside radhe hall , university road , rajkot', 170, 70, NULL, 'self', 'unmarried', 'student', 'fitness', 'non', '24-7-19 - take trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-08-05 20:54:02', '2019-08-05 20:54:02', NULL),
(173, 'niraj agrawal', 38, '9319388481', NULL, 'block no. - 4 , street no. :- 1 , satyam park , 80 feet road , rajkot', 6, 90, NULL, 'google', 'married', 'employed', 'weight loss up till 15 kg', 'no', 'will cl us to come for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-08-05 20:58:54', '2019-08-05 20:58:54', NULL),
(174, 'harish k ranpara', 46, '9879614668', NULL, 'b - 21 , yogiamrut apartment , behind nirmala school , rajkot', 6, 87, NULL, 'piyushsinh jadeja', 'married', 'CA', 'to reduce 5/7 kgs', NULL, '7 to 8 am 2 person ( with wife)', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-05 21:36:14', '2019-08-05 21:36:14', NULL),
(175, 'kruti kikani', 22, '9664749312', NULL, 'vallabh vidhyanagar , bajaji hall', 5, 60, NULL, 'net', 'unmarried', 'student', 'maintainance', 'non', '5 to 6 pm trial', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-08-05 21:46:19', '2019-08-05 21:46:19', NULL),
(176, 'sahel m meswania', 29, '9664848445', 'sahel.mes@gmail.com', '\" tulsidham \" , plot no - 3 , 1/1 - hansrajnagar , near railway station', 6, 72, NULL, 'net', 'unmarried', 'employed', NULL, NULL, 'satturday = 2morrow = diet', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-05 22:40:56', '2019-08-05 22:40:56', NULL),
(177, 'drashti joshi', 22, '8866589259', 'drashtijoshi575@gmail.com', '504 ,shreeji heights , geetanagar , st. no. - 4 , near gurukul\r\nwhatsapp no. - 8780466182', 5, 90, NULL, 'friend', 'unmarried', 'student', 'weight loss', 'PCOS', '3 month P.T - platinium', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-05 22:52:28', '2019-08-05 22:52:28', NULL),
(178, 'chetna jayantibhai solanki', 26, '8780208388', 'aarohisolanki03@gmail.com', 'gautam , near saurastra school , tagore nagar', 5, 80, NULL, 'by road', 'unmarried', 'employed', 'weight loss', NULL, NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-05 22:57:06', '2019-08-05 22:57:06', NULL),
(179, 'chetna jayantibhai solanki', 26, '8780208388', 'aarohisolanki03@gmail.com', 'gautam , near saurastra school , tagore nagar', 5, 80, NULL, 'by road', 'unmarried', 'employed', 'weight loss', NULL, NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-05 22:57:11', '2019-08-05 22:57:11', NULL),
(180, 'divya rokad', 23, '8141914195', 'divyarokad@gmail.com', 'govani kanya chhatralaya , near savani art centre , kalawad road , rajkot', 6, 63, NULL, 'internet', 'married', 'employed', '55', 'non', 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-06 21:34:25', '2019-08-06 21:34:25', NULL),
(181, 'apexa d davda', 35, '8141241700', 'apexadavda@gmail.com', '1 ramkrishna nagar 401 nirmal shrusti app. block no. 401 , rajkot', 5, 97, NULL, 'relative', 'married', 'housewife', 'weight loss', 'thyroid only', 'will cl us to take trial , busy till 1 aug', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-08-06 21:40:24', '2019-08-06 21:40:24', NULL),
(182, 'rajani shaum', 30, '7654108108', NULL, 'ranchodnagar rajkot', 5, 82, NULL, NULL, 'unmarried', 'housewife', NULL, NULL, 'fri & sat - 2 person 7 to 8 pm', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-08-06 22:13:22', '2019-08-06 22:13:22', NULL),
(183, 'deepti anadkat', 36, '8160963326', NULL, 'sardar nagar west -1', 5, 77, NULL, 'rushi a', 'unmarried', 'employed', 'to reduce 20 kg', 'back pain', 'silver - 7 to 8 -8 to 9 pm 2morrow', 'Call', '2019-08-07', 'priti mam', NULL, NULL, '', '', '2019-08-06 22:19:42', '2019-08-06 22:19:42', NULL),
(184, 'hetal chauhan', 22, '7574066621', 'chauhanhetalv97@gmail.com', 'kotecha chowk near kirami showroom rajkot', 5, 60, NULL, NULL, 'unmarried', 'employed', 'weight loss', 'non', '6 to 7 am = 2morrow', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-06 22:24:11', '2019-08-06 22:24:11', NULL),
(185, 'charmi raichura', 38, '8980068636', NULL, '\" vaniyavda \" opp. sed high school nashi road', 5, 70, NULL, 'by road', 'married', 'housewife', NULL, NULL, '6 to 7 pm = wed - 1 - trial call', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-06 22:31:27', '2019-08-06 22:31:27', NULL),
(186, 'dhrumil patel', 24, '7600226699', 'dhrumilpatel73@gmail.com', 'chocolate corner , ambika township , jivraj park , rajkot', 5, 74, NULL, NULL, 'unmarried', 'employed', 'weight loss', 'non', '8 to 9 pm = 1st aug = 2morrow trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-07 21:56:14', '2019-08-07 21:56:14', NULL),
(187, 'abhijeet mehta', 27, '9426127505', NULL, 'university road rajkot', 6, 104, NULL, NULL, 'unmarried', 'employed', 'weight loss', NULL, 'P.T - 7 to 8 am = G.T - 1 trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-07 21:59:33', '2019-08-07 21:59:33', NULL),
(188, 'amee c vyas', 35, '9879536639', NULL, '196 , chitrakut dham society , B/H TOC colony , kalawad road', 6, 40, NULL, 'friend', 'married', 'employed', 'fitness', 'non', '8 to 9 - am - next week 1 reminder call', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-07 22:08:11', '2019-08-07 22:08:11', NULL),
(189, 'amitsinh gohil', 28, '9586200900', NULL, 'madhuram appartment , ranchodnagar -10', 175, 96, NULL, 'devang patel', 'married', 'bussiness', 'weight loss', NULL, '6 to 7 am tommorow trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-07 22:11:47', '2019-08-07 22:11:47', NULL),
(190, 'nilesh makadia', 52, '9377769874', 'nileshmakadia@yahoo.com', '71/A , suraj apartment - 2  , shroff road , rajkot', 6, 89, NULL, NULL, 'married', 'bussiness', 'weight loss', 'knee legaments', 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-07 22:27:32', '2019-08-07 22:27:32', NULL),
(191, 'hiteshwari jadeja', 30, '9408042017', 'hiteshwari.jadeja@gmail.com', 'rajkot', 5, 58, NULL, 'marwadi university', 'unmarried', 'employed', 'fitness & boosting stamina', 'non', '9-10 am will cl us for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-08-13 09:49:34', '2019-08-13 09:49:34', NULL),
(192, 'urvashiba m jadeja', 22, '9898045691', NULL, 'nana mava road , sastrinagar , B - 116 , Rajkot', 5, 70, NULL, 'by road', 'unmarried', 'notselected', 'weight loss', 'non', 'non', 'Whatsapp,SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 09:53:19', '2019-08-13 09:53:19', NULL),
(193, 'jalpa jignesh tarpada', 32, '9714986861', NULL, '\" JIGNESH \" 6 - alka soc. mavdi plot , rajkot', 5, 60, NULL, 'sumi korat', 'married', 'housewife', 'shaping & toning', 'non', '10-11 , 3-4 , 4-5', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 09:56:26', '2019-08-13 09:56:26', NULL),
(194, 'karan nakar', 24, '8320084444', NULL, 'rajkot', 5, 75, NULL, NULL, 'unmarried', 'notselected', 'not fix', 'non', '7 to 8 am , tue - wed - 2 trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 09:59:55', '2019-08-13 09:59:55', NULL),
(195, 'neeta tank', 37, '9879489867', NULL, 'dharm vandana , R.K. nagar main road , Nr. rain tower , rajkot', 5, 64, NULL, NULL, 'unmarried', 'employed', 'to reduce 12 kgs', 'non', 'only inq', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 10:03:29', '2019-08-13 10:03:29', NULL),
(196, 'prashant rajani', 27, '7411900194', NULL, 'rajkot', 177, 85, NULL, 'google', 'married', 'employed', 'stemina - strength', 'non', '2 days -) monday - 1 call for trial', 'Call', NULL, 'priti mam', NULL, 'no not proper', '', '', '2019-08-13 10:07:48', '2019-08-13 10:07:48', NULL),
(197, 'ishita kariya', 33, '9974170370', 'ishita.kariya@gmail.com', '\" TIRUPATI \" vaishalinagar - 2 , raiya road , rajkot', 5, 80, NULL, 'dr. hetal modha', 'married', 'housewife', 'weight loss', 'PCOS', 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 20:51:41', '2019-08-13 20:51:41', NULL),
(198, 'grishma miral tolia', 32, '9428231826', 'grishmatolia@gmail.com', 'B - 4 , amrut prabhat app. , above ram krishna dairy farm , dr. yagnik road', 5, 66, NULL, 'darshita sanghrajka', 'married', 'housewife', 'stay fit', 'low blood pressure', 'will cl for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-08-13 20:59:10', '2019-08-13 20:59:10', NULL),
(199, 'grishma miral tolia', 32, '9428231826', 'grishmatolia@gmail.com', 'B - 4 , amrut prabhat app. , above ram krishna dairy farm , dr. yagnik road', 5, 66, NULL, 'darshita sanghrajka', 'married', 'housewife', 'stay fit', 'low blood pressure', 'will cl for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-08-13 20:59:11', '2019-08-13 20:59:11', NULL),
(200, 'amisha rathod', 45, '9099089501', NULL, 'nirmala school , akshar wadi - 1', 152, 62, NULL, 'riya khara ( 4-5 pm )', 'married', 'bussiness', 'weight loss & stay fit', 'manopause', '7 to 8 am 2morrow', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-08-13 21:18:54', '2019-08-13 21:18:54', NULL),
(201, 'vidhi godhaviya', 23, '9687208296', NULL, '\' 202 \' , sanjivanee appt. , S/10  royal park , kalawad road , rajkot', 5, 43, NULL, 'google', 'unmarried', 'freelancer', 'gain upto 52 kg', 'non', '1 day - free trial 11 to 12 , call us', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 21:24:48', '2019-08-13 21:24:48', NULL),
(202, 'darshit pujara', 36, '9825224600', 'darshitpujara@gmail.com', '150 ft ring road , \" AALISHAN \" appt', 6, 93, NULL, 'vishal', 'married', 'self employed', 'weight reduction', 'cholestrol , fatty liver', 'wed - thurs - 8 to 9 am = isha sejpal - 9106067300', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 21:41:03', '2019-08-13 21:41:03', NULL),
(203, 'richa sheth', 27, '9429978008', 'richasheth16@gmail.com', '\"A- 22 yogi amrut \" , sojitra nagar , gurugolvalkar marg , rajkot', 6, 77, NULL, NULL, 'unmarried', 'employed', 'weight loss ( 67 )', NULL, '5-6 pm monday GT', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-08-13 21:52:58', '2019-08-13 21:52:58', NULL),
(204, 'jaydip mokhasara', 27, '9537389777', NULL, 'amin marg , opp. kings height building , rajkot', 6, 96, NULL, 'self', 'married', 'bussinessman', '80', NULL, '7 to 8 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:01:54', '2019-08-13 22:01:54', NULL),
(205, 'dr. ami suwagiya', 27, '7623904793', NULL, 'near balaji hall , 1101 , grand suneity  appartment', 5, 51, NULL, NULL, 'married', 'doctor', 'fitness', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:23:22', '2019-08-13 22:23:22', NULL),
(206, 'manish r patel', 39, '7874105004', NULL, 'b/h big bazzar , brahmkunj society , street no. 2 , rajkot', 6, 71, NULL, NULL, 'married', 'bussinessman', 'remove weight & maintain body', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:27:51', '2019-08-13 22:27:51', NULL),
(207, 'reena khemani', 28, '9825437141', NULL, 'maruti nagar - 2 , airport road , rajkot', 5, 69, NULL, 'by road', 'married', 'housewife', 'weight loss & body shaping', NULL, '5 to 6 pm = 1 -2 days 2morrow', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:30:37', '2019-08-13 22:30:37', NULL),
(208, 'nupur jivrajani', 26, '7600522394', 'nupur16@gmail.com', 'shri sadguru colony , a-3 / 202 , kalawad road , rajkot', 5, 65, NULL, 'shikha', 'unmarried', 'employed', 'reduce lower part', NULL, '6 - 7 pm 2 person : 2morrow , ( she is only available till feb if any discount in 3 or 6 month then let her knw )', 'Whatsapp,SMS', NULL, 'priti mam & RVR', NULL, NULL, '', '', '2019-08-13 22:36:58', '2019-08-13 22:36:58', NULL),
(209, 'nirali patel', 25, '9913176858', 'niralipatel2294@gmail.com', '101 blue lotus appartment , shree nath society , near princess school kalawad road', 6, 75, NULL, NULL, 'unmarried', 'employed', 'weight loss & stay fit', NULL, '6-7 pm', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:44:04', '2019-08-13 22:44:04', NULL),
(210, 'shruti vrajesh lalani', 28, '7984782545', NULL, 'apexa - 6B , madhuwan soc. near GEB office , rajkot', 6, 80, NULL, 'by road', 'married', 'housewife', 'fit my body', '9 month', '3 to 4 pm = 1 day', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:49:54', '2019-08-13 22:49:54', NULL),
(211, 'meghal shah', 33, '9998584455', 'meghalshahhr@gmail.com', 'shree sadguru vatika , airport road  , rajkot', 5, 56, NULL, 'internet', 'unmarried', 'employed', 'fat loss', 'nil', '8-9 am trial', 'Call', '2019-08-14', 'MZ', NULL, NULL, '', '', '2019-08-13 22:54:09', '2019-08-13 22:54:09', NULL),
(212, 'minali patel', 23, '7048651702', NULL, 'amrut nagar society -2 , near SNK school', 5, 47, NULL, NULL, 'married', 'housewife', 'only aerial yoga', NULL, 'they have 4 person available', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 22:58:02', '2019-08-13 22:58:02', NULL),
(213, 'mandeepsinh padhiyar', 19, '9408111738', NULL, 'near R World Cinema , gov. quarter , jamtower road , rajkot', 5, 85, NULL, NULL, 'unmarried', 'student', 'body shape', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-13 23:01:30', '2019-08-13 23:01:30', NULL),
(214, 'Prakash', 28, '9898989898', NULL, 'Rajkot', 174, 48, '1990-07-29', NULL, 'notselected', 'notselected', NULL, NULL, NULL, '', NULL, 'priti mam', NULL, NULL, '', '', '2019-08-16 08:36:19', '2019-08-16 08:36:19', NULL),
(215, 'pooja patel', 34, '9227777693', 'pjpt168@gmail.com', 'kasturi pride , B - 601 , panchvati main road  , beside atitthi tower', 5, 70, NULL, NULL, 'married', 'housewife', 'reduce , perfect figure , stamina', 'non', '2 days 3-4 or 4-5 pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-13 22:43:26', '2019-09-13 22:43:26', NULL),
(216, 'veena vqakhariya', 23, '7202040423', 'veena300996@gmail.com', 'ravi ratna park , uni. road , rajkot', 5, 63, NULL, NULL, 'unmarried', 'employed', 'weight loss', 'patient of PCOD', '1-3 , 6-12 monday 6-7 pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-13 22:50:16', '2019-09-13 22:50:16', NULL),
(217, 'sonal rakshit dodharia', 26, '9638984896', 'sonaldodhania7992@gmail.com', '\" RAKSHIT \" , Karan park - 2 , plot no. - 112 , opp. astron society', 5, 81, NULL, NULL, 'married', 'housewife', NULL, NULL, '2 days', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-13 22:54:05', '2019-09-13 22:54:05', NULL),
(218, 'nehal mam', 28, '9978877879', NULL, '\" DHAVAL \" vidhiya kunj society main road , near amin marg', 6, 51, NULL, 'add', 'unmarried', 'not specified', 'not fix', 'non', 'non', 'Call', NULL, 'non', NULL, NULL, '', '', '2019-09-13 23:02:05', '2019-09-13 23:02:05', NULL),
(219, 'vedsi arya', 19, '9879608137', 'vedsiarya@gmail.com', '\" ARYA VILLA \" , near neel\'s city club & prashil park  , university road , rajkot - 360005', 154, 56, NULL, 'online', 'unmarried', 'student', '50 kg', 'tail bone sprain 2 years', NULL, 'Email,Call', NULL, 'non', NULL, NULL, '', '', '2019-09-14 08:27:38', '2019-09-14 08:27:38', NULL),
(220, 'ripal ranpara', 24, '9737124194', NULL, 'raiya road', 5, 58, NULL, 'stavan patel', 'unmarried', 'employed', 'vertigo treatment , weight loss', NULL, 'non', 'Call', NULL, 'non', NULL, NULL, '', '', '2019-09-14 08:33:09', '2019-09-14 08:33:09', NULL),
(221, 'udit p sheth', 26, '9824515097', NULL, 'f/502 sadguru vatika \r\n9016504411', 6, 90, NULL, 'ashish mehta', 'unmarried', 'bussiness', 'to reduce weight', NULL, 'inq for son  , 8-9 am', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 08:37:04', '2019-09-14 08:37:04', NULL),
(222, 'jagruti d solanki', 20, '8980176546', NULL, 'jamnagar road , dharkadhish petrol pump', 5, 95, NULL, NULL, 'unmarried', 'not specified', 'weight loss', 'stone problem', 'she will cl us = 9 to 10 / 10 to 11', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 08:41:39', '2019-09-14 08:41:39', NULL),
(223, 'vishva doshi', 18, '7041130065', 'vishva303@gmail.com', '\" HANSKUTIR \" 12 kalyan society', 5, 66, NULL, 'social media', 'unmarried', 'student', 'to become fit', 'PCOS', 'non', 'Whatsapp', NULL, 'non', NULL, NULL, '', '', '2019-09-14 08:44:38', '2019-09-14 08:44:38', NULL),
(224, 'persis kakkad', 41, '9624081177', 'persiskakkad@gmail.com', 'kashi vishvanath  plot , off kasturba road , rajkot', 6, 60, NULL, NULL, 'married', 'employed', 'fitness', 'histoctamy & ankle surgery', '3 days', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 08:54:24', '2019-09-14 08:54:24', NULL),
(225, 'kajal rajanbhai kotecha', 35, '9904700487', NULL, '13/6 jagnath plot , \" SUCHENI \" , rajkot', 5, 58, NULL, NULL, 'married', 'employed', 'pragnancy yoga', 'non', 'inq for hubby also - trial call', 'Whatsapp', NULL, 'non', NULL, NULL, '', '', '2019-09-14 08:58:36', '2019-09-14 08:58:36', NULL),
(226, 'vraj ranpara', 21, '7878788739', 'vrajranpara@gmail.com', '\" SPANDAN \" janta soc - 6  , mahila collage', 5, 68, NULL, NULL, 'unmarried', 'self employed', 'weight loss', NULL, '8 to 9 am - trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:03:50', '2019-09-14 09:03:50', NULL),
(227, 'vikas sheth', 49, '9428463505', NULL, 'kalawad road , shantivan park , nr. akshar mandir', 6, 76, NULL, 'no one', 'married', 'self employed', 'to reduce abs', 'nothing', '8 to 9 pm', 'Call', NULL, 'non', NULL, NULL, '', '', '2019-09-14 09:11:36', '2019-09-14 09:11:36', NULL),
(228, 'mansi l osani', 30, '8866705816', 'mansiosani@gmail.com', '405 , karmabhoomi appartment , 15 junction plot , rajkot', 5, 104, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '4 to 5 pm = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:21:34', '2019-09-14 09:21:34', NULL),
(229, 'sona arora', 31, '9033055550', NULL, 'rajkot', 5, 64, NULL, NULL, 'married', 'housewife', 'stay fit', NULL, 'non', 'Call', NULL, 'riddhi', NULL, NULL, '', '', '2019-09-14 09:23:53', '2019-09-14 09:23:53', NULL),
(230, 'nisha parsana', 31, '9537000098', NULL, 'trisha - 2 amin marg', 5, 59, NULL, 'relative', 'married', 'housewife', 'to stay fit', NULL, '11 to 12 = 2 days', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:27:32', '2019-09-14 09:27:32', NULL),
(231, 'garima vachhani', 24, '9537000098', 'garimavachhani@gmail.com', 'rajkot', 5, 60, NULL, 'relative', 'unmarried', 'student', 'to stay fit', NULL, '11 to 12 = 2 days', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:30:07', '2019-09-14 09:30:07', NULL),
(232, 'khushi dhanesha', 20, '6351348708', 'khushi.dhanesha.kd@gmail.com', 'shreeram, shakti colony , kishanpara chowk', 5, 53, NULL, 'net', 'unmarried', 'student', 'weight loss', NULL, '5 to 6 = monday trial', 'Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:34:17', '2019-09-14 09:34:17', NULL),
(233, 'isha sejpal', 21, '9106067300', NULL, 'rajkot', 5, 63, NULL, 'net', 'unmarried', 'student', 'weight loss', NULL, '5 to 6 = monday trial', 'Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:36:06', '2019-09-14 09:36:06', NULL),
(234, 'nawshin memon', 25, '7405250129', NULL, 'subhash nagar 8B , near amrapali , raiya road , rajkot , 360007', 5, 50, NULL, 'friend', 'unmarried', 'not specified', 'to give a proper shape to body', NULL, '3 to 4 pm = monday', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-14 09:40:00', '2019-09-14 09:40:00', NULL),
(235, 'vyomesh bhai', 54, '9825284096', NULL, 'amin marg', 6, 77, NULL, NULL, 'married', 'not specified', 'not fix', NULL, 'he is going to china for a vacation 1 cl after 14th september', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-09-14 09:45:44', '2019-09-14 09:45:44', NULL),
(236, 'bhumi mayank dholaria', 30, '8980484479', NULL, 'rajkot', 5, 83, NULL, NULL, 'married', 'housewife', 'weight loss & inch loss', NULL, '11 to 12 pm next week 1 person', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-09-14 09:48:20', '2019-09-14 09:48:20', NULL),
(237, 'samir soni', 29, '9909060128', NULL, 'junagadh', 5, 65, NULL, 'google', 'unmarried', 'IT Company', 'advance  fitness & six pack abs', 'none', '8 to 9 am OR 8 to 9 pm', 'Whatsapp,Call', NULL, 'non', NULL, NULL, '', '', '2019-09-14 09:52:18', '2019-09-14 09:52:18', NULL),
(238, 'janki hiren desai', 40, '9974098604', 'jankihdesai@yahoo.com', 'A- 201 , \" SHRUSHTI APPT. \" , opp. walkhardt hospital , kalawad road , rajkot', 5, 58, NULL, NULL, 'married', 'employed', 'fitness', NULL, NULL, 'Whatsapp,Call', NULL, 'non', NULL, NULL, '', '', '2019-09-15 19:55:33', '2019-09-15 19:55:33', NULL),
(239, 'kajal j tankaria', 36, '9327752448', 'kajaltankaria@gmail.com', 'hostel', 5, 68, NULL, 'chetan bhojani', 'unmarried', 'employed', 'weight loss', 'bp - high & low , saytica', '2morrow 6-7 am trial (will join after diwali ) member at kans gym currently', 'Whatsapp,SMS,Email,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-09-15 20:03:56', '2019-09-15 20:03:56', NULL),
(240, 'dr. khyati dave', 26, '8200348206', 'khyatimdave77@gmail.com', '150 ft ring road , near jade blue , rajkot', 5, 60, NULL, NULL, 'unmarried', 'dentist', 'stay in shape', 'no', '7-8 am = mon & tue', 'SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 20:09:13', '2019-09-15 20:09:13', NULL),
(241, 'riddhi ankola', 35, '9574726222', 'riddhiankola@yahoo.com', 'prayag - B , 8th floor , shroff road , rajkot', 5, 72, NULL, NULL, 'married', 'notselected', 'to loss 14 kgs', NULL, '1-2', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 20:13:34', '2019-09-15 20:13:34', NULL),
(242, 'jalvi pambhar', 36, '9925033599', NULL, 'swami narayan temple b/h', 5, 57, NULL, 'by road', 'married', 'housewife', 'weight loss & body shaping', 'thyroid', '6 to 7 pm', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 20:24:44', '2019-09-15 20:24:44', NULL),
(243, 'dhara mayur sonwani', 27, '7567850300', NULL, '\"SATNAM\" , saurastra kala kendra , main road , between 1 & 2', 5, 70, NULL, NULL, 'married', 'housewife', 'weight loss', 'PCOD', '6 to 7 am or 9 to 10 am (will cl us for trial )', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-09-15 20:29:37', '2019-09-15 20:29:37', NULL),
(244, 'mona nirav radhanpara', 25, '7600626141', NULL, 'jayraj plot - 5/12 corner , palace road , rajkot', 4, 71, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, 'non', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 20:32:14', '2019-09-15 20:32:14', NULL),
(245, 'urvi sheth', 23, '9426202005', 'urvisheth171294@gmail.com', 'shilpan onyx , A3 -104 , 80 feet gangotri park main road , university road', 5, 65, NULL, NULL, 'unmarried', 'notselected', NULL, NULL, '8-9 - marriage dance chriography', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 20:37:52', '2019-09-15 20:37:52', NULL),
(246, 'radhika thakkar', 21, '9737595599', NULL, 'rajkot', 6, 65, NULL, NULL, 'unmarried', 'student', NULL, 'no allments', '4 to 5 pm', 'SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 20:44:21', '2019-09-15 20:44:21', NULL),
(247, 'arti kothari', 53, '9924120260', NULL, '\" PRABHAT \" 26/36 new jagnath plot , rajkot', 6, 90, NULL, 'facebook', 'married', 'housewife', 'weight loss (75 kg target)', NULL, '10 - 11 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 21:46:50', '2019-09-15 21:46:50', NULL),
(248, 'arpita joshi', 29, '7624046550', NULL, '\" AUM \" ananta society , b/h parimal school , kalawad road , rajkot', 5, 60, NULL, 'google', 'married', 'employed', 'weight loss + shappint , toning', 'non', '2 days = 11/9 & 12/9/19 , trial = 6 to 7 pm', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 21:51:49', '2019-09-15 21:51:49', NULL),
(249, 'pratik badani', 32, '9428701908', NULL, 'taksheshila society -1', 5, 95, NULL, 'tejas vala', 'married', 'employed', 'stamina buildup , fitness & reduce muscle stiffness', NULL, '8 to 9 pm = trial , tuesday', 'Whatsapp', '2015-09-19', 'priti mam', NULL, NULL, '', '', '2019-09-15 21:58:43', '2019-09-15 21:58:43', NULL),
(250, 'brinda patel', 28, '9586883815', NULL, 'alkapuri soc. , raiya road , rajkot', 6, 80, NULL, 'no', 'married', 'notselected', 'fat loss', 'c - section', '2 days after = saturday trial', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 22:24:06', '2019-09-15 22:24:06', NULL),
(251, 'vishal juvarada', 28, '9624378361', NULL, 'shree khodiyar krupa , gokuldham society , rajkot', 5, 76, NULL, 'internet', 'married', 'eng. job', 'weight loss approx. 7 to 8 kg', NULL, '2 days = 8-9 pm today', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 22:36:47', '2019-09-15 22:36:47', NULL),
(252, 'afridi sama', 21, '9925599786', NULL, 'rula palace , swasary society , rajkot', 5, 105, NULL, 'friend', 'unmarried', 'student', NULL, NULL, '7 to 8 pm = 2 person = trial , fri-sat', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 22:41:48', '2019-09-15 22:41:48', NULL),
(253, 'tulsi patel', 30, '9662333369', 'tghetia@gmail.com', '62 - samarth tower , akshar marg , amin plot', 164, 77, NULL, NULL, 'married', 'housewife', NULL, NULL, 'non', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 22:45:53', '2019-09-15 22:45:53', NULL),
(254, 'nittal patel', 45, '9429209374', NULL, 'suraj B - 2 , opp church , shroff road', 5, 72, NULL, 'relatives - rotary', 'married', 'housewife', 'fitness', NULL, 'she will inform us regarding trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 22:53:09', '2019-09-15 22:53:09', NULL),
(255, 'fatema dhankot', 23, '9727850643', 'dhankotfatema72@gmail.com', 'diwanpara street no. 18 , ezzy apartment , 4th floor , rajkot-360001', 5, 65, NULL, 'internet', 'unmarried', 'student', 'weight loss & muscle toning', NULL, '4 to 5 pm', 'Whatsapp,SMS', '2013-09-19', 'priti mam', NULL, NULL, '', '', '2019-09-15 22:58:31', '2019-09-15 22:58:31', NULL),
(256, 'priyanka dave', 35, '9099919134', NULL, 'shreepad B-6 , rukmani park, raiya road , rajkot', 5, 75, NULL, NULL, 'married', 'employed', 'weight reduction', NULL, '7 to 8 - pm / am', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 23:01:51', '2019-09-15 23:01:51', NULL),
(257, 'abha a trivedi', 29, '7874564814', 'abhatrivedi15@gmail.com', 'B - 101 , street no. - 4 , RM krishnanagar matru ashish appartment', 5, 48, NULL, NULL, 'married', 'housewife', 'body shaping & skin tightning', NULL, '3 to 4 pm = monday', 'Whatsapp,Call', '2016-09-19', 'priti mam', NULL, NULL, '', '', '2019-09-15 23:20:04', '2019-09-15 23:20:04', NULL),
(258, 'barkha sharma', 24, '9158244810', NULL, 'C wing - 103 golden portico , madhpar chowk , rajkot', 5, 80, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '5 to 6 pm = monday trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 23:26:00', '2019-09-15 23:26:00', NULL),
(259, 'umesh lavti', 46, '9825246470', NULL, '1/4 laxmiwadi , rajkot', 5, 117, NULL, NULL, 'married', 'business trading', 'weight loss', NULL, '2 days trial = 8 to 9 tue & wed', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 23:29:33', '2019-09-15 23:29:33', NULL),
(260, 'heema raval', 27, '9879943535', 'heema06@gmail.com', '\" DHARMA \" gurudev park - 2 , chandra park main road', 5, 69, NULL, 'google', 'unmarried', 'student', 'weight loss', NULL, '5 to 6 pm , mon - tue', 'Whatsapp,SMS,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-15 23:34:08', '2019-09-15 23:34:08', NULL),
(261, 'seema ajmera', 32, '9409258545', NULL, '823 takshashila society -2 , opp. star plaza , phoolchab chowk , rajkot', 5, 72, NULL, 'rupal rajani', 'married', 'housewife', 'weight & inch loss', NULL, '10 to 11 = 2morrow , demo of PT', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-16 09:42:57', '2019-09-16 09:42:57', NULL),
(262, 'ayushi lakhwani', 45, '8980070774', NULL, 'mountville farmhouses', 5, 58, NULL, NULL, 'married', 'housewife', 'fitness', NULL, '5 to 6 pm tue & wed', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-16 09:45:20', '2019-09-16 09:45:20', NULL),
(263, 'saloni sanjaybhai jadav', 20, '8160549937', NULL, 'ramnath para - 4 , rajkot', 5, 60, NULL, NULL, 'unmarried', 'student', NULL, NULL, 'non', 'Whatsapp,SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-09-16 09:48:48', '2019-09-16 09:48:48', NULL);

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
(1, 'silver', 'gt', '30', 3000.00, '1 month', 'active', NULL),
(2, 'silver', 'GT', '3 month', 7999.00, '3 month', 'active', NULL),
(3, 'silver package', 'GT', '6 month', 14999.00, '6 month', 'active', NULL),
(4, 'silver', 'GT', '12 months', 24999.00, '12 moths', 'active', NULL),
(5, 'kids package', 'GT', '1 month', 2500.00, '1 month', 'active', NULL),
(6, 'kids package', 'GT', '3 month', 6999.00, '3 month', 'active', NULL),
(7, 'kids package', 'GT', '6 month', 11500.00, '6 month', 'active', NULL),
(8, 'kids package', 'GT', '12 months', 18499.00, '12 moths', 'active', NULL),
(9, 'diet package', 'GT', '1 month', 3000.00, '1 month', 'active', NULL),
(10, 'diet package', 'GT', '3 month', 8000.00, '3 month', 'active', NULL),
(11, 'diet package', 'GT', '6 month', 13999.00, '6 month', 'active', NULL),
(12, 'personal training', 'PT', '1 month', 10500.00, '1 month', 'active', NULL),
(13, 'personal training', 'PT', '3 month', 25000.00, '3 month', 'active', NULL),
(14, 'personal training', 'PT', '6 month', 42000.00, '6 month', 'active', NULL),
(15, 'personal training', 'PT', '12 months', 71500.00, '12 moths', 'active', NULL),
(16, 'weight loss treatment', 'PT', '12 SSN', 10200.00, '12 SSN', 'active', NULL),
(17, 'Warm intensity', 'PT', '12 SSN', 10200.00, '12 SSN', 'active', NULL),
(18, 'combination treatment', 'PT', '12 SSN', 16800.00, '12 SSN', 'active', NULL),
(19, 'arm shape', 'PT', '12 SSN', 12500.00, '12 SSN', 'active', NULL),
(20, 'thigh shape', 'PT', '12 SSN', 12500.00, '12 SSN', 'active', NULL),
(21, 'breast shape', 'PT', '12 SSN', 18000.00, '12 SSN', 'active', NULL),
(22, 'curve line', 'PT', '12 SSN', 18000.00, '12 SSN', 'active', NULL),
(23, 'calf pain cure', 'PT', '12 SSN', 14400.00, '12 SSN', 'active', NULL),
(24, 'back pain cure', 'PT', '12 SSN', 14400.00, '12 SSN', 'active', NULL),
(25, 'yoga package', 'GT & PT', '1 month', 1500.00, '1 month', 'active', NULL),
(26, 'yoga package', 'G T& PT', '3 month', 3800.00, '3 month', 'active', NULL),
(27, 'yoga package', 'GT & PT', '6 month', 6499.00, '6 month', 'active', NULL),
(28, 'gold package', 'GT', '1 month', 14999.00, '24 session PT+ 4Session diet+ 3 session body composition+ 2 setting therapy', 'active', NULL),
(29, 'gold package', 'GT', '1 month', 14999.00, '24 session PT+ 4Session diet+ 3 session body composition+ 2 setting therapy', 'active', NULL),
(30, 'platinum package', 'GT', '3 month', 32999.00, '72 session PT+ 15 session diet+ 10 session body composition+ 8 setting therapy', 'active', NULL),
(31, 'premium package', 'GT', '6 month', 59999.00, '144 session PT+ 30 session diet+ 18 session body composition+ 12 seeting therapy 2 coolscupting', 'active', NULL);

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
(1, 'mzfitnezz', 'mzfitnezz@gmail.com', NULL, '$2y$12$1QLEUJpkCTKiUaE0e0ebUOAaeyCJN8wEnpGVyvP3ysKlx07zwMTym', 'l1FKUK1HsbrPTxyqaHkrNXkfRZ2ChZ0cB3nG8n81es3CrFDnXO2DALcA05WT', '2019-07-27 08:24:52', '2019-07-27 08:24:52');

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
(7, 'Stretching'),
(18, 'bollywood'),
(19, 'tabbata'),
(20, 'yoga'),
(21, 'upper body'),
(22, 'lower body'),
(23, 'abs & core'),
(24, 'circuit'),
(25, 'bokwa'),
(26, 'functional'),
(27, 'ball & stick'),
(28, 'stepper'),
(29, 'cardio');

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
(1, 'mz1 amin marg', 'rajkot', 'priti', '1234567890', '2019-12-03 23:34:58'),
(2, 'MZ2 AMIN MARG', '1ST Floor anant chaya complex,\r\nabove US catalog,\r\namin marg ,\r\nrajkot', 'priti palivar', '9909303109', NULL),
(3, 'MZ1', '1st floor sunshine arcade,\r\noppo.TGB bakery,\r\nrajkot', 'geeta mem', '9909303109', NULL),
(4, 'MZ4-PTStudio', '1st floor anant chaya complex,\r\nabove US catlog,\r\namin marg,\r\nrajkot', 'vatsal sir', '9909303109', NULL),
(5, 'MZ3', 'sadhuvasvani road,\r\noscar coplex,\r\nrajkot.', 'priyanka mem', '9228817771', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `batch_members`
--
ALTER TABLE `batch_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_schedules`
--
ALTER TABLE `employee_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_workouts`
--
ALTER TABLE `employee_workouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workouts`
--
ALTER TABLE `workouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `workplaces`
--
ALTER TABLE `workplaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

