-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 14, 2023 at 06:56 AM
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

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `contract_date`, `contract_male`, `contract_female`, `remark`, `demand_id`, `created_at`, `updated_at`) VALUES
(1, '1.1.2023', 10, 10, 'Contract', 1, '2023-02-09 19:03:45', '2023-02-09 19:03:45');

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

--
-- Dumping data for table `demands`
--

INSERT INTO `demands` (`id`, `company_name`, `countrie_id`, `overseas_agencie_id`, `male`, `female`, `demand_date`, `cabinet_date`, `issue_date`, `issue_number`, `created_at`, `updated_at`, `demand_status`, `demand_id`) VALUES
(1, '1', '1', '17', '10', '10', '1.1.2023', '1.1.2023', '1.1.2023', '1.1.2023', '2023-02-09 19:03:17', '2023-02-09 19:03:17', 'new_demand', '1.1.2023');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `sending_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labour_management`
--

INSERT INTO `labour_management` (`id`, `demand_id`, `contract_id`, `overseas_agencies_id`, `name`, `father_name`, `nrc`, `date_of_birth`, `passport`, `passport_date`, `phone`, `address`, `gender`, `remark`, `place_of_passport`, `owic`, `owic_date`, `created_at`, `updated_at`, `sending_id`) VALUES
(2, 1, 1, 17, 'CHAN NYEIN AUNG', '', '', '30.9.1996', 'MG 784551', '5.11.2022', '-', 'KYAUNGKONE TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(4, 1, 1, 17, 'HEIN THU AUNG', '', '', '', 'MG 496802', '14.9.2022', '-', 'KAWLIN TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:21:36', NULL),
(6, 1, 1, 17, 'KHIN YAWAY TUN', 'U TUN TUN SOE', '14/NGA PA TA (N) 230755', '9.1.1999', 'MG 233290', '4.8.2022', '-', 'NGAPUTAW TSP', 'female', 'NEW', 'PATHEIN', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(7, 1, 1, 17, 'THAE HSU MON', 'U THEIN OO', '14/LA PA TA (N) 230526', '9.7.1999', 'MG 234640', '4.8.2022', '-', 'NGAPUTAW TSP', 'female', 'NEW', 'PATHEIN', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(8, 1, 1, 17, 'THET PHYO AUNG', 'U WIN NAING', '14/NGA PA TA (N) 283214', '11.3.2001', 'MG 233292', '4.8.2022', '-', 'NGAPUTAW TSP', 'male', 'NEW', 'PATHEIN', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(9, 1, 1, 17, 'AUNG THU YA TUN', 'U TUN TUN', '14/NGA PA TA (N) 280968', '25.6.2003', 'MG 234639', '4.8.2022', '-', 'NGAPUTAW TSP', 'male', 'NEW', 'PATHEIN', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(10, 1, 1, 17, 'ZAW ZAW', '', '', '1.1.1996', 'MG 784554', '5.11.2022', '-', 'TAUNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(11, 1, 1, 17, 'AUNG AUNG', '', '', '15.6.1986', 'MG 784553', '5.11.2022', '-', 'MYINGYAN TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(12, 1, 1, 17, 'AUNG PIKE', '', '', '2.1.1978', 'MG 784550', '5.11.2022', '-', 'TAUNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(13, 1, 1, 17, 'MIN MIN OO', '', '', '18.12.1987', 'MG 786767', '5.11.2022', '-', 'MAHLAING TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(14, 1, 1, 17, 'BO GYI', '', '', '15.5.1987', 'MG 786651', '5.11.2022', '-', 'TAUNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(15, 1, 1, 17, 'HTET LIN', '', '', '8.7.2003', 'MG 784548', '5.11.2022', '-', 'TAUNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(16, 1, 1, 17, 'SI THU MOE', '', '', '10.3.1998', 'MG 784555', '5.11.2022', '-', 'KYAUKSE TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(17, 1, 1, 17, 'THAN ZAW WIN', '', '', '16.10.1992', 'MG 784556', '5.11.2022', '-', 'TAUNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(18, 1, 1, 17, 'KHAING ZIN PHYO', '', '', '25.3.1998', 'MG 786768', '5.11.2022', '-', 'TAUNNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1'),
(19, 1, 1, 17, 'THEIN MIN OO', '', '', '19.12.1982', 'MG 784547', '5.11.2022', '-', 'TAUNGTHA TSP', 'male', 'NEW', 'YANGON', '', '', '2023-02-09 19:09:13', '2023-02-13 23:08:15', '1');

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
(14, '2023_02_06_162003_create_labour_management_table', 11),
(15, '2023_02_14_034640_create_sendings_table', 12),
(16, '2023_02_14_053450_add_sending_id_to_labour_management_table', 13);

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

--
-- Dumping data for table `passports`
--

INSERT INTO `passports` (`id`, `name`, `father_name`, `nrc`, `date_of_birth`, `passport`, `passport_date`, `local_agent_name`, `phone`, `address`, `gender`, `remark`, `created_at`, `updated_at`, `join_date`, `owic`, `owic_date`, `reject_status`, `reject_date`, `reject_reason`, `place_of_passport`, `agent_list_id`) VALUES
(1, 'YU YA WINT CHAL', 'U WIN NAING', '14/NGA PA TA (N) 240503', '3.3.1999', 'MG 108457', '4.7.2022', NULL, '-', 'NGAPUTAW TSP', 'female', 'NEW', '2023-01-19 01:47:33', '2023-01-19 01:47:33', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'MYAWADDY', 1),
(2, 'CHAN NYEIN AUNG', NULL, NULL, '30.9.1996', 'MG 784551', '5.11.2022', '', '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 01:49:02', '2023-02-09 19:16:11', '2023-01-19', NULL, NULL, 'rejected', '1.1.2023', NULL, 'YANGON', 1),
(3, 'MIN TIN', NULL, NULL, '16.12.1999', 'MG 786769', '5.11.2022', NULL, '-', 'PATHEINGYEE TSP', 'male', 'NEW', '2023-01-19 01:51:00', '2023-01-19 01:52:59', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(4, 'HEIN THU AUNG', NULL, NULL, NULL, 'MG 496802', '14.9.2022', NULL, '-', 'KAWLIN TSP', 'male', 'NEW', '2023-01-19 01:55:14', '2023-01-19 01:55:14', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(5, 'SAW MYO LIN TUN', NULL, NULL, NULL, 'MG 784559', '5.11.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-19 01:58:03', '2023-01-19 01:58:03', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(6, 'KHIN YAWAY TUN', 'U TUN TUN SOE', '14/NGA PA TA (N) 230755', '9.1.1999', 'MG 233290', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'female', 'NEW', '2023-01-19 02:00:13', '2023-01-19 02:00:13', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1),
(7, 'THAE HSU MON', 'U THEIN OO', '14/LA PA TA (N) 230526', '9.7.1999', 'MG 234640', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'female', 'NEW', '2023-01-19 02:01:58', '2023-01-19 02:01:58', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1),
(8, 'THET PHYO AUNG', 'U WIN NAING', '14/NGA PA TA (N) 283214', '11.3.2001', 'MG 233292', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'male', 'NEW', '2023-01-19 02:04:18', '2023-01-19 02:04:18', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1),
(9, 'AUNG THU YA TUN', 'U TUN TUN', '14/NGA PA TA (N) 280968', '25.6.2003', 'MG 234639', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'male', 'NEW', '2023-01-19 02:05:58', '2023-01-19 02:05:58', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1),
(10, 'ZAW ZAW', NULL, NULL, '1.1.1996', 'MG 784554', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:09:24', '2023-01-19 02:09:24', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(11, 'AUNG AUNG', NULL, NULL, '15.6.1986', 'MG 784553', '5.11.2022', NULL, '-', 'MYINGYAN TSP', 'male', 'NEW', '2023-01-19 02:10:19', '2023-01-19 02:13:01', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(12, 'AUNG PIKE', NULL, NULL, '2.1.1978', 'MG 784550', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:11:19', '2023-01-19 02:13:51', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(13, 'MIN MIN OO', NULL, NULL, '18.12.1987', 'MG 786767', '5.11.2022', NULL, '-', 'MAHLAING TSP', 'male', 'NEW', '2023-01-19 02:12:25', '2023-01-19 02:12:25', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(14, 'BO GYI', NULL, NULL, '15.5.1987', 'MG 786651', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:15:54', '2023-01-19 02:15:54', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(15, 'HTET LIN', NULL, NULL, '8.7.2003', 'MG 784548', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:16:52', '2023-01-19 02:16:52', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(16, 'SI THU MOE', NULL, NULL, '10.3.1998', 'MG 784555', '5.11.2022', NULL, '-', 'KYAUKSE TSP', 'male', 'NEW', '2023-01-19 02:18:00', '2023-01-19 02:18:00', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(17, 'THAN ZAW WIN', NULL, NULL, '16.10.1992', 'MG 784556', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:19:19', '2023-01-19 02:19:19', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(18, 'KHAING ZIN PHYO', NULL, NULL, '25.3.1998', 'MG 786768', '5.11.2022', NULL, '-', 'TAUNNGTHA TSP', 'male', 'NEW', '2023-01-19 02:20:24', '2023-01-19 02:20:24', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(19, 'THEIN MIN OO', NULL, NULL, '19.12.1982', 'MG 784547', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:23:20', '2023-01-19 02:23:20', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(20, 'WIN THAN OO', NULL, NULL, '18.12.1996', 'MG 784557', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:24:55', '2023-01-19 02:24:55', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(21, 'HTET OO', NULL, NULL, '12.2.1994', 'MG 784549', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 02:25:51', '2023-01-19 02:25:51', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(22, 'SHIN THANT THU', 'U MYINT THU', '14/LA BU TA (N) 321761', '28.2.2004', 'MG 568647', '30.9.2022', NULL, '-', 'LABUTA', 'male', 'NEW', '2023-01-19 02:37:25', '2023-01-19 02:37:25', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1),
(23, 'AUNG MOE MIN', NULL, NULL, '12.1.2997', 'MG 054615', '20.6.2022', NULL, '-', 'NGAPE TSP', 'male', 'NEW', '2023-01-19 02:40:12', '2023-01-19 02:40:12', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'MAGWAY', 1),
(24, 'KHANT HMUE KO', 'U AYE KO', '7/NYA LA PA (N) 172108', '3.3.1997', 'MH 029455', '29.12.2022', NULL, '-', 'NYAUNGLEBIN TSP', 'male', 'NEW', '2023-01-19 03:14:19', '2023-01-19 03:14:19', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(25, 'CHIT PWAR', 'U TUN THEIN', '7/YA KA NA (N) 089999', '21.12.2998', 'MH 029504', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-19 03:15:49', '2023-01-19 03:15:49', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(26, 'AYE MYAT MOE', 'U SHWE HLA WIN', '7/YA KA NA (N) 066860', '25.4.1994', 'MH 029446', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 03:18:59', '2023-01-19 03:18:59', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(27, 'KHIN YADANAR OO', 'U SAW TO TO', '7/YA KA NA (N) 081379', '24.4.2003', 'MH 029440', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 03:27:14', '2023-01-19 03:27:14', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(28, 'MAY MYAAT NOE', 'U KO KO MAUNG', '7/YA KA NA (N) 081518', '27.8.2022', 'MH 029437', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 03:29:35', '2023-01-19 03:29:35', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(29, 'NANDAR SOE', 'U TUN TUN WIN', '7/YA KA NA (N) 081514', '4.8.2004', 'MH 029435', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 03:52:41', '2023-01-19 03:52:41', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(30, 'PHYU', 'PHYU HLAING WAI', NULL, '4.7.1993', 'MG 909702', '30.11.2022', NULL, '-', 'NYAUNGLEBIN TSP', 'female', 'NEW', '2023-01-19 03:54:50', '2023-01-19 03:54:50', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(31, 'WIN WIN', NULL, NULL, '10.9.1983', 'MG 848572', '17.11.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-19 03:57:35', '2023-01-19 03:57:35', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(32, 'MYA SU MON', NULL, NULL, '4.3.2004', 'MG 909700', '30.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 03:59:39', '2023-01-19 03:59:39', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(33, 'ZAR CHI MOE', NULL, NULL, '26.11.1995', 'MG 909701', '30.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 04:01:49', '2023-01-19 04:01:49', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(34, 'WIN PA PA HLAING', NULL, NULL, '5.7.2000', 'MG 909703', '30.11.2022', NULL, '-', 'YANGON TSP', 'female', 'NEW', '2023-01-19 04:02:55', '2023-01-19 04:02:55', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(35, 'KYI PYAR LIN', NULL, NULL, '23.3.1993', 'MG 909704', '30.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 04:04:21', '2023-01-19 04:04:21', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(36, 'KYAW SAN', NULL, NULL, '2.10.1982', 'MG 568646', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-19 04:05:26', '2023-01-19 04:05:26', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(37, 'CHIT HTOO SAN', NULL, NULL, '22.9.2001', 'MG 568637', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-19 04:09:26', '2023-01-19 04:09:26', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(38, 'KHAING NAN KYI', NULL, NULL, '6.3.1998', 'MG 568638', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 04:17:13', '2023-01-19 04:17:13', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(39, 'PYAE PHYO AUNG', NULL, NULL, '5.3.2003', 'MG 568644', '30.9.2022', NULL, '-', 'NYAUNGLEBIN TSP', 'male', 'NEW', '2023-01-19 04:18:16', '2023-01-19 04:18:16', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(40, 'KHAING THIN GYI', NULL, NULL, '3.5.1993', 'MG 568648', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 04:19:24', '2023-01-19 04:19:24', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(41, 'HTOO MAY PHAW', NULL, NULL, '8.11.1989', 'MG 784546', '5.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 04:20:48', '2023-01-19 04:20:48', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(42, 'LWIN LWIN HTWE', NULL, NULL, '5.10.1994', 'MG 786770', '5.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-19 04:22:07', '2023-01-19 04:22:07', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(43, 'ZAW NAING WIN', 'U TUN HLA AYE', '11/KA TA NA (N) 160133', '14.1.1997', 'ME 913856', '11.1.2020', NULL, '-', 'KYAUKTAW TSP', 'male', 'OLD', '2023-01-19 20:04:08', '2023-01-19 20:04:08', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(44, 'NU NU WAI', 'U KHIN THEIN', '7/KA WA NA (N) 140302', '25.10.1992', 'MD 782519', '6.12.2018', NULL, '-', 'KAWA TSP', 'female', 'OLD', '2023-01-19 20:06:02', '2023-01-19 20:06:02', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(45, 'ZAR ZAR AYE', 'U SEIN HTUN', '14/PA MA NA (N) 3167576', '11.12.1997', 'MD 804566', '14.12.2018', NULL, '-', 'MYAUNGMYA TSP', 'female', 'OLD', '2023-01-19 20:07:41', '2023-01-19 20:07:41', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(46, 'AUNG SAN WIN', 'U MYA HAN', '12/KHA YA NA (N) 136441', '4.5.1989', 'MD 909139', '24.1.2019', NULL, '-', 'KHAYAN TSP', 'male', 'REACH THAI', '2023-01-19 20:10:09', '2023-01-19 20:10:09', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(47, 'PHYO PHYO WAI', 'U HAN WIN ZAW', '12/LHA YA NA (N) 162397', '3.3.1995', 'MD 909147', '24.1.2019', NULL, '-', 'KHAYAN TSP', 'female', 'OLD', '2023-01-19 20:11:37', '2023-01-19 20:11:37', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(48, 'AUNG MYO THAN', 'U THAN TUN HLA', '11/KA HTA NA (N) 159007', '21.12.1997', 'ME 913855', '11.1.2020', NULL, '-', 'KYAUKTAW TSP', 'male', 'OLD', '2023-01-19 20:26:21', '2023-01-19 20:26:21', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(49, 'YE LIN AUNG', NULL, NULL, '7.12.2002', 'MF 962781', '27.5.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 20:27:54', '2023-01-19 20:27:54', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(50, 'AUNG MYO OO', NULL, NULL, '11.2.1980', 'MG 077435', '27.6.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:29:36', '2023-01-19 20:29:36', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'PATHEIN TSP', 3),
(51, 'NI NI LWIN', NULL, NULL, '7.9.1996', 'MF 496505', '16.12.2021', NULL, '-', 'KYAUNGKONE TSP', 'female', 'NEW', '2023-01-19 20:31:16', '2023-01-19 20:31:16', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 3),
(52, 'TUN WIN HLAING', 'U SOE THEIN', '14/KA KA NA (N) 120923', '9.1.1995', 'MH 029573', '29.12.2022', NULL, '-', 'KANGYIDAUNT TSP', 'male', 'NEW', '2023-01-19 20:33:35', '2023-01-19 20:33:35', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(53, 'ZAW LAT', 'U THAN WIN', '14/KA KA NA (N) 10552', '17.8.1983', 'MH 029578', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:35:19', '2023-01-19 20:35:19', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(54, 'ZA', 'ZAW TUN OO', '14/KA KA NA (N) 124238', '17.12.1984', 'MH 029582', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:37:00', '2023-01-19 20:37:00', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(55, 'MYO KO OO', 'U MYO AUNG', '14/PA THA NA (N) 316190', '7.6.2022', 'MH 029590', '29.12.2022', NULL, '-', 'PATHEIN TSP', 'male', 'NEW', '2023-01-19 20:38:59', '2023-01-19 20:38:59', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(56, 'WIN KO KO TUN', 'U SHWE OO', '14/THA PA NA (N) 124567', '7.12.1994', 'MH 029574', '29.12.2022', NULL, '-', 'THARBAUNG TSP', 'male', 'NEW', '2023-01-19 20:40:43', '2023-01-19 20:40:43', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(57, 'KYAW ZIN PHYO', 'U SOE WIN', '14.KA KA NA (N) 120901', '6.8.1995', 'MH 029584', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:43:15', '2023-01-19 20:43:15', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(58, 'PYAW HPYO AUNG', 'U KI NYUNT', '14/KA KA NA (N) 144792', '13.12.2000', 'MH 029587', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:45:28', '2023-01-19 20:45:28', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(59, 'THU ZAR MYINT', 'U SOE MYINT', '7/AH TA NA (N) 119402', '27.11.1987', 'MH 029596', '29.12.2022', NULL, '-', 'OKTWIN TSP', 'female', 'NEW', '2023-01-19 20:47:33', '2023-01-19 20:47:33', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(60, 'PHYO WAI AUNG', 'U ZAW MOE LWIN', '14/KA KA NA (N) 173388', '15.1.2003', 'MG 616343', '12.10.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:50:25', '2023-01-19 20:50:25', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4),
(61, 'TAY ZAR AUNG', 'U TUN LWIN', '12/KHA YA NA (N) 164849', '6.9.2001', 'MG 651440', '15.10.2022', NULL, '-', 'KHAYAN TSP', 'male', 'NEW', '2023-01-19 20:52:44', '2023-01-19 20:52:44', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(62, 'HTET LIN AUNG', 'U TUN LWIN', '12/KHA YA NA (N) 130907', '7.9.1996', 'MG 651441', '15.10.2022', NULL, '-', 'KHAYAN TSP', 'male', 'NEW', '2023-01-19 20:54:55', '2023-01-19 20:54:55', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(63, 'SOE MIN HTET', 'U ZAW MIN OO', '14/KA KA NA (N) 190309', '2.6.1999', 'MG 616341', '12.10.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:56:46', '2023-01-19 20:56:46', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(64, 'SOE MIN HTET', 'U ZAW MIN OO', '14/KA KA NA (N) 190309', '2.6.1999', 'MG 616341', '12.10.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 20:58:40', '2023-01-19 20:58:40', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(65, 'ZAW YE', 'U THAN WIN', '14/KA KA NA (N) 161402', '27.1.1992', 'MG 616340', '12.10.1992', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 21:08:15', '2023-01-19 21:08:15', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(66, 'PHYO WAI SOE', NULL, NULL, '18.8.1997', 'MG 909694', '30.11.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 21:11:42', '2023-01-19 21:11:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(67, 'PHYO WAI AUNG', NULL, NULL, '16.4.1996', 'MG 909714', '30.11.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 21:14:26', '2023-01-19 21:14:26', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(68, 'THET WAI', NULL, NULL, '26.11.1998', 'MG 848563', '17.11.2022', NULL, '-', 'MAUBIN TSP', 'male', 'NEW', '2023-01-19 21:17:05', '2023-01-19 21:17:05', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(69, 'LIN PHYO MAUNG', NULL, NULL, '26.2.2003', 'MG 909695', '30.11.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 21:18:13', '2023-01-19 21:18:13', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(70, 'THU MAUNG', 'U TUN KYINE', '14/DA NA PHA (N) 158275', '2.1.1990', 'MG 506252', '16.9.2022', NULL, '-', 'DANUBYU TSP', 'male', 'NEW', '2023-01-19 21:20:36', '2023-01-19 21:20:36', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(71, 'AUNG PYAR PHYO KYAW', 'U KYAW MOE', '14/DA NA PHA (N) 226222', '31.7.2004', 'MG 506253', '16.9.2022', NULL, '-', 'DANUBYU TSP', 'male', 'NEW', '2023-01-19 21:22:21', '2023-01-19 21:22:21', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3),
(72, 'YE YINT KYAW', 'U KYAW HTAY', '14/HA THA TA (N) 253569', '9.5.1995', 'MH 029475', '29.12.2022', NULL, '-', 'HINTHADA TSP', 'male', 'NEW', '2023-01-19 21:30:35', '2023-01-19 21:30:35', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(73, 'AUNG PYAE PHYO WIN', 'U AUNG MYINT THEIN', '14/HA THA TA (N) 406948', '31.7.2003', 'MH 029438', '29.12.2022', NULL, '-', 'HINTHADA TSP', 'male', 'NEW', '2023-01-19 21:32:50', '2023-01-19 21:32:50', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(74, 'KYAW THET', 'U AUNG SHANE', '8/AH LA NA (N) 238932', '10.6.2022', 'MH 029601', '29.12.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 21:34:25', '2023-01-19 21:34:25', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(75, 'AUNG THET PAING', 'U MYO LWIN', '8/AH LA NA (N) 259814', '4.7.2004', 'MH 029480', '29.12.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 21:36:37', '2023-01-19 21:36:37', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(76, 'KYAW THU HTET', 'U KHIN MAUNG ZAW', '8/AH LA NA (N) 238852', '1.4.2022', 'MH 029507', '29.12.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 21:38:42', '2023-01-19 21:38:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(77, 'PA PA SOE', 'U KYI SOE', '8/AH LA NA (N) 241775', '2.12.2998', 'MD 941606', '2.2.2019', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 21:40:23', '2023-01-19 21:40:23', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(78, 'THET AUNG', NULL, NULL, '31.5.2985', 'MD 520244', '18.8.2018', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 21:42:49', '2023-01-19 21:42:49', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(79, 'AUNG KO WIN', NULL, NULL, '21.9.1985', 'MC 984412', '31.1.2018', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 21:45:35', '2023-01-19 21:45:35', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(80, 'ZAR ZAR SOE', 'U KYI SOE', '8/AH LA NA (N) 169612', '19.4.1988', 'MD 941607', '2.2.2019', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 21:47:02', '2023-01-19 21:47:02', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(81, 'NWE MAR WIN', 'U TIN HLAING', '8/AH LA NA (N) 163844', '6.8.1995', 'MG 145052', '13.7.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 21:48:58', '2023-01-19 21:48:58', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(82, 'MU MU LWIN', 'U MYINT LWIN', '8/AH LA NA (N) 201506', '22.9.1988', 'MF 965834', '28.5.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 21:50:17', '2023-01-19 21:50:55', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(83, 'KHIN KYU SWE', 'U TUN LWIN', '8/AH LA NA (N) 224163', '4.5.2000', 'MG 271588', '10.8.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 21:52:42', '2023-01-19 21:52:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(84, 'THET WAI PHYO', 'U THAN LWIN', '8/AH LA NA (N) 161774', '15.7.1995', 'MG 651430', '15.1.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 21:53:52', '2023-01-19 21:53:52', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(85, 'HAN MYO TUN', 'U SEIN TINT', '5/KA LA NA (N) 069553', '28.6.1995', 'MF 932497', '18.5.2022', NULL, '-', 'KYUNHLA TSP', 'male', 'NEW', '2023-01-19 21:58:34', '2023-01-19 21:58:34', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(86, 'PHOE LA PYAE', 'U SEIN HLA NGWE', '8/AH LA NA (N) 144124', '7.10.1987', 'MG 145064', '13.7.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 21:59:56', '2023-01-19 21:59:56', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 8),
(87, 'SOE MOE WIN', 'U HLA TIN', '10/KA HTA NA (N) 177589', '3.8.2000', 'MG 420018', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 22:07:52', '2023-01-19 22:07:52', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(88, 'SU MAR', NULL, NULL, '27.2.1993', 'MG 447421', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 22:09:39', '2023-01-19 22:09:39', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(89, 'THET MAR WIN', 'U HLA WIN', '10/KA HTA NA (N) 185338', '6.3.2003', 'MG 420017', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 22:10:52', '2023-01-19 22:10:52', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(90, 'THAN THAN MOE', 'U HTAY LWIN', '10/BA LA NA (N) 138073', '7.3.1997', 'MG 423491', '3.9.2022', NULL, '-', 'BILIN TSP', 'female', 'NEW', '2023-01-19 22:46:51', '2023-01-19 22:46:51', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(91, 'SANDAR KHAING', 'U KYAW SAN', '10/KA HTA NA (N) 179276', '7.10.2003', 'MG 420021', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 22:52:16', '2023-01-19 22:52:16', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(92, 'ZIN MI MI ZAW', 'U ZAW WIN', '10/BA LA NA (N) 163968', '13.8.2002', 'MG 423492', '3.9.2022', NULL, '-', 'BILIN TSP', 'female', 'NEW', '2023-01-19 22:55:43', '2023-01-19 22:55:43', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(93, 'MA HTWE', 'U MAUNG WIN', '10/KA HTA NA (N) 190290', '18.11.1996', 'MG 423631', '3.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 22:59:00', '2023-01-19 22:59:00', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(94, 'WIN ZAW OO', 'U WIN KYAING', '14/NYA TA NA (N) 162178', '2.3.1994', 'MG 412915', '1.9.2022', NULL, '-', 'NYAUNGDON TSP', 'male', 'NEW', '2023-01-19 23:00:56', '2023-01-19 23:03:36', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(95, 'AUNG NAING WIN', NULL, NULL, '14.4.1990', 'MG 447423', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 23:07:42', '2023-01-19 23:07:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(96, 'THA PYAY AUNG', 'U THEIN SINE', '10/KA HTA NA (N) 164751', '11.7.2022', 'MG 038972', '15.6.2022', NULL, '-', 'KYAILHTO TSP', 'male', 'NEW', '2023-01-19 23:09:50', '2023-01-19 23:09:50', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(97, 'NAING ZIN', 'U HTUN NYUNT', '10/KA HTA NA (N) 196883', '11.11.1997', 'MG 042018', '16.6.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 23:13:44', '2023-01-19 23:13:44', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(98, 'ZIN MIN AUNG', 'U AUNG NAING WIN', '10/KA HTA NA (N) 187856', '25.5.2003', 'MG 419760', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 23:16:04', '2023-01-19 23:16:04', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(99, 'MYO MYINT NAING', 'U KYAW MIN NAING', '10/KA HTA NA (N) 178442', '27.12.2001', 'MG 420019', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 23:20:13', '2023-01-19 23:20:13', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(100, 'HTAY HTAY WIN', 'U MYINT THEIN', '10/KA HTA NA (N) 140423', '5.4.1997', 'MG 150043', '14.7.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 23:26:32', '2023-01-19 23:26:32', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(101, 'TOKE LOE KO', 'U TIN THEIN', '10/BA LA NA (N) 2204392', '23.8.1992', 'ME 425460', '19.7.2019', NULL, '-', 'BILIN TSP', 'male', 'NEW', '2023-01-19 23:28:39', '2023-01-19 23:28:39', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(102, 'AYE MYA OO', NULL, NULL, '17.8.2003', 'MG 447422', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-20 04:02:42', '2023-01-20 04:02:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(103, 'PO PO CHIT', 'U CHIT NGWE', '10/KA HTA NA (N) 178856', '29.7.2022', 'MG 420013', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-20 04:04:01', '2023-01-20 04:04:01', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGION', 9),
(104, 'AYE AYE MYINT', 'U TIN OO', '10/KA HTA NA (N) 154240', '23.8.1999', 'MG 038968', '15.6.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-20 04:05:29', '2023-01-20 04:05:29', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(105, 'AYE CHAN MAY', 'U MYA SOE', '10/KA HTA NA (N) 164661', '4.5.2000', 'MG 420016', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-20 04:06:45', '2023-01-20 04:06:45', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(106, 'SANDAR LIN', 'U KYAW MYINT', '10/KA HTA NA (N) 148564', '4.6.1998', 'MG 145050', '13.7.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-20 04:08:07', '2023-01-20 04:08:07', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(107, 'WIN ZAW OO', 'U WIN KYAING', '14/NYA TA NA (N) 162178', '1.3.2994', 'MG 412915', '1.9.2022', NULL, '-', 'NYAUNGDON TSP', 'male', 'NEW', '2023-01-20 04:19:27', '2023-01-20 04:19:27', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(108, 'AUNG NAING WIN', NULL, NULL, '14.4.1990', 'MG 447423', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-20 04:21:02', '2023-01-20 04:21:02', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(109, 'THA PYAY AUNG', NULL, NULL, '11.7.2003', 'MG 038972', '15.6.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-20 04:26:13', '2023-01-20 04:26:13', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(110, 'NAING ZIN', 'U TUN NYUNT', '10/KA HTA NA (N) 196883', '11.10.1997', 'MG 042018', '16.6.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-20 04:27:48', '2023-01-20 04:27:48', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(111, 'ZIN MIN AUNG', 'U AUNG NAING WIN', '10/KA HTA NA (N) 187856', '25.5.2003', 'MG 419760', 'YANGON', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-20 04:29:33', '2023-01-20 04:29:33', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9),
(112, 'MYO MYINT NAING', 'U KYAW MIN NAING', '10/KA HTA NA (N) 178442', '27.12.2001', 'MG 420019', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-20 04:30:58', '2023-01-20 04:30:58', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 9);

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
-- Table structure for table `sendings`
--

CREATE TABLE `sendings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sending_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_male` int(11) DEFAULT NULL,
  `sending_female` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendings`
--

INSERT INTO `sendings` (`id`, `sending_date`, `sending_male`, `sending_female`, `remark`, `demand_id`, `contract_id`, `created_at`, `updated_at`) VALUES
(1, '1.1.2023', 10, 10, 'Sending', 1, 1, '2023-02-13 23:08:15', '2023-02-13 23:08:15');

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
-- Indexes for table `sendings`
--
ALTER TABLE `sendings`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labour_management`
--
ALTER TABLE `labour_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sendings`
--
ALTER TABLE `sendings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
