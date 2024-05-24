-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 03:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sta_cruz_database_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `classroom_id` int(10) UNSIGNED NOT NULL,
  `buildingName` varchar(20) NOT NULL,
  `roomNumber` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`classroom_id`, `buildingName`, `roomNumber`, `created_at`, `updated_at`) VALUES
(1, 'Main Building', 101, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(2, 'East Wing', 201, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(3, 'West Wing', 301, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(4, 'Annex Building', 102, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(5, 'Science Building', 202, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(6, 'Arts Building', 302, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(7, 'Library Building', 103, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(8, 'Sports Complex', 203, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(9, 'Admin Building', 303, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10, 'Auditorium', 104, '2024-05-23 02:00:00', '2024-05-23 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `fac_lname` varchar(10) NOT NULL,
  `fac_fname` varchar(10) NOT NULL,
  `fac_mname` varchar(10) NOT NULL,
  `fac_suffix` varchar(5) NOT NULL,
  `fac_address` varchar(50) NOT NULL,
  `fac_birthdate` date NOT NULL,
  `fac_gender` char(1) NOT NULL,
  `fac_contactNo` varchar(12) NOT NULL,
  `fac_position` varchar(5) NOT NULL,
  `fac_pds` blob NOT NULL,
  `fac_status` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `fac_lname`, `fac_fname`, `fac_mname`, `fac_suffix`, `fac_address`, `fac_birthdate`, `fac_gender`, `fac_contactNo`, `fac_position`, `fac_pds`, `fac_status`, `created_at`, `updated_at`) VALUES
(10001, 'Smith', 'John', 'A.', 'Jr.', '123 Main St, Anytown, USA', '1980-05-15', 'M', '123-456-7890', 'Profe', 0x7064735f736d6974682e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10002, 'Johnson', 'Mary', 'B.', 'Sr.', '456 Elm St, Sometown, USA', '1975-07-20', 'F', '234-567-8901', 'Assis', 0x7064735f6a6f686e736f6e2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10003, 'Williams', 'James', 'C.', '', '789 Oak St, Yourtown, USA', '1983-10-25', 'M', '345-678-9012', 'Assoc', 0x7064735f77696c6c69616d732e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10004, 'Jones', 'Linda', 'D.', '', '101 Pine St, Thistown, USA', '1978-12-30', 'F', '456-789-0123', 'Profe', 0x7064735f6a6f6e65732e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10005, 'Brown', 'David', 'E.', '', '202 Cedar St, Thattown, USA', '1985-08-05', 'M', '567-890-1234', 'Assis', 0x7064735f62726f776e2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10006, 'Davis', 'Sarah', 'F.', '', '303 Birch St, Somecity, USA', '1970-05-10', 'F', '678-901-2345', 'Assoc', 0x7064735f64617669732e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10007, 'Miller', 'Robert', 'G.', '', '404 Pine St, Othertown, USA', '1972-02-20', 'M', '789-012-3456', 'Profe', 0x7064735f6d696c6c65722e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10008, 'Wilson', 'Karen', 'H.', '', '505 Elm St, Newcity, USA', '1974-06-25', 'F', '890-123-4567', 'Assis', 0x7064735f77696c736f6e2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10009, 'Moore', 'Michael', 'I.', '', '606 Cedar St, Thistown, USA', '1976-09-30', 'M', '901-234-5678', 'Assoc', 0x7064735f6d6f6f72652e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10010, 'Taylor', 'Donna', 'J.', '', '707 Oak St, Yourtown, USA', '1981-11-05', 'F', '012-345-6789', 'Profe', 0x7064735f7461796c6f722e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10011, 'Anderson', 'Christophe', 'K.', '', '808 Birch St, Sometown, USA', '1984-12-10', 'M', '123-456-7890', 'Assis', 0x7064735f616e646572736f6e2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10012, 'Thomas', 'Jessica', 'L.', '', '909 Pine St, Yourcity, USA', '1979-10-15', 'F', '234-567-8901', 'Assoc', 0x7064735f74686f6d61732e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10013, 'Jackson', 'David', 'M.', '', '1010 Cedar St, Anycity, USA', '1982-03-20', 'M', '345-678-9012', 'Profe', 0x7064735f6a61636b736f6e2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10014, 'White', 'Laura', 'N.', '', '1111 Elm St, Thistown, USA', '1977-05-25', 'F', '456-789-0123', 'Assis', 0x7064735f77686974652e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10015, 'Harris', 'Daniel', 'O.', '', '1212 Oak St, Yourtown, USA', '1973-07-30', 'M', '567-890-1234', 'Assoc', 0x7064735f6861727269732e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10016, 'Martinez', 'Emily', 'P.', '', '1313 Pine St, Somecity, USA', '1986-09-05', 'F', '678-901-2345', 'Profe', 0x7064735f6d617274696e657a2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10017, 'Robinson', 'Ryan', 'Q.', '', '1414 Cedar St, Anycity, USA', '1971-10-10', 'M', '789-012-3456', 'Assis', 0x7064735f726f62696e736f6e2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10018, 'Clark', 'Jessica', 'R.', '', '1515 Elm St, Thattown, USA', '1988-12-15', 'F', '890-123-4567', 'Assoc', 0x7064735f636c61726b2e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10019, 'Lewis', 'Matthew', 'S.', '', '1616 Oak St, Yourcity, USA', '1987-04-20', 'M', '901-234-5678', 'Profe', 0x7064735f6c657769732e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10020, 'Lee', 'Emma', 'T.', '', '1717 Pine St, Yourtown, USA', '1989-08-25', 'F', '012-345-6789', 'Assis', 0x7064735f6c65652e706466, 'Active', '2024-05-23 02:00:00', '2024-05-23 02:00:00');

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
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_21_044928_add_two_factor_columns_to_users_table', 1),
(5, '2024_05_21_044947_create_personal_access_tokens_table', 1),
(6, '2024_05_21_131732_create_sections_table', 1),
(7, '2024_05_22_065104_create_student_table', 1),
(8, '2024_05_22_082403_create_faculty_table', 1),
(9, '2024_05_22_091035_create_classroom__table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SectionName` varchar(255) NOT NULL,
  `SectionGradeLvl` varchar(255) NOT NULL,
  `SectionAd` varchar(255) NOT NULL,
  `SectionRoomNo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `SectionName`, `SectionGradeLvl`, `SectionAd`, `SectionRoomNo`, `created_at`, `updated_at`) VALUES
(4, 'Delta', '12', 'Ms. Davis', '104', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(5, 'Epsilon', '8', 'Mr. Wilson', '105', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(6, 'Zeta', '10', 'Ms. Taylor', '106', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(7, 'Eta', '9', 'Mr. Anderson', '107', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(8, 'Theta', '11', 'Ms. Thomas', '108', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(10, 'Kappa', '8', 'Ms. White', '110', '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(11, 'GG', '2', 'Lee, Kim C.', 'NB 102', '2024-05-23 00:30:03', '2024-05-23 00:30:03'),
(12, 'ASD', '1', 'Reyes, Joan B.', 'NB 102', '2024-05-23 04:24:51', '2024-05-23 04:24:51'),
(13, 'ASD', '2', 'Reyes, Joan B.', 'NB 240', '2024-05-23 04:25:17', '2024-05-23 04:25:17'),
(14, 'MABINI', '2', 'Robinson, Ryan Q.', 'NB 102', '2024-05-23 05:01:32', '2024-05-23 05:01:32'),
(15, 'RIZAL', '1', 'Clark, Jessica R.', 'Library Building, 103', '2024-05-23 05:11:07', '2024-05-23 05:11:07'),
(16, 'PE', '2', 'Johnson, Mary B. Sr.', 'Sports Complex, 203', '2024-05-23 05:12:31', '2024-05-23 05:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('g0VhtRazL4u3kEJNDXwmsEZl7eYdI2rooC2cnSbM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicURzcmJ0VW02U29ZZlVRMTJpeXJCaUdPczhzQ1Q3ZGYzOGFYWGpyYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWN0aW9ubGlzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkMW1tdVdvNmZDdGgybTF3Rndhd010ZWc2QkY3SkdGM1dlbFJFTy4wS3huTXlpeHRlT2s4V1ciO3M6MTk6InR3b19mYWN0b3JfZW1wdHlfYXQiO2k6MTcxNjQ1NDU1Nzt9', 1716470032);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `lrn` bigint(20) UNSIGNED NOT NULL,
  `stu_lname` varchar(10) NOT NULL,
  `stu_fname` varchar(10) NOT NULL,
  `stu_mname` varchar(10) NOT NULL,
  `stu_suffix` varchar(5) NOT NULL,
  `stu_address` varchar(50) NOT NULL,
  `stu_birthdate` date NOT NULL,
  `stu_gender` char(1) NOT NULL,
  `stu_form137` blob NOT NULL,
  `stu_birthcerti` varbinary(1) NOT NULL,
  `grade_lvl` varchar(6) NOT NULL,
  `stu_status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`lrn`, `stu_lname`, `stu_fname`, `stu_mname`, `stu_suffix`, `stu_address`, `stu_birthdate`, `stu_gender`, `stu_form137`, `stu_birthcerti`, `grade_lvl`, `stu_status`, `created_at`, `updated_at`) VALUES
(12345681, 'Brown', 'James', 'D.', '', '101 Pine St, Thistown, USA', '2008-12-30', 'M', 0x666f726d3133372e706466, 0x62, '4', 0, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(12345682, 'Williams', 'Emma', 'E.', '', '202 Cedar St, Thattown, USA', '2009-08-05', 'F', 0x666f726d3133372e706466, 0x62, '5', 1, '2024-05-23 02:00:00', '2024-05-23 02:00:00'),
(12345683, 'Jones', 'Liam', 'F.', '', '303 Birch St, Somecity, USA', '2010-05-10', 'M', 0x666f726d3133372e706466, 0x62, '6', 0, '2024-05-23 02:00:00', '2024-05-23 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'MMONEN KHIEN M. AGDORO', 'mmonenkhien.agdoro@unc.edu.ph', NULL, '$2y$12$1mmuWo6fCth2m1wFwawMteg6BF7JGF3WelREO.0KxnMyixteOk8WW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-22 23:43:34', '2024-05-22 23:43:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`lrn`);

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
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `classroom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `lrn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345684;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
