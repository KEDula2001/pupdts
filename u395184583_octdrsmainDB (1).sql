-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2023 at 12:42 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u395184583_octdrsmainDB`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(32, 'library', 'library', 'library', '09159632301', 299, '2023-02-27 16:28:02', '2023-04-06 19:07:35', NULL),
(33, 'laboratory', 'laboratory', 'laboratory', '09159632301', 300, '2023-02-27 16:33:22', '2023-02-27 16:33:22', NULL),
(34, 'Cecilia', 'Alagon', 'A', '09159632301', 344, '2023-03-21 19:52:39', '2023-04-07 14:49:54', NULL),
(35, 'ssooffice', 'sso', 'office', '09159632301', 345, '2023-03-21 19:53:15', '2023-03-21 19:53:15', NULL),
(36, 'Cecilia', 'Alagon', 'A', '09159632031', 349, '2023-03-24 01:34:49', '2023-04-07 14:56:47', '2023-04-07 14:56:47'),
(37, 'Cecilia', 'Alagon', 'A', '09159632031', 350, '2023-03-24 01:34:49', '2023-04-07 14:56:54', '2023-04-07 14:56:54'),
(38, 'sso', 'sso', 'sso', '09159632301', 351, '2023-03-24 01:35:07', '2023-03-24 01:35:07', NULL),
(39, 'sso', 'oss', 'sso', '09159632301', 360, '2023-03-24 13:36:05', '2023-03-24 13:36:05', NULL),
(40, 'Mhel', 'Garcia', 'P.', '09922906473', 441, '2023-03-25 21:01:13', '2023-03-25 21:01:13', NULL),
(41, 'Liwanag', 'Maliksi', 'L.', '09922906473', 442, '2023-03-25 21:01:48', '2023-03-25 21:01:48', NULL),
(42, 'Cecilia', 'Alagon', 'A', '09876543221', 459, '2023-04-07 14:57:28', '2023-04-07 15:03:15', NULL),
(43, 'Cecilia', 'Ala', 'C', '09123456788', 460, '2023-04-07 15:04:20', '2023-04-10 22:42:16', NULL),
(44, 'HAProleLogin', 'HAProleLogin', 'HAProleLogin', '09159632301', 461, '2023-04-07 15:35:30', '2023-04-07 15:35:30', NULL),
(45, 'Bernadette', 'Canlas', 'I.', '09123456789', 462, '2023-04-07 15:58:57', '2023-04-07 15:58:57', NULL),
(46, 'Cecilia', 'Alagon', 'A', '09876543221', 464, '2023-04-10 22:28:00', '2023-04-10 22:29:41', '2023-04-10 22:29:41'),
(47, 'Cecilia', 'Alagon', 'A', '09876543221', 465, '2023-04-10 22:31:16', '2023-04-10 22:31:51', '2023-04-10 22:31:51'),
(48, 'PUPT', 'Library', 'Admin', '09922906473', 466, '2023-04-12 21:45:54', '2023-04-12 21:46:54', NULL),
(49, 'Cecilia', 'Alagon', 'A', '09123456789', 467, '2023-04-12 21:46:30', '2023-04-12 21:46:30', NULL),
(50, 'Elena', 'Atenec', 'E', '09123456789', 468, '2023-04-12 21:48:52', '2023-04-12 21:48:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `checklistID` int(11) NOT NULL,
  `checklistName` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `course_type`, `abbreviation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Diploma in Information Communication Technology', 1, 'DICT', '2021-05-09 04:59:37', '2021-05-09 05:11:47', NULL),
(2, 'Bachelor of Science in Information Technology', 1, 'BSIT', '2021-05-09 05:05:33', '2021-05-09 05:05:33', NULL),
(4, 'Bachelor of Science in Accountancy', 1, 'BSA', '2021-07-06 15:53:33', '2021-07-06 15:53:33', NULL),
(5, 'Bachelor of Science in Mechanical Engineering', 1, 'BSME', '2021-07-06 15:53:45', '2021-07-06 15:53:45', NULL),
(6, 'Bachelor of Science in Electronics Engineering', 1, 'BSECE', '2021-07-06 15:53:54', '2021-07-06 15:53:54', NULL),
(7, 'Bachelor of Secondary Education Major in English', 1, 'BSED ENG', '2021-07-06 15:54:08', '2021-07-06 15:54:08', NULL),
(8, 'Bachelor of Secondary Education Major in Mathematics', 1, 'BSED MT', '2021-07-06 15:54:45', '2021-07-06 15:54:45', NULL),
(9, 'Bachelor of Science in Business Administration Major in Marketing Management', 1, 'BSBA MM', '2021-07-06 15:57:42', '2021-07-06 15:57:42', NULL),
(10, 'Bachelor of Science in Office Administration', 1, 'BSOA', '2021-07-06 15:57:49', '2021-07-06 15:57:49', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document`, `price`, `is_free_on_first`, `template`, `per_page_payment`, `process_day`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Certificate of Good Moral - OJT ', 150, 0, 'goodmoral', 0, 0, '2021-05-10 02:41:22', '2023-04-22 08:17:36', NULL),
(9, 'Certificate of Grades', 150, 0, '', 0, 1, '2021-05-10 02:45:01', '2021-07-29 10:28:13', NULL),
(10, 'Transcript of Record', 150, 0, 'generateClearance', 0, 0, '2021-05-11 13:39:15', '2023-04-09 23:10:19', '2023-04-09 23:10:19'),
(11, 'testing', 250, 1, 'template', 0, 1, '2021-06-24 12:19:42', '2021-06-24 12:20:21', '2021-06-24 12:20:21'),
(12, 'test', 150, 0, 'test', 1, 1, '2021-06-24 12:21:57', '2021-06-24 12:31:41', '2021-06-24 12:31:41'),
(13, 'Certification of Enrollment', 150, 0, '', 0, 1, '2021-07-29 10:23:36', '2023-03-28 18:32:05', '2023-03-28 18:32:05'),
(14, 'Certification of Graduation', 150, 0, '', 0, 1, '2021-07-29 10:24:01', '2021-07-29 10:24:01', NULL),
(15, 'General Weighted Average', 150, 0, '', 0, 1, '2021-07-29 10:25:38', '2023-03-24 11:51:47', '2023-03-24 11:51:47'),
(16, 'Certification of Ladderized Courses', 150, 0, '', 0, 1, '2021-07-29 10:26:03', '2021-07-29 10:26:03', NULL),
(17, 'Certificate of Non-issuance of I.D.', 150, 0, '', 0, 1, '2021-07-29 10:26:25', '2023-03-03 19:03:59', '2023-03-03 19:03:59'),
(18, 'Certificate of Registration', 150, 0, '', 0, 1, '2021-07-29 10:26:57', '2021-07-29 10:26:57', NULL),
(19, 'Diploma', 200, 0, '', 0, 1, '2021-07-29 10:27:57', '2023-04-07 16:19:00', NULL),
(20, 'Certificate of NSTP-CWTS', 150, 0, 'nstpcwts', 0, 0, '2023-03-05 22:46:14', '2023-03-05 23:09:02', NULL),
(21, 'Certficate of GWA', 150, 0, 'certgwa', 0, 0, '2023-03-05 22:58:28', '2023-03-05 22:58:28', NULL),
(22, 'Correcton for Name/Birthdate', 0, 0, 'requestforNameBirthdate', 0, 259200, '2023-03-05 23:02:01', '2023-03-24 11:54:45', NULL),
(23, 'Certificate of Steno', 150, 0, 'certsteno', 0, 0, '2023-03-05 23:11:25', '2023-03-20 01:50:14', NULL),
(24, 'Certificate of Re-Admission', 150, 0, 'ReadmissionCert', 0, 0, '2023-03-05 23:15:37', '2023-03-05 23:15:37', NULL),
(25, 'Certification of Regular Units (Bridging)', 200, 0, 'certRegUnitsAdSub', 1, 0, '2023-03-15 21:16:50', '2023-03-28 18:19:18', NULL),
(26, 'Certificate of Good moral - (Employment, Transferee, Further Studies, Graduation)', 150, 0, 'certGME', 0, 259200, '2023-03-16 22:29:39', '2023-04-22 08:17:44', NULL),
(27, 'Subject Description', 0, 0, '', 0, 259200, '2023-03-24 11:57:51', '2023-03-24 11:57:51', NULL),
(28, 'Waiver Under Probation', 150, 0, 'waiverunderprob', 0, 259200, '2023-03-28 18:02:04', '2023-04-07 16:19:39', NULL),
(29, 'Certification of Verification for Undergraduates Probation', 150, 0, 'CertficateforUndergratuateProbation', 0, 259200, '2023-03-28 18:05:45', '2023-04-07 16:18:36', NULL),
(30, 'Route and Approval slip (Transferee)', 150, 0, 'rasTransferee', 0, 259200, '2023-03-28 18:14:28', '2023-04-22 00:38:05', '2023-04-22 00:38:05'),
(31, 'Route and Approval slip (Re-Admission)', 150, 0, 'rasreadmission', 0, 259200, '2023-03-28 18:15:37', '2023-04-22 00:37:59', '2023-04-22 00:37:59'),
(32, 'Route and Approval slip (Ladderized)', 150, 0, 'rasladderized', 0, 259200, '2023-03-28 18:17:05', '2023-04-22 00:37:54', '2023-04-22 00:37:54'),
(33, 'Certification of Regular Units - Course', 150, 0, 'certregularunitscourse', 0, 259200, '2023-03-28 18:20:47', '2023-04-07 16:17:50', NULL),
(34, 'Certification of Regular Units - Additional Subject', 150, 0, 'certofregunitsAdSubject', 0, 259200, '2023-03-28 18:22:49', '2023-03-28 18:22:49', NULL),
(35, 'Certification of Medium Instruction', 150, 0, 'certmedium', 0, 259200, '2023-03-28 18:23:57', '2023-03-28 18:23:57', NULL),
(36, 'Certification of Medium Instruction - Undergraduate', 150, 0, 'certmediumundergrat', 0, 259200, '2023-03-28 18:25:09', '2023-03-28 18:25:09', NULL),
(37, 'Certificate of Enrollment (Undergraduate)', 150, 0, 'certofEnrollmentUndergrad', 0, 259200, '2023-03-28 18:30:12', '2023-03-28 18:30:12', NULL),
(38, 'Certification of Enrollment', 150, 0, 'certofenrollmentpresent', 0, 259200, '2023-03-28 18:31:24', '2023-03-28 18:31:24', NULL),
(39, 'Certification of Enrollee - Cross Enrollee', 150, 0, 'certofenrolleecross', 0, 259200, '2023-03-28 18:33:13', '2023-03-28 18:33:13', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_notes`
--

INSERT INTO `document_notes` (`id`, `note_id`, `document_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 1, 6, '2021-05-10 02:41:22', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(11, 2, 6, '2021-05-10 02:41:22', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(12, 3, 6, '2021-05-10 02:41:22', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
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
(35, 1, 10, '2021-05-11 13:39:15', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(36, 2, 10, '2021-05-11 13:39:15', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(37, 1, 6, '2021-06-17 12:37:55', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(38, 2, 6, '2021-06-17 12:37:55', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(39, 1, 6, '2021-06-20 13:20:55', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(40, 2, 6, '2021-06-20 13:20:55', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(41, 10, 6, '2021-06-20 13:20:55', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(42, 2, 11, '2021-06-24 12:19:42', '2021-06-24 12:20:00', '2021-06-24 12:20:00'),
(43, 6, 11, '2021-06-24 12:19:42', '2021-06-24 12:20:00', '2021-06-24 12:20:00'),
(44, 2, 11, '2021-06-24 12:20:00', '2021-06-24 12:20:00', NULL),
(45, 6, 11, '2021-06-24 12:20:00', '2021-06-24 12:20:00', NULL),
(46, 1, 12, '2021-06-24 12:21:57', '2021-06-24 12:24:51', '2021-06-24 12:24:51'),
(47, 1, 6, '2021-06-24 15:05:21', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(48, 2, 6, '2021-06-24 15:05:21', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(49, 1, 13, '2021-07-29 10:23:36', '2021-07-29 10:23:36', NULL),
(50, 1, 14, '2021-07-29 10:24:01', '2021-07-29 10:24:01', NULL),
(51, 1, 15, '2021-07-29 10:25:38', '2021-07-29 10:25:38', NULL),
(52, 1, 16, '2021-07-29 10:26:03', '2021-07-29 10:26:03', NULL),
(53, 1, 17, '2021-07-29 10:26:25', '2021-07-29 10:26:25', NULL),
(54, 1, 18, '2021-07-29 10:26:57', '2021-07-29 10:26:57', NULL),
(55, 12, 19, '2021-07-29 10:27:57', '2023-04-07 16:19:00', '2023-04-07 16:19:00'),
(56, 13, 19, '2021-07-29 10:27:57', '2023-04-07 16:19:00', '2023-04-07 16:19:00'),
(57, 1, 9, '2021-07-29 10:28:13', '2021-07-29 10:28:13', NULL),
(58, 1, 6, '2021-07-29 10:28:25', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(59, 1, 10, '2021-07-29 10:28:37', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(60, 14, 20, '2023-03-05 22:46:14', '2023-03-05 23:09:02', '2023-03-05 23:09:02'),
(61, 14, 21, '2023-03-05 22:58:28', '2023-03-05 22:58:28', NULL),
(62, 14, 22, '2023-03-05 23:03:05', '2023-03-24 11:54:45', '2023-03-24 11:54:45'),
(63, 14, 20, '2023-03-05 23:09:02', '2023-03-05 23:09:02', NULL),
(64, 14, 23, '2023-03-05 23:11:25', '2023-03-20 01:50:14', '2023-03-20 01:50:14'),
(65, 14, 24, '2023-03-05 23:15:37', '2023-03-05 23:15:37', NULL),
(66, 14, 25, '2023-03-15 21:16:50', '2023-03-28 18:19:18', '2023-03-28 18:19:18'),
(67, 14, 25, '2023-03-15 21:19:40', '2023-03-28 18:19:18', '2023-03-28 18:19:18'),
(68, 14, 25, '2023-03-15 21:20:23', '2023-03-28 18:19:18', '2023-03-28 18:19:18'),
(69, 14, 26, '2023-03-16 22:29:39', '2023-04-22 08:17:44', '2023-04-22 08:17:44'),
(70, 1, 6, '2023-03-16 22:30:17', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(71, 14, 26, '2023-03-16 22:30:26', '2023-04-22 08:17:44', '2023-04-22 08:17:44'),
(72, 14, 23, '2023-03-20 01:50:14', '2023-03-20 01:50:14', NULL),
(73, 2, 10, '2023-03-21 22:06:26', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(74, 12, 10, '2023-03-21 22:06:26', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(75, 14, 10, '2023-03-21 22:06:26', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(76, 14, 26, '2023-03-24 11:58:58', '2023-04-22 08:17:44', '2023-04-22 08:17:44'),
(77, 14, 28, '2023-03-28 18:02:04', '2023-04-07 16:19:39', '2023-04-07 16:19:39'),
(78, 14, 29, '2023-03-28 18:05:45', '2023-04-07 16:18:36', '2023-04-07 16:18:36'),
(79, 14, 30, '2023-03-28 18:14:28', '2023-04-07 16:19:19', '2023-04-07 16:19:19'),
(80, 14, 31, '2023-03-28 18:15:37', '2023-04-07 16:19:10', '2023-04-07 16:19:10'),
(81, 14, 32, '2023-03-28 18:17:05', '2023-03-28 18:17:05', NULL),
(82, 14, 25, '2023-03-28 18:19:18', '2023-03-28 18:19:18', NULL),
(83, 14, 33, '2023-03-28 18:20:47', '2023-04-07 16:17:50', '2023-04-07 16:17:50'),
(84, 14, 34, '2023-03-28 18:22:49', '2023-03-28 18:22:49', NULL),
(85, 14, 35, '2023-03-28 18:23:57', '2023-03-28 18:23:57', NULL),
(86, 14, 36, '2023-03-28 18:25:09', '2023-03-28 18:25:09', NULL),
(87, 14, 37, '2023-03-28 18:30:12', '2023-03-28 18:30:12', NULL),
(88, 14, 38, '2023-03-28 18:31:24', '2023-03-28 18:31:24', NULL),
(89, 14, 39, '2023-03-28 18:33:13', '2023-03-28 18:33:13', NULL),
(90, 14, 33, '2023-04-07 16:17:50', '2023-04-07 16:17:50', NULL),
(91, 14, 29, '2023-04-07 16:18:36', '2023-04-07 16:18:36', NULL),
(92, 12, 19, '2023-04-07 16:19:00', '2023-04-07 16:19:00', NULL),
(93, 13, 19, '2023-04-07 16:19:00', '2023-04-07 16:19:00', NULL),
(94, 14, 31, '2023-04-07 16:19:10', '2023-04-07 16:19:10', NULL),
(95, 14, 30, '2023-04-07 16:19:19', '2023-04-07 16:19:19', NULL),
(96, 2, 10, '2023-04-07 16:19:31', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(97, 12, 10, '2023-04-07 16:19:31', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(98, 14, 10, '2023-04-07 16:19:31', '2023-04-09 23:09:16', '2023-04-09 23:09:16'),
(99, 14, 28, '2023-04-07 16:19:39', '2023-04-07 16:19:39', NULL),
(100, 2, 10, '2023-04-09 23:09:16', '2023-04-09 23:09:16', NULL),
(101, 12, 10, '2023-04-09 23:09:16', '2023-04-09 23:09:16', NULL),
(102, 14, 10, '2023-04-09 23:09:16', '2023-04-09 23:09:16', NULL),
(103, 1, 6, '2023-04-22 00:39:06', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(104, 1, 6, '2023-04-22 08:17:16', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(105, 1, 6, '2023-04-22 08:17:36', '2023-04-22 08:17:36', NULL),
(106, 14, 26, '2023-04-22 08:17:44', '2023-04-22 08:17:44', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_requirements`
--

INSERT INTO `document_requirements` (`id`, `office_id`, `document_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(20, 4, 27, '2023-03-24 11:57:51', '2023-03-24 11:57:51', NULL),
(21, 1, 26, '2023-03-24 11:58:58', '2023-04-22 08:17:44', '2023-04-22 08:17:44'),
(22, 6, 30, '2023-03-28 18:14:28', '2023-04-07 16:19:19', '2023-04-07 16:19:19'),
(23, 6, 30, '2023-04-07 16:19:19', '2023-04-07 16:19:19', NULL),
(24, 14, 6, '2023-04-22 00:39:06', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(25, 14, 6, '2023-04-22 08:17:16', '2023-04-22 08:17:36', '2023-04-22 08:17:36'),
(26, 14, 6, '2023-04-22 08:17:36', '2023-04-22 08:17:36', NULL),
(27, 1, 26, '2023-04-22 08:17:44', '2023-04-22 08:17:44', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_requests`
--

INSERT INTO `form_requests` (`id`, `student_id`, `school`, `address`, `sy_admission`, `status`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 132, 'Western Bicutan National High School', 'EP VILLAGE', '2018-2019', 'c', 1, '2022-10-03 17:45:18', '2022-10-03 17:46:35', NULL),
(2, 132, 'Wester Bicutan National High School', 'EP Village ', '2019-2020', 'o', 1, '2022-10-06 11:18:50', '2022-10-06 11:19:16', NULL),
(3, 136, 'Western Bicutan National High School', 'EP VILLAGE', '2018-2019', 'c', 1, '2022-10-22 10:03:21', '2022-10-22 10:04:12', NULL),
(4, 136, 'Western Bicutan National High School', 'EP VILLAGE', '2018-2019', 'c', 2, '2022-10-22 10:04:42', '2022-10-22 10:05:53', NULL),
(5, 207, 'Regis-Grace Montessori School', 'Paranaque', '2018-2019', 'w', 4, '2023-02-20 20:15:38', '2023-02-20 20:15:38', NULL),
(6, 211, 'Regis-Grace Montessori School', 'Paranaque', '2018-2019', 'w', 2, '2023-02-20 21:30:21', '2023-02-20 21:30:21', NULL),
(7, 277, 'Sorsogon School', 'Cebu,Philippines', '2014-2015', 'c', 1, '2023-03-24 12:26:50', '2023-03-25 20:59:21', NULL),
(8, 277, '143 United Christian Academy', '#17 Highlight St.,', 'Year 2018-2019', 'c', 1, '2023-03-31 16:57:38', '2023-04-21 14:07:55', NULL),
(9, 277, '~!@#', '#$%^&', '#20', 'c', 3, '2023-03-31 16:59:17', '2023-04-21 21:56:53', NULL),
(10, 333, 'Regis-Grace Montessori School', '63 Gen. Espino St., Central Signal Village, Taguig City', '2018-2019', 'o', 4, '2023-04-07 16:17:32', '2023-04-21 14:08:02', NULL),
(11, 277, 'United Christian Academy', 'Paranaque City', '2018-2019', 'w', 2, '2023-04-21 22:37:21', '2023-04-21 22:37:21', NULL),
(12, 341, 'Regis Grace Montessori School', '87 Army Street, Signal Village, Taguig', '2018-2019', 'w', 1, '2023-04-21 23:45:09', '2023-04-21 23:45:09', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `slug`, `module`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'module-management', 'Module Management', '2021-04-28 00:07:16', '2021-07-29 08:21:39', NULL),
(2, 'user-management', 'User Management', '2021-04-28 00:08:18', '2021-06-24 17:55:27', NULL),
(3, 'document-management', 'Document Management', '2021-05-02 02:26:50', '2021-05-02 02:26:50', NULL),
(4, 'student-management', 'Student Management', '2021-05-08 12:12:10', '2023-03-03 11:00:05', NULL),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Affidavit of Loss for 2nd Copy of Diploma', '2021-07-29 10:27:57', '2021-07-29 10:27:57', NULL),
(14, 'Bring one (1) purple or two (2) brown Document Stamps', '2023-03-03 19:04:53', '2023-03-24 12:00:00', NULL),
(15, '2x2 photo with white background and nametag', '2023-03-03 19:07:06', '2023-03-24 12:00:21', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Student Services', '2021-05-09 05:57:02', '2021-05-09 05:59:43', NULL),
(4, 'Head of Academic Programs', '2021-06-23 01:14:21', '2023-03-24 11:58:06', NULL),
(5, 'Office', '2021-07-29 08:14:07', '2021-07-29 08:14:07', NULL),
(6, 'Library', '2023-02-25 09:52:51', '2023-02-25 09:52:51', NULL),
(7, 'Laboratory', '2023-02-25 09:52:58', '2023-02-25 09:52:58', NULL),
(8, 'ROTC', '2023-02-25 09:53:08', '2023-02-25 09:53:08', NULL),
(9, 'Accounting Office', '2023-02-25 09:53:23', '2023-02-25 09:54:21', NULL),
(10, 'Internal Audit', '2023-02-25 09:53:43', '2023-02-25 09:53:43', NULL),
(11, 'Legal Office', '2023-02-25 09:54:06', '2023-02-25 09:54:06', NULL),
(12, 'HAP', '2023-03-21 19:30:38', '2023-03-21 19:30:38', NULL),
(13, 'SSO', '2023-03-21 19:46:50', '2023-03-21 19:46:50', NULL),
(14, 'Office of Guidance Counsellor', '2023-03-24 11:58:24', '2023-03-24 11:58:24', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(22, 'Offices', 'offices', 'university', 'offices', 'View Offices', 1, 5, '2021-05-09 05:40:53', '2023-03-03 10:46:17', NULL),
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
(57, 'Sample Module', '/sample', 'user', 'sample-slug', 'sapelkf', 1, 9, '2021-07-29 08:19:17', '2021-07-29 08:19:17', NULL),
(58, 'Admission Checklist', '', 'university', 'admissioncrud', 'View Admission', 1, 10, '2023-03-03 10:43:14', '2023-03-03 11:27:51', NULL),
(59, 'Edit Students', 'students', '', 'students', 'Edits Students on Admission Management', 1, 10, '2023-03-03 10:55:30', '2023-03-03 10:56:36', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `submit_photocopy_coc` varchar(255) DEFAULT NULL,
  `other_remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_for_remarks`
--

INSERT INTO `ref_for_remarks` (`id`, `user_id`, `no_dry_sealf137`, `no_dry_sealgrade10`, `no_dry_sealgrade11`, `no_dry_sealgrade12`, `no_dry_sealgoodmoral`, `sc_pup_remarks`, `s_one_photocopy_grade10`, `s_one_photocopy_grade11`, `s_one_photocopy_grade12`, `s_one_photocopy_sarform`, `s_one_photocopy_psa`, `s_one_photocopy_goodmoral`, `submit_original_sarform`, `submit_original_f137`, `submit_original_grade10`, `submit_original_grade11`, `submit_original_grade12`, `submit_original_psa`, `submit_original_goodmoral`, `submit_original_medcert`, `submit_twobytwo`, `submit_photocopy_coc`, `other_remarks`, `created_at`) VALUES
(3, 221, 'No Dry Seal', NULL, NULL, '0', '0', NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, 'dsfdf', '2023-02-15 02:10:20'),
(5, 222, 'No Dry Seal', NULL, NULL, '0', '0', NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '2023-02-15 02:10:24'),
(7, 213, 'No Dry Seal', 'No Dry Seal', 'No Dry Seal', 'No Dry Seal', 'No Dry Seal', 'Sealed Copy with \"For PUP Taguig\" remarks', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit Original', 'Submit Original', 'Submit Original', NULL, 'Submit Original', 'Submit Original', 'Submit Original', 'Submit Original', 'Submit Original', NULL, NULL, '2023-02-15 03:20:28'),
(11, 218, 'No Dry Seal', 'No Dry Seal', NULL, 'No Dry Seal', NULL, NULL, 'Submit 1 Photocopy', 'Submit 1 Photocopy', 'Submit 1 Photocopy', NULL, NULL, NULL, NULL, 'Submit Original', NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original', NULL, NULL, '2023-02-15 02:20:57'),
(12, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (SAR FORM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-02-24 04:20:38'),
(13, 233, NULL, NULL, NULL, NULL, NULL, 'Sealed Copy with \"For PUP Taguig\" remarks', NULL, NULL, NULL, 'Submit 1 Photocopy', NULL, NULL, 'Submit Original', NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original', 'Submit Original', NULL, 'Idagdag nyo yung category name sa value kada checkbox para mat identity kung ako yung sinasabi sa Submit Original of what?', '2023-02-15 04:57:53'),
(14, 237, 'No Dry Seal (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (SAR FORM)', NULL, NULL, 'Submit Original (SAR FORM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasd', '2023-02-27 03:37:58'),
(15, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 4 pcs. (2x2 Picture)', 'Submit 1 Photocopy (Certificate of Completion)', '', '2023-03-02 10:34:58'),
(16, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (MEDICAL CERTIFICATE)', NULL, NULL, 'please submit the original document', '2023-03-03 11:02:07'),
(18, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (MEDICAL CERTIFICATE)', NULL, NULL, 'Please submit the original document. Thank you', '2023-03-03 14:57:03'),
(19, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 4 pcs. (2x2 Picture)', NULL, '', '2023-03-05 23:20:48'),
(20, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (Certificate of Completion)', '', '2023-03-19 19:08:44'),
(21, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (Grade 12 CARD)', NULL, NULL, NULL, NULL, NULL, '', '2023-03-06 00:06:28'),
(22, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (Grade 12 CARD)', NULL, NULL, NULL, NULL, NULL, 'Please submit the original. Thank you.', '2023-03-06 01:19:10'),
(23, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (Grade 12 CARD)', NULL, NULL, NULL, NULL, NULL, 'Please submit the original. Thank you.', '2023-03-06 02:46:16'),
(24, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (PSA/NSO)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-03-16 13:28:40'),
(25, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (Certificate of Completion)', 'ee', '2023-03-24 09:19:09'),
(26, 355, NULL, NULL, 'No Dry Seal (Grade 11 CARD)', NULL, 'No Dry Seal (GOOD MORAL)', NULL, NULL, 'Submit 1 Photocopy (Grade 11 CARD)', NULL, NULL, NULL, 'Submit 1 Photocopy (GOOD MORAL)', NULL, NULL, NULL, NULL, NULL, 'Submit Original (PSA/NSO)', NULL, NULL, NULL, NULL, '', '2023-03-24 09:19:24'),
(27, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (MEDICAL CERTIFICATE)', 'Submit 4 pcs. (2x2 Picture)', NULL, '', '2023-03-25 12:56:31'),
(28, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (PSA/NSO)', NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (PSA/NSO)', NULL, NULL, NULL, NULL, '', '2023-03-25 13:06:28'),
(29, 352, NULL, 'No Dry Seal (Grade 10 CARD)', 'No Dry Seal (Grade 11 CARD)', 'No Dry Seal (Grade 12 CARD)', 'No Dry Seal (GOOD MORAL)', NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (PSA/NSO)', NULL, 'Submit Original (SAR FORM)', 'Submit Original (F137)', NULL, NULL, NULL, NULL, NULL, 'Submit Original (MEDICAL CERTIFICATE)', 'Submit 4 pcs. (2x2 Picture)', 'Submit 1 Photocopy (Certificate of Completion)', '', '2023-03-27 12:57:23'),
(30, 455, 'No Dry Seal (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-04-21 13:41:43'),
(31, 454, 'No Dry Seal (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-03-31 14:31:44'),
(32, 453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit 1 Photocopy (SAR FORM)', NULL, NULL, 'Submit Original (SAR FORM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', '2023-03-31 14:32:14'),
(33, 456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (MEDICAL CERTIFICATE)', NULL, NULL, '', '2023-03-31 15:37:10'),
(34, 472, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (MEDICAL CERTIFICATE)', 'Submit 4 pcs. (2x2 Picture)', 'Submit 1 Photocopy (Certificate of Completion)', '', '2023-04-21 05:41:59'),
(35, 452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Submit Original (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-04-21 13:40:29'),
(36, 343, 'No Dry Seal (F137)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NDS', '2023-04-21 13:42:30'),
(37, 473, NULL, NULL, NULL, 'No Dry Seal (Grade 12 CARD)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2023-04-21 15:43:50');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(62, 232, 12, 'sdsds', '2023-02-24 08:11:51'),
(63, 230, 3, 'to be dry sealed\r\n', '2023-03-03 01:11:22'),
(64, 230, 11, 'to be notarized', '2023-03-03 01:12:24'),
(66, 311, 3, 'No dry seal', '2023-03-03 14:58:58'),
(67, 313, 2, 'For personal', '2023-03-05 23:49:58'),
(68, 313, 11, 'For other purpose', '2023-03-05 23:53:56'),
(69, 312, 12, 'No dry seal', '2023-03-06 01:20:10'),
(70, 322, 3, 'No dry Seal', '2023-03-23 14:06:44'),
(71, 322, 2, 'needed for job', '2023-03-23 15:59:44'),
(72, 322, 11, 'needed for job', '2023-03-23 15:59:44'),
(73, 322, 12, 'needed for job', '2023-03-23 15:59:44'),
(80, 455, 2, 'agggg', '2023-03-31 14:18:14'),
(81, 455, 3, 'agggg', '2023-03-31 14:18:14'),
(82, 455, 11, 'ahhh', '2023-03-31 14:27:46'),
(83, 472, 3, 'For dry seal', '2023-04-21 05:42:34'),
(84, 472, 11, 'For school dry seal', '2023-04-21 06:05:11'),
(85, 457, 3, 'test', '2023-04-21 12:13:38'),
(86, 457, 11, 'No dry seal', '2023-04-21 12:20:05'),
(87, 457, 3, 'lolol', '2023-04-21 12:53:32'),
(88, 457, 3, 'No dry seal', '2023-04-21 12:54:42'),
(89, 457, 11, 'No dry seal', '2023-04-21 12:54:57'),
(90, 457, 12, 'no dry seal', '2023-04-21 12:55:23'),
(91, 457, 12, 'no dry seal', '2023-04-21 12:55:59'),
(92, 457, 2, 'no dry seal', '2023-04-21 12:56:24'),
(93, 352, 3, 'No dry seal', '2023-04-21 13:10:49'),
(94, 457, 3, 'NDS', '2023-04-21 13:43:15'),
(95, 457, 11, 'NDS', '2023-04-21 13:43:15'),
(96, 457, 12, 'NDS', '2023-04-21 13:43:15'),
(97, 355, 3, 'nds', '2023-04-21 15:56:59'),
(98, 355, 11, 'nds', '2023-04-21 15:56:59'),
(99, 355, 12, 'nds', '2023-04-21 15:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(12) NOT NULL,
  `request_code` varchar(10) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `slug`, `request_code`, `student_id`, `reason`, `remark`, `status`, `receipt_number`, `receipt_img`, `approved_at`, `disapproved_at`, `uploaded_at`, `confirmed_at`, `completed_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 'qn4WiJ3DO8AU', NULL, 105, 'scholarship', NULL, 'c', '12345', '1629660892_1449dca446599d52f110.jpeg', '2021-08-23 02:56:08', '2021-08-23 04:05:13', '2021-08-23 03:34:52', '2021-08-23 04:16:25', '2021-09-23 07:22:28', '2021-08-22 10:29:42', '2021-09-23 19:22:28', NULL),
(97, 'F1GR3w2Dbn9m', NULL, 108, 'scholarship', 'kulang', 'c', NULL, NULL, NULL, '2022-10-03 17:18:59', NULL, NULL, NULL, '2021-08-27 18:22:42', '2022-10-03 17:18:59', NULL),
(98, 'xiAZsdFG5I2t', NULL, 104, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:19:58', '2021-09-23 07:22:32', '2021-08-27 18:23:25', '2021-09-23 19:22:32', NULL),
(99, 'WVn2e5wCixzO', NULL, 129, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 18:25:25', '2021-08-27 18:25:25', NULL),
(100, 'JzFCgxPBVnf7', NULL, 94, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:21:29', '2021-09-23 07:22:24', '2021-08-27 18:44:02', '2021-09-23 19:22:24', NULL),
(101, 'EBoNLR1inUP8', NULL, 96, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:21:33', '2021-09-23 07:22:19', '2021-08-27 18:45:57', '2021-09-23 19:22:19', NULL),
(102, 'Lt38WmQKlbPs', NULL, 97, 'scholarship', NULL, 'c', NULL, NULL, '2021-09-23 19:19:05', NULL, NULL, '2021-09-23 19:21:39', NULL, '2021-08-27 18:48:13', '2021-09-23 19:21:39', NULL),
(103, 'FJoGrsdlm0BT', NULL, 99, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:19:20', NULL, NULL, '2022-10-03 17:21:54', NULL, '2021-08-27 18:51:34', '2022-10-03 17:21:54', NULL),
(104, 'wj98VPCZUpFb', NULL, 100, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 14:19:37', NULL, NULL, '2022-09-19 16:31:10', NULL, '2021-08-27 18:58:36', '2022-09-19 16:31:10', NULL),
(105, 'WFg4RVKAvw0Y', NULL, 118, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 14:19:26', NULL, NULL, '2022-10-03 17:29:19', NULL, '2021-08-27 19:05:45', '2022-10-03 17:29:19', NULL),
(106, 'BqzYxJFCTkOA', NULL, 121, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 13:45:56', NULL, NULL, '2022-10-03 17:29:35', NULL, '2021-08-27 19:37:56', '2022-10-03 17:29:35', NULL),
(107, 'fNTnB1KDeo7y', NULL, 122, 'scholarship', NULL, 'c', NULL, NULL, '2022-09-19 13:58:40', NULL, NULL, '2022-10-03 16:12:35', NULL, '2021-08-27 19:39:26', '2022-10-03 16:12:35', NULL),
(108, '6d2UhpjBHkIT', NULL, 123, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:40:30', '2021-08-27 19:40:30', NULL),
(109, 'a7kFuGBlTjE8', NULL, 124, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:43:36', '2021-08-27 19:43:36', NULL),
(110, 'lhToOijkrG7J', NULL, 124, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:44:10', '2021-08-27 19:44:24', '2021-08-27 19:44:24'),
(111, 'qxwjnBm7Z9O1', NULL, 125, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:45:32', '2021-08-27 19:45:32', NULL),
(112, 'qhSE7n6u0KVW', NULL, 127, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 19:46:47', '2021-08-27 19:46:47', NULL),
(113, 'RF8zYpPXT6Go', NULL, 132, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 16:45:22', '2022-09-30 14:20:39', '2022-09-30 14:20:39'),
(114, 'ENKrlgJIO3GU', NULL, 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:21:05', NULL, NULL, '2022-10-03 17:22:04', '2022-10-03 05:29:00', '2022-10-03 17:20:51', '2022-10-03 17:29:00', NULL),
(115, '2KDIMnyjAPXV', NULL, 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:32:27', NULL, NULL, '2022-10-03 17:32:32', '2022-10-03 05:36:03', '2022-10-03 17:32:04', '2022-10-03 17:36:03', NULL),
(116, '2uKR18GDfv4Q', NULL, 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 17:50:23', NULL, NULL, '2022-10-03 17:57:04', '2022-10-03 05:58:34', '2022-10-03 17:49:50', '2022-10-03 17:58:34', NULL),
(117, 'sXOfHJiWSnNz', NULL, 134, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-03 18:58:07', NULL, NULL, '2022-10-06 11:14:12', '2022-10-17 08:24:54', '2022-10-03 18:56:18', '2022-10-17 20:24:54', NULL),
(118, 'S6b4eRLVOtJB', NULL, 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-06 11:11:56', NULL, NULL, '2022-10-17 20:24:21', '2022-10-17 08:24:47', '2022-10-06 11:10:13', '2022-10-17 20:24:47', NULL),
(119, 'hti6yNjkwTvc', NULL, 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-17 20:35:26', NULL, NULL, '2022-10-17 20:49:31', '2022-10-17 08:50:17', '2022-10-17 20:35:12', '2022-10-17 20:50:17', NULL),
(120, 'RnLTEdNsbaPu', NULL, 132, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-17 20:52:08', NULL, NULL, '2022-10-17 20:52:16', NULL, '2022-10-17 20:51:56', '2022-10-17 20:52:16', NULL),
(121, 'ZXKB0FirndtN', NULL, 136, 'scholarship', NULL, 'c', NULL, NULL, '2022-10-22 09:57:46', NULL, NULL, '2022-10-22 09:59:30', '2022-10-22 10:01:18', '2022-10-22 09:55:54', '2022-10-22 10:01:18', NULL),
(122, 'e9lxq8uLyGOR', NULL, 145, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 13:50:39', '2022-12-17 15:30:01', '2022-12-17 15:30:01'),
(123, '1Ho2XvN3hkxS', NULL, 207, 'scholarship', NULL, 'o', '23456756', '1676896218_1ffad9210a3b7fa8ef3a.jpg', '2023-02-20 20:16:07', NULL, '2023-02-20 20:30:18', '2023-02-27 13:07:23', '2023-02-27 01:38:28', '2023-02-20 19:22:43', '2023-02-27 13:38:28', NULL),
(124, 'J27NLPmlj6FW', NULL, 211, 're-admission', NULL, 'c', NULL, NULL, '2023-02-20 21:46:43', NULL, NULL, '2023-02-20 21:48:55', NULL, '2023-02-20 21:30:37', '2023-02-20 21:48:55', NULL),
(128, 'xva47HDl2fyi', NULL, 215, 'employment', '', 'c', NULL, NULL, NULL, '2023-02-26 20:59:36', NULL, NULL, NULL, '2023-02-25 13:02:57', '2023-02-26 20:59:36', NULL),
(129, 'mrRnJxESaVte', NULL, 215, 'transfer to other school', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-25 13:03:06', '2023-02-25 13:03:06', NULL),
(131, 'HdyopVNgvhu7', NULL, 214, 'employment', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-26 15:20:25', '2023-02-26 20:57:00', '2023-02-26 20:57:00'),
(133, 'kBqd4jy0WeRG', NULL, 214, 'scholarship', NULL, 'c', NULL, NULL, '2023-02-26 21:28:15', NULL, NULL, '2023-02-26 21:29:26', '2023-02-26 09:31:06', '2023-02-26 21:08:31', '2023-02-26 21:31:06', NULL),
(135, 'I7qwrU4kcLHJ', NULL, 229, 'employment', NULL, 'o', NULL, NULL, '2023-02-27 13:26:20', NULL, NULL, '2023-02-27 13:26:33', '2023-04-10 10:45:58', '2023-02-27 11:55:58', '2023-04-10 22:45:58', NULL),
(136, 'dNLq5epgSmXC', NULL, 229, 'employment', NULL, 'o', NULL, NULL, '2023-03-15 15:07:30', NULL, NULL, '2023-03-15 15:45:56', NULL, '2023-02-27 11:59:14', '2023-03-15 15:45:56', NULL),
(137, 'wlde6L7toC9r', NULL, 219, 'scholarship', NULL, 'o', NULL, NULL, '2023-02-27 13:55:49', NULL, NULL, '2023-02-27 13:56:00', '2023-02-27 01:56:31', '2023-02-27 13:31:14', '2023-02-27 13:56:31', NULL),
(138, 'yf1ESWrI9qZF', NULL, 219, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-06 09:22:50', NULL, NULL, '2023-03-06 09:23:28', '2023-03-24 04:00:38', '2023-02-27 18:24:37', '2023-03-24 16:00:38', NULL),
(139, 'PuNaf2BhrzgJ', '1234567890', 234, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 16:31:15', NULL, NULL, '2023-03-15 16:33:16', NULL, '2023-03-01 20:10:58', '2023-03-15 16:33:16', NULL),
(140, 'KzENS02k3BbJ', NULL, 234, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-06 10:38:49', NULL, NULL, '2023-03-06 10:39:15', '2023-03-06 10:40:05', '2023-03-01 20:11:52', '2023-03-06 10:40:05', NULL),
(141, 'MSAp4xzG7qoQ', NULL, 234, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 15:07:30', NULL, NULL, '2023-03-15 15:47:10', NULL, '2023-03-01 20:14:10', '2023-03-15 15:47:10', NULL),
(142, 'ANz6M3x0B4tD', NULL, 234, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-14 13:55:13', NULL, NULL, '2023-03-15 14:50:30', '2023-04-10 10:45:27', '2023-03-01 20:28:45', '2023-04-10 22:45:27', NULL),
(143, 'Ds5bUHMWAicJ', NULL, 234, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-14 13:27:28', NULL, NULL, '2023-03-14 13:52:58', NULL, '2023-03-01 20:30:11', '2023-03-14 13:52:58', NULL),
(144, 'Kb3LnmWrxO2j', NULL, 207, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 22:05:12', '2023-03-02 22:16:03', NULL),
(145, 'fA4hSbOTI0yk', NULL, 207, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 23:10:35', '2023-03-02 23:10:35', NULL),
(146, '7xU6KlpISMhy', NULL, 207, 'scholarship', NULL, 'y', NULL, NULL, '2023-03-04 18:39:36', NULL, NULL, NULL, NULL, '2023-03-03 07:31:22', '2023-03-04 18:39:36', NULL),
(147, '67wbdUEyj1LY', NULL, 236, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 16:29:01', '2023-03-03 16:39:07', '2023-03-03 16:39:07'),
(148, 'Xuna239PWrBH', NULL, 236, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 16:39:01', '2023-03-03 16:39:05', '2023-03-03 16:39:05'),
(149, '3NC8twGgWTsJ', NULL, 236, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 19:03:23', '2023-03-03 22:29:07', '2023-03-03 22:29:07'),
(150, '9y8oVOnvi4s2', NULL, 237, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-03 21:35:05', NULL, NULL, '2023-03-03 21:39:55', '2023-03-03 09:42:24', '2023-03-03 21:28:24', '2023-03-03 21:42:24', NULL),
(151, 'sOmtySW1h98B', NULL, 237, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-03 22:11:23', NULL, NULL, '2023-03-03 22:11:47', '2023-03-03 10:26:34', '2023-03-03 22:04:31', '2023-03-03 22:26:34', NULL),
(152, 'WDgp4Mek3JFv', NULL, 237, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-03 22:21:55', NULL, NULL, '2023-03-03 22:22:18', '2023-03-03 10:26:39', '2023-03-03 22:20:34', '2023-03-03 22:26:39', NULL),
(153, '6KmLDISnE9MV', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-03 22:53:08', NULL, NULL, '2023-03-03 22:53:27', '2023-03-03 10:54:09', '2023-03-03 22:49:34', '2023-03-03 22:54:09', NULL),
(154, 'WM21yvJmTDH0', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-04 18:20:54', NULL, NULL, '2023-03-04 18:21:18', NULL, '2023-03-04 18:18:48', '2023-03-04 18:21:18', NULL),
(155, 'aTlhmMySdLzs', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-04 19:47:38', NULL, NULL, '2023-03-04 19:47:56', NULL, '2023-03-04 18:49:45', '2023-03-04 19:47:56', NULL),
(156, '89WfivEMomqz', NULL, 240, 'employment', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 19:39:18', '2023-03-04 19:42:56', '2023-03-04 19:42:56'),
(157, 'dTaYFWcVJPMm', NULL, 240, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 19:39:27', '2023-03-04 19:39:27', NULL),
(158, 'UEJLqFWt9SfA', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 22:40:32', NULL, NULL, '2023-03-05 22:40:49', NULL, '2023-03-05 22:39:27', '2023-03-05 22:40:49', NULL),
(159, 'GsEfatykFlOI', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 22:48:58', NULL, NULL, '2023-03-05 22:49:07', NULL, '2023-03-05 22:47:22', '2023-03-05 22:49:07', NULL),
(160, 'L0AaMhBtcqvY', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 22:50:20', NULL, NULL, '2023-03-05 22:50:27', NULL, '2023-03-05 22:49:33', '2023-03-05 22:50:27', NULL),
(161, 'j2Ex14zZXA6o', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 22:59:59', NULL, NULL, '2023-03-05 23:00:06', NULL, '2023-03-05 22:59:01', '2023-03-05 23:00:06', NULL),
(162, '8NLwduv5tIfo', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 23:04:29', NULL, NULL, '2023-03-05 23:04:36', NULL, '2023-03-05 23:03:35', '2023-03-05 23:04:36', NULL),
(163, 'WLPONAaiXgV8', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 23:12:41', NULL, NULL, '2023-03-05 23:12:48', NULL, '2023-03-05 23:11:43', '2023-03-05 23:12:48', NULL),
(164, 'uGVvaSBcAdrz', NULL, 240, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-05 23:17:10', NULL, NULL, '2023-03-05 23:17:18', NULL, '2023-03-05 23:16:02', '2023-03-05 23:17:18', NULL),
(165, 'LdHYyjskC0Al', NULL, 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 14:11:02', NULL, NULL, '2023-03-15 14:11:39', '2023-04-04 09:28:52', '2023-03-06 09:21:51', '2023-04-04 21:28:52', NULL),
(166, 'A1cbR893exEz', NULL, 246, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 15:07:30', NULL, NULL, '2023-03-15 15:42:39', '2023-04-10 10:45:53', '2023-03-06 10:41:42', '2023-04-10 22:45:53', NULL),
(167, '6iReS2GgaUCW', NULL, 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 14:11:02', NULL, NULL, '2023-03-15 15:03:44', '2023-03-24 10:59:54', '2023-03-15 14:08:43', '2023-03-24 10:59:54', NULL),
(168, 'gcKkqmfXxW42', NULL, 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 14:11:02', NULL, NULL, '2023-03-15 14:50:43', '2023-03-15 09:21:07', '2023-03-15 14:08:48', '2023-03-15 21:21:07', NULL),
(169, 'X3kpKT7Nuw8o', NULL, 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 15:50:43', NULL, NULL, '2023-03-15 16:08:39', '2023-04-10 10:46:37', '2023-03-15 15:48:19', '2023-04-10 22:46:37', NULL),
(170, 'VPSGxmpKoQHe', NULL, 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 15:50:43', NULL, NULL, '2023-03-15 16:02:09', '2023-04-10 10:46:33', '2023-03-15 15:48:23', '2023-04-10 22:46:33', NULL),
(171, 'yabgp3BAKNrM', NULL, 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 15:50:43', NULL, NULL, '2023-03-15 16:29:46', '2023-04-10 10:45:48', '2023-03-15 15:48:29', '2023-04-10 22:45:48', NULL),
(172, '3xD2jk97VeYQ', '1234552234', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 21:18:24', NULL, NULL, '2023-03-15 21:18:38', '2023-03-24 10:59:41', '2023-03-15 21:17:03', '2023-03-24 10:59:41', NULL),
(173, 'FiveLSsA6MxK', '7789231452', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-15 21:24:27', NULL, NULL, '2023-03-15 21:24:38', '2023-04-10 10:45:39', '2023-03-15 21:23:35', '2023-04-10 22:45:39', NULL),
(174, '5EojOLduvrB1', '3365321233', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-20 02:31:21', NULL, NULL, '2023-03-20 02:31:35', '2023-03-24 11:00:01', '2023-03-20 02:15:15', '2023-03-24 11:00:01', NULL),
(175, 'ayVeHiWzSEvL', '0999231231', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-21 22:14:37', NULL, NULL, '2023-03-21 22:14:58', '2023-04-07 03:23:52', '2023-03-20 04:10:23', '2023-04-07 15:23:52', NULL),
(176, 'RB2WIy8hGMfc', '3213213213', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 00:11:55', NULL, NULL, '2023-03-24 00:12:06', '2023-04-10 10:46:28', '2023-03-23 17:27:01', '2023-04-10 22:46:28', NULL),
(185, '2KCxXAdB3iq0', '8889878', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 12:57:38', NULL, NULL, '2023-03-24 12:58:16', '2023-03-24 01:00:01', '2023-03-24 09:53:44', '2023-03-24 13:00:01', NULL),
(186, 'QTKd79YocP0y', '873523', 277, 're-admission', NULL, 'o', NULL, NULL, '2023-03-24 11:22:29', NULL, NULL, '2023-03-24 11:22:44', NULL, '2023-03-24 11:09:09', '2023-03-24 11:22:44', NULL),
(187, 'yh3XpB9P0Vea', '9746385', 277, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 12:25:35', NULL, NULL, '2023-03-24 12:25:53', NULL, '2023-03-24 11:46:18', '2023-03-24 12:25:53', NULL),
(188, '3DG60PpoEcZJ', '5678765', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 14:17:37', NULL, NULL, '2023-03-25 20:45:35', '2023-04-10 10:45:19', '2023-03-24 13:00:09', '2023-04-10 22:45:19', NULL),
(189, 'rCbUB6RDd39v', '8907887', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 14:17:43', NULL, NULL, '2023-04-16 09:36:39', NULL, '2023-03-24 13:38:09', '2023-04-16 09:36:39', NULL),
(190, 'WEVCvYyqwax0', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 14:14:55', '2023-03-24 18:46:13', '2023-03-24 18:46:13'),
(191, 'ZmNDXzjpVa0b', '3221356749', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 18:39:38', NULL, NULL, '2023-03-24 18:40:33', NULL, '2023-03-24 14:16:58', '2023-03-24 18:40:33', NULL),
(192, 'NSpwjGoE07Yn', '1234567899', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 15:20:13', NULL, NULL, '2023-03-24 15:23:05', NULL, '2023-03-24 14:52:32', '2023-03-24 15:23:05', NULL),
(193, 'RmIypWuDPM5E', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 14:56:30', '2023-03-24 18:46:10', '2023-03-24 18:46:10'),
(194, 'TqyV4x1MrnOY', '321233111', 285, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-28 18:34:25', NULL, NULL, '2023-04-16 11:20:28', NULL, '2023-03-24 15:01:31', '2023-04-16 11:20:28', NULL),
(195, 'zojd4yfKUCeg', '221154665', 285, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-28 18:34:25', NULL, NULL, '2023-04-16 11:20:57', NULL, '2023-03-24 15:11:15', '2023-04-16 11:20:57', NULL),
(196, 'lPNobdYZAEIU', NULL, 277, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 15:27:09', '2023-03-27 20:36:29', '2023-03-27 20:36:29'),
(197, 'gyd4UrxCBIS0', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 18:37:08', '2023-03-24 18:46:09', '2023-03-24 18:46:09'),
(198, 'kvpWFxCjSHTG', '3354879886', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-24 18:47:58', NULL, NULL, '2023-03-24 18:48:09', NULL, '2023-03-24 18:46:18', '2023-03-24 18:48:09', NULL),
(199, 'QCTtFHjkDpas', NULL, 277, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(200, '27ELnKymxGJV', '3322655498', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-03-28 18:46:26', NULL, NULL, '2023-03-28 18:46:42', NULL, '2023-03-28 18:35:55', '2023-03-28 18:46:42', NULL),
(201, 'ZNPqLGJoAS3F', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 22:59:26', '2023-04-10 19:15:46', '2023-04-10 19:15:46'),
(202, 'OoBW7ytgTUC9', NULL, 333, 'employment', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 23:27:43', '2023-03-31 23:35:24', '2023-03-31 23:35:24'),
(203, 'fnDtcJIbgGj5', '2231422154', 333, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-23 08:34:44', NULL, NULL, '2023-04-23 09:08:19', NULL, '2023-03-31 23:34:46', '2023-04-23 09:08:19', NULL),
(204, 'HqIvG0REschJ', '877665', 330, 're-admission', NULL, 'o', NULL, NULL, '2023-04-04 20:56:56', NULL, NULL, '2023-04-04 21:04:28', NULL, '2023-04-04 20:03:32', '2023-04-04 21:04:28', NULL),
(205, 'LIkpTyAR89uB', NULL, 333, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-07 12:33:57', '2023-04-23 08:22:25', NULL),
(206, 'f8UtLgIijwbd', '06252525', 329, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-11 10:09:17', NULL, NULL, '2023-04-17 19:06:58', NULL, '2023-04-07 14:27:46', '2023-04-17 19:06:58', NULL),
(207, 'QqE8NWXcGj0a', NULL, 333, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-07 14:42:35', '2023-04-07 16:15:54', '2023-04-07 16:15:54'),
(208, 'p8EiWCY0qOKk', NULL, 333, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-07 15:07:31', '2023-04-23 08:23:32', NULL),
(209, 'tvmfVG9nb570', '5548798754', 277, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-07 15:17:30', NULL, NULL, '2023-04-16 11:20:38', NULL, '2023-04-07 15:07:34', '2023-04-16 11:20:38', NULL),
(210, 'nlv4HDF3OqEX', NULL, 333, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-07 16:17:52', '2023-04-21 21:32:54', '2023-04-21 21:32:54'),
(211, 'qXUmJAxh32DI', '1', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 20:10:01', NULL, NULL, '2023-04-10 22:27:08', NULL, '2023-04-10 19:16:05', '2023-04-10 22:27:08', NULL),
(212, 'GaxpeUONZjgT', '5466654623', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 20:47:10', NULL, NULL, '2023-04-16 11:17:38', NULL, '2023-04-10 20:05:44', '2023-04-16 11:17:38', NULL),
(213, 'KTMf5896Djql', '11231245', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 20:47:37', NULL, NULL, '2023-04-16 11:17:55', NULL, '2023-04-10 20:07:24', '2023-04-16 11:17:55', NULL),
(214, 'YWAfsi2QM4bT', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 20:11:36', '2023-04-10 22:38:36', '2023-04-10 22:38:36'),
(215, 'Fv8Q0BhRYTfX', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 20:13:16', '2023-04-10 22:38:34', '2023-04-10 22:38:34'),
(216, '5C8jEDOVJFQ6', '445667897', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 20:48:01', NULL, NULL, '2023-04-16 11:18:14', NULL, '2023-04-10 20:27:17', '2023-04-16 11:18:14', NULL),
(217, 'LstSynvqUwpV', '5644878972', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 20:48:08', NULL, NULL, '2023-04-16 11:18:02', NULL, '2023-04-10 20:29:54', '2023-04-16 11:18:02', NULL),
(218, 'GD5MmWV32KbX', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 20:48:28', '2023-04-10 20:48:48', '2023-04-10 20:48:48'),
(219, 'dJaRCBs3ur2Z', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 20:48:55', '2023-04-10 22:38:37', '2023-04-10 22:38:37'),
(220, 'FXLmv6qNo5Bw', '1233332133', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 21:48:11', NULL, NULL, '2023-04-16 11:17:30', NULL, '2023-04-10 21:01:46', '2023-04-16 11:17:30', NULL),
(221, 'kIXw5V6UcCnG', '5556445647', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 22:03:15', NULL, NULL, '2023-04-16 11:17:48', NULL, '2023-04-10 21:48:16', '2023-04-16 11:17:48', NULL),
(222, 'FmuUtAhEapB8', '332123123', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 22:27:34', NULL, NULL, '2023-04-10 22:31:05', NULL, '2023-04-10 21:50:01', '2023-04-10 22:31:05', NULL),
(223, 'J761fY4OsxrS', '2231123123', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 22:31:23', NULL, NULL, '2023-04-10 22:37:34', NULL, '2023-04-10 21:53:49', '2023-04-10 22:37:34', NULL),
(224, 'v6n8Gdg3j4HR', '3354687998', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-10 22:27:18', NULL, NULL, '2023-04-10 22:31:16', '2023-04-10 10:46:05', '2023-04-10 22:01:22', '2023-04-10 22:46:05', NULL),
(225, '2pz7Wbyulj94', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 22:38:48', '2023-04-10 22:52:16', '2023-04-10 22:52:16'),
(226, 'LEV1u93TbR0G', '3323165468', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-11 09:48:01', NULL, NULL, '2023-04-11 09:53:46', NULL, '2023-04-10 22:54:28', '2023-04-11 09:53:46', NULL),
(227, 'qi9vLbOQwVrh', '5678765', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-11 10:09:26', NULL, NULL, '2023-04-20 17:39:49', NULL, '2023-04-11 09:54:33', '2023-04-20 17:39:49', NULL),
(228, 'or1XOpHzuJEU', '3444456', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-16 11:17:15', NULL, NULL, '2023-04-20 17:40:04', NULL, '2023-04-11 10:35:17', '2023-04-20 17:40:04', NULL),
(229, 'NUtpZrTzgb0Y', '5666789', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-11 19:50:39', NULL, NULL, '2023-04-20 17:40:33', NULL, '2023-04-11 11:03:09', '2023-04-20 17:40:33', NULL),
(230, 'fAs0HUL1G3hF', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 15:22:11', '2023-04-16 15:22:18', '2023-04-16 15:22:18'),
(231, 'vigCB2Iup5Tn', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 15:22:26', '2023-04-16 15:22:30', '2023-04-16 15:22:30'),
(232, 'WKQIFL0zglaw', '6789877', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-16 15:24:44', NULL, NULL, '2023-04-20 17:39:39', NULL, '2023-04-16 15:22:38', '2023-04-20 17:39:39', NULL),
(233, 'DSrzJ2LUaFbE', '6789876', 329, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-16 17:07:56', NULL, NULL, '2023-04-20 22:48:15', NULL, '2023-04-16 17:02:16', '2023-04-20 22:48:15', NULL),
(234, '4EjApc9v1GUJ', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 17:38:00', '2023-04-20 13:34:42', '2023-04-20 13:34:42'),
(235, 'hkRprytI8KsX', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 17:38:13', '2023-04-20 13:34:40', '2023-04-20 13:34:40'),
(236, 'pvz5EQILaUCd', '937021', 329, 'employment', NULL, 'o', NULL, NULL, NULL, NULL, NULL, '2023-04-22 08:25:59', NULL, '2023-04-16 17:56:51', '2023-04-22 08:25:59', NULL),
(237, '0ZVBdMFpXWTz', NULL, 242, 'scholarship', 'You are not eligible to request this document: \nCertificate of Graduation', 'c', NULL, NULL, NULL, '2023-04-19 20:31:06', NULL, NULL, NULL, '2023-04-16 18:14:45', '2023-04-19 20:31:06', NULL),
(238, 'ERQ5e2tvLMgq', NULL, 242, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-19 20:56:55', '2023-04-20 13:34:39', '2023-04-20 13:34:39'),
(239, 'PAj9B7xWndDX', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-20 13:45:24', '2023-04-20 17:40:54', '2023-04-20 17:40:54'),
(240, '3vWxt8CG72jg', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-20 13:45:42', '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(241, 'SfgJPNK23wC6', NULL, 242, 'scholarship', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-20 17:42:23', '2023-04-21 20:16:15', '2023-04-21 20:16:15'),
(242, '4r6WMIPyRFlh', '2234567854', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 21:01:05', NULL, NULL, '2023-04-21 21:01:22', '2023-04-21 09:24:51', '2023-04-21 20:16:09', '2023-04-21 21:24:51', NULL),
(243, 'Ug4F5hHxvoNY', '123456', 277, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 21:16:24', NULL, NULL, '2023-04-21 21:17:00', '2023-04-21 09:29:31', '2023-04-21 21:12:45', '2023-04-21 21:29:31', NULL),
(244, 'xdfUtCkP8GTi', '5676587', 330, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 22:01:24', NULL, NULL, '2023-04-21 22:01:38', NULL, '2023-04-21 21:24:59', '2023-04-21 22:01:38', NULL),
(245, 'UW8j37sikwzH', '983207', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 00:30:14', NULL, NULL, '2023-04-22 00:30:35', NULL, '2023-04-21 21:25:18', '2023-04-22 00:30:35', NULL),
(246, 'zsjkc4PhABbi', '3326458763', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 21:35:15', NULL, NULL, '2023-04-21 21:35:24', '2023-04-21 11:03:14', '2023-04-21 21:25:29', '2023-04-21 23:03:14', NULL),
(247, 'YjTSmZ4aEz0V', '740912', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 22:49:53', NULL, NULL, '2023-04-21 22:50:08', NULL, '2023-04-21 21:25:38', '2023-04-21 22:50:08', NULL),
(248, 'eX84jvlrmToi', NULL, 333, 'employment', NULL, 'y', NULL, NULL, '2023-04-23 08:37:19', NULL, NULL, NULL, NULL, '2023-04-21 21:31:17', '2023-04-23 08:37:19', NULL),
(249, 'AoLxbUr0KkRT', '890876', 330, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 21:37:43', NULL, NULL, '2023-04-21 21:37:57', '2023-04-21 10:02:36', '2023-04-21 21:36:29', '2023-04-21 22:02:36', NULL),
(250, 'yfwIBb9FSUL4', '331234565', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 22:44:18', NULL, NULL, '2023-04-21 22:44:40', '2023-04-21 23:37:54', '2023-04-21 22:04:00', '2023-04-21 23:37:54', NULL),
(251, 'hQlbjiFq72RL', '938621', 330, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 22:12:04', NULL, NULL, '2023-04-21 22:12:18', NULL, '2023-04-21 22:10:11', '2023-04-21 22:12:18', NULL),
(252, 'gpClGxZT4ie2', '298021', 330, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 22:55:17', NULL, NULL, '2023-04-21 22:55:31', NULL, '2023-04-21 22:52:32', '2023-04-21 22:55:31', NULL),
(253, 'PrGFdC9JLBut', '3345865421', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 23:02:00', NULL, NULL, '2023-04-21 23:02:10', '2023-04-21 23:44:05', '2023-04-21 23:00:51', '2023-04-21 23:44:05', NULL),
(254, 'XqSIbt0xBngf', '1231231232', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 23:24:17', NULL, NULL, '2023-04-21 23:26:30', '2023-04-21 11:29:37', '2023-04-21 23:20:25', '2023-04-21 23:29:37', NULL),
(255, '4QXMWaqUngc7', '221342311', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 23:37:08', NULL, NULL, '2023-04-21 23:37:24', '2023-04-23 09:31:29', '2023-04-21 23:36:06', '2023-04-23 09:31:29', NULL),
(256, 'IspVAiKFqj8W', '365488796', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 23:41:37', NULL, NULL, '2023-04-21 23:42:00', '2023-04-21 23:45:36', '2023-04-21 23:40:28', '2023-04-21 23:45:36', NULL),
(257, 'jChlULVFxR2B', NULL, 341, 'scholarship', NULL, 'y', NULL, NULL, '2023-04-23 08:37:07', NULL, NULL, NULL, NULL, '2023-04-21 23:41:58', '2023-04-23 08:37:07', NULL),
(258, 'gN9ptq1mcEsn', '2233231554', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-21 23:48:39', NULL, NULL, '2023-04-21 23:48:48', '2023-04-21 23:49:21', '2023-04-21 23:46:52', '2023-04-21 23:49:21', NULL),
(259, 'Ucx7vleIV5AF', NULL, 330, 'scholarship', NULL, 'y', NULL, NULL, '2023-04-23 09:15:07', NULL, NULL, NULL, NULL, '2023-04-22 00:31:30', '2023-04-23 09:15:07', NULL),
(260, '8oTLBqg1f2Fy', '360319', 330, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 01:00:53', NULL, NULL, '2023-04-22 01:01:08', NULL, '2023-04-22 00:43:05', '2023-04-22 01:01:08', NULL),
(261, 'xOwhTBavCFeA', '3221356487', 342, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 08:41:02', NULL, NULL, '2023-04-22 22:44:46', NULL, '2023-04-22 08:40:09', '2023-04-22 21:23:36', NULL),
(262, 'OW3sjmPC7n9c', '2221331234', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 21:18:59', NULL, NULL, '2023-04-22 21:35:45', NULL, '2023-04-22 21:17:55', '2023-04-22 21:35:45', NULL),
(263, 'kvKMQmySoinx', '2213523123', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 22:02:31', NULL, NULL, '2023-04-22 22:02:39', NULL, '2023-04-22 22:01:32', '2023-04-22 22:02:39', NULL),
(264, 'FosuyNiJQaSe', '1231231231', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 22:32:15', NULL, NULL, '2023-04-22 22:35:32', NULL, '2023-04-22 22:30:48', '2023-04-22 22:35:32', NULL),
(265, 'kowerPmS6AUX', '1231231232', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-22 22:32:15', NULL, NULL, '2023-04-22 22:48:47', NULL, '2023-04-22 22:30:58', '2023-04-22 22:48:47', NULL),
(266, '9S0LFl1JfNZ8', NULL, 277, 'scholarship', NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-23 08:20:36', '2023-04-23 08:29:26', NULL),
(267, 'zK1DxirgJpIm', NULL, 277, 'scholarship', NULL, 'y', NULL, NULL, '2023-04-23 13:25:36', NULL, NULL, NULL, NULL, '2023-04-23 08:20:51', '2023-04-23 13:25:36', NULL),
(268, 'uQaezPLUcmXg', NULL, 277, 'scholarship', NULL, 'y', NULL, NULL, '2023-04-23 19:15:11', NULL, NULL, NULL, NULL, '2023-04-23 08:21:00', '2023-04-23 19:15:11', NULL),
(269, '3aMkv2GxdlB4', '5676578', 329, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-23 14:10:50', NULL, NULL, '2023-04-23 14:11:04', NULL, '2023-04-23 14:09:41', '2023-04-23 14:11:04', NULL),
(270, 'rpD2XI0HsAjQ', '7776543', 333, 're-admission', NULL, 'o', NULL, NULL, '2023-04-23 19:15:29', NULL, NULL, '2023-04-23 19:15:41', NULL, '2023-04-23 19:13:14', '2023-04-23 19:15:41', NULL),
(271, 'gsJcbmlkOKxd', '3456678', 242, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-23 19:28:45', NULL, NULL, '2023-04-23 19:29:01', NULL, '2023-04-23 19:25:43', '2023-04-23 19:29:01', NULL),
(272, 'jIlrc1xOCbHt', '4567897', 329, 'scholarship', NULL, 'o', NULL, NULL, '2023-04-23 19:55:16', NULL, NULL, '2023-04-23 19:55:35', NULL, '2023-04-23 19:37:58', '2023-04-23 19:55:35', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_approvals`
--

INSERT INTO `request_approvals` (`id`, `request_detail_id`, `office_id`, `remark`, `status`, `created_at`, `updated_at`, `deleted_at`, `hold_at`, `approved_at`) VALUES
(121, 320, 1, NULL, 'p', '2023-03-24 15:27:09', '2023-03-27 20:36:29', '2023-03-27 20:36:29', NULL, NULL),
(122, 326, 1, NULL, 'p', '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32', NULL, NULL),
(123, 339, 4, NULL, 'p', '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32', NULL, NULL),
(124, 356, 6, NULL, 'p', '2023-03-28 18:35:55', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(125, 357, 4, NULL, 'p', '2023-03-28 18:35:55', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(126, 362, 1, NULL, 'p', '2023-03-31 22:59:26', '2023-04-10 19:15:46', '2023-04-10 19:15:46', NULL, NULL),
(127, 368, 1, NULL, 'p', '2023-04-04 20:03:33', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(128, 389, 6, NULL, 'p', '2023-04-04 20:03:33', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(129, 390, 4, NULL, 'p', '2023-04-04 20:03:33', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(130, 393, 1, NULL, 'p', '2023-04-07 12:33:57', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(131, 397, 1, NULL, 'p', '2023-04-07 15:07:31', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(132, 398, 1, NULL, 'p', '2023-04-07 15:07:34', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(133, 413, 1, NULL, 'p', '2023-04-10 20:29:54', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(134, 417, 1, NULL, 'p', '2023-04-10 20:48:55', '2023-04-10 22:38:37', '2023-04-10 22:38:37', NULL, NULL),
(135, 419, 1, NULL, 'p', '2023-04-10 21:01:46', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(136, 422, 6, NULL, 'p', '2023-04-10 21:50:01', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(137, 423, 4, NULL, 'p', '2023-04-10 21:50:01', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(138, 425, 1, NULL, 'p', '2023-04-10 21:53:49', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(139, 443, 1, NULL, 'p', '2023-04-16 15:22:11', '2023-04-16 15:22:18', '2023-04-16 15:22:18', NULL, NULL),
(140, 447, 1, NULL, 'p', '2023-04-16 15:22:38', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(141, 452, 1, NULL, 'p', '2023-04-16 17:38:00', '2023-04-20 13:34:42', '2023-04-20 13:34:42', NULL, NULL),
(142, 454, 1, NULL, 'p', '2023-04-16 17:56:51', '2023-04-21 21:32:54', '2023-04-21 21:32:54', NULL, NULL),
(143, 482, 1, NULL, 'p', '2023-04-22 00:43:05', '2023-04-22 00:43:05', NULL, NULL, NULL),
(144, 483, 14, NULL, 'p', '2023-04-22 00:43:05', '2023-04-22 00:43:05', NULL, NULL, NULL),
(145, 501, 4, NULL, 'p', '2023-04-22 00:43:05', '2023-04-22 00:43:05', NULL, NULL, NULL),
(146, 503, 1, NULL, 'p', '2023-04-22 08:40:09', '2023-04-22 08:40:09', NULL, NULL, NULL),
(147, 504, 1, NULL, 'p', '2023-04-22 21:17:55', '2023-04-22 21:17:55', NULL, NULL, NULL),
(148, 505, 4, NULL, 'p', '2023-04-22 22:01:32', '2023-04-22 22:01:32', NULL, NULL, NULL),
(149, 506, 1, NULL, 'p', '2023-04-22 22:30:48', '2023-04-22 22:30:48', NULL, NULL, NULL),
(150, 507, 1, NULL, 'p', '2023-04-22 22:30:58', '2023-04-22 22:30:58', NULL, NULL, NULL),
(151, 508, 14, NULL, 'p', '2023-04-23 08:20:36', '2023-04-23 08:20:36', NULL, NULL, NULL),
(152, 514, 4, NULL, 'p', '2023-04-23 19:37:58', '2023-04-23 19:37:58', NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`id`, `request_id`, `document_id`, `remark`, `status`, `quantity`, `page`, `free`, `library`, `laboratory`, `rotc`, `accounting_office`, `internal_audit`, `legal_office`, `printed_at`, `received_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(170, 96, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:28', '2021-08-22 10:29:42', '2023-04-19 20:31:06', NULL),
(171, 96, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:28', '2021-08-22 10:29:42', '2023-04-19 20:31:06', NULL),
(172, 97, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:22:42', '2023-04-19 20:31:06', NULL),
(173, 97, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:22:42', '2023-04-19 20:31:06', NULL),
(174, 97, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:22:42', '2023-04-19 20:31:06', NULL),
(175, 98, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:32', '2021-08-27 18:23:25', '2023-04-19 20:31:06', NULL),
(176, 98, 15, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:32', '2021-08-27 18:23:25', '2023-04-19 20:31:06', NULL),
(177, 99, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:25:25', '2023-04-19 20:31:06', NULL),
(178, 100, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:24', '2021-08-27 18:44:02', '2023-04-19 20:31:06', NULL),
(179, 100, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:24', '2021-08-27 18:44:02', '2023-04-19 20:31:06', NULL),
(180, 101, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:19', '2021-08-27 18:45:57', '2023-04-19 20:31:06', NULL),
(181, 101, 16, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2021-09-23 19:22:19', '2021-08-27 18:45:57', '2023-04-19 20:31:06', NULL),
(182, 102, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 15:55:46', '2021-08-27 18:48:13', '2023-04-19 20:31:06', NULL),
(183, 102, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 15:55:09', '2021-08-27 18:48:13', '2023-04-19 20:31:06', NULL),
(184, 102, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:48:13', '2023-04-19 20:31:06', NULL),
(185, 103, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:51:34', '2023-04-19 20:31:06', NULL),
(186, 103, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:51:34', '2023-04-19 20:31:06', NULL),
(187, 103, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:51:34', '2023-04-19 20:31:06', NULL),
(188, 104, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:58:36', '2023-04-19 20:31:06', NULL),
(189, 104, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:58:36', '2023-04-19 20:31:06', NULL),
(190, 104, 18, NULL, 'd', 1, NULL, 0, 0, 0, 1, 0, 1, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 18:58:36', '2023-04-19 20:31:06', NULL),
(191, 105, 13, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2021-08-27 19:05:45', '2023-04-19 20:31:06', NULL),
(192, 105, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2021-08-27 19:05:46', '2023-04-19 20:31:06', NULL),
(193, 106, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2021-08-27 19:37:56', '2023-04-19 20:31:06', NULL),
(194, 107, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2021-08-27 19:39:26', '2023-04-19 20:31:06', NULL),
(195, 108, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:40:30', '2023-04-19 20:31:06', NULL),
(196, 108, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:40:30', '2023-04-19 20:31:06', NULL),
(197, 109, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:43:36', '2023-04-19 20:31:06', NULL),
(198, 109, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:43:36', '2023-04-19 20:31:06', NULL),
(199, 110, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:44:10', '2023-04-19 20:31:06', '2021-08-27 19:44:24'),
(200, 110, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:44:10', '2023-04-19 20:31:06', '2021-08-27 19:44:24'),
(201, 111, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:45:32', '2023-04-19 20:31:06', NULL),
(202, 112, 10, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2021-08-27 19:46:47', '2023-04-19 20:31:06', NULL),
(203, 113, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-09-19 16:45:22', '2023-04-19 20:31:06', '2022-09-30 14:20:39'),
(204, 113, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-09-19 16:45:22', '2023-04-19 20:31:06', '2022-09-30 14:20:39'),
(205, 113, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-09-19 16:45:22', '2023-04-19 20:31:06', '2022-09-30 14:20:39'),
(206, 114, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 17:29:00', '2022-10-03 17:20:51', '2023-04-19 20:31:06', NULL),
(207, 114, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 17:29:00', '2022-10-03 17:20:51', '2023-04-19 20:31:06', NULL),
(208, 115, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 17:36:03', '2022-10-03 17:32:04', '2023-04-19 20:31:06', NULL),
(209, 115, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 17:36:03', '2022-10-03 17:32:04', '2023-04-19 20:31:06', NULL),
(210, 116, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 17:58:34', '2022-10-03 17:49:50', '2023-04-19 20:31:06', NULL),
(211, 116, 9, NULL, 'd', 2, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-03 17:58:34', '2022-10-03 17:49:50', '2023-04-19 20:31:06', NULL),
(212, 117, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-06 11:21:58', '2022-10-03 18:56:18', '2023-04-19 20:31:06', NULL),
(213, 117, 9, NULL, 'd', 2, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-17 20:24:54', '2022-10-03 18:56:18', '2023-04-19 20:31:06', NULL),
(214, 118, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-17 20:24:47', '2022-10-06 11:10:13', '2023-04-19 20:31:06', NULL),
(215, 118, 9, NULL, 'd', 2, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-17 20:24:47', '2022-10-06 11:10:13', '2023-04-19 20:31:06', NULL),
(216, 119, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-17 20:50:17', '2022-10-17 20:35:12', '2023-04-19 20:31:06', NULL),
(217, 120, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-10-17 20:51:56', '2023-04-19 20:31:06', NULL),
(218, 121, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2022-10-22 10:01:18', '2022-10-22 09:55:54', '2023-04-19 20:31:06', NULL),
(219, 122, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-12-16 13:50:39', '2023-04-19 20:31:06', '2022-12-17 15:30:01'),
(220, 122, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-12-16 13:50:39', '2023-04-19 20:31:06', '2022-12-17 15:30:01'),
(221, 122, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-12-16 13:50:39', '2023-04-19 20:31:06', '2022-12-17 15:30:01'),
(222, 122, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2022-12-16 13:50:39', '2023-04-19 20:31:06', '2022-12-17 15:30:01'),
(223, 123, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2023-02-27 13:38:27', '2023-02-20 19:22:43', '2023-04-19 20:31:06', NULL),
(224, 124, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2023-02-20 21:53:19', '2023-02-20 21:30:37', '2023-04-19 20:31:06', NULL),
(225, 124, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-20 21:30:37', '2023-04-19 20:31:06', NULL),
(226, 125, 6, NULL, 'd', 1, NULL, 0, 1, 1, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-24 16:26:15', '2023-04-19 20:31:06', NULL),
(227, 126, 17, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-24 16:26:29', '2023-04-19 20:31:06', NULL),
(228, 127, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(229, 127, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(230, 127, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(231, 127, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(232, 127, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(233, 127, 14, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(234, 127, 16, NULL, 'd', 1, NULL, 0, 0, 1, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(235, 127, 19, NULL, 'd', 1, NULL, 1, 1, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 10:44:09', '2023-04-19 20:31:06', NULL),
(236, 128, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-02-25 13:02:57', '2023-04-19 20:31:06', NULL),
(237, 128, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-02-25 13:02:57', '2023-04-19 20:31:06', NULL),
(238, 128, 17, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-02-25 13:02:57', '2023-04-19 20:31:06', NULL),
(239, 129, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-02-25 13:03:06', '2023-04-19 20:31:06', NULL),
(240, 129, 17, NULL, 'd', 1, NULL, 0, 1, 1, 1, 0, 1, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 13:03:06', '2023-04-19 20:31:06', NULL),
(241, 129, 18, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 1, 0, '2023-03-24 00:11:11', NULL, '2023-02-25 13:03:06', '2023-04-19 20:31:06', NULL),
(242, 129, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 1, 1, '2023-03-24 00:11:11', NULL, '2023-02-25 13:03:06', '2023-04-19 20:31:06', NULL),
(243, 131, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 15:20:25', '2023-04-19 20:31:06', '2023-02-26 20:57:00'),
(244, 132, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 20:57:22', '2023-04-19 20:31:06', NULL),
(245, 132, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 20:57:22', '2023-04-19 20:31:06', NULL),
(246, 132, 17, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 20:57:22', '2023-04-19 20:31:06', NULL),
(247, 132, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 20:57:22', '2023-04-19 20:31:06', NULL),
(248, 132, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 20:57:22', '2023-04-19 20:31:06', NULL),
(249, 132, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-02-26 20:57:22', '2023-04-19 20:31:06', NULL),
(250, 133, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-04-19 20:31:06', NULL),
(251, 133, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-04-19 20:31:06', NULL),
(252, 133, 17, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-04-19 20:31:06', NULL),
(253, 133, 18, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-02-26 21:31:06', '2023-02-26 21:08:31', '2023-04-19 20:31:06', NULL),
(254, 135, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-24 16:08:20', '2023-02-27 11:55:58', '2023-04-19 20:31:06', NULL),
(255, 135, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:58', '2023-02-27 11:55:58', '2023-04-19 20:31:06', NULL),
(256, 136, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-02-27 11:59:14', '2023-04-19 20:31:06', NULL),
(257, 136, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-25 20:50:03', '2023-02-27 11:59:14', '2023-04-19 20:31:06', NULL),
(258, 137, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-02-27 13:56:31', '2023-02-27 13:31:14', '2023-04-19 20:31:06', NULL),
(259, 138, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-24 16:00:38', '2023-02-27 18:24:37', '2023-04-19 20:31:06', NULL),
(260, 139, 6, NULL, 'd', 2, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-01 20:10:58', '2023-04-19 20:31:06', NULL),
(261, 140, 6, NULL, 'd', 2, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-06 10:40:05', '2023-03-01 20:11:52', '2023-04-19 20:31:06', NULL),
(262, 141, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-01 20:14:10', '2023-04-19 20:31:06', NULL),
(263, 141, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-01 20:14:10', '2023-04-19 20:31:06', NULL),
(264, 142, 16, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:27', '2023-03-01 20:28:45', '2023-04-19 20:31:06', NULL),
(265, 142, 19, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:27', '2023-03-01 20:28:45', '2023-04-19 20:31:06', NULL),
(266, 143, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-01 20:30:11', '2023-04-19 20:31:06', NULL),
(267, 143, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:33', '2023-03-01 20:30:11', '2023-04-19 20:31:06', NULL),
(268, 143, 17, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:33', '2023-03-01 20:30:11', '2023-04-19 20:31:06', NULL),
(269, 143, 18, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:33', '2023-03-01 20:30:11', '2023-04-19 20:31:06', NULL),
(270, 143, 13, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:33', '2023-03-01 20:30:11', '2023-04-19 20:31:06', NULL),
(271, 144, 18, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-02 22:05:12', '2023-04-19 20:31:06', NULL),
(272, 145, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-02 23:10:36', '2023-04-19 20:31:06', NULL),
(273, 146, 13, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-03 07:31:22', '2023-04-19 20:31:06', NULL),
(274, 147, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-03 16:29:01', '2023-04-19 20:31:06', '2023-03-03 16:39:07'),
(275, 148, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-03 16:39:01', '2023-04-19 20:31:06', '2023-03-03 16:39:05'),
(276, 149, 6, NULL, 'd', 1, NULL, 0, 1, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-03 19:03:23', '2023-04-19 20:31:06', '2023-03-03 22:29:07'),
(277, 150, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-03 21:42:24', '2023-03-03 21:28:24', '2023-04-19 20:31:06', NULL),
(278, 151, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-03 22:26:34', '2023-03-03 22:04:31', '2023-04-19 20:31:06', NULL),
(279, 152, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-03 22:26:39', '2023-03-03 22:20:34', '2023-04-19 20:31:06', NULL),
(280, 153, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-03 22:54:09', '2023-03-03 22:49:34', '2023-04-19 20:31:06', NULL),
(281, 154, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-04 18:18:48', '2023-04-19 20:31:06', NULL),
(282, 155, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-04 18:49:45', '2023-04-19 20:31:06', NULL),
(283, 156, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-04 19:39:18', '2023-04-19 20:31:06', '2023-03-04 19:42:56'),
(284, 157, 15, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-04 19:39:27', '2023-04-19 20:31:06', NULL),
(285, 157, 10, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', NULL, '2023-03-04 19:39:27', '2023-04-19 20:31:06', NULL),
(286, 158, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 22:39:27', '2023-04-19 20:31:06', NULL),
(287, 159, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 22:47:22', '2023-04-19 20:31:06', NULL),
(288, 160, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 22:49:33', '2023-04-19 20:31:06', NULL),
(289, 161, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 22:59:01', '2023-04-19 20:31:06', NULL),
(290, 162, 22, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 23:03:35', '2023-04-19 20:31:06', NULL),
(291, 163, 23, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 23:11:43', '2023-04-19 20:31:06', NULL),
(292, 164, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', NULL, '2023-03-05 23:16:02', '2023-04-19 20:31:06', NULL),
(293, 165, 21, NULL, 'd', 1, NULL, 0, 0, 1, 0, 0, 0, 0, '2023-03-24 00:11:11', '2023-04-04 21:28:52', '2023-03-06 09:21:52', '2023-04-19 20:31:06', NULL),
(294, 166, 20, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2023-04-10 22:45:53', '2023-03-06 10:41:42', '2023-04-19 20:31:06', NULL),
(295, 167, 10, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2023-03-24 10:59:54', '2023-03-15 14:08:43', '2023-04-19 20:31:06', NULL),
(296, 168, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, '2023-03-24 00:11:11', '2023-03-15 21:21:06', '2023-03-15 14:08:48', '2023-04-19 20:31:06', NULL),
(297, 169, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:46:37', '2023-03-15 15:48:19', '2023-04-19 20:31:06', NULL),
(298, 170, 15, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:46:33', '2023-03-15 15:48:23', '2023-04-19 20:31:06', NULL),
(299, 171, 18, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:48', '2023-03-15 15:48:29', '2023-04-19 20:31:06', NULL),
(300, 172, 25, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-24 10:59:41', '2023-03-15 21:17:03', '2023-04-19 20:31:06', NULL),
(301, 173, 23, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-10 22:45:39', '2023-03-15 21:23:35', '2023-04-19 20:31:06', NULL),
(302, 174, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-03-24 11:00:01', '2023-03-20 02:15:15', '2023-04-19 20:31:06', NULL),
(303, 175, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-03-24 00:11:11', '2023-04-07 15:23:52', '2023-03-20 04:10:23', '2023-04-19 20:31:06', NULL),
(304, 176, 15, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-03-24 00:11:11', '2023-04-10 22:46:28', '2023-03-23 17:27:01', '2023-04-19 20:31:06', NULL),
(305, 185, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-03-24 12:59:00', '2023-03-24 13:00:01', '2023-03-24 09:53:44', '2023-04-19 20:31:06', NULL),
(306, 186, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-04-10 22:41:46', '2023-04-10 22:46:43', '2023-03-24 11:09:09', '2023-04-19 20:31:06', NULL),
(307, 186, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-04-10 22:46:55', NULL, '2023-03-24 11:09:09', '2023-04-19 20:31:06', NULL),
(308, 186, 15, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, '2023-04-17 19:21:00', NULL, '2023-03-24 11:09:09', '2023-04-19 20:31:06', NULL),
(309, 186, 22, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, '2023-03-24 11:09:09', '2023-04-19 20:31:06', NULL),
(310, 187, 23, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 11:46:18', '2023-04-19 20:31:06', NULL),
(311, 188, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-03-25 20:46:00', '2023-04-10 22:45:19', '2023-03-24 13:00:09', '2023-04-19 20:31:06', NULL),
(312, 189, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 13:38:09', '2023-04-19 20:31:06', NULL),
(313, 190, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 14:14:55', '2023-04-19 20:31:06', '2023-03-24 18:46:13'),
(314, 191, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 14:16:58', '2023-04-19 20:31:06', NULL),
(315, 192, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 14:52:32', '2023-04-19 20:31:06', NULL),
(316, 193, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 14:56:30', '2023-04-19 20:31:06', '2023-03-24 18:46:10'),
(317, 194, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 15:01:31', '2023-04-19 20:31:06', NULL),
(318, 195, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 15:11:15', '2023-04-19 20:31:06', NULL),
(319, 196, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 15:27:09', '2023-04-19 20:31:06', '2023-03-27 20:36:29'),
(320, 196, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 15:27:09', '2023-04-19 20:31:06', '2023-03-27 20:36:29'),
(321, 196, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 15:27:09', '2023-04-19 20:31:06', '2023-03-27 20:36:29'),
(322, 196, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '2023-03-24 15:27:09', '2023-04-19 20:31:06', '2023-03-27 20:36:29'),
(323, 197, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 18:37:08', '2023-04-19 20:31:06', '2023-03-24 18:46:09'),
(324, 198, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-24 18:46:18', '2023-04-19 20:31:06', NULL),
(325, 199, 21, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(326, 199, 26, NULL, 'd', 1, NULL, 0, 1, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(327, 199, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(328, 199, 9, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(329, 199, 20, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(330, 199, 24, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(331, 199, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(332, 199, 23, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(333, 199, 13, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(334, 199, 14, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(335, 199, 16, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(336, 199, 25, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(337, 199, 22, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(338, 199, 19, NULL, 'd', 1, NULL, 1, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(339, 199, 27, NULL, 'd', 1, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(340, 199, 10, NULL, 'd', 1, NULL, 1, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 20:37:12', '2023-04-21 21:12:32', '2023-04-21 21:12:32'),
(341, 200, 37, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(342, 200, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(343, 200, 18, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(344, 200, 23, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:46:49', NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(345, 200, 39, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(346, 200, 38, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:00', NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(347, 200, 35, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(348, 200, 36, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(349, 200, 25, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(350, 200, 34, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(351, 200, 33, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(352, 200, 29, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(353, 200, 22, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(354, 200, 32, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(355, 200, 31, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(356, 200, 30, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(357, 200, 27, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(358, 200, 10, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(359, 200, 28, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-28 18:35:55', '2023-04-19 20:31:06', NULL),
(360, 201, 21, NULL, 'd', 3, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, '2023-03-31 22:59:26', '2023-04-19 20:31:06', '2023-04-10 19:15:46'),
(361, 201, 37, NULL, 'd', 3, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-31 22:59:26', '2023-04-19 20:31:06', '2023-04-10 19:15:46'),
(362, 201, 26, NULL, 'd', 8, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-31 22:59:26', '2023-04-19 20:31:06', '2023-04-10 19:15:46'),
(363, 202, 18, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-31 23:27:43', '2023-04-19 20:31:06', '2023-03-31 23:35:24'),
(364, 202, 31, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-03-31 23:27:43', '2023-04-19 20:31:06', '2023-03-31 23:35:24'),
(365, 203, 36, NULL, 'd', 20, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-03-31 23:34:46', '2023-04-23 08:21:28', NULL),
(366, 204, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(367, 204, 37, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(368, 204, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(369, 204, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(370, 204, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(371, 204, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(372, 204, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(373, 204, 18, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(374, 204, 23, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-17 19:08:00', NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(375, 204, 39, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(376, 204, 38, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(377, 204, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(378, 204, 16, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(379, 204, 35, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(380, 204, 36, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(381, 204, 25, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(382, 204, 34, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(383, 204, 33, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(384, 204, 29, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(385, 204, 22, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(386, 204, 19, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, '2023-04-11 00:23:00', NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(387, 204, 32, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:00', NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(388, 204, 31, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, '2023-04-10 22:48:03', NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(389, 204, 30, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(390, 204, 27, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(391, 204, 10, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:49', NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(392, 204, 28, NULL, 'd', 1, NULL, 1, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:41', NULL, '2023-04-04 20:03:33', '2023-04-19 20:31:06', NULL),
(393, 205, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-07 12:33:57', '2023-04-23 08:22:25', NULL),
(394, 206, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-07 14:27:46', '2023-04-19 20:31:06', NULL),
(395, 206, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-07 14:27:46', '2023-04-19 20:31:06', NULL),
(396, 207, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-07 14:42:36', '2023-04-19 20:31:06', '2023-04-07 16:15:54'),
(397, 208, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-07 15:07:31', '2023-04-23 08:23:32', NULL),
(398, 209, 26, NULL, 'r', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-22 22:20:00', NULL, '2023-04-07 15:07:34', '2023-04-22 22:20:36', NULL),
(399, 210, 25, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-07 16:17:52', '2023-04-21 21:32:54', '2023-04-21 21:32:54'),
(400, 210, 34, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-07 16:17:52', '2023-04-21 21:32:54', '2023-04-21 21:32:54'),
(401, 210, 33, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-07 16:17:52', '2023-04-21 21:32:54', '2023-04-21 21:32:54'),
(402, 210, 28, NULL, 'd', 1, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-07 16:17:52', '2023-04-21 21:32:54', '2023-04-21 21:32:54'),
(403, 211, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:26', NULL, '2023-04-10 19:16:05', '2023-04-19 20:31:06', NULL),
(404, 211, 37, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:20', '2023-04-16 09:38:02', '2023-04-10 19:16:05', '2023-04-19 20:31:06', NULL),
(405, 212, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:05:44', '2023-04-19 20:31:06', NULL),
(406, 213, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:07:24', '2023-04-19 20:31:06', NULL),
(407, 214, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:11:36', '2023-04-19 20:31:06', '2023-04-10 22:38:36'),
(408, 214, 35, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:11:36', '2023-04-19 20:31:06', '2023-04-10 22:38:36'),
(409, 215, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:13:16', '2023-04-19 20:31:06', '2023-04-10 22:38:34'),
(410, 215, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:13:16', '2023-04-19 20:31:06', '2023-04-10 22:38:34'),
(411, 215, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:13:16', '2023-04-19 20:31:06', '2023-04-10 22:38:34'),
(412, 216, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:27:17', '2023-04-19 20:31:06', NULL),
(413, 217, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:29:54', '2023-04-19 20:31:06', NULL),
(414, 218, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-10 20:48:28', '2023-04-19 20:31:06', '2023-04-10 20:48:48'),
(415, 219, 21, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:48:55', '2023-04-19 20:31:06', '2023-04-10 22:38:37'),
(416, 219, 37, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:48:55', '2023-04-19 20:31:06', '2023-04-10 22:38:37'),
(417, 219, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:48:55', '2023-04-19 20:31:06', '2023-04-10 22:38:37'),
(418, 219, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 20:48:55', '2023-04-19 20:31:06', '2023-04-10 22:38:37'),
(419, 220, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 21:01:46', '2023-04-19 20:31:06', NULL),
(420, 221, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 21:48:16', '2023-04-19 20:31:06', NULL),
(421, 222, 31, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:10', NULL, '2023-04-10 21:50:01', '2023-04-19 20:31:06', NULL),
(422, 222, 30, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 21:50:01', '2023-04-19 20:31:06', NULL),
(423, 222, 27, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 21:50:01', '2023-04-19 20:31:06', NULL),
(424, 222, 28, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:47:04', NULL, '2023-04-10 21:50:01', '2023-04-19 20:31:06', NULL),
(425, 223, 26, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-22 21:35:00', '2023-04-22 21:59:51', '2023-04-10 21:53:49', '2023-04-22 21:59:51', NULL),
(426, 223, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 21:53:49', '2023-04-19 20:31:06', NULL),
(427, 223, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:42:12', '2023-04-10 22:46:12', '2023-04-10 21:53:49', '2023-04-19 20:31:06', NULL),
(428, 223, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:42:06', '2023-04-10 22:46:12', '2023-04-10 21:53:49', '2023-04-19 20:31:06', NULL),
(429, 224, 31, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:42:00', '2023-04-10 22:46:05', '2023-04-10 22:01:22', '2023-04-19 20:31:06', NULL),
(430, 224, 28, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-10 22:41:53', '2023-04-10 22:46:05', '2023-04-10 22:01:22', '2023-04-19 20:31:06', NULL),
(431, 225, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 22:38:48', '2023-04-19 20:31:06', '2023-04-10 22:52:16'),
(432, 225, 16, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-10 22:38:48', '2023-04-19 20:31:06', '2023-04-10 22:52:16'),
(433, 226, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-16 09:37:00', NULL, '2023-04-10 22:54:28', '2023-04-19 20:31:06', NULL),
(434, 227, 38, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 09:54:33', '2023-04-19 20:31:06', NULL),
(435, 228, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 10:35:17', '2023-04-19 20:31:06', NULL),
(436, 228, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 10:35:17', '2023-04-19 20:31:06', NULL),
(437, 228, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 10:35:17', '2023-04-19 20:31:06', NULL),
(438, 228, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 10:35:17', '2023-04-19 20:31:06', NULL),
(439, 229, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 11:03:09', '2023-04-19 20:31:06', NULL),
(440, 229, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 11:03:09', '2023-04-19 20:31:06', NULL),
(441, 229, 20, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 11:03:09', '2023-04-19 20:31:06', NULL),
(442, 229, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-11 11:03:09', '2023-04-19 20:31:06', NULL),
(443, 230, 26, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-16 15:22:11', '2023-04-19 20:31:06', '2023-04-16 15:22:18'),
(444, 230, 6, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-16 15:22:11', '2023-04-19 20:31:06', '2023-04-16 15:22:18'),
(445, 231, 21, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-16 15:22:26', '2023-04-19 20:31:06', '2023-04-16 15:22:30'),
(446, 231, 37, NULL, 'd', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-16 15:22:26', '2023-04-19 20:31:06', '2023-04-16 15:22:30'),
(447, 232, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 15:22:38', '2023-04-19 20:31:06', NULL),
(448, 232, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 15:22:38', '2023-04-19 20:31:06', NULL),
(449, 232, 9, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 15:22:38', '2023-04-19 20:31:06', NULL),
(450, 233, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 17:02:16', '2023-04-19 20:31:06', NULL),
(451, 233, 24, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 17:02:16', '2023-04-19 20:31:06', NULL),
(452, 234, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 17:38:00', '2023-04-20 13:34:42', '2023-04-20 13:34:42'),
(453, 235, 6, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 17:38:13', '2023-04-20 13:34:40', '2023-04-20 13:34:40'),
(454, 236, 26, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 17:56:51', '2023-04-21 14:27:33', NULL),
(455, 237, 39, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 18:14:45', '2023-04-19 20:31:06', NULL),
(456, 237, 38, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 18:14:45', '2023-04-19 20:31:06', NULL),
(457, 237, 14, NULL, 'd', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-16 18:14:45', '2023-04-19 20:31:06', NULL),
(458, 238, 21, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-19 20:56:55', '2023-04-20 13:34:39', '2023-04-20 13:34:39'),
(459, 239, 9, NULL, 'p', 1, NULL, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, '2023-04-20 13:45:24', '2023-04-20 17:40:54', '2023-04-20 17:40:54'),
(460, 240, 6, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-20 13:45:42', '2023-04-20 17:40:56', '2023-04-20 17:40:56'),
(461, 241, 9, NULL, 'p', 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '2023-04-20 17:42:23', '2023-04-21 20:16:15', '2023-04-21 20:16:15'),
(462, 242, 9, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 21:22:36', '2023-04-21 21:24:51', '2023-04-21 20:16:09', '2023-04-21 21:24:51', NULL),
(463, 243, 21, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 21:23:53', '2023-04-21 21:29:31', '2023-04-21 21:12:45', '2023-04-21 21:29:31', NULL),
(464, 244, 37, NULL, 'r', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-23 20:22:38', NULL, '2023-04-21 21:24:59', '2023-04-23 20:22:38', NULL),
(465, 245, 9, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-21 21:25:18', '2023-04-21 21:31:57', NULL),
(466, 246, 9, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 21:35:40', '2023-04-21 23:03:14', '2023-04-21 21:25:29', '2023-04-21 23:03:14', NULL),
(467, 247, 21, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-21 21:25:38', '2023-04-21 21:32:11', NULL),
(468, 248, 20, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-21 21:31:17', '2023-04-23 08:24:23', NULL),
(469, 249, 23, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-22 22:01:00', '2023-04-21 22:02:36', '2023-04-21 21:36:29', '2023-04-21 22:02:36', NULL),
(470, 250, 38, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 22:44:00', '2023-04-21 23:37:54', '2023-04-21 22:04:00', '2023-04-21 23:37:54', NULL),
(471, 251, 16, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-21 22:10:11', '2023-04-21 22:11:47', NULL),
(472, 252, 35, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-21 22:52:32', '2023-04-21 22:53:24', NULL),
(473, 253, 14, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 23:01:00', '2023-04-21 23:44:05', '2023-04-21 23:00:51', '2023-04-21 23:44:05', NULL),
(474, 254, 32, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 23:27:00', '2023-04-21 23:29:37', '2023-04-21 23:20:25', '2023-04-21 23:29:37', NULL),
(475, 255, 18, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 23:36:00', '2023-04-23 09:31:29', '2023-04-21 23:36:07', '2023-04-23 09:31:29', NULL),
(476, 256, 38, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 23:42:00', '2023-04-21 23:45:36', '2023-04-21 23:40:28', '2023-04-21 23:45:36', NULL),
(477, 257, 9, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-21 23:41:58', '2023-04-23 08:25:00', NULL),
(478, 258, 37, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-21 23:48:57', '2023-04-21 23:49:21', '2023-04-21 23:46:52', '2023-04-21 23:49:21', NULL),
(479, 259, 29, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:31:30', '2023-04-22 00:57:39', NULL),
(480, 260, 21, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:57:43', NULL),
(481, 260, 37, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:57:41', NULL),
(482, 260, 26, NULL, 'c', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-22 22:49:00', '2023-04-22 22:52:05', '2023-04-22 00:43:05', '2023-04-22 22:52:05', NULL),
(483, 260, 6, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:57:48', NULL),
(484, 260, 9, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:58', NULL),
(485, 260, 20, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:53', NULL),
(486, 260, 24, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:49', NULL),
(487, 260, 18, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:42', NULL),
(488, 260, 23, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:46', NULL),
(489, 260, 39, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:39', NULL),
(490, 260, 38, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:32', NULL),
(491, 260, 14, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:35', NULL),
(492, 260, 16, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:58:29', NULL),
(493, 260, 35, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:32', NULL),
(494, 260, 36, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:28', NULL),
(495, 260, 25, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:24', NULL),
(496, 260, 34, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:20', NULL),
(497, 260, 33, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:17', NULL),
(498, 260, 29, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:13', NULL),
(499, 260, 22, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:07', NULL),
(500, 260, 19, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:04', NULL),
(501, 260, 27, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:01', NULL),
(502, 260, 28, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 00:43:05', '2023-04-22 00:59:36', NULL),
(503, 261, 26, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 08:40:09', '2023-04-22 22:04:57', NULL),
(504, 262, 26, NULL, 'r', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-22 22:04:00', NULL, '2023-04-22 21:17:55', '2023-04-22 22:04:10', NULL),
(505, 263, 27, NULL, 'r', 1, NULL, 0, 1, 1, 1, 1, 1, 0, '2023-04-22 22:02:00', NULL, '2023-04-22 22:01:32', '2023-04-22 22:03:35', NULL),
(506, 264, 26, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 22:30:48', '2023-04-22 22:31:53', NULL),
(507, 265, 26, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-22 22:30:58', '2023-04-22 22:31:56', NULL),
(508, 266, 6, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 08:20:36', '2023-04-23 08:29:26', NULL),
(509, 267, 9, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 08:20:51', '2023-04-23 08:29:50', NULL),
(510, 268, 18, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 08:21:00', '2023-04-23 08:29:53', NULL),
(511, 269, 23, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 14:09:41', '2023-04-23 14:10:30', NULL),
(512, 270, 24, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 19:13:14', '2023-04-23 19:14:32', NULL),
(513, 271, 39, NULL, 'p', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 19:25:43', '2023-04-23 19:28:26', NULL),
(514, 272, 27, NULL, 'a', 1, NULL, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '2023-04-23 19:37:58', '2023-04-23 19:41:20', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `landing_page`, `identifier`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Superadmin', 'users', 'superadmin', 'IT User for maintainances', '2021-05-02 01:50:20', '2022-11-17 16:56:46', NULL),
(2, 'Admin', 'dashboards', 'admin', 'Registrar', '2021-05-04 14:45:12', '2021-07-29 08:06:54', NULL),
(4, 'Students', 'requests', 'students', 'Student Role', '2021-05-04 14:46:09', '2021-05-04 14:46:09', NULL),
(5, 'Offices ', 'approval', 'offices', 'Office Role', '2021-05-12 23:37:29', '2021-05-12 23:37:29', NULL),
(8, 'Admission', 'admission', 'admissionoffice', 'Admission Office', '2022-12-13 13:22:27', '2022-12-13 13:22:27', NULL),
(9, 'HapAndSSO', 'dashboards', 'offices2', 'for HAP and SSO', '2023-03-24 01:34:27', '2023-03-24 13:30:04', NULL),
(10, 'hapoffice', 'dashboards', 'offices3', 'HAP - handles the subject description', '2023-04-07 15:33:55', '2023-04-07 15:47:01', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2061, 1, 1, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2062, 1, 2, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2063, 1, 3, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2064, 1, 4, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2065, 1, 5, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2066, 1, 6, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2067, 1, 33, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2068, 1, 34, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2069, 1, 42, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2070, 1, 43, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2071, 1, 53, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2072, 1, 54, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2073, 1, 7, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2074, 1, 8, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2075, 1, 9, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2076, 1, 10, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2077, 1, 11, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2078, 1, 12, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2079, 1, 13, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2080, 1, 14, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2081, 1, 39, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2082, 1, 40, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2083, 1, 23, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2084, 1, 24, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2085, 1, 25, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2086, 1, 26, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2087, 1, 37, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2088, 1, 38, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2089, 1, 45, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2090, 1, 46, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2091, 1, 15, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2092, 2, 15, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2093, 8, 15, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2094, 1, 47, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2095, 2, 47, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2096, 8, 47, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2097, 1, 48, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2098, 2, 48, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2099, 8, 48, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2100, 1, 16, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2101, 1, 17, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2102, 1, 18, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2103, 1, 19, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2104, 1, 20, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2105, 1, 21, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2106, 1, 22, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2107, 1, 41, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2108, 1, 49, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2109, 1, 50, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2110, 1, 51, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2111, 1, 52, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2112, 1, 55, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2113, 4, 27, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2114, 4, 28, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2115, 2, 29, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2116, 1, 30, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2117, 1, 31, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2118, 1, 32, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2119, 1, 58, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL),
(2120, 1, 59, '2023-03-03 10:55:51', '2023-03-03 10:55:51', NULL);

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
  `birthdate` date DEFAULT NULL,
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
  `course_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_number`, `firstname`, `lastname`, `middlename`, `suffix`, `gender`, `contact`, `birthdate`, `level`, `status`, `address`, `admitted_year_sy`, `semester`, `elem_school_address`, `elem_year_graduated`, `high_school_address`, `high_year_graduated`, `college_school_address`, `year_graduated`, `course_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(228, '2019-00234-TG-0', 'Marcus', 'Arevalo', 'Sayson', NULL, 'f', '09847364634', '2001-02-02', NULL, 'returning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 261, '2023-02-27 11:48:22', '2023-03-06 10:48:48', NULL),
(229, '2021-00524-TG-0', 'Cedric', 'Santos', 'Jose', NULL, 'm', '09499594616', '1998-08-08', 2, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 262, '2023-02-27 11:51:49', '2023-03-03 09:39:53', NULL),
(234, '2018-00368-TG-0', 'Jerald', 'Dael', 'Bruce', NULL, 'm', '09499594616', '1999-07-17', 2, 'enrolled', 'BLOCK 30 LOT 08 MARTIZANO ST., PHASE 4 CENTRAL BICUTAN, TAGUIG CITY', '2018-2021', 'Second Semester', 'Sa tabi lang', '2012', 'Sa computer shop', '2018', 'Ahh sa PUPT to', NULL, 1, 304, '2023-03-01 19:23:48', '2023-03-03 09:40:20', NULL),
(238, '2020-00446-TG-0', 'Cristina', 'Osorio', 'Manalo', NULL, NULL, NULL, '2000-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 309, '2023-03-03 22:40:30', '2023-03-03 22:40:30', NULL),
(239, '2022-00552-TG-0', 'Albert', 'Roldolpo', 'Adonis', NULL, NULL, NULL, '2011-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 310, '2023-03-03 22:41:40', '2023-03-03 22:41:40', NULL),
(241, '2019-00439-TG-0', 'Kyle Errold', 'Dula', 'Cardillo', NULL, 'm', '09159632301', '2001-02-28', 4, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 312, '2023-03-06 02:02:15', '2023-03-06 02:04:41', NULL),
(242, '2020-11111-TG-0', 'Carmel', 'Pome', 'Tubal', NULL, 'm', '09159632301', '2001-01-01', 4, 'enrolled', '481 blk. 9 sunflower street. Pinagsama, Taguig', '2019-2023', 'First Semester', 'Fort Bonifacio Elementary School', '2012', 'Western Bicutan National High School', '2016', 'Polytechnic University of the Philippines - Taguig Branch', NULL, 2, 313, '2023-03-06 07:16:02', '2023-03-06 09:16:00', NULL),
(243, '2021-00454-TG-0', 'Jimuel', 'Manuel', 'Lemuel', NULL, 'm', '09159632301', '2001-03-06', 3, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 314, '2023-03-06 08:01:44', '2023-03-31 16:33:41', '2023-03-31 16:33:41'),
(244, '2019-00987-TG-0', 'Connor', 'Mackenzie', 'Jenkins', NULL, NULL, NULL, '1997-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 315, '2023-03-06 09:07:44', '2023-03-31 16:33:28', '2023-03-31 16:33:28'),
(245, '2021-00222-TG-0', 'Kim', 'Jiso', 'lemuel', NULL, NULL, NULL, '2001-01-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 316, '2023-03-06 09:18:17', '2023-03-31 16:33:43', '2023-03-31 16:33:43'),
(246, '2022-00551-TG-0', 'Jeremiah', 'Katz', 'Whitlock', NULL, 'f', '09159632301', '2001-02-04', 4, 'enrolled', '481 blk. 9 sunflower street. Pinagsama, Taguig', '2019-2023', 'First Semester', 'Fort Bonifacio Elementary School', '2012', 'Western Bicutan National High School', '2016', 'Polytechnic University of the Philippines - Taguig Branch', NULL, 2, 317, '2023-03-06 09:34:20', '2023-03-31 16:33:48', '2023-03-31 16:33:48'),
(247, '2022-00653-TG-0', 'Mariel', 'Seilen', 'Mariwa', NULL, NULL, NULL, '2001-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 318, '2023-03-06 09:42:31', '2023-03-06 09:42:31', NULL),
(248, '2023-00001-TG-0', 'Jerome', 'Lamar', 'Kendrick', NULL, NULL, NULL, '2002-02-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 319, '2023-03-06 10:06:09', '2023-03-06 10:06:09', NULL),
(249, '2022-00224-TG-0', 'Jerm', 'Miah', 'Lemuel', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 320, '2023-03-06 10:45:17', '2023-03-06 10:45:17', NULL),
(250, '2020-00554-TG-0', 'Merroa', 'Zomo', 'Occutuna', NULL, 'm', '09159632301', '2001-02-28', 4, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 321, '2023-03-16 21:41:07', '2023-03-16 21:41:53', NULL),
(251, '2022-00216-TG-0', 'Michael', 'Reeves', 'Alfuentes', NULL, 'm', '09159632301', '2001-02-28', 5, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 322, '2023-03-20 02:36:40', '2023-03-20 02:57:17', NULL),
(273, '2022-00626-TG-0', 'Pel', 'Nel', 'Fel', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 343, '2023-03-20 23:04:11', '2023-03-20 23:04:11', NULL),
(274, '2022-00998-TG-0', 'Spiel', 'Berg', 'Ice', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 346, '2023-03-22 01:14:22', '2023-03-22 01:14:22', NULL),
(275, '2023-00216-TG-0', 'Mel', 'Saban', 'Philcrak', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 347, '2023-03-22 01:17:37', '2023-03-22 01:17:37', NULL),
(276, '2022-00229-TG-0', 'Fischl', 'Prinzessin', 'Dofaoak', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 348, '2023-03-22 01:21:33', '2023-03-22 01:21:33', NULL),
(277, '2016-00100-TG-0', 'Zac', 'Efron', 'Bolton', NULL, 'm', '09158174331', '2001-07-26', NULL, 'alumni', '555 9th St., GHQ Village, Taguig City', '2019-2021', 'Second Semester', 'Francisco School', '2021', 'National High School', '2016', 'Polytechnic University of the Philippines Taguig Branch', 2023, 8, 352, '2023-03-24 11:04:32', '2023-03-24 11:08:47', NULL),
(278, '2019-00430-TG-0', 'Allen Kobe', 'Agustin', 'N/A', NULL, NULL, NULL, '2001-03-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 353, '2023-03-24 12:02:11', '2023-03-24 12:02:11', NULL),
(279, '2019-00426-TG-0', 'Princess Rizalyn', 'Bagro', 'Malonzo', NULL, NULL, NULL, '2000-08-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 354, '2023-03-24 12:03:38', '2023-03-24 12:03:38', NULL),
(280, '2019-00105-TG-0', 'Fatima', 'Cortez', 'Macuha', NULL, NULL, NULL, '2001-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 355, '2023-03-24 12:06:28', '2023-03-24 12:06:28', NULL),
(282, '2019-00440-TG-0', 'Maia Christiana Nicole', 'Gaerlan', 'Sayson', NULL, NULL, NULL, '2000-06-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 357, '2023-03-24 13:22:48', '2023-03-24 13:22:48', NULL),
(284, '2018-00515-TG-0', 'Markrey', 'Manabat', 'Baque', NULL, NULL, NULL, '1999-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 359, '2023-03-24 13:26:01', '2023-03-24 13:26:01', NULL),
(285, '2020-00999-TG-0', 'Michael', 'Levi', 'Yuma', NULL, 'm', '09159632301', '2001-02-28', 4, 'enrolled', '481 blk. 9 sunflower street. Pinagsama, Taguig', '2019-2023', 'Second Semester', 'Fort Bonifacio Elementary School', '2013', 'Western Bicutan National High School', '2017', 'Polytechnic University of the Philippines - Taguig Branch', NULL, 2, 361, '2023-03-24 15:00:18', '2023-03-24 15:01:26', NULL),
(286, '2021-00624-TG-0', 'Ley', 'Mira', 'Carmina', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 400, '2023-03-24 18:15:11', '2023-03-24 18:15:11', NULL),
(316, '2018-00519-TG-0', 'Randy', 'Gervacio', 'Sevilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 433, '2023-03-24 19:19:58', '2023-03-24 19:19:58', NULL),
(317, '2019-00126-TG-0', 'Lougen', 'Gierza', 'Luching', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 434, '2023-03-24 19:20:05', '2023-03-24 19:20:05', NULL),
(318, '2019-00244-TG-0', 'Ryokei', 'Kin', 'Morcilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 435, '2023-03-24 19:20:07', '2023-03-24 19:20:07', NULL),
(319, '2019-00451-TG-0', 'Lester Jay', 'Lagura', 'Rama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 436, '2023-03-24 19:20:13', '2023-03-24 19:20:13', NULL),
(325, '2022-00425-TG-0', 'Samantha', 'Arendel', 'Simpson', NULL, NULL, NULL, '2000-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 444, '2023-03-27 12:13:42', '2023-03-27 12:13:42', NULL),
(326, '2019-00215-TG-0', 'Meil', 'Lemin', 'Limuel', NULL, 'm', '09159632301', '2001-02-28', 4, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 445, '2023-03-27 23:08:26', '2023-03-27 23:09:04', NULL),
(327, '2016-00216-TG-0', 'Mike', 'Take', 'Mitchy', NULL, NULL, NULL, '2001-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 450, '2023-03-31 00:17:35', '2023-03-31 00:17:35', NULL),
(328, '2015-03000-TG-0', 'Alejandro', 'Roces', 'Basillio', NULL, NULL, NULL, '2000-02-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 451, '2023-03-31 16:04:21', '2023-03-31 16:33:25', '2023-03-31 16:33:25'),
(329, '2018-00344-TG-0', 'Alejandro', 'Park', 'Jin', NULL, 'm', '09154343442', '2001-09-19', NULL, 'returning', 'Cebu,Philippines', '2019-2021', 'Summer Semester', 'Francisco School', '2021', 'National High School', '2016', 'Polytechnic University of the Philippines Taguig Branch', NULL, 6, 452, '2023-03-31 16:11:11', '2023-04-07 14:27:32', NULL),
(330, '2012-00440-TG-0', 'Eros', 'Cupid', 'Aphrodite', NULL, 'm', '09158174331', '2000-03-04', 4, 'enrolled', '555 9th St., GHQ Village, Taguig City', '2019-2021', 'Second Semester', 'Francisco School', '2021', 'National High School', '2016', 'Polytechnic University of the Philippines Taguig Branch', NULL, 10, 453, '2023-03-31 16:34:09', '2023-04-04 20:01:48', NULL),
(331, '2017-00219-TG-0', 'Mike', 'Mel', 'Wazowski', NULL, 'm', '00000000000', '2001-02-28', 222, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 454, '2023-03-31 16:38:05', '2023-03-31 16:57:32', NULL),
(332, '2015-00219-TG-0', 'Mel', 'Mike', 'Ney', NULL, 'm', '09159632301', '2001-02-28', 3, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 455, '2023-03-31 16:59:30', '2023-03-31 17:30:47', NULL),
(333, '2017-00444-TG-0', 'Angela', 'Byron', 'Osorio', NULL, 'f', '09922905473', '2000-09-29', 5, 'enrolled', '65 Espino St., Central Signal Village, Taguig City', '2019-2020', 'First Semester', 'EM\'s Signal Village Taguig CIty', '2012', 'Dr. Arcadio Santos National High School ', '2017', 'Polytechnic University of the Philippines - Taguig', NULL, 5, 456, '2023-03-31 23:22:13', '2023-03-31 23:28:01', NULL),
(334, '2016-00493-TG-0', 'Michael', 'Pet', 'Peeves', NULL, 'm', '09159632301', '2001-02-28', 4, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 457, '2023-03-31 23:58:59', '2023-04-01 00:00:20', NULL),
(335, '2021-00221-TG-0', 'Sanya', 'Cruz', 'Cuenco', NULL, 'f', '09666980732', '1998-02-09', 2, 'enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 458, '2023-04-07 11:36:04', '2023-04-07 11:37:14', NULL),
(336, '2019-00423-TG-0', 'Harvey ', 'Luna', 'Boco', NULL, NULL, NULL, '2001-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 463, '2023-04-07 18:03:00', '2023-04-07 18:03:00', NULL),
(337, '2021-00264-TG-0', 'Ashley', 'Mabini', 'Graham', NULL, 'm', '09159632301', '2001-02-28', 4, 'enrolled', '481 blk. 9 sunflower street pinagsama, Taguig', '2019-2023', 'First Semester', 'Fort bonifacio elementary school', '2012', 'Western Bicutan National High School', '2019', 'Polytechnic University of the Philippines - Taguig', NULL, 2, 469, '2023-04-16 15:16:21', '2023-04-16 15:18:29', NULL),
(338, '2023-00425-TG-0', 'Johnny', 'Ramos', 'Cruz', NULL, 'm', '09299008789', '2003-09-29', 2, 'enrolled', '87 Army Street, Signal Village, Taguig', '2023-2024', 'First Semester', 'Silang Elementary School', '2015', 'Daang Hari High School', '2017', 'Polytechnic University of the Philippines Taguig', NULL, 7, 470, '2023-04-19 21:23:04', '2023-04-21 13:01:33', '2023-04-21 13:01:33'),
(339, '2023-00111-TG-0', 'Johhny', 'Ramos', 'Celso', NULL, NULL, NULL, '2002-08-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 471, '2023-04-20 17:47:22', '2023-04-21 13:01:24', '2023-04-21 13:01:24'),
(340, '2023-00012-TG-0', 'Angelica', 'Padilla', 'Bayron', NULL, NULL, NULL, '2002-09-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 472, '2023-04-21 13:16:20', '2023-04-21 13:16:20', NULL),
(341, '2023-00789-TG-0', 'Angelica', 'Ron', 'Bay', NULL, 'f', '09922907789', '2001-09-29', 1, 'enrolled', '26A Airforce Rd., South Signal Village, Taguig', '2023-2024', 'First Semester', 'Silang Elementary School', '2015', 'Daang Hari High School', '2017', 'Polytechnic University of the Philippines Taguig', NULL, 4, 473, '2023-04-21 23:37:41', '2023-04-21 23:41:44', NULL),
(342, '2020-00259-TG-0', 'Ken', 'Lamar', 'Agoncillo', NULL, 'm', '09159632301', '2001-02-28', 3, 'enrolled', '481 blk. 9 sunflower street. Pinagsama, Taguig', '2019-2023', 'First Semester', 'Fort Bonifacio Elementary School', '2012', 'Western Bicutan National High School', '2016', 'Polytechnic University of the Philippines - Taguig Branch', NULL, 2, 474, '2023-04-22 07:17:15', '2023-04-22 08:39:59', NULL),
(343, '2019-00112-TG-0', 'Joyce', 'Acidera', 'Andres', NULL, NULL, NULL, '1999-12-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 475, '2023-04-23 08:47:06', '2023-04-23 08:47:06', NULL),
(344, '2019-00226-TG-0', 'Kristine Jilliane', 'Aligato', 'A', NULL, NULL, NULL, '2001-05-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 476, '2023-04-23 08:54:20', '2023-04-23 08:54:20', NULL);

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
  `certificate_of_completion` int(20) DEFAULT NULL,
  `nc_non_enrollmentID` int(11) NOT NULL,
  `coc_hs_shsID` int(11) NOT NULL,
  `ac_pept_alsID` int(11) NOT NULL,
  `upload_status` varchar(11) DEFAULT NULL,
  `admission_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_admission`
--

INSERT INTO `student_admission` (`stud_admissionID`, `studID`, `sar_pupcct_resultID`, `sar_pupcet_result_status`, `f137ID`, `f137_status`, `f138ID`, `g10_status`, `g11_status`, `g12_status`, `cert_dry_sealID`, `cert_dry_sealID_twelve`, `app_grad`, `or_app_grad`, `latest_regi`, `eval_res`, `course_curri`, `cert_candi`, `gen_clear`, `or_grad_fee`, `cert_confer`, `schoolid`, `honor_dis`, `trans_rec`, `psa_nsoID`, `psa_nso_status`, `good_moralID`, `good_moral_status`, `medical_certID`, `medical_cert_status`, `picture_two_by_twoID`, `twobytwo_status`, `certificate_of_completion`, `nc_non_enrollmentID`, `coc_hs_shsID`, `ac_pept_alsID`, `upload_status`, `admission_status`, `created_at`) VALUES
(36, 218, 1, 'approve', 2, 'reject', 3, 'approve', 'reject', 'approve', 11, 12, 13, 14, 0, 16, 17, 18, 19, 20, 21, 22, 23, 24, 4, 'reject', 5, 'approve', 6, 'reject', 7, 'approve', 25, 0, 0, 0, NULL, 'complete', '2023-02-27 01:01:12'),
(50, 230, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'complete', '2023-03-03 02:03:59'),
(51, 224, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 'incomplete', '2023-02-20 11:18:14'),
(52, 234, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 'incomplete', '2023-02-20 14:11:06'),
(54, 261, 1, 'reject', 2, 'approve', 3, 'approve', 'reject', 'reject', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'reject', 5, 'reject', 6, 'reject', 7, 'reject', NULL, 0, 0, 0, 'incomplete', 'incomplete', '2023-03-31 08:12:25'),
(55, 307, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 0, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-03-03 11:01:50'),
(58, 312, 1, 'approve', 2, 'approve', 3, 'approve', 'reject', 'approve', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'reject', 5, 'approve', 6, 'approve', 7, 'approve', NULL, 0, 0, 0, 'incomplete', 'incomplete', '2023-03-25 12:57:17'),
(59, 313, 1, 'approve', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'approve', 5, 'approve', 6, 'approve', 7, 'approve', 25, 0, 0, 0, 'complete', 'complete', '2023-03-27 13:08:31'),
(60, 314, 1, 'approve', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'approve', 5, 'approve', 6, 'approve', 7, 'approve', 25, 0, 0, 0, 'complete', 'incomplete', '2023-03-06 00:51:32'),
(61, 316, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-03-06 01:18:51'),
(62, 317, 1, 'approve ', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'approve', 5, 'approve', 6, 'approve', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'incomplete', '2023-03-06 02:46:55'),
(63, 315, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-03-24 03:20:33'),
(64, 321, 1, 'approve ', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'approve', 5, 'approve', 6, 'approve', 7, 'approve', 25, 0, 0, 0, 'incomplete', 'complete', '2023-03-16 14:01:39'),
(65, 322, 1, 'approve', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'approve', 5, 'approve', 6, 'approve', 7, 'approve', 25, 0, 0, 0, 'complete', 'complete', '2023-03-23 15:59:57'),
(66, 353, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-03-24 06:28:41'),
(67, 352, 1, NULL, 2, NULL, 0, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'rechecking', '2023-04-21 14:31:16'),
(68, 248, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, NULL, 0, 0, 0, NULL, 'incomplete', '2023-03-24 09:16:14'),
(69, 355, 1, 'reject', 2, 'reject', 3, 'reject', 'reject', 'reject', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 21, 22, 0, 0, 4, 'reject', 5, 'reject', 6, 'reject', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'complete', '2023-04-21 15:57:30'),
(70, 319, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 0, NULL, 0, NULL, 25, 8, 9, 10, NULL, 'incomplete', '2023-03-25 12:56:02'),
(71, 357, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'complete', '2023-03-25 12:57:43'),
(72, 354, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 12, 13, 14, 15, NULL, 17, 18, 19, 20, 21, 22, 23, 24, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 8, 9, 10, NULL, 'complete', '2023-03-25 12:58:33'),
(73, 304, 1, 'reject', 2, 'reject', 3, 'reject', 'reject', 'reject', 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'reject', 5, 'reject', 6, 'reject', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'incomplete', '2023-03-25 13:56:28'),
(74, 450, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 'incomplete', '2023-03-31 06:57:02'),
(75, 455, 1, NULL, 0, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-04-21 13:41:26'),
(76, 454, 0, NULL, 2, NULL, 3, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 'incomplete', '2023-03-31 15:42:55'),
(77, 453, 1, 'approve', 2, 'reject', 3, 'reject', 'reject', 'reject', 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 4, 'reject', 5, 'reject', 6, 'reject', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'complete', '2023-04-23 00:38:51'),
(78, 456, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 6, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 'incomplete', '2023-03-31 15:36:34'),
(80, 457, 1, 'approve', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'reject', 5, 'reject', 6, 'reject', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'complete', '2023-04-21 13:50:12'),
(81, 472, 1, 'reject', 2, 'reject', 3, 'approve', 'reject', 'reject', 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'reject', 5, 'reject', 6, 'reject', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'complete', '2023-04-21 06:06:15'),
(82, 451, 1, NULL, 0, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-04-21 13:36:36'),
(83, 452, 1, NULL, 0, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-04-21 13:40:17'),
(84, 343, 1, NULL, 0, NULL, 3, NULL, NULL, NULL, 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'incomplete', '2023-04-21 13:42:15'),
(85, 473, 1, NULL, 2, NULL, 3, NULL, NULL, NULL, 11, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 5, NULL, 6, NULL, 7, NULL, 25, 0, 0, 0, NULL, 'rechecking', '2023-04-21 15:44:16'),
(86, 474, 1, 'reject', 2, 'approve', 3, 'approve', 'approve', 'approve', 11, 12, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'approve', 5, 'approve', 6, 'reject', 7, 'reject', 25, 0, 0, 0, 'incomplete', 'complete', '2023-04-21 23:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `student_admission_files`
--

CREATE TABLE `student_admission_files` (
  `id` int(11) NOT NULL,
  `studID` int(11) NOT NULL,
  `sar_pupcct_results_files` varchar(255) DEFAULT NULL,
  `f137_files` varchar(255) DEFAULT NULL,
  `g10_files` varchar(255) DEFAULT NULL,
  `g11_files` varchar(255) DEFAULT NULL,
  `g12_files` varchar(255) DEFAULT NULL,
  `psa_nso_files` varchar(255) DEFAULT NULL,
  `good_moral_files` varchar(255) DEFAULT NULL,
  `medical_cert_files` varchar(255) DEFAULT NULL,
  `picture_two_by_two_files` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_admission_files`
--

INSERT INTO `student_admission_files` (`id`, `studID`, `sar_pupcct_results_files`, `f137_files`, `g10_files`, `g11_files`, `g12_files`, `psa_nso_files`, `good_moral_files`, `medical_cert_files`, `picture_two_by_two_files`, `created_at`) VALUES
(12, 201, '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n_1.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n_1.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '328338241_943186097062972_3589379765183706646_n_1.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', '2023-02-09 15:46:03'),
(13, 230, 'FB_IMG_1676709433707.jpg', 'FB_IMG_1676709519342.jpg', 'FB_IMG_1676709689762.jpg', 'FB_IMG_1676709680684.jpg', 'FB_IMG_1676709693887.jpg', 'b2ac88_color_shades.jpg', 'd4b895_color_shades.jpg', 'depositphotos_2832103-stock-photo-calesa-horse-drawn-carriage-vigan.jpg', 'b2ac88_color_shades.jpg', '2023-02-20 11:21:38'),
(14, 234, 'FB_IMG_1676709433707.jpg', 'FB_IMG_1676709519342.jpg', 'FB_IMG_1676709689762.jpg', 'FB_IMG_1676709680684.jpg', 'FB_IMG_1676709693887.jpg', 'b2ac88_color_shades.jpg', 'd4b895_color_shades.jpg', 'depositphotos_2832103-stock-photo-calesa-horse-drawn-carriage-vigan.jpg', 'depositphotos_2832103-stock-photo-calesa-horse-drawn-carriage-vigan.jpg', '2023-02-20 12:48:23'),
(15, 237, '20221229_12221207.png', 'acts-bg14.png', 'bg-login.jpg', 'bldg-a.jpg', 'login-img.jpg', 'logo.png', 'odrs-logo.png', 'pupt-logo.png', 'sample.png', '2023-02-26 13:36:02'),
(16, 307, '20221229_12221214.png', '322247445_874755793846050_6948133612164922827_n.jpg', '328338241_943186097062972_3589379765183706646_n.jpg', 'jepnuW7chrErrve5Csrq.jpg', 'pupt-logo.png', 'b2ac88_color_shades.jpg', '20221229_12221214.png', 'bg-login.jpg', 'sample_1.png', '2023-03-03 02:14:18'),
(20, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 13:56:28'),
(21, 312, '334178739_1152549512114330_2374420318508355951_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '257357641_597395108140727_2960273602043890818_n.jpg', NULL, '275704302_449860000265704_6432336552940529254_n.png', NULL, '263537747_857204934976303_349428115245230203_n.png', '281371580_1089221285002031_4427611296865036185_n.jpg', '281371580_1089221285002031_4427611296865036185_n.jpg', '2023-03-25 12:57:17'),
(22, 313, '335945616_886159202622989_2063954610243760754_n.jpg', '334142307_991489345148866_757451361632009997_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '257357641_597395108140727_2960273602043890818_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '334178739_1152549512114330_2374420318508355951_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '251511241_302304661531768_7611484280368381695_n.jpg', '2023-03-19 19:16:50'),
(23, 314, '334178739_1152549512114330_2374420318508355951_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '263537747_857204934976303_349428115245230203_n.png', '334178739_1152549512114330_2374420318508355951_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '334178739_1152549512114330_2374420318508355951_n.jpg', '334142307_991489345148866_757451361632009997_n.jpg', '251511241_302304661531768_7611484280368381695_n.jpg', '2023-03-06 00:50:59'),
(24, 317, '257357641_597395108140727_2960273602043890818_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '334178739_1152549512114330_2374420318508355951_n.jpg', '334207217_596096942058836_2639337994668153886_n.png', '334142307_991489345148866_757451361632009997_n.jpg', '257357641_597395108140727_2960273602043890818_n.jpg', '281371580_1089221285002031_4427611296865036185_n.jpg', '281371580_1089221285002031_4427611296865036185_n.jpg', NULL, '2023-03-06 02:46:55'),
(25, 321, '251511241_302304661531768_7611484280368381695_n.jpg', '257357641_597395108140727_2960273602043890818_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '278209063_5011176082307746_6542835449935197284_n.jpg', '334178739_1152549512114330_2374420318508355951_n.jpg', '263537747_857204934976303_349428115245230203_n.png', '334207217_596096942058836_2639337994668153886_n.png', '334178739_1152549512114330_2374420318508355951_n.jpg', '334178739_1152549512114330_2374420318508355951_n.jpg', '2023-03-16 13:59:46'),
(26, 322, '336621261_1362902851229931_7075329756941658587_n.png', '335977176_1755406341521980_8950248636770935431_n.png', '336164500_3502594280024255_295909793972899842_n.png', '336621261_1362902851229931_7075329756941658587_n.png', '336174566_614811443312884_1242048309600456204_n.png', '336621261_1362902851229931_7075329756941658587_n.png', '336174566_614811443312884_1242048309600456204_n.png', '335977176_1755406341521980_8950248636770935431_n.png', '336004642_1409582793134827_2718208235985045285_n.png', '2023-03-20 12:20:19'),
(27, 352, 'db6e2c3249f017943550f06344ad81dd-removebg-preview.png', 'sample.gif', 'pngtree-line-art-business-women-white-collar-worker-png-image_3563958-removebg-preview.png', 'person3-removebg-preview.png', 'sample.png', 'psa.png', 'good moral.png', 'medical.png', '2x2.jpg', '2023-04-21 14:31:47'),
(28, 313, '335945616_886159202622989_2063954610243760754_n.jpg', '334142307_991489345148866_757451361632009997_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '257357641_597395108140727_2960273602043890818_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '334178739_1152549512114330_2374420318508355951_n.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '275704302_449860000265704_6432336552940529254_n.png', '251511241_302304661531768_7611484280368381695_n.jpg', '2023-03-27 15:21:53'),
(29, 261, NULL, '336004642_1409582793134827_2718208235985045285_n.png', '335945616_886159202622989_2063954610243760754_n.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 08:12:25'),
(30, 453, 'french.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 14:49:47'),
(31, 457, 'french.jpg', '336174566_614811443312884_1242048309600456204_n.png', 'us.jpg', '278209063_5011176082307746_6542835449935197284_n.jpg', '336164500_3502594280024255_295909793972899842_n.png', NULL, NULL, NULL, NULL, '2023-04-21 13:50:12'),
(32, 456, 'f137.png', 'goodmoral.png', 'grade10.jpg', 'grade11.jfif', 'grade12.png', 'nso.jpg', 'f137.png', NULL, NULL, '2023-04-07 08:17:08'),
(33, 472, 'sar.png', NULL, 'grade10.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-21 06:06:41'),
(34, 473, 'sar.png', 'f137.jpg', 'grade10.jpg', 'grade11.jpg', 'grade12.jpg', NULL, NULL, NULL, NULL, '2023-04-21 15:44:33'),
(35, 474, NULL, '335945616_886159202622989_2063954610243760754_n.jpg', '335977176_1755406341521980_8950248636770935431_n.png', '336011918_735000334954064_7111430657160668933_n.png', '336164500_3502594280024255_295909793972899842_n.png', '327770827_214195524512552_4266977896974313517_n.png', '334178739_1152549512114330_2374420318508355951_n.jpg', NULL, NULL, '2023-04-21 23:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `submission_status`
--

CREATE TABLE `submission_status` (
  `id` int(10) NOT NULL,
  `legend` varchar(256) NOT NULL,
  `submission_status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(218, '2019-00425-TG-0', '$2y$10$peVJYaAJJ4mQAFozVPPE9OHUndP64Jkv2SQnHXzuENJ0cx5MYhvaG', 'nmpcdsmts@gmail.com', 'a', 4, NULL, NULL, '2022-12-15 15:08:12', '2023-03-05 12:53:44', '2023-03-05 12:53:44'),
(219, 'admincute', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'edmondelacruz10@gmail.com', 'a', 5, 6, '0f694b519220903a8bc0ee459678de20', '2023-02-11 21:06:59', '2023-02-25 09:55:48', NULL),
(220, 'adminone', '$2y$10$RxAsDtPgHTasv3ipZkX1VOFDXE46WIQh5sJgOttt0YCWIRBzquAC6', 'adminone@gmail.com', 'a', 5, 5, '21f9188e66d4c94c09b7e096f8deda50', '2023-02-11 21:11:02', '2023-02-13 15:34:34', '2023-02-13 15:34:34'),
(221, 'dfsdfsdf', '$2y$10$7ya5ximfVPAWqaT/.tsBL.9c2IFu5ryxxKQaTLbazZYVWslbKs4se', 'sdfs@gmail.com', 'a', 4, NULL, NULL, '2023-02-11 22:32:13', '2023-02-11 22:32:13', NULL),
(223, '2019-00425-TG-0', '$2y$10$Zb/nL6WhP5yYMbKC/TTZs.XXASsj.u47KmuL61lCbYEwOfbW4qdoK', 'angelbayron2900@gmail.com', 'a', 4, NULL, NULL, '2023-02-13 10:45:13', '2023-02-13 10:45:13', NULL),
(224, '2050-00439-TG-0', '$2y$10$ZhB92rcZXm2lG1dJkUoqb.YMg2b.lDaGScEsL4jdZXmEy/sPfpWCe', 'qonevora.afolari@gotgel.org', 'a', 4, NULL, NULL, '2023-02-13 13:18:56', '2023-02-13 13:18:56', NULL),
(226, 'registrar', '$2y$10$CXw61dhcbGVCZGAYslAXsemPBYFJ4g1xNfBgF8nmCrHA3.QkJHIMu', 'kyledula29@gmail.com', 'a', 2, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-13 15:35:29', '2023-02-13 15:38:20', '2023-02-13 15:38:20'),
(227, 'laboratory', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'kyledula29@gmail.com', 'a', 5, 7, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-13 15:39:12', '2023-02-25 10:00:48', NULL),
(230, '2040-00245-TG-0', '$2y$10$ZwR7Ryu5Cdg4b3eBAkevQO3seT25opwB/O1EUVwsqA/.SBjsUUoy.', 'kimbapchin2321@gmail.com', 'a', 4, NULL, NULL, '2023-02-13 20:28:04', '2023-03-03 23:01:25', '2023-03-03 23:01:25'),
(234, '2087-00425-TG-0', '$2y$10$R.XSt1qSMog2WNGnzlMyY.MWpCkibEZnBs9UXt.rXfdw6ENim.Wl6', 'gelpianocovers@gmail.com', 'a', 4, NULL, NULL, '2023-02-20 20:45:03', '2023-02-20 20:45:03', NULL),
(239, 'rotcoffice', '$2y$10$u.d4oTRMLNzmAPkvc6HkVOC6iSIxEmj0YDdXlM.SmMAcMGo1YXdoG', 'rotcoffice@gmail.com', 'a', 5, 8, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:34:11', '2023-02-25 16:34:11', NULL),
(240, 'accountingoffice', '$2y$10$HkqoICDdQLDUeUmWT29l.O6Sbm2Kg4kLOPye50MdrBPszbS5N2cc2', 'accountingoffice@gmail.com', 'a', 5, 9, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:34:51', '2023-02-25 16:34:51', NULL),
(241, 'InternalOffice', '$2y$10$MCyFzGvvmcyb9vhJZZPQ9OqWblouRtzO4l4zt1ULwWX3xFcloyz8e', 'InternalOffice@gmail.com', 'a', 5, 10, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:35:36', '2023-02-25 16:35:36', NULL),
(242, 'LegalOffice', '$2y$10$JPJnFGj.nGfERcRPVgKQcOudRSXOyXw72KRaZ4BmML0nYf43HTpDO', 'LegalOffice@gmail.com', 'a', 5, 11, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-25 16:36:32', '2023-02-25 16:36:32', NULL),
(244, 'liway', '$2y$10$Xsrvzx.YA0dUq32O6zhp1O3/b6ho9Uwatogt.zPPH6Qx.ZlnA9Say', 'liway@gmail.com', 'a', 8, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 09:08:38', '2023-02-27 09:08:38', NULL),
(245, 'mhel', '$2y$10$iyWPEx5exSvPmTus0jYva.14c/.3Q5cfoczo4bZvwfeD.brn0ezEC', 'mhel@gmail.com', 'a', 2, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 09:09:27', '2023-02-27 09:09:27', NULL),
(248, '2018-01368-TG-0', '$2y$10$Cls.Enz.612.2C0ZJ/37a.km6ooZOeo6fr05vU1KSHqQvFwQvxrNe', 'rhingmakz29@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 09:31:01', '2023-03-06 09:26:19', NULL),
(261, '2019-00234-TG-0', '$2y$10$3Dapy8FSxv74o9EGQH.Bfu3GeJ9PwbLLcYw/uJ8vkTBsu8ADmxYs2', 'marcusarevalo.928@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 11:48:22', '2023-03-06 10:48:48', NULL),
(262, '2021-00524-TG-0', '$2y$10$0d9wTW.YUoczGsHWciJ1AOAWfvYS8m0Z9EZkuEjQoU8jSIAtV9zXq', 'rhingmakz30@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 11:51:49', '2023-03-03 09:39:53', NULL),
(292, '2018-02523-TG-0', '$2y$10$nPcR/MfTyXW6JNVvmGPiJe6AohMNyjox/L1Ga9Z21n8K2//sOivKa', 'massonmabangis@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 14:47:23', '2023-02-27 14:47:23', NULL),
(293, '2011-02523-TG-0', '$2y$10$ocP5dJRNNd0qx3kCR5jsJ.0hl9VVan02eb32al6m3otl9JYQEd.Fm', 'edmon.delacruz@novare.com.hk', 'a', 4, NULL, NULL, '2023-02-27 14:47:29', '2023-02-27 14:47:29', NULL),
(294, '2014-02523-TG-0', '$2y$10$4WVSfi65jk6RUDWcdxwLFOPACNTYskSsvPQQC/8NVC6dk8SdueDMO', 'maiachristiana@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 14:47:35', '2023-02-27 14:47:35', NULL),
(295, '2015-02523-TG-0', '$2y$10$bRqsWSrNUXhaVau2ehvbtuEA50fi19Vq2j7S7h698v1h4x9DGMNxS', 'bmasonmabangis@gmail.com', 'a', 4, NULL, NULL, '2023-02-27 14:47:40', '2023-02-27 14:47:40', NULL),
(299, 'libraryoffice', 'adminpassword', 'kyledula35@gmail.com', 'a', 5, 6, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 16:28:02', '2023-04-06 19:07:35', NULL),
(300, 'laboratoryoffice', '$2y$10$UA4nu9mGS61KPJvgWrgK8u88kLcVSbS1x8ffMZQx9rUZ2qaV4VHWO', 'kyledula28@gmail.com', 'a', 5, 7, 'e3274be5c857fb42ab72d786e281b4b8', '2023-02-27 16:33:22', '2023-02-27 16:33:22', NULL),
(304, '2018-00368-TG-0', '$2y$10$xXJ9iNi4vCqmzf4cUQJYn.pnX660NiAPOU/gXRZm4d3mVpw1bwRP6', 'edmondelacruz1110@gmail.com', 'a', 4, NULL, NULL, '2023-03-01 19:23:48', '2023-03-03 09:40:20', NULL),
(309, '2020-00446-TG-0', '$2y$10$Ys4rtAgPjKpRUQI3nwSKRe1xIzGAZlWyCrU4DuapN/aJETYNKuiyS', 'forggxacc124@gmail.com', 'a', 4, NULL, NULL, '2023-03-03 22:40:30', '2023-03-03 22:40:30', NULL),
(310, '2022-00552-TG-0', '$2y$10$RmrA1ZBp4JgWb6lgLrAnO.fFpRF4yUpwuRwGa1N/ouR1RfTEI6EpW', 'imthegreatduh@gmail.com', 'a', 4, NULL, NULL, '2023-03-03 22:41:40', '2023-03-03 22:41:40', NULL),
(312, '2019-20439-TG-0', '$2y$10$LT7fDnhbki1v.iBp0O9WH.T/bKqpimrrdeK.TGy0AszNa139CuFg.', 'elyk.alud678@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 02:02:15', '2023-03-27 21:06:19', NULL),
(313, '2020-11111-TG-0', '$2y$10$Mm2xX3wStZaMBw7gzmnBneoFnumJQNuM2xONv8jWTyqHTw3bfAhAS', 'elyk.alud2235@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 07:16:02', '2023-03-06 07:16:02', NULL),
(314, '2021-00454-TG-0', '$2y$10$GE0Nw8ntlmt7izlftuNQS.IgcmIrKoQ4OKUeztqfgVK2aVQ4CGTea', 'wwjjuwu17@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 08:01:44', '2023-03-31 16:33:41', '2023-03-31 16:33:41'),
(315, '2019-00987-TG-0', '$2y$10$gMuTeX9BTTmSHHpRsHG9aumE52P.xBov4LLx1l1ZMzfPOLwglhSZm', 'eufrocinobayron@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 09:07:44', '2023-03-31 16:33:28', '2023-03-31 16:33:28'),
(316, '2021-00222-TG-0', '$2y$10$IYkJm2dzcAwFFOTA1GNL0uwUQ9BLU2no6g0rCZgr.CNP.onOJm7zC', 'forggxacc@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 09:18:17', '2023-03-31 16:33:43', '2023-03-31 16:33:43'),
(317, '2022-00551-TG-0', '$2y$10$NS7gUwEs8WiA7TlW9kjTreMLM7XN1PpgQPBq.jI6zwM4ibdi1Liku', 'elyk.alud5@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 09:34:20', '2023-03-31 16:33:48', '2023-03-31 16:33:48'),
(318, '2022-00653-TG-0', '$2y$10$HBhiy5.5CM9Yws0CEIYA0.XOqlAGKnDBVmzEqng2bnlyVANyTIuve', 'elyk.alud15@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 09:42:31', '2023-03-06 09:45:51', NULL),
(319, '2023-00001-TG-0', '$2y$10$Ch.kQXeRMBFVb3DgPsnfVe5Y77WEhDL2UcWgnKr2/dZFiQaoBGjWK', 'dkyleerrold@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 10:06:09', '2023-03-06 10:07:44', NULL),
(320, '2022-00224-TG-0', '$2y$10$yCr7Fxbu901yH4AhKrk31u2YBDKh42buxtJJajVRiBhZUEjjDQL6u', 'dkyleerrold1@gmail.com', 'a', 4, NULL, NULL, '2023-03-06 10:45:16', '2023-03-06 10:45:16', NULL),
(321, '2020-00554-TG-0', '$2y$10$f2Sa/YIM2ziwtZj6Ys16kO4VGuVHNl/mMH4YcstmZ.6.rAfAU5XyC', 'mrimbanese32@gmail.com', 'a', 4, NULL, NULL, '2023-03-16 21:41:07', '2023-03-16 21:41:07', NULL),
(322, '2022-00216-TG-0', '$2y$10$8aVMnjgkHBmbw4VUZ0FxCu1z.fVWQ1jxHwPKXwbWLTOngHI0FRzdm', 'mrimbanese25@gmail.com', 'a', 4, NULL, NULL, '2023-03-20 02:36:40', '2023-03-20 02:36:40', NULL),
(343, '2022-00626-TG-0', '$2y$10$4utbVCus/kyEzTFt4aFEg.aCiv1lMGa87rrCyP7VD4EdY/R6OfEty', 'mrimbanese16@gmail.com', 'a', 4, NULL, NULL, '2023-03-20 23:04:11', '2023-03-20 23:04:11', NULL),
(344, 'hapoffice', 'adminpassword', 'kyledula28@gmail.com', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-21 19:52:39', '2023-04-07 14:49:54', NULL),
(345, 'ssooffice', '$2y$10$qygrfQyO2yci0V2eaLs/OeQq2a4U/HXTpBOQVy5d13yL9BIp8aJzO', 'kyledula28@gmail.com', 'a', 5, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-21 19:53:15', '2023-03-21 19:53:15', NULL),
(346, '2022-00998-TG-0', '$2y$10$VvotAKCHC0sFBWUWNRhV6.wplkArfXWx62DNOPvoCLPd.0e0IRGHC', 'mrimbanese17@gmail.com', 'a', 4, NULL, NULL, '2023-03-22 01:14:22', '2023-03-22 01:14:22', NULL),
(347, '2023-00216-TG-0', '$2y$10$RR3kTsaUo2KDmoXfqjhn/.RtfuCOwu7140mM7QwoRNBywDwjNhAga', 'mrimbanese18@gmail.com', 'a', 4, NULL, NULL, '2023-03-22 01:17:37', '2023-03-22 01:17:37', NULL),
(348, '2022-00229-TG-0', '$2y$10$DnU5SjZYcF/wimBUQmz6ZuqP0t.QR0dKkov6ixzfwSg33zDkJplZu', 'mrimbanese19@gmail.com', 'a', 4, NULL, NULL, '2023-03-22 01:21:33', '2023-03-22 01:21:33', NULL),
(349, 'hapaccount', 'adminpassword', 'kyledula28@gmail.com', 'a', 5, 12, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-24 01:34:49', '2023-04-07 14:56:47', '2023-04-07 14:56:47'),
(350, 'hapaccount', 'adminpassword', 'kyledula28@gmail.com', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-24 01:34:49', '2023-04-07 14:56:54', '2023-04-07 14:56:54'),
(351, 'ssoaccount', '$2y$10$Nzf96cYGwzb4MObKXAirhu/5Ao4KyqWuQWa/LcTZ3Mir697h0Basi', 'kyledula28@gmail.com', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-24 01:35:07', '2023-03-24 01:35:07', NULL),
(352, '2016-00100-TG-0', '$2y$10$et.Wh67sIdN5xBbVuLQzpe3cZGqKJqVRY7IR.HJQkk20YLSbsWw9W', 'bevof55371@galcake.com', 'a', 4, NULL, NULL, '2023-03-24 11:04:32', '2023-03-24 11:04:32', NULL),
(353, '2019-00430-TG-0', '$2y$10$cJ2iSqDd9z5AVmLKe3aVWemgH7HSRBCctQ5GjakRAPIZ13r5x8Lv.', 'allenkobe.agustin26@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 12:02:10', '2023-03-24 12:02:10', NULL),
(354, '2019-00426-TG-0', '$2y$10$Vsuu7x0DgkyjewDn9A9A1.02/c84R7akhveyrD/A3zoOOrQlwP2Wa', 'princessrizalyn16@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 12:03:38', '2023-03-24 12:03:38', NULL),
(355, '2019-00105-TG-0', '$2y$10$VNuN0bSkvFB./Um86xQOE.G0MfYChd6BO9sqfLenCJ0WVEAis/GDu', 'fatimacortez030@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 12:06:28', '2023-03-24 12:06:28', NULL),
(357, '2019-00440-TG-0', '$2y$10$9hIHlKZtz2OrkthZ5IYXOunsRImWIZJ1dR9349LtzGfHWmc5PwIAa', 'maiachristiana.gaerlan@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 13:22:48', '2023-03-24 13:22:48', NULL),
(359, '2018-00515-TG-0', '$2y$10$nbj.amqtoCzkL5Hp9dpqDepwykCC.dgK5Ady07WiYACP34sAFXcqW', 'markreym0@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 13:26:01', '2023-03-24 13:26:01', NULL),
(360, 'ssoaccount', '$2y$10$7sGmkyzSiIXd1anBCllYr..0AHTwxPHUx2DNWdlvmeJY4L1P2RhHC', 'ssoaccount@iskolarngbayan.pup.edu.ph', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-24 13:36:05', '2023-03-24 13:36:05', NULL),
(361, '2020-00999-TG-0', '$2y$10$KgTkb4An3cYX3LCKMqrrHetSSRrLRPmi48S2nea6bHgD.kpl4z5P2', 'elyk.alud55@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 15:00:18', '2023-03-24 15:00:18', NULL),
(398, '2019-00121-TG-0', '$2y$10$1AgKWre/5v7RnAEjsiW3tOEWStsve1X7CeRDsaKDuFpavacl.cBVm', 'mariefrancesca03@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 18:10:42', '2023-03-24 18:10:42', NULL),
(399, '2019-00237-TG-0', '$2y$10$84/Iy6SKhQD7JqBlkku02.awrKdZvNRjx12tFnYKX5W/EPCiSV3I2', 'atunphil@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 18:10:48', '2023-03-24 18:10:48', NULL),
(400, '2021-00624-TG-0', '$2y$10$iKHQjw6ud/x0HRvQ3NfSUO6KOSSIECkkW/lFc3uuqymioD6fd5E8G', 'elyk.alud186@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 18:15:11', '2023-03-24 18:15:11', NULL),
(433, '2018-00519-TG-0', '$2y$10$JqJgEYuBNV.rqIt2oY6bo.M9sOb.ubN74u5DElWm18T.IvLB1JLNm', 'randygervacio24@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 19:19:58', '2023-03-24 19:19:58', NULL),
(434, '2019-00126-TG-0', '$2y$10$aqmhgrfSVmi/TWcO531hY.cobBWO1WuXgeo6msLN91jAOQP/RRSr.', 'gierza29@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 19:20:05', '2023-03-24 19:20:05', NULL),
(435, '2019-00244-TG-0', '$2y$10$qi9Kg/kyN8xBXe1U4T4mBuodlF4m0Kidejude61RanFI940t2LnCm', 'kin.ryokeii@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 19:20:07', '2023-03-24 19:20:07', NULL),
(436, '2019-00451-TG-0', '$2y$10$u5iJx7bShrVWWgM.g0JnT.ypnlj1UWbW9vAj6mlinlBnC0nx5k7VG', 'lesterlagura213@gmail.com', 'a', 4, NULL, NULL, '2023-03-24 19:20:13', '2023-03-24 19:20:13', NULL),
(441, 'registrar', '$2y$10$eNPhNtXjtk0H69b4OxzbX.2Nwevk8eky8cT78MCMWfdBUvimvF.vW', 'puptregistrar@gmail.com', 'a', 2, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-25 21:01:13', '2023-03-25 21:01:13', NULL),
(442, 'admission', '$2y$10$Oe9bazxiOo0rE4ONIscMpeVVMg24ey6NMHQx/.CDbVb2ohII9Bu02', 'puptadmission@gmail.com', 'a', 8, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-03-25 21:01:48', '2023-03-25 21:01:48', NULL),
(444, '2022-00425-TG-0', '$2y$10$WRfIEIuci4049ivYmuMsNuZ1GoPnG4O0tXwNdgezSg4.Ghzy2v40S', 'alladogwyneth29@gmail.com', 'a', 4, NULL, NULL, '2023-03-27 12:13:42', '2023-03-27 12:13:42', NULL),
(445, '2019-00215-TG-0', '$2y$10$bblw/pBcywYUVkJxKdaK7uL6ErgyJLB3CqnHeu8NnuhN5bKEYEm8W', 'elyk.alud1457@gmail.com', 'a', 4, NULL, NULL, '2023-03-27 23:08:26', '2023-03-27 23:08:26', NULL),
(450, '2016-00216-TG-0', '$2y$10$yBtCGw65a8GX9wS6Sn.Fz.41XyFGWb5OCxXxEOnj.tWnuqH0/cFPq', 'elyk.alud332@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 00:17:35', '2023-03-31 00:17:35', NULL),
(451, '2015-03000-TG-0', '$2y$10$qpUvj791kQ4YQ3nVaiYR1OSiN9/LKPwzsBNdH/rQRqHLiIqCkYKg.', 'psimamaiaaaa@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 16:04:21', '2023-03-31 16:33:25', '2023-03-31 16:33:25'),
(452, '2018-00344-TG-0', '$2y$10$/R7q5KJioLuD4tWyPTVv1egM6uARLfjxZ1PLSNflBrUZoe7UR/wty', 'iskobot5001@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 16:11:11', '2023-03-31 16:11:11', NULL),
(453, '2012-00440-TG-0', '$2y$10$CJnu/LodB1iXEKr31iZA2eJMPpZ3RHVhLg45ltWGY1o4WxR/HoerC', 'iskobot2021@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 16:34:09', '2023-03-31 16:34:09', NULL),
(454, '2017-00219-TG-0', '$2y$10$L/yz1otF24qNc6ccYfAV6ORdON5ff.R5xgxdbp7VsyluUsV0RDCtK', 'elyk.alud39@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 16:38:05', '2023-03-31 16:38:05', NULL),
(455, '2015-00219-TG-0', '$2y$10$mCNzHKuaKJCMe0UGztQh7eD1TOt8hHnu7xS1MClOlLa8UuTBYjnRu', 'elyk.alud654@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 16:59:30', '2023-03-31 16:59:30', NULL),
(456, '2017-00444-TG-0', '$2y$10$jWcBqhu6YeFORBahf/fDBuSe19R7RD9fuimKrFlnR8V.qFJ/CCPz2', 'angelicabayron2900@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 23:22:13', '2023-03-31 23:22:13', NULL),
(457, '2016-00493-TG-0', '$2y$10$7QfuODdqCZpxbpFU2Mx7meTJQNvw8D0SDwRCLUZcH/Yem0mJQSxSS', 'elyk.alud223@gmail.com', 'a', 4, NULL, NULL, '2023-03-31 23:58:59', '2023-03-31 23:59:31', NULL),
(458, '2021-00221-TG-0', '$2y$10$2bxa7KRcemTa1NprJpPfIezY1nlt.jZufrM2i9bto.YL8bgRXm662', 'cruzmandy2900@gmail.com', 'a', 4, NULL, NULL, '2023-04-07 11:36:04', '2023-04-07 14:59:24', NULL),
(459, 'hapaccount', 'adminpassword', 'cecilia@gmail.com', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-07 14:57:28', '2023-04-07 15:03:15', NULL),
(460, 'cecil', 'adminpassword', 'iskobot2021@gmail.com', 'a', 10, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-07 15:04:20', '2023-04-10 22:42:16', NULL),
(461, 'HAProleLogin', '$2y$10$cUrKyAPHZshuOMuMNUmTeOTOPqjsJtfDv94ax5yIzuBrdHd.WDLii', 'kyledula28@gmail.com', 'a', 10, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-07 15:35:30', '2023-04-07 15:35:30', NULL),
(462, 'beth', '$2y$10$fthjOiibQvH7hqEL3jy.KO2Irp2pyrFhF0riI99koDOVcyFwX/9Ta', 'iskobot2021@gmail.com', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-07 15:58:57', '2023-04-07 15:58:57', NULL),
(463, '2019-00423-TG-0', '$2y$10$ACjYUKopsbyFnfuO4xd0K.ZH7AbAJmEOoxAUqcvxxxxbs3JV2ueLG', 'puptjma.harveyluna@gmail.com', 'a', 4, NULL, NULL, '2023-04-07 18:03:00', '2023-04-07 18:03:00', NULL),
(464, 'alagon', 'adminpassword', 'cecilia_alagon@gmail.com', 'a', 9, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-10 22:28:00', '2023-04-10 22:29:41', '2023-04-10 22:29:41'),
(465, 'hap_office', '$2y$10$20LuLs/988iBCYSUzk7EWeo4tqPrKIqXsvKIcrzOR3.MzaU3vOdu.', 'cecilia_alagon@gmail.com', 'a', 10, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-10 22:31:16', '2023-04-10 22:31:51', '2023-04-10 22:31:51'),
(466, 'library', 'adminpassword', 'angelbayron2900@gmail.com', 'a', 5, 6, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-12 21:45:54', '2023-04-12 21:46:54', NULL),
(467, 'cecilia', '$2y$10$xLK4q7pJ/cGbI7QX9rI9muMWoIXXYq0qE4oSuma4gn/1raXUGM/vW', 'iskobot@gmail.com', 'a', 10, 1, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-12 21:46:30', '2023-04-12 21:46:30', NULL),
(468, 'elena', '$2y$10$76hWgmaT/9qWBZVLMnS8puuNwmDCAuY6QKMob9CyAI.ClgNLr2jXq', 'iskobot21@gmail.com', 'a', 5, 6, 'e3274be5c857fb42ab72d786e281b4b8', '2023-04-12 21:48:52', '2023-04-12 21:48:52', NULL),
(469, '2021-00264-TG-0', '$2y$10$A3.PHuUTy61LZ4Rb0RClru2.BXcmOTDiorvvGvMnbed3p89aLbd1W', 'elyk.alud332@gmail.com', 'a', 4, NULL, NULL, '2023-04-16 15:16:21', '2023-04-16 15:16:21', NULL),
(470, '2023-00425-TG-0', '$2y$10$YIFcEEOlSY5Q5c1xIT1NUu8Qk8rO6NEQKsXmSYkMc0N2/0AobdTaW', 'johnramospup@gmail.com', 'a', 4, NULL, NULL, '2023-04-19 21:23:04', '2023-04-21 13:01:33', '2023-04-21 13:01:33'),
(471, '2023-00111-TG-0', '$2y$10$e9FLPMwQGwD52RRe4pBCLu8u7S895D6BmRRyNBj8KH7JK/KEDAcr2', 'ramosjohnpup@gmail.com', 'a', 4, NULL, NULL, '2023-04-20 17:47:22', '2023-04-21 13:01:24', '2023-04-21 13:01:24'),
(472, '2023-00012-TG-0', '$2y$10$4ZHqyaGSWXrqbLLWu3NtluYSidcgcYsOnRAmdafaQZAktsMYp.i2S', 'psmmaiaaaa@gmail.com', 'a', 4, NULL, NULL, '2023-04-21 13:16:20', '2023-04-21 13:16:20', NULL),
(473, '2023-00789-TG-0', '$2y$10$/ILgwgCD8SDgTlIjfpG9wOsYxUswz6LlhN7F7zw0gKcl9pRcLyqc.', 'rilanen626@gam1fy.com', 'a', 4, NULL, NULL, '2023-04-21 23:37:41', '2023-04-21 23:37:41', NULL),
(474, '2020-00259-TG-0', '$2y$10$L9NozPl9ZS1a3hYlPlJ0AOPV8ym8x.KoHhj01GWbUTy8DlPRg9KLq', 'elyk.alud1@gmail.com', 'a', 4, NULL, NULL, '2023-04-22 07:17:15', '2023-04-22 07:17:15', NULL),
(475, '2019-00112-TG-0', '$2y$10$rSZMmNVHuPitsonoF5/qN.AwSJ9YnwjsLrivVaQj2h2huIn0IIN.K', 'joyceacidera05@gmail.com', 'a', 4, NULL, NULL, '2023-04-23 08:47:06', '2023-04-23 08:47:06', NULL),
(476, '2019-00226-TG-0', '$2y$10$XaJ9maLeVTRWcyoSB7QRJeubujfXFjZjeWZWzT1en/JUQNlJye0Fe', 'kristinejilliane17@gmail.com', 'a', 4, NULL, NULL, '2023-04-23 08:54:20', '2023-04-23 08:54:20', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `document_notes`
--
ALTER TABLE `document_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `document_requirements`
--
ALTER TABLE `document_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `form_requests`
--
ALTER TABLE `form_requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `permission_types`
--
ALTER TABLE `permission_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ref_for_remarks`
--
ALTER TABLE `ref_for_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ref_for_retrieved`
--
ALTER TABLE `ref_for_retrieved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `request_approvals`
--
ALTER TABLE `request_approvals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `request_details`
--
ALTER TABLE `request_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2121;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `student_admission`
--
ALTER TABLE `student_admission`
  MODIFY `stud_admissionID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `student_admission_files`
--
ALTER TABLE `student_admission_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

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
