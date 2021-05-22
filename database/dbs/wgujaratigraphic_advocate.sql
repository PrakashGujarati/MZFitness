-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2019 at 07:28 PM
-- Server version: 10.2.25-MariaDB
-- PHP Version: 7.2.7

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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `branch` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `contact`, `email`, `address`, `birth_date`, `branch`, `blood_group`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prakash Gujarati', 'Assistant Professor', '9601026377', 'gujaratiprakash@gmail.com', 'Rajkot', '1990-04-08', 'AminMarg', NULL, '2019-05-28 11:23:38', '2019-05-28 11:24:18', '2019-05-28 11:24:18'),
(2, 'ashish popat', 'Trainer', '9898729274', 'ashishpopat12@gmail.com', 'Rajkot', '1984-10-12', 'AminMarg', '+A', '2019-05-30 01:02:08', '2019-05-30 09:41:50', NULL),
(3, 'priyanka kamdar', 'trainer', '9228817771', 'priyanka@gmail.com', 'rajkot', '1989-01-31', 'branch 1', '+A', '2019-05-30 09:46:30', '2019-05-30 09:46:30', NULL),
(4, 'jagruti solanki', 'trainer', '9723790938', 'jagrutisolanki77@gmail.com', 'rajkot', '1994-05-02', 'branch 1', '+o', '2019-05-30 09:49:33', '2019-05-30 09:49:33', NULL);

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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` float(8,4) DEFAULT NULL,
  `weight` float(8,4) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `married` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updateson` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `followupby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextfollowup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servicecomment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `age`, `contact`, `email`, `address`, `height`, `weight`, `birth_date`, `reference`, `married`, `status`, `goal`, `medical`, `comments`, `updateson`, `joining_date`, `followupby`, `nextfollowup`, `remarks`, `service`, `servicecomment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prakash Gujarati', 29, '9601026377', NULL, NULL, NULL, NULL, '1990-04-08', NULL, 'married', 'housewife', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '2019-05-20 02:31:11', '2019-05-20 08:05:24', '2019-05-20 08:05:24'),
(2, 'Prakash', 29, NULL, NULL, NULL, NULL, NULL, '1990-04-30', NULL, 'married', 'housewife', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '2019-05-20 04:49:07', '2019-05-20 08:05:31', '2019-05-20 08:05:31'),
(3, 'Mulraz', 32, '9898989898', NULL, NULL, NULL, NULL, '1987-05-01', NULL, 'married', 'housewife', NULL, NULL, NULL, 'Whatsapp', NULL, NULL, NULL, NULL, 'Personal/General Training', 'Personal/General Training COmments', '2019-05-20 05:11:17', '2019-05-30 09:38:25', '2019-05-30 09:38:25'),
(4, 'dipti tank', 0, '8980805561', 'dipuchokhar90@gmail.com', 'rajkot', 6.0000, 0.9999, '2019-05-15', NULL, 'married', 'others', 'weight loss', NULL, NULL, 'Whatsapp,SMS,Email,Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-05-20 21:14:50', '2019-06-25 22:17:54', NULL),
(5, 'shyam pathak', 0, '7878573449', NULL, 'maruti nagar', 5.0000, 0.9999, '2019-05-03', NULL, 'married', 'others', 'fitness', NULL, 'mon - tue = 8-9 pm', 'Call', '2019-05-24', 'priti mam', NULL, NULL, '', '', '2019-05-20 22:26:04', '2019-05-22 09:57:40', NULL),
(6, 'nikita soni', NULL, '8120062005', NULL, 'indraprasth nagar', NULL, NULL, NULL, 'self', 'married', 'housewife', 'weight loss', 'spondiloarthritis', 'taking trial in 10-11 am today', '', NULL, 'RVR', NULL, NULL, '', '', '2019-05-20 23:06:45', '2019-05-20 23:06:45', NULL),
(7, 'trushti modi', NULL, NULL, NULL, 'nutan nagar kalawad road', NULL, 0.9999, NULL, NULL, 'unmarried', 'others', 'stamina', 'no', NULL, 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-21 04:10:05', '2019-05-21 04:10:05', NULL),
(8, 'nayna kaku', NULL, '9998728884', NULL, '46- aarya shree res b\\h speedwell party plot nr ambika township', NULL, 0.9999, NULL, 'wallking', 'married', 'housewife', 'weight loss', NULL, NULL, 'Whatsapp,Call', NULL, 'priti mam', NULL, 'tomorrow want ro trial', '', '', '2019-05-21 04:40:34', '2019-05-21 04:40:34', NULL),
(9, 'Prakash Gujarati', 28, '9601026377', 'gujaratiprakash@gmail.com', 'Rajkot', 99.9900, 0.9999, '1990-04-08', 'Dr Stavan Patel', 'notselected', 'notselected', 'Weight Gain', 'Nil', 'Nil', 'Whatsapp,SMS,Email,Call', '2019-06-01', 'Mulrazsinh', 'Jun', 'Dia Plan Suggestions for Weight Gain', 'Personal/General Training,Stamina Batch', 'Pushups and Seat and Stand up|Dia Plan Suggestions for Weight Gain', '2019-05-22 03:58:35', '2019-05-30 09:38:52', '2019-05-30 09:38:52'),
(10, 'rohan', 0, '1122556687', 'srutvik9@gmail.com', 'sadffasdkljfaslkjdlj', 45.0000, 123.0000, '2019-03-15', 'dskjdshfkhdsk', 'unmarried', 'others', 'to fit', 'nothing', 'no comments', 'Whatsapp', '2019-03-14', 'jhadsfkashk', 'kjdhfkjs', 'lkdajfljsaljfla', 'Only Diet Sessions', 'hjaslfasd', '2019-05-24 08:12:34', '2019-05-30 09:38:04', '2019-05-30 09:38:04'),
(11, 'ram', 0, '4564544646', 'srutvik9@gmail.com', 'ljdlkfjdksl', 6.0000, 72.0000, '2019-04-17', 'dadfad', 'unmarried', 'student', 'to fit', 'nothing', 'no comments', 'Whatsapp,Email', '2019-05-25', 'adfdsff', 'fkhjsadhfkjs', 'dafdsnhkjfhk', 'Inch-Loss Therapy', 'djskhfkds', '2019-05-24 08:24:27', '2019-05-24 09:31:28', '2019-05-24 09:31:28'),
(12, 'harita pravinbhai lunagariya', 29, '7405108080', 'haritalunagariya2@gmail.com', 'C - 101 , silver heights , nana mava circle , 150 ft. ring road rajkot.', 5.2000, 51.0000, '1989-06-23', 'online', 'unmarried', NULL, 'thigh & hip toning', NULL, '9 -10 am', 'Whatsapp,SMS,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-24 08:46:46', '2019-05-24 08:46:46', NULL),
(13, 'kdj', 32, '9510162532', 'fabticmedia@gmail.com', 'rwqrwwqw', 5.3000, 65.0000, NULL, 'priyanka mam', 'notselected', 'notselected', NULL, 'low blood pressure', NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-24 09:30:11', '2019-05-24 09:30:11', NULL),
(14, 'nupur vadaliya', 74, '9687989892', NULL, 'govindrartna villa near nana moava', 172.0000, 74.0000, NULL, 'ralative', 'notselected', 'student', NULL, NULL, NULL, 'Whatsapp', NULL, 'ridhi', NULL, NULL, '', '', '2019-05-27 23:41:41', '2019-05-27 23:41:41', NULL),
(15, 'nidhi padalia', 24, '8140410166', 'nidhi.ramani90@gmail.com', '702 \' rishikesh exotica , 150 ft. ring rd. rajkot', 5.3000, 56.0000, NULL, 'banner', 'married', 'housewife', 'weight loss & body toning', NULL, 'trial 2nd june after', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 09:00:38', '2019-05-28 09:00:38', NULL),
(16, 'nidhi padalia', 24, '8140410166', 'nidhi.ramani90@gmail.com', '702 \' rishikesh exotica , 150 ft. ring rd. rajkot', 5.3000, 56.0000, NULL, 'banner', 'married', 'housewife', 'weight loss & body toning', NULL, 'trial 2nd june after', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 09:00:40', '2019-05-28 09:01:29', '2019-05-28 09:01:29'),
(17, 'nancy nan mommin', 27, '8078677480', 'gmanita66@yahoo.in', 'rajkot gujrat', 5.3000, 70.0000, NULL, 'self', 'unmarried', 'employed', 'weight loss', NULL, 'will cl for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-05-28 09:20:40', '2019-05-28 09:20:40', NULL),
(18, 'nirali  sautoki', 20, '9913531125', NULL, 'rajkot', 5.2000, 45.0000, NULL, 'google', 'unmarried', 'student', 'fitness', NULL, '6 to 7 pm  2morrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 09:27:05', '2019-05-28 09:27:05', NULL),
(19, 'jaymin pobari', 24, '7383488646', 'jaymin.pobari@gmail.com', 'yagnik road', 5.9000, 24.0000, NULL, 'walking ( rishikesh )', 'unmarried', 'notselected', '10 kg weight loss', NULL, 'he will cl for trial , send all flyer on whats app', 'Whatsapp,SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 09:38:24', '2019-05-28 09:38:24', NULL),
(20, 'nikita rathod', 24, '9913212958', NULL, '\" MANIDEEP\" sitaram print , maruti nagar , pedak road rajkot 360003', 5.3000, 39.0000, NULL, 'lina mam', 'unmarried', 'student', '55 kg', 'seeing dr. arvind vikani', NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 09:44:52', '2019-05-28 09:44:52', NULL),
(21, 'jagruti koradia', 42, '9904022975', 'jagruti.koradia@tges.org', 'diamond residency  - sadhuvasvani road , near gitanjali college', 5.4000, 80.0000, NULL, 'online', 'married', 'teacher', 'lose weight & stemina', 'bp', '1 month monday joining', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-28 22:56:23', '2019-05-28 22:56:23', NULL),
(22, 'dr. ravi ketecha', 24, '9429586561', NULL, 'rajkot', 5.4000, 55.0000, NULL, NULL, 'unmarried', NULL, 'fitness & reduction', NULL, 'will cl us to come for trial', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-05-28 23:00:51', '2019-05-28 23:00:51', NULL),
(23, 'nisihit desai', 36, '9879599133', 'nisheshd@hdfclife.com', '\" SAMAHI \" 4 - ramkrishna nagar', 6.0000, 65.0000, NULL, 'jagruti solanki', 'married', 'employed', 'fitness', 'spine - surgery LS - S1', '1 year = mon - tue - wed trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-05-29 08:15:35', '2019-05-29 08:15:35', NULL),
(24, 'khushbu r sabhad', 17, '9824333337', 'khushbusabhad8@gmail.com', 'sant kabir road , brommiya pasa 10/11 , rajkot - 360001', 5.4000, 50.0000, NULL, 'siddhi', 'unmarried', 'student', 'weight loss', NULL, '5-6 pm trial sat & mon', 'Email', NULL, 'RVR', NULL, NULL, '', '', '2019-05-29 08:21:57', '2019-05-29 08:21:57', NULL),
(25, 'dr. devanshi dave', 29, '9428995991', NULL, '\" JAY \" , amin marg , near payal dairy , rajkot', 5.3000, 85.0000, NULL, 'by road', 'notselected', 'gynecologiest', 'weight loss & stay fit', NULL, '6-7 am trial - 2 person ,monday', 'Whatsapp,SMS', NULL, 'priti', NULL, NULL, '', '', '2019-06-13 22:27:51', '2019-06-13 22:27:51', NULL),
(26, 'nidhi benani', 29, '9033198746', NULL, '\" SHIV - NIVAS \" , 6- raghuvir para , dhebar road , rajkot', 5.3000, 42.0000, NULL, 'online search', 'married', 'employed', 'fitness', NULL, '2 days trial = 7-8 pm', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-13 22:33:56', '2019-06-13 22:33:56', NULL),
(27, 'dilip solanki', 35, '8200370058', 'dmsolanki@gmail.com', 'Gadhiya nagar society , stree no. 2 , sant kabir road , rajkot', 5.9000, 56.0000, NULL, NULL, 'unmarried', NULL, NULL, NULL, NULL, 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-13 22:44:05', '2019-06-13 22:44:05', NULL),
(28, 'bhavik m ambani', 24, '8000356070', NULL, '\" VARODARAN \", mehul nagar - st no. - 3 , b/h nilkanth cinima , rajkot', 5.6000, 74.0000, NULL, NULL, 'unmarried', 'employed', 'weight loss', NULL, 'monday 8-9pm convenient', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-06-13 22:50:39', '2019-06-13 22:50:39', NULL),
(29, 'avadh kakkad', 19, '9099039555', 'avadhk1999@gmail.com', '\"SHREE KAMNATH \" b/h panchvati hall ,panchratna park -1 , rajkot , gujrat', 6.1000, 105.0000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, NULL, 'Whatsapp', NULL, 'priti', NULL, NULL, '', '', '2019-06-13 22:56:11', '2019-06-13 22:56:11', NULL),
(30, 'kaushal makadia', 18, '8758447471', 'kaushalmakadia123@gmail.com', 'B - 504 , rani tower , kalawad road , rajkot -360005', 5.7000, 70.0000, NULL, 'vishal kacharia', 'unmarried', 'student', 'weight loss & body shaping', NULL, '2 days = 8-9 am', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-13 23:03:53', '2019-06-13 23:03:53', NULL),
(31, 'shaileshbhai patel', 50, '9824906336', NULL, '22 , new jagnath , plot 30 vidhyabhavan society , rajkot', 5.1000, 94.0000, NULL, NULL, 'married', 'employed', 'weight loss', 'BP 90 - 140', 'trial = tue - wed', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 08:40:47', '2019-06-14 08:40:47', NULL),
(32, 'radha barbhaya', 27, '9638215583', NULL, '\"shreeji niwas \" block no. 110 , vrundavan society , opp. nyari filter plant , kalawad road , rajkot', 5.4000, 63.5000, NULL, 'by group', 'unmarried', 'nothing', 'reduce weight', NULL, 'trial 6-7 pm', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 08:45:08', '2019-06-14 08:45:08', NULL),
(33, 'parry parsana', 31, '9662988448', NULL, '\" CHAITANYA \" , silverstone 3 , opp. bigbazar , rajkot', 5.4000, 81.0000, NULL, 'friends', 'married', 'housewife', 'weight loss', NULL, 'trial = 2morrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 21:11:52', '2019-06-14 21:11:52', NULL),
(34, 'komal parmar', 22, '9909601996', 'komalparmar125@gmail.com', 'jamnagar road , rajkot', 5.3000, 56.5000, NULL, 'online search', 'married', 'student', 'weight loss by 5 kgs', NULL, '10 - 11 = 2morrow trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 21:17:22', '2019-06-14 21:17:22', NULL),
(35, 'priya barbhaya', 21, '7600075748', 'priya.barbhaya@yahoo.com', '\" DHARMA - BHAKTI \" prahlad plot 27/43 , rajkot', 5.1000, 63.5000, NULL, NULL, 'married', 'student', 'body shaping & overall fitness', NULL, '4-5 pm = 2morrow', 'Whatsapp,Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-14 21:25:16', '2019-06-14 21:25:16', NULL),
(36, 'priya sorathiya', 25, '9737377704', 'pia.patel11110@gmail.com', '\" MEET \" , 8 tapovan society , amin marg ,rajkot -360004', 5.2000, 55.7000, NULL, 'by road', 'married', 'employed', 'weight loss', NULL, '7-8 am mz-2 15/6/19 saturday', 'Whatsapp', '2019-06-15', 'priti mam', NULL, NULL, '', '', '2019-06-14 22:22:39', '2019-06-14 22:22:39', NULL),
(37, 'dhwani patel', 25, '9727716281', 'DDG.patel@gmail.com', 'amin marg , rajkot - 360004', 5.2000, 57.0000, NULL, 'by road', 'married', 'employed', 'weight loss', NULL, '7-8 am mz-2 15/6/19 saturday', 'Whatsapp', '2019-06-15', 'priti mam', NULL, NULL, '', '', '2019-06-14 22:51:38', '2019-06-14 22:51:38', NULL),
(38, 'brijesh a ranpara', 22, '8200577459', NULL, '\" RAMESHWAR \"vardhman nagar 6 , palace road , rajkot', 5.6000, 63.0000, NULL, NULL, 'unmarried', NULL, 'fit & fine body', 'non', 'non', 'Call', NULL, 'pr', NULL, NULL, '', '', '2019-06-17 09:55:34', '2019-06-17 09:55:34', NULL),
(39, 'atikant jain', 28, '9971685952', NULL, '129/14 gurugram , haryana ,122001', 5.9000, 80.0000, NULL, NULL, 'unmarried', 'employed', '75 kg with shaping & toning', NULL, '8 to 9 pm 2 days trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 21:11:52', '2019-06-18 21:11:52', NULL),
(40, 'radhika dedania', 19, '9512244084', 'radhika.dedania17@gmail.com', '801 - A , rudraksh appt. , shree colony , near parnakuti society , saurashtra high school , main road', 76.9000, 76.9000, NULL, 'vanshita', 'unmarried', 'student', 'reduce weight', NULL, '8-9 am trial 12 /6 & 14/6', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 21:44:08', '2019-06-18 21:44:08', NULL),
(41, 'radhika dedania', 19, '9512244084', 'radhika.dedania17@gmail.com', '801 - A , rudraksh appt. , shree colony , near parnakuti society , saurashtra high school , main road', 76.9000, 76.9000, NULL, 'vanshita', 'unmarried', 'student', 'reduce weight', NULL, '8-9 am trial 12 /6 & 14/6', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 21:44:13', '2019-06-18 21:44:13', NULL),
(42, 'pooja kotak', 30, '9978650225', NULL, 'm 142 , gujarat housing board , amin marg , rajkot', 5.3000, 43.0000, NULL, NULL, 'unmarried', 'employed', 'fitness', NULL, '4-5 = tomorrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 21:47:48', '2019-06-18 21:47:48', NULL),
(43, 'neha bhavsar', 30, '9601694435', NULL, 'm 143 , gujarat housing board , amin marg ,rajkot', 5.3000, 44.0000, NULL, NULL, 'unmarried', 'employed', 'fitness', NULL, '4-5 = tomorrow', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 21:51:12', '2019-06-18 21:51:12', NULL),
(44, 'chandra', 20, '9638267070', NULL, 'Tirthbhumi app. atithi chowk , atithi chowk , panchhvati main road , rajkot', 5.0000, 48.0000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '6-7 am trial 2morrow or day after', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 21:59:21', '2019-06-18 21:59:21', NULL),
(45, 'kajal pankaj', 50, '9925188950', NULL, '2 - bansi park , amin marg , rajkot', 5.0000, 81.0000, NULL, NULL, 'married', 'housewife', 'weight loss', 'sycitica , neck problem', '10 - 11 am trial 2morrow', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-18 22:05:16', '2019-06-18 22:05:16', NULL),
(46, 'parul darshit dhaduk', 30, '7878800008', NULL, '\" PAVAN \" shree colony soc. , saurashtra high school road , kalawad road , rajkot', 5.2000, 78.0000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '15 th june', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-18 22:10:18', '2019-06-18 22:10:18', NULL),
(47, 'jay m joshi', 21, '9638253071', 'jay2361997@gmail.com', '\" JAY \" 2 - narmada park , amin marg , rajkot', 5.7000, 98.0000, NULL, 'advertisment', 'unmarried', 'student', '75 kgs', NULL, 'will cl for trial', 'Whatsapp', NULL, 'pr', NULL, NULL, '', '', '2019-06-18 22:14:56', '2019-06-18 22:14:56', NULL),
(48, 'riya sanghvi', 16, '8200269171', NULL, '\" JAGDISH \" , 18 sardarnagar main road , near poojara telecom', 5.1000, 52.0000, NULL, NULL, 'unmarried', 'student', 'flexibility', NULL, '6-7 pm , tomorrow trial  20/6', 'Whatsapp,Call', '2020-06-19', 'priti mam', NULL, NULL, '', '', '2019-06-19 21:13:36', '2019-06-19 21:13:36', NULL),
(49, 'beenaben ajaybhai dangar', 30, '9924477666', NULL, '\" SAGAR \" bhomeshwar soc. main road , b/h press colony , jamnagar road , rajkot - 360006', 5.8000, 90.0000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '3-4 pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 21:17:33', '2019-06-19 21:17:33', NULL),
(50, 'prachi patel', 29, '9898553383', 'prachisinojiya@gmail.com', 'k - 2 , 201 , kevalam park , ambika township , rajkot', 5.1000, 49.0000, NULL, NULL, 'married', 'employed', 'fitness', NULL, '5 - 6 pm -20/6 & 21/6', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 21:27:26', '2019-06-19 21:27:26', NULL),
(51, 'sumita vijaybhai vekariya', 41, '9687174029', NULL, 'fulvadi park main road , satyasai road , rajkot', 5.4000, 71.3000, NULL, NULL, 'married', 'housewife', NULL, NULL, '4 - 5 pm trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 21:50:15', '2019-06-19 21:50:15', NULL),
(52, 'sumita vijaybhai vekariya', 41, '9687174029', NULL, 'fulvadi park main road , satyasai road , rajkot', 5.4000, 71.3000, NULL, NULL, 'married', 'housewife', NULL, NULL, '4 - 5 pm trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-19 21:50:16', '2019-06-19 21:50:16', NULL),
(53, 'arvind d dangar', 38, '9898989847', NULL, 'amin marg , gujarat housing board society  , street no. 6', 8.8000, 103.0000, NULL, NULL, 'married', 'employed', 'weight loss', NULL, '6 - 7 am trial - 20/6', '', NULL, 'RVR', NULL, NULL, '', '', '2019-06-19 21:55:36', '2019-06-19 21:55:36', NULL),
(54, 'sheetal buddhdev', 38, '9081076262', NULL, 'limdavadi main road \" kashish \" kalawad road rajkot', 5.4000, 73.0000, NULL, NULL, 'married', 'housewife', '10 kg weight loss', NULL, 'non', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-21 00:04:16', '2019-06-21 00:04:16', NULL),
(55, 'parvinder singh', 21, '8882345991', 'parvinderdove@gmail.com', 'launge boys hostel , kkv', 5.4000, 80.0000, NULL, 'atmiya clg', 'unmarried', 'student', 'weight loss', NULL, '7 to 8 pm trial today (21 -6-19)', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-21 00:09:53', '2019-06-21 00:09:53', NULL),
(56, 'dr. neepa c dholakia', 32, '9979500627', 'neepashah@gmail.com', 'c - 101 gold stone , opp. pramukhswami auditorium , raiya road , rajkot', 4.1100, 67.0000, NULL, 'self', 'married', 'doctor', 'reduce weight', 'obese', '4 - 5 pm trial', 'Whatsapp', NULL, 'mz', NULL, NULL, '', '', '2019-06-21 00:16:50', '2019-06-21 00:16:50', NULL),
(57, 'goral mehta', 28, '9909692359', NULL, '90 kotecha nagar , b/s kotecha girls school , amin marg', 5.7000, 60.0000, NULL, NULL, 'unmarried', 'employed', 'fitness', NULL, 'cl her for yoga certification', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-21 00:20:45', '2019-06-21 00:20:45', NULL),
(58, 'ravina markana / kinjal patel', 26, '9687377095', NULL, '\" KOHINOOR \" , opp. efil tower , kalawad road , rajkot  /\r\nbhakti nagar rajkot', 5.5000, 52.0000, NULL, NULL, 'married', 'employed', 'weight loss', NULL, 'trial regarding talk to kinjal', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-21 21:47:01', '2019-06-21 21:47:01', NULL),
(59, 'dolly manek', 31, '9909904204', NULL, '\" A - 102 \" , 24 CARAT , nr.  IOC colony , b/h crystal mall , kalawad road', 5.4000, 69.0000, NULL, NULL, 'unmarried', 'freelancing', 'inch loss', NULL, 'mon & tue - trial- 5 to 6 pm', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-21 21:58:56', '2019-06-21 21:58:56', NULL),
(60, 'rajiv parekh', 36, '9099923010', NULL, '401, oscar tower', 5.1100, 87.0000, NULL, NULL, 'married', 'employed', 'weight loss', NULL, '8-9 pm  = tue =trial - 1 person', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-23 21:21:49', '2019-06-23 21:21:49', NULL),
(61, 'amita p dodiya', 26, '9773220094', NULL, 'university road , rajkot', 5.6000, 66.3000, NULL, 'own', 'unmarried', 'student', 'weight loss', NULL, '6 - 7 am = trial = july - 1st join', 'Call', '2019-07-01', 'priti mam', NULL, NULL, '', '', '2019-06-23 21:26:05', '2019-06-23 21:26:05', NULL),
(62, 'bansi s parsana', 21, '9662906542', 'bansi.parsana43@gmail.com', 'savan , ranchod nagar', 5.4000, 74.0000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '10 - 11 am monday', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-23 21:39:08', '2019-06-23 21:39:08', NULL),
(63, 'maya l vadoliya', 21, '6354442798', 'mayavadoliya11@gmail.com', 'satyasai hospital , narayan nagar , street no :- 2 , kalawad road , rajkot', 5.2000, 62.0000, NULL, NULL, 'unmarried', 'student', 'weight loss & body shaping', NULL, 'mon - tue = 7 to 8 pm', 'SMS', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-23 22:17:35', '2019-06-23 22:17:35', NULL),
(64, 'dr. shweta trivedi', 29, '9901442630', 'drshweta220420@gmail.com', '17/18 , \" TRISHA BUNGLOWS 1 \" new chandan super market , amin marg', 5.4000, 56.0000, NULL, 'dr. amee mehta', 'married', 'doctor', 'prenatal yoga', 'nil', 'she will start from 1st july , before that she will come to meet mz', 'Whatsapp,Call', NULL, 'mz', NULL, NULL, '', '', '2019-06-23 22:32:54', '2019-06-23 22:32:54', NULL),
(65, 'jhanvi pattni', 21, '7048632325', 'jhanvipattni98@gmail.com', '\" Trilok \" , janta society , 1/11 , block no. 99 , tagore road , rajkot', 5.1000, 74.0000, NULL, NULL, 'unmarried', 'student', NULL, NULL, 'non', 'Call', NULL, 'gita mam', NULL, NULL, '', '', '2019-06-25 23:05:28', '2019-06-25 23:05:28', NULL),
(66, 'juhi karia', 21, '7878035469', 'juhikaria17598@gmail.com', '\" JUHI \" , airport road , sankalp siddhi park , rajkot - 360007', 5.0000, 57.0000, NULL, NULL, 'unmarried', 'student', '50', NULL, 'non', 'Call', NULL, 'gita mam', NULL, NULL, '', '', '2019-06-25 23:13:49', '2019-06-25 23:13:49', NULL),
(67, 'palak gupta', 15, '9773486657', 'omprakash9032@gmail.com', '\" SHYAM\" amrut park - 3 , amin marg road , rajkot', 5.4000, 74.0000, NULL, 'nistha di', 'unmarried', 'student', 'fitness', NULL, 'non', 'Call', NULL, 'gita mam', NULL, NULL, '', '', '2019-06-25 23:18:45', '2019-06-25 23:18:45', NULL),
(68, 'komal vithalani', 31, '9924640616', NULL, '302 , vraj vallabh - 2 , 11/15 B , manhar plot , near mangla road , rajkot', 5.4000, 80.0000, NULL, 'google', 'married', 'housewife', 'weight loss', NULL, 'tomorrow 1 call to know decision', 'Call', NULL, 'priti', NULL, NULL, '', '', '2019-06-25 23:23:15', '2019-06-25 23:23:15', NULL),
(69, 'khyati k dodiya', 21, '6354113829', 'khyatidodiya9@gmail.com', 'mavdi main road , gunatet nagar street no -10 , rajkot', 5.0000, 64.7000, NULL, 'friends', 'married', 'infd', 'weight loss', NULL, '4 - 5 pm = today = will come & 2morrow join', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-06-25 23:35:09', '2019-06-25 23:41:04', '2019-06-25 23:41:04'),
(70, 'khyati k dodiya', 21, '6354113829', 'khyatidodiya9@gmail.com', 'mavdi main road , gunatet nagar street no -10 , rajkot', 5.0000, 64.7000, NULL, 'friends', 'married', 'infd', 'weight loss', NULL, '4 - 5 pm = today = will come & 2morrow join', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:35:11', '2019-06-25 23:41:19', NULL),
(71, 'jignesh dhandhukiya', 27, '9624211111', 'j.dhandhukiya@gmail.com', '\" GURUKRUPA \" , krishna nagar , n/r radha nagar , nana mava road', 5.8000, 81.0000, NULL, NULL, 'married', 'employed', 'fitness & weight loss', NULL, '6-7  - 6 month - payment', 'Whatsapp,SMS,Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:40:44', '2019-06-25 23:40:44', NULL),
(72, 'chandan k gohel', 41, '9909137037', NULL, 'arnish grand apartment , block no. - 701 , 150 ft ring road , near old reliance mall , rajkot', 5.3000, 80.0000, NULL, NULL, 'married', 'housewife', 'weight loss', 'bp', NULL, 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:45:15', '2019-06-25 23:45:15', NULL),
(73, 'meera patel', 43, '9909992793', NULL, '801 , arnish grand , jalaram - 2 , 150 ft ring road , rajkot', 5.6000, 78.0000, NULL, NULL, 'married', 'housewife', 'fitness & weight loss', NULL, 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:48:14', '2019-06-25 23:48:14', NULL),
(74, 'ruchi patel', 27, '8160292814', NULL, 'rajkot', 5.4000, 83.0000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '10 - 11 pm 1 - days = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:50:28', '2019-06-25 23:50:28', NULL),
(75, 'shefali soni', 21, '8140833118', NULL, '\" PREM \" , 1 karan park , opp. astron society , vidhyut nagar main road , rajkot', 5.4000, 83.0000, NULL, 'friends', 'married', 'student', 'weight loss', NULL, '4 to 5 pm , wed she want to join', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:55:52', '2019-06-25 23:55:52', NULL),
(76, 'tanvi sanjay karia', 17, '9428835400', NULL, '102 - sakar flat , jalaram plot - 2 , street -5 , indira circle , rajkot', 5.2000, 50.0000, NULL, NULL, 'unmarried', 'student', 'fitness', NULL, NULL, 'SMS,Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-25 23:59:25', '2019-06-25 23:59:25', NULL),
(77, 'divyam sir', 23, '9586988810', NULL, 's.k chowk , gandhi gram', 5.1000, 82.0000, NULL, NULL, 'unmarried', NULL, 'fitness & weight loss', NULL, 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 00:09:38', '2019-06-26 00:09:38', NULL),
(78, 'bhavana lodhiya', 50, '9924161026', NULL, '\" VRAJRAJ \", plot no. - 65 , nutan nagar -6 , kalawad road , rajkot', 5.3000, 65.0000, NULL, NULL, 'married', 'housewife', 'fitness', 'joint pain', '10 -11 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 21:14:08', '2019-06-26 21:14:08', NULL),
(79, 'rucha jay shukla', 27, '7069853153', 'riyusmartlook@gmail.com', '\" AVADH \" , Alka society ,balaji hall near , rajkot', 5.4000, 55.0000, NULL, 'priyanka', 'married', 'employed', 'lose weight', NULL, '3 - 4 pm = 27/6 trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 21:19:07', '2019-06-26 21:19:07', NULL),
(80, 'dr. khyati a pansuriya', 35, '9904939747', 'khyatiborad84@gmail.com', '33 , satellite park , sadhu vaswani road , near patidar chowk , rajkot', 5.2000, 74.4000, NULL, NULL, 'married', 'employed', '60 kg target weight', NULL, '10 - 11 am = trial = 5th july', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 21:27:06', '2019-06-26 21:27:06', NULL),
(81, 'sangita nayan ratanpara', 39, '9408751033', NULL, '\" MEGHNAYAN \" , michi\'s restaurant street  , university road , rajkot 360005', 5.3000, 66.0000, NULL, NULL, 'married', 'housewife', 'weight loss & body shaping', NULL, 'tomorrow 1 call to know decision', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 21:31:18', '2019-06-26 21:31:18', NULL),
(82, 'sejal kalavadia', 37, '9428279191', NULL, '602 / shilabdh tower , near panchayat nagar , university road , rajkot', 5.4000, 65.0000, NULL, NULL, 'married', 'housewife', 'fitness , weight loss & relaxation', NULL, '6 - pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-26 21:59:49', '2019-06-26 21:59:49', NULL),
(83, 'payal pratik ranpara', 26, '9638925656', 'payal2709@gmail.com', '\" PALNA \" , 22/51 prahlad plot , digvijay main road , rajkot', 5.3000, 73.3000, NULL, 'hetal mam', 'married', 'housewife', '15 kg weight loss', 'starting phase of PCOD', 'diet 1 month', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 19:41:34', '2019-06-30 19:41:34', NULL),
(84, 'vijay chavda', 24, '9528109999', 'vijayahir0001@gmail.com', '150 ft ring road , labhdeep society , rajkot', 5.4000, 65.0000, NULL, NULL, 'unmarried', 'student', 'weight loss & stay fit', NULL, '8 - 9 pm - mon - tue trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 19:46:52', '2019-06-30 19:46:52', NULL),
(85, 'aditya nanekar', 32, '9168045757', 'adi.nanekar@gmail.com', 'jalaram - 3 , nr. indira circle , rajkot', 5.4000, 68.0000, NULL, NULL, 'married', 'employed', 'fitness/ six pack', NULL, '2 - person = trial = 8 to 9 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 19:50:54', '2019-06-30 19:50:54', NULL),
(86, 'ram bhetariya', 25, '7621041761', NULL, '150 ft ring road , raiya exchange , rajkot', 5.4000, 45.0000, NULL, NULL, 'unmarried', 'student', 'stay fit', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-06-30 20:03:01', '2019-06-30 20:03:01', NULL),
(87, 'krupa a vadgama', 24, '9328651322', 'krupagajjar96@gmail.com', 'non', 5.2000, 55.0000, NULL, NULL, 'unmarried', NULL, NULL, NULL, 'trial monday 8 to 9 am', 'Whatsapp', NULL, 'mz', NULL, NULL, '', '', '2019-06-30 20:07:29', '2019-06-30 20:07:29', NULL),
(88, 'sangeeta mehta', 34, '9979650291', 'sangeeta..mehta1603@gmail.com', 'dharmjivan - madhuram hospital', 5.2000, 52.0000, NULL, 'frnd', 'married', 'housewife', 'fitness', NULL, '3-4 pm yesterday', 'Whatsapp,SMS,Call', '2019-07-01', 'priti mam', NULL, NULL, '', '', '2019-07-01 22:12:42', '2019-07-01 22:12:42', NULL),
(89, 'foram d bhatt', 18, '8758989184', NULL, 'palm city E - 1 , flat no. - 102 , opp vidhyaniketan school , near patidar chowk , sadhuvasvani road , rajkot', 5.1000, 45.0000, NULL, 'self', 'unmarried', 'student', 'fitness', NULL, '5-6 pm 1 month , early joining process', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 22:17:49', '2019-07-01 22:17:49', NULL),
(90, 'neetaben amrutlal dholariya', 52, '9925045992', NULL, '\" NEELAM \" 2 - indraprasth nagar , akshar marg, rajkot', 5.3000, 79.0000, NULL, NULL, 'married', 'housewife', NULL, 'bp', '7-8 pm', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 22:23:42', '2019-07-01 22:23:42', NULL),
(91, 'nishant chandarana', 22, '7359355599', 'chandaranan@gmail.com', 'j - cliff appt.flat no. 701 , race course', 5.4000, 122.0000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, 'fri - sat = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 22:37:48', '2019-07-01 22:38:24', NULL),
(92, 'aditi shukla', 24, '9427221134', '111aditishukla@gmail.com', '\" VEDMATA \" sardarnagar 9 , block no. - 36/c, kalawad road , rajkot', 5.5000, 72.0000, NULL, 'website', 'married', 'housewife', '62 kg', 'cholestrol , thyroid, back problem , may - misscariage', '8 - 9 am = trial', 'Email', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-01 22:44:09', '2019-07-01 22:44:09', NULL),
(93, 'chandani sheth', 34, '9974311100', NULL, 'non', 5.1000, 59.0000, NULL, NULL, 'married', 'self employed', '55 kg', '2 C - sections', '9 - 10 am 2morrow', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-01 22:47:26', '2019-07-01 22:47:26', NULL),
(94, 'chandani sheth', 34, '9974311100', NULL, 'non', 5.1000, 59.0000, NULL, NULL, 'married', 'self employed', '55 kg', '2 C - sections', '9 - 10 am 2morrow', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-01 22:47:32', '2019-07-01 22:47:32', NULL),
(95, 'ripal v akbari', 24, '8758474741', NULL, '\" SHREE \" , silver stone - 1 , street no - 3 , near , oskar tower , rajkot', 5.3000, 50.0000, NULL, NULL, 'married', 'housewife', 'for fitness', NULL, '10 - 11 = 2morrow trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-02 09:50:39', '2019-07-02 09:50:39', NULL),
(96, 'riya  / janvi', 22, '7600796231', NULL, '202 , shilabkh tower , panchayat bus stop , university road , rajkot', 5.1000, 46.0000, NULL, NULL, 'unmarried', 'student', 'weight gain / body shaping', 'janvi\'s weight = 49', '10 - 11 or 11 -12 = 2morrow = trial', 'SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-02 09:56:39', '2019-07-02 09:56:39', NULL),
(97, 'foram shah', 28, '9426548314', 'foramshah12@gmail.com', '401 - omega tower, opp. babyland school, kalawad road .', 5.1000, 57.0000, NULL, 'mansi tanna', 'married', 'housewife', 'shaping & toning', NULL, '5 - 6 pm', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-03 09:44:55', '2019-07-03 09:44:55', NULL),
(98, 'dixita', 26, '7572888899', 'dixitadesai.93@gmail.com', '\" AUM \" , amin marg', 5.3000, 45.0000, NULL, 'by road', 'married', 'employed', 'fitness & gain', NULL, '10 to 11 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-03 09:52:53', '2019-07-03 09:52:53', NULL),
(99, 'varsha jasmin savalia', 43, '7359100069', 'crown.int@hotmail.com', '\" VRINDAVAN \" 37 , shree colony society', 5.1000, 61.0000, NULL, NULL, 'married', 'bussiness woman', 'reduce weight & perfect shaping', NULL, '6 to 7 am = 2morrow she will come joining', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-03 10:02:36', '2019-07-03 10:02:36', NULL),
(100, 'vandna mam / charu mirani', 49, '9898202220', NULL, 'amin marg', 5.1000, 66.0000, NULL, 'manan & niyati', 'married', 'housewife', 'weight loss & stay fit', NULL, '8 - 9am 2morrow = trial - 2 person', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-03 10:10:31', '2019-07-03 10:10:31', NULL),
(101, 'archana rawat', 32, '7698595133', 'archanarawat1907@gmail.com', 'krishna international school , bhavnagar road , aaji dam .', 5.2000, 69.0000, NULL, NULL, 'married', 'housewife', 'fitness', NULL, 'monday trial', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-04 20:39:15', '2019-07-04 20:39:15', NULL),
(102, 'sagar e chauhan', 20, '8347944860', 'sagarchauhan459@gmail.com', '306 , kabra house , chala , vapi', 5.7000, 79.0000, NULL, NULL, 'unmarried', 'student', 'fitness', NULL, 'sat - mon - trial = 7-8 pm', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-04 20:43:03', '2019-07-04 20:43:03', NULL),
(103, 'dhaval shah', 25, '7575070054', 'shah87233@gmail.com', '22 - new jagnath plot .', 5.4000, 92.0000, NULL, 'by road', 'unmarried', 'self employed', 'lose belly fat', NULL, '17 days', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-04 20:47:12', '2019-07-04 20:47:12', NULL),
(104, 'dipesh shukla', 22, '8238235530', NULL, '1/4 rampark society , near RMC swimming pool', 5.3000, 85.0000, NULL, NULL, 'unmarried', 'student', 'weight loss & loss belly fat', NULL, 'mon & tue - 2 person - trial = 8 - 9 pm', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-04 20:57:18', '2019-07-04 20:57:18', NULL),
(105, 'mansi vedia', 22, '7621857561', NULL, 'laxmivadi - 7/9 corner , near bolbala temple , rajkot', 5.2000, 47.0000, NULL, NULL, 'unmarried', 'business woman', 'weight gain - 55 kg', 'non', '4 -5 pm', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-04 21:25:46', '2019-07-04 21:25:46', NULL),
(106, 'mayur dholakia', 25, '9737480361', 'mayurdholakiya24@gmail.com', 'nilkanth cinema , 4 , b/h nilkanth cinema , rajkot', 5.4000, 60.0000, NULL, 'just dial', 'unmarried', 'printing', 'weight gain', NULL, 'non', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 20:28:34', '2019-07-05 20:28:34', NULL),
(107, 'nikita amlani', 26, '9730540104', NULL, 'shikhar apt. , indira circle', 5.6000, 77.0000, NULL, NULL, 'unmarried', 'employed', 'loss weight & increase stamina', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 20:32:53', '2019-07-05 20:32:53', NULL),
(108, 'nikita amlani', 26, '9730540104', NULL, 'shikhar apt. , indira circle', 5.6000, 77.0000, NULL, NULL, 'unmarried', 'employed', 'loss weight & increase stamina', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 20:32:57', '2019-07-05 20:32:57', NULL),
(109, 'riya mam', 24, '9978400068', 'riya doshi12296@gmail.com', '\" ADIT \" 4, prakash society , opp. nirmala school , rajkot', 5.2000, 45.0000, NULL, 'wallking', 'married', 'housewife', 'fitness', NULL, '4 to 5 pm = trial', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 20:39:36', '2019-07-05 20:39:36', NULL),
(110, 'aradhana jadeja', 31, '9725922577', 'aradhnajadeja1@gmail.com', 'shree ram - 32 , shivam nagar , b/h parimal school , kalawad road , rajkot -360005', 5.5000, 73.0000, NULL, 'karansinh zala', 'unmarried', 'interior designer', 'weight loss', NULL, '7 to 8 am', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-05 20:44:44', '2019-07-05 20:44:44', NULL),
(111, 'mital patel', 28, '7878487575', NULL, 'kingsland , amin marg , rajkot', 45.0000, 45.0000, NULL, 'hording', 'notselected', 'employed', 'fitness', 'non', 'only yoga', 'Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-07-05 20:48:00', '2019-07-05 20:48:00', NULL),
(112, 'riya dineshbhai akbari', 25, '9574980642', NULL, '\" SHREEJIDHAN \" , goverdhan soc. , nr. narmada park , amin marg , rajkot', 5.3000, 59.0000, NULL, 'by add', 'unmarried', 'home stayed', 'weight loss', NULL, '10 - 11 am =mon - tue', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-07 21:19:34', '2019-07-07 21:19:34', NULL),
(113, 'vidhi panchasana', 20, '8758372461', 'panchasanavidhi@gmail.com', 'krishna nagar main road , daraminarayan chowk', 5.1000, 40.0000, NULL, NULL, 'unmarried', 'student', 'weight gain', NULL, 'non', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-07 21:38:13', '2019-07-07 21:38:13', NULL),
(114, 'bhoomi manan bhimani', 25, '9638999265', 'dhruvabhoomi2@!gmail.com', 'A-101 , gunjan point , kalawad road', 84.0000, 84.0000, NULL, 'by road', 'married', 'housewife', 'to loose 10 kg', 'non', '10 - 11 - 2 days = mon - tue', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-07 21:44:14', '2019-07-07 21:44:14', NULL),
(115, 'bijal bavishi', 40, '9426817689', 'sbavishi891@gmail.com', 'A - 62 raghukul , shroff road , near sharda baag , rajkot', 5.3000, 55.0000, NULL, 'pooja hobby center', 'married', 'housewife', 'want to reduce weight', 'calf pain', 'will cl us to come for trial', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-07 21:51:52', '2019-07-07 21:51:52', NULL),
(116, 'kumud dalal', 42, '9825205535', 'kumuddalal.kd@gmail.com', '2 , shakuntala soc , opp. s.n.k school , university road , rajkot', 5.4000, 65.0000, NULL, NULL, 'married', 'housewife', 'fitness', 'non', 'nom', 'SMS,Call', NULL, 'priyanka', NULL, NULL, '', '', '2019-07-07 22:17:18', '2019-07-07 22:17:18', NULL),
(117, 'kautuki kharbe', 17, '9375114815', NULL, 'Aditya Heights H - 102 , sadhuvasvani road , gopal chowk , rajkot', 5.1000, 55.0000, NULL, 'by road', 'unmarried', 'student', 'dance', NULL, '6 to 7 - 7 - 8 pm , starting date - 1 call by informed', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 19:53:03', '2019-07-08 19:53:03', NULL),
(118, 'drishti timbadiya', 22, '7575034353', 'drishtitimbadiya29@gmail.com', '\" SHREENATHJI \"  , sanket park - 1 , street no - 2 , near Big Bazar , rajkot - 360005', 5.5000, 59.0000, NULL, NULL, 'unmarried', 'student', '50', NULL, '4 - 5 pm = 2morrow -2 person', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 20:31:49', '2019-07-08 20:31:49', NULL),
(119, 'matangi gadhaiya', 22, '7575034353', NULL, '\" SHREENATHJI \" sanket park- 1 , street no - 2 , near Big Bazar , , rajkot - 360005', 5.4000, 47.0000, NULL, NULL, 'unmarried', 'student', '50', NULL, '4 to 5 pm = tomorrow - 2 person', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 21:26:07', '2019-07-08 21:26:07', NULL),
(120, 'nikita tolia', 32, '8780343861', 'nikita.tolia87@gmail.com', 'nirmala road , 4 balmukund plot , rajkot\r\nwhats app - 8306274327', 5.2000, 81.0000, NULL, 'net', 'married', 'employed', 'weight loss & stay fit', NULL, 'non', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-08 21:31:03', '2019-07-08 21:31:03', NULL),
(121, 'roopendra sharma', 27, '9772123499', NULL, 'panchwati marg , near jalaram hospital , land mark  amin marg , rajkot', 5.7000, 73.0000, NULL, NULL, 'unmarried', 'employed', 'weight loss & stay fit', 'non', '7-8 am - 2morrow = 10/7/19 = 1 person', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 21:37:45', '2019-07-08 21:37:45', NULL),
(122, 'hanif', 23, '8460786186', NULL, 'rajkot', 5.9000, 80.0000, NULL, NULL, 'unmarried', 'employed', 'stay fit', NULL, '7-8 am - 2morrow = 10/7/19 = 2 person', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 21:41:04', '2019-07-08 21:41:04', NULL),
(123, 'dhara d khirsaria', 30, '9099071153', 'dharakhirsaria@gmail.com', '301 , meghmalhar appt. , opp. gandhi vidhyalay , b/h panchvati society', 5.2000, 54.0000, NULL, NULL, 'married', 'housewife', 'to get slim & fit body structure', NULL, '3-4 pm 2day (9-7-19)', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 22:36:02', '2019-07-08 22:36:02', NULL),
(124, 'sneha', 27, '9924913300', NULL, 'amin marg , shivam appt - 301', 5.3000, 86.0000, NULL, 'friend', 'married', 'housewife', '55 kg', NULL, '3-4 pm 2day (9-7-19)', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-08 22:39:27', '2019-07-08 22:39:27', NULL),
(125, 'bharti getaxancar', 48, '7990205969', 'bhartigeta@gmail.com', '22 B , bhaktidham soc. , 150 ft ring road , opp. amrutsagar party plot , rajkot', 5.2000, 70.0000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '2 days - free trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 20:32:49', '2019-07-11 20:32:49', NULL),
(126, 'reema sakariya', 27, '9537881444', 'sakariyareema@gmail.com', '\" AMIDHARA \" , parnakuti main road , jay park - 1 ,', 5.5000, 67.0000, NULL, 'asis bhai', 'married', 'housewife', 'weight loss', 'nop', '4 - 5 pm = 2morrow -2 person', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 20:38:15', '2019-07-11 20:38:15', NULL),
(127, 'hetal bataviya', 35, '8155999959', NULL, '\" CHAITNYA \" 2nd fl , 201 , 16/17 panchnath plot , limda chowk , rajkot', 5.4000, 69.0000, NULL, NULL, 'married', 'housewife', 'reduce fat', NULL, '11 am - 12 pm = 2morrow = trial', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 20:42:34', '2019-07-11 20:42:34', NULL),
(128, 'aarzoo asalm gulabsah', 23, '9773224719', NULL, 'mandas plot 5 , mangles main road', 5.4000, 69.9000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '3-4 pm - 15 days 5 kg WLC-4', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 20:47:25', '2019-07-11 20:47:25', NULL),
(129, 'nirali raval', 23, '7999998149', NULL, 'alka puri , 11-4 corner , raiya road', 5.2000, 65.0000, NULL, 'dilip bhai ( the fitness zone gym )', 'unmarried', 'home stayed', 'weight loss', 'non', '8-9 kale', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-11 20:51:53', '2019-07-11 20:51:53', NULL),
(130, 'krunal', 1, '9898989898', '1', '1', 148.0000, 1.0000, '2019-07-13', '1', 'notselected', 'notselected', '1', '1', '1', 'Whatsapp', '2019-07-13', '1', '1', NULL, 'Personal/General Training', 'ptest', '2019-07-13 00:55:46', '2019-07-13 00:56:43', '2019-07-13 00:56:43'),
(131, 'mahendrabhai bhagdev', 45, '7575076203', NULL, 'keval app. , kevdawadi , rajkot', 5.4000, 65.0000, NULL, 'net', 'married', 'bussiness', 'weight loss', 'right knee - burn - pain', '2 days = 6- 7 am', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-17 20:33:16', '2019-07-17 20:33:16', NULL),
(132, 'darshna soni', 35, '9099298039', NULL, '3 , raval nagar , nr. 150 ft ring road , rajkot', 5.2000, 108.0000, NULL, 'ashish popat', 'married', 'employed', '20 to 30 kg loss in 6 month', 'thyroid only', '6-7 -pm', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-17 20:36:13', '2019-07-17 20:36:13', NULL),
(133, 'kruti jethva', 24, '7202005176', NULL, '\" astha \" karan park', 5.3000, 48.0000, NULL, 'jd', 'unmarried', 'doctor', 'to decrease tummy area', 'NRH', 'she will cl us for trial ( no disturbance )', '', NULL, 'mz', NULL, NULL, '', '', '2019-07-17 21:42:58', '2019-07-17 21:42:58', NULL),
(134, 'darshita B SANGHRAJKA', 30, '7016525677', NULL, '\" NR. BHAKTI NAGAR \"', 5.3000, 73.0000, NULL, NULL, 'unmarried', 'bussiness', 'weight loss', NULL, 'non', 'Whatsapp,Call', '2018-07-19', 'mz', NULL, NULL, '', '', '2019-07-17 22:00:08', '2019-07-17 22:00:08', NULL),
(135, 'sandra', 24, '9173845483', NULL, 'marwadi university', 60.0000, 65.0000, NULL, 'passport', 'unmarried', NULL, 'to loss 5 kgs', NULL, '6-7 pm', 'Whatsapp', NULL, 'mz', NULL, NULL, '', '', '2019-07-17 22:45:45', '2019-07-17 22:45:45', NULL),
(136, 'nirali s doshi', 30, '9409151564', 'smitdoshi@gmail.com', '603 , shanti heights app. , akashwani chowk , above celebration restaurant , near SNK', 5.3000, 70.0000, NULL, NULL, 'married', 'housewife', 'to decrease weight about 15 kg', NULL, '15 days weight loss challenge , 10 - 11 am - 2morrow', 'Whatsapp', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-17 23:02:06', '2019-07-17 23:02:06', NULL),
(137, 'mariyam sadikot', 22, '9979118680', 'mariyamsadikot20@gmail.com', 'nobel residency, diwanpara 6 , rajkot', 156.0000, 55.0000, NULL, NULL, 'married', 'student', 'fitness', 'thyroid - hypothyroidism', '6-7 am or 7-8 am - 22/7/19 , 1 day trial - 1 person', 'Whatsapp', NULL, 'RVR', NULL, NULL, '', '', '2019-07-24 21:27:38', '2019-07-24 21:27:38', NULL),
(138, 'jhanavi dave', 21, '8409883973', 'jhanavi.dave@yahoo.co.in', 'nisarg bunglows , nr. university road', 5.1000, 59.0000, NULL, NULL, 'unmarried', 'student', 'non', 'non', 'mz - talk - followup', 'Call', NULL, 'mz', NULL, NULL, '', '', '2019-07-24 21:32:40', '2019-07-24 21:32:40', NULL),
(139, 'bhavnaben karia', 61, '9909904440', NULL, '103 , \" SHRUSTI \" Appts. , opp saint mary school , rajkot', 5.3000, 67.9000, NULL, 'purvi vaghela', 'married', 'housewife', 'weight loss', 'haath ma problem che , shoulder bolt , lock ma thi utari jai che.', '9 to 10 am - mon', '', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-24 21:41:17', '2019-07-24 21:41:17', NULL),
(140, 'nikita odedra', 17, '9727797777', NULL, '6 limbudi wadi\r\nopp yogi amrut appartment', 5.3000, 56.0000, NULL, 'friend mansi', 'unmarried', 'student', 'non', NULL, '6 pm = 2 day trial - 2morrow', 'Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-24 21:46:51', '2019-07-24 21:46:51', NULL),
(141, 'kunj dhulesia', 18, '9586560905', NULL, 'non', 180.0000, 81.2000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, 'non', 'Call', NULL, 'ashish sir', NULL, NULL, '', '', '2019-07-24 21:49:16', '2019-07-24 21:49:16', NULL),
(142, 'pooja patel', 20, '9429513851', NULL, 'kalawad road', 5.2000, 70.0000, NULL, NULL, 'unmarried', 'student', 'weight loss & body shaping', NULL, 'will cl for trial', '', NULL, 'RVR', NULL, NULL, '', '', '2019-07-24 22:29:46', '2019-07-24 22:29:46', NULL),
(143, 'utsav d nirmal', 23, '7878111170', 'nirmaluts78@gmail.com', 'jivan nagar', 5.7000, 85.0000, NULL, NULL, 'unmarried', 'notselected', 'weight loss & muscle bultup', NULL, 'will cl us to come for trial', 'Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-24 22:34:48', '2019-07-24 22:34:48', NULL),
(144, 'sawan dhaduk', 26, '9638310004', NULL, '11/B kailash bangh society  ( gondal )', 171.0000, 131.2000, NULL, NULL, 'notselected', 'notselected', 'weight loss', NULL, 'he will cl MZ', '', NULL, 'MZ', NULL, 'only diet', '', '', '2019-07-24 22:38:10', '2019-07-24 22:38:10', NULL),
(145, 'pavitra jadeja', 22, '8320063897', NULL, '92 , kailash kevalam , kalawad road , rajkot', 5.6000, 92.0000, NULL, NULL, 'unmarried', NULL, 'weight loss', 'PCOD', 'gold package  ( DONE )', 'Whatsapp,SMS,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-24 22:43:08', '2019-07-24 22:43:08', NULL),
(146, 'meera trada', 33, '9909049549', NULL, 'B- 304 , radhevilla , near marvel hospital , mavadi , rajkot', 4.1000, 56.0000, NULL, NULL, 'married', 'employed', 'weight loss', NULL, 'she want 5- 6 pm challenge batch', 'Whatsapp', NULL, 'MZ', NULL, NULL, '', '', '2019-07-24 22:46:52', '2019-07-24 22:46:52', NULL),
(147, 'manali j khunt', 23, '8000737315', NULL, '\" TAPOBHUMI \" , 3/9 alka society , opp.shubh corner complex , mavdi road , rajkot', 5.1000, 75.0000, NULL, NULL, 'unmarried', 'employed', 'weight loss', NULL, 'after 20 july she want trial', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 20:40:50', '2019-07-25 20:40:50', NULL),
(148, 'miral r shah', 39, '9998762662', 'visionhouse@yahoo.com', 'vision house 102 - destination complex , amin marg .', 5.4000, 79.0000, NULL, 'stavan bhai & incy bhabhi', 'married', 'bussiness', 'weight loss', 'high blood pressure with high lipid profile', 'he will cl priti mam in 2 days', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 20:53:26', '2019-07-25 20:53:26', NULL),
(149, 'daxrajsinh jadeja', 19, '7778901349', 'dakshraj1616@gmail.com', 'virani chowk , \" GIRIRAJ \" , block no- 38', 5.4000, 104.2000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '15 days weight loss challenge 8-9 pm - 17th', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 22:08:43', '2019-07-25 22:08:43', NULL),
(150, 'daxrajsinh jadeja', 19, '7778901349', 'dakshraj1616@gmail.com', 'virani chowk , \" GIRIRAJ \" , block no- 38', 5.4000, 104.2000, NULL, NULL, 'unmarried', 'student', 'weight loss', NULL, '15 days weight loss challenge 8-9 pm - 17th', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 22:08:44', '2019-07-25 22:08:44', NULL),
(151, 'avani bhalani', 36, '9426992969', NULL, 'c- 22 , oscar tower , opp - big bazar', 5.4000, 73.1000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, 'will cl us to come for trial', 'Whatsapp,Call', NULL, 'RVR', NULL, NULL, '', '', '2019-07-25 22:20:25', '2019-07-25 22:20:25', NULL),
(152, 'yash bhati', 24, '9638756363', NULL, 'bhidbhanjan nagar , university road', 5.6000, 86.0000, NULL, 'vivek joshi', 'unmarried', 'employed', 'weight loss & stay fit', NULL, '6 am mon & tue = trial', 'Whatsapp,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-25 22:24:20', '2019-07-25 22:24:20', NULL),
(153, 'viral r tanna', 25, '8320857558', 'viraltanna456@gmail.com', 'bedi naka tower rajkot', 167.0000, 45.0000, NULL, 'ph contact', 'unmarried', 'bussinessman', 'weigh gain by 15 kg', NULL, '8-9 am trial', 'Whatsapp,Email,Call', NULL, 'priti mam', NULL, NULL, '', '', '2019-07-25 22:31:52', '2019-07-25 22:31:52', NULL),
(154, 'heena kashyap shukla', 55, '9825900999', NULL, '\" RAJGRUHI \" 2, nutan nagar society , kalawad road', 5.3000, 70.3000, NULL, 'trupti jain', 'married', 'housewife', '5 kg reduce', 'blood pressure', '6 + 8 ( 7: 30 am )', 'Call', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 22:39:44', '2019-07-25 22:39:44', NULL),
(155, 'dipal vaghadiya', 38, '9428155966', NULL, '\" MAHAKALI KRUPA \" \r\nvinay society', 5.2000, 90.0000, NULL, NULL, 'married', 'housewife', 'weight loss', NULL, '8 - 9 am trial', 'Whatsapp', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 22:42:35', '2019-07-25 22:42:35', NULL),
(156, 'jigar yogesh shah', 26, '9998584841', NULL, '105  , lichis appt. rajkot', 5.1000, 53.0000, NULL, 'google', 'unmarried', 'employed', 'weight gain + fitness + body shape', 'non', 'trial 2morrow 6 to 7 am', 'Whatsapp', NULL, 'MZ', NULL, NULL, '', '', '2019-07-25 22:50:02', '2019-07-25 22:50:02', NULL);

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_05_17_094252_create_members_table', 1);

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
(1, 'MZFitness', 'mzfitnezz@gmail.com', NULL, '$2y$10$0KQw4dF3JYpIS0L.4BVvzOTPIgr7mOML/Nxd78LJ.mqqY1NUCoW0K', 'G5D43McttmbC8LZ6XJIbGulP1MdHAQwn4zusT1BF2B8Y4kuXeWUf9i8qusvR', '2019-05-20 20:23:01', '2019-05-20 20:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `workouts`
--

CREATE TABLE `workouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workout_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch_members`
--
ALTER TABLE `batch_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_schedules`
--
ALTER TABLE `employee_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workouts`
--
ALTER TABLE `workouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workplaces`
--
ALTER TABLE `workplaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
