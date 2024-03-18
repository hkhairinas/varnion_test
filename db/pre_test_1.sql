-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 02:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pre_test_1`
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
-- Table structure for table `hasil_response`
--

CREATE TABLE `hasil_response` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_jalan` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `angka_kurang` varchar(255) NOT NULL,
  `angka_lebih` varchar(255) NOT NULL,
  `profesi` varchar(255) NOT NULL,
  `plain_json` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasil_response`
--

INSERT INTO `hasil_response` (`id`, `nama`, `nama_jalan`, `jenis_kelamin`, `email`, `angka_kurang`, `angka_lebih`, `profesi`, `plain_json`, `created_at`, `updated_at`) VALUES
(1, 'Logan Ellis', 'Brick Kiln Road', '1', 'logan.ellis@example.com', '0', '19', 'E', '{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Logan\",\"last\":\"Ellis\"},\"location\":{\"street\":{\"number\":879,\"name\":\"Brick Kiln Road\"},\"city\":\"Birmingham\",\"state\":\"Central\",\"country\":\"United Kingdom\",\"postcode\":\"WR7 2BW\",\"coordinates\":{\"latitude\":\"-9.6707\",\"longitude\":\"-154.7864\"},\"timezone\":{\"offset\":\"-12:00\",\"description\":\"Eniwetok, Kwajalein\"}},\"email\":\"logan.ellis@example.com\",\"login\":{\"uuid\":\"93010117-fd9e-4c13-8262-7bd2aa7efd90\",\"username\":\"heavydog494\",\"password\":\"boogie\",\"salt\":\"91L6XfnG\",\"md5\":\"09295a4238a6e3f06715ecad3ec2e2cb\",\"sha1\":\"ee35de12e8a09461b3a2ea497cc9cd1d5cb8f65e\",\"sha256\":\"a4fed6e266b9a6a99c60de5f0d0fde2bd4476bc908e45e3fa37cc577b61d11e4\"},\"dob\":{\"date\":\"1983-12-28T16:15:47.347Z\",\"age\":40},\"registered\":{\"date\":\"2019-04-10T22:10:31.331Z\",\"age\":4},\"phone\":\"013873 26991\",\"cell\":\"07943 630194\",\"id\":{\"name\":\"NINO\",\"value\":\"EL 53 55 15 K\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/15.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/15.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/15.jpg\"},\"nat\":\"GB\"}],\"info\":{\"seed\":\"ac6207dbf66d5979\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:36:01', '2024-03-18 12:36:01'),
(2, 'Mario Canales', 'Calle Cepeda', '1', 'mario.canales@example.com', '0', '18', 'C', '{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Mario\",\"last\":\"Canales\"},\"location\":{\"street\":{\"number\":2836,\"name\":\"Calle Cepeda\"},\"city\":\"La Cruz\",\"state\":\"Nayarit\",\"country\":\"Mexico\",\"postcode\":90100,\"coordinates\":{\"latitude\":\"27.8691\",\"longitude\":\"-95.8416\"},\"timezone\":{\"offset\":\"+8:00\",\"description\":\"Beijing, Perth, Singapore, Hong Kong\"}},\"email\":\"mario.canales@example.com\",\"login\":{\"uuid\":\"a2d4268e-faf7-4b85-a87d-16562dbeb06a\",\"username\":\"lazyswan177\",\"password\":\"kayleigh\",\"salt\":\"9O7ETIvA\",\"md5\":\"f1ab54cee5d07e695cde1811d6243fa6\",\"sha1\":\"627e43fdf8a970a85f08166347cecd537f460fed\",\"sha256\":\"2f1f109812d8d77deaa677408a5a638750079b3a450862db7978c944414fc084\"},\"dob\":{\"date\":\"1966-02-15T21:30:58.771Z\",\"age\":58},\"registered\":{\"date\":\"2009-03-24T08:21:04.522Z\",\"age\":14},\"phone\":\"(618) 797 0463\",\"cell\":\"(686) 123 7744\",\"id\":{\"name\":\"NSS\",\"value\":\"28 97 83 8715 2\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/39.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/39.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/39.jpg\"},\"nat\":\"MX\"}],\"info\":{\"seed\":\"496e6dbbcee00474\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:43:06', '2024-03-18 12:43:06'),
(3, 'Brooklyn Peterson', 'Groveland Terrace', '2', 'brooklyn.peterson@example.com', '0', '18', 'E', '{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Brooklyn\",\"last\":\"Peterson\"},\"location\":{\"street\":{\"number\":5697,\"name\":\"Groveland Terrace\"},\"city\":\"Clarksville\",\"state\":\"West Virginia\",\"country\":\"United States\",\"postcode\":72037,\"coordinates\":{\"latitude\":\"87.5128\",\"longitude\":\"15.0139\"},\"timezone\":{\"offset\":\"+9:00\",\"description\":\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}},\"email\":\"brooklyn.peterson@example.com\",\"login\":{\"uuid\":\"2bce952f-b114-42d5-ac75-737718ef7af4\",\"username\":\"goldenladybug281\",\"password\":\"hotboy\",\"salt\":\"ggpi2w4X\",\"md5\":\"5ceb3a5a2d698fa23fa7e5f0c5816b65\",\"sha1\":\"6a32a5259082a68de9495ad802b7cfa3f609d518\",\"sha256\":\"d9828e6e9d796029d4c22108e9e156d7604c6b55441907c32d0263a886654e27\"},\"dob\":{\"date\":\"1972-06-18T01:23:15.652Z\",\"age\":51},\"registered\":{\"date\":\"2011-01-21T21:59:08.383Z\",\"age\":13},\"phone\":\"(689) 569-2999\",\"cell\":\"(855) 334-7243\",\"id\":{\"name\":\"SSN\",\"value\":\"386-64-7667\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/10.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/10.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/10.jpg\"},\"nat\":\"US\"}],\"info\":{\"seed\":\"f51595c01ad418af\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:43:09', '2024-03-18 12:43:09'),
(4, 'Ferenc Haverhoek', 'Heiderschoor', '1', 'ferenc.haverhoek@example.com', '0', '14', 'E', '{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Ferenc\",\"last\":\"Haverhoek\"},\"location\":{\"street\":{\"number\":7742,\"name\":\"Heiderschoor\"},\"city\":\"Ee\",\"state\":\"Overijssel\",\"country\":\"Netherlands\",\"postcode\":\"0800 TY\",\"coordinates\":{\"latitude\":\"31.8218\",\"longitude\":\"-77.2893\"},\"timezone\":{\"offset\":\"+5:30\",\"description\":\"Bombay, Calcutta, Madras, New Delhi\"}},\"email\":\"ferenc.haverhoek@example.com\",\"login\":{\"uuid\":\"44bca3b0-5685-432a-bf6c-5346ed9bd40b\",\"username\":\"happypeacock407\",\"password\":\"weird\",\"salt\":\"tyFunkPT\",\"md5\":\"649f3e6df26f0a8e9b6edc88cabfbfc8\",\"sha1\":\"a09d445bfa788c917433e0de9d8e8eb7c3066265\",\"sha256\":\"6524bdcf6c76edb5f13b34a35390ba305e23f1b2257724af584e2ecb8cb14e16\"},\"dob\":{\"date\":\"1956-05-19T09:32:30.725Z\",\"age\":67},\"registered\":{\"date\":\"2008-01-30T10:15:48.687Z\",\"age\":16},\"phone\":\"(0503) 134465\",\"cell\":\"(06) 28511853\",\"id\":{\"name\":\"BSN\",\"value\":\"73022957\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/42.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/42.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/42.jpg\"},\"nat\":\"NL\"}],\"info\":{\"seed\":\"99cb1ea22724db78\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:46:39', '2024-03-18 12:46:39'),
(5, 'Herman Burns', 'Cackson St', '1', 'herman.burns@example.com', '0', '23', 'D', '{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Herman\",\"last\":\"Burns\"},\"location\":{\"street\":{\"number\":349,\"name\":\"Cackson St\"},\"city\":\"Maitland\",\"state\":\"Victoria\",\"country\":\"Australia\",\"postcode\":9167,\"coordinates\":{\"latitude\":\"-86.6621\",\"longitude\":\"-106.1161\"},\"timezone\":{\"offset\":\"+5:30\",\"description\":\"Bombay, Calcutta, Madras, New Delhi\"}},\"email\":\"herman.burns@example.com\",\"login\":{\"uuid\":\"61b018c8-583d-4585-b4f3-409e1f9bc9bc\",\"username\":\"whiteelephant352\",\"password\":\"ddddd\",\"salt\":\"vGmZuGwS\",\"md5\":\"e66ee998988263d3fda0e6460415d858\",\"sha1\":\"734e05d0c9b5fefbb082961ae20a397e7f64cc6f\",\"sha256\":\"60ada444ff4fb795ad25825b0582be6a2a4e700f7157c1a64d8809c16a6ab625\"},\"dob\":{\"date\":\"1945-12-01T02:33:25.291Z\",\"age\":78},\"registered\":{\"date\":\"2014-06-11T01:55:23.886Z\",\"age\":9},\"phone\":\"00-9577-5771\",\"cell\":\"0433-188-432\",\"id\":{\"name\":\"TFN\",\"value\":\"541047762\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/89.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/89.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/89.jpg\"},\"nat\":\"AU\"}],\"info\":{\"seed\":\"9d1267f7e597966a\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:46:55', '2024-03-18 12:46:55'),
(6, 'Tabea Leder', 'Meisenweg', '2', 'tabea.leder@example.com', '0', '22', 'E', '{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Tabea\",\"last\":\"Leder\"},\"location\":{\"street\":{\"number\":2921,\"name\":\"Meisenweg\"},\"city\":\"Netphen\",\"state\":\"Berlin\",\"country\":\"Germany\",\"postcode\":33370,\"coordinates\":{\"latitude\":\"-52.8585\",\"longitude\":\"50.8650\"},\"timezone\":{\"offset\":\"-8:00\",\"description\":\"Pacific Time (US & Canada)\"}},\"email\":\"tabea.leder@example.com\",\"login\":{\"uuid\":\"e8124a92-4a0d-41f8-b0b9-0d7e48fd7c1f\",\"username\":\"purplebear841\",\"password\":\"recon\",\"salt\":\"Nd1g7H8c\",\"md5\":\"39e2ce824e20b3f27c3814e3e5356c69\",\"sha1\":\"450f5e7a07e19a8029ddf2549cd7926de9d22aaa\",\"sha256\":\"00d591de3549fcfdd5fceadc5118e331afbc688570e439b283d58ddfe938b1ac\"},\"dob\":{\"date\":\"1971-11-11T00:07:24.752Z\",\"age\":52},\"registered\":{\"date\":\"2020-04-05T00:47:36.236Z\",\"age\":3},\"phone\":\"0598-4709957\",\"cell\":\"0176-5658007\",\"id\":{\"name\":\"SVNR\",\"value\":\"03 101171 L 951\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/29.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/29.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/29.jpg\"},\"nat\":\"DE\"}],\"info\":{\"seed\":\"3f1887d91b7f53b8\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:46:59', '2024-03-18 12:46:59'),
(7, 'Anthony Crawford', 'N Stelling Rd', '1', 'anthony.crawford@example.com', '0', '19', 'A', '{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Anthony\",\"last\":\"Crawford\"},\"location\":{\"street\":{\"number\":2646,\"name\":\"N Stelling Rd\"},\"city\":\"Kalgoorlie\",\"state\":\"Queensland\",\"country\":\"Australia\",\"postcode\":5585,\"coordinates\":{\"latitude\":\"-89.8121\",\"longitude\":\"-151.9636\"},\"timezone\":{\"offset\":\"+4:00\",\"description\":\"Abu Dhabi, Muscat, Baku, Tbilisi\"}},\"email\":\"anthony.crawford@example.com\",\"login\":{\"uuid\":\"02a48777-00ce-4d25-b25a-693e3fd86536\",\"username\":\"greenmouse439\",\"password\":\"buffett\",\"salt\":\"aaY3Zku7\",\"md5\":\"f240c2e39e1e87bd2677f9cdbd7676b9\",\"sha1\":\"f1c055897837942b8b0399c0876bbefc7ca0d47c\",\"sha256\":\"ea717fb60efad538f94e17b5a839b4e9a09d3cd9417099904a5fd82d9ffae57b\"},\"dob\":{\"date\":\"1979-12-06T21:52:07.901Z\",\"age\":44},\"registered\":{\"date\":\"2007-02-04T21:53:58.773Z\",\"age\":17},\"phone\":\"02-9854-3249\",\"cell\":\"0476-721-354\",\"id\":{\"name\":\"TFN\",\"value\":\"083393119\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/92.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/92.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/92.jpg\"},\"nat\":\"AU\"}],\"info\":{\"seed\":\"5630f1f2c5c96a40\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:47:02', '2024-03-18 12:47:02'),
(8, 'Hilda Verduzco', 'Andador Sur Urbina', '2', 'hilda.verduzco@example.com', '0', '21', 'A', '{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Hilda\",\"last\":\"Verduzco\"},\"location\":{\"street\":{\"number\":9317,\"name\":\"Andador Sur Urbina\"},\"city\":\"Tlapa de Comonfort\",\"state\":\"Queretaro\",\"country\":\"Mexico\",\"postcode\":70442,\"coordinates\":{\"latitude\":\"29.1615\",\"longitude\":\"176.8050\"},\"timezone\":{\"offset\":\"+1:00\",\"description\":\"Brussels, Copenhagen, Madrid, Paris\"}},\"email\":\"hilda.verduzco@example.com\",\"login\":{\"uuid\":\"7f47e1ea-af50-43c5-b964-a1e0b4b65890\",\"username\":\"crazymouse191\",\"password\":\"googoo\",\"salt\":\"0uamVxBM\",\"md5\":\"270b8ee5bef9f59934eb27499876f20d\",\"sha1\":\"c67471cbc1b75748fbe2acd990951759fca63e48\",\"sha256\":\"a6f076e237748f5c84c19032d2f063cb71a584afdfa34878be46bd56a40bfe90\"},\"dob\":{\"date\":\"1995-12-06T16:44:50.423Z\",\"age\":28},\"registered\":{\"date\":\"2003-05-01T04:44:01.499Z\",\"age\":20},\"phone\":\"(627) 435 6083\",\"cell\":\"(628) 611 4864\",\"id\":{\"name\":\"NSS\",\"value\":\"28 29 93 1634 3\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/69.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/69.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/69.jpg\"},\"nat\":\"MX\"}],\"info\":{\"seed\":\"5e4e00be21786217\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}', '2024-03-18 12:47:05', '2024-03-18 12:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `kode` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`kode`, `jenis_kelamin`) VALUES
(1, 'laki-laki'),
(2, 'perempuan');

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
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2024_03_18_082632_pre_test_1', 1);

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
('uZB5t4g3Yur6BbXGhzlUrDhWV2fvjhJ7wKOZsVqF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFFjaXV1bUlta2FJNnQ3RzNuem9RclhZcXVvbm1RdVdNU0xyU09PVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9mZXNpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1710767297);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_profesi`
--

CREATE TABLE `tabel_profesi` (
  `kode` char(5) NOT NULL,
  `nama_profesi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabel_profesi`
--

INSERT INTO `tabel_profesi` (`kode`, `nama_profesi`) VALUES
('A', 'Petani'),
('B', 'Teknisi'),
('C', 'Guru'),
('D', 'Nelayan'),
('E', 'Seniman');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_response`
--
ALTER TABLE `hasil_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`kode`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tabel_profesi`
--
ALTER TABLE `tabel_profesi`
  ADD PRIMARY KEY (`kode`);

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
-- AUTO_INCREMENT for table `hasil_response`
--
ALTER TABLE `hasil_response`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `kode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
