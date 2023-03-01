-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 04:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odrs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_status`
--

CREATE TABLE `academic_status` (
  `id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_status`
--

INSERT INTO `academic_status` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Enrolled', '2021-05-09 05:37:58', '2021-05-09 05:37:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `contact` varchar(15) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Jerome', 'Jalandoon', 'Bermudez', '09673104255', 60, '2021-05-07 16:03:38', '2021-05-07 16:03:38', NULL),
(9, 'Pauline', 'Llagas', NULL, '09673104255', 85, '2021-05-12 13:07:05', '2021-05-12 13:07:05', NULL),
(10, 'jamrei', 'manalo', NULL, '09673104255', 86, '2021-05-12 23:38:27', '2021-05-12 23:38:27', NULL),
(13, 'nerissa', 'maglente', '', '09345435434', 124, '2021-06-24 15:12:22', '2021-07-29 12:29:07', NULL),
(14, 'sample', 'sample', 'sample', '091234567789', 199, '2021-07-29 08:07:51', '2021-07-29 08:07:51', NULL),
(15, 'ley', 'line', 'leyline', '09159632301', 207, '2022-11-17 13:42:19', '2023-02-13 15:34:30', '2023-02-13 15:34:30'),
(16, 'Liway', 'mabangis', 'maangas', '09159632301', 211, '2022-11-20 00:16:34', '2023-02-27 09:06:17', '2023-02-27 09:06:17'),
(17, 'Harvz', 'IT', 'Tech', '09359452475', 214, '2022-12-13 12:01:37', '2022-12-13 13:00:32', '2022-12-13 13:00:32'),
(18, 'HARVZ', 'IT', 'TEch', '093595151', 215, '2022-12-13 13:23:30', '2022-12-13 13:23:30', NULL),
(19, 'edmon', 'delacruz', 'madronio', '09635243546', 219, '2023-02-11 21:06:59', '2023-02-25 09:55:48', NULL),
(20, 'dfdfdf', 'dfdfdf', 'dfdfdf', '09878789876', 220, '2023-02-11 21:11:02', '2023-02-13 15:34:34', '2023-02-13 15:34:34'),
(21, 'Kyle', 'Dula', 'Errold', '09159632301', 226, '2023-02-13 15:35:29', '2023-02-13 15:38:20', '2023-02-13 15:38:20'),
(22, 'mocha', 'Dula', 'Errold', '09159632301', 227, '2023-02-13 15:39:12', '2023-02-25 10:00:48', NULL),
(23, 'rotc', 'rotc', 'rotc', '09159632301', 239, '2023-02-25 16:34:11', '2023-02-25 16:34:11', NULL),
(24, 'accounting', 'accounting', 'acocunting', '09159632301', 240, '2023-02-25 16:34:51', '2023-02-25 16:34:51', NULL),
(25, 'Internal', 'Internal', 'Internal', '09159632301', 241, '2023-02-25 16:35:36', '2023-02-25 16:35:36', NULL),
(26, 'LegalOffice', 'LegalOffice', 'LegalOffice', '09159632301', 242, '2023-02-25 16:36:32', '2023-02-25 16:36:32', NULL),
(27, 'Liwanag', 'Maliksi', 'Liway', '09123456789', 244, '2023-02-27 09:08:38', '2023-02-27 09:08:38', NULL),
(28, 'Mhel', 'Garcia', 'Pae', '0987654321', 245, '2023-02-27 09:09:27', '2023-02-27 09:09:27', NULL),
(32, 'library', 'library', 'library', '09159632301', 299, '2023-02-27 16:28:02', '2023-02-27 16:28:02', NULL),
(33, 'laboratory', 'laboratory', 'laboratory', '09159632301', 300, '2023-02-27 16:33:22', '2023-02-27 16:33:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `checklistID` int(11) NOT NULL,
  `checklistName` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`checklistID`, `checklistName`, `created_at`) VALUES
(1, 'SAR Form/PUPCCT Results', '2022-12-17 01:21:20'),
(2, 'F137', '2022-12-17 01:21:20'),
(3, 'Grade 10 Card', '2022-12-17 01:21:20'),
(4, 'PSA/NSO', '2022-12-17 01:21:20'),
(5, 'Certification of Good Moral', '2022-12-17 01:21:20'),
(6, 'Medical Clearance', '2022-12-17 01:21:20'),
(7, '2x2 Picture', '2022-12-17 01:21:20'),
(8, 'Notarized Cert of Non-enrollment', '2022-12-17 01:21:20'),
(9, 'COC (HS/SHS)', '2022-12-17 01:21:20'),
(10, 'Authenticated Copy PEPT/ALS', '2022-12-17 01:21:20'),
(11, 'Certificate with dry seal', '2022-12-17 01:21:20'),
(12, 'Grade 11 Card', '2023-02-08 14:02:49'),
(13, 'Grade 12 Card', '2023-02-08 14:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `course_type` int(11) NOT NULL,
  `abbreviation` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `course_type`, `abbreviation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Diploma in Information Communication Technology', 1, 'DICT', '2021-05-09 04:59:37', '2021-05-09 05:11:47', NULL),
(2, 'Bachelor of Science in Information Technology', 1, 'BSIT', '2021-05-09 05:05:33', '2021-05-09 05:05:33', NULL),
(3, 'Bachelor of Science in Accountancy', 1, 'BSATEST', '2021-05-09 05:06:32', '2021-06-24 15:03:46', '2021-06-24 15:03:46'),
(4, 'Bachelor of Science in Accountancy', 1, 'BSA', '2021-07-06 15:53:33', '2021-07-06 15:53:33', NULL),
(5, 'Bachelor of Science in Mechanical Engineering', 1, 'BSME', '2021-07-06 15:53:45', '2021-07-06 15:53:45', NULL),
(6, 'Bachelor of Science in Electronics Engineering', 1, 'BSECE', '2021-07-06 15:53:54', '2021-07-06 15:53:54', NULL),
(7, 'Bachelor of Secondary Education Major in English', 1, 'BSED ENG', '2021-07-06 15:54:08', '2021-07-06 15:54:08', NULL),
(8, 'Bachelor of Secondary Education Major in Mathematics', 1, 'BSED MT', '2021-07-06 15:54:45', '2021-07-06 15:54:45', NULL),
(9, 'Bachelor of Science in Business Administration Major in Marketing Management', 1, 'BSBA MM', '2021-07-06 15:57:42', '2021-07-06 15:57:42', NULL),
(10, 'Bachelor of Science in Office Administration', 1, 'BSOA', '2021-07-06 15:57:49', '2021-07-06 15:57:49', NULL),
(11, 'Sample Course s', 1, 'SC', '2021-07-29 08:12:49', '2021-07-29 08:13:06', '2021-07-29 08:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `course_types`
--

CREATE TABLE `course_types` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_types`
--

INSERT INTO `course_types` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Undergraduate', '2021-05-09 04:21:37', '2021-07-29 08:13:22', NULL),
(2, 'Open University', '2021-06-24 12:05:14', '2021-07-29 08:13:27', NULL),
(3, 'samples', '2021-07-29 08:13:40', '2021-07-29 08:13:50', '2021-07-29 08:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `is_free_on_first` tinyint(4) NOT NULL,
  `template` varchar(50) DEFAULT NULL,
  `per_page_payment` int(1) NOT NULL DEFAULT 0,
  `process_day` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document`, `price`, `is_free_on_first`, `template`, `per_page_payment`, `process_day`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Certificate of Good Moral', 150, 0, 'goodmoral', 0, 1, '2021-05-10 02:41:22', '2021-07-29 10:28:25', NULL),
(9, 'Certificate of Grades', 150, 0, '', 0, 1, '2021-05-10 02:45:01', '2021-07-29 10:28:13', NULL),
(10, 'Transcript of Record', 150, 1, '', 1, 1, '2021-05-11 13:39:15', '2021-07-29 10:28:37', NULL),
(11, 'testing', 250, 1, 'template', 0, 1, '2021-06-24 12:19:42', '2021-06-24 12:20:21', '2021-06-24 12:20:21'),
(12, 'test', 150, 0, 'test', 1, 1, '2021-06-24 12:21:57', '2021-06-24 12:31:41', '2021-06-24 12:31:41'),
(13, 'Certification of Enrollment', 150, 0, '', 0, 1, '2021-07-29 10:23:36', '2021-07-29 10:23:36', NULL),
(14, 'Certification of Graduation', 150, 0, '', 0, 1, '2021-07-29 10:24:01', '2021-07-29 10:24:01', NULL),
(15, 'General Weighted Average', 150, 0, '', 0, 1, '2021-07-29 10:25:38', '2021-07-29 10:25:38', NULL),
(16, 'Certification of Ladderized Courses', 150, 0, '', 0, 1, '2021-07-29 10:26:03', '2021-07-29 10:26:03', NULL),
(17, 'Certificate of Non-issuance of I.D.', 150, 0, '', 0, 1, '2021-07-29 10:26:25', '2021-07-29 10:26:25', NULL),
(18, 'Certificate of Registration', 150, 0, '', 0, 1, '2021-07-29 10:26:57', '2021-07-29 10:26:57', NULL),
(19, 'Diploma', 200, 1, '', 0, 1, '2021-07-29 10:27:57', '2021-07-29 10:27:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_notes`
--

CREATE TABLE `document_notes` (
  `id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document_notes`
--

INSERT INTO `document_notes` (`id`, `note_id`, `document_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 1, 6, '2021-05-10 02:41:22', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(11, 2, 6, '2021-05-10 02:41:22', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(12, 3, 6, '2021-05-10 02:41:22', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(20, 1, 9, '2021-05-10 02:45:01', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(21, 2, 9, '2021-05-10 02:45:01', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(22, 6, 9, '2021-05-10 02:45:01', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(23, 9, 9, '2021-05-10 02:45:01', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(24, 1, 9, '2021-05-10 03:19:04', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(25, 2, 9, '2021-05-10 03:19:04', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(26, 6, 9, '2021-05-10 03:19:04', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(27, 1, 9, '2021-05-10 03:19:20', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(28, 2, 9, '2021-05-10 03:19:20', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(29, 6, 9, '2021-05-10 03:19:20', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(30, 9, 9, '2021-05-10 03:19:20', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(31, 1, 9, '2021-05-10 03:40:23', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(32, 2, 9, '2021-05-10 03:40:23', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(33, 6, 9, '2021-05-10 03:40:23', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(34, 9, 9, '2021-05-10 03:40:23', '2021-07-29 10:28:13', '2021-07-29 10:28:13'),
(35, 1, 10, '2021-05-11 13:39:15', '2021-07-29 10:28:37', '2021-07-29 10:28:37'),
(36, 2, 10, '2021-05-11 13:39:15', '2021-07-29 10:28:37', '2021-07-29 10:28:37'),
(37, 1, 6, '2021-06-17 12:37:55', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(38, 2, 6, '2021-06-17 12:37:55', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(39, 1, 6, '2021-06-20 13:20:55', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(40, 2, 6, '2021-06-20 13:20:55', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(41, 10, 6, '2021-06-20 13:20:55', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(42, 2, 11, '2021-06-24 12:19:42', '2021-06-24 12:20:00', '2021-06-24 12:20:00'),
(43, 6, 11, '2021-06-24 12:19:42', '2021-06-24 12:20:00', '2021-06-24 12:20:00'),
(44, 2, 11, '2021-06-24 12:20:00', '2021-06-24 12:20:00', NULL),
(45, 6, 11, '2021-06-24 12:20:00', '2021-06-24 12:20:00', NULL),
(46, 1, 12, '2021-06-24 12:21:57', '2021-06-24 12:24:51', '2021-06-24 12:24:51'),
(47, 1, 6, '2021-06-24 15:05:21', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(48, 2, 6, '2021-06-24 15:05:21', '2021-07-29 10:28:25', '2021-07-29 10:28:25'),
(49, 1, 13, '2021-07-29 10:23:36', '2021-07-29 10:23:36', NULL),
(50, 1, 14, '2021-07-29 10:24:01', '2021-07-29 10:24:01', NULL),
(51, 1, 15, '2021-07-29 10:25:38', '2021-07-29 10:25:38', NULL),
(52, 1, 16, '2021-07-29 10:26:03', '2021-07-29 10:26:03', NULL),
(53, 1, 17, '2021-07-29 10:26:25', '2021-07-29 10:26:25', NULL),
(54, 1, 18, '2021-07-29 10:26:57', '2021-07-29 10:26:57', NULL),
(55, 12, 19, '2021-07-29 10:27:57', '2021-07-29 10:27:57', NULL),
(56, 13, 19, '2021-07-29 10:27:57', '2021-07-29 10:27:57', NULL),
(57, 1, 9, '2021-07-29 10:28:13', '2021-07-29 10:28:13', NULL),
(58, 1, 6, '2021-07-29 10:28:25', '2021-07-29 10:28:25', NULL),
(59, 1, 10, '2021-07-29 10:28:37', '2021-07-29 10:28:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_requirements`
--

CREATE TABLE `document_requirements` (
  `id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_requests`
--

CREATE TABLE `form_requests` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `school` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `sy_admission` varchar(30) NOT NULL,
  `status` char(1) NOT NULL,
  `remarks` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_requests`
--

INSERT INTO `form_requests` (`id`, `student_id`, `school`, `address`, `sy_admission`, `status`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 132, 'Western Bicutan National High School', 'EP VILLAGE', '2018-2019', 'c', 1, '2022-10-03 17:45:18', '2022-10-03 17:46:35', NULL),
(2, 132, 'Wester Bicutan National High School', 'EP Village ', '2019-2020', 'o', 1, '2022-10-06 11:18:50', '2022-10-06 11:19:16', NULL),
(3, 136, 'Western Bicutan National High School', 'EP VILLAGE', '2018-2019', 'c', 1, '2022-10-22 10:03:21', '2022-10-22 10:04:12', NULL),
(4, 136, 'Western Bicutan National High School', 'EP VILLAGE', '2018-2019', 'c', 2, '2022-10-22 10:04:42', '2022-10-22 10:05:53', NULL),
(5, 207, 'Regis-Grace Montessori School', 'Paranaque', '2018-2019', 'w', 4, '2023-02-20 20:15:38', '2023-02-20 20:15:38', NULL),
(6, 211, 'Regis-Grace Montessori School', 'Paranaque', '2018-2019', 'w', 2, '2023-02-20 21:30:21', '2023-02-20 21:30:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `slug`, `module`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'module-management', 'Module Management', '2021-04-28 00:07:16', '2021-07-29 08:21:39', NULL),
(2, 'user-management', 'User Management', '2021-04-28 00:08:18', '2021-06-24 17:55:27', NULL),
(3, 'document-management', 'Document Management', '2021-05-02 02:26:50', '2021-05-02 02:26:50', NULL),
(4, 'student-management', 'Student Management', '2021-05-08 12:12:10', '2021-05-08 12:12:10', NULL),
(5, 'system-settings', 'System Settings', '2021-05-08 23:01:10', '2021-07-25 00:03:09', NULL),
(6, 'document-requests', 'Document Requests', '2021-05-12 22:52:51', '2021-05-12 22:52:51', NULL),
(7, 'admission-management', 'Admission Management', '2021-06-24 11:53:51', '2021-06-24 11:54:05', '2021-06-24 11:54:05'),
(8, 'testdfgdfg', 'testqweqweqw', '2021-06-24 15:01:17', '2021-06-24 15:02:25', '2021-06-24 15:02:25'),
(9, 'sample', 'Sample Module', '2021-07-29 08:16:22', '2021-07-29 08:21:14', '2021-07-29 08:21:14'),
(10, 'admission-management', 'Admission Management', '2022-11-11 15:41:13', '2023-02-26 20:52:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `note` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bring Document Stamp', '2021-05-10 01:54:03', '2021-05-10 01:54:03', NULL),
(2, 'Bring 2x2 Picture', '2021-05-10 01:55:00', '2021-05-10 01:55:00', NULL),
(6, 'Sample Note', '2021-05-10 02:41:22', '2021-09-23 18:55:51', '2021-09-23 18:55:51'),
(9, 'Other', '2021-05-10 02:45:01', '2021-07-29 11:57:46', '2021-07-29 11:57:46'),
(10, 'tests', '2021-06-20 13:20:55', '2021-06-24 15:00:33', '2021-06-24 15:00:33'),
(11, 'Bring valid id', '2021-07-29 08:10:07', '2021-07-29 08:11:23', '2021-07-29 08:11:23'),
(12, 'Valid ID', '2021-07-29 10:27:57', '2021-07-29 10:27:57', NULL),
(13, 'Affidavit of Loss for 2nd Copy of Diploma', '2021-07-29 10:27:57', '2021-07-29 10:27:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `office` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Student Services', '2021-05-09 05:57:02', '2021-05-09 05:59:43', NULL),
(4, 'Head of Academic Offices', '2021-06-23 01:14:21', '2021-06-23 01:14:21', NULL),
(5, 'Office', '2021-07-29 08:14:07', '2021-07-29 08:14:07', NULL),
(6, 'Library', '2023-02-25 09:52:51', '2023-02-25 09:52:51', NULL),
(7, 'Laboratory', '2023-02-25 09:52:58', '2023-02-25 09:52:58', NULL),
(8, 'ROTC', '2023-02-25 09:53:08', '2023-02-25 09:53:08', NULL),
(9, 'Accounting Office', '2023-02-25 09:53:23', '2023-02-25 09:54:21', NULL),
(10, 'Internal Audit', '2023-02-25 09:53:43', '2023-02-25 09:53:43', NULL),
(11, 'Legal Office', '2023-02-25 09:54:06', '2023-02-25 09:54:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `path` varchar(20) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `permission_type` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `path`, `icon`, `slug`, `description`, `permission_type`, `module_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Modules', 'modules', 'boxes', 'modules', 'View list of modules', 1, 1, '2021-04-28 01:17:58', '2021-06-23 11:08:04', NULL),
(2, 'Permissions Type', 'permission-types', 'tasks', 'permission-types', 'View Permission Types', 1, 1, '2021-04-28 01:30:24', '2021-07-29 07:51:47', NULL),
(3, 'Permissions', 'permissions', 'user-shield', 'permissions', 'View Permission Lists', 1, 1, '2021-04-28 01:31:01', '2021-06-23 11:08:54', NULL),
(4, 'Add Module', 'modules', 'plus', 'add-module', 'Add module', 2, 1, '2021-04-28 01:32:26', '2021-04-28 01:32:26', NULL),
(5, 'Edit Module', 'modules', NULL, 'edit-module', 'Edit Module', 3, 1, '2021-04-28 17:09:34', '2021-04-28 17:09:34', NULL),
(6, 'Delete Module', 'modules', NULL, 'delete-module', 'Delete Module', 4, 1, '2021-04-28 17:09:55', '2021-04-28 17:09:55', NULL),
(7, 'Roles', 'roles', 'user-tag', 'roles', 'View Roles List', 1, 2, '2021-04-28 17:20:29', '2021-06-23 11:09:17', NULL),
(8, 'Add Roles', 'roles', 'plus', 'add-roles', 'Add User Roles', 2, 2, '2021-04-29 00:51:39', '2021-04-29 00:51:39', NULL),
(9, 'Users', 'users', 'users', 'users', 'View user list', 1, 2, '2021-04-29 00:52:04', '2021-06-23 11:09:29', NULL),
(10, 'edit role', 'roles', NULL, 'edit-role', 'Edit Role', 3, 2, '2021-05-02 02:00:04', '2021-05-02 02:00:04', NULL),
(11, 'delete role', 'roles', NULL, 'delete-role', 'Delete Role', 4, 2, '2021-05-02 02:00:29', '2021-05-02 02:00:29', NULL),
(12, 'role permissions', 'role-permissions', 'user-check', 'role-permissions', 'View Role Permissions', 1, 2, '2021-05-02 02:03:22', '2021-06-23 11:09:45', NULL),
(13, 'edit role permission', 'role-permissions', NULL, 'edit-role-permission', 'Edit Role Permission', 3, 2, '2021-05-02 02:34:35', '2021-05-02 02:34:35', NULL),
(14, 'add users', '', 'plus', 'add-users', 'add users', 2, 2, '2021-05-07 08:15:44', '2021-05-07 08:15:44', NULL),
(15, 'Students', 'students', 'user-friends', 'students', 'View Students', 1, 4, '2021-05-08 16:58:49', '2021-06-24 11:06:25', NULL),
(16, 'courses', 'courses', 'book', 'courses', 'View Courses', 1, 5, '2021-05-08 23:13:04', '2021-06-24 13:19:32', NULL),
(17, 'Course Types', 'course-types', 'tasks', 'course-types', 'View Course Types', 1, 5, '2021-05-08 23:14:31', '2021-06-23 11:12:19', NULL),
(18, 'add course types', 'course-types', 'plus', 'add-course-types', 'Add Course Types', 2, 5, '2021-05-09 04:06:16', '2021-05-09 04:06:16', NULL),
(19, 'add courses', 'courses', 'plus', 'add-courses', 'Add Courses', 2, 5, '2021-05-09 04:52:49', '2021-05-09 04:52:49', NULL),
(20, 'Academic Status', 'academic-status', 'spinner', 'academic-status', 'View Academic Status', 1, 5, '2021-05-09 05:16:08', '2021-06-23 11:12:34', NULL),
(21, 'add academic status', 'academic-status', 'plus', 'add-academic-status', 'Add Academic Status', 2, 5, '2021-05-09 05:34:00', '2021-05-09 05:34:00', NULL),
(22, 'Offices', 'offices', 'university', 'offices', 'View Offices', 1, 5, '2021-05-09 05:40:53', '2021-06-23 11:12:46', NULL),
(23, 'Notes', 'notes', 'sticky-note', 'notes', 'View Document Notes', 1, 3, '2021-05-10 00:52:35', '2021-06-23 11:10:34', NULL),
(24, 'Documents', 'documents', 'folder-open', 'documents', 'View Documents', 1, 3, '2021-05-10 01:11:46', '2021-06-23 11:10:50', NULL),
(25, 'Add Notes', 'notes', NULL, 'add-notes', 'Add Notes', 2, 3, '2021-05-10 01:49:22', '2021-05-10 01:49:22', NULL),
(26, 'Add Document', 'documents', 'plus', 'add-document', 'Add Documents', 2, 3, '2021-05-10 01:56:38', '2021-05-10 01:56:38', NULL),
(27, 'My Requests', 'requests', NULL, 'my-requests', 'View current active request', 1, 6, '2021-05-12 22:53:37', '2021-05-12 22:53:37', NULL),
(28, 'Request History', 'requests/history', NULL, 'request-history', 'View History Requests', 1, 6, '2021-05-12 22:55:49', '2021-05-12 22:55:49', NULL),
(29, 'Document Requests', 'document-requests', NULL, 'document-requests', 'view pending requests', 1, 6, '2021-05-12 22:58:10', '2021-05-12 22:58:10', NULL),
(30, 'On Process Document', 'on-process-document', NULL, 'on-process-document', 'View On Process Documents', 1, 6, '2021-05-13 02:32:22', '2021-05-13 02:32:22', NULL),
(31, 'Printed Requests', 'printed-requests', NULL, 'printed-requests', 'View all printed requests', 1, 6, '2021-05-13 07:12:44', '2021-05-13 07:12:44', NULL),
(32, 'Claimed Requests', 'claimed-requests', NULL, 'claimed-requests', 'View all claimed requests', 1, 6, '2021-05-13 07:13:36', '2021-05-13 07:13:36', NULL),
(33, 'edit permissions', 'permissions', '', 'edit-permissions', 'edit permissions', 4, 1, '2021-06-15 22:26:56', '2021-06-15 22:26:56', NULL),
(34, 'delete permissions', 'permissions', '', 'delete-permissions', 'delete permissions', 3, 1, '2021-06-15 22:27:14', '2021-06-15 22:27:14', NULL),
(35, 'test edited', 'test edited', 'test edited', 'test edited', 'test edited', 1, 1, '2021-06-15 22:29:56', '2021-06-15 22:31:18', '2021-06-15 22:31:18'),
(36, 'delete permissions', 'permissions', '', 'delete-permissions', 'delete permissions', 4, 1, '2021-06-17 11:09:53', '2021-06-23 11:04:51', '2021-06-23 11:04:51'),
(37, 'edit document', 'documents', '', 'edit-document', 'edit documents', 3, 3, '2021-06-17 12:33:48', '2021-06-17 12:33:48', NULL),
(38, 'delete document', 'documents', '', 'delete-document', 'delete document', 4, 3, '2021-06-17 12:34:11', '2021-06-17 12:34:11', NULL),
(39, 'Edit Users', 'users', '', 'edit-users', 'edit users', 3, 2, '2021-06-22 23:56:17', '2021-06-22 23:56:17', NULL),
(40, 'delete users', 'users', '', 'delete-users', 'delete users', 4, 2, '2021-06-22 23:56:40', '2021-06-22 23:56:40', NULL),
(41, 'add offices', 'offices', '', 'add-offices', 'add offices', 2, 5, '2021-06-23 01:13:37', '2021-06-23 01:13:37', NULL),
(42, 'edit permission type', 'permission-types', '', 'edit-permission-type', 'edit permission types', 3, 1, '2021-06-24 11:48:09', '2021-06-24 11:48:09', NULL),
(43, 'delete permission type', 'permission-types', '', 'delete-permission-type', 'delete permission type', 4, 1, '2021-06-24 11:48:38', '2021-06-24 11:48:38', NULL),
(44, 'test', 'test', 'test', 'test', 'test', 1, 1, '2021-06-24 11:57:18', '2021-06-24 11:57:21', '2021-06-24 11:57:21'),
(45, 'delete notes', 'notes', '', 'delete-notes', 'delete notes', 4, 3, '2021-06-24 12:12:32', '2021-06-24 12:12:32', NULL),
(46, 'edit notes', 'notes', '', 'edit-notes', 'edit notes', 3, 3, '2021-06-24 12:13:51', '2021-06-24 12:13:51', NULL),
(47, 'edit students', 'students', '', 'edit-students', 'edit students', 3, 4, '2021-06-24 12:33:22', '2021-06-24 12:33:22', NULL),
(48, 'delete students', 'students', '', 'delete-students', 'delete students', 4, 4, '2021-06-24 12:33:46', '2021-06-24 12:33:46', NULL),
(49, 'edit course type', 'course-types', '', 'edit-course-type', 'edit course type', 3, 5, '2021-06-24 13:42:58', '2021-06-24 13:42:58', NULL),
(50, 'delete course type', 'course-types', '', 'delete-course-type', 'delete course type', 4, 5, '2021-06-24 13:43:26', '2021-06-24 13:43:26', NULL),
(51, 'edit course', 'courses', '', 'edit-course', 'edit course', 3, 5, '2021-06-24 14:25:16', '2021-06-24 14:25:16', NULL),
(52, 'delete course', 'courses', '', 'delete-course', 'delete course', 4, 5, '2021-06-24 14:25:32', '2021-06-24 14:25:32', NULL),
(53, 'add permission types', 'permission-types', '', 'add-permission-types', 'add permission types', 2, 1, '2021-07-29 07:14:10', '2021-07-29 07:14:10', NULL),
(54, 'add permissions', 'permissions', '', 'add-permissions', 'add permissions', 2, 1, '2021-07-29 07:17:05', '2021-07-29 07:17:05', NULL),
(55, 'restore all', 'restore', '', 'restore-all', 'restore ', 6, 5, '2021-07-29 07:38:33', '2021-07-29 07:38:33', NULL),
(56, 'Permission', 'path', 'user', 'sample', 'sample', 2, 1, '2021-07-29 07:50:27', '2021-07-29 07:51:35', '2021-07-29 07:51:35'),
(57, 'Sample Module', '/sample', 'user', 'sample-slug', 'sapelkf', 1, 9, '2021-07-29 08:19:17', '2021-07-29 08:19:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_types`
--

CREATE TABLE `permission_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_types`
--

INSERT INTO `permission_types` (`id`, `type`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'View', 'view', '2021-04-28 00:55:46', '2021-04-28 00:55:46', NULL),
(2, 'Add', 'add', '2021-04-28 00:56:31', '2021-04-28 00:56:31', NULL),
(3, 'Edit', 'edit', '2021-04-28 00:56:44', '2021-04-28 00:56:44', NULL),
(4, 'Delete', 'delete', '2021-04-28 00:56:49', '2021-04-28 00:56:49', NULL),
(5, 'test', 'test', '2021-06-24 11:54:11', '2021-07-25 00:05:30', '2021-07-25 00:05:30'),
(6, 'restore', 'restore', '2021-07-29 07:37:49', '2021-07-29 07:37:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_for_remarks`
--

CREATE TABLE `ref_for_remarks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `no_dry_sealf137` varchar(255) DEFAULT NULL,
  `no_dry_sealgrade10` varchar(255) DEFAULT NULL,
  `no_dry_sealgrade11` varchar(255) DEFAULT NULL,
  `no_dry_sealgrade12` varchar(255) DEFAULT NULL,
  `no_dry_sealgoodmoral` varchar(255) DEFAULT NULL,
  `sc_pup_remarks` varchar(255) DEFAULT NULL,
  `s_one_photocopy_grade10` varchar(255) DEFAULT NULL,
  `s_one_photocopy_grade11` varchar(255) DEFAULT NULL,
  `s_one_photocopy_grade12` varchar(255) DEFAULT NULL,
  `s_one_photocopy_sarform` varchar(255) DEFAULT NULL,
  `s_one_photocopy_psa` varchar(255) DEFAULT NULL,
  `s_one_photocopy_goodmoral` varchar(255) DEFAULT NULL,
  `submit_original_sarform` varchar(255) DEFAULT NULL,
  `submit_original_f137` varchar(255) DEFAULT NULL,
  `submit_original_grade10` varchar(255) DEFAULT NULL,
  `submit_original_grade11` varchar(255) DEFAULT NULL,
  `submit_original_grade12` varchar(255) DEFAULT NULL,
  `submit_original_psa` varchar(255) DEFAULT NULL,
  `submit_original_goodmoral` varchar(255) DEFAULT NULL,
  `submit_original_medcert` varchar(255) DEFAULT NULL,
  `submit_twobytwo` varchar(255) DEFAULT NULL,
  `certificate_of_completion` varchar(255) DEFAULT NULL,
  `other_remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_for_remarks`
--

INSERT INTO `ref_for_remarks` (`id`, `user_id`, `no_dry_sealf137`, `no_dry_sealgrade10`, `no_dry_sealgrade11`, `no_dry_sealgrade12`, `no_dry_sealgoodmoral`, `sc_pup_remarks`, `s_one_photocopy_grade10`, `s_one_photocopy_grade11`, `s_one_photocopy_grade12`, `s_one_photocopy_sarform`, `s_one_photocopy_psa`, `s_one_photocopy_goodmoral`, `submit_original_sarform`, `submit_original_f137`, `submit_original_grade10`, `submit_original_grade11`, `submit_original_grade12`, `submit_original_psa`, `submit_original_goodmoral`, `submit_original_medcert`, `submit_twobytwo`, `certificate_of_completion`, `other_remarks`, `created_at`) VALUES
(3, 221, 'No Dry Seal', NULL, NULL, '0', '0', NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, 'dsfdf', '2023-02-15 02:10:20'),
(5, 222, 'No Dry Seal', NULL, NULL, '0', '0', NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '2023-02-15 02:10:24'),
(7, 213, 'No Dry Seal', 'No Dry Seal', 'No Dry Seal', 'No Dry Seal', 'No Dry Seal', 'Sealed Copy with \"For PUP Taguig\" remarks', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit Original', 'Submit Original', 'Submit Original', NULL, 'Submit Original', 'Submit Original', 'Submit Original', 'Submit Original', 'Submit Original', NULL, NULL, '2023-02-15 03:20:28'),
(11, 218, 'No Dry Seal', 'No Dry Seal', NULL, 'No Dry Seal', NULL, NULL, 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', NULL, NULL, NULL, NULL, 'Submit Original', NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original', NULL, NULL, '2023-02-15 02:20:57'),
(12, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (SAR FORM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-02-24 04:20:38'),
(13, 233, NULL, NULL, NULL, NULL, NULL, 'Sealed Copy with \"For PUP Taguig\" remarks', NULL, NULL, NULL, 'Submit 1 Photocopy', NULL, NULL, 'Submit Original', NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original', 'Submit Original', NULL, 'Idagdag nyo yung category name sa value kada checkbox para mat identity kung ako yung sinasabi sa Submit Original of what?', '2023-02-15 04:57:53'),
(14, 237, 'No Dry Seal (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (SAR FORM)', NULL, NULL, 'Submit Original (SAR FORM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasd', '2023-02-27 03:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `ref_for_retrieved`
--

CREATE TABLE `ref_for_retrieved` (
  `id` int(11) NOT NULL,
  `studID` int(11) NOT NULL,
  `requirementsID` int(11) NOT NULL,
  `reasons` text NOT NULL,
  `retrieved_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_for_retrieved`
--

INSERT INTO `ref_for_retrieved` (`id`, `studID`, `requirementsID`, `reasons`, `retrieved_at`) VALUES
(5, 218, 1, 'opwmqwmdkl', '2023-01-02 13:53:28'),
(6, 218, 3, 'opwmqwmdkl', '2023-01-02 13:53:28'),
(7, 218, 4, 'opwmqwmdkl', '2023-01-02 13:53:28'),
(8, 218, 7, 'opwmqwmdkl', '2023-01-02 13:53:28'),
(9, 218, 3, 'no dry seal', '2023-02-13 04:35:29'),
(10, 218, 11, 'no dry seal\r\n', '2023-02-13 04:36:35'),
(11, 218, 3, 'popopopopo', '2023-02-13 05:58:16'),
(12, 221, 3, 'no dry seal', '2023-02-13 06:20:33'),
(13, 213, 3, 'no dry seal', '2023-02-13 06:43:27'),
(14, 213, 3, 'check', '2023-02-13 15:54:00'),
(15, 213, 2, 'test', '2023-02-13 16:18:47'),
(16, 234, 11, 'to be dry sealed\r\n', '2023-02-20 12:50:48'),
(17, 234, 3, 'to be dry sealed', '2023-02-20 13:35:48'),
(18, 234, 3, 'to be dry sealed', '2023-02-20 14:04:12'),
(19, 234, 11, 'to be dry sealed', '2023-02-20 14:04:12'),
(20, 234, 3, 'to be dry sealed', '2023-02-20 14:13:33'),
(21, 234, 11, 'to be dry sealed', '2023-02-20 14:13:33'),
(59, 232, 2, 'sadsasd', '2023-02-24 07:49:45'),
(60, 232, 3, 'sadsasd', '2023-02-24 07:49:45'),
(61, 232, 11, 'sadsasd', '2023-02-24 07:49:45'),
(62, 232, 12, 'sdsds', '2023-02-24 08:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(12) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `reason` text NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'f',
  `receipt_number` varchar(20) DEFAULT NULL,
  `receipt_img` varchar(100) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `disapproved_at` datetime DEFAULT NULL,
  `uploaded_at` datetime DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `slug`, `student_id`, `reason`, `remark`, `status`, `receipt_number`, `receipt_img`, `approved_at`, `disapproved_at`, `uploaded_at`, `confirmed_at`, `completed_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 'qn4WiJ3DO8AU', 105, 'scholarship', NULL, 'c', '12345', '1629660892_1449dca446599d52f110.jpeg', '2021-08-23 02:56:08', '2021-08-23 04:05:13', '2021-08-23 03:34:52', '2021-08-23 04:16:25', '2021-09-23 07:22:28', '2021-08-22 10:29:42', '2021-09-23 19:22:28', NULL),
(97, 'F1GR3w2Dbn9m', 108, 'scholarship', 'kulang', 'c', NULL, NULL, NULL, '2022-10-03 17:18:59', NULL, NULL, NULL, '2021-08-27 18:22:42', '2022-10-03 17:18:59', NULL),
(98, 'xiAZsdFG5I2t', 104, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:19:58', '2021-09-23 07:22:32', '2021-08-27 18:23:25', '2021-09-23 19:22:32', NULL),
(99, 'WVn2e5wCixzO', 129, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 18:25:25', '2021-08-27 18:25:25', NULL),
(100, 'JzFCgxPBVnf7', 94, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:21:29', '2021-09-23 07:22:24', '2021-08-27 18:44:02', '2021-09-23 19:22:24', NULL),
(101, 'EBoNLR1inUP8', 96, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:21:33', '2021-09-23 07:22:19', '2021-08-27 18:45:57', '2021-09-23 19:22:19', NULL),
(102, 'Lt38WmQKlbPs', 97, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:21:39', NULL, '2021-08-27 18:48:13', '2021-09-23 19:21:39', NULL),
(103, 'FJoGrsdlm0BT', 99, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:19:20', NULL, NULL, '2022-10-03 17:21:54', NULL, '2021-08-27 18:51:34', '2022-10-03 17:21:54', NULL),
(104, 'wj98VPCZUpFb', 100, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 14:19:37', NULL, NULL, '2022-09-19 16:31:10', NULL, '2021-08-27 18:58:36', '2022-09-19 16:31:10', NULL),
(105, 'WFg4RVKAvw0Y', 118, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 14:19:26', NULL, NULL, '2022-10-03 17:29:19', NULL, '2021-08-27 19:05:45', '2022-10-03 17:29:19', NULL),
(106, 'BqzYxJFCTkOA', 121, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 13:45:56', NULL, NULL, '2022-10-03 17:29:35', NULL, '2021-08-27 19:37:56', '2022-10-03 17:29:35', NULL),
(107, 'fNTnB1KDeo7y', 122, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 13:58:40', NULL, NULL, '2022-10-03 16:12:35', NULL, '2021-08-27 19:39:26', '2022-10-03 16:12:35', NULL),
(108, '6d2UhpjBHkIT', 123, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:40:30', '2021-08-27 19:40:30', NULL),
(109, 'a7kFuGBlTjE8', 124, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:43:36', '2021-08-27 19:43:36', NULL),
(110, 'lhToOijkrG7J', 124, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:44:10', '2021-08-27 19:44:24', '2021-08-27 19:44:24'),
(111, 'qxwjnBm7Z9O1', 125, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:45:32', '2021-08-27 19:45:32', NULL),
(112, 'qhSE7n6u0KVW', 127, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:46:47', '2021-08-27 19:46:47', NULL),
(113, 'RF8zYpPXT6Go', 132, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 16:45:22', '2022-09-30 14:20:39', '2022-09-30 14:20:39'),
(114, 'ENKrlgJIO3GU', 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:21:05', NULL, NULL, '2022-10-03 17:22:04', '2022-10-03 05:29:00', '2022-10-03 17:20:51', '2022-10-03 17:29:00', NULL),
(115, '2KDIMnyjAPXV', 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:32:27', NULL, NULL, '2022-10-03 17:32:32', '2022-10-03 05:36:03', '2022-10-03 17:32:04', '2022-10-03 17:36:03', NULL),
(116, '2uKR18GDfv4Q', 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:50:23', NULL, NULL, '2022-10-03 17:57:04', '2022-10-03 05:58:34', '2022-10-03 17:49:50', '2022-10-03 17:58:34', NULL),
(117, 'sXOfHJiWSnNz', 134, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 18:58:07', NULL, NULL, '2022-10-06 11:14:12', '2022-10-17 08:24:54', '2022-10-03 18:56:18', '2022-10-17 20:24:54', NULL),
(118, 'S6b4eRLVOtJB', 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-06 11:11:56', NULL, NULL, '2022-10-17 20:24:21', '2022-10-17 08:24:47', '2022-10-06 11:10:13', '2022-10-17 20:24:47', NULL),
(119, 'hti6yNjkwTvc', 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-17 20:35:26', NULL, NULL, '2022-10-17 20:49:31', '2022-10-17 08:50:17', '2022-10-17 20:35:12', '2022-10-17 20:50:17', NULL),
(120, 'RnLTEdNsbaPu', 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-17 20:52:08', NULL, NULL, '2022-10-17 20:52:16', NULL, '2022-10-17 20:51:56', '2022-10-17 20:52:16', NULL),
(121, 'ZXKB0FirndtN', 136, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-22 09:57:46', NULL, NULL, '2022-10-22 09:59:30', '2022-10-22 10:01:18', '2022-10-22 09:55:54', '2022-10-22 10:01:18', NULL),
(122, 'e9lxq8uLyGOR', 145, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 13:50:39', '2022-12-17 15:30:01', '2022-12-17 15:30:01'),
(123, '1Ho2XvN3hkxS', 207, 'scholarship', NULL, 'o', '23456756', '1676896218_1ffad9210a3b7fa8ef3a.jpg', '2023-02-20 20:16:07', NULL, '2023-02-20 20:30:18', '2023-02-27 13:07:23', '2023-02-27 01:38:28', '2023-02-20 19:22:43', '2023-02-27 13:38:28', NULL),
(124, 'J27NLPmlj6FW', 211, 're-admission', NULL, 'c', NULL, NULL, '2023-02-20 21:46:43', NULL, NULL, '2023-02-20 21:48:55', NULL, '2023-02-20 21:30:37', '2023-02-20 21:48:55', NULL),
(128, 'xva47HDl2fyi', 215, 'employment', '', 'c', NULL, NULL, NULL, '2023-02-26 20:59:36', NULL, NULL, NULL, '2023-02-25 13:02:57', '2023-02-26 20:59:36', NULL),
(129, 'mrRnJxESaVte', 215, 'transfer to other school', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-25 13:03:06', '2023-02-25 13:03:06', NULL),
(131, 'HdyopVNgvhu7', 214, 'employment', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-26 15:20:25', '2023-02-26 20:57:00', '2023-02-26 20:57:00'),
(133, 'kBqd4jy0WeRG', 214, 'scholarship', NULL, 'c', NULL, NULL, '2023-02-26 21:28:15', NULL, NULL, '2023-02-26 21:29:26', '2023-02-26 09:31:06', '2023-02-26 21:08:31', '2023-02-26 21:31:06', NULL),
(135, 'I7qwrU4kcLHJ', 229, 'employment', NULL, 'o', NULL, NULL, '2023-02-27 13:26:20', NULL, NULL, '2023-02-27 13:26:33', '2023-02-27 01:40:33', '2023-02-27 11:55:58', '2023-02-27 13:40:33', NULL),
(136, 'dNLq5epgSmXC', 229, 'employment', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-27 11:59:14', '2023-02-27 11:59:14', NULL),
(137, 'wlde6L7toC9r', 219, 'scholarship', NULL, 'o', NULL, NULL, '2023-02-27 13:55:49', NULL, NULL, '2023-02-27 13:56:00', '2023-02-27 01:56:31', '2023-02-27 13:31:14', '2023-02-27 13:56:31', NULL),
(138, 'yf1ESWrI9qZF', 219, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-27 18:24:37', '2023-02-27 18:24:37', NULL),
(139, 'PuNaf2BhrzgJ', 234, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 20:10:58', '2023-03-01 20:10:58', NULL),
(140, 'KzENS02k3BbJ', 234, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 20:11:52', '2023-03-01 20:11:52', NULL),
(141, 'MSAp4xzG7qoQ', 234, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 20:14:10', '2023-03-01 20:14:10', NULL),
(142, 'ANz6M3x0B4tD', 234, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 20:28:45', '2023-03-01 20:28:45', NULL),
(143, 'Ds5bUHMWAicJ', 234, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 20:30:11', '2023-03-01 20:30:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_approvals`
--

CREATE TABLE `request_approvals` (
  `id` bigint(20) NOT NULL,
  `request_detail_id` bigint(20) NOT NULL,
  `office_id` int(11) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'p',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `hold_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

CREATE TABLE `request_details` (
  `id` bigint(20) NOT NULL,
  `request_id` bigint(20) NOT NULL,
  `document_id` int(11) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `quantity` int(100) NOT NULL,
  `page` int(100) DEFAULT NULL,
  `free` smallint(6) NOT NULL DEFAULT 0,
  `library` int(1) NOT NULL,
  `laboratory` int(1) NOT NULL,
  `rotc` int(1) NOT NULL,
  `accounting_office` int(1) NOT NULL,
  `internal_audit` int(1) NOT NULL,
  `legal_office` int(1) NOT NULL,
  `printed_at` datetime DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`id`, `request_id`, `document_id`, `remark`, `status`, `quantity`, `page`, `free`, `library`, `laboratory`, `rotc`, `accounting_office`, `internal_audit`, `legal_office`, `printed_at`, `received_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(170, 96, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:20:20', '2021-09-23 19:22:28', '2021-08-22 10:29:42', '2023-02-26 21:00:47', NULL),
(171, 96, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:21:45', '2021-09-23 19:22:28', '2021-08-22 10:29:42', '2023-02-26 21:00:47', NULL),
(172, 97, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:22:42', '2023-02-26 21:00:47', NULL),
(173, 97, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:22:42', '2023-02-26 21:00:47', NULL),
(174, 97, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:22:42', '2023-02-26 21:00:47', NULL),
(175, 98, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:21:49', '2021-09-23 19:22:32', '2021-08-27 18:23:25', '2023-02-26 21:00:47', NULL),
(176, 98, 15, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:21:53', '2021-09-23 19:22:32', '2021-08-27 18:23:25', '2023-02-26 21:00:47', NULL),
(177, 99, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:25:25', '2023-02-26 21:00:47', NULL),
(178, 100, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:21:57', '2021-09-23 19:22:24', '2021-08-27 18:44:02', '2023-02-26 21:00:47', NULL),
(179, 100, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:22:01', '2021-09-23 19:22:24', '2021-08-27 18:44:02', '2023-02-26 21:00:47', NULL),
(180, 101, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:22:05', '2021-09-23 19:22:19', '2021-08-27 18:45:57', '2023-02-26 21:00:47', NULL),
(181, 101, 16, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2021-09-23 19:22:09', '2021-09-23 19:22:19', '2021-08-27 18:45:57', '2023-02-26 21:00:47', NULL),
(182, 102, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 15:53:27', '2022-10-03 15:55:46', '2021-08-27 18:48:13', '2023-02-26 21:00:47', NULL),
(183, 102, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 15:53:31', '2022-10-03 15:55:09', '2021-08-27 18:48:13', '2023-02-26 21:00:47', NULL),
(184, 102, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 15:54:09', NULL, '2021-08-27 18:48:13', '2023-02-26 21:00:47', NULL),
(185, 103, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:51:34', '2023-02-26 21:00:47', NULL),
(186, 103, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:51:34', '2023-02-26 21:00:47', NULL),
(187, 103, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:51:34', '2023-02-26 21:00:47', NULL),
(188, 104, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:58:36', '2023-02-26 21:00:47', NULL),
(189, 104, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:58:36', '2023-02-26 21:00:47', NULL),
(190, 104, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 18:58:36', '2023-02-26 21:00:47', NULL),
(191, 105, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:05:45', '2023-02-26 21:00:47', NULL),
(192, 105, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:05:46', '2023-02-26 21:00:47', NULL),
(193, 106, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:37:56', '2023-02-26 21:00:47', NULL),
(194, 107, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:39:26', '2023-02-26 21:00:47', NULL),
(195, 108, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:40:30', '2023-02-26 21:00:47', NULL),
(196, 108, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:40:30', '2023-02-26 21:00:47', NULL),
(197, 109, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:43:36', '2023-02-26 21:00:47', NULL),
(198, 109, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:43:36', '2023-02-26 21:00:47', NULL),
(199, 110, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:44:10', '2023-02-26 21:00:47', '2021-08-27 19:44:24'),
(200, 110, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:44:10', '2023-02-26 21:00:47', '2021-08-27 19:44:24'),
(201, 111, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:45:32', '2023-02-26 21:00:47', NULL),
(202, 112, 10, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, '2021-08-27 19:46:47', '2023-02-26 21:00:47', NULL),
(203, 113, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-09-19 16:45:22', '2023-02-26 21:00:47', '2022-09-30 14:20:39'),
(204, 113, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-09-19 16:45:22', '2023-02-26 21:00:47', '2022-09-30 14:20:39'),
(205, 113, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-09-19 16:45:22', '2023-02-26 21:00:47', '2022-09-30 14:20:39'),
(206, 114, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 17:22:32', '2022-10-03 17:29:00', '2022-10-03 17:20:51', '2023-02-26 21:00:47', NULL),
(207, 114, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 17:22:36', '2022-10-03 17:29:00', '2022-10-03 17:20:51', '2023-02-26 21:00:47', NULL),
(208, 115, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 17:35:42', '2022-10-03 17:36:03', '2022-10-03 17:32:04', '2023-02-26 21:00:47', NULL),
(209, 115, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 17:35:49', '2022-10-03 17:36:03', '2022-10-03 17:32:04', '2023-02-26 21:00:47', NULL),
(210, 116, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 17:57:52', '2022-10-03 17:58:34', '2022-10-03 17:49:50', '2023-02-26 21:00:47', NULL),
(211, 116, 9, NULL, 'd', 2, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-03 17:57:55', '2022-10-03 17:58:34', '2022-10-03 17:49:50', '2023-02-26 21:00:47', NULL),
(212, 117, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-06 11:15:08', '2022-10-06 11:21:58', '2022-10-03 18:56:18', '2023-02-26 21:00:47', NULL),
(213, 117, 9, NULL, 'd', 2, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-06 11:15:13', '2022-10-17 20:24:54', '2022-10-03 18:56:18', '2023-02-26 21:00:47', NULL),
(214, 118, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-17 20:24:28', '2022-10-17 20:24:47', '2022-10-06 11:10:13', '2023-02-26 21:00:47', NULL),
(215, 118, 9, NULL, 'd', 2, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-17 20:24:32', '2022-10-17 20:24:47', '2022-10-06 11:10:13', '2023-02-26 21:00:47', NULL),
(216, 119, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-17 20:49:36', '2022-10-17 20:50:17', '2022-10-17 20:35:12', '2023-02-26 21:00:47', NULL),
(217, 120, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-10-17 20:51:56', '2023-02-26 21:00:47', NULL),
(218, 121, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2022-10-22 10:00:14', '2022-10-22 10:01:18', '2022-10-22 09:55:54', '2023-02-26 21:00:47', NULL),
(219, 122, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-12-16 13:50:39', '2023-02-26 21:00:47', '2022-12-17 15:30:01'),
(220, 122, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-12-16 13:50:39', '2023-02-26 21:00:47', '2022-12-17 15:30:01'),
(221, 122, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-12-16 13:50:39', '2023-02-26 21:00:47', '2022-12-17 15:30:01'),
(222, 122, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, '2022-12-16 13:50:39', '2023-02-26 21:00:47', '2022-12-17 15:30:01'),
(223, 123, 14, NULL, 'c', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-02-27 13:08:00', '2023-02-27 13:38:27', '2023-02-20 19:22:43', '2023-02-27 13:38:27', NULL),
(224, 124, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-02-20 21:50:00', '2023-02-20 21:53:19', '2023-02-20 21:30:37', '2023-02-26 21:00:47', NULL),
(225, 124, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-20 21:30:37', '2023-02-26 21:00:47', NULL),
(226, 125, 6, NULL, 'd', 1, NULL, 0, 1, 1, 0, 0, 0, 0, NULL, NULL, '2023-02-24 16:26:15', '2023-02-26 21:00:47', NULL),
(227, 126, 17, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-24 16:26:29', '2023-02-26 21:00:47', NULL),
(228, 127, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(229, 127, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(230, 127, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(231, 127, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(232, 127, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(233, 127, 14, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(234, 127, 16, NULL, 'd', 1, NULL, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(235, 127, 19, NULL, 'd', 1, NULL, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-25 10:44:09', '2023-02-26 21:00:47', NULL),
(236, 128, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, '2023-02-25 13:02:57', '2023-02-26 21:00:47', NULL),
(237, 128, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, '2023-02-25 13:02:57', '2023-02-26 21:00:47', NULL),
(238, 128, 17, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, '2023-02-25 13:02:57', '2023-02-26 21:00:47', NULL),
(239, 129, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, '2023-02-25 13:03:06', '2023-02-26 21:00:47', NULL),
(240, 129, 17, NULL, 'd', 1, NULL, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, '2023-02-25 13:03:06', '2023-02-26 21:00:47', NULL),
(241, 129, 18, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 1, 0, NULL, NULL, '2023-02-25 13:03:06', '2023-02-26 21:00:47', NULL),
(242, 129, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 1, 1, NULL, NULL, '2023-02-25 13:03:06', '2023-02-26 21:00:47', NULL),
(243, 131, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 15:20:25', '2023-02-26 21:00:47', '2023-02-26 20:57:00'),
(244, 132, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 20:57:22', '2023-02-26 21:00:47', NULL),
(245, 132, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 20:57:22', '2023-02-26 21:00:47', NULL),
(246, 132, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 20:57:22', '2023-02-26 21:00:47', NULL),
(247, 132, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 20:57:22', '2023-02-26 21:00:47', NULL),
(248, 132, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 20:57:22', '2023-02-26 21:00:47', NULL),
(249, 132, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-26 20:57:22', '2023-02-26 21:00:47', NULL),
(250, 133, 6, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-26 21:29:48', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-02-26 21:31:06', NULL),
(251, 133, 9, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-26 21:30:00', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-02-26 21:31:06', NULL),
(252, 133, 17, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-26 21:30:06', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-02-26 21:31:06', NULL),
(253, 133, 18, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-26 21:30:12', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-02-26 21:31:06', NULL),
(254, 135, 6, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-27 13:29:00', '2023-02-27 13:32:30', '2023-02-27 11:55:58', '2023-02-27 13:32:30', NULL),
(255, 135, 9, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-27 13:39:00', '2023-02-27 13:40:33', '2023-02-27 11:55:58', '2023-02-27 13:40:33', NULL),
(256, 136, 6, NULL, 'p', 1, NULL, 0, 1, 1, 0, 1, 0, 0, NULL, NULL, '2023-02-27 11:59:14', '2023-02-27 18:30:23', NULL),
(257, 136, 9, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-27 11:59:14', '2023-02-27 11:59:14', NULL),
(258, 137, 9, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-02-27 13:56:00', '2023-02-27 13:56:31', '2023-02-27 13:31:14', '2023-02-27 13:56:31', NULL),
(259, 138, 6, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-02-27 18:24:37', '2023-02-27 18:24:37', NULL),
(260, 139, 6, NULL, 'p', 2, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:10:58', '2023-03-01 20:10:58', NULL),
(261, 140, 6, NULL, 'p', 2, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:11:52', '2023-03-01 20:11:52', NULL),
(262, 141, 6, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:14:10', '2023-03-01 20:14:10', NULL),
(263, 141, 9, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:14:10', '2023-03-01 20:14:10', NULL),
(264, 142, 16, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:28:45', '2023-03-01 20:28:45', NULL),
(265, 142, 19, NULL, 'p', 1, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:28:45', '2023-03-01 20:28:45', NULL),
(266, 143, 6, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:30:11', '2023-03-01 20:30:11', NULL),
(267, 143, 9, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:30:11', '2023-03-01 20:30:11', NULL),
(268, 143, 17, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:30:11', '2023-03-01 20:30:11', NULL),
(269, 143, 18, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:30:11', '2023-03-01 20:30:11', NULL),
(270, 143, 13, NULL, 'p', 1, NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-01 20:30:11', '2023-03-01 22:22:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `landing_page` varchar(25) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `landing_page`, `identifier`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Superadmin', 'users', 'superadmin', 'IT User for maintainances', '2021-05-02 01:50:20', '2022-11-17 16:56:46', NULL),
(2, 'Admin', 'dashboards', 'admin', 'Registrar', '2021-05-04 14:45:12', '2021-07-29 08:06:54', NULL),
(4, 'Students', 'requests', 'students', 'Student Role', '2021-05-04 14:46:09', '2021-05-04 14:46:09', NULL),
(5, 'Offices ', 'approval', 'offices', 'Office Role', '2021-05-12 23:37:29', '2021-05-12 23:37:29', NULL),
(8, 'Admission', 'admission', 'admissionoffice', 'Admission Office', '2022-12-13 13:22:27', '2022-12-13 13:22:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1718, 1, 1, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1719, 1, 2, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1720, 1, 3, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1721, 1, 4, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1722, 1, 5, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1723, 1, 6, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1724, 1, 33, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1725, 1, 34, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1726, 1, 42, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1727, 1, 43, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1728, 1, 53, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1729, 1, 54, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1730, 1, 7, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1731, 1, 8, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1732, 1, 9, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1733, 1, 10, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1734, 1, 11, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1735, 1, 12, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1736, 1, 13, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1737, 1, 14, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1738, 1, 39, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1739, 1, 40, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1740, 1, 23, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1741, 1, 24, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1742, 1, 25, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1743, 1, 26, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1744, 1, 37, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1745, 1, 38, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1746, 1, 45, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1747, 1, 46, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1748, 1, 15, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1749, 2, 15, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1750, 1, 47, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1751, 2, 47, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1752, 1, 48, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1753, 2, 48, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1754, 1, 16, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1755, 1, 17, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1756, 1, 18, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1757, 1, 19, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1758, 1, 20, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1759, 1, 21, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1760, 1, 22, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1761, 1, 41, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1762, 1, 49, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1763, 1, 50, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1764, 1, 51, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1765, 1, 52, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1766, 1, 55, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1767, 4, 27, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1768, 4, 28, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1769, 2, 29, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1770, 1, 30, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1771, 1, 31, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL),
(1772, 1, 32, '2022-11-19 22:06:43', '2022-11-19 22:06:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `student_number` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `level` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `admitted_year_sy` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `elem_school_address` varchar(255) DEFAULT NULL,
  `elem_year_graduated` varchar(255) DEFAULT NULL,
  `high_school_address` varchar(255) DEFAULT NULL,
  `high_year_graduated` varchar(255) DEFAULT NULL,
  `college_school_address` varchar(255) DEFAULT NULL,
  `year_graduated` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_number`, `firstname`, `lastname`, `middlename`, `suffix`, `gender`, `contact`, `birthdate`, `level`, `status`, `address`, `admitted_year_sy`, `semester`, `elem_school_address`, `elem_year_graduated`, `high_school_address`, `high_year_graduated`, `college_school_address`, `year_graduated`, `course_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(145, '2019-00425-TG-0', 'Harvey', 'Buena', 'Almerino', NULL, NULL, NULL, '1999-02-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2019, 2, 218, '2022-12-15 15:08:12', '2022-12-15 15:08:12', NULL),
(203, '2050-00439-TG-0', 'Angelica', 'Valenton', 'Fe', NULL, NULL, NULL, '2000-09-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 224, '2023-02-13 13:18:56', '2023-02-13 13:18:56', NULL),
(207, '2040-00245-TG-0', 'Cristina', 'Sayson', 'Fe', NULL, 'f', '0987678767', '1990-04-22', 3, 'enrolled', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '1212-1212', 'Second Semester', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '1234', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '1234', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', 2021, 2, 230, '2023-02-13 20:28:04', '2023-03-01 00:51:39', NULL),
(211, '2087-00425-TG-0', 'Johnny', 'Buenaventura', 'Adios', NULL, 'f', '09987898765', '0000-00-00', 3, 'enrolled', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '1212-1212', 'First Semester', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '1234', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '1234', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', 1233, 9, 234, '2023-02-20 20:45:03', '2023-03-01 00:38:58', NULL),
(219, '2010-00368-TG-0', 'Edmon', 'Dela Cruz', 'Madronio', NULL, 'm', '09158174331', '0000-00-00', 2, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 248, '2023-02-27 09:31:01', NULL, NULL),
(228, '2019-00234-TG-0', 'Marcus', 'Arevalo', 'Sayson', NULL, 'f', '09847364634', '0000-00-00', NULL, 'returning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 261, '2023-02-27 11:48:22', '2023-03-01 18:20:54', NULL),
(229, '2021-00524-TG-0', 'Edmon', 'Dela Cruz', 'Madronio', NULL, 'm', '09499594616', '0000-00-00', 2, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 262, '2023-02-27 11:51:49', '2023-02-27 11:53:02', NULL),
(234, '2018-00368-TG-0', 'Edmon', 'Dela Cruz', 'Madronio', NULL, 'm', '09499594616', '1999-08-17', 2, 'enrolled', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '2018-2021', 'Second Semester', 'Sa tabi lang', '2012', 'Sa computer shop', '2018', 'Ahh sa PUPT to', NULL, 1, 304, '2023-03-01 19:23:48', '2023-03-01 20:03:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_admission`
--

CREATE TABLE `student_admission` (
  `stud_admissionID` bigint(20) NOT NULL,
  `studID` int(11) NOT NULL,
  `sar_pupcct_resultID` int(11) NOT NULL,
  `sar_pupcet_result_status` varchar(255) DEFAULT NULL,
  `f137ID` int(11) NOT NULL,
  `f137_status` varchar(255) DEFAULT NULL,
  `f138ID` int(11) NOT NULL,
  `g10_status` varchar(255) DEFAULT NULL,
  `g11_status` varchar(255) DEFAULT NULL,
  `g12_status` varchar(255) DEFAULT NULL,
  `cert_dry_sealID` int(11) NOT NULL,
  `cert_dry_sealID_twelve` int(20) NOT NULL,
  `app_grad` int(20) NOT NULL,
  `or_app_grad` int(20) NOT NULL,
  `latest_regi` int(20) DEFAULT NULL,
  `eval_res` int(20) DEFAULT NULL,
  `course_curri` int(20) DEFAULT NULL,
  `cert_candi` int(20) NOT NULL,
  `gen_clear` int(20) NOT NULL,
  `or_grad_fee` int(20) NOT NULL,
  `cert_confer` int(20) NOT NULL,
  `schoolid` int(20) NOT NULL,
  `honor_dis` int(20) NOT NULL,
  `trans_rec` int(20) NOT NULL,
  `psa_nsoID` int(11) NOT NULL,
  `psa_nso_status` varchar(255) DEFAULT NULL,
  `good_moralID` int(11) NOT NULL,
  `good_moral_status` varchar(255) DEFAULT NULL,
  `medical_certID` int(11) NOT NULL,
  `medical_cert_status` varchar(255) DEFAULT NULL,
  `picture_two_by_twoID` int(11) NOT NULL,
  `twobytwo_status` varchar(255) DEFAULT NULL,
  `certicate_of_completion` int(20) DEFAULT NULL,
  `nc_non_enrollmentID` int(11) NOT NULL,
  `coc_hs_shsID` int(11) NOT NULL,
  `ac_pept_alsID` int(11) NOT NULL,
  `admission_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_admission`
--

INSERT INTO `student_admission` (`stud_admissionID`, `studID`, `sar_pupcct_resultID`, `sar_pupcet_result_status`, `f137ID`, `f137_status`, `f138ID`, `g10_status`, `g11_status`, `g12_status`, `cert_dry_sealID`, `cert_dry_sealID_twelve`, `app_grad`, `or_app_grad`, `latest_regi`, `eval_res`, `course_curri`, `cert_candi`, `gen_clear`, `or_grad_fee`, `cert_confer`, `schoolid`, `honor_dis`, `trans_rec`, `psa_nsoID`, `psa_nso_status`, `good_moralID`, `good_moral_status`, `medical_certID`, `medical_cert_status`, `picture_two_by_twoID`, `twobytwo_status`, `certicate_of_completion`, `nc_non_enrollmentID`, `coc_hs_shsID`, `ac_pept_alsID`, `admission_status`, `created_at`) VALUES
(36, 218, 1, 'approve', 2, 'reject', 3, 'approve', 'reject', 'approve', 11, 12, 13, 14, 0, 16, 17, 18, 19, 20, 21, 22, 23, 24, 4, 'reject', 5, 'approve', 6, 'reject', 7, 'approve', 25, 0, 0, 0, 'complete', '2023-02-27 01:01:12'),
(50, 230, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 0, NULL, NULL, 0, 0, 0, 'incomplete', '2023-02-20 11:19:49'),
(51, 224, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 'incomplete', '2023-02-20 11:18:14'),
(52, 234, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 'incomplete', '2023-02-20 14:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `student_admission_files`
--

CREATE TABLE `student_admission_files` (
  `id` int(11) NOT NULL,
  `studID` int(11) NOT NULL,
  `sar_pupcct_results_files` varchar(255) NOT NULL,
  `f137_files` varchar(255) NOT NULL,
  `g10_files` varchar(255) NOT NULL,
  `g11_files` varchar(255) NOT NULL,
  `g12_files` varchar(255) NOT NULL,
  `psa_nso_files` varchar(255) NOT NULL,
  `good_moral_files` varchar(255) NOT NULL,
  `medical_cert_files` varchar(255) NOT NULL,
  `picture_two_by_two_files` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_admission_files`
--

INSERT INTO `student_admission_files` (`id`, `studID`, `sar_pupcct_results_files`, `f137_files`, `g10_files`, `g11_files`, `g12_files`, `psa_nso_files`, `good_moral_files`, `medical_cert_files`, `picture_two_by_two_files`, `created_at`) VALUES
(12, 201, '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n_1.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n_1.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n_1.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '2023-02-09 15:46:03'),
(13, 230, 'FB_IMG_1676709433707.jpg', 'FB_IMG_1676709519342.jpg', 'FB_IMG_1676709689762.jpg', 'FB_IMG_1676709680684.jpg', 'FB_IMG_1676709693887.jpg', 'b2ac88_color_shades.jpg', 'd4b895_color_shades.jpg', 'depositphotos_2832103-stock-photo-calesa-horse-drawn-carriage-vigan.jpg', 'b2ac88_color_shades.jpg', '2023-02-20 11:21:38'),
(14, 234, 'FB_IMG_1676709433707.jpg', 'FB_IMG_1676709519342.jpg', 'FB_IMG_1676709689762.jpg', 'FB_IMG_1676709680684.jpg', 'FB_IMG_1676709693887.jpg', 'b2ac88_color_shades.jpg', 'd4b895_color_shades.jpg', 'depositphotos_2832103-stock-photo-calesa-horse-drawn-carriage-vigan.jpg', 'depositphotos_2832103-stock-photo-calesa-horse-drawn-carriage-vigan.jpg', '2023-02-20 12:48:23'),
(15, 237, '20221229_12221207.png', 'acts-bg14.png', 'bg-login.jpg', 'bldg-a.jpg', 'login-img.jpg', 'logo.png', 'odrs-logo.png', 'pupt-logo.png', 'sample.png', '2023-02-26 13:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `submission_status`
--

CREATE TABLE `submission_status` (
  `id` int(10) NOT NULL,
  `legend` varchar(256) NOT NULL,
  `submission_status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_status`
--

INSERT INTO `submission_status` (`id`, `legend`, `submission_status`) VALUES
(1, 'O', 'Open'),
(2, 'OG', 'Ongoing'),
(3, 'C', 'Cancel'),
(4, 'D', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `role_id` int(11) NOT NULL,
  `office_id` int(11) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `status`, `role_id`, `office_id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(60, 'jerome', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'jerome4.jalandoon@gmail.com', 'a', 1, NULL, NULL, '2021-05-07 16:03:38', '2021-05-07 16:03:38', NULL),
(85, 'pauline', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'paulinellagas1@gmail.com', 'a', 2, NULL, NULL, '2021-05-12 13:07:05', '2021-05-12 13:07:05', NULL),
(86, 'jamrei', '$2y$10$6Wasqq7/lZwrq7y0kYYzb.rez/GCZ7adIqnQ/S3kEDY8oypNP.S5.', 'jamrei@gmail.com', 'a', 5, 1, NULL, '2021-05-12 23:38:27', '2021-05-12 23:38:27', NULL),
(124, 'nerissa', '$2y$10$Ud41kl7Ln26OY8sAkTLoheGpulM5TYa8CxcwqiajFHVdRDJnG8Jlm', 'email@gmail.com', 'a', 5, 4, NULL, '2021-06-24 15:12:22', '2021-07-29 12:29:07', NULL),
(160, '2018-00231-TG-0', '$2y$10$OS9fLcnKcqSsSeT4rjsnbeKP5P.Simt23/nS0m0uKVQd.tjWVD0Iy', 'mhar.apura@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:29', '2021-07-29 09:27:49', NULL),
(161, '2018-00341-TG-0', '$2y$10$qbj5rPZ8wp5wE6AXuuZl6ucgcHm9SUPTWbGS2Ht9dqxsagnNq.Slm', 'j.balatong1999@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:32', '2021-07-25 17:09:32', NULL),
(162, '2018-00525-TG-0', '$2y$10$3pKawmJZtAFShXiApOXZXOrraTqwxyvUMWHYaKWPjl7hNlujWcG86', 'ecbangga@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:34', '2021-07-25 17:09:34', NULL),
(163, '2018-00484-TG-0', '$2y$10$ZtadniFykJRZuUiUAcVF0.s6AQt.Sns5cI9WdgY8rqEdFKH6Goi8.', 'llynttburton08@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:38', '2021-07-25 17:09:38', NULL),
(164, '2018-00343-TG-0', '$2y$10$78d/83sfm805DYplo/uNu.R2y2S5XxdYmjXdxWL37f0W5/DWplDdu', 'cabanelacharmie24@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:40', '2021-07-25 17:09:40', NULL),
(165, '2018-00256-TG-0', '$2y$10$DOqTctjc4Xc3bXqgcLrzpujcW1TJLBViKRxgvNBEduKQMRra3zFCS', 'joshuacapalaran27@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:43', '2021-07-25 17:09:43', NULL),
(166, '2018-00220-TG-0', '$2y$10$gFL0/lnpcUkhSCmajvmu1.LoZpNQF72GsuFGZi7r3D2IO//XtLC6.', 'quieljeremiahcariaso04@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:46', '2021-07-25 17:09:46', NULL),
(167, '2018-00342-TG-0', '$2y$10$XOXv2T9S0LyD2r92Pkb95ONLmCQrgBs42UArao7QoRCGhD3UYYZVq', 'kzcortes27@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:49', '2021-07-25 17:09:49', NULL),
(168, '2018-00361-TG-0', '$2y$10$fJ541YbXPBgpibw2D202A.u/fUBnrJ5ifASMMxB3DloeAT8qnKz2W', 'johnrusseldacanay@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:51', '2021-07-25 17:09:51', NULL),
(169, '2018-02367-TG-0', '$2y$10$dELvpR5LIy3PChkdx0a0zu2ltrCOBZcu1EWXRVBrPHXGwtamPqAui', 'edmondelacruz25@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:54', '2021-07-25 17:09:54', NULL),
(170, '2018-00353-TG-0', '$2y$10$Goe5lv05bJmlc3uVLNI3beXkfCnWg5Usv4Wnga/EpnqasdDgBOW2q', 'erjohn13@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:57', '2021-07-25 17:09:57', NULL),
(171, '2018-00379-TG-0', '$2y$10$.F9tNzSjzcdwOUmNydSkSucI2fFI142kh/ZWNzA5JZr2FaWzOVzhO', 'froilanfernandez08@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:09:59', '2021-07-25 17:09:59', NULL),
(172, '2018-00322-TG-0', '$2y$10$6AMTygLxS/5R4QkYKvsQ1eOwm0wl7MGRQ57EHIQklMVW2GoANVOBG', 'gabitoraymond358@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:02', '2021-07-25 17:10:02', NULL),
(173, '2018-00293-TG-0', '$2y$10$z8pmw2SyVYUcI6tMzkXN4uKbxnyHMOXOeFqFBrcgoiT8tpOI3Tft6', 'jerome.jalandoon@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:05', '2021-08-22 18:59:18', NULL),
(174, '2018-00315-TG-0', '$2y$10$R6Blu3eD/BUDTww9CNCM5ONAR78CL8sLIBzCzMLebCtFjeve4SEcK', 'choilapitan47@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:08', '2021-07-25 17:10:08', NULL),
(175, '2018-00487-TG-0', '$2y$10$DFh4xChAyELwKF7.O7xC0OZRrvtoegmeUFdcaZCyk36sw5.WfTwoa', 'khimlaude@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:11', '2021-07-25 17:10:11', NULL),
(176, '2018-00523-TG-0', '$2y$10$XlTu0Z.2fgdjiYiqQKsI5uIJBt/Fil2in8TQoglq0HX.cpZ38/0kC', 'lazarochan03@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:14', '2021-07-25 17:10:14', NULL),
(177, '2018-00299-TG-0', '$2y$10$zKMvJK1jujnSGBWSege2reOTYO394HLp2GUXgmieh11mEUsgTdoQq', 'davidlimba19@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:16', '2021-07-25 17:10:16', NULL),
(178, '2018-00376-TG-0', '$2y$10$DMRFBv8d6ByGklCKyS6heeAOHGa/YgyEtHTZ6dNvPt.4Ud.Hv9eEq', 'linijin17@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:19', '2021-07-25 17:10:19', NULL),
(179, '2018-00319-TG-0', '$2y$10$HEW9fbXtKx7/D6Rd2.56dunbHZHci7itGYc9m9XxZfP9peeO4vZya', 'paulinellagas@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:22', '2021-07-25 17:10:22', NULL),
(180, '2018-00349-TG-0', '$2y$10$rOhAKNFSWAdFrSLSMlKdUOoRSozCw3utbGLJJkN.1XA.6K1hVt..2', 'zklumabi@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:25', '2021-07-25 17:10:25', NULL),
(181, '2018-00330-TG-0', '$2y$10$OGCyUPojvnhbjpzYa39Ge.5UHtNX82GwUcyGFM7LiAMeD0V9SbcBO', 'nerissamaglente2@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:28', '2021-07-25 17:10:28', NULL),
(182, '2018-00328-TG-0', '$2y$10$JN1/srAEdsnhZXQid1C4p.w.qh0mubWFsQC5xTA7vBoFEeZzcBNu2', 'jamreimanalo@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:30', '2021-07-25 17:10:30', NULL),
(183, '2018-00372-TG-0', '$2y$10$eirFjG71D4TzlogGECzrmOuQXWbklt9JiJpGuilo9WHKyhhLPk30u', 'marcusmanuel.pupt@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:33', '2021-07-25 17:10:33', NULL),
(184, '2018-00305-TG-0', '$2y$10$ObUdEkqVPy7NhJdQ3nE3keeX2jK.LsY5w9LM5p8g9uUxAdAjUKOI6', 'mnmerielmanuel@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:36', '2021-07-25 17:10:36', NULL),
(185, '2018-00513-TG-0', '$2y$10$8aS/.QJzIGW41RDOogOL8.nrCqMKKSHfwzqNF2H3Jngpe2tH9UD7y', 'jcnavaja28@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:39', '2021-07-25 17:10:39', NULL),
(186, '2018-00366-TG-0', '$2y$10$Gjtx6aCN4dF4x1xeS/vrROzunRkiO11/yjrYcOI.1EKqxoPsOqtI.', 'lezzaanne@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:41', '2021-07-25 17:10:41', NULL),
(187, '2018-00345-TG-0', '$2y$10$YcNiVP49qAb5XH5GBAKcWu5sh3Gkmj1jEKlahoxDeYpKK2xfQbICy', 'jillianpollescas@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:45', '2021-07-25 17:10:45', NULL),
(188, '2018-00354-TG-0', '$2y$10$rRoEBEGAckQlhvHE.YZL.eVKQrBEtkCuDLlP/csuqAOuzJH2Oaspm', 'grasyamallen@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:47', '2021-07-25 17:10:47', NULL),
(189, '2018-00260-TG-0', '$2y$10$/ILVmzggQsveumVfMHPm/OqnPRwaLReu91StscpEgKJD.vSHI3AQ.', 'rakimjasmine@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:50', '2021-07-25 17:10:50', NULL),
(190, '2018-00355-TG-0', '$2y$10$rHYUDoOSkLFAZvozW4VAzuXf.w6dLTWHot0Os1jlmV633wrDaGnV6', 'shailynjoycesaan@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:53', '2021-07-25 17:10:53', NULL),
(191, '2018-00338-TG-0', '$2y$10$rgyjwqVMkgPKujOh4yuK1OyGN9YELzx3uMigYxam2js1Ginv4UMn2', 'jamiesamar18@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:56', '2021-07-25 17:10:56', NULL),
(192, '2018-00263-TG-0', '$2y$10$NdK5JXMOA9JbU6JtQHUnf.eZk6XVtCaG4swYI3NL3ZCkwRsT8uW1S', 'serojealdrin@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:10:58', '2021-07-25 17:10:58', NULL),
(193, '2018-00313-TG-0', '$2y$10$VFT14NFCe5/pHJC8oSKVQuPdFx3DJYZ53QmiL8gLdPgt0qSX/Yvxa', 'tmbrccl@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:11:01', '2021-07-25 17:11:01', NULL),
(194, '2018-00304-TG-0', '$2y$10$GLcvKvOJ720AxyZ3f7Lg4.0O8pPdVraLpdUURLc1D4Rhjen7BaRtO', 'bernatrads4@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:11:04', '2021-07-25 17:11:04', NULL),
(195, '2018-00245-TG-0', '$2y$10$pzX3JgNr/qIAppgkGYlq...CJ.8OdnrKC5IUgRLCLxHo7xN1EJF42', 'virginiatraquena@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:11:07', '2021-07-25 17:11:07', NULL),
(196, '2018-00274-TG-0', '$2y$10$H0x1b0.H4Uz1HOJeZoCW2OtRZUOWAmQzko9Iy59uD.pzpZg5ElIYi', 'siiidyyeeeyy@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:11:09', '2021-07-25 17:11:09', NULL),
(197, '2018-00253-TG-0', '$2y$10$ruhx0aK6nRhQOO0XvNyUpOEZ3wiYpG6DYgk7gQ6zGL6/1bDJYfmsi', 'alyvillanueva14@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:11:12', '2021-07-25 17:11:12', NULL),
(198, '2018-00239-TG-0', '$2y$10$10fYKAvzjz4.prVD4E/FPuTWABiIaTafALbTzCNjScNtSqYI0DXxq', 'harveyjohn1926@gmail.com', 'a', 4, NULL, NULL, '2021-07-25 17:11:15', '2021-07-25 17:11:15', NULL),
(199, 'sampleuser', '$2y$10$ZPY0NqwvhtcYBhxW1/aKgOV1aywtw8cOdTvFXODOWVwrF1klD3TeO', 'sample@gmail.com', 'a', 2, 1, 'acae4c9e83e53b63ffc7740215898a65', '2021-07-29 08:07:51', '2021-07-29 08:07:51', NULL),
(200, '2019-00440-TG-0', '$2y$10$2HLnVcx6m9I8HzwWYCwjduvWqz1X4hskNOzAq.kU3OBDCpltlaV8O', 'maiachristina.gaerlan@gmail.com', 'a', 4, NULL, NULL, '2021-07-29 12:08:48', '2021-07-29 12:08:48', NULL),
(202, '2018-00124-TG-0', '$2y$10$K2M7odx8Fe.veUDr5G6dZeuPrzpx9QJI9/NWJzs/USPBeBqJU0pGq', 'kyledula29@gmail.com', 'a', 4, NULL, NULL, '2022-10-03 17:01:24', '2022-10-03 17:01:24', NULL),
(203, '2019-00433-TG-0', '$2y$10$EJoK7uMDGek/lwfyPFV3luMb1DxEvx.hj4AHS8nFAeiRY0aFhua6q', 'axiecryptodula@gmail.com', 'a', 4, NULL, NULL, '2022-10-03 18:51:06', '2022-10-03 18:51:06', NULL),
(205, '2019-00460-TG-0', '$2y$10$1BiUjoOzqvLyxXWUBnXXyezqpuvFEjpr4LjO6tkryZ13wh/zM.vVO', 'kyledula33@gmail.com', 'a', 4, NULL, NULL, '2022-10-22 09:52:33', '2022-10-22 09:52:33', NULL),
(207, 'offices1', 'adminpassword', 'kyledula29@gmail.com', 'a', 5, 5, 'a18fd8a599cd05360d630ad2e60b2a63', '2022-11-17 13:42:19', '2023-02-13 15:34:30', '2023-02-13 15:34:30'),
(211, 'Liwayoffice', 'adminpassword', 'liwaymabangis@gmail.com', 'a', 2, 1, 'a18fd8a599cd05360d630ad2e60b2a63', '2022-11-20 00:16:34', '2023-02-27 09:06:17', '2023-02-27 09:06:17'),
(212, '2017-00439-TG-0', '$2y$10$xnk4qMi94KSR0hFsf.v4Tekzv14bEe5wzway7olTD15WAKh.ulGBq', 'kyledula37@gmail.com', 'a', 4, NULL, NULL, '2022-11-20 00:18:00', '2022-11-20 00:18:00', NULL),
(214, 'hbuena', 'harvz123', 'harvz.buena@gmail.com', 'a', 2, 1, '83ad196a055bb4d87f9d073307d46ddf', '2022-12-13 12:01:37', '2022-12-13 13:00:32', '2022-12-13 13:00:32'),
(215, 'hbuena1', '$2y$10$peVJYaAJJ4mQAFozVPPE9OHUndP64Jkv2SQnHXzuENJ0cx5MYhvaG', 'harvz.buena1@gmail.com', 'a', 8, 1, 'a15336249a17c76a85a66edf026ad1bc', '2022-12-13 13:23:30', '2022-12-13 13:23:30', NULL),
(218, '2019-00425-TG-0', '$2y$10$peVJYaAJJ4mQAFozVPPE9OHUndP64Jkv2SQnHXzuENJ0cx5MYhvaG', 'nmpcdsmts@gmail.com', 'a', 4, NULL, NULL, '2022-12-15 15:08:12', '2022-12-15 15:08:12', NULL),
(219, 'admincute', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'edmondelacruz10@gmail.com', 'a', 5, 6, '0f694b519220903a8bc0ee459678de20', '2023-02-11 21:06:59', '2023-02-25 09:55:48', NULL),
(220, 'adminone', '$2y$10$RxAsDtPgHTasv3ipZkX1VOFDXE46WIQh5sJgOttt0YCWIRBzquAC6', 'adminone@gmail.com', 'a', 5, 5, '21f9188e66d4c94c09b7e096f8deda50', '2023-02-11 21:11:02', '2023-02-13 15:34:34', '2023-02-13 15:34:34'),
(221, 'dfsdfsdf', '$2y$10$7ya5ximfVPAWqaT/.tsBL.9c2IFu5ryxxKQaTLbazZYVWslbKs4se', 'sdfs@gmail.com', 'a', 4, NULL, NULL, '2023-02-11 22:32:13', '2023-02-11 22:32:13', NULL),
(223, '2019-00425-TG-0', '$2y$10$Zb/nL6WhP5yYMbKC/TTZs.XXASsj.u47KmuL61lCbYEwOfbW4qdoK', 'angelbayron2900@gmail.com', 'a', 4, NULL, NULL, '2023-02-13 10:45:13', '2023-02-13 10:45:13', NULL),
(224, '2050-00439-TG-0', '$2y$10$ZhB92rcZXm2lG1dJkUoqb.YMg2b.lDaGScEsL4jdZXmEy/sPfpWCe', 'qonevora.afolari@gotgel.org', 'a', 4, NULL, NULL, '2023-02-13 13:18:56', '2023-02-13 13:18:56', NULL),
(226, 'registrar', '$2y$10$CXw61dhcbGVCZGAYslAXsemPBYFJ4g1xNfBgF8nmCrHA3.QkJHIMu', 'kyledula29@gmail.com', 'a', 2, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-13 15:35:29', '2023-02-13 15:38:20', '2023-02-13 15:38:20'),
(227, 'laboratory', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'kyledula29@gmail.com', 'a', 5, 7, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-13 15:39:12', '2023-02-25 10:00:48', NULL),
(230, '2040-00245-TG-0', '$2y$10$ZwR7Ryu5Cdg4b3eBAkevQO3seT25opwB/O1EUVwsqA/.SBjsUUoy.', 'kimbapchin@gmail.com', 'a', 4, NULL, NULL, '2023-02-13 20:28:04', '2023-02-13 20:28:04', NULL),
(234, '2087-00425-TG-0', '$2y$10$R.XSt1qSMog2WNGnzlMyY.MWpCkibEZnBs9UXt.rXfdw6ENim.Wl6', 'gelpianocovers@gmail.com', 'a', 4, NULL, NULL, '2023-02-20 20:45:03', '2023-02-20 20:45:03', NULL),
(239, 'rotcoffice', '$2y$10$u.d4oTRMLNzmAPkvc6HkVOC6iSIxEmj0YDdXlM.SmMAcMGo1YXdoG', 'rotcoffice@gmail.com', 'a', 5, 8, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:34:11', '2023-02-25 16:34:11', NULL),
(240, 'accountingoffice', '$2y$10$HkqoICDdQLDUeUmWT29l.O6Sbm2Kg4kLOPye50MdrBPszbS5N2cc2', 'accountingoffice@gmail.com', 'a', 5, 9, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:34:51', '2023-02-25 16:34:51', NULL),
(241, 'InternalOffice', '$2y$10$MCyFzGvvmcyb9vhJZZPQ9OqWblouRtzO4l4zt1ULwWX3xFcloyz8e', 'InternalOffice@gmail.com', 'a', 5, 10, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:35:36', '2023-02-25 16:35:36', NULL),
(242, 'LegalOffice', '$2y$10$JPJnFGj.nGfERcRPVgKQcOudRSXOyXw72KRaZ4BmML0nYf43HTpDO', 'LegalOffice@gmail.com', 'a', 5, 11, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:36:32', '2023-02-25 16:36:32', NULL),
(244, 'liway', '$2y$10$Xsrvzx.YA0dUq32O6zhp1O3/b6ho9Uwatogt.zPPH6Qx.ZlnA9Say', 'liway@gmail.com', 'a', 8, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 09:08:38', '2023-02-27 09:08:38', NULL),
(245, 'mhel', '$2y$10$iyWPEx5exSvPmTus0jYva.14c/.3Q5cfoczo4bZvwfeD.brn0ezEC', 'mhel@gmail.com', 'a', 2, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 09:09:27', '2023-02-27 09:09:27', NULL),
(248, '2018-01368-TG-0', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'rhingmakz29@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 09:31:01', '2023-02-27 09:31:01', NULL),
(261, '2019-00234-TG-0', '$2y$10$3Dapy8FSxv74o9EGQH.Bfu3GeJ9PwbLLcYw/uJ8vkTBsu8ADmxYs2', 'marcusarevalo.928@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 11:48:22', '2023-03-01 18:16:27', NULL),
(262, '2021-00524-TG-0', '$2y$10$0d9wTW.YUoczGsHWciJ1AOAWfvYS8m0Z9EZkuEjQoU8jSIAtV9zXq', 'rhingmakz21@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 11:51:49', '2023-02-27 11:51:49', NULL),
(292, '2018-02523-TG-0', '$2y$10$nPcR/MfTyXW6JNVvmGPiJe6AohMNyjox/L1Ga9Z21n8K2//sOivKa', 'massonmabangis@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 14:47:23', '2023-02-27 14:47:23', NULL),
(293, '2011-02523-TG-0', '$2y$10$ocP5dJRNNd0qx3kCR5jsJ.0hl9VVan02eb32al6m3otl9JYQEd.Fm', 'edmon.delacruz@novare.com.hk', 'a', 4, NULL, NULL, '2023-02-27 14:47:29', '2023-02-27 14:47:29', NULL),
(294, '2014-02523-TG-0', '$2y$10$4WVSfi65jk6RUDWcdxwLFOPACNTYskSsvPQQC/8NVC6dk8SdueDMO', 'maiachristiana@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 14:47:35', '2023-02-27 14:47:35', NULL),
(295, '2015-02523-TG-0', '$2y$10$bRqsWSrNUXhaVau2ehvbtuEA50fi19Vq2j7S7h698v1h4x9DGMNxS', 'bmasonmabangis@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 14:47:40', '2023-02-27 14:47:40', NULL),
(299, 'libraryoffice', '$2y$10$l8vKzn5IJk.bEh1x1pM9W.JEPEZeJh9Y4HdxMkL0/PY9KBeFGUDqS', 'kyledula28@gmail.com', 'a', 5, 6, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 16:28:02', '2023-02-27 16:28:02', NULL),
(300, 'laboratoryoffice', '$2y$10$UA4nu9mGS61KPJvgWrgK8u88kLcVSbS1x8ffMZQx9rUZ2qaV4VHWO', 'kyledula28@gmail.com', 'a', 5, 7, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 16:33:22', '2023-02-27 16:33:22', NULL),
(304, '2018-00368-TG-0', '$2y$10$xXJ9iNi4vCqmzf4cUQJYn.pnX660NiAPOU/gXRZm4d3mVpw1bwRP6', 'edmondelacruz110@gmail.com', 'a', 4, NULL, NULL, '2023-03-01 19:23:48', '2023-03-01 19:23:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_status`
--
ALTER TABLE `academic_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`checklistID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_types`
--
ALTER TABLE `course_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_notes`
--
ALTER TABLE `document_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `document_requirements`
--
ALTER TABLE `document_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_id` (`office_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `form_requests`
--
ALTER TABLE `form_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_type` (`permission_type`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `permission_types`
--
ALTER TABLE `permission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_for_remarks`
--
ALTER TABLE `ref_for_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_for_retrieved`
--
ALTER TABLE `ref_for_retrieved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `request_approvals`
--
ALTER TABLE `request_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_detail_id` (`request_detail_id`),
  ADD KEY `office_id` (`office_id`);

--
-- Indexes for table `request_details`
--
ALTER TABLE `request_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_number` (`student_number`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `academic_status` (`status`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `student_admission`
--
ALTER TABLE `student_admission`
  ADD PRIMARY KEY (`stud_admissionID`);

--
-- Indexes for table `student_admission_files`
--
ALTER TABLE `student_admission_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission_status`
--
ALTER TABLE `submission_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `office_id` (`office_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_status`
--
ALTER TABLE `academic_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `checklists`
--
ALTER TABLE `checklists`
  MODIFY `checklistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `course_types`
--
ALTER TABLE `course_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `document_notes`
--
ALTER TABLE `document_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `document_requirements`
--
ALTER TABLE `document_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `form_requests`
--
ALTER TABLE `form_requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `permission_types`
--
ALTER TABLE `permission_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ref_for_remarks`
--
ALTER TABLE `ref_for_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ref_for_retrieved`
--
ALTER TABLE `ref_for_retrieved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `request_approvals`
--
ALTER TABLE `request_approvals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `request_details`
--
ALTER TABLE `request_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1773;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `student_admission`
--
ALTER TABLE `student_admission`
  MODIFY `stud_admissionID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `student_admission_files`
--
ALTER TABLE `student_admission_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `User's Admin Information` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `document_notes`
--
ALTER TABLE `document_notes`
  ADD CONSTRAINT `Document Notes` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `document_requirements`
--
ALTER TABLE `document_requirements`
  ADD CONSTRAINT `Office Required` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Specific Document Required` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `Module for permission` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Permission Type` FOREIGN KEY (`permission_type`) REFERENCES `permission_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `request_approvals`
--
ALTER TABLE `request_approvals`
  ADD CONSTRAINT `Approval Office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Request Details` FOREIGN KEY (`request_detail_id`) REFERENCES `request_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
