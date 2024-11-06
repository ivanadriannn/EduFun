-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 05:11 PM
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
-- Database: `edufun_database`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(2, 'Network Security', '2024-11-05 23:11:54', '2024-11-05 23:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `writer_id`, `name`, `description`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Machine Learning', 'Enim doloribus impedit est quisquam a dicta. Aliquid id similique odit et. Voluptatem quos nesciunt ut veniam aliquam. Ab est eius earum illum ipsum minima qui. Aut eveniet sed tenetur maiores. Dolore aut eligendi asperiores occaecati perspiciatis aspernatur illo dolore. Consequuntur quia magnam non atque quo expedita inventore accusantium. Quia quibusdam deleniti numquam itaque laboriosam qui ea quibusdam. Occaecati et aut nihil nisi facilis perferendis. Eaque molestias quia a rerum.\n\nOdio doloribus rerum ut amet nesciunt. Possimus vel autem eos eum necessitatibus facilis. Eos ut et odio voluptas delectus unde. Sint corporis quisquam sint officia fugiat culpa illo. Enim magni tenetur sint ipsam. Asperiores sunt sed vel soluta itaque officiis. A aliquid veniam incidunt odit sit aspernatur sit. Minus nesciunt sint fuga et explicabo non id. Facilis et repellendus deserunt ea. Id quod molestias ipsum qui voluptas nesciunt. Impedit quisquam dolor reiciendis. Et expedita fugit harum corporis.', '1', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(2, 1, 2, 'Deep Learning', 'Ut ut aut debitis. Necessitatibus voluptas optio est consectetur voluptate tempora sequi. Similique recusandae quo eum. Autem natus atque optio et voluptatum eum maxime. Molestias id est repudiandae est perferendis et. Pariatur et doloribus facere eligendi accusantium magni. Voluptatibus id nisi sequi provident molestias. Alias voluptatem expedita repellat. Vel incidunt eaque laboriosam non numquam voluptas enim. Molestiae aspernatur soluta laudantium minus totam. Laborum laudantium odio quod tenetur fugiat non. Quasi aut neque earum labore unde. In mollitia temporibus vel aut unde et. Deleniti aut porro aperiam dolor ut omnis. Et ut voluptatibus soluta aut occaecati eos.\n\nQuibusdam omnis a vitae suscipit. Minima quam cumque possimus voluptas earum. Reprehenderit sed nisi minima dignissimos. Magni qui provident quae at quis et. Laborum eos sit molestias eos dolor consectetur accusantium. Possimus ut maiores quo itaque ipsa. Nihil et tenetur ut voluptas minus ipsa hic.', '2', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(3, 1, 2, 'Natural Language Processing', 'Iusto enim et qui ut qui impedit sapiente. Non repudiandae iusto aut. Tempora non vero provident numquam expedita iste rem. Occaecati velit occaecati natus incidunt. Dolorem ut quam expedita et reiciendis optio. Qui illo aspernatur magni. Cum atque nam voluptatem numquam laboriosam. Beatae beatae impedit soluta nulla et non eos ipsa. Et sapiente numquam praesentium quia. Libero consequuntur earum repellendus impedit. Qui quos aut sit deserunt qui facere quis. Animi ratione magni quia quae id. Esse et ut a dolor mollitia deserunt. Perspiciatis aut quas praesentium enim quos. Vitae quia quia qui occaecati.\n\nPossimus qui eum vitae accusamus. Est id suscipit modi tenetur consequatur veniam quo quos. Quibusdam error modi id odit voluptate inventore. Sequi amet sed dicta aut quia eos aut perferendis. Minima atque tempora quaerat qui dignissimos deserunt. Aut repellat non reiciendis temporibus aut. Perferendis sit dolor tempore inventore quis ut. Sint inventore quibusdam impedit dolorem voluptas. Doloribus et vero laboriosam deleniti et ex.', '3', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(4, 2, 1, 'Software Security', 'Reprehenderit aut sequi vero sed ducimus. Facere totam assumenda quia voluptatibus itaque et magni sunt. Autem porro aut eaque incidunt et nulla ut. Autem excepturi molestias nihil deserunt asperiores. Esse dolorem eligendi dolorem est animi enim minus. Necessitatibus mollitia voluptas hic id enim laborum dolores. Officiis quibusdam dolorem animi est sit at recusandae. Non magni consequatur maxime nulla dignissimos et deleniti. Dolores quam facere ad cupiditate ducimus. Molestias pariatur rem soluta explicabo voluptatem exercitationem cum. Officiis dicta consequuntur atque. Rerum nam vel eius temporibus. Veniam vero sunt id nam est et molestias.\n\nUt hic quaerat mollitia omnis molestiae adipisci. Qui labore sit quidem accusamus. Fugiat totam exercitationem provident non temporibus voluptatem accusantium expedita. Nihil ab libero perspiciatis non. Illo qui nihil consequatur earum. Rerum beatae laudantium magnam impedit sit dolore magni. Rerum quae eligendi sunt rem et delectus rerum. Et dicta id consequatur commodi quae est ducimus atque.', '4', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(5, 2, 1, 'Network Administration', 'Ab totam et aut possimus nisi. Ea eos enim provident dolores. Ratione molestias perferendis temporibus dolores voluptas doloremque quis. Facilis est ipsam delectus asperiores cum. Facilis velit est et enim. Et nulla dicta eligendi nihil est soluta. Rerum perspiciatis adipisci sunt sunt deleniti nihil. Itaque sed consequatur repudiandae expedita.\n\nConsequatur et quis quasi omnis unde error. Blanditiis minima ut temporibus asperiores. Quo quia porro dolore enim et et cum id. Magnam atque et et qui voluptatem consequatur ab. Autem alias et et illum fugit. Ipsa vel illo quam nam qui voluptatem est. Repudiandae sed veniam est atque explicabo. Nesciunt debitis recusandae quod natus molestiae.', '5', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(6, 2, 1, 'Popular Network Technology', 'Id est possimus voluptatem ut qui dolore. Consequatur atque aliquid laboriosam vel illo velit consequuntur. Ut quibusdam deserunt at distinctio dolore. Esse et neque unde odio nihil in facere molestiae. Non reprehenderit sunt consequatur sunt ut cumque. Aspernatur ut necessitatibus dolorem dicta. Quae vitae possimus et et. Rerum velit sed qui necessitatibus odit. Voluptatem expedita voluptas consectetur laborum et ea. Tempore cumque et voluptas dignissimos laboriosam. Placeat enim est dolore. Vel assumenda velit et.\n\nVoluptatum voluptatem temporibus ad at aut veniam quod. Et sunt dolore animi dolor quia vero. Laudantium corrupti et et. Perspiciatis nulla expedita sit aliquid omnis error. Dolorum et et quam autem expedita debitis quasi. Rerum molestiae adipisci illo fugiat. Autem dignissimos culpa amet placeat. Nulla consectetur quia vel totam at nihil. Rerum ut omnis iure quam sequi. Aperiam excepturi nihil libero ratione et rerum corporis. Impedit praesentium deleniti sit pariatur debitis. Occaecati labore ut nihil aspernatur.', '6', '2024-11-05 23:11:54', '2024-11-05 23:11:54');

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
(4, '2024_11_04_072624_create_writers_table', 1),
(5, '2024_11_04_072644_create_categories_table', 1),
(6, '2024_11_05_072101_create_courses_table', 1);

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
('LlSd8vkBw321TKZnlDzjSTd9YfF96408ixQjCKcY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0xHM3c3Z3ZPTnVwU2dSa01LOGNZdmNFanVPcldTSHhjSGI4aFBMUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730909377);

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

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `image_path`, `field`, `created_at`, `updated_at`) VALUES
(1, 'Abi Firmansyah', '1', 'Spesialis Network Security', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(2, 'Raka Putra Wicaksono', '2', 'Speasialis Data Science', '2024-11-05 23:11:54', '2024-11-05 23:11:54'),
(3, 'Bia Mecca Annisa', '3', 'Spesialis Data Science', '2024-11-05 23:11:54', '2024-11-05 23:11:54');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
