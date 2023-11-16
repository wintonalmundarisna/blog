-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2023 at 04:36 AM
-- Server version: 8.0.28
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2023-02-04 03:33:47', '2023-02-04 03:33:47'),
(2, 'Personal', 'personal', '2023-02-04 03:33:47', '2023-02-04 03:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_23_021337_create_posts_table', 1),
(6, '2022_02_24_034424_create_categories_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Aut tempore tempora aut atque.', 'suscipit-autem-qui-sit-nemo-dolores-laborum', 'Sit eos in consequatur. Assumenda exercitationem omnis odio fuga quas neque. Sit repellat veniam aut voluptatem accusamus nam tempore est. Saepe minus excepturi ipsa saepe nisi ratione corrupti.', 'Debitis voluptas voluptatem cumque occaecati harum delectus aspernatur. Magnam incidunt maxime minus vitae eum. Necessitatibus rerum veritatis voluptatem sint. Placeat sint qui quidem quia. Sit fugit repudiandae nemo hic.', NULL, '2023-02-04 03:33:47', '2023-02-04 03:33:47'),
(2, 1, 2, 'Aliquid ullam amet consequatur deserunt incidunt.', 'ipsam-sequi-modi-pariatur-consequatur-reprehenderit-reiciendis-nam', 'Et est quae eius dignissimos sit adipisci. Et molestiae sit quas minima molestiae. Sequi culpa quo omnis aut ex. Libero ut ipsam soluta consectetur et nostrum fuga aut.', 'Repellat perferendis voluptatum officia tempore id at. Error aut necessitatibus aut et consequatur vero. Explicabo blanditiis vel distinctio officiis voluptatem asperiores aperiam id. Reiciendis veniam ut dolor molestiae eos.', NULL, '2023-02-04 03:33:47', '2023-02-04 03:33:47'),
(3, 2, 1, 'Et odio est qui qui facere.', 'cum-optio-non-iste-veritatis-aspernatur-excepturi-quia', 'Voluptatum ratione fuga dignissimos impedit mollitia qui magnam. Quaerat repellendus sed ipsum. Commodi rerum delectus dolores qui sunt laboriosam.', 'Vero odio dolorem voluptas facilis officiis ipsum nesciunt. Et dolor eum perferendis aut. Voluptas eveniet corrupti pariatur eius veniam iste. Qui ipsum corrupti quos iusto. Recusandae harum voluptates laudantium itaque aspernatur.', NULL, '2023-02-04 03:33:48', '2023-02-04 03:33:48'),
(4, 1, 1, 'Consequatur id molestias maxime et doloremque aliquam.', 'magni-quis-non-et-vitae', 'Odio sapiente mollitia aut animi quam dolor. Nihil asperiores sint animi officia sunt. Iusto et nulla consequatur itaque saepe consequatur.', 'Repellat nihil et consequatur. Sed quidem voluptatem ipsam cumque. Quam eaque dolores accusamus voluptatem quasi modi voluptate. Ducimus doloribus esse animi qui aperiam quia consequatur. Debitis hic facere dignissimos et similique nesciunt. Voluptatem rem autem vel et molestiae et natus. Sint et officia ipsam nostrum eaque incidunt. Rerum illo occaecati vitae quo.', NULL, '2023-02-04 03:33:48', '2023-02-04 03:33:48'),
(5, 1, 3, 'Consequuntur pariatur aut beatae voluptatum ipsum.', 'molestias-est-quod-perspiciatis', 'Et aperiam explicabo neque velit sequi laborum non unde. Deleniti eum vitae ut dolor. Aliquam nam eum quasi ducimus. Voluptatem molestiae asperiores vel ut et saepe.', 'Exercitationem temporibus eligendi animi. Accusantium sed enim maxime deleniti. In libero quia voluptatum corrupti iusto. Dignissimos eum aut reprehenderit voluptatem ipsum. Eius soluta magni recusandae magni.', NULL, '2023-02-04 03:33:48', '2023-02-04 03:33:48'),
(6, 2, 3, 'Dignissimos illo sit magnam maxime.', 'vitae-quis-dolor-id-illo-ea', 'Asperiores eos blanditiis quae officiis explicabo non. Id quia delectus ut sint voluptatem.', 'Ea qui ad tenetur debitis expedita ducimus sint. Est animi dolorem sed. Et dolor fugit sit enim. Tempora quos rerum ab itaque velit perferendis deserunt. Ut voluptatem eum voluptatem quam fugit quibusdam porro temporibus. Repellendus quidem quia est voluptatum perspiciatis. Vel magni doloremque voluptatum aut enim fugit. Saepe voluptas quo rerum corporis provident et voluptatem. Dolorum quasi quia occaecati repudiandae est aut. Sint et repellat aliquid et voluptatem repellat.', NULL, '2023-02-04 03:33:49', '2023-02-04 03:33:49'),
(7, 2, 1, 'Deleniti repudiandae.', 'necessitatibus-asperiores-dolore-consequuntur-fugiat-facere-et', 'Commodi possimus error occaecati recusandae mollitia. Enim illum qui eaque. Blanditiis voluptatibus omnis non aut nobis.', 'Hic nisi repudiandae voluptatem soluta cupiditate. Nesciunt fuga maiores doloribus nisi ipsum sit fugit. Quos in consequatur ipsa soluta sed corporis temporibus dolorem. Quia provident suscipit qui quia ex. Architecto voluptas facere voluptatum ut ut officia. Eum illo rem odit fugiat sed molestias perferendis. Accusamus dolore ex a aperiam dolor facere sit. Voluptatem occaecati et eaque. Nihil vel et a in illum qui et. Eaque mollitia sed dignissimos reprehenderit et distinctio.', NULL, '2023-02-04 03:33:49', '2023-02-04 03:33:49'),
(8, 1, 1, 'Voluptas dolor et.', 'consequatur-quo-recusandae-totam-ducimus-minus-praesentium-enim', 'Minima debitis reiciendis debitis quia tempore. Tenetur molestiae excepturi dolor facilis quaerat. Accusantium autem dicta qui dolore. Maiores et ea ut error molestiae qui nesciunt.', 'Dicta ratione aut repudiandae nobis ut labore praesentium. Cum commodi eum temporibus accusamus. Deserunt ea qui nisi nihil omnis alias labore. Vel minus autem et quod error. Dignissimos officiis impedit beatae.', NULL, '2023-02-04 03:33:50', '2023-02-04 03:33:50'),
(9, 1, 3, 'Porro modi beatae velit sapiente autem.', 'ad-iste-asperiores-placeat-blanditiis', 'Qui aut hic id voluptatum. In numquam ratione voluptatem et. Voluptates possimus voluptatem beatae consequatur. Blanditiis architecto quaerat velit.', 'Aliquam et vitae minima aspernatur aut. Quia ut qui voluptatem repellat beatae voluptatibus. Quo rerum consequuntur commodi rerum velit in. Ut sit blanditiis esse fuga. Aliquid culpa ullam eveniet et. Libero quia consequatur voluptates adipisci.', NULL, '2023-02-04 03:33:50', '2023-02-04 03:33:50'),
(10, 2, 3, 'Maxime et cumque beatae repellendus.', 'aut-est-qui-nobis-alias', 'Ut totam aut laudantium ullam nostrum voluptatem. Quaerat nisi fuga est nostrum sed. Sit dignissimos similique ex a.', 'Ullam aliquid aut aut a nihil sed est. Dolorum est ex aut voluptatem. Et a enim ut asperiores qui qui libero. Ut et quo iusto illum. Velit explicabo est ab possimus molestias facere. Veniam aut itaque veritatis deserunt. Corrupti id quo quis quia ea ab aut. Quo error dolorem sit exercitationem. Velit et eligendi sapiente enim minima. Ut sint veniam quia. Rerum vel et perferendis libero omnis. Ex minima dolores quibusdam.', NULL, '2023-02-04 03:33:50', '2023-02-04 03:33:50'),
(11, 1, 2, 'Et laudantium ab qui nobis.', 'et-nisi-tempora-impedit-rerum-illum-voluptas', 'Facere ratione molestiae mollitia hic eos dolores enim. Ab impedit fugiat deserunt et minima dignissimos.', 'Qui beatae quo quos possimus et molestiae officia non. Aspernatur inventore voluptas non ullam. Ipsa asperiores sed id veritatis molestias. Nemo soluta officiis accusamus rerum doloribus. Saepe ea quia exercitationem itaque et et quas.', NULL, '2023-02-04 03:33:50', '2023-02-04 03:33:50'),
(12, 2, 2, 'Quidem aliquam et sunt.', 'cum-excepturi-dolore-quibusdam-et', 'Libero eligendi quia dolores tenetur. Cumque saepe eius ducimus ratione numquam explicabo. Possimus voluptatum qui eligendi in ut.', 'Sint qui accusantium et accusamus. Molestiae est et sint voluptatem eum eveniet. Facilis autem est aut itaque deserunt repellat. Distinctio tempora quasi vel eos sunt. Consequatur incidunt vel aliquam id id tempora et deleniti. Neque quibusdam autem atque voluptatem. Ea omnis aut eligendi consequatur nam. Et incidunt eum ducimus incidunt ipsum optio. Et autem voluptas distinctio. Necessitatibus ex molestias eos. Temporibus quidem et ad veritatis cupiditate ratione excepturi.', NULL, '2023-02-04 03:33:50', '2023-02-04 03:33:50'),
(13, 2, 2, 'Consequatur accusantium ut dolorem reprehenderit voluptatem et et.', 'fugit-temporibus-eligendi-at-non-voluptatibus-fugiat-adipisci', 'Quis qui et quae. Quis quo culpa sit. Ut quaerat et repudiandae quos hic saepe. Saepe nisi itaque iure inventore.', 'Vero laudantium rerum vero eaque. Adipisci maxime hic repellat harum eum consequuntur. Consequatur voluptas numquam corrupti tempore soluta nihil. Culpa repellat aut inventore enim culpa maxime.', NULL, '2023-02-04 03:33:51', '2023-02-04 03:33:51'),
(14, 1, 2, 'Inventore temporibus.', 'vel-minima-impedit-ut', 'Dicta sint accusantium quibusdam. Facilis corrupti sunt neque ex sed recusandae. Corrupti asperiores qui explicabo ducimus voluptate et.', 'Delectus totam temporibus quae. Sed dolorum nisi repudiandae magni id. Voluptatem eveniet consequatur voluptatem quis odio. Quae incidunt non laudantium minus excepturi. At quia ut ea modi occaecati. Et quia sit consectetur ea. Eaque placeat praesentium dolorem iure ut. Fuga ipsam nisi quod deserunt sint mollitia dolor. Iusto quod nobis dolores delectus sit est id.', NULL, '2023-02-04 03:33:51', '2023-02-04 03:33:51'),
(15, 1, 2, 'Et quos laborum.', 'qui-libero-necessitatibus-quia-in-laborum-voluptatibus', 'Dolor placeat ipsam repellendus inventore aut accusantium. Sit et modi sint. Explicabo consectetur non voluptatem explicabo facere eligendi.', 'Non doloribus aut dolor. Cum voluptatem facere asperiores qui quod. Nostrum excepturi velit voluptas ut mollitia optio ratione omnis. Mollitia sed itaque et quasi consequuntur sapiente qui. Placeat nostrum commodi nihil dignissimos. Dignissimos impedit aut ab explicabo quam quod. Nisi recusandae dolorum nostrum possimus ab praesentium.', NULL, '2023-02-04 03:33:51', '2023-02-04 03:33:51'),
(16, 1, 1, 'Architecto molestias magni.', 'dolorem-autem-facilis-eveniet-iusto-voluptatem-consequuntur', 'Omnis deserunt provident est in. Eum quasi ut illum eligendi veritatis aliquam ut. Est ex non numquam. Et aut accusantium at eligendi recusandae enim sed.', 'Maxime dolorum id molestiae veniam. A voluptas provident aliquid sunt at. Et odit autem est et. Inventore et possimus animi fugit iusto.', NULL, '2023-02-04 03:33:51', '2023-02-04 03:33:51'),
(17, 2, 1, 'Alias culpa non.', 'voluptatem-nisi-voluptate-vitae-consequatur-non', 'Minima cupiditate id molestiae at facere excepturi omnis quia. Voluptas nostrum qui harum consectetur est dolores laudantium. Rerum fuga ad ipsum eaque similique dolorum. Natus sint sint eaque pariatur enim.', 'Porro et eum quidem et nisi architecto. Incidunt minima ut doloremque voluptatibus fugiat non et. Rem minima sit vel et perspiciatis fugiat. Et temporibus ipsum qui aliquam repudiandae et. Voluptas qui rerum animi quam dolorum aut. Eius sunt consectetur delectus reiciendis fugiat dicta sint. Est quaerat expedita et et quo et. Rerum neque quos aut incidunt velit voluptatem. Sapiente sint odio maxime nostrum quisquam dolorem totam.', NULL, '2023-02-04 03:33:51', '2023-02-04 03:33:51'),
(18, 2, 1, 'Porro asperiores sit quisquam.', 'iure-ex-non-autem-nihil-consequatur-veniam', 'Autem ullam omnis possimus. At sapiente maiores minus ea est qui amet et. Tempora beatae facilis voluptas accusantium sequi.', 'Ut beatae tenetur quia mollitia ipsam ut eos. Ratione deleniti et quae alias et modi dolor dolor. Perferendis quo iusto et voluptatem rerum libero. Quo vitae reiciendis quibusdam est. Occaecati quo dignissimos quaerat ut labore. Rerum in qui quis. Vitae reiciendis possimus distinctio sit labore suscipit doloremque quo. Nostrum ea sapiente aut ut maiores repudiandae odio fugit.', NULL, '2023-02-04 03:33:51', '2023-02-04 03:33:51'),
(19, 1, 1, 'Et recusandae dolorum dolorem deserunt.', 'cupiditate-voluptas-qui-commodi-rem-quisquam', 'Labore natus non sed neque qui non. Optio et dolorem tempore iure occaecati nam.', 'Et adipisci molestias dicta maiores nostrum eveniet non. Dicta a sit eos explicabo veniam. Quis fuga qui quo illum. Perferendis facilis libero voluptate sit accusantium sapiente est. Ratione quisquam incidunt rerum rem. Corporis pariatur accusantium in corporis voluptas perferendis aliquid. Enim illum et sint dicta voluptatum voluptatibus maiores. Eos et accusantium repellendus rem quae. Eos veniam qui praesentium voluptas corporis. Omnis laboriosam modi dolorum temporibus voluptate quaerat molestias. Fugiat unde vitae blanditiis.', NULL, '2023-02-04 03:33:52', '2023-02-04 03:33:52'),
(20, 2, 1, 'Ea earum qui at iste corrupti.', 'quod-excepturi-tempore-aliquam-aut-qui-consequatur-consequatur', 'Aut nam fuga harum aperiam tenetur eos ipsum et. Officiis a optio nihil labore recusandae repellat laboriosam quae. Tempore voluptatibus voluptas autem vero quo consequuntur recusandae. Architecto praesentium eaque et aut. Explicabo corporis suscipit neque est.', 'Saepe eum sint aliquid accusantium. Quia saepe minima totam atque vel tempore qui. Beatae enim suscipit accusantium sint ullam tempora. Iure veritatis dolor optio quibusdam. Alias esse quis ullam et natus. Hic nobis nobis deserunt. Nostrum hic provident est rerum facere quaerat eum.', NULL, '2023-02-04 03:33:52', '2023-02-04 03:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'riyanti.nova', 'Nyana Hairyanto Prabowo', 'qpradipta@example.net', '2023-02-04 03:33:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LDz7vAa8qe', '2023-02-04 03:33:46', '2023-02-04 03:33:46'),
(2, 'gantar.pangestu', 'Opung Marbun S.Sos', 'ffarida@example.net', '2023-02-04 03:33:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kyeA3qx25U', '2023-02-04 03:33:46', '2023-02-04 03:33:46'),
(3, 'saefullah.muhammad', 'Lukman Saptono', 'dewi57@example.org', '2023-02-04 03:33:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v2etEeeXkG', '2023-02-04 03:33:47', '2023-02-04 03:33:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
