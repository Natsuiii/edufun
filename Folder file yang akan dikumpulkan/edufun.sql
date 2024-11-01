-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 11:05 AM
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
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `slug`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Gabriella Mardhiyah', 'nurdiyanti.keisha@hartati.org', 'gabriella-mardhiyah', 'https://avatar.iran.liara.run/public/30', '2024-11-01 03:04:52', '2024-11-01 03:04:52'),
(2, 'Gabriella Umi Puspita S.I.Kom', 'oni.nuraini@yahoo.com', 'gabriella-umi-puspita-sikom', 'https://avatar.iran.liara.run/public/94', '2024-11-01 03:04:52', '2024-11-01 03:04:52'),
(3, 'Bagya Karsana Wibowo', 'hafshah25@gmail.co.id', 'bagya-karsana-wibowo', 'https://avatar.iran.liara.run/public/3', '2024-11-01 03:04:52', '2024-11-01 03:04:52');

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
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', 'interactive-multimedia', '2024-11-01 03:04:52', '2024-11-01 03:04:52'),
(2, 'Software Engineering', 'software-engineering', '2024-11-01 03:04:52', '2024-11-01 03:04:52');

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
(4, '2024_10_31_000003_create_categories_table', 1),
(5, '2024_10_31_000004_create_authors_table', 1),
(6, '2024_10_31_074321_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` text DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `image`, `author_id`, `category_id`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'Eius maiores aut quo repellendus voluptatibus.', 'facere-dolorem-incidunt-veniam-dolores', 'Quam dolores quia maxime facilis quas veritatis. Quo suscipit debitis earum velit est iusto. Ducimus doloribus non qui dolores ad veritatis omnis.\n\nEum accusamus ullam suscipit recusandae nulla non ut. Sit ut voluptatum corrupti et. Dolorem debitis qui officiis voluptatem. Tenetur laudantium quaerat natus rerum. Qui tenetur assumenda cum quo reiciendis unde.\n\nSunt ut similique ut dolores sed. Quod optio enim rerum et maiores iste. Illum aliquid quae sit cumque qui. Id velit ratione alias ipsum et veniam.', 'https://images.unsplash.com/photo-1517778991803-3fa8c9341083?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHwxfHxpbnRlcmFjdGl2ZS1tdWx0aW1lZGlhfGVufDB8fHx8MTczMDM3MzAyN3ww&ixlib=rb-4.0.3&q=80&w=1080', 2, 1, 57, '2024-11-01 03:04:52', '2024-11-01 03:04:52'),
(2, 'Placeat ipsa maiores iste ea sit.', 'optio-libero-amet-autem-enim-in', 'Voluptatem et consequuntur saepe vel. Qui mollitia voluptatem exercitationem quo saepe. Excepturi deserunt consequuntur dolorem unde animi cumque tempore quia. Cumque consequatur aspernatur ex.\n\nQuos corporis iste harum. Vero in rem temporibus mollitia aut.\n\nOmnis vel sit minima perspiciatis magnam blanditiis. Nesciunt nulla aut dolore illum ut veniam repellat. Est enim non doloribus molestiae sunt velit.', 'https://images.unsplash.com/photo-1580894732444-8ecded7900cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHwxMXx8c29mdHdhcmUtZW5naW5lZXJpbmd8ZW58MHx8fHwxNzMwNDMxMDc2fDA&ixlib=rb-4.0.3&q=80&w=1080', 1, 1, 47, '2024-11-01 03:04:53', '2024-11-01 03:04:53'),
(3, 'Vitae assumenda ex itaque aut maxime ipsa consequuntur.', 'non-similique-sed-velit-asperiores-qui', 'Enim praesentium repudiandae facere doloribus. Sint ad occaecati tenetur corrupti est autem. Quia molestiae et at quia itaque eum non. Omnis qui sed aut totam maxime voluptas et.\n\nSunt quia ad rerum voluptatem. Error suscipit eum ex animi molestiae molestiae. Maiores consectetur animi sunt aspernatur praesentium.\n\nDebitis voluptate nostrum esse sed. Rerum eius corporis aut molestiae molestias.', 'https://images.unsplash.com/photo-1700049596230-206afab85eac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHwyMXx8aW50ZXJhY3RpdmUtbXVsdGltZWRpYXxlbnwwfHx8fDE3MzA0MzEwNzd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2, 2, 58, '2024-11-01 03:04:53', '2024-11-01 03:04:53'),
(4, 'Magni nesciunt ex sit et harum harum molestiae.', 'quia-veniam-impedit-corporis-veniam', 'In nostrum ea qui quia vero. Vel eos qui sit sunt est minus. Dolore sed at possimus nihil aut. Quis incidunt eum esse.\n\nAut nisi et vel nemo quia quas unde. Laudantium dolorem inventore cupiditate consequatur. Dolorem suscipit sed in et omnis repellat est. Sint labore laudantium quo ad suscipit error.\n\nOfficiis occaecati quia dolorem ipsum dolor optio non. Officiis quibusdam mollitia dolorem est occaecati. Expedita aut vel necessitatibus.', 'https://images.unsplash.com/photo-1669154477372-12c178bfe936?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHwzMXx8aW50ZXJhY3RpdmUtbXVsdGltZWRpYXxlbnwwfHx8fDE3MzA0NDgxMjl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2, 1, 59, '2024-11-01 03:04:53', '2024-11-01 03:04:53'),
(5, 'Excepturi sit qui dolorum alias dignissimos vel est.', 'occaecati-facere-repellat-nobis-eum-commodi-nobis-sunt', 'Recusandae nesciunt voluptas non impedit et est. Aliquid necessitatibus ullam iusto dolorum libero ipsum non. Tempore at maiores ratione tempora qui earum repudiandae.\n\nQuibusdam qui explicabo quasi facere et. Vero explicabo id veniam aut. Quis sint quam maxime non beatae.\n\nAperiam voluptates est maiores et vitae et quod. Temporibus consequatur vel occaecati a accusamus qui. Esse autem fuga ullam suscipit eos.', 'https://images.unsplash.com/photo-1599585896662-85853131f259?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHw0MXx8c29mdHdhcmUtZW5naW5lZXJpbmd8ZW58MHx8fHwxNzMwNDQ4MTMwfDA&ixlib=rb-4.0.3&q=80&w=1080', 3, 1, 63, '2024-11-01 03:04:54', '2024-11-01 03:04:54'),
(6, 'Culpa quam in sint earum officiis.', 'repellat-et-ea-incidunt', 'Tempore explicabo quae maiores ea minus vitae. Aliquid iste a amet enim vitae.\n\nExcepturi in dolorem et non aspernatur qui. Est vel molestiae vitae cumque autem ut. Molestias voluptate ducimus dolores quidem est.\n\nEt impedit perspiciatis qui facere modi voluptatem aliquam. Quisquam et cum odit placeat reiciendis numquam. Voluptatem aut ex dolorem quibusdam. Culpa tempora consequatur qui voluptas consequuntur vel perspiciatis.', 'https://images.unsplash.com/photo-1632435499152-18838be77960?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHw1MXx8aW50ZXJhY3RpdmUtbXVsdGltZWRpYXxlbnwwfHx8fDE3MzAzNzMxMTh8MA&ixlib=rb-4.0.3&q=80&w=1080', 2, 2, 66, '2024-11-01 03:04:54', '2024-11-01 03:04:54'),
(7, 'Non consectetur molestiae repellat optio atque consequatur perspiciatis.', 'a-vitae-ab-autem-ex-mollitia-et-est', 'Nihil hic dignissimos quod molestias error. Quia nobis aliquid temporibus sapiente et ut.\n\nEt ad modi qui doloremque veritatis. Sunt inventore ut porro numquam. Numquam nihil quaerat dicta.\n\nAperiam est aut minima qui consequuntur officiis. Impedit minus molestiae aliquam quae accusamus illo aperiam. Tenetur sit illo distinctio sed.', 'https://images.unsplash.com/photo-1581094369448-f77f408cfa6f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHw2MXx8c29mdHdhcmUtZW5naW5lZXJpbmd8ZW58MHx8fHwxNzMwNDMxNDMzfDA&ixlib=rb-4.0.3&q=80&w=1080', 3, 1, 25, '2024-11-01 03:04:54', '2024-11-01 03:04:54'),
(8, 'Amet minima perferendis autem delectus recusandae odio.', 'voluptatum-molestiae-tenetur-minus-itaque-perspiciatis-sit-et-quibusdam', 'Ad nostrum et quis error. Illum itaque quas quia exercitationem et ut. Praesentium ut ut id aut.\n\nAtque voluptas rem doloribus et aut ducimus. Et porro et debitis saepe. Perferendis soluta incidunt voluptatem vel odio ut aut.\n\nVero rerum voluptatem in et a. Recusandae iure id aut sed.', 'https://images.unsplash.com/photo-1642522366375-cf22eaba6b58?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHw3MXx8aW50ZXJhY3RpdmUtbXVsdGltZWRpYXxlbnwwfHx8fDE3MzAzNzMxMTl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2, 2, 54, '2024-11-01 03:04:55', '2024-11-01 03:04:55'),
(9, 'Doloremque ut non quia aut voluptas nihil.', 'amet-rem-ea-laudantium-accusamus', 'Laudantium dolorem aspernatur enim nulla exercitationem quasi est. Est ratione beatae voluptas aut. Asperiores est voluptas natus nulla.\n\nAt voluptatem ducimus minus enim soluta velit ipsam quam. Vel beatae ad velit veniam maxime qui. Dicta est adipisci adipisci voluptatem doloribus incidunt. Nobis veniam qui eius atque provident.\n\nNisi omnis enim esse quibusdam dolores. Quam voluptatibus fugiat aut consequatur ut. Similique molestiae iure sequi porro.', 'https://images.unsplash.com/photo-1709141428202-e21518e6481f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHw4MXx8aW50ZXJhY3RpdmUtbXVsdGltZWRpYXxlbnwwfHx8fDE3MzAzNzMxMjB8MA&ixlib=rb-4.0.3&q=80&w=1080', 3, 1, 68, '2024-11-01 03:04:55', '2024-11-01 03:04:55'),
(10, 'Aliquid est eum cumque iusto sed nostrum vel.', 'excepturi-sed-dolorem-explicabo-quis-facere-totam', 'Quia sunt eligendi et amet consequatur earum quasi. Harum non magni quisquam. Eum aspernatur velit voluptas incidunt accusamus aut. Voluptas error ut alias.\n\nRecusandae maiores iusto voluptatum voluptas et iure aut. Ab aliquam ut ducimus autem vel eligendi. Hic aut voluptatum in dolor sed dolores. Debitis vitae dolorum corporis aliquam et sed.\n\nVoluptatem minima et laborum sint ea. Similique facilis assumenda pariatur aut aliquam deleniti esse aut. Expedita autem alias temporibus nihil nisi. Cupiditate natus totam voluptatum et quos asperiores odit.', 'https://images.unsplash.com/photo-1717632463998-dc3ee6717d8d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2NzA3MDR8MHwxfHNlYXJjaHw5MXx8aW50ZXJhY3RpdmUtbXVsdGltZWRpYXxlbnwwfHx8fDE3MzA0NTU0OTZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 3, 2, 41, '2024-11-01 03:04:56', '2024-11-01 03:04:56');

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
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_email_unique` (`email`),
  ADD UNIQUE KEY `authors_avatar_unique` (`avatar`) USING HASH;

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
