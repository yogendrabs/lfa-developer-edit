-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2016 at 05:23 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE `biodatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `biodata` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biodatas`
--

INSERT INTO `biodatas` (`id`, `developer_id`, `biodata`, `created_at`, `updated_at`) VALUES
(1, 1, 'When I was a kid .........', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 9, 'biodata', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(5, 10, 'bio', '2016-01-27 03:02:25', '2016-01-27 03:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is available 0 is not',
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is exists 0 is not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `email`, `password`, `image`, `is_available`, `del_flag`, `created_at`, `updated_at`) VALUES
(1, 'Aashish Adhikari', 'aa@gmail.com', 'password', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Vishal Thapa', 'vishalthapa@gmail.com', '123456', '', 1, 1, '2016-01-27 02:58:52', '2016-01-27 02:58:52'),
(10, 'Yogendra b Shrestha', 'id_ybs@hotmail.com', '123456', '', 1, 1, '2016-01-27 03:01:26', '2016-01-27 03:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `developer_id`, `course`, `university`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'BScIT', 'Sikkim Manipal', '2012-2016', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, 'B.E. ( Computer )', 'T.U.', '2010-2014', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(4, 10, 'B.E. ( Computer )', 'T.U.', '2010-2014', '2016-01-27 03:02:25', '2016-01-27 03:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `developer_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Developer', 'PHP, JS, Laravel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, '', '', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(4, 10, 'proj', 'project', '2016-01-27 03:02:25', '2016-01-27 03:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_01_21_083852_create_developers_table', 1),
('2016_01_21_085220_create_skills_table', 1),
('2016_01_21_085826_create_experiences_table', 1),
('2016_01_21_090156_create_projects_table', 1),
('2016_01_21_090420_create_biodatas_table', 1),
('2016_01_24_033133_create_education_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `developer_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Project 1', 'First Project.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, '', '', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(4, 10, 'proj', 'project', '2016-01-27 03:02:25', '2016-01-27 03:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `framework` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tool` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `developer_id`, `language`, `framework`, `library`, `tool`, `storage`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 'C, C++, PHP, JS, Java', 'Angular.js, Node.js, Laravel', 'jQuery', 'SublimeText, PHPStorm', 'MySQL, SequelPRO, ORACLE', 'and many others.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 9, 'C, C++, Java, PHP, C#, JS, Python', 'Angular, Node, Laravel', 'jQuery', 'SublimeText, Eclipse, Visual Studio, PHPStorm', 'MySQL, ORACLE, MS-ACCESS, MongoDB', 'And many others.', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(3, 10, 'C, C++, Java, PHP, C#, JS, Python', 'Angular, Node, Laravel', 'jQuery', 'SublimeText, Eclipse, Visual Studio, PHPStorm', 'MySQL, ORACLE, MS-ACCESS, MongoDB', 'And many others.', '2016-01-27 03:02:25', '2016-01-27 03:02:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodatas_developer_id_index` (`developer_id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `developers_email_unique` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_developer_id_index` (`developer_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_developer_id_index` (`developer_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_developer_id_index` (`developer_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_developer_id_index` (`developer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodatas`
--
ALTER TABLE `biodatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD CONSTRAINT `biodatas_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);
