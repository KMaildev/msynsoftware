-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2023 at 07:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msynsoftware`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_lists`
--

CREATE TABLE `agent_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_lists`
--

INSERT INTO `agent_lists` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Aunty San', NULL, NULL, NULL, '2023-01-18 20:50:23', '2023-01-18 20:53:44'),
(2, 'Ko Kyaw Kyaw', NULL, NULL, NULL, '2023-01-18 20:50:48', '2023-01-18 20:50:48'),
(3, 'U Hein Thant', NULL, NULL, NULL, '2023-01-19 00:25:56', '2023-01-19 00:25:56'),
(4, 'U Myo Satt', NULL, NULL, NULL, '2023-01-19 00:26:11', '2023-01-19 00:26:11'),
(5, 'Ko Than Kyine', NULL, NULL, NULL, '2023-01-19 00:26:35', '2023-01-19 00:26:35'),
(6, 'Mr.LEE', NULL, NULL, NULL, '2023-01-19 00:26:46', '2023-01-19 00:26:46'),
(7, 'U HLA HTWE', NULL, NULL, NULL, '2023-01-19 20:01:37', '2023-01-19 20:01:37'),
(8, 'U LWIN OO', NULL, NULL, NULL, '2023-01-19 21:26:03', '2023-01-19 21:26:03'),
(9, 'U HLA HTWE', NULL, NULL, NULL, '2023-01-19 21:26:25', '2023-01-19 21:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_male` int(11) DEFAULT NULL,
  `contract_female` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Thailand', '2023-01-30 10:38:22', '2023-01-30 10:39:38'),
(2, 'Malaysia', '2023-02-06 11:41:27', '2023-02-06 11:41:27'),
(3, 'Japan', '2023-02-06 11:41:32', '2023-02-06 11:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

CREATE TABLE `demands` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countrie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overseas_agencie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `male` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `female` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cabinet_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demand_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labour_management`
--

CREATE TABLE `labour_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `overseas_agencies_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_passport` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_30_162400_add_fields_to_users_table', 2),
(6, '2023_01_30_170326_create_countries_table', 3),
(7, '2023_01_30_171039_create_agent_lists_table', 4),
(8, '2023_01_30_173319_create_overseas_agencies_table', 5),
(9, '2023_02_06_040420_create_passports_table', 6),
(10, '2023_02_06_122630_create_demands_table', 7),
(11, '2023_02_06_123519_create_offices_table', 8),
(12, '2023_02_06_134425_create_contracts_table', 9),
(13, '2023_02_06_142050_add_demand_id_to_demands_table', 10),
(14, '2023_02_06_162003_create_labour_management_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'MSYN', 'Yangon', NULL, NULL),
(2, 'MPS', 'Yangon', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `overseas_agencies`
--

CREATE TABLE `overseas_agencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_company` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countrie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overseas_agencies`
--

INSERT INTO `overseas_agencies` (`id`, `company_name`, `type_of_company`, `company_phone`, `company_email`, `company_address`, `countrie_id`, `created_at`, `updated_at`, `contact`) VALUES
(16, 'SSK Kolakarn Co.,Ltd (14741)', 'ကားအပိုပစ္စည်းများထုတ်လုပ်ခြင်းလုပ်ငန်း', NULL, NULL, 'Samutprakan', '1', '2022-08-23 23:12:15', '2022-08-23 23:12:15', 'Choose N Matchs'),
(17, 'SSK Kolakarn Co.,Ltd (14742)', 'ကားအပိုပစ္စည်းများထုတ်လုပ်ခြင်းလုပ်ငန်း', NULL, NULL, 'Samutprakan', '1', '2022-08-23 23:17:27', '2022-08-23 23:29:17', 'Choose N Matchs'),
(18, 'SSK Stamping Co.,Ltd', 'မော်တော်ကား/ဆိုင်ကယ်အင်ဂျင်ပစ္စည်းထုတ်လုပ်ခြင်းလုပ်ငန်း', NULL, NULL, 'Samutprakan', '1', '2022-08-23 23:19:23', '2022-08-23 23:19:23', 'Choose N Matchs'),
(19, 'Sino-Thai Engineering and Construction Public Co.,Ltd', 'ဆောက်လုပ်ရေးလုပ်ငန်း', NULL, NULL, 'Bangkok', '1', '2022-08-23 23:20:49', '2022-08-23 23:20:49', 'Choose N Matchs'),
(20, 'Kuiburi Fruit Canning Co.,Ltd', 'နာနတ်သီးစက်ရုံလုပ်ငန်း', NULL, NULL, 'Ranong', '1', '2022-08-23 23:22:16', '2022-08-23 23:22:16', 'Choose N Matchs'),
(21, 'T.C.P Industry Co.,Ltd', 'စက္ကူစက်ရုံလုပ်ငန်း', NULL, NULL, 'Bangkok', '1', '2022-08-24 20:59:00', '2022-08-26 23:18:06', 'P.C 80 And Service Company Limited'),
(22, 'Samco Standard Auto Manufacturing Co.,Ltd', 'ကားပစ္စည်းစက်ရုံ လုပ်ငန်း', NULL, NULL, 'Samutprakan', '1', '2022-08-26 23:22:08', '2022-08-26 23:22:08', 'P.C 80  And Service Company Limited'),
(23, 'H.R.T.Furniture Co.,Ltd', 'ပရိဘောဂ လုပ်ငန်း', NULL, NULL, 'Surat Thani', '1', '2022-08-26 23:30:17', '2022-08-26 23:30:17', 'J.U.N. Worker Company Limited'),
(24, 'T.S.P Wood Co.,Ltd', 'သစ်စက် လုပ်ငန်း', NULL, NULL, 'Surat Thani', '1', '2022-08-27 00:01:54', '2022-08-27 00:01:54', 'J.U.N Worker Company Limited'),
(25, 'Quality Coils Industries (P.B) Co.,Ltd', 'ခြင်ဆေးခွေထုတ်လုပ်ဖြန့်ဖြူးသည့် လုပ်ငန်း', NULL, NULL, 'Songkhla', '1', '2022-08-27 00:15:05', '2022-08-27 00:15:05', 'Chamnan (2013) Company Limited'),
(26, 'Choksuree Fresh Part.,Ltd', 'အသီးအနှံမျိုးစုံ ထုတ်လုပ်ဖြန့်ဖြူးသည့် လုပ်ငန်း', NULL, NULL, 'Nokhon Si Thammarat', '1', '2022-08-27 00:19:05', '2022-08-27 00:25:45', 'Chamnan (2013) Company Limited'),
(27, 'Chinnawarn Yala Construction Ltd.,Part', 'ဆောက်လုပ်ရေးလုပ်ငန်း', NULL, NULL, 'Songkhla', '1', '2022-08-27 00:21:11', '2022-08-27 00:21:11', 'Chamnan (2013) Company Limited'),
(28, 'E&C Co.,Ltd', 'လျှပ်စစ်မီးတပ်ဆင်ခြင်းလုပ်ငန်း', NULL, NULL, 'Samutprakan', '1', '2022-08-27 00:23:04', '2022-08-27 00:23:04', 'P.C 80 And Service Company Limited'),
(29, 'Auto Metal Part Co.,Ltd', 'ကား /ဆိုင်ကယ်အပိုပစ္စည်းထုတ်လုပ်ခြင်း လုပ်ငန်း', NULL, NULL, 'Chacheongsao', '1', '2022-08-27 00:24:58', '2022-08-27 00:24:58', 'Choose N Matchs Co.,Ltd'),
(30, 'C.A.S.H Autoparts Co.,Ltd', 'ကားအပိုပစ္စည်းထုတ်လုပ်ခြင်း လုပ်ငန်း', NULL, NULL, 'Bangkok', '1', '2022-08-27 01:40:01', '2022-08-27 01:40:01', 'Choose N Matchs Co.,Ltd'),
(31, 'ADDA FOOTWEAR (THAILAND) CO.,LTD', 'ဖိနပ်စက်ရုံလုပ်ငန်း', NULL, NULL, 'Bangkok', '1', '2022-09-23 04:15:46', '2022-09-23 04:15:46', 'ဦးတာ , ကိုဇော်'),
(32, 'Sino-Thai Engineering & Construction Public Co.,Ltd', 'Construction', NULL, NULL, 'Bangkok', '1', '2022-11-30 05:35:52', '2022-12-02 23:15:41', 'Choose N Matchs'),
(33, 'S.KIAN SENG SDN BHD', 'ပရိဘောဂပစ္စည်းများ ထုတ်လုပ်သည့် လုပ်ငန်း', NULL, NULL, 'SELANGOR', '2', '2022-12-14 21:03:10', '2022-12-14 21:03:10', 'MR.LEE'),
(34, 'FUKU METAL FINISHING SDN BHD', 'သတ္ကုအရောင်တင်လုပ်ငန်း', NULL, NULL, 'SELANGOR', '2', '2022-12-14 21:32:38', '2022-12-14 21:34:43', 'Mr.LEE'),
(35, 'NARDI MANUFACTURING', 'ထိုင်ခုံနှင့်စားပွဲ သံဖရိန်များထုတ်လုပ်သည့်လုပ်ငန်း', NULL, NULL, 'SELANGOR', '2', '2022-12-14 21:57:08', '2022-12-14 21:57:08', 'Mr.LEE'),
(36, 'PROJECT PERMATA JAYA SDN BHD', 'ဆောက်လုပ်ရေးလုပ်ငန်း', NULL, NULL, 'CHERAS, SELANGOR', '2', '2022-12-14 22:04:06', '2022-12-14 22:04:06', 'Mr.LEE'),
(37, 'GREEN CONCERNS SDN BHD', 'ကားဟိုက်ဒ‌ရောလစ်များတပ်ဆင်သည့်လုပ်ငန်း', NULL, NULL, 'SUNGAI INDAH, SELANGOR', '2', '2022-12-14 22:13:34', '2022-12-14 22:13:34', 'Mr.LEE'),
(38, 'ACTAN (MALAYSIA) SDN BHD', 'စက္ကူစက်ရုံ', NULL, NULL, 'SELANGOR', '2', '2022-12-14 22:23:44', '2022-12-14 22:23:44', 'KO THAN KYINE'),
(39, 'GLOBALLINK METAL', 'ဆေးရုံသုံးကုတင်များထုတ်လုပ်သည့်လုပ်ငန်း', NULL, NULL, 'SERI KEMBANGAN, SELANGOR', '2', '2022-12-14 22:31:50', '2022-12-14 22:34:15', 'Mr.LEE');

-- --------------------------------------------------------

--
-- Table structure for table `passports`
--

CREATE TABLE `passports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_agent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `join_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_passport` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `join_date`, `remember_token`, `created_at`, `updated_at`, `employee_id`, `nrc_number`, `gender`, `passport_photo`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Le4a7vAtroc7NGRRAbESu.Tpuz2KF4e.CjYDmU3wiRNOtpCj/WiAG', '09444161997', 'Yangon', '1.1.2022', NULL, '2023-01-29 22:34:39', '2023-01-30 10:20:38', 'EMP-00001', '1/abc(N)009221', 'male', NULL),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$.vQP72TfB9e6QdPF9e8ZruQ0S/QeFwRfiSEixisaYjQlRP1mK2R0u', '09123123123', 'Yangon', '1.1.2022', NULL, '2023-01-30 10:16:30', '2023-01-30 10:16:30', 'EMP-00002', '1/abc(N)009112', 'male', 'public/images/YXikmMIGdTWpjKSefrLF91Mdedk0YXU0lfrp4Nfa.png'),
(3, 'Mg Mg', 'mgmg@gmail.com', NULL, '$2y$10$WsBifexGEuyuZiVkjAAKFet3bK261AM3h/azLzy34cRgOk/srYcbq', '0912312313', 'Yangon', '1.1.2022', NULL, '2023-01-30 10:19:28', '2023-01-30 10:19:28', 'EMP-00003', '1/abc(N)009112', 'male', 'public/images/xVI3Z7akPvMAIwhnwvzcnKZtNIOiafM4aww9I0Sv.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_lists`
--
ALTER TABLE `agent_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `labour_management`
--
ALTER TABLE `labour_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overseas_agencies`
--
ALTER TABLE `overseas_agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passports`
--
ALTER TABLE `passports`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_lists`
--
ALTER TABLE `agent_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labour_management`
--
ALTER TABLE `labour_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `overseas_agencies`
--
ALTER TABLE `overseas_agencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `passports`
--
ALTER TABLE `passports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
