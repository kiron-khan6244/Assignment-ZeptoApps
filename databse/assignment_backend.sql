-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 06:42 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2022_04_01_003503_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0155e0ba6f3a7b5a05c93f9f40e3aa55ee954c1590cbbe2aafffa91808d958d2e020eb273a920ee3', 1, 1, 'MyApp', '[]', 0, '2022-04-05 11:40:56', '2022-04-05 11:40:56', '2023-04-05 17:40:56'),
('022a6043ad837b7bcc864c63d9c2da727057b2775a7b7dd6d1ca875eed770072abc80d30a479c8fe', 5, 1, 'MyApp', '[]', 0, '2022-04-05 11:59:14', '2022-04-05 11:59:14', '2023-04-05 17:59:14'),
('04c9b0e070d74cdf782837f822d612dad92795a663c1367ff6cdcfa66ae35a6d8b3ddb1ab36f29d0', 1, 1, 'MyApp', '[]', 0, '2022-04-05 07:22:24', '2022-04-05 07:22:24', '2023-04-05 13:22:24'),
('0590f695a09cee93e24dbfacb723b6ac40c8b8d43fb906f8edb2ead6616f87553737a66dca19d2d2', 4, 1, 'MyApp', '[]', 0, '2022-04-05 11:55:39', '2022-04-05 11:55:39', '2023-04-05 17:55:39'),
('0ac82df614d1fcf510057117f01b545511b2c8ef99483045824ed6bea2d18211fb9ad8212ac6d265', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:17:58', '2022-04-05 13:17:58', '2023-04-05 19:17:58'),
('0cb8e8110b689f1868975445a6f7b73e1e40a10bc01248ca418584e76fd83e5f7f9079fe76409bc3', 1, 1, 'MyApp', '[]', 0, '2022-04-05 12:48:38', '2022-04-05 12:48:38', '2023-04-05 18:48:38'),
('103068cbf98bcfa9456122df473a368210922434708f6eef345eedd9165d66fc411637c2ddbbafcc', 3, 1, 'MyApp', '[]', 0, '2022-04-05 11:52:00', '2022-04-05 11:52:00', '2023-04-05 17:52:00'),
('1c2723035116bfc35be047d9c6d920ecd7bab9e637df9953607be2b244df83433e034cb41f90c785', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:42:05', '2022-04-05 13:42:05', '2023-04-05 19:42:05'),
('2410a09291a7b41718fc45ba839118cecb3a8fc1a1b881aedbd97cadd33e9a5f7e42819df1a4262a', 5, 1, 'MyApp', '[]', 0, '2022-04-05 11:58:51', '2022-04-05 11:58:51', '2023-04-05 17:58:51'),
('343185d71624a5a18a62dbac586bb16525e39ff2393e0b6838656c6a4f584e00b128ad77c50c1390', 1, 1, 'MyApp', '[]', 0, '2022-04-05 10:21:22', '2022-04-05 10:21:22', '2023-04-05 16:21:22'),
('34fb7e74e5bf8985768e283fb43a9db1447cac1ce37816d070f512730983fe7dcf3d6d3de92dc67f', 1, 1, 'MyApp', '[]', 0, '2022-04-05 10:20:22', '2022-04-05 10:20:22', '2023-04-05 16:20:22'),
('35c3df0958f9e110ed6b264fa609e07a1623392034bb9ac9342473a1312f0a3672bb68925957b98f', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:41:35', '2022-04-05 13:41:35', '2023-04-05 19:41:35'),
('3983fdcf87d1fb6c65f1865da9d38df1d45d84e873f79b4e562bb49f4108f3ce45bb59c787ec023c', 1, 1, 'MyApp', '[]', 0, '2022-04-01 17:50:30', '2022-04-01 17:50:30', '2023-04-01 23:50:30'),
('3f3222d47ff74966ae9beb2d8121d92cdfceb586488f593fe67d1cecefe3fbfa8bd9615080d21e88', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:57:00', '2022-04-05 13:57:00', '2023-04-05 19:57:00'),
('41a4a5ec2a23db73510e5e300a0e97e24d6a91af948dc4ecdc4dd80940bc70fb9eda87eff712aec3', 1, 1, 'MyApp', '[]', 0, '2022-04-05 10:24:29', '2022-04-05 10:24:29', '2023-04-05 16:24:29'),
('56811037eac7cd6bfeaa17bfc91692ab70392bedc22820e08a9a2731856ba702c5ec29aeeeee6dc8', 1, 1, 'MyApp', '[]', 0, '2022-04-05 07:39:23', '2022-04-05 07:39:23', '2023-04-05 13:39:23'),
('5d14c9f14f062eb00a42492412628e871b2fa79bda9f11458adca9a9ae18c2ad038cdd3bd1ff2551', 1, 1, 'MyApp', '[]', 0, '2022-04-05 11:59:36', '2022-04-05 11:59:36', '2023-04-05 17:59:36'),
('5f2efd9dc09ed24338e56aa1c4bbb51da4a9c132ae91639b546fafc24d2821fa6eb25b4adf972748', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:28:07', '2022-04-05 13:28:07', '2023-04-05 19:28:07'),
('68e539e9d68abfea8407920cdaccac23349d793a70ccf39720f95c819326c37ed05767567e5b0314', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:06:02', '2022-04-05 13:06:02', '2023-04-05 19:06:02'),
('6a01b54fed19fefb6571114b72070d5df5fbc96a44dd1653972a28cabe6309439addad3d0c9befb9', 1, 1, 'MyApp', '[]', 0, '2022-03-31 19:04:43', '2022-03-31 19:04:43', '2023-04-01 01:04:43'),
('7820e501ef24b126221be12f20c31f36b1e55328d8da463d5911e58d5491f14cfdec7d506e416e92', 3, 1, 'MyApp', '[]', 0, '2022-04-05 06:17:54', '2022-04-05 06:17:54', '2023-04-05 12:17:54'),
('7ac6dc2cd613cfb87e1ca087533289bf76c6aae0bd8eef5c1dbd72b2a9b41e6a28f89056afdc0edd', 1, 1, 'MyApp', '[]', 0, '2022-04-05 06:23:56', '2022-04-05 06:23:56', '2023-04-05 12:23:56'),
('7da285c941921132ed7027bb044bab1b4104d826b31a7694f1cb29f3b931ff19cf2fb76e0a16cfea', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:01:58', '2022-04-05 13:01:58', '2023-04-05 19:01:58'),
('7f5fbebbadf2f6cc3d6304bf65b0f9eb1be9d824ccd40ca1cad4384ba0e5768c3ce299c81e715c1b', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:19:08', '2022-04-05 13:19:08', '2023-04-05 19:19:08'),
('89e692137afa6b35ff6cd153f549e961e2f21e1d11f1bc89a8ae3028418dd78dbe7ddd61dd44cf5e', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:17:11', '2022-04-05 13:17:11', '2023-04-05 19:17:11'),
('8cb508faf480e4f876f3300bbd87f265a4efae4720ab08ee32d9539c0d6a8d079a61989d755607f3', 1, 1, 'MyApp', '[]', 0, '2022-03-31 18:14:30', '2022-03-31 18:14:30', '2023-04-01 00:14:30'),
('8f3d81c6faa28b99f4dcf9c2012bcaa330ff533c95dae124848bb6284cd899739eb55c0914aaf805', 1, 1, 'MyApp', '[]', 0, '2022-04-05 07:36:54', '2022-04-05 07:36:54', '2023-04-05 13:36:54'),
('9040bbdf4ec97ae5ce7d24a90ce1564151afa0dbdd56846aab97dde8dc5678e8602fb10245259059', 1, 1, 'MyApp', '[]', 0, '2022-04-05 06:07:46', '2022-04-05 06:07:46', '2023-04-05 12:07:46'),
('9a4ba48feb8735eaa1eb23969387dea9d11ba84652637f1ae8d8aa4e5bac83380c0909367c53bb1e', 2, 1, 'MyApp', '[]', 0, '2022-03-31 18:41:53', '2022-03-31 18:41:53', '2023-04-01 00:41:53'),
('9baf46b20bf8d03c2e545b30cc17d2f66e189b063eb33f96789a10a132c7b9575fc8e9befa2510ed', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:18:38', '2022-04-05 13:18:38', '2023-04-05 19:18:38'),
('a19778be24d7d20ff90ffd060a5554922ee20dc5185da5d821262b484fb49f7f3fefc5c9b65ecc6e', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:16:47', '2022-04-05 13:16:47', '2023-04-05 19:16:47'),
('b202d6a81881a52f2364b2ea93ba576bf7b3ea188d263e6d57ce2988b5c7ff3daa4adfb26f8b3244', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:19:48', '2022-04-05 13:19:48', '2023-04-05 19:19:48'),
('b30c0dcc7dcaf500238e44815e9a761070552c6de1062ceb417043a13ca17414e53565120c148609', 1, 1, 'MyApp', '[]', 0, '2022-04-05 07:21:45', '2022-04-05 07:21:45', '2023-04-05 13:21:45'),
('b7c8600f2c5766f63180671ec89d4e0978f7a14fe67d6d90c7d4c44a1604e759e1d5aab5be71f52c', 1, 1, 'MyApp', '[]', 0, '2022-04-05 06:08:51', '2022-04-05 06:08:51', '2023-04-05 12:08:51'),
('be6c0bab48ad2c6c3d4fddc0e36655b746b4fdb8bd4e38c6f57ddd2ba49c757db6ee56b02476e762', 1, 1, 'MyApp', '[]', 0, '2022-04-05 11:42:03', '2022-04-05 11:42:03', '2023-04-05 17:42:03'),
('c3e1a74b4d7ed59254c4e94c2c3f22dafeba5ba16c0ff618d44f43a790f30177e787aecc1d40cbce', 1, 1, 'MyApp', '[]', 0, '2022-04-05 12:52:31', '2022-04-05 12:52:31', '2023-04-05 18:52:31'),
('d29c2ed9c83db493e896b8e741c97c2f7deb82a31d449ca016b009e13eb6c3ca66d5eb8817515bb6', 1, 1, 'MyApp', '[]', 0, '2022-04-05 10:21:51', '2022-04-05 10:21:51', '2023-04-05 16:21:51'),
('dd70076fd7c893fbf417867443d976226e477d565329ba773b34a378f1e623d13774eaa4a5002bab', 1, 1, 'MyApp', '[]', 0, '2022-04-05 07:38:46', '2022-04-05 07:38:46', '2023-04-05 13:38:46'),
('e238a9a959dab45d9c2497de9c888570d37b14b69e13d0456343e2d6c83e60c61c024299263e387b', 1, 1, 'MyApp', '[]', 0, '2022-04-05 07:28:47', '2022-04-05 07:28:47', '2023-04-05 13:28:47'),
('e5c7baa4c267b3e195d5e59dd6852c9c57be82b99329abbdb299cf6b6c7f7e52e32551aea5d81110', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:39:13', '2022-04-05 13:39:13', '2023-04-05 19:39:13'),
('ec7c81cc8e71b74d71c6f88dfa3c73e36ae2e61260d0420a0b08d2a097988e3c2e81b50687cd052e', 1, 1, 'MyApp', '[]', 0, '2022-04-05 13:06:53', '2022-04-05 13:06:53', '2023-04-05 19:06:53'),
('ee30d38751ea09c6037cdbef807bf3d9ae1fe802e1ffcbabbf719be7cbd3e6e6dbe676060f8fa30a', 5, 1, 'MyApp', '[]', 0, '2022-04-05 11:58:01', '2022-04-05 11:58:01', '2023-04-05 17:58:01'),
('fe08360132003b9e801eeea2d5748d71953b7e837cec102dcd2dc249768781cee75953b39d2ab1f1', 1, 1, 'MyApp', '[]', 0, '2022-03-31 18:42:47', '2022-03-31 18:42:47', '2023-04-01 00:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'BackEnd Project Personal Access Client', 'RZ8YoCanSrtEgvrVAMFwhrAHGUmUw4J5baCc8krZ', NULL, 'http://localhost', 1, 0, 0, '2022-03-31 17:11:56', '2022-03-31 17:11:56'),
(2, NULL, 'BackEnd Project Password Grant Client', 'A5BCpTCSxEcCfQPFb10rxbNfZMDcur9QtaawMFp3', 'users', 'http://localhost', 0, 1, 0, '2022-03-31 17:11:56', '2022-03-31 17:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-31 17:11:56', '2022-03-31 17:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(2, 'watch', '451_1648753783.png', 600, '2022-03-31 19:09:43', '2022-03-31 19:09:43'),
(3, 'mobile', '341_1648838215.jpg', 1500, '2022-04-01 18:36:55', '2022-04-05 14:04:52'),
(4, 'Fan', '39_1648838253.jpg', 5000, '2022-04-01 18:37:33', '2022-04-01 18:37:33'),
(8, 'Camera', '614_1649167481.jpg', 5500, '2022-04-02 20:56:35', '2022-04-05 14:04:41'),
(9, 'Freeze', '269_1649167438.png', 22000, '2022-04-02 21:06:42', '2022-04-05 14:03:58'),
(10, 'Tablet', '774_1649167255.jpg', 15000, '2022-04-02 21:07:14', '2022-04-05 14:00:55'),
(11, 'TV', '311_1649167213.jpg', 65750, '2022-04-02 21:09:42', '2022-04-05 14:00:13'),
(14, 'Pent', '761_1649167156.jpg', 950, '2022-04-03 17:27:29', '2022-04-05 13:59:16'),
(15, 'Shirt', '384_1649015276.jpg', 3463456, '2022-04-03 19:47:56', '2022-04-05 13:58:52'),
(16, 'Shoe', '394_1649021894.jpg', 650, '2022-04-03 21:38:14', '2022-04-05 13:58:38'),
(17, 'Desktop', '224_1649167397.jpg', 50000, '2022-04-03 20:59:25', '2022-04-05 14:03:17'),
(18, 'Laptop', '551_1649167039.jpg', 90000, '2022-04-05 10:06:31', '2022-04-05 13:57:19'),
(19, 'Bag', '964_1649167526.jpg', 800, '2022-04-05 14:05:26', '2022-04-05 14:05:26'),
(20, 'Printer', '463_1649167541.jpg', 7500, '2022-04-05 14:05:41', '2022-04-05 14:05:41'),
(21, 'Mouse', '689_1649167556.jpg', 600, '2022-04-05 14:05:56', '2022-04-05 14:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Admin', 'admin@admin.com', NULL, '$2y$10$q0JKH3Y9J4Naz8Dro/5L7eRHkO2MZB56TBXUuxs2C6Ue0VJBjOWTO', NULL, '2022-03-31 17:04:13', '2022-03-31 17:04:13'),
(4, 1, 'Kiron Khan', 'prottasarpothe@gmail.com', NULL, '$2y$10$CcpJIP1TsVbDczX4e4fLWut5CLIzTif1h7X//jajTEV03p9e5CaNW', NULL, '2022-04-05 11:55:38', '2022-04-05 11:55:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
