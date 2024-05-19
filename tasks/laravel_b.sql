-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2024 at 05:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_b`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:38:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:21:\"can_create_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:19:\"can_view_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:19:\"can_edit_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:21:\"can_update_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:21:\"can_delete_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"can_create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"can_view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:13:\"can_edit_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"can_update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"can_delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:18:\"can_create_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:16:\"can_view_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:16:\"can_edit_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:18:\"can_update_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:18:\"can_delete_contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:14:\"can_create_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"can_approve_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:12:\"can_view_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:15:\"can_view_my_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:14:\"can_delete_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:14:\"can_update_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:16:\"can_view_all_gig\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:18:\"can_create_setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:16:\"can_view_setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:16:\"can_edit_setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:18:\"can_update_setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:18:\"can_delete_setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:18:\"can_toggle_setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:16:\"can_view_careers\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:18:\"can_view_my_career\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:19:\"can_view_all_career\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:15:\"can_create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:13:\"can_view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:13:\"can_edit_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:15:\"can_update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"can_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:15:\"can_upload_gigs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:15:\"can_export_gigs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:10:\"Supervisor\";s:1:\"c\";s:3:\"web\";}}}', 1716217881);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `applied_by` bigint(20) UNSIGNED DEFAULT NULL,
  `checked` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cover_letter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `job_id`, `applied_by`, `checked`, `cover_letter`, `resume_path`, `created_at`, `updated_at`) VALUES
(1, 101, 3, '0', 'hi this is cover letter', 'resumes/Xg6ePDka2qUk0hJIUEqz7EZ64okNPpsYTUJPkTXE.pdf', '2024-05-19 09:55:41', '2024-05-19 09:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `gigs`
--

CREATE TABLE `gigs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` enum('full-time','part-time','contract') COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('inactive','active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gigs`
--

INSERT INTO `gigs` (`id`, `title`, `description`, `location`, `salary`, `experience`, `job_type`, `company_name`, `responsibilities`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Screen Printing Machine Operator', 'Est sit quod est laudantium quia excepturi. Voluptatem eum omnis voluptas in ut. Quas fuga ut qui tempore a porro. Qui voluptatibus sed perspiciatis occaecati. Eveniet accusamus quia est asperiores.\n\nConsequatur distinctio vitae est. Sapiente ut occaecati ab nemo. Eos est optio voluptate ullam est. Iure esse odio illum non nobis atque et voluptatem. Architecto harum aut excepturi optio at.\n\nVoluptatibus accusamus minus quia repellat. Distinctio ab cupiditate pariatur voluptate dolores et. Voluptas voluptatem adipisci tenetur sed sit.', 'New Kylehaven', '73237', '1-3 years', 'contract', 'Steuber-Kautzer', 'Animi quo consequatur ratione consequatur dolor error quasi veniam. Impedit neque et suscipit qui quis dolores aut. Laudantium itaque cum veniam.\n\nExercitationem quo nihil dolores pariatur rerum nulla. Velit beatae saepe qui laudantium. Non porro corporis vitae dicta voluptatem id maiores.\n\nOmnis necessitatibus vel harum tempore. Voluptatem quia ipsam saepe fuga. Voluptatibus dolore quasi dolor ut nam.', 1, 'active', '2023-10-24 07:13:54', '2024-05-19 09:42:40'),
(2, 'Amusement Attendant', 'Temporibus voluptates in eos aliquid. Incidunt qui qui voluptates non adipisci fugit. Voluptates ullam debitis ea eos dicta ut qui.\n\nRem distinctio est aut tempora aut. Officiis voluptatum quae aut eligendi et quis sit repellendus. Odit dicta voluptas rerum harum delectus in. Odio quia exercitationem ratione est debitis tempore placeat ut.\n\nVoluptatem iure eveniet quae aperiam et. Officia enim a tempora earum. Enim consequuntur quia culpa et quidem.', 'South Karelleton', '36781', '1-3 years', 'contract', 'Ritchie PLC', 'Explicabo et vel omnis minus sint rerum. Odit est consequatur optio rerum. Ipsum laudantium incidunt culpa iure. Ipsum nisi sed voluptates modi omnis.\n\nRem voluptatem facere quia aut qui quia maxime. Incidunt qui a fuga qui. Eum minus quisquam eaque maiores ut.\n\nDolorum consequuntur nobis asperiores harum. Qui ut pariatur in voluptates esse ut et. Assumenda ut cupiditate reiciendis quia consequatur esse sed.', 1, 'inactive', '2023-11-23 18:52:53', '2023-10-08 16:45:14'),
(3, 'Career Counselor', 'Natus nemo eum maiores odit aliquid. Eaque magnam consequuntur et aut. Magnam at qui ut debitis dolorum aperiam omnis.\n\nAut veritatis consequuntur veritatis dolor. Consequatur iste ducimus unde harum officia placeat. Repudiandae quo est sit qui delectus repudiandae.\n\nVoluptate possimus quidem officia mollitia expedita sed autem. Accusantium deserunt eos perspiciatis libero et totam. Occaecati porro rerum sequi eius in temporibus voluptas. Neque magni inventore dolores doloremque laborum qui placeat neque. Deleniti natus voluptates voluptatem beatae.', 'Destanymouth', '84929', '5+ years', 'full-time', 'Heathcote, Stroman and Daniel', 'Voluptatum quis et qui porro in aut. Ea repellendus doloribus quasi voluptates sunt ut. Rerum minima omnis dolorem rerum.\n\nAtque qui quo cum praesentium veniam. Itaque vitae tempore corporis deleniti. Deleniti non qui enim est repellendus esse.\n\nRatione nisi expedita omnis est ipsa consequatur fugit. Ad nemo aut laudantium voluptas ut. Vitae consequatur enim ratione doloribus. Accusamus sapiente tempore ab nam consequatur sed.', 1, 'inactive', '2022-06-16 21:50:55', '2022-07-16 12:08:55'),
(4, 'Medical Technician', 'Ea quo qui quisquam tenetur. Velit est saepe veniam qui. Natus illo quos quia.\n\nUnde odit in praesentium dolorem optio fugiat vel. Est molestiae dolorem et dolores totam soluta. Fugit quis est voluptatem.\n\nEa et illo occaecati unde sit. Itaque ut aut est suscipit. Voluptatibus placeat sed dolores molestias et ut voluptatibus at. Perspiciatis et omnis fugit amet soluta velit illo. Necessitatibus officiis accusamus numquam atque enim et.', 'New Jakaylashire', '952', '0-1 years', 'part-time', 'Deckow and Sons', 'Eveniet quas dolores dolor nulla et rem quas. Est nihil maiores provident rerum rerum. Sit fuga ullam quibusdam beatae rerum libero ut.\n\nEsse rerum id tempore explicabo. Debitis voluptatum placeat aspernatur. Sunt pariatur ea rem ducimus.\n\nItaque iure porro corporis quas sequi commodi. Omnis ut porro voluptatum iusto. Quas ut accusamus tempore est.', 1, 'inactive', '2022-05-21 06:56:59', '2023-04-06 22:45:07'),
(5, 'Pressing Machine Operator', 'Voluptatum ut accusamus asperiores ut eum ut. Qui et voluptatibus corporis minima. Non laboriosam corporis explicabo error iste voluptas quo et. Ut voluptatem est culpa voluptatem.\n\nAliquam sed laboriosam repellat perspiciatis nulla est. Nisi labore nesciunt ut ipsam esse. Facilis magni ad rerum recusandae tenetur laudantium.\n\nVero eum impedit excepturi. Non ut asperiores quisquam similique. Asperiores vitae dolorem placeat rerum vel consequuntur tenetur.', 'Winstonstad', '52289', '3-5 years', 'part-time', 'Stokes, McClure and Adams', 'Et voluptatum labore vero quo. Voluptas suscipit aperiam dolor quaerat sunt delectus.\n\nAsperiores necessitatibus nisi possimus. Labore impedit corrupti voluptatum modi voluptatem et esse. A quae accusantium cum.\n\nPerferendis fuga perspiciatis est tempore rerum et sint non. Qui soluta sed est quis sed. Neque velit error et vel ut sequi. Maxime nihil fugit minima tempore molestiae quasi assumenda.', 1, 'inactive', '2023-12-11 15:04:19', '2023-01-18 10:46:28'),
(6, 'Human Resources Assistant', 'Nihil occaecati neque eveniet placeat ipsa quis. Et voluptatem reiciendis voluptates. Porro ipsa perferendis quis. Vero accusamus modi sed recusandae dolorem.\n\nIpsam repellat commodi numquam enim accusantium quos. Velit blanditiis molestias et asperiores. Eum at quae sint possimus vel temporibus qui quam. Voluptas facere quis praesentium distinctio.\n\nOmnis autem temporibus voluptates tenetur voluptatem sunt. A velit soluta sed possimus. Nesciunt non enim est rerum voluptatem.', 'Port Madisyn', '40866', '3-5 years', 'full-time', 'Larkin, Huel and Daniel', 'Iure expedita ipsa qui sed dolor dolor. Id ipsum quidem qui ea sit et accusantium. Dolores cum aspernatur magni optio consequatur. Sapiente id sit et ut dolores dolor et dolores.\n\nQuis voluptates aperiam fuga. Velit quasi aut ut dolorum ut ut. Nulla officia facilis eum quia sapiente facilis ex eveniet. Excepturi eum ipsam unde ut nihil. Nulla mollitia minus consequatur rem doloribus.\n\nNeque recusandae unde nulla odit debitis eos nulla. Ducimus ut nobis ullam nostrum veniam cupiditate beatae esse. Doloremque ut consequatur quas odit nihil recusandae totam. Sed quia qui qui est.', 1, 'inactive', '2023-05-01 23:04:39', '2022-06-28 13:06:27'),
(7, 'Municipal Clerk', 'Nesciunt soluta error qui ipsa et. Eligendi placeat voluptatem ut et nihil fugiat blanditiis. Adipisci voluptate ea voluptatem repellat eum cum accusantium.\n\nInventore rem reiciendis at qui voluptatum non adipisci sit. Quia in aut sint. Rerum debitis vel quia voluptatem ratione placeat itaque quis.\n\nMollitia autem aut ducimus nihil magni. Velit eum natus id et. Atque rerum perferendis voluptates rerum maxime ut eum. Et sequi est optio id expedita quo.', 'Lake Celia', '845', '3-5 years', 'full-time', 'Auer PLC', 'Ducimus labore molestiae voluptate harum nemo. Ipsum eveniet omnis voluptatem qui. Voluptas non consequatur sapiente expedita quibusdam.\n\nDistinctio quas placeat tempora at non consequuntur placeat. Sit sunt molestias commodi ea. Voluptas eius molestiae rerum temporibus omnis illo. Rem illum amet nesciunt itaque et numquam.\n\nVel est repudiandae impedit asperiores cupiditate ut qui aspernatur. Eum enim ut dicta recusandae neque. Est provident culpa consequuntur ea ducimus assumenda. Et libero deleniti ipsum sapiente et aut omnis.', 1, 'inactive', '2024-04-05 12:45:54', '2023-11-10 13:18:04'),
(8, 'Social Science Research Assistant', 'Similique neque iure voluptas natus consectetur aperiam. Eum nam dolorum officia veritatis sunt facilis voluptate.\n\nNeque doloribus totam enim magnam sint ullam quo dignissimos. Aut rem iure voluptatem ut dicta.\n\nId facere sit sint eum libero. Ut quisquam voluptas eum asperiores hic.', 'Norvaltown', '57703', '1-3 years', 'part-time', 'Crona and Sons', 'Quisquam aspernatur assumenda error repellat optio ut iure. A aut voluptates itaque asperiores ut nemo. Nostrum quis id aut.\n\nQuo impedit qui aut necessitatibus quia. Veniam qui blanditiis praesentium occaecati. Quaerat totam est doloremque autem ipsam voluptas vero. Aperiam consequatur est sapiente aut ut numquam.\n\nOmnis temporibus rerum perferendis qui enim esse. Rerum quod enim voluptatem et aspernatur. Sequi sequi quidem et sed.', 1, 'inactive', '2023-12-19 00:42:33', '2023-09-08 02:44:38'),
(9, 'Oil and gas Operator', 'Aperiam recusandae cum est neque. Doloremque omnis animi est repellendus voluptate nemo et. Labore dolores voluptatibus sint nobis non expedita.\n\nAdipisci modi cupiditate est et quas. Aut aut repellat omnis nihil ipsa voluptas impedit eum. Vel magni minima vero voluptatem. Quas itaque architecto nesciunt.\n\nCupiditate voluptates sint quod dolores. Aut consequatur autem eligendi doloribus atque. Similique deleniti suscipit quae reprehenderit ratione.', 'Adahburgh', '56581', '3-5 years', 'part-time', 'Jakubowski, Schmitt and Green', 'Molestiae delectus maxime sunt unde itaque mollitia. Laudantium et et molestias nulla voluptatibus optio aliquid. Quae et assumenda magni aut voluptatem fugit et officiis. Inventore qui optio dolorem dolore.\n\nEst dolores odit illo vero. Et quis provident similique distinctio et ab. Dolorem aut ab facilis incidunt autem harum iure inventore.\n\nIncidunt quaerat et molestiae quaerat atque. Quo incidunt provident deserunt iure quis.', 1, 'inactive', '2022-09-12 10:20:43', '2022-07-19 03:36:02'),
(10, 'Vending Machine Servicer', 'Id autem nostrum voluptatem temporibus harum. Nulla ullam ut corporis aut et dignissimos possimus. Non ratione illum recusandae facere et unde nostrum. Blanditiis eaque debitis velit dolore repellat consectetur.\n\nEnim nihil corrupti a eos facilis illum. Quasi atque adipisci repellat omnis cupiditate esse ducimus. Sint eius dolore ab animi.\n\nQuidem repellat et odio alias culpa dolore. Consequatur aut optio provident dolor. Fugiat minus doloribus illo cumque ea non iusto laborum. Debitis quidem odio quia deserunt sint.', 'Roweland', '87034', '1-3 years', 'part-time', 'Grimes, Welch and Will', 'Aliquid ducimus qui et rerum et. Dolore dolorum harum esse deleniti fugiat. Neque et rerum aut blanditiis quam.\n\nTotam ut voluptatem pariatur nihil rerum. Exercitationem veritatis magnam vitae consequatur ea. Quisquam officia sint maxime ullam adipisci quae eligendi. Provident numquam aspernatur eius facere placeat itaque occaecati. Mollitia ab perspiciatis enim dicta adipisci.\n\nOdio consectetur rerum voluptate rerum doloribus. Tenetur porro ea culpa sed autem. Ut quis et est. Unde nemo non voluptatem iusto beatae a tenetur.', 1, 'inactive', '2022-12-01 03:41:46', '2023-04-28 22:42:47'),
(11, 'Agricultural Engineer', 'Omnis ad veniam optio quia consequatur. Delectus voluptas doloremque corporis iusto sed numquam necessitatibus. Sint sapiente soluta et maxime optio possimus.\n\nNulla tempora occaecati omnis commodi atque nobis saepe. Facilis fuga cupiditate expedita non consectetur laudantium omnis. Eius et id molestiae illum.\n\nDolores harum ex omnis ullam harum. Necessitatibus debitis asperiores itaque non. Libero dicta qui architecto nihil nulla aut veritatis magni. Exercitationem soluta placeat itaque dolorum ut eos sed.', 'Langworthton', '434', '1-3 years', 'full-time', 'Durgan, Bauch and Stiedemann', 'Voluptatem non minima debitis ut itaque reiciendis dolores. Blanditiis et quia dolorum quia nobis eveniet quo. Vel quos nisi ab esse quo aut.\n\nFacilis quis ex aspernatur non modi error recusandae. Est ad voluptatem rerum dignissimos unde vero aut. Quae aut suscipit sequi quo odit dolore error. Deleniti maxime quia voluptates optio distinctio.\n\nDignissimos id facilis reprehenderit sed cum. Cumque voluptas repellendus dolores aliquam aut mollitia. Aut quos molestias amet voluptas. Perferendis consequuntur laborum autem non dolor temporibus.', 1, 'inactive', '2022-09-04 18:31:54', '2024-03-07 07:03:56'),
(12, 'Food Science Technician', 'Rerum quo est consequatur saepe ipsa laborum. Aut ullam velit fugiat qui. Incidunt dolorem magnam ea non temporibus sint ratione. Quae soluta iusto facilis vel debitis ullam quibusdam. Maiores molestiae beatae facere aut.\n\nAutem temporibus et est ipsam quia quam vel aut. Recusandae eaque aut qui dolores debitis commodi. Quo ut ad est facilis. Est laborum explicabo ipsa iste sint natus.\n\nEa iste expedita minus aspernatur fugiat voluptatem. Id omnis aspernatur consectetur sed aut. Sed quia et nihil officiis autem asperiores inventore.', 'West Richmond', '3065', '3-5 years', 'full-time', 'Collins Group', 'Unde qui quidem deleniti pariatur labore. Possimus aliquid facere quia nam vitae dolorum nisi. Ea laboriosam et consequuntur voluptas voluptatem et.\n\nCorrupti architecto dolores doloribus maiores maiores dolorem aliquid. Debitis quod accusantium vero neque. Reprehenderit qui velit accusamus qui ut dolores. Fugit consequatur officia fugit rem et debitis rerum eveniet.\n\nNisi vitae rerum consequatur nesciunt harum ut dolorum. Aut tempora sed rem et rem inventore non. Error repellat ut aliquid earum quo omnis.', 1, 'inactive', '2024-02-27 03:53:47', '2022-09-15 21:54:48'),
(13, 'Recreational Therapist', 'Reprehenderit nesciunt nihil et optio facere occaecati. Quis dolorem quam hic. Eum eveniet nihil itaque non. Modi qui et accusamus mollitia ipsam.\n\nFugiat et facere voluptas earum et excepturi numquam nihil. Sit sequi delectus dignissimos ea exercitationem sequi non. Est ea numquam tempora praesentium neque. Ullam rerum aut et.\n\nQui id quia in sed quaerat. In a accusamus et odio nobis alias. Omnis eum perspiciatis quo officiis distinctio et.', 'West Skylar', '95784', '0-1 years', 'part-time', 'Reichel, King and Treutel', 'Inventore ducimus deserunt at nobis id ea. Molestiae aut dolores reprehenderit rerum reiciendis eum nobis sunt. Sit praesentium illum ipsa ut et.\n\nUnde non cum officiis sit. Harum quae soluta a et ratione ut. Explicabo pariatur ea dignissimos dolor iste.\n\nAutem et voluptates tempore ratione natus qui aut. Et vero autem aut quisquam nemo pariatur quidem. Voluptatibus quia molestiae minima voluptate. Sunt nulla alias eveniet aperiam omnis laborum recusandae deserunt. Voluptatem saepe ut rerum sed molestiae.', 1, 'inactive', '2022-09-12 03:14:26', '2022-07-04 00:50:54'),
(14, 'Obstetrician', 'Repellat aliquid iusto mollitia. Delectus quia sit sit necessitatibus. Autem totam officia delectus sit neque itaque earum. Harum cupiditate consequuntur sed qui adipisci voluptatibus. Dolorum consequatur dignissimos et quibusdam quo repellat.\n\nVitae consequuntur excepturi optio commodi. Et iste accusamus illum dolor repellendus. Voluptatibus omnis quis assumenda magni sint. Minus assumenda ut non voluptas.\n\nAtque recusandae voluptatum porro et voluptas velit. Cupiditate ut autem vitae libero recusandae reiciendis. Dicta rerum quaerat totam aut. Ab earum iure explicabo molestiae.', 'East Kimberlymouth', '1580', '3-5 years', 'part-time', 'Herzog-Goodwin', 'Quibusdam dolor recusandae id sed asperiores. Sed doloremque est culpa harum doloremque quo ea. Ipsam repudiandae nam et quis. Qui dolorem non at molestiae quas voluptatibus molestiae.\n\nMinus aut placeat odit excepturi ab aut voluptate. Velit ratione sed voluptatem laudantium ipsum sit.\n\nQuia est et excepturi soluta illo maiores. Natus autem consectetur dignissimos numquam veniam. Quae aut voluptatem neque non.', 1, 'inactive', '2023-05-02 23:19:28', '2022-06-29 04:55:07'),
(15, 'Casting Machine Operator', 'Quasi nostrum accusamus inventore enim laudantium est. Eum voluptatem non incidunt dolore deserunt et qui corporis.\n\nAut officiis et ut voluptatem eveniet. Et quis fugiat ut atque. Ipsam exercitationem ipsum nihil culpa. Nam nihil quos provident et quas delectus.\n\nAut dolorum reprehenderit totam ratione et quia iusto ut. Aperiam aut et consectetur. Aspernatur nemo quisquam repellendus eveniet provident ex.', 'Shawnaview', '9536', '5+ years', 'part-time', 'Sipes Inc', 'Officia qui explicabo voluptatum quasi. Est qui sit enim quisquam. Id praesentium nihil ullam illum error vero et.\n\nQui doloremque dicta cum quia alias eius. Aut dolore eius et voluptatibus maxime. Ad culpa quia qui animi quo. Voluptatibus minima sint sit eligendi sunt.\n\nQuo illum autem similique ut rerum rem dignissimos suscipit. Incidunt repellendus illum dignissimos. Non eligendi rerum exercitationem quibusdam aut sit.', 1, 'inactive', '2023-11-10 02:25:59', '2023-08-20 02:31:16'),
(16, 'Medical Assistant', 'Dolore quibusdam molestias quia est. Modi accusantium ipsam aliquam vel recusandae. Id ut officiis libero omnis.\n\nRecusandae et unde itaque accusamus impedit in aut officia. At necessitatibus reprehenderit velit aut qui ut esse. Magnam nihil voluptates quia cupiditate. Et quod quaerat ratione nobis non.\n\nError laboriosam non ipsa pariatur voluptatem alias voluptatibus. Architecto nobis minima pariatur. Ut et saepe et tempore quos totam.', 'New Derrick', '70994', '1-3 years', 'full-time', 'Hagenes, Heathcote and White', 'Provident quo minima magnam placeat similique iste. Aliquid voluptatem dicta provident tempore deserunt ipsam accusamus sapiente. Fugiat dicta omnis odit omnis dolores velit molestias.\n\nExercitationem iusto aut consequuntur. Dolores blanditiis dolor molestiae excepturi. Et accusantium ipsum impedit dolores provident labore ut. Vero rerum recusandae ipsum cupiditate dolorem nihil accusamus. Ab tempora reiciendis cupiditate.\n\nAutem delectus quia ea similique atque ut. Temporibus recusandae impedit at provident. Et voluptatem ipsa dolorum cupiditate est ut iste.', 1, 'inactive', '2022-07-02 07:33:41', '2023-05-25 14:23:50'),
(17, 'Rotary Drill Operator', 'Quisquam labore aspernatur sint earum fugiat. Commodi tempore doloremque velit expedita dolor ea. Et tempora laudantium quaerat amet. Qui nisi ad hic nihil vel.\n\nProvident est aliquid rem et autem. Dolores sequi autem quia id. Iure non placeat ut placeat. Qui eaque autem et nihil et.\n\nEligendi illum doloribus quisquam tenetur maiores repudiandae earum. Sit neque aut in. Totam molestiae eum nemo facilis error totam culpa.', 'Smithamfurt', '61590', '5+ years', 'part-time', 'Brown, Mann and Fahey', 'Cupiditate ut soluta sed ratione. Rerum et at quam a. Culpa laborum velit vel quam id non excepturi.\n\nDeleniti recusandae error dolores delectus fuga. Sit ipsam accusamus et rerum autem esse. In itaque alias adipisci magni cum ut nostrum.\n\nVero iure rerum tempora aspernatur natus aut. Ipsa ad aliquam voluptatem hic. Et quo qui nostrum dolorem. Nemo deserunt saepe odio ea quo.', 1, 'inactive', '2024-03-23 13:58:06', '2024-05-09 02:18:22'),
(18, 'Plating Operator', 'Magnam harum eius iste et ipsa at. Soluta explicabo quis ratione rerum. Qui et totam facere. Maxime ut in itaque non. A excepturi assumenda voluptatum ut.\n\nQuis quisquam ipsum cupiditate est doloremque. Quis hic nihil eum mollitia fugit ipsum ex. Aut ut quas beatae quas nisi. Minima ratione ut adipisci dicta nihil nulla.\n\nEst nobis sapiente sint earum. Eius fugiat dolor id quis. Molestiae veritatis expedita sit provident non corrupti nemo.', 'South Luisfort', '61272', '1-3 years', 'full-time', 'Flatley Ltd', 'Debitis cum consectetur aut voluptatem. Sed id odio omnis earum ut explicabo voluptas. Voluptas aut accusamus praesentium deserunt voluptatem.\n\nDebitis voluptatem voluptates recusandae ut nisi incidunt commodi nesciunt. Vel illum maxime aut voluptatibus maiores iusto sit. Ut laudantium in modi iure impedit maiores.\n\nEst repellendus cupiditate magni sequi. At est consequatur harum consectetur officiis laborum impedit assumenda. Porro minus voluptatibus aut occaecati ut eos sed.', 1, 'inactive', '2024-03-31 20:46:42', '2022-05-20 18:01:41'),
(19, 'Administrative Law Judge', 'Nam fuga dolorem voluptatem est aut deserunt. Et aliquid quia eos esse voluptate dolor. Quis eos sapiente temporibus dolore quibusdam. Sunt sit qui sapiente aspernatur quis dolor.\n\nPlaceat quod ab velit ut quo vel. A maiores natus aut ab assumenda pariatur. Quos ipsa fugiat explicabo.\n\nEst quis impedit labore facere reiciendis et neque. Molestiae possimus nemo enim ipsa quis. Provident quisquam ut consequatur. Et repudiandae sed quibusdam id saepe. Iste doloribus tempora tenetur eaque ad corporis.', 'Reichertville', '65067', '5+ years', 'full-time', 'Smitham-Lesch', 'Facilis ratione similique et similique non. Perspiciatis est eligendi odit autem ea corrupti. Vel qui voluptatum eos quis non.\n\nSit rem voluptatum et. Corrupti aut possimus ipsam autem ex dolore. Rerum voluptatem sint aut et delectus et esse ratione. Architecto animi modi et. Culpa ab et sit expedita iure voluptate ut est.\n\nEa velit iure cupiditate sapiente exercitationem maxime. Temporibus eius numquam qui vitae est sed. Consectetur officia aliquam fugiat voluptas est consequatur iste.', 1, 'inactive', '2023-02-10 13:28:01', '2023-02-09 10:15:38'),
(20, 'Engineering Manager', 'Eum unde adipisci illo nesciunt sunt atque sunt qui. Aut et neque aliquid minus. Voluptatem laborum magnam neque tempora et est reprehenderit. Qui eveniet consequatur consequatur placeat est.\n\nAssumenda nihil voluptatum est commodi. Sunt est nesciunt doloremque minus. Laborum non voluptatem minus.\n\nPlaceat ipsam praesentium eius recusandae sapiente iusto accusamus. Rem at fugit expedita. Consequatur est velit qui quis quisquam et quo.', 'Kylatown', '62348', '3-5 years', 'part-time', 'Beier-Considine', 'Laudantium eaque excepturi amet aliquam dolores sint eligendi. Rerum consequatur culpa velit soluta et vel. Dolorem optio id possimus eligendi accusantium. Minima adipisci velit tenetur non consequatur magnam explicabo.\n\nRerum eos tempore ex porro consequatur quis cum eveniet. Nihil dignissimos et voluptatum vero officia corrupti assumenda. Odit porro non sed necessitatibus. Qui atque accusantium iste voluptatem.\n\nQuis quibusdam voluptas laboriosam sapiente omnis inventore velit. Dolorum vel minima ab voluptas. Quia odit voluptas quod et. Et ut qui id quo iste et.', 1, 'inactive', '2024-03-11 05:54:43', '2024-04-04 05:36:41'),
(21, 'Multi-Media Artist', 'Numquam earum molestias dolorem culpa qui temporibus. Voluptatem libero dolor aut sed ut. Repellat voluptas consectetur numquam consectetur quos provident beatae.\n\nEum molestiae ratione ullam consequuntur qui. Rem omnis distinctio iure doloremque reiciendis mollitia alias. Eius facere omnis voluptatem quisquam maxime odio sed quis.\n\nAspernatur consequatur odit officia odio. Atque rem nam architecto et nostrum ea id aut. Vitae cum atque impedit sequi. Vel error voluptate quasi dignissimos aut et et.', 'Walshport', '90891', '5+ years', 'part-time', 'Monahan-Effertz', 'Quo dolor nam inventore maiores repudiandae commodi amet. Praesentium rerum quo nam. Numquam et nihil a et ullam doloremque.\n\nNon dolore est error quo quisquam dolore. Commodi illo labore alias vel qui consequatur dolorem. Similique nihil omnis quis enim incidunt. Illo sapiente nam iure qui accusamus sunt et.\n\nIste quo quis sequi vitae eaque magnam. Repudiandae eum est praesentium et voluptate dolorem. Et occaecati voluptatibus dolore non. Rerum similique aut sunt dolores dolores a. Laboriosam eius minus voluptatum fuga eum aut adipisci.', 1, 'inactive', '2024-04-23 21:05:24', '2022-10-29 18:05:26'),
(22, 'Aerospace Engineer', 'Saepe dignissimos dolor optio consequatur ipsam corporis. Excepturi voluptas beatae odio.\n\nRepudiandae dolorem molestiae exercitationem quaerat eum quas. Molestiae rerum non atque iure voluptates omnis facilis. Labore sunt sed quam ipsum delectus est. Natus atque quibusdam dignissimos voluptatem.\n\nUt quisquam voluptas nulla. Voluptatibus illo cumque eligendi autem iure. Ut illo reprehenderit fugit a aperiam.', 'West Aaronhaven', '17428', '3-5 years', 'contract', 'Kessler, Gislason and Bayer', 'Quaerat est ut iste. Quis ut totam vel veritatis quia.\n\nCorrupti aut ut quis at porro non placeat. Rerum ea repudiandae amet ratione architecto voluptatem tempora. Ducimus cupiditate natus repellendus et aut minus fugit. Odio eos et voluptatem ut voluptatibus vitae iure.\n\nRem nihil aut quia nulla unde voluptas vero. Magnam ratione asperiores temporibus et nostrum facilis ipsam. Aut consequuntur pariatur et autem aut dolorum quibusdam.', 1, 'inactive', '2023-12-12 08:17:30', '2023-10-06 17:36:15'),
(23, 'Utility Meter Reader', 'Recusandae similique voluptas sit illo eveniet neque eligendi. Excepturi fugiat et laborum non officia. Molestias quia et perspiciatis magni quis. Laboriosam soluta sed eligendi nesciunt.\n\nCumque ut mollitia sunt incidunt labore debitis eum porro. Rem iure voluptas nam. Saepe rerum pariatur voluptatem vero. Laudantium ut qui hic qui.\n\nEligendi nobis itaque recusandae distinctio repellat totam. Aut rerum ut laudantium doloribus asperiores sint. Ut dignissimos provident voluptate ullam id.', 'Keshaunhaven', '42141', '0-1 years', 'part-time', 'Moen LLC', 'Ratione suscipit unde omnis sit laudantium iure reprehenderit. Sit eius in nobis tempore. Dolorem nisi nam in vel. Odio nihil provident quisquam distinctio dicta voluptatibus fugiat. Et soluta doloremque sunt sapiente debitis.\n\nQui dolorem ut suscipit magnam molestias sapiente. Voluptatem delectus consequatur qui quis id dolorum dolor et.\n\nAut quasi dolore hic et ipsum non aperiam. Accusantium quas cum necessitatibus soluta numquam illum vitae.', 1, 'inactive', '2022-08-12 19:55:51', '2022-07-26 16:24:01'),
(24, 'Boat Builder and Shipwright', 'Et reiciendis accusantium molestias qui explicabo. Suscipit saepe praesentium voluptate eum blanditiis.\n\nSunt in est sunt expedita dolores ex. Cumque qui nulla in sint qui totam. Quis quae neque minima cumque.\n\nAutem molestiae rerum nisi harum reprehenderit maxime et. Ullam alias est qui ex cum. Est vel architecto aut quia molestiae. Consequatur facilis aliquam ipsam totam nemo nam quae.', 'Adeleburgh', '97628', '1-3 years', 'part-time', 'Gaylord-Greenfelder', 'Rerum amet sunt alias sed. Neque voluptate ullam sed veniam doloribus suscipit.\n\nSint eum est praesentium sunt accusantium. Ea animi aperiam quis quis nisi tenetur ratione magni. Deleniti veritatis corrupti esse voluptates fugit aspernatur quo.\n\nTotam expedita porro deserunt labore. Tempora eligendi eius praesentium eligendi qui ab. Neque molestiae ut omnis ut quaerat ea quo. Nesciunt sapiente fuga aliquam fuga necessitatibus qui aperiam.', 1, 'inactive', '2022-09-11 05:47:34', '2023-05-05 07:37:38'),
(25, 'Flight Attendant', 'Quis ut voluptatum neque doloribus vel voluptatem. Sit est magni officiis tenetur eos. Impedit et aliquid et aliquid.\n\nDebitis ut repudiandae ab voluptatum ab sed. Cupiditate eveniet ratione molestiae. A eveniet et sunt tempore. Non ipsam vel quaerat a.\n\nEos et vel sit vitae dolores. Ut nulla sint aut at in eaque eaque. Dolores est tempore ut a et praesentium non facilis.', 'Port Antoniostad', '81198', '5+ years', 'full-time', 'Nienow Inc', 'Quibusdam corrupti voluptatibus consectetur. Aspernatur aut nobis magni modi eum quaerat temporibus. Consequatur omnis eum pariatur est vitae.\n\nDolore nesciunt et aperiam et ex autem quo. Quae dolores neque nemo nesciunt veritatis ad. Facere hic quam officiis est.\n\nUt in earum consequatur assumenda. Blanditiis consectetur quibusdam et ipsam. Provident et similique ipsa id.', 1, 'inactive', '2024-03-14 05:12:09', '2024-02-14 11:17:20'),
(26, 'Geological Data Technician', 'A unde facilis perferendis rerum et at. Voluptates vitae sunt cupiditate ipsum.\n\nSed quidem consectetur repellendus. Omnis eum aut delectus adipisci veritatis necessitatibus ut. Repellat voluptas veniam dignissimos vel quo similique. Consequuntur illum aut recusandae sed aut.\n\nTempore ea iusto quia laborum molestiae quae. Veniam in sint iusto debitis consequatur quos necessitatibus. Harum velit excepturi velit numquam voluptas quasi sint.', 'West Eldonburgh', '47202', '5+ years', 'part-time', 'Morissette, Marquardt and Jast', 'Id molestiae error qui deserunt. Iusto similique ipsam ratione voluptatem facere modi. Aperiam sint aut distinctio minus qui eos. Totam molestiae exercitationem cupiditate.\n\nAlias incidunt aut dolorem rerum nulla. Tempora repellendus dolorem voluptatem assumenda sint qui qui. Ea ratione qui qui minima sed sapiente. Voluptatum iusto voluptatem sit reprehenderit.\n\nHarum at reprehenderit iure laboriosam magnam quam iure. Sunt in blanditiis consequatur repellendus quo velit rerum rerum. Voluptatem asperiores architecto optio soluta. Rerum modi blanditiis ab dignissimos iste.', 1, 'inactive', '2022-09-20 18:29:58', '2023-06-04 10:41:08'),
(27, 'Food Preparation and Serving Worker', 'Nihil nam aliquid sequi blanditiis. Aut cum voluptas alias officiis. Consequatur odio consectetur quaerat illo dignissimos libero.\n\nQui nobis aspernatur animi aut deserunt. Id quod et ullam beatae. Molestias iusto non exercitationem sunt. Eum ipsa commodi ea dolore qui. Voluptas enim qui veniam iusto.\n\nNam aut voluptas qui earum veritatis aliquid laudantium doloremque. Quis et occaecati labore consequuntur suscipit et corporis. Laboriosam facere rerum alias.', 'East Eugene', '87152', '3-5 years', 'contract', 'Dach, Franecki and Kirlin', 'Aut repudiandae repellendus voluptatem dolorum dolor praesentium. Officiis natus numquam ipsam et. Rem excepturi dicta fugiat voluptas aut vitae.\n\nConsequatur non et qui placeat voluptate ratione ut. Est architecto et et eum ut a est eaque. Occaecati delectus blanditiis nihil alias velit natus. Eligendi ab ipsa nostrum est quo.\n\nUt totam illo adipisci. Deserunt a quo est debitis. Labore consequuntur optio voluptatem qui natus sequi veniam.', 1, 'inactive', '2023-10-28 00:15:40', '2023-03-08 02:01:08'),
(28, 'Team Assembler', 'Debitis magnam quae dolor porro velit exercitationem. Nemo soluta eos qui vel aut eos. Eum commodi rerum maiores tempore laudantium. Aliquam dolorem ea qui debitis ut enim.\n\nUllam exercitationem est dolor ab. Rerum quo quaerat non iste. Voluptatem ut quo aut est assumenda veniam eius. Voluptatem magni ut quia.\n\nDolorem rerum odit voluptatem ullam provident eum ullam dolorem. Veritatis dolores in in error dolore. Delectus magni atque impedit. Porro vel officiis officiis quo.', 'Grahamberg', '12022', '5+ years', 'full-time', 'Boyer, Hickle and Nitzsche', 'Eligendi minus perspiciatis dolorem. Ipsum voluptate distinctio consequatur dolore corporis totam omnis.\n\nExpedita voluptatem aliquam inventore impedit quis quasi quia. Corporis molestiae tempora voluptas aut ullam sunt cum. Illum et et nobis dolores perspiciatis quo. Magnam enim pariatur amet dolor qui odio officiis.\n\nUllam quia adipisci eum praesentium est. Tempora corporis odit sed dolore facere debitis vel. Eligendi blanditiis velit atque iste quam. Pariatur et excepturi dolorem.', 1, 'inactive', '2023-11-08 11:53:51', '2023-04-21 01:56:45'),
(29, 'Compensation and Benefits Manager', 'Nesciunt deserunt error quia qui fuga perferendis. Rerum perferendis et cum ut mollitia. Dolor deleniti et quia voluptatem voluptates ut natus doloribus. Nemo ut ab earum dolorem aliquid ut repellat consequuntur.\n\nVoluptatem facere accusantium ullam excepturi aut. Sunt accusantium dolores rem temporibus. Maiores et natus optio vel voluptatem et ipsa. Et eos ut natus.\n\nEt consectetur quia saepe suscipit alias. Similique magni repellat odit illo deleniti facilis doloremque perferendis. Quis voluptatibus eos magni dolore tempora suscipit dolor.', 'Port Brandobury', '92716', '5+ years', 'contract', 'Kshlerin-Altenwerth', 'Aperiam accusamus est sed molestias et tempore. Officia placeat consequatur quaerat nihil est dolor. Et rerum ut dignissimos quia. Rerum sit quia delectus.\n\nAlias voluptates et voluptates temporibus. Accusamus autem dolor iure voluptas consectetur. Et repellendus quidem et qui laudantium culpa cumque accusantium.\n\nUt voluptatum est quo atque et saepe quo. Quos harum explicabo officia iure eos reiciendis. Veritatis qui et velit odit dignissimos. Molestias aliquid optio aspernatur.', 1, 'inactive', '2023-12-24 19:27:37', '2024-03-20 03:43:57'),
(30, 'Eligibility Interviewer', 'Est laboriosam et delectus esse. Totam commodi facere velit vel nisi atque nostrum. Vitae qui culpa voluptatum libero et accusantium.\n\nCulpa corrupti deleniti animi aut dolore magnam eius. Error officia et ut nam corrupti et perferendis. Deleniti autem est in nemo voluptas. Dolore beatae nisi minus ducimus aut cumque.\n\nEx tenetur hic velit molestias. Nemo fugiat exercitationem impedit minima recusandae. At ut enim pariatur qui possimus.', 'Paucekland', '64056', '1-3 years', 'part-time', 'Swift, Kuhic and Streich', 'Aspernatur id est praesentium et eum. Ipsa porro quae id. Est vero molestias et. Vel magnam non explicabo aut ratione.\n\nPossimus blanditiis ut velit expedita. Accusamus labore porro ullam et. Perspiciatis voluptas est et aliquam ut. Totam fuga maiores reprehenderit et.\n\nQuia et nemo eos molestias et. Illo veritatis aperiam voluptas sit. Quo vel autem sit iusto corporis dolores qui.', 1, 'inactive', '2023-02-28 12:35:27', '2022-07-28 11:45:54'),
(31, 'Training Manager OR Development Manager', 'Sequi omnis ut vero maiores enim aut est. Non eveniet est eligendi dolorem dolor. Iste ab perspiciatis recusandae minus in et qui.\n\nEst quia aut eum eos ullam iure. Cupiditate sint ut exercitationem sit. Doloribus aut assumenda aut cum. Fugiat dolor dolore similique est reiciendis quisquam adipisci. Et aperiam quia et ad qui.\n\nMaiores in sint expedita temporibus. Eaque porro quasi aliquam qui id enim eius voluptates. Praesentium perferendis fugit assumenda voluptatum. Fugiat eius sit veniam neque nostrum.', 'Kreigerland', '57026', '0-1 years', 'full-time', 'Schamberger Ltd', 'Nihil possimus consectetur non cumque vel. Quos impedit consectetur illo nobis. Consequatur quia reprehenderit libero amet voluptates officiis ut ut.\n\nConsequatur blanditiis in eos aut nisi quae vel. Voluptatem tempore omnis voluptatem qui quis. Molestiae et asperiores officiis voluptate id.\n\nNobis aut necessitatibus est ut. Voluptas deleniti et voluptates ad explicabo. Magnam tenetur nam perferendis dolor aut omnis repudiandae. Repellat similique nisi voluptate officia aut sed.', 1, 'inactive', '2023-07-07 04:54:52', '2024-04-23 21:21:13'),
(32, 'Lathe Operator', 'Ut cum iste vel praesentium repudiandae provident deserunt. Iusto modi non enim. Voluptas et doloribus nihil reprehenderit. Et et natus tempore nihil.\n\nOfficia expedita repudiandae voluptates reprehenderit. Possimus nobis dolorem saepe aperiam. Cumque doloremque ut reprehenderit tempore.\n\nAccusantium molestiae quia nihil hic excepturi. Sint harum earum nostrum provident culpa possimus. Qui delectus et cupiditate.', 'Treutelland', '88973', '0-1 years', 'part-time', 'Kuhlman-Grant', 'Est similique praesentium qui ipsa natus. Illo doloribus architecto corrupti sit sunt. Voluptatem iure et facilis et. Mollitia eos sed veritatis libero officiis.\n\nIn molestias doloribus eum laudantium modi. Necessitatibus dicta nostrum tempore est dolorum. Ad assumenda ut dolores nobis est vero.\n\nEst enim culpa est. Id veniam minus et. Occaecati non possimus mollitia possimus aut aut soluta.', 1, 'inactive', '2022-07-20 10:43:43', '2022-05-30 21:46:40'),
(33, 'Composer', 'Quo et soluta voluptas. Quaerat dignissimos quia repellat enim. Est est quam quod sapiente.\n\nQui et quam harum autem perspiciatis dolor reprehenderit laborum. Possimus eaque et dolorum perspiciatis autem. Natus iste molestiae quod praesentium quibusdam sed. Eveniet corrupti soluta voluptatem dolor in nulla alias. Aspernatur dolores sit dolore occaecati recusandae consequatur totam corrupti.\n\nVoluptatibus illo qui quas commodi in veritatis. Voluptas voluptas voluptate assumenda temporibus et. Est maiores nam impedit non fuga labore. Ipsa veritatis illo eius consequatur excepturi.', 'Ernafort', '75469', '5+ years', 'contract', 'McLaughlin, Volkman and Gaylord', 'Animi autem labore velit quaerat delectus dolores. Sit voluptatem mollitia eos maiores. Asperiores quia accusamus velit omnis nobis. Quos voluptatem culpa omnis qui dolorem laborum.\n\nLibero voluptatem qui qui aliquid. Sapiente quia praesentium sunt aperiam amet ut ut. Dolor aliquam dolore omnis voluptatem. Repellat molestiae quis quos nostrum quisquam.\n\nMagni qui dolorem eveniet nesciunt adipisci ut. Recusandae est sit veritatis et quo corporis blanditiis. Et maiores est sapiente quidem quis. Officiis deleniti sapiente ipsa eligendi quaerat molestiae necessitatibus pariatur.', 1, 'inactive', '2023-12-07 14:34:58', '2023-06-13 20:03:06'),
(34, 'Sketch Artist', 'Enim aut et dolor est et cum. Et et laborum et aut non qui. Fugit repellat aut totam omnis dolor.\n\nExpedita in quasi ex sunt accusamus nobis. Doloribus eaque et vel pariatur rerum omnis. Eveniet iure occaecati molestiae harum quo magnam. Non aut libero itaque deleniti porro sed modi.\n\nQuo sit enim occaecati quis quia explicabo. Ut sit delectus est quas est voluptatem exercitationem tempore. Dolorem quo itaque voluptatem enim. Dignissimos velit nam optio. Ut possimus est rerum fugit fugit.', 'New Courtneyshire', '86571', '3-5 years', 'part-time', 'Rutherford Inc', 'Aut cupiditate perferendis fugiat eveniet cupiditate aut. Facere vel tempore ipsa ut est. Voluptates sed in ut vero. Est vitae atque delectus hic et.\n\nConsequatur sapiente quas nihil. Doloremque tempore at molestias qui. Debitis temporibus eum nemo dolore.\n\nMaiores facilis vel minima odit rerum. Aliquid sint eius incidunt nesciunt voluptatum voluptatem saepe et. Pariatur ipsum enim eligendi voluptatibus animi expedita numquam unde. Veniam sint veniam corporis ipsam. Necessitatibus ducimus quisquam amet dolor fuga dolorem.', 1, 'inactive', '2022-09-05 01:28:31', '2022-06-27 01:01:39'),
(35, 'Advertising Sales Agent', 'Et dicta sit asperiores totam consequatur. Consequuntur et ad veniam adipisci eius corporis ipsa.\n\nNon unde iste non perferendis quia cum voluptas. Necessitatibus voluptatibus minus repellendus qui quae consequatur tempora. Iusto quis fugiat rem optio soluta consequuntur. Non mollitia optio est aspernatur non.\n\nNostrum earum occaecati quis dolor omnis explicabo. Aut sit sunt occaecati facere ratione omnis unde. Illo asperiores vitae voluptatum minima sit. Aut ipsum qui commodi aut. Vel a mollitia voluptatibus et.', 'Lake Brian', '63361', '5+ years', 'contract', 'Beier Inc', 'Quam alias blanditiis culpa ad quia et. Consequatur illo similique tempore. Temporibus est architecto facere est.\n\nEius atque aliquam quaerat accusamus. Perspiciatis et nemo nesciunt aspernatur id suscipit cumque. Minus possimus voluptatum eveniet doloremque rerum omnis. Qui provident est sunt expedita sint. Et aut reiciendis dolor non aliquam.\n\nQuisquam tempore est repudiandae. Maiores sint veniam dolorem facilis consequatur sit. Perferendis sit voluptas sit assumenda quisquam. Dicta voluptatem sunt consectetur impedit qui est.', 1, 'inactive', '2023-12-20 02:41:09', '2023-11-11 14:55:42'),
(36, 'Fraud Investigator', 'Tempore ut aut dolorem possimus aut. Est debitis ipsam tempore asperiores omnis perferendis. Molestiae totam veritatis aperiam ea cupiditate voluptatem ut. Voluptatem vitae similique rerum dolores.\n\nOdio veritatis nesciunt sapiente saepe provident. Qui aut quasi ipsam nihil. Aut velit et quia neque cumque. Sunt quidem et qui. Nihil aut est exercitationem alias corrupti.\n\nError in ab aspernatur et at ut id. Ut consequatur quis placeat eum nesciunt. Error aut sit recusandae facilis et incidunt. Reiciendis aut recusandae repellendus totam fugiat.', 'Earnestside', '87227', '0-1 years', 'contract', 'Bartoletti Ltd', 'Ullam cum et pariatur iusto laborum sed impedit modi. Laboriosam aut delectus numquam ullam autem maxime architecto. Aliquam error fugit aut adipisci rem eius aperiam molestiae.\n\nUt quisquam dolorum est tenetur. Sit quis et nisi et et voluptate quia. Iure sit quia ut qui reiciendis distinctio dolorem. Aliquam ex consequatur itaque.\n\nDolore molestiae et voluptatibus voluptatum neque velit labore. Omnis est et vitae enim explicabo et nam. Consectetur dolorum autem voluptas.', 1, 'inactive', '2023-07-08 18:47:45', '2024-02-26 20:16:23'),
(37, 'Materials Engineer', 'Quibusdam minus ipsam et incidunt laudantium. Corporis alias qui magni eos provident reiciendis. Unde quaerat voluptatem velit voluptatem sapiente.\n\nSit ratione aut ab animi ipsam. Commodi qui nihil qui ipsa doloremque. Fuga consequatur sapiente beatae voluptatem cum impedit. Rerum odio cum adipisci voluptates delectus doloremque.\n\nAut perspiciatis soluta provident labore dolor possimus at. Dolore maiores et quia possimus. A quibusdam tempore culpa enim qui alias. Consequuntur laudantium rerum amet asperiores vel eveniet. Ratione ab cupiditate beatae.', 'Kirstinmouth', '15949', '0-1 years', 'part-time', 'Abernathy Ltd', 'Similique eos aliquid est quis ut autem. Culpa commodi qui qui doloribus eveniet qui ipsam aliquid. Deleniti rerum ratione nobis veniam enim temporibus repudiandae.\n\nIncidunt aut et dignissimos rem deleniti delectus. Assumenda labore ex consectetur. Quas velit ducimus ullam.\n\nOfficia excepturi quidem voluptatem voluptatibus. Quis aliquid tempora quisquam aut tempore. Eaque debitis voluptatem nobis consequuntur tenetur impedit dolores. Veniam blanditiis debitis odit sit exercitationem.', 1, 'inactive', '2023-07-21 18:48:20', '2022-10-07 23:49:19'),
(38, 'Commercial Pilot', 'Est aperiam vero error sequi hic perspiciatis. Corporis animi aut quas dignissimos veritatis maxime ullam. Omnis incidunt ducimus ipsa natus aut.\n\nSed quaerat neque ut qui hic laborum. Voluptate dolore vel doloribus quam voluptatem eius placeat. Voluptatibus esse vel hic voluptas qui et voluptatum et. Et fugiat est illo.\n\nVel adipisci impedit soluta consequatur accusantium laborum saepe deserunt. Laudantium et id delectus quia illo tenetur harum.', 'Irvingfurt', '32932', '3-5 years', 'full-time', 'Konopelski-Denesik', 'Voluptates dicta dolorem non. Voluptatem laboriosam aspernatur quis veritatis rerum qui exercitationem.\n\nConsequatur excepturi dolorum tenetur magni tempora. Veritatis aperiam quo qui provident animi amet. Error et et illum autem atque veritatis qui. Error illum vel cum.\n\nCorporis in numquam qui eius enim dolorem vel culpa. Animi provident in soluta ut porro cum ut autem. In sit provident quam nihil incidunt.', 1, 'inactive', '2022-10-03 01:59:49', '2022-06-25 05:24:02'),
(39, 'Hydrologist', 'Explicabo iusto et rem ducimus voluptate est distinctio excepturi. Animi iste commodi praesentium et aspernatur suscipit quas. Quos provident assumenda odio sed voluptatibus rem quia minus. Unde nobis dolorem magnam cupiditate.\n\nOmnis eveniet dolor quia eius est eos maxime. Eum repellendus voluptas enim placeat amet. Consequatur quia ut officiis qui debitis id reiciendis modi. Omnis earum autem laboriosam et officiis.\n\nEos quia et iste magnam dolor provident et. Et ut at quod voluptate quia sequi et.', 'Rigobertotown', '52895', '0-1 years', 'full-time', 'Beier-Schmidt', 'Voluptate nihil sint illum eaque. Ad ut modi corrupti est et eius. Velit aliquid rerum non pariatur autem voluptatem. Facere aut non illum.\n\nQui consequatur et nostrum. Quis accusamus pariatur eligendi eum.\n\nQuo alias voluptas sed. Aperiam et dolorem deserunt tempore totam nostrum sed molestias. Sequi libero sed amet in qui. Est harum aut dolor. Optio quia et excepturi facilis ullam omnis.', 1, 'inactive', '2024-03-08 23:52:36', '2023-07-19 18:27:36'),
(40, 'Commercial Diver', 'Blanditiis voluptates adipisci fugit. Earum minus ratione molestias id numquam. Minus sequi impedit ut eius aspernatur.\n\nCorporis culpa enim quam praesentium. Non et eum temporibus facere magni ullam. Ducimus aut nostrum voluptatibus. Ad voluptatem ducimus magnam dolore. Maiores ut voluptate voluptas sunt suscipit eum ullam.\n\nOccaecati tenetur eveniet laudantium libero sunt. Qui unde consequatur fugiat. Qui expedita quo ut rerum soluta. Sint omnis explicabo praesentium.', 'South Allan', '78569', '1-3 years', 'part-time', 'Mohr-Hirthe', 'Natus quis sint debitis non est. Dolores molestiae similique repudiandae culpa quis repudiandae deserunt. Laborum iure quasi vitae nihil recusandae consequatur excepturi. Numquam sed et aut dolor.\n\nDolor et non est deleniti quae a numquam. Molestias enim repudiandae error non praesentium vero. Et facilis consequatur minima consequuntur vero ipsum quae. Quam et temporibus dolores eos corrupti velit.\n\nBlanditiis aut est et deleniti sed. Animi dolor exercitationem labore quaerat unde. Delectus velit amet corrupti minima.', 1, 'inactive', '2023-06-22 09:18:14', '2022-07-17 09:09:53'),
(41, 'Farm and Home Management Advisor', 'Hic suscipit explicabo culpa aut fuga et earum vel. Qui tenetur fuga fugiat quos commodi corporis. Itaque eaque nam ipsum.\n\nNeque alias natus asperiores quo nesciunt ut velit. Fuga ducimus ut tempore aut asperiores quia non eveniet.\n\nNon ex perferendis voluptatem at doloribus facere. Harum voluptatem occaecati eum nesciunt itaque quidem. Harum mollitia omnis est.', 'South Joelleland', '47103', '3-5 years', 'part-time', 'Cartwright-Stiedemann', 'Eligendi molestiae aliquam rerum. Quia et neque nobis. Corporis vel reiciendis vero sit enim.\n\nBeatae aut deserunt doloribus labore debitis. Quisquam sed nobis eligendi. Corporis fugit iure corporis laudantium quod qui et. Aspernatur accusamus et exercitationem illum adipisci.\n\nSed tenetur et laborum molestias illo earum officiis dolor. Et et velit qui.', 1, 'inactive', '2022-06-21 15:47:26', '2023-05-12 20:56:54'),
(42, 'Eligibility Interviewer', 'Quasi laudantium et eius tempora quas facere. Placeat aliquid nisi corrupti. Enim consequatur hic facere similique quibusdam omnis incidunt.\n\nTempora commodi facilis molestiae ut aut qui. Sit atque nemo nulla dolor earum qui est. Molestiae eos animi perspiciatis omnis et. Velit et itaque sit quam exercitationem animi.\n\nFacilis incidunt beatae modi sed a recusandae voluptas. Consequatur fugit autem qui voluptatum. Aut architecto aut officiis tempore quam officiis. Maiores ab eius assumenda quam.', 'South Pierre', '34654', '3-5 years', 'contract', 'Wyman PLC', 'Eum autem omnis dolor corporis dolorum ipsum adipisci. Quia et et voluptatem maiores exercitationem ea nostrum. Minus quo non unde sequi. Doloribus quod dicta perspiciatis amet.\n\nSaepe qui dolorem impedit tempore omnis consequatur. Molestiae voluptatibus aperiam ut iste sapiente error. Ducimus omnis placeat ut. Dolore temporibus aut asperiores sint. Corporis omnis perferendis et aliquid est sit aut pariatur.\n\nOdio voluptas eos omnis cupiditate error reprehenderit. Eius velit et cum fugiat. Sit repudiandae dicta enim ut repudiandae quaerat. Dolor nam quo sunt enim.', 1, 'inactive', '2023-04-05 21:52:03', '2023-09-30 07:57:48'),
(43, 'Visual Designer', 'Distinctio et quaerat maxime id. Ipsa consequuntur non quia repudiandae et dignissimos autem. Aut itaque eum cumque perspiciatis magnam et quaerat. Sit ipsum id dolor et reprehenderit minima omnis eveniet.\n\nDicta dolor sit sed. Voluptas eius aut est ducimus et. Laborum aut aut nemo in corrupti aut. Itaque voluptas incidunt nemo fugiat quam magnam autem.\n\nSunt asperiores in et omnis qui asperiores. Quod aspernatur non voluptatum natus. Et ut sunt ipsa.', 'Port Carolannestad', '16934', '5+ years', 'full-time', 'Sipes, Cremin and Satterfield', 'Facere illum aliquam voluptatem enim inventore. Est odio placeat magnam possimus aperiam optio laudantium. Eius quia in praesentium ullam.\n\nCommodi et dolores ratione. Labore aut neque enim sit quaerat. Ut quas ducimus et quo sunt sed.\n\nQuos neque fuga qui ipsa aut inventore totam. Saepe libero dolor sed sit qui suscipit error.', 1, 'inactive', '2024-04-27 05:49:58', '2023-12-19 20:19:50'),
(44, 'Travel Clerk', 'Ut rerum qui porro doloremque doloremque possimus dicta blanditiis. Aut eum dolorum qui sed quisquam quos accusamus. Velit autem vel ut nobis porro labore.\n\nQuo et itaque rerum assumenda ut pariatur esse. Odio ea et molestiae aut rerum repellat. Eaque eligendi aperiam aut aut. Consectetur quas dolorum exercitationem et culpa.\n\nVoluptate quidem vitae qui alias accusantium error. Optio quos porro maiores est quae nemo. Dolore libero assumenda sed voluptatem saepe aut. Quasi et libero laborum a saepe eos.', 'Schmelerburgh', '79879', '3-5 years', 'contract', 'Pfeffer-Daugherty', 'Rem quia officia illum sit expedita. Nemo modi quo tempore laudantium neque. Enim officiis aliquid rerum veniam corporis dolores ea.\n\nAut quam autem maxime ad est in pariatur. Minus id consequatur ea voluptates. Et porro repellendus impedit deserunt provident impedit ut fugit. Iste qui nostrum provident velit dolorem. Qui sint consectetur dicta cumque qui.\n\nDebitis qui ut nemo laudantium ab. Sit necessitatibus doloremque soluta est voluptatem consectetur. Voluptas aliquid qui quis nemo provident culpa qui.', 1, 'inactive', '2023-09-05 22:17:33', '2022-11-15 20:27:36');
INSERT INTO `gigs` (`id`, `title`, `description`, `location`, `salary`, `experience`, `job_type`, `company_name`, `responsibilities`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(45, 'Paper Goods Machine Operator', 'Error et occaecati quam quia. Non autem fugiat culpa repudiandae. Corporis animi et et sed natus. Deserunt in eligendi error alias expedita enim.\n\nQuaerat et rerum fugit voluptas sed. Non error cum dignissimos officia enim. Voluptas sed necessitatibus ex aliquam saepe.\n\nDolorem ducimus numquam quasi est et et. Aut rem sed quo. Nostrum ea eaque provident aut cumque vitae.', 'Christiansenland', '7681', '0-1 years', 'part-time', 'Will LLC', 'Praesentium iure tempore tenetur accusamus molestias voluptate reiciendis. Et quia ducimus similique molestias sit perferendis. Perferendis qui et omnis similique aspernatur et quos. Quia tenetur culpa minima aliquam. Blanditiis est expedita sed autem est.\n\nQuia error quia consequatur ea excepturi incidunt. Voluptatem aut et doloremque quibusdam tempora. Consequatur sequi voluptates voluptatum quas temporibus natus corrupti.\n\nVoluptatem voluptas omnis maiores quis facilis quod. Commodi est quaerat ipsam nobis fugit tenetur. Sed ipsam numquam minima maxime ullam a dolorem libero.', 1, 'inactive', '2023-09-18 04:47:51', '2023-02-07 19:40:15'),
(46, 'Fast Food Cook', 'Alias qui hic laboriosam ullam. Vel consectetur aut sit maxime incidunt. Quia quo quibusdam doloribus ea.\n\nBlanditiis et facilis ut hic quaerat assumenda. Laudantium aut perspiciatis quaerat suscipit odit ex id ab. Officiis maxime exercitationem voluptas consequatur ratione est quam. Hic sit sed at incidunt sit.\n\nBlanditiis ut consequatur quibusdam labore. Et in id cupiditate quo. Commodi quisquam mollitia molestias.', 'West Rodrick', '7703', '3-5 years', 'contract', 'Smitham, Tillman and Ratke', 'Ut impedit amet iusto voluptatem mollitia itaque quo. Eos exercitationem cumque expedita illo exercitationem repellendus aspernatur.\n\nEt voluptates aperiam sint inventore. Ea eos tenetur labore et dignissimos repellat tempore nobis. Tenetur aspernatur dolorem repudiandae quos sint perspiciatis numquam.\n\nSed non itaque ea ratione et. Ab alias quaerat sit ea id. Molestiae et voluptatem dicta corrupti.', 1, 'inactive', '2024-01-03 00:08:19', '2022-06-12 15:38:54'),
(47, 'Scanner Operator', 'Sit ducimus provident rerum quae. Magni consequatur nam optio. Vel sit qui repellendus neque. Rerum autem aut aut dolorem perspiciatis sapiente voluptatibus.\n\nFugit nemo dicta ut illo suscipit. Pariatur dolorem alias ducimus et. Voluptatibus eos magnam eum sint nihil. Voluptas odio sed tenetur et et voluptatum omnis libero.\n\nVoluptatem sint similique similique laborum. Et reprehenderit qui eaque libero maiores. Tenetur sit esse quas facere eius optio accusamus veritatis.', 'Port Lauryfurt', '85197', '5+ years', 'part-time', 'Harber, Hegmann and Schulist', 'Quia iusto eos itaque voluptate doloribus quas. Dicta sit et explicabo quia amet tenetur earum. Voluptatem est id quos quo tenetur. In quod perspiciatis at voluptatem.\n\nPossimus aut quod enim esse quam illum. Voluptas et animi voluptatum omnis accusantium itaque nemo. Ea sit nostrum autem doloribus non.\n\nQui consequatur nisi voluptas quod magnam. Blanditiis et voluptas pariatur eius a. Quo dolor ea dolorem aut quibusdam blanditiis.', 1, 'inactive', '2024-05-10 12:03:57', '2022-08-26 09:35:48'),
(48, 'Industrial Machinery Mechanic', 'Eius cum adipisci et ipsum vel assumenda sed. Amet ratione dolorem tenetur voluptates accusamus id libero quia. Omnis fugiat odio consequuntur error et fuga non. Quaerat necessitatibus omnis rem dolorem rerum nesciunt. Magni quis ab voluptatem magnam.\n\nOfficia quaerat alias sit error delectus. Nihil hic voluptatem reprehenderit.\n\nFuga nam laboriosam aut inventore. Et mollitia dignissimos impedit eum veritatis. Blanditiis et aperiam dolorum ex. Voluptate sint ipsam ipsum sunt assumenda ea molestiae.', 'McCulloughfort', '59792', '3-5 years', 'contract', 'Sawayn PLC', 'Tenetur minus repellat corporis tempore exercitationem sed molestiae corrupti. Odit ut consequatur culpa illum iure qui. Quia qui impedit modi dolor consequatur asperiores.\n\nEa quia optio et ipsa est perferendis ratione numquam. Ut blanditiis ducimus necessitatibus nam quis voluptatem. Quibusdam consequatur consequatur provident voluptatem aut sed beatae. Similique a voluptatem dolorem enim.\n\nUt voluptate voluptate sint voluptatem non. Numquam est eum adipisci. Ipsa quia temporibus consequatur delectus voluptate voluptates earum mollitia. Veritatis corporis asperiores quas eos. Sint facere ab optio nostrum.', 1, 'inactive', '2023-01-07 18:02:47', '2022-10-03 12:08:24'),
(49, 'Economics Teacher', 'Sunt est odit qui soluta libero nemo. Quisquam est nam nihil nesciunt itaque ut. Dolores repellendus saepe enim voluptates cum. Praesentium omnis voluptatum praesentium modi.\n\nSunt illum error voluptatem perferendis. Amet voluptas animi cumque libero error porro beatae. Autem quos omnis fugiat dolores enim nostrum. Aut a nobis in qui est recusandae. Et ut dolores est.\n\nEst et quia ipsa vitae. Modi eaque pariatur tenetur ratione voluptatum laboriosam ut. Dolorem nihil voluptatum magni dolor aut. In mollitia hic perferendis ratione aut amet laboriosam.', 'Predovicport', '69806', '5+ years', 'full-time', 'Kunde, Halvorson and Greenholt', 'Doloremque vitae ea quidem. Sequi consequatur atque vel consequatur. Repudiandae asperiores et qui sit temporibus. Dignissimos rerum et sed minima blanditiis quas.\n\nQui et in et molestias optio. Quo voluptates dolorem omnis dolorem soluta non praesentium. Reiciendis nulla illum temporibus.\n\nVoluptatem laboriosam expedita laborum magni omnis id. Sit inventore dignissimos maiores qui illum quis distinctio. Provident voluptatem omnis dicta aliquid aliquam rerum.', 1, 'inactive', '2023-02-10 11:44:23', '2023-06-02 23:42:12'),
(50, 'Radio Mechanic', 'Eos ut doloremque ut ullam. Quo qui enim fugiat ipsa sit. Fugiat qui velit explicabo consequatur suscipit distinctio cupiditate.\n\nAut dolor laudantium ipsa laborum quia aut. Quo ut placeat esse. Quis animi est necessitatibus voluptas debitis. Cumque illum nesciunt et sint.\n\nConsequatur recusandae nostrum sed sit adipisci. Eligendi eligendi sed est animi nulla. Quis est saepe quia cum aperiam maxime explicabo modi. Est qui rerum quia aliquid.', 'Rutherfordbury', '88089', '5+ years', 'full-time', 'Gulgowski, Kuvalis and Glover', 'Ut nostrum et eum placeat sed autem sed. Sapiente molestias voluptas animi vitae nulla est est. Ut et consectetur doloremque non est qui amet.\n\nQui quis suscipit velit libero delectus et est. Aperiam distinctio ea est quia incidunt. Cumque iste deleniti amet assumenda rerum odio illo. Soluta qui sunt et enim ut. Laboriosam dolorem omnis et quasi labore dicta accusantium.\n\nUt nam animi qui. Similique sit quam autem aspernatur incidunt dolorem tempore et. Exercitationem est amet voluptates sint.', 1, 'inactive', '2023-07-07 22:48:25', '2023-03-24 21:20:09'),
(51, 'Precision Instrument Repairer', 'Est saepe quo sit libero quod. Explicabo totam asperiores doloribus ab soluta quos. Nostrum nemo tempore totam dolores.\n\nMaxime id sint ea ipsum sequi omnis. Sed perspiciatis aliquam consequatur recusandae aut voluptatum. Magnam et nobis quia quidem odio illum quos.\n\nCorrupti ratione ea nulla dolor vero blanditiis tenetur possimus. Placeat sunt placeat est id suscipit eveniet magni. Ipsum et in voluptatum.', 'New Adamport', '73845', '0-1 years', 'contract', 'Hintz, Stamm and Walker', 'Illo dolorem sequi quas quia aut ab ut. Recusandae excepturi beatae aut numquam rem repudiandae. Corporis animi et ullam corporis repudiandae ut. Quia ab deleniti ut itaque omnis rerum cum debitis.\n\nEt consequatur occaecati est sed ut. Fugiat mollitia ipsum eaque minus consequatur. Sequi sed qui aut consequuntur neque assumenda omnis.\n\nAt nulla sequi eos qui ut. Est deleniti recusandae cupiditate repellat. Doloremque blanditiis dolore eligendi ab molestiae. Quidem doloremque cumque eum rerum in quaerat non qui.', 1, 'inactive', '2023-06-03 11:14:24', '2023-08-29 11:14:59'),
(52, 'Marking Clerk', 'Dolores quis et quia dignissimos molestias eos. Corrupti officia unde praesentium vel et asperiores.\n\nId quod amet voluptas voluptatem vel accusantium. Dolorum qui ad voluptatibus voluptatem quis et quidem est. Delectus qui quaerat doloribus est aut et voluptatum ducimus. Optio excepturi ab commodi harum.\n\nSoluta praesentium dolore saepe tenetur temporibus aut nesciunt. Ex consequatur eum labore est dicta consequuntur aperiam. Id non ea quisquam ut ad iure. Aperiam voluptatem dolorum sint dolor voluptatem est. Et nesciunt quas molestiae sed.', 'Lake Hal', '27261', '0-1 years', 'full-time', 'Hahn-Orn', 'Deleniti est omnis atque. Nihil sed unde magnam perferendis est amet sed. At est itaque consequatur dignissimos nisi. Qui sunt doloribus delectus ut nobis quia.\n\nOmnis corrupti est dolores consequatur nisi accusantium ut. Iusto voluptatem omnis et repellendus numquam necessitatibus. Aut qui id earum eveniet.\n\nOmnis atque nobis cumque molestias aut. Quas in maiores totam delectus. Rerum nostrum et corporis nihil reiciendis. Magni illum dicta voluptas nobis impedit.', 1, 'inactive', '2023-05-06 17:22:45', '2023-05-30 21:49:06'),
(53, 'Electrotyper', 'Sed nobis in ipsa vitae omnis. Et vel velit rerum totam ex. Nisi ut et magni tempora. Reprehenderit magni voluptatem sequi ducimus illum sed.\n\nVoluptas natus hic nesciunt accusamus. Distinctio delectus dolorem aut pariatur rerum. Et in tempora a ratione sint et.\n\nQuos cumque quasi inventore reiciendis. Magnam ducimus dicta iste qui repudiandae ipsam qui maxime.', 'Lake Mina', '83311', '3-5 years', 'full-time', 'Mueller-Donnelly', 'Qui delectus sunt deleniti minima repudiandae rerum quia. Blanditiis possimus ad incidunt harum alias consequuntur.\n\nDolorem molestiae quas repellendus nesciunt aut. Quo et sed quia quas. Quas cumque nisi expedita nostrum hic et soluta.\n\nNihil at qui occaecati qui. Mollitia inventore neque eum maiores est. Assumenda veritatis consequuntur eveniet ad laudantium. Est ut sint saepe ratione sapiente a.', 1, 'inactive', '2023-04-26 03:25:06', '2022-09-12 12:05:23'),
(54, 'Therapist', 'Enim quo unde architecto vel. Dolorum officiis cum cum aut omnis odio officia. In dignissimos voluptas fuga harum sint. Quia unde a eum libero veniam.\n\nTotam debitis amet quia qui culpa enim expedita. Debitis voluptatem et corporis ea dolores ratione. Ea pariatur minima ea libero. Nam voluptate modi alias. Qui tempora autem sunt facilis mollitia ut.\n\nEt expedita impedit consequatur eius. Error optio sit et a iure quae. Ut consequuntur impedit nihil neque rerum soluta.', 'East Danielamouth', '8949', '0-1 years', 'full-time', 'Boyle, Haley and Hamill', 'Provident enim doloribus ipsum ut omnis. Fugit nostrum omnis perferendis est. Quo consequatur iste consequatur minus.\n\nNobis sed deserunt consequatur odit. Exercitationem enim eius ducimus quisquam nam eveniet molestias itaque. Optio tempora quibusdam sed magnam earum laborum officiis. Dolorum dolores ut consequatur maiores quo qui.\n\nEst architecto illo possimus et beatae dolore nostrum. Qui ducimus corrupti doloremque asperiores dolores. Est inventore fugiat iste omnis atque commodi omnis fugit. Temporibus fugiat tempore adipisci amet cumque et sit nam.', 1, 'inactive', '2023-10-04 00:12:26', '2022-08-21 20:11:39'),
(55, 'Civil Drafter', 'Delectus ipsum libero voluptate aut consequatur consequatur. Sint eaque odit tempora quibusdam cumque quia. Quia distinctio aut et ex voluptatem in. Ipsa id id est corporis at animi.\n\nDolore iste illum voluptatem aut deleniti repellat magni molestias. Id tenetur excepturi sequi consequatur sunt sit.\n\nEst esse voluptatem alias voluptas sit. Magnam vero inventore voluptates asperiores. Deserunt earum ipsum veniam quia culpa aut dolor. Doloribus nisi in aut est sed fuga autem. Voluptatem provident recusandae explicabo dicta.', 'Hintzchester', '63320', '5+ years', 'full-time', 'Doyle PLC', 'Hic omnis et omnis et. Recusandae et magni quia enim quia voluptatibus. Temporibus itaque est enim voluptatem voluptatibus nisi delectus.\n\nBlanditiis est laudantium qui. Illo earum dolores quo dolor corporis aliquam. Commodi eum libero ut laudantium tempore iusto dolor.\n\nEst consectetur incidunt expedita aperiam. Excepturi laudantium voluptatum accusamus. Sint sit voluptas voluptatem. Dolore quis in modi aliquid. Excepturi ducimus eos est quia non.', 1, 'inactive', '2023-07-18 16:20:41', '2023-12-29 10:29:10'),
(56, 'Millwright', 'Rerum quas blanditiis qui magnam quibusdam rerum ea. Dolor qui expedita distinctio qui. Est illum voluptatem aut ut. Quibusdam quo quia animi.\n\nVoluptatem debitis et qui ipsam saepe. Voluptatibus facilis nisi consectetur dolorem cupiditate aspernatur molestiae. Earum odio iure possimus cumque vero enim iste. Adipisci eum aut aperiam nobis iusto.\n\nIpsam quae temporibus omnis sit nam qui. Officiis neque quas rerum fugiat. Consequatur ut ut porro incidunt autem pariatur minus. Eos optio sit voluptatem voluptatibus.', 'North Elianborough', '79163', '0-1 years', 'part-time', 'Tromp PLC', 'Assumenda eum quia ex dolor eveniet. Dignissimos rerum consectetur consequatur qui aut perspiciatis dolorem. Ut saepe quibusdam quo necessitatibus quo modi aut.\n\nExplicabo in nam tempore ullam adipisci reprehenderit doloribus. Suscipit dignissimos sint aut adipisci earum. Quis et perferendis voluptatem aliquam est vel. Quia ut enim sed.\n\nSequi illum libero ut ad. Placeat natus suscipit et id ducimus et necessitatibus dignissimos. Eveniet quibusdam quia et animi quis eum. Suscipit ipsam id aut totam dicta.', 1, 'inactive', '2023-04-07 04:16:21', '2022-12-11 03:09:31'),
(57, 'Product Safety Engineer', 'Quo delectus maxime officiis sit dolores voluptatum. Eius dolor maxime in ex dolore dolorem. Culpa facere commodi saepe vel qui quam. Ullam facere veritatis iste nobis veniam.\n\nVel nesciunt ut molestiae est itaque debitis. Excepturi a dolores vel. Magni quis tempora quae.\n\nImpedit qui maxime ut enim tempora et. Molestiae impedit temporibus esse ipsa quis qui. Ipsam mollitia cum qui mollitia libero. Labore in iure aut qui saepe.', 'Port Tianaton', '5720', '1-3 years', 'contract', 'Padberg, Willms and Ritchie', 'Molestiae rem rerum ipsa alias doloremque facilis minus libero. Quia rerum nihil quidem qui dolor a autem. Quidem sit quam nesciunt veniam.\n\nHarum repellat porro perferendis recusandae atque. Ducimus aspernatur nisi neque non ullam recusandae facere. Accusantium voluptatem voluptatem quidem deleniti. Fuga quod et dolor odit vel in ducimus. Illum nam dolores praesentium facilis.\n\nQuia perferendis est numquam distinctio aut impedit. Dignissimos blanditiis dolorum necessitatibus quibusdam accusamus doloremque voluptate sit. Dolores soluta ex corporis sit.', 1, 'inactive', '2022-08-24 07:04:28', '2023-04-19 13:37:04'),
(58, 'Job Printer', 'Delectus ut a odio id placeat. Consequatur perferendis voluptas quasi. Assumenda veritatis porro debitis assumenda voluptatibus. Voluptates nemo est veritatis veniam accusantium quibusdam quia.\n\nSaepe vitae consectetur ea qui nesciunt perferendis. Velit neque omnis vitae consequatur fugit. Nostrum beatae debitis natus suscipit ut ex id.\n\nDolores sint reprehenderit vel voluptatibus. Inventore dolores est nobis voluptas ut. Sit quia eum sed.', 'Candiceburgh', '70415', '3-5 years', 'contract', 'Stracke, VonRueden and Hill', 'Quibusdam sequi a soluta est. Quis saepe neque voluptatibus amet eaque. Consectetur sequi quis aspernatur laboriosam repellendus nisi.\n\nConsequatur quasi placeat quidem possimus sint sint sed. Nihil corporis et corporis facere quod et cum.\n\nQuia et vel perspiciatis tempore iure voluptas harum. Culpa eveniet nihil nesciunt omnis laboriosam. Molestiae voluptatem quia aspernatur non sunt laborum ut harum.', 1, 'inactive', '2023-04-17 19:11:32', '2023-07-24 16:25:25'),
(59, 'Administrative Law Judge', 'Sequi rerum harum tempore accusamus rerum incidunt est. Dolorum repellat iste magnam est veniam quaerat architecto repellendus. Culpa tempore et ea impedit. Autem et iure nihil corporis quo sunt sit.\n\nQuo sint sapiente animi alias architecto. Laboriosam porro a repellat nam omnis aut dolorem rerum. Sunt quod quo iusto quos ut autem. Doloremque et unde ipsam aut nesciunt enim aut. Qui sapiente rerum fugit perspiciatis delectus.\n\nSuscipit dicta dolores non est. Omnis architecto vitae culpa et eum. Voluptatem qui optio dolorem sint ut illo aperiam voluptatem. Expedita rem at maxime dolores aliquid exercitationem nesciunt.', 'East Ahmadport', '70976', '1-3 years', 'contract', 'Pacocha-D\'Amore', 'Nihil at voluptatum corporis eius modi. Dolores magnam aliquam recusandae ut non quae ea. Voluptas est odit asperiores id eius quo laudantium. Voluptatibus non quasi nobis ut qui reiciendis.\n\nEt minus quisquam qui odit rem. Sint sapiente fugit qui repudiandae. Officiis quo minus ratione optio voluptatem ipsam.\n\nQuo velit repudiandae est debitis. Ut quos voluptatibus eum deleniti minus. Et quia quasi error rerum aspernatur. Sit rerum et aut. Cumque et consequuntur rerum sapiente.', 1, 'inactive', '2024-03-20 11:58:55', '2023-05-11 07:51:44'),
(60, 'Bailiff', 'Laudantium et in natus alias sunt omnis. Ad molestiae velit ex qui quia placeat debitis. Ut id saepe a ut. Id quia voluptatibus cumque molestiae est. Quas incidunt hic saepe animi repellendus voluptatum.\n\nEa id nam et. Illum dolores quibusdam voluptatem est nesciunt in assumenda. Assumenda dolorem reprehenderit vel tempora provident tempora ab. Eaque deserunt qui repudiandae dolore reprehenderit adipisci.\n\nIllo culpa modi blanditiis repellendus recusandae esse. Sit numquam asperiores possimus suscipit nisi ut tempore voluptatem. Blanditiis vel et atque quia totam eos eos.', 'Maxton', '95613', '0-1 years', 'full-time', 'Kshlerin, D\'Amore and Schaefer', 'Sit exercitationem voluptas quia non ipsa. Voluptates laudantium assumenda nemo. Alias ut in impedit repellat.\n\nImpedit odio fugiat ut ducimus iste alias. Omnis modi consequatur facere.\n\nUt vel alias aut architecto ex ducimus voluptas. Amet rerum similique est unde et est. Aspernatur aut temporibus vel quis. Id non incidunt et voluptatum suscipit doloremque.', 1, 'inactive', '2023-07-21 05:39:27', '2023-08-01 07:40:45'),
(61, 'Movers', 'Itaque qui unde aut id sunt enim et quis. At quia quisquam occaecati minus soluta facere adipisci. Nostrum vel sed id libero repudiandae dolor. Sapiente aspernatur beatae eligendi distinctio qui provident aut et.\n\nMinus nostrum placeat officiis est porro recusandae assumenda facilis. In ut voluptate ut itaque aut aut voluptatibus. Animi aspernatur quis dolorem dolor velit et libero.\n\nAliquam et temporibus nisi. Quo iure pariatur qui et. Fugiat velit odit quisquam aut placeat minima occaecati. Aut ut tenetur magni explicabo voluptatem.', 'South Ellenside', '85522', '3-5 years', 'part-time', 'Koelpin, Roob and Tromp', 'Est non sint animi. Minima rerum sapiente nemo in eveniet hic non. Ipsam quam ipsam amet voluptatem facilis in error. Sit porro dolor harum omnis eius.\n\nNostrum quidem sunt dolorum in et. Aliquid beatae et corrupti et natus nostrum perspiciatis. Nemo veritatis adipisci sint expedita animi.\n\nRepudiandae laudantium labore et eius quod. Voluptatem quidem excepturi a voluptates qui. Illum excepturi deleniti qui consequatur. Reprehenderit rerum impedit et quia.', 1, 'inactive', '2023-12-05 06:29:39', '2022-11-05 21:33:55'),
(62, 'Council', 'Facilis et autem iste vel ducimus expedita et. Est maiores iusto laudantium provident illo ut iure quaerat. Animi repellendus sit accusamus iure porro provident.\n\nFuga beatae est et quis itaque. Ut esse error facere sunt nobis. Et eius voluptatem atque non sed excepturi quis pariatur.\n\nNatus rerum magni facilis. Recusandae soluta sapiente molestiae error. Qui doloremque voluptatem ipsam commodi natus. Nam nisi omnis voluptatem nam. Vel eius adipisci magnam inventore eum iusto.', 'Lake Lomabury', '29738', '1-3 years', 'part-time', 'Howe-Rohan', 'Ea fugiat voluptatibus aut incidunt cupiditate. Est aut non nostrum sed. Deleniti iste quaerat debitis inventore.\n\nAut libero blanditiis est illum nesciunt. Animi nobis facere et magnam. Ipsum doloribus aperiam cum earum aperiam ipsam. Et nemo voluptas ea harum consequatur animi. Vel assumenda perspiciatis ipsum tenetur totam saepe ipsa.\n\nEt autem labore et accusamus animi. Repudiandae et architecto illo unde provident.', 1, 'inactive', '2024-02-22 17:51:45', '2023-03-14 19:59:47'),
(63, 'Boat Builder and Shipwright', 'At repellat delectus amet dolores. Voluptas provident qui quas maxime eum aliquam. Libero autem quam sed recusandae ea totam porro. Rem maiores neque molestiae temporibus omnis.\n\nQui voluptatem sed rerum tempore sit. Consequuntur voluptatem numquam sit corrupti. Architecto accusantium mollitia dignissimos culpa modi. Placeat nisi non aliquam sed sequi quaerat et voluptatem.\n\nDolores autem tempore tempore eos velit. Tempora non nihil quibusdam voluptatem. Eveniet repellendus et nihil.', 'Chaddport', '96717', '3-5 years', 'contract', 'Hilpert Ltd', 'Blanditiis doloremque fugit dolor hic reiciendis quasi amet. Assumenda ad sed velit quos fuga consequatur.\n\nArchitecto assumenda ipsa in enim dicta odit voluptatem. Aut quisquam perspiciatis ut dolor laboriosam consequatur eligendi. Neque natus et voluptas molestiae ea enim. In tempora praesentium at.\n\nNisi officia molestiae accusantium aliquid laudantium. Debitis reiciendis sed numquam rerum. Numquam vero veritatis sed nisi. Laborum voluptatibus quia et non enim placeat nesciunt ut.', 1, 'inactive', '2023-09-27 05:13:10', '2024-04-28 06:13:21'),
(64, 'Editor', 'Eum tenetur officiis maiores adipisci et velit tenetur. Laboriosam dolorem consequatur necessitatibus magnam quo iste doloribus. Repudiandae vel perspiciatis assumenda unde. Facere maiores saepe accusamus nemo autem. Maiores id perspiciatis enim eum tempora vero quo.\n\nVoluptatem sunt quidem quas officia quia eveniet assumenda alias. Necessitatibus velit ut ut voluptatibus. Voluptatem nulla alias id ea.\n\nEius saepe soluta eius facere voluptas voluptatibus labore. Maiores quasi aliquid animi. Quo animi officia quod placeat.', 'Dietrichborough', '47171', '5+ years', 'full-time', 'Rutherford PLC', 'Et voluptatem id ut. Rerum quia accusantium fuga voluptatibus consequatur. Est vero officiis incidunt nam omnis.\n\nFuga dignissimos cupiditate error labore dolore. Iusto id quaerat eius voluptate magni repellendus cupiditate. Debitis quisquam sunt debitis deserunt porro. Est qui laborum beatae debitis autem qui sed.\n\nInventore modi alias quis accusamus tenetur et. Nobis sed officiis nemo minus. Vero neque ipsam molestiae dolorem et atque.', 1, 'inactive', '2023-01-03 22:04:33', '2023-02-28 15:03:31'),
(65, 'Armored Assault Vehicle Officer', 'Soluta repellendus autem nostrum aliquid rerum sequi rerum. Qui ea earum non sint enim dolores. Qui et voluptate qui aut dolor tenetur eos quaerat.\n\nProvident consequatur sint vitae porro omnis iste. Ex cum temporibus voluptates nobis culpa aut. Incidunt facilis dolores qui est voluptatem quis.\n\nQuia odit provident iste officiis animi et et ea. Odit et nostrum repellendus iure sit accusantium. Exercitationem occaecati ipsum repudiandae non illo odit. Nam id et error a.', 'North Rosefort', '73862', '0-1 years', 'full-time', 'Weissnat and Sons', 'Et culpa ex sit. Ea quis inventore ullam temporibus est distinctio repellat. Quos quis omnis ratione ipsam molestiae nihil. Aut dolores voluptatibus ut asperiores molestiae facere voluptatibus. Sequi facilis quia sed nam natus id aut.\n\nNeque voluptates adipisci laboriosam cum velit enim assumenda. Maxime suscipit ut suscipit minima temporibus iste asperiores. Rerum ullam accusantium nisi. Eaque et perspiciatis qui temporibus.\n\nSoluta necessitatibus in voluptatem sit dolores. Blanditiis debitis commodi rerum in blanditiis hic. Dolores et accusamus autem sequi natus ipsum voluptates.', 1, 'inactive', '2024-05-15 09:49:01', '2023-07-13 08:30:32'),
(66, 'Landscaping', 'Laborum qui dignissimos odit sunt quod. Voluptas error quaerat quis consequatur in exercitationem quia. Cum corporis est eligendi modi sit consectetur pariatur.\n\nEst alias incidunt maiores sapiente sit excepturi excepturi. Qui est et totam asperiores quo doloribus. Iusto ea vel praesentium fugiat non dolor. Ut facilis consectetur consequuntur nobis.\n\nCupiditate id vel et maxime dicta. A corrupti commodi ut et temporibus saepe ratione. Iure deserunt tempora eveniet architecto eum blanditiis inventore.', 'Lake Christianstad', '68957', '3-5 years', 'contract', 'Hilpert-Huels', 'Non rerum eum enim eligendi nobis aut. Accusamus rerum earum sunt. Tempora optio consequatur tempore sint dolor delectus. Ea sit qui dolores delectus sit qui.\n\nQuia odio id eligendi totam modi excepturi voluptas. Eos molestiae delectus asperiores ut animi. Earum recusandae voluptas ut corrupti ut eos tempore. Tempore consectetur minima facere nihil. Atque impedit tenetur delectus doloribus.\n\nRatione omnis sunt incidunt et et neque. At omnis magnam et. Sed qui nesciunt voluptas qui perferendis non corrupti. Sunt deleniti aut rerum assumenda qui sint mollitia. Excepturi aliquid adipisci magni qui ut.', 1, 'inactive', '2023-02-28 09:49:00', '2023-07-22 10:44:39'),
(67, 'Secondary School Teacher', 'Ut quo sed aut dicta explicabo quo dicta est. Aspernatur dolores ut et similique non velit. Expedita et quaerat architecto nulla itaque ut esse. Non aut ut veritatis harum qui ea. Occaecati at natus alias.\n\nQuo ullam voluptatem eius. Ut adipisci mollitia sit nostrum minima. Cupiditate ut architecto rerum eligendi voluptas sunt. Quia ut earum officia.\n\nCumque ut ab veniam odio labore exercitationem. Eum quis eligendi ex eos. Ut enim fuga aliquam ipsum occaecati dolor.', 'Altenwerthberg', '68221', '5+ years', 'contract', 'Kulas, Waelchi and Rempel', 'Officiis cum qui quas consequatur voluptatem. Sit laborum eius corporis. Commodi maiores quibusdam velit qui doloremque.\n\nIn voluptatum quisquam sunt vel. Earum odio enim laudantium voluptas architecto enim ea aut. Dolores aut aperiam eius porro quos nisi. Placeat voluptates provident tenetur corporis.\n\nCorrupti quisquam est est nisi quia saepe omnis molestias. Ad quos reiciendis adipisci voluptatum sed exercitationem qui.', 1, 'inactive', '2023-04-16 21:54:43', '2023-08-07 17:08:10'),
(68, 'Electrical Engineer', 'Mollitia deleniti nulla quisquam occaecati. Qui est modi cupiditate nostrum architecto inventore est. Vitae eligendi minima aut nisi aperiam aspernatur reprehenderit.\n\nAb iste qui laudantium illo. Qui accusamus quas quasi qui et et. Voluptatem dolores consequatur qui est eos laborum deserunt. Sapiente culpa et fugit ullam cum cupiditate aut.\n\nPossimus earum numquam inventore quo. Voluptas quas aut cupiditate. Voluptatem impedit dicta quidem suscipit nulla.', 'East Walton', '41813', '3-5 years', 'full-time', 'Bode-Kuhn', 'Nihil maiores sit voluptatem eos sed adipisci. Voluptatum officia quos quia quisquam amet ipsam. Enim quibusdam libero nemo nemo deleniti qui occaecati.\n\nSimilique quibusdam et quae nisi labore. Repellendus qui est eum voluptatibus. Illum temporibus et in veniam autem ex.\n\nQuia et aut repellat minus. Id ut ad magni esse sunt. Hic sed sequi pariatur dicta recusandae itaque ipsam.', 1, 'inactive', '2023-04-15 04:00:28', '2023-05-24 18:03:33'),
(69, 'Bindery Worker', 'Architecto molestias cupiditate aperiam voluptas laboriosam. Expedita nemo harum illo labore. Expedita et ratione quaerat qui. Deleniti eveniet ut itaque aut inventore animi officia.\n\nQuo voluptatem excepturi blanditiis quae dolor. In ea qui iste quae rem.\n\nQuo deserunt distinctio amet accusamus vel adipisci. Possimus quidem temporibus optio magni qui quos. Et expedita repellendus odit voluptatem voluptate exercitationem molestias.', 'O\'Konberg', '48804', '5+ years', 'contract', 'Waters, Ward and Langworth', 'Excepturi fuga dignissimos perspiciatis impedit. Et iure aut pariatur est quia velit rerum. Consequuntur repudiandae est nemo architecto adipisci. Voluptatibus animi unde dicta quibusdam omnis omnis quisquam. Dolorem sit esse architecto beatae voluptas.\n\nEt assumenda sit nulla voluptatem itaque. Voluptates rerum repudiandae et aliquid. Ut placeat nihil velit molestiae est quibusdam. Vel ullam sed repudiandae quibusdam et est sit.\n\nDignissimos autem voluptatem culpa omnis explicabo. Reiciendis alias soluta labore. Id sequi fugiat non voluptas quas.', 1, 'inactive', '2023-01-03 00:22:41', '2022-08-01 17:17:34'),
(70, 'Manager', 'Asperiores est quas aspernatur non. Adipisci voluptatem eligendi quod optio ut. Molestiae dolorum qui reiciendis.\n\nNon ex sit voluptatibus dolores est. Perspiciatis placeat et voluptas dolores excepturi alias dolor. Beatae reiciendis tempore aliquam.\n\nAut ipsa accusantium error nihil laboriosam ipsum. Minus explicabo atque iure fuga. Porro necessitatibus amet consequuntur ut ratione.', 'North Cesarport', '86123', '0-1 years', 'part-time', 'Haley-Lueilwitz', 'Facilis quisquam dignissimos in itaque. Illo quis quis maxime est. Rerum fugit minus consequuntur culpa qui laboriosam ad.\n\nEsse quia labore perferendis vero laboriosam quia. Est blanditiis soluta voluptas labore odio praesentium in natus. Aut in inventore cupiditate harum sequi fugit voluptates.\n\nEa sint aspernatur velit qui hic corporis nihil. Quos amet quo voluptatibus quibusdam ut ut. Quo placeat natus ut non.', 1, 'inactive', '2023-04-27 17:26:51', '2023-04-22 16:39:22'),
(71, 'Social and Human Service Assistant', 'Deserunt est ad corrupti quod. Dicta sequi voluptates laborum error molestiae quisquam. Voluptatem quae consequuntur expedita impedit aut eos ad. Aut non sint enim dolorem quis. Aut fugiat et in doloribus voluptatem quae.\n\nEt maxime quibusdam et ea dignissimos. Aut maiores natus eos explicabo. Id aut delectus voluptatum minima sequi. Aut ipsa veritatis eligendi vel accusamus totam est. Dolor excepturi velit libero id qui.\n\nQuisquam voluptates quaerat est deleniti ea in. Qui non et mollitia quia asperiores qui adipisci. Tempora est sint est.', 'South Jacintheberg', '76901', '1-3 years', 'part-time', 'Schulist-Boehm', 'Est natus assumenda cumque rerum voluptatem nostrum. Quo nostrum aut molestias. Eum in facilis error doloremque nihil perferendis. Ex cupiditate repellat qui quis aut.\n\nIllum et distinctio et quae non dicta tempora. Quasi reprehenderit sapiente dolorem harum sint ratione provident.\n\nAut vitae qui facere aut dignissimos. Voluptates omnis excepturi dolorem voluptas numquam consequatur alias. Expedita tempore quo perferendis aut voluptas. Maiores numquam est similique autem fugiat. Perferendis inventore quod mollitia libero est praesentium.', 1, 'inactive', '2023-03-11 17:07:11', '2022-08-23 20:06:45'),
(72, 'Special Education Teacher', 'Eaque aperiam sequi rerum quod eum. Nulla aliquid odit facilis saepe iure. Commodi sit quibusdam architecto earum quibusdam laborum.\n\nOdit a accusantium rerum. Quasi aliquam et quis eligendi enim.\n\nMaiores tempora ut harum. Adipisci voluptatum excepturi minima facilis impedit ut rem. Fugit cumque atque perferendis totam modi et voluptatum esse. Voluptatem natus autem voluptatum earum inventore. Perferendis nobis ut qui non est et.', 'Ziemannshire', '42228', '5+ years', 'full-time', 'Torp Ltd', 'Est eveniet aut consequatur. Quidem nisi aut quo qui aliquam est. Illum corporis aperiam possimus quia qui nostrum quaerat temporibus. Magni et rerum dolor asperiores ipsum aut exercitationem.\n\nTotam expedita tempora dolore cupiditate. Ea atque consequuntur explicabo officia est adipisci fugit.\n\nConsectetur amet aut veritatis tenetur qui. Culpa iste aut explicabo deserunt deserunt. Rerum quisquam repellat enim aliquam assumenda. Ipsum odit aliquam numquam tempore et alias.', 1, 'inactive', '2023-01-15 19:51:10', '2024-05-17 04:45:24'),
(73, 'Petroleum Technician', 'Incidunt eaque voluptas ea nihil eos quibusdam voluptatem. Nihil ipsum aut repellat similique. Ipsam eligendi dolorem et veritatis et consequatur. Soluta molestiae quo quia debitis quia aut.\n\nQuo tempora eos voluptas sint iste deleniti. Recusandae ab minima ut. Odio rerum consequatur laboriosam exercitationem. Qui modi autem explicabo quia ullam.\n\nExpedita molestiae illum consequatur placeat sed. Sit et consequatur eum enim fugiat pariatur. Id similique ut quidem numquam consequatur rerum. Nulla quae eos molestiae et voluptas sit deserunt reprehenderit.', 'East Courtneyton', '84337', '1-3 years', 'contract', 'Mayert-Denesik', 'Accusantium voluptates eum eos vitae sed. Aut est tenetur dolor eveniet voluptatibus. Architecto aut non placeat eaque fuga reiciendis architecto. Veritatis fuga voluptatum repudiandae illum.\n\nSit in dolor voluptates ipsam nulla et quia molestiae. Sed qui culpa placeat iusto. Rerum accusamus fuga vero accusamus illo vero. Cupiditate mollitia accusantium dignissimos voluptas maxime earum.\n\nMollitia et et ullam quia ut unde. Blanditiis sequi placeat architecto fugit odit praesentium reprehenderit hic. Mollitia nisi sed et atque sunt est sit.', 1, 'inactive', '2023-09-01 17:28:41', '2023-03-17 06:01:29'),
(74, 'Auditor', 'Explicabo modi perferendis sit quisquam libero inventore asperiores. Sit sed ipsum ea adipisci. Id aut ut dolorem in nam. Dolores aut blanditiis nam eligendi quae quos.\n\nFacere eveniet temporibus inventore non nobis sunt. Voluptatem qui porro vel. Consequatur ut et magni id rerum in.\n\nMagnam nesciunt pariatur fugiat illo eaque magni doloribus. Velit id omnis officia doloremque tempora ipsam ullam. Blanditiis beatae labore amet corporis molestias iusto. Ut natus eum non eaque non possimus.', 'Ollieland', '17408', '1-3 years', 'full-time', 'Watsica, Jacobi and Ferry', 'Et sequi perspiciatis doloremque distinctio fugiat. Ullam consequuntur vel voluptate totam. Quaerat corporis omnis et. Doloremque rem voluptas aliquid qui neque est. In vel quia veritatis aut.\n\nOmnis quos dolores soluta fugit esse non. Iure quo nulla similique eum quaerat qui rerum. In rerum est ducimus tempora aut. Et architecto quas velit aspernatur fugit.\n\nAdipisci dolor est at optio. Veniam aut neque omnis dolore ipsum hic aut. Cum est aut sint assumenda. Quo itaque voluptas eaque.', 1, 'inactive', '2023-06-03 02:26:09', '2024-02-06 06:59:19'),
(75, 'Business Development Manager', 'Quos maiores voluptatum est dolor fugit. Et et excepturi cumque earum temporibus. Qui possimus nihil reprehenderit occaecati. Rerum placeat velit in et aut consequatur.\n\nIn commodi quia voluptatem provident unde iure natus. Consequatur saepe quasi recusandae dicta eum laborum. Impedit placeat quam qui assumenda dolorem. Ex provident et ut beatae nulla ab iste aliquid.\n\nNulla et consequatur id in. Nostrum ducimus et adipisci est. Molestiae doloremque voluptatem nemo et ut illum sit.', 'North Raven', '90046', '5+ years', 'contract', 'Ferry-Schinner', 'Et amet numquam temporibus omnis blanditiis architecto. Error est expedita quia nisi eaque molestiae et quod. Neque sunt non sunt voluptatem ab.\n\nQuo odio iure recusandae. Sed ut provident vitae dolor ipsum ut nemo quidem.\n\nIusto expedita deleniti error tempore ea voluptatem commodi necessitatibus. Pariatur adipisci ea illum sit minus optio. Qui nisi molestiae beatae alias dolor. Dolorum temporibus soluta eaque vero eveniet. Iusto ipsa non sint qui non nostrum quod.', 1, 'inactive', '2023-10-12 01:10:20', '2022-08-22 21:34:39'),
(76, 'Fire Inspector', 'Ut qui ut illo rem autem. Hic modi facilis pariatur tenetur velit consectetur praesentium. Qui qui maxime itaque sed voluptas est et. Et aspernatur ad impedit necessitatibus libero.\n\nMagnam non sunt eum quam dolorem. Rerum unde nemo sed sint consequatur laboriosam sed earum.\n\nUt tempora sint qui sit et. Adipisci quasi omnis non. Quisquam enim amet non. Qui molestiae eligendi minima doloremque maiores. Laborum sit laboriosam a aut cum minus.', 'Emieton', '36622', '3-5 years', 'contract', 'Schamberger, Funk and Abshire', 'Voluptas doloremque magni voluptas necessitatibus. Voluptatem nam molestiae et magnam voluptas mollitia quae adipisci. Aliquid sit quia ut sint itaque molestias.\n\nSit fuga aut incidunt. Et ab aperiam id sint officia officiis nihil. Ad ut numquam quos repellat rem.\n\nRepellat rerum accusamus earum sit culpa nostrum amet et. Iusto est nihil recusandae et deleniti iure.', 1, 'inactive', '2022-09-03 05:35:33', '2023-02-12 08:14:23'),
(77, 'Council', 'Placeat ipsam voluptatem omnis atque aliquam voluptas perspiciatis qui. Est omnis doloribus ex id sapiente repellendus. Laboriosam quas earum consequatur ipsum doloremque. Eos atque nostrum sed quis ullam ratione facere.\n\nEum quia sit sit maiores aliquam quisquam quos. Aliquid deleniti ab fuga architecto dignissimos aut qui. Aliquid delectus iusto vero laboriosam.\n\nQuibusdam eum omnis sit illo aliquam adipisci. Vitae quod placeat voluptas. A unde qui explicabo unde possimus.', 'Port Gavin', '53784', '5+ years', 'part-time', 'Casper, Schultz and Green', 'Quidem dolorum et omnis voluptatum deserunt. Atque rerum repellendus sint cupiditate. Quas mollitia nisi eaque dolor laboriosam consequatur et ut. Quam rerum qui iste quia sunt necessitatibus.\n\nIpsam laborum harum iure quasi quia labore et. Fugiat error beatae sit veniam ut. Et culpa nesciunt porro quo et.\n\nFugiat vitae aut veritatis numquam quisquam. Eligendi nostrum magni ut soluta laborum nulla quae. Laborum molestiae voluptates dolore id exercitationem sunt. Accusamus accusantium nemo autem cumque ea officia exercitationem.', 1, 'inactive', '2023-10-12 13:13:59', '2023-09-20 10:34:56'),
(78, 'Photoengraver', 'Et possimus magnam et. Sint eos temporibus dignissimos sed. Qui id quidem aut. Rem explicabo voluptas dicta libero fugiat suscipit eius.\n\nAnimi voluptatum reprehenderit et ullam et. Ut neque est facilis omnis. Nobis in placeat et modi vel facere.\n\nUt voluptas quia harum omnis. Officiis ut autem libero reprehenderit est et aut inventore. Voluptate eligendi eius quasi labore.', 'New Edenburgh', '10679', '3-5 years', 'part-time', 'Kshlerin-Crist', 'Dolores omnis aut est eos consequatur necessitatibus. Et minus et impedit odit repellat perspiciatis amet. Velit adipisci sit ut praesentium repudiandae. Et quas reprehenderit saepe ad accusantium molestiae.\n\nModi perspiciatis omnis nostrum beatae non reiciendis ad. Ut rem quisquam odio laborum excepturi.\n\nIn cum veritatis et accusantium. Quas omnis est vel facilis. Cupiditate accusantium est ab dolore. Ad debitis ducimus quia.', 1, 'inactive', '2023-10-07 22:31:53', '2023-11-25 09:13:15'),
(79, 'Electronic Engineering Technician', 'Voluptas sint ut mollitia laboriosam id quidem. Nulla minima sit sunt. Sed et porro cupiditate qui voluptas similique debitis.\n\nQuia voluptatem nemo velit omnis. Eos magni itaque quidem quae porro et. Nihil eos doloremque laudantium magni.\n\nQuidem quo molestiae ullam doloremque quasi sapiente fugit optio. Incidunt ex quia rerum laboriosam voluptate enim facilis. Tenetur eius aut culpa consequatur sed est.', 'South Angus', '20026', '0-1 years', 'contract', 'Abbott, Kuhn and Volkman', 'Fugit eius atque libero nulla sit asperiores quos. Fuga asperiores placeat sunt consequatur accusamus ut explicabo. Suscipit est voluptas adipisci sunt expedita dolorem.\n\nEum atque aut id optio voluptatem vel consequatur tenetur. Autem non impedit voluptatibus et veniam itaque sit. Quae odit cumque quasi in nostrum enim eveniet. Atque ea tempora in quia earum ex. Eveniet quod voluptate alias molestiae debitis et esse.\n\nMolestiae qui quidem et unde ad dolor praesentium odit. Consequuntur et minus quo sit. Voluptate qui hic aperiam quo corporis. Facilis ut pariatur repellat ab.', 1, 'inactive', '2022-09-11 11:29:43', '2022-10-16 21:31:29'),
(80, 'Library Technician', 'Enim ut molestias delectus culpa qui. Vitae eos possimus expedita est. Eos quae labore veritatis voluptatem doloremque. Alias pariatur ab quis fugit sint sunt.\n\nDolor et illum sed nam. Odit recusandae rerum eius. Esse quisquam et quos iste velit. Et ipsam omnis natus.\n\nNatus velit odio accusantium ipsum voluptatem corrupti dolores laborum. Eos deleniti sit dicta quo. Ducimus amet in qui. Omnis culpa rerum quia et.', 'Starkland', '36947', '3-5 years', 'part-time', 'Jakubowski-Bernhard', 'Tempore est et eos rerum. Pariatur molestiae reprehenderit distinctio vel quia iure perferendis. Qui ut aliquam nobis quia ea assumenda excepturi. Quia iusto libero atque aut. Assumenda aperiam voluptatem recusandae.\n\nSit excepturi debitis tenetur eum. Aut consectetur illo reiciendis non ad vel fuga excepturi. Numquam delectus est necessitatibus atque. Id tenetur quas natus ut omnis aut.\n\nVitae alias dicta ea ut neque. Quibusdam nemo quas vel corporis libero. Placeat deserunt quasi facere eius adipisci. Velit alias ipsa quia voluptatem consequatur.', 1, 'inactive', '2023-11-15 19:15:37', '2023-05-31 00:15:38'),
(81, 'Construction Driller', 'Asperiores omnis ut porro eaque. Sapiente quia id odio. Cumque eveniet distinctio quos est.\n\nNecessitatibus impedit repellat est quo eos. Recusandae et unde tempora neque sit. Quas sit recusandae quibusdam corrupti quibusdam voluptatem est. Perspiciatis tempore qui molestias dignissimos ab dolor.\n\nA incidunt eos amet et. Ut velit non nesciunt illo dignissimos voluptates. Distinctio architecto iure ea ipsam rerum molestiae et. Voluptas sit et cumque exercitationem animi voluptates.', 'Lolabury', '45455', '1-3 years', 'part-time', 'Heaney, Ankunding and Klocko', 'Aut et quia amet nesciunt aperiam. Quia itaque quia facere veritatis. Deserunt recusandae est aut qui.\n\nCorrupti similique deleniti repellendus doloribus aut cum ullam. Laboriosam voluptatem dolor quasi veritatis. Quibusdam quia doloremque qui recusandae quis. Repellendus aliquid officiis est exercitationem. Eos nostrum fugiat ut alias.\n\nId exercitationem ullam qui autem similique libero nobis. Ut molestias sit iusto aperiam omnis. Aut aut unde reprehenderit in tenetur voluptatem quis iste. In voluptatem atque nam accusamus omnis dolores et.', 1, 'inactive', '2024-02-21 11:59:45', '2024-03-26 21:17:17'),
(82, 'Precision Mold and Pattern Caster', 'Culpa veniam quae voluptates voluptates at. Et dolorem qui nisi. Aperiam voluptates sit consectetur deleniti.\n\nDolorem consequatur velit officia. Molestiae itaque maxime et asperiores omnis temporibus ad voluptatibus. Sed aut in laborum ratione nam unde.\n\nDolorem ut vel deserunt ex hic. Veniam ea voluptatem aspernatur qui laudantium aut eum. Distinctio est dolore quia.', 'West Yeseniaville', '19498', '0-1 years', 'part-time', 'Crona-Simonis', 'Cum quos voluptatem ipsam voluptate aut cum expedita aliquid. Et veritatis velit possimus qui libero beatae placeat. Voluptas in dolorem incidunt repellendus dolor et aut impedit. Omnis sed voluptatem quae rerum.\n\nMagnam ut iure debitis qui. Consequatur tempora id et ut corporis. Dolorum nihil corporis qui rerum. Illo iste quaerat voluptatem dolorem recusandae error quas.\n\nIste minima eveniet provident debitis soluta. Consequuntur omnis fugit consequuntur ut voluptatem molestiae deserunt. Et eligendi suscipit perferendis.', 1, 'inactive', '2023-11-12 19:26:28', '2023-03-10 07:48:59'),
(83, 'Industrial Production Manager', 'Voluptas et et qui veniam qui neque. Excepturi iusto voluptatem similique unde perferendis. Et modi at totam consequuntur hic.\n\nEarum id ducimus quis necessitatibus saepe fugit. Quis est earum ipsam minus voluptates. Quo et exercitationem neque soluta hic non.\n\nOptio iure quisquam explicabo ullam eveniet asperiores neque. Recusandae id ad est in earum ad dolor. Enim neque consequatur a non neque ex fugiat. Eligendi consectetur error nobis laboriosam odit voluptatem.', 'Port Cletuschester', '54651', '3-5 years', 'contract', 'Jakubowski, Strosin and Sawayn', 'Explicabo sit fuga dolores eos amet aspernatur. Eaque id ullam voluptatem incidunt suscipit nihil dicta quia. Rerum doloribus et sapiente quisquam asperiores iure.\n\nAut eum iure dignissimos consequatur. Quia corrupti nemo ut est. Accusantium ex soluta laudantium accusamus qui.\n\nAtque laborum natus maiores blanditiis dolor fugit deserunt. In voluptate doloribus eaque dicta dolorum dolorum. Sequi velit commodi eum reiciendis quis. Aut occaecati numquam sit odio.', 1, 'inactive', '2023-06-21 23:03:36', '2022-07-09 08:07:45'),
(84, 'Fire Inspector', 'Cumque repellat deserunt fugiat. Rerum id nisi iusto voluptatum voluptatum deleniti. Deserunt adipisci aut nam quae ipsam officia et.\n\nNisi harum impedit sint quae eligendi et quos. Adipisci ut perspiciatis facilis harum dolor et dolor.\n\nId ab excepturi dolores. Asperiores aut voluptas in vel.', 'East Haylieborough', '22337', '5+ years', 'full-time', 'Adams, Johns and Schmidt', 'Vitae optio quidem fugit numquam. Ipsam odio modi iusto et.\n\nMaxime omnis facere consequatur facere. Quasi tempore accusantium dolores. Rem placeat quidem quo sunt beatae. Omnis cum ut voluptatem voluptatibus.\n\nSed est consequatur ea est dolorem quia. Quisquam rerum repellat voluptatibus omnis. Minus dolores et consequatur culpa. A similique exercitationem non quia sequi.', 1, 'inactive', '2024-02-26 02:23:49', '2022-12-02 08:01:11'),
(85, 'Licensed Practical Nurse', 'Unde vel ducimus dolorum quam recusandae accusantium eos. Omnis molestias id dolores quaerat.\n\nProvident voluptatem expedita aperiam fugit minima. Et mollitia est ratione exercitationem debitis quo. Expedita praesentium qui consequatur quasi.\n\nNihil animi fugit dolores commodi. Quisquam nihil consequatur harum ipsam sequi omnis. Dolor dolores odit vel.', 'East Nolan', '34377', '3-5 years', 'part-time', 'Jaskolski, Kovacek and Nikolaus', 'Eum placeat omnis itaque quaerat aut ut est. Est ut reiciendis quia voluptas exercitationem dolorem illo.\n\nTempora autem qui minima dolorem. Rerum non vitae saepe expedita incidunt maxime. Porro suscipit aperiam ipsum provident qui quibusdam.\n\nSapiente nulla sed commodi eos. Minima omnis exercitationem reiciendis quia vel nulla. Qui laudantium aut sint aut modi ad rem. Adipisci qui molestias qui eum soluta temporibus.', 1, 'inactive', '2024-01-20 04:41:31', '2023-09-22 22:33:51'),
(86, 'Materials Inspector', 'Vel soluta ut consectetur est distinctio earum. Qui itaque saepe voluptatem recusandae ut error. Magni est odio ut laboriosam eos nisi aperiam et. Sunt dolores eos est voluptas enim rerum delectus nulla. Nam voluptatem dolor quis dicta voluptas.\n\nTotam impedit nostrum consectetur sunt modi consequatur ut. Itaque laudantium distinctio quasi est sit. Cupiditate aut dicta praesentium.\n\nVelit necessitatibus autem et voluptatem quae. Voluptatem dolorem quidem consequatur enim totam veniam ullam et. Aperiam ut aliquid pariatur et dolorem expedita consequatur earum.', 'Reillystad', '36280', '5+ years', 'contract', 'Skiles Inc', 'Consequatur sed et nihil qui. Repudiandae nihil suscipit voluptas rerum. Molestiae nesciunt eos earum rerum beatae.\n\nTotam qui illum optio recusandae laborum atque. Reiciendis quas quia totam incidunt quia et est. Beatae quas ea possimus sit.\n\nAt veritatis eos in laudantium tenetur voluptates explicabo. Doloremque qui vero eum quae. Suscipit exercitationem illo nisi eum. Soluta magnam soluta quo.', 1, 'inactive', '2023-08-20 03:44:24', '2023-02-10 10:13:15'),
(87, 'Forging Machine Setter', 'Ratione odio sint est atque et cupiditate vero. Ea sint odit incidunt exercitationem enim sed. Aut reiciendis iste rem expedita modi.\n\nOmnis dolorum asperiores delectus rem occaecati ut. Tempore eius molestiae quia explicabo est. Dolorem assumenda dolore similique soluta. Ut quia magni earum totam porro.\n\nVoluptatem excepturi corrupti iure quisquam accusamus repellat est. Vero corporis est perferendis. Aspernatur in amet tenetur beatae eveniet consequatur.', 'North Curtis', '77332', '3-5 years', 'contract', 'Rolfson, Douglas and O\'Hara', 'Eum magni dignissimos quasi ratione consequatur reiciendis eum consectetur. Ratione eos pariatur facere ut ipsa. Voluptas reprehenderit officiis debitis nihil atque iste et.\n\nUt ex nihil eligendi maxime quam. Tenetur qui itaque saepe.\n\nSunt et libero exercitationem aut. Minus non veritatis eveniet est error ex autem. Doloremque optio eum vel. Rerum consequatur quia ipsa qui.', 1, 'inactive', '2023-09-28 16:59:26', '2023-01-04 20:24:09'),
(88, 'Special Forces Officer', 'Et porro ad sunt beatae. Corporis repellat aut sed qui amet officiis. Debitis minima distinctio ut pariatur aut consequuntur omnis. Deleniti odio eos laudantium rerum.\n\nQuibusdam cumque expedita omnis blanditiis suscipit. Corrupti aut repellendus corrupti et veniam ratione ex. Quasi illum atque sunt et. Facilis omnis provident voluptas.\n\nFugit mollitia consequatur odio quisquam perspiciatis et. Quis debitis numquam doloremque incidunt voluptatibus animi. Harum aut quidem similique dicta earum.', 'Rowlandside', '103', '1-3 years', 'contract', 'Smith Ltd', 'Labore officiis molestias quos quia rerum sed. Dolorem illo deleniti quas rerum omnis numquam quibusdam ex. Sed eum ipsa impedit qui.\n\nEt quia temporibus optio minus quibusdam ipsam vel. Expedita quae nobis ullam quibusdam. Quidem ipsa architecto consequatur deserunt quisquam rem quidem. Occaecati ex quasi assumenda nemo.\n\nConsequatur sapiente ipsa aut architecto. Quis dolor enim et tenetur quas. Mollitia aliquid velit quibusdam nobis minima. Dolor id mollitia qui aliquam eveniet.', 1, 'inactive', '2023-03-06 17:59:05', '2023-06-11 14:00:04');
INSERT INTO `gigs` (`id`, `title`, `description`, `location`, `salary`, `experience`, `job_type`, `company_name`, `responsibilities`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(89, 'Radiologic Technologist and Technician', 'Consequatur fugiat nihil ut alias. Ratione qui harum consequatur magni. Et sunt velit enim molestiae. At modi velit atque est qui iure nam.\n\nExercitationem esse et eum inventore. Ipsum ut voluptas eligendi rerum ullam maiores corrupti. Blanditiis fuga enim consequatur et ut enim totam alias.\n\nIpsa molestias ut reiciendis in. Veritatis voluptatem id exercitationem numquam eius expedita. Occaecati illum hic quo adipisci impedit et. Esse facere ducimus rem aliquid.', 'Coleburgh', '11510', '0-1 years', 'contract', 'Muller PLC', 'Provident tempore quo dicta quo modi molestiae. Ullam qui quo nesciunt sit animi. Vitae doloremque tenetur sit eaque iure quidem.\n\nAut libero autem sed in. Ad iure occaecati officiis qui numquam neque adipisci. Modi omnis ipsum hic atque.\n\nQuaerat dolores dignissimos dicta aut quo. Rerum corrupti temporibus blanditiis neque sit delectus culpa. Omnis sit laborum aut quae voluptatem.', 1, 'inactive', '2023-05-12 19:25:13', '2023-05-29 18:37:02'),
(90, 'Aircraft Launch Specialist', 'Velit omnis mollitia excepturi nulla. Voluptatibus consequatur magnam harum est at enim. In quidem quasi quia debitis tenetur sed. Doloremque illum ducimus distinctio aut repudiandae accusamus.\n\nSunt voluptatibus vel sit. Repellendus voluptatem rerum vel qui maiores minus. Sint aut rerum ea esse sint fugit.\n\nConsequatur autem atque ex quisquam natus adipisci. Qui nam harum et voluptatum. Ut rem maxime et inventore deleniti.', 'Akeemborough', '88850', '5+ years', 'full-time', 'Ankunding-Wolf', 'Reprehenderit doloremque voluptatum ea cum iste. Odio corrupti cupiditate nihil saepe odit eius necessitatibus et. Hic cupiditate minima nesciunt.\n\nPariatur deleniti tempora qui vel soluta aut deserunt. Nulla necessitatibus totam et impedit est quisquam. Nostrum aut nihil suscipit qui nisi. Aut sapiente sapiente totam sunt molestiae nihil.\n\nNemo in ex ut molestiae et eligendi. Commodi accusantium provident magni culpa. Qui aspernatur cupiditate eum sint asperiores. Consequuntur minus quisquam voluptas numquam officiis.', 1, 'inactive', '2022-10-20 21:09:37', '2022-05-26 01:40:44'),
(91, 'Stationary Engineer', 'Quibusdam molestiae eveniet iste iste. Magnam ut est quia corrupti voluptas non eos expedita. Veritatis hic et laborum libero sit.\n\nCupiditate accusamus officia magni consequatur. Ut sed tempore dolores error in pariatur est.\n\nVoluptatem eum ratione facilis id deleniti commodi. Nobis atque ullam voluptatibus est. Quia ipsam velit beatae explicabo. Repellat consequuntur distinctio repudiandae et ea.', 'Flatleyland', '93949', '1-3 years', 'full-time', 'Hauck-Grimes', 'Nemo est est voluptas magni aperiam. Est repellendus velit voluptatum. Sit ducimus ut est officiis tempora. Reiciendis minima pariatur ducimus quidem.\n\nMinus cum esse vero similique. Laborum commodi molestiae accusamus id voluptatum cum. Quae sint cumque vero eum quidem quis nihil laudantium.\n\nVoluptas in sequi ut dolorum sint. Possimus autem sequi natus quod numquam totam ut. Doloribus cupiditate ipsum id et voluptates consequatur dolorem. Molestiae sit a ut voluptatem.', 1, 'inactive', '2023-02-25 21:33:33', '2023-08-09 19:41:17'),
(92, 'Boilermaker', 'Tempore ipsum sint quis et et. Et similique itaque iusto. Tempore id at dolor cupiditate.\n\nPossimus sed molestiae earum fugit modi neque. Necessitatibus architecto et voluptas praesentium. Numquam aut cupiditate praesentium. Sequi ea animi rerum facilis dolorem in.\n\nRecusandae asperiores vel est distinctio rerum. Expedita deleniti laudantium dolor et qui reiciendis. Et omnis repudiandae magni rem dolorem.', 'Port Samfort', '99022', '1-3 years', 'part-time', 'Reynolds, Abernathy and Schaefer', 'Tenetur totam alias molestiae quia illo dolores magnam. Voluptas earum ab et fugiat rerum. Ullam sint excepturi dignissimos quas.\n\nCulpa est alias qui et dolores. Id totam velit commodi sed earum.\n\nNulla velit mollitia eveniet quis ipsum autem. Ea sed delectus ea voluptatum ut. Et rerum nemo qui est ducimus libero voluptas. Dolores nisi dolorem rem officia sit tempora ut.', 1, 'inactive', '2023-05-03 05:55:56', '2023-12-23 23:46:29'),
(93, 'Forging Machine Setter', 'Error qui sit dolores. Maiores et neque nesciunt voluptas nisi ut.\n\nBlanditiis provident eos sequi doloremque sit praesentium sit. Iste consequatur vel eos mollitia odio vitae velit. Et sint laudantium architecto officia nihil. Debitis ipsa iste ipsa.\n\nError doloremque consequatur ea omnis aliquid. Atque temporibus omnis nihil enim aspernatur.', 'Morissetteberg', '7773', '1-3 years', 'contract', 'Bednar LLC', 'Est eius fuga ut voluptas quisquam repellendus sed. Qui tenetur pariatur et voluptates odit. Ducimus a voluptate ut ut.\n\nDignissimos sint officiis aut natus accusamus. Pariatur ducimus esse fugit. Voluptates aut est corrupti dignissimos unde. Perspiciatis ipsa et illum et.\n\nAliquam amet suscipit quasi dolores sit error ex. Ea explicabo accusamus qui iure. Ut quae et et.', 1, 'inactive', '2023-12-11 12:01:39', '2024-05-08 11:21:17'),
(94, 'Radiologic Technologist and Technician', 'Id molestiae voluptate ullam sequi rerum ea et. Rerum corrupti dolores delectus dolores. Libero dolorum numquam eveniet voluptatem quasi quas harum. Quod ut omnis ipsa quis similique quam. Dolorem illum aliquam possimus vitae eveniet aut deserunt.\n\nDucimus est sapiente nihil voluptate ut. At unde ut corporis non.\n\nEnim nobis ut nostrum hic. Quia reprehenderit ex at odit fuga error esse. Impedit ipsum non animi perspiciatis velit quasi.', 'Port Tracy', '93566', '0-1 years', 'contract', 'Kerluke LLC', 'Perferendis ut adipisci consequuntur omnis. Quas quos nihil eos eaque similique et. Voluptatibus vero beatae porro asperiores ratione error alias. Ex et dolor laboriosam consequatur perferendis.\n\nOfficia non rem consequatur hic quam. Mollitia rerum et omnis cupiditate ut qui. Dolor ad quis dolor natus cum. Nostrum maiores nesciunt voluptatem et inventore.\n\nAliquid cumque dolorem assumenda. Deleniti ut ut qui illo dicta doloremque animi. Est et cum nihil consequatur.', 1, 'inactive', '2023-07-22 03:00:53', '2022-10-30 10:19:43'),
(95, 'Network Admin OR Computer Systems Administrator', 'Quod officia esse provident laboriosam porro voluptatibus. Magnam est laudantium ad quam animi expedita. Sed non velit ducimus optio asperiores doloremque. Animi qui cum et dicta blanditiis reiciendis accusamus.\n\nQui facere sapiente voluptate eum. Et est temporibus sit pariatur. Aut consequatur molestiae distinctio velit delectus sapiente quae.\n\nNumquam unde laboriosam voluptatibus nisi cupiditate dolorem quo. Aut consequatur unde quo sequi enim fugit. Odio qui et consequatur magnam voluptatum recusandae. Eos non qui quo reiciendis.', 'South Eloise', '47745', '5+ years', 'contract', 'Schuppe, Nolan and Koss', 'Dolores et occaecati voluptatem omnis. Ut non possimus eveniet distinctio. Facere sunt voluptas vel nemo consequatur et aut. Eaque provident laudantium occaecati sint numquam.\n\nAccusantium omnis enim id qui. Quibusdam veniam culpa est porro rerum. Et nobis sed eaque aliquam error illum. Consequatur ullam magni eligendi magnam.\n\nDucimus consequatur est voluptatum illo in vero. Sit consequatur repellat quod eos quo. Corrupti eligendi libero fugiat nisi mollitia aspernatur. Nihil harum id voluptatem ab exercitationem tempore voluptatem.', 1, 'inactive', '2023-08-22 23:58:54', '2024-03-23 03:09:15'),
(96, 'Product Specialist', 'Numquam repellendus assumenda numquam fugit sed alias magni nisi. Veritatis similique sunt distinctio molestiae itaque sit. Molestias fugiat atque ipsam illo sunt enim suscipit quo. Ut iure voluptas neque.\n\nUt laboriosam ipsam vel facilis nihil. Fugit dolores iure porro cum esse commodi enim veniam. Harum aspernatur maxime accusamus enim et quo odio. Et fuga culpa voluptatem ratione et perspiciatis est cupiditate.\n\nSint vel rerum non amet ex et. Itaque saepe pariatur nobis sint voluptate expedita hic.', 'Windlerland', '76118', '3-5 years', 'contract', 'Emmerich, Donnelly and Bogisich', 'A aut occaecati non aut vel. Quia sed voluptatum modi nesciunt. Quos alias libero corrupti ut et beatae. Saepe non voluptas accusamus nesciunt consequatur aspernatur similique repellat.\n\nQui consequatur omnis debitis sit ad quia sint inventore. Illo sed neque eum est magnam. Est laborum cumque explicabo sed sunt debitis quod. Et quia ipsum eveniet harum necessitatibus ut.\n\nEveniet sint excepturi eveniet ducimus odio. Dolores ad magnam consequatur sapiente in dolores aperiam. Inventore voluptatem dolor alias porro voluptatibus.', 1, 'inactive', '2024-03-21 01:21:09', '2024-02-22 09:43:56'),
(97, 'Motor Vehicle Operator', 'Saepe ipsam ea est repellat. Necessitatibus itaque consequatur vitae excepturi voluptas minus molestias sit. Mollitia exercitationem deleniti ea harum sapiente quia qui sit. Corrupti perspiciatis voluptatem voluptas velit deserunt aliquam et. Aut iusto velit nam laboriosam.\n\nOmnis dolorem excepturi quia delectus iste qui aut. Numquam eos labore itaque. Sunt ex vitae minus ab rerum.\n\nPorro sapiente nihil rerum omnis. Voluptatum magnam autem voluptate modi vel et. Rerum assumenda vel repellat harum eum officiis.', 'Jaydeville', '47059', '0-1 years', 'part-time', 'Homenick-Pollich', 'In velit ad culpa ratione velit similique dicta. Perspiciatis et vero aut delectus natus totam magni. Laborum voluptate voluptatem animi reiciendis atque cupiditate aut amet. Iure temporibus debitis earum nulla exercitationem eum.\n\nEaque velit nemo molestias totam. Autem voluptatem est et tenetur deserunt blanditiis.\n\nAt necessitatibus quasi non ipsam. Sequi est veniam at quos illum suscipit mollitia dolores. Nihil debitis dolore ut veritatis non iste.', 1, 'inactive', '2022-11-13 06:19:08', '2023-02-03 11:24:57'),
(98, 'Fishing OR Forestry Supervisor', 'Corrupti tempora qui amet cumque quibusdam. Suscipit totam inventore aut et enim recusandae. Reiciendis harum architecto voluptas vero. Magni dignissimos voluptates ipsam libero.\n\nEa consequatur et in nostrum et fuga exercitationem id. Error necessitatibus sit et eum iure tempore. Deleniti sed possimus commodi placeat maiores. Distinctio qui illo adipisci et at dignissimos autem.\n\nVoluptas placeat atque placeat sit provident similique eum tempore. Praesentium voluptas dolore sequi dicta architecto rerum. Voluptas sit maiores mollitia. Nisi recusandae placeat tempore iste nihil. Nesciunt voluptas doloremque qui est et molestias.', 'Darronberg', '48106', '0-1 years', 'part-time', 'Pacocha LLC', 'Est voluptatibus error cum qui assumenda mollitia. Quo dignissimos et distinctio saepe ipsum aut vel aut. Eos ducimus quo eligendi ut eos nesciunt et.\n\nQui nihil consequatur ut beatae qui ut. Ducimus quod fugiat repellat quia officia et quisquam et. Adipisci delectus quo totam aut aspernatur aliquam. Pariatur enim incidunt consequatur explicabo harum laboriosam. Dolorem voluptatum reiciendis ipsam repudiandae quia dolorum.\n\nQuas saepe sit debitis itaque veniam. Fuga blanditiis itaque et fugiat reprehenderit facere. Et qui eligendi distinctio soluta similique.', 1, 'inactive', '2022-12-12 03:27:28', '2023-09-18 16:52:17'),
(99, 'Loan Officer', 'Est qui sint et et ea tempore. Voluptatibus tempore quae ipsum accusamus laboriosam vel. Quos animi doloribus tempora labore aut nulla qui.\n\nVoluptatem nihil temporibus eos sunt. Et et voluptatem possimus dolorem. Quae expedita eveniet voluptatem.\n\nCorporis autem nihil soluta vel ut sint ipsum dolor. Quia alias et esse aliquam officiis. Doloremque tenetur voluptas iure assumenda impedit consequatur itaque dolorum.', 'Marciabury', '5272', '5+ years', 'full-time', 'Heidenreich, Gleason and Von', 'Numquam consequatur consequatur et qui assumenda saepe. Ipsam optio est deserunt. Porro sint dolorem rem et laborum et molestias. Voluptates ab qui odit excepturi.\n\nPerferendis velit minus tempora accusamus doloremque qui porro. Reiciendis et repellat non porro autem. Eum consequuntur sit rem explicabo earum dolorem sint. Consequatur earum qui sed sunt delectus qui voluptatum.\n\nExpedita facilis iure adipisci. Ipsa molestias nam molestiae dolor explicabo. Numquam voluptates nihil est nostrum. Quia illum occaecati rerum tenetur voluptates maiores blanditiis dolor.', 1, 'inactive', '2023-04-30 18:36:23', '2023-11-07 15:03:25'),
(100, 'Rail Transportation Worker', 'Natus molestias voluptatem rem est. Accusantium et enim qui maxime ea aut atque.\n\nHic animi ut ea ipsa ea ut. Aut laborum cum dolore quia ea. Perspiciatis est voluptas iusto sit quia molestiae rem. Quasi quo sapiente impedit amet laborum voluptas est totam. Totam eum eaque quos ducimus totam illum voluptates.\n\nTemporibus autem nemo sed. Ipsam nobis vel temporibus voluptatem exercitationem inventore sit. Possimus ut quidem perferendis. Ullam commodi sapiente dolorum et libero voluptas. Quibusdam exercitationem similique hic nesciunt.', 'New Travishaven', '17598', '3-5 years', 'part-time', 'Haley Inc', 'Facere veniam eius facere ullam ipsam. Numquam ea et facilis in delectus enim explicabo et. Qui soluta laborum aut vero dolorem maiores.\n\nAperiam suscipit ut molestiae aliquam iure quibusdam. Consequuntur quibusdam sed ipsum assumenda labore officia minima est. Enim et et recusandae amet sed ut sequi.\n\nSuscipit incidunt labore rerum cupiditate. Iusto ad dolor voluptatum necessitatibus et aliquam ut sint. Inventore quod soluta beatae suscipit optio fuga.', 1, 'inactive', '2023-11-11 05:35:15', '2023-05-03 19:47:00'),
(101, 'Software Engineer', '<p>really job</p>', 'hyderabad', NULL, NULL, 'full-time', 'google.com', NULL, 2, 'active', '2024-05-19 09:43:46', '2024-05-19 09:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_20_085441_create_contacts_table', 1),
(5, '2024_04_20_085454_create_careers_table', 1),
(6, '2024_04_20_102235_create_gigs_table', 1),
(7, '2024_05_03_112840_create_permission_tables', 1),
(8, '2024_05_04_044937_create_settings_applications_table', 1),
(9, '2024_05_17_095915_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'can_create_permission', 'web', '2024-05-19 09:40:31', '2024-05-19 09:40:31'),
(2, 'can_view_permission', 'web', '2024-05-19 09:40:31', '2024-05-19 09:40:31'),
(3, 'can_edit_permission', 'web', '2024-05-19 09:40:32', '2024-05-19 09:40:32'),
(4, 'can_update_permission', 'web', '2024-05-19 09:40:32', '2024-05-19 09:40:32'),
(5, 'can_delete_permission', 'web', '2024-05-19 09:40:32', '2024-05-19 09:40:32'),
(6, 'can_create_role', 'web', '2024-05-19 09:40:32', '2024-05-19 09:40:32'),
(7, 'can_view_role', 'web', '2024-05-19 09:40:32', '2024-05-19 09:40:32'),
(8, 'can_edit_role', 'web', '2024-05-19 09:40:33', '2024-05-19 09:40:33'),
(9, 'can_update_role', 'web', '2024-05-19 09:40:33', '2024-05-19 09:40:33'),
(10, 'can_delete_role', 'web', '2024-05-19 09:40:33', '2024-05-19 09:40:33'),
(11, 'can_create_contact', 'web', '2024-05-19 09:40:34', '2024-05-19 09:40:34'),
(12, 'can_view_contact', 'web', '2024-05-19 09:40:34', '2024-05-19 09:40:34'),
(13, 'can_edit_contact', 'web', '2024-05-19 09:40:34', '2024-05-19 09:40:34'),
(14, 'can_update_contact', 'web', '2024-05-19 09:40:34', '2024-05-19 09:40:34'),
(15, 'can_delete_contact', 'web', '2024-05-19 09:40:34', '2024-05-19 09:40:34'),
(16, 'can_create_gig', 'web', '2024-05-19 09:40:34', '2024-05-19 09:40:34'),
(17, 'can_approve_gig', 'web', '2024-05-19 09:40:35', '2024-05-19 09:40:35'),
(18, 'can_view_gig', 'web', '2024-05-19 09:40:35', '2024-05-19 09:40:35'),
(19, 'can_view_my_gig', 'web', '2024-05-19 09:40:35', '2024-05-19 09:40:35'),
(20, 'can_delete_gig', 'web', '2024-05-19 09:40:35', '2024-05-19 09:40:35'),
(21, 'can_update_gig', 'web', '2024-05-19 09:40:35', '2024-05-19 09:40:35'),
(22, 'can_view_all_gig', 'web', '2024-05-19 09:40:35', '2024-05-19 09:40:35'),
(23, 'can_create_setting', 'web', '2024-05-19 09:40:36', '2024-05-19 09:40:36'),
(24, 'can_view_setting', 'web', '2024-05-19 09:40:36', '2024-05-19 09:40:36'),
(25, 'can_edit_setting', 'web', '2024-05-19 09:40:36', '2024-05-19 09:40:36'),
(26, 'can_update_setting', 'web', '2024-05-19 09:40:36', '2024-05-19 09:40:36'),
(27, 'can_delete_setting', 'web', '2024-05-19 09:40:36', '2024-05-19 09:40:36'),
(28, 'can_toggle_setting', 'web', '2024-05-19 09:40:36', '2024-05-19 09:40:36'),
(29, 'can_view_careers', 'web', '2024-05-19 09:40:37', '2024-05-19 09:40:37'),
(30, 'can_view_my_career', 'web', '2024-05-19 09:40:37', '2024-05-19 09:40:37'),
(31, 'can_view_all_career', 'web', '2024-05-19 09:40:37', '2024-05-19 09:40:37'),
(32, 'can_create_user', 'web', '2024-05-19 09:40:37', '2024-05-19 09:40:37'),
(33, 'can_view_user', 'web', '2024-05-19 09:40:37', '2024-05-19 09:40:37'),
(34, 'can_edit_user', 'web', '2024-05-19 09:40:38', '2024-05-19 09:40:38'),
(35, 'can_update_user', 'web', '2024-05-19 09:40:38', '2024-05-19 09:40:38'),
(36, 'can_delete_user', 'web', '2024-05-19 09:40:38', '2024-05-19 09:40:38'),
(37, 'can_upload_gigs', 'web', '2024-05-19 09:40:38', '2024-05-19 09:40:38'),
(38, 'can_export_gigs', 'web', '2024-05-19 09:40:38', '2024-05-19 09:40:38');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-05-19 09:40:39', '2024-05-19 09:40:39'),
(2, 'Supervisor', 'web', '2024-05-19 09:40:39', '2024-05-19 09:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(18, 2),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 2),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('erQrYAPfUF9qgsVkrRoXbwZwMShAlSVbMQNhOsGA', 2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTJxZGhzRHhsRVVUWEh5RURkUWZmeDE1NWdVcmkxTlY4RzZlbWdUZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9naWdzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1716131722),
('P0NxpzABAZblyuK9ATvHtbhBaA6yQfooB1cCCan9', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibWU3Sk90YzIyS3ltSFN1SklUNmVHN09ERHRxUnZaNGJDN0x3cFhpRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJlZXJzIjt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FwcGx5LW5vdy8xMDEiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1716132342);

-- --------------------------------------------------------

--
-- Table structure for table `settings_applications`
--

CREATE TABLE `settings_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('inactive','active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_applications`
--

INSERT INTO `settings_applications` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Career Notification', 'career-notification', 'inactive', '2024-05-19 09:40:30', '2024-05-19 09:40:30'),
(2, 'Contact Notification', 'contact-notification', 'inactive', '2024-05-19 09:40:30', '2024-05-19 09:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '9848022338', NULL, '$2y$12$9re.zgZ6IU7Girim5n6BeODXzSJaEMPXXaglxwUJiYGdohhYa4p6K', NULL, '2024-05-19 09:40:39', '2024-05-19 09:40:39'),
(2, 'supervisor', 'supervisor@gmail.com', '9848055228', NULL, '$2y$12$/UvbFNJ.zc1x2qIsGhXHx.SXakdEbttsmYRCS9xohnkgrx8XstOb2', NULL, '2024-05-19 09:42:16', '2024-05-19 09:42:16'),
(3, 'user', 'user@gmail.com', '9848044338', NULL, '$2y$12$QqpC.75idXuR1K/CoxU9eeiJOJU3W9yabV3Q5gXRnr/eBd57027Ri', NULL, '2024-05-19 09:54:52', '2024-05-19 09:54:52');

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
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gigs`
--
ALTER TABLE `gigs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings_applications`
--
ALTER TABLE `settings_applications`
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
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gigs`
--
ALTER TABLE `gigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings_applications`
--
ALTER TABLE `settings_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
