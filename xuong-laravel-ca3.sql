-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2024 at 04:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xuong-laravel-ca3`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `cover`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Áo Giữ Nhiệt', 'categories/HK2RvYiXgqyVAWMqJupB0dc06xCl3y2J4Li7p5lN.jpg', 1, '2024-07-20 03:24:44', '2024-08-02 10:41:49'),
(3, 'Áo Thun Nam', 'categories/mFXl1HoehHZnEcztDrxykf42i1n3hxGHQjK3xjx6.jpg', 1, '2024-07-20 03:24:44', '2024-08-02 10:41:18'),
(6, 'Áo Nam Unisex', 'categories/xgk1eDMJHbLo6QiosXTz0miV5Id8tqEUSjIicBBt.jpg', 1, '2024-07-20 03:24:44', '2024-08-02 10:40:35'),
(7, 'Quần Short Nam', 'categories/CccwtoGuMwJLgihHDy4wZVCdzzSJaLK4siaR51s6.jpg', 1, '2024-07-20 03:24:44', '2024-08-02 10:40:07'),
(8, 'Quần Âu', 'categories/kh9rgT3FTBn5CPDwvGilWPrZAsK3DelsE894rtgS.jpg', 1, '2024-07-20 03:24:44', '2024-08-02 10:39:44'),
(11, 'Quần Jean', 'categories/s9xzYNcWZynjgqxMtBhxfYQks06NaxvHsdFrOxzL.jpg', 1, '2024-07-20 07:00:50', '2024-08-02 10:36:59'),
(15, 'Áo Hoodie', 'categories/rcupOLz0YhbM6qEHhdebaaOt7ukpHfcGRNOqgdrN.jpg', 1, '2024-07-29 18:19:17', '2024-08-02 10:36:07'),
(16, 'Áo Khoác Nam', 'categories/mjmh31T8DZ89yTJhBuP5CcswnRAFnv8bN82IKmCn.jpg', 1, '2024-07-31 21:18:28', '2024-08-02 10:36:41'),
(22, 'hoodie nữ', 'categories/MhLxS2HdQJldAf72dMUoVPvwNuBsMFSMrw94sxe5.jpg', 1, '2024-08-02 17:58:05', '2024-08-02 17:58:15');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_20_100102_create_categories_table', 1),
(6, '2024_07_20_161104_create_products_table', 2),
(7, '2024_07_20_161221_create_product_galleries_table', 2),
(8, '2024_07_20_161250_create_product_colors_table', 2),
(9, '2024_07_20_161324_create_product_sizes_table', 2),
(10, '2024_07_20_161344_create_product_variants_table', 2),
(11, '2024_08_02_140923_create_carts_table', 3),
(12, '2024_08_02_141018_create_cart_items_table', 3),
(13, '2024_08_02_141055_create_orders_table', 3),
(14, '2024_08_02_141150_create_order_items_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_price` double(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `img_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) DEFAULT NULL,
  `material` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `use_manual` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_best_sale` tinyint(1) NOT NULL DEFAULT '0',
  `is_40_sale` tinyint(1) NOT NULL DEFAULT '0',
  `is_hot_online` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `sku`, `category_id`, `img_thumb`, `price`, `price_sale`, `material`, `description`, `use_manual`, `is_active`, `is_best_sale`, `is_40_sale`, `is_hot_online`, `created_at`, `updated_at`) VALUES
(1, 'Perspiciatis in sit vel neque voluptatibus.', 'perspiciatis-in-sit-vel-neque-voluptatibuskDE19OfY', 'TdCtUtRg0', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Aut quia animi voluptas laborum. Qui autem est in et.', 'Maxime molestiae omnis atque. Quos hic nihil ut iusto et.', 'Ut quod reiciendis vel sed. Quidem laudantium impedit quo qui.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(2, 'Non beatae tempore eos quia id.', 'non-beatae-tempore-eos-quia-idXK7Bc2St', '450sW0y81', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est quis eligendi error fuga ut. Iure et qui ut laudantium ipsa.', 'Autem ipsa non autem non nostrum. Nisi eligendi sunt eaque quis sunt eaque laboriosam cupiditate.', 'Reiciendis vel qui perspiciatis consequatur optio. Sint qui pariatur et a in.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(3, 'Sit aut animi et eius nam fugit quo.', 'sit-aut-animi-et-eius-nam-fugit-quoE0nZIrO4', 'jrsvfLPX2', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Aut natus repellendus esse nisi. Ipsa saepe totam doloribus non ea amet.', 'Perferendis qui natus aut numquam tenetur beatae. Nihil soluta architecto facere unde recusandae.', 'Ex maiores sed vel quod. Minima quas iusto excepturi sed harum. Soluta eos veniam nihil nisi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(4, 'Nulla similique laboriosam rerum esse.', 'nulla-similique-laboriosam-rerum-essevcAMkEV7', 'rYEFV0se3', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Illo sint ea culpa placeat autem sed aut. Totam autem expedita ut similique non eligendi et.', 'Sed autem aut quia corporis quasi voluptatem. Sed molestiae hic ea accusamus.', 'Neque eveniet eum beatae ut aut architecto tempore. Consequatur nam veniam et inventore qui.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(5, 'Ea voluptatum consequatur ab reprehenderit.', 'ea-voluptatum-consequatur-ab-reprehenderitCZxncQyY', '7ZnZaJSF4', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'In nihil saepe fugit fugiat et facilis. Laudantium quod labore dolores enim unde dolores.', 'Ratione unde eius ex animi eum quos. Quisquam quo saepe dolorem corrupti voluptatem molestiae est.', 'Quo eos optio aut magnam eligendi modi. Voluptatibus corrupti voluptatem et quos.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(6, 'Distinctio voluptatum tenetur quaerat enim quasi.', 'distinctio-voluptatum-tenetur-quaerat-enim-quasiq3fOUklg', 'LoitJnFF5', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Et quae provident in a quisquam possimus provident. Ut et autem laborum aut et nemo beatae.', 'Earum ut exercitationem rerum nam. Et atque nobis deserunt quam non. Quo eligendi modi quae.', 'Delectus incidunt quia debitis est est. Et qui est quo asperiores. Eum aut et est quo iure sint.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(7, 'Rerum sequi quas ea laudantium.', 'rerum-sequi-quas-ea-laudantiumzOKJ9Vt7', 'O8JqPZqr6', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Qui modi libero laudantium. Voluptas doloribus dolorum facere libero occaecati aut ut ut.', 'Id adipisci aut perspiciatis sunt ut animi aut. Odit cumque voluptates consectetur ut.', 'Atque ea quae sit possimus necessitatibus et. Officia culpa quaerat labore animi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(8, 'Nihil ut eaque aspernatur maxime.', 'nihil-ut-eaque-aspernatur-maximeg08LALiz', 'TQjHQvUI7', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Suscipit non vel tempora accusamus. Sapiente suscipit non facere facilis illum.', 'Qui ut libero odit. Optio rerum cupiditate ab sunt. Omnis iusto sed mollitia placeat ratione.', 'Omnis cumque dolorem et. Non vel saepe et incidunt. Repellat occaecati molestiae et in voluptate.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(9, 'Voluptatum ipsum rerum eligendi voluptatem qui.', 'voluptatum-ipsum-rerum-eligendi-voluptatem-quiwKmZaVej', 'ReD7QG0J8', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Molestias dolorem voluptate numquam odio. Excepturi quidem beatae dolore atque.', 'Sit officia est dolore at dolorem. Consequatur exercitationem sit provident qui tempora sed.', 'Iusto sed sit rerum magnam. Nostrum et animi illum vero. Et expedita asperiores totam explicabo.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(10, 'Est ut ab ut voluptas ut.', 'est-ut-ab-ut-voluptas-utFtlBp9En', 'qNdVE7o89', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Qui aspernatur eius corrupti aut. Dolores eos quos provident aut est qui similique.', 'Iusto accusantium consequatur nostrum cumque eum neque. Non impedit inventore est nam.', 'Officia explicabo et molestias. Itaque eum est molestiae illo rerum eos tempore impedit.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(11, 'Et culpa ea ullam qui eius.', 'et-culpa-ea-ullam-qui-eiusBsrXqqzS', 'fmnJEoMT10', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Omnis et unde esse praesentium dolores autem porro. Ut sint ipsum ea voluptatum aliquid voluptate.', 'Ut quo omnis est sit minus fugiat dignissimos rem. Qui natus illum perspiciatis.', 'Velit corporis adipisci corporis commodi sunt. Vitae corrupti sunt cumque saepe.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(12, 'Porro quo totam placeat laborum inventore.', 'porro-quo-totam-placeat-laborum-inventore1eHooORz', '1lTMhg1K11', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Non voluptas non vel quod nemo at quas voluptatum. Ea officiis minus harum.', 'Repudiandae eius vitae provident facere. Molestias exercitationem sequi ipsam.', 'Consequuntur et incidunt architecto. Voluptate dolor ea animi omnis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(13, 'Ea tempora molestiae libero in non maxime quod.', 'ea-tempora-molestiae-libero-in-non-maxime-quodCmCvDO3u', 'lSH7qcaj12', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Et maiores quo aut aut itaque hic. Eum amet deleniti tempore.', 'Dolor possimus non perferendis et autem. Sint enim mollitia quia ab.', 'Aliquam molestias totam animi. Vero officia iusto aut unde ratione dolore.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(14, 'Quia fugit cum qui beatae laudantium vero magni.', 'quia-fugit-cum-qui-beatae-laudantium-vero-magnitfT1REX3', 'xSxJOXo313', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Maiores sit qui sed enim beatae voluptatum. Officiis autem ex eum repellendus.', 'Est autem non enim ab. Vitae cum vero sed.', 'Ratione impedit maiores error sit eos. Quisquam soluta ut ratione excepturi et debitis vitae.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(15, 'Qui necessitatibus voluptatum harum quo et.', 'qui-necessitatibus-voluptatum-harum-quo-ettJ55zh3V', 'Sp8R6XQB14', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Reprehenderit est ex eligendi tempore mollitia. Ratione ut eum in vel.', 'Nam reprehenderit ut est et rerum. Odio non est ipsa dolores asperiores assumenda sed.', 'Eius tempore quas quibusdam. Non excepturi quos rerum et. Eius ut qui facere repudiandae.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(16, 'Ad sunt unde cupiditate velit minima unde.', 'ad-sunt-unde-cupiditate-velit-minima-undexuO2o7kl', 'zIf5TZWT15', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Iusto accusamus et dicta ut sit sed sed. Cumque et aspernatur eos. Rem quia vitae tenetur.', 'Laudantium magni ea rerum suscipit vero unde nihil. Maiores saepe recusandae incidunt.', 'Ducimus dolor dolor aut amet. Cum ut cum eligendi odio. Repudiandae eos doloribus et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(17, 'Aut iusto molestiae praesentium quia itaque.', 'aut-iusto-molestiae-praesentium-quia-itaqueXOXL9AKY', 'KEraXFs216', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Ex laudantium quis nostrum vel aut magnam. Et quia placeat dicta nostrum.', 'Voluptatem rerum quo dolores quibusdam nemo minima quo molestiae. Et quae dignissimos iure nostrum.', 'Aliquam ad quis tenetur quod dolores in consequatur sequi. Vero ut quis odit qui sunt et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(18, 'Eum sed ipsam quo pariatur.', 'eum-sed-ipsam-quo-pariatursVzGfuqV', 'd2fe1RZQ17', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Qui porro a dolores culpa velit. Ut minima quia enim et. Quia facere veritatis sed omnis.', 'In quis enim quos fugiat harum. Maxime nostrum aliquam modi excepturi maiores.', 'Et quia saepe amet omnis et voluptatibus sed. Laudantium consectetur et omnis ducimus nihil.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(19, 'Et animi est ipsa fugit et sit magni.', 'et-animi-est-ipsa-fugit-et-sit-magniAu0EX6pi', 'uusHzxyE18', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Autem odio rem sunt. Et aut non eveniet dolor ipsam a aut. Voluptatem ex eum qui quis fugiat.', 'Deserunt officiis ad harum vel. Consequatur fugit ea nisi suscipit repellat accusamus.', 'Voluptatibus reprehenderit velit illo cumque cupiditate voluptas. Quia tempora aperiam sed.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(20, 'Voluptates voluptas iure aut non.', 'voluptates-voluptas-iure-aut-non37b0a4kr', '0qvWTq8i19', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Accusantium libero nesciunt dicta consequatur dolore. Similique accusantium eos saepe iste nulla.', 'Id in voluptas fugiat incidunt. Quo excepturi voluptatem est. Sapiente id ex magni dicta ut.', 'Corporis dolorem aut est enim. Ex voluptates neque sint.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(21, 'Non deleniti impedit rem dolorem qui.', 'non-deleniti-impedit-rem-dolorem-quioo453yhU', 'ZyA1HXk020', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Animi ullam nostrum error porro qui. Pariatur asperiores adipisci repellat officia eos saepe ut.', 'Quam sint sed nam odio nam. Dolorum vitae qui asperiores qui.', 'Asperiores eveniet non reprehenderit quia. Dolorem velit alias quas maxime minus voluptas.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(22, 'Accusamus sed impedit quia eos facere.', 'accusamus-sed-impedit-quia-eos-facerewuhzQKTd', 'ufOFOZr521', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Natus nihil qui reiciendis rerum et dolorem magni. Asperiores nobis nostrum voluptates.', 'Aut odio odit autem et iste voluptas consequuntur eveniet. Corporis voluptatem asperiores a.', 'Quis velit non aut eos sint debitis. Eos sit praesentium minima quia ratione aut.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(23, 'Nisi harum excepturi rerum laborum qui pariatur.', 'nisi-harum-excepturi-rerum-laborum-qui-pariaturxSZamFN3', 'OlxvjZZa22', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'In quaerat saepe reiciendis. Error molestiae tempora doloribus omnis et voluptates asperiores.', 'Harum fuga voluptate laboriosam molestiae. Et est repellendus quia harum ut quis.', 'Repellat provident hic ut iusto. Aut odit rem sed quia sint a. Quibusdam modi est cupiditate.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(24, 'Magni sunt dolorum vero et.', 'magni-sunt-dolorum-vero-etX3MgMAE0', 'ecIZcjxo23', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Illo in quidem soluta et commodi. Provident expedita eveniet consequatur delectus a rerum enim.', 'Minima similique dolorum voluptatem sint et ut possimus. Maxime eum aut nisi magni quod quidem.', 'Et reiciendis debitis qui velit. Quia dolorem unde veritatis ut itaque rerum.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(25, 'Cumque beatae officiis non est harum.', 'cumque-beatae-officiis-non-est-harumPmeiWSR8', 'ij87SwgE24', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Optio odio labore et consequatur fugit ut modi. Itaque sit nobis recusandae vero ea blanditiis.', 'Magnam eveniet repudiandae aut in impedit. Omnis quasi magni qui non.', 'Perspiciatis vitae est quo. Labore omnis qui quis accusantium et. Quas dignissimos velit quo.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(26, 'Repellendus ullam aut fugiat.', 'repellendus-ullam-aut-fugiatsZfNo6k0', 'nAF6IbEo25', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est autem assumenda accusantium enim libero vel nihil. Modi natus placeat sed sint necessitatibus.', 'Ut aut adipisci earum consequuntur nobis. Voluptatem ipsa sed rerum id repellendus rerum.', 'Eos tempore et iusto. Quis fuga et quia temporibus.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(27, 'Ipsam ea vel vel ducimus.', 'ipsam-ea-vel-vel-ducimusvakLOMul', 'm5GtuIz526', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est iste voluptas aut quia quas. Tempora accusamus atque cupiditate sequi ducimus.', 'Sed sed natus itaque. Sed inventore ut omnis est rem molestias.', 'Vel ut velit expedita ab. Ducimus accusantium ullam doloremque ex modi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(28, 'Earum quos in deserunt ipsam sint.', 'earum-quos-in-deserunt-ipsam-sintcacMN6mx', 'rnJFqfYR27', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Ut maiores voluptas non necessitatibus. Inventore possimus atque repellendus tempore aut quae.', 'Est blanditiis ut neque quia voluptas. Animi numquam quis vitae ad. Fugit molestias qui quas porro.', 'Sit quia dolor non. Necessitatibus dolor exercitationem fuga hic maxime eligendi fugiat.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(29, 'Quidem nostrum in adipisci debitis.', 'quidem-nostrum-in-adipisci-debitis2i0d2Ild', 'uAZeCqpS28', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Id vitae dolor doloribus vitae. Sed sunt laboriosam modi soluta autem magnam omnis.', 'Sunt aut eum autem fugiat voluptatum voluptatem blanditiis. Modi vel placeat ut ducimus impedit.', 'Earum reiciendis aut dolorem qui. Minima incidunt aut quasi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(30, 'Accusantium ipsa commodi non.', 'accusantium-ipsa-commodi-nonPxhMRvvU', 'waTSKB7i29', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Ducimus et facere consequatur id. Exercitationem necessitatibus magnam nisi distinctio.', 'Esse itaque cupiditate eaque maiores et aliquid. Consequatur esse ullam qui. Odio aut et quia.', 'Ea assumenda est ipsam quas atque eius. Nam omnis omnis modi quam nulla enim ratione.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(31, 'Assumenda harum aut laboriosam in.', 'assumenda-harum-aut-laboriosam-ini0Jvh4BK', 'zfgC377o30', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Aperiam ut nemo sed. Odit et eveniet non est. Optio adipisci cumque corporis omnis dolorum libero.', 'Autem sunt sunt quia iusto. Rerum magni tenetur voluptatibus sequi et.', 'Qui perferendis adipisci et placeat. Corporis consequatur ut nemo cupiditate rem.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(32, 'Eaque unde distinctio in facere architecto.', 'eaque-unde-distinctio-in-facere-architectoqO215qfG', 'qnbGT8d031', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Nemo in est impedit. Ea est blanditiis sed nisi omnis. Dolore aut officiis omnis quis deleniti.', 'Quis explicabo quo odit alias quae nihil. Aperiam sunt quaerat doloremque quis.', 'Nisi beatae quas id expedita minus. Nisi quasi aliquid consequatur tempore sint accusamus.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(33, 'Aut repellendus quod qui ad commodi amet.', 'aut-repellendus-quod-qui-ad-commodi-ametGJy2ZDDO', 'po2BeqHV32', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Qui animi dolores suscipit ea error sit. Et molestias fugiat numquam est. Doloremque a a laborum.', 'Voluptatem vel sapiente et voluptate eum atque dolores. Sed in hic aliquid sit et.', 'Adipisci qui reiciendis architecto qui. Autem aut rerum aliquid similique autem at.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(34, 'Distinctio libero possimus et iste delectus ut.', 'distinctio-libero-possimus-et-iste-delectus-utsKY3wJ1P', 'HeuWUN9Q33', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Ab possimus expedita sit qui. Quis distinctio minima aut impedit.', 'Minima autem quo voluptatem autem. Eius voluptas excepturi voluptates harum maiores deserunt.', 'Quia ad quasi quam. Et sequi a et aperiam nostrum et. Sunt eos alias non saepe aut illum dolor.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(35, 'Ut quia possimus porro saepe sed.', 'ut-quia-possimus-porro-saepe-sedBxv0zj7w', '5vgWFsNS34', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Quasi amet id illum id quia. Impedit iusto quos aut quisquam reiciendis.', 'Praesentium sapiente repudiandae nisi animi sint. Vel quam quo quod quam dolore dolorem.', 'Qui eius consectetur culpa quia aut quasi. Repudiandae quia nihil nisi corporis est quae.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(36, 'Et occaecati dolorem et perspiciatis.', 'et-occaecati-dolorem-et-perspiciatish4BXW2gj', 'BRqPnuA335', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Autem aut enim porro. Nostrum et est accusamus expedita.', 'Aut quis non vel. Autem sit est rerum quaerat corrupti veritatis. Accusantium ea qui illo.', 'Exercitationem deserunt qui facilis nesciunt animi voluptatem. Architecto et non sapiente sit.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(37, 'Omnis quia et quam dolor illum.', 'omnis-quia-et-quam-dolor-illumj59eMUdh', 'TDDfNQMn36', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Rerum adipisci ratione et eum cum consectetur voluptas hic. Aut molestias labore qui assumenda et.', 'Ad ipsa fuga consequatur in optio. Maxime et excepturi dolore reiciendis aut qui.', 'Qui inventore aut incidunt voluptatem. Maxime enim omnis rerum id qui quas quas.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(38, 'Aut libero harum unde.', 'aut-libero-harum-undewNl7ogxM', 'v3H8aDyB37', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Hic quas esse qui suscipit nesciunt. Unde dolores facilis est aut voluptates.', 'Dolorum mollitia animi voluptas ipsum. Dolore tenetur sequi placeat.', 'Vero praesentium esse ut sunt tempora. Aut corporis quia et officiis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(39, 'Et dolorum quia illo reiciendis.', 'et-dolorum-quia-illo-reiciendishzlv6aqO', 'e6g1MmKs38', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Repudiandae quas sapiente ut necessitatibus vero. Expedita labore ut consequatur beatae vero est.', 'Et ut quas ut rerum. A ut et alias culpa qui. Saepe et vel dolores autem.', 'Dolore sit voluptas quod quam. Alias consectetur iusto quidem tempora sed odit repellat.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(40, 'Rerum similique dicta aut sed.', 'rerum-similique-dicta-aut-sedrSJ8cYGV', 'I3SAlMP739', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Omnis sapiente deleniti et in. Sequi porro autem at. Doloremque id exercitationem est aut.', 'Unde nesciunt repellat ut mollitia magni ipsa. Vel dignissimos in numquam eligendi aut.', 'Commodi assumenda placeat id architecto. Dolore aut ut atque autem eligendi aspernatur.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(41, 'Ut aut minima eos porro sit molestias atque.', 'ut-aut-minima-eos-porro-sit-molestias-atqueLr46bbQt', 'SguN5aeQ40', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Soluta iusto ratione cumque maxime culpa odio. Odit reprehenderit minus voluptas laborum ex.', 'Recusandae dolor vel quo. Omnis deserunt quos commodi deserunt. Ut et nihil qui et ducimus.', 'Quae sed quibusdam id numquam maxime quos. Ut animi omnis distinctio ad quia laudantium laboriosam.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(42, 'Sit ratione quas ut ipsam ea itaque molestias.', 'sit-ratione-quas-ut-ipsam-ea-itaque-molestiasfILkT4GN', 'zokLosZ241', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Optio labore debitis omnis voluptatum reiciendis repellendus sunt. Vel sit facere magni qui.', 'Minima sit ab voluptatum velit. Tempora nobis cumque voluptatem ipsa ut molestiae.', 'Natus perferendis et qui voluptatum. Non et voluptas dicta. Eum numquam nam sit ea consequatur vel.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(43, 'Qui et officia sint praesentium odit.', 'qui-et-officia-sint-praesentium-oditIATl6w23', '2r0edtYK42', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est et quas nam ut maxime quisquam. Impedit amet culpa et velit et saepe. Quis corrupti est saepe.', 'Autem enim libero ea et sequi id officiis. Nulla consequatur error reiciendis eum.', 'Quis aut iste ipsum. Quasi totam officia quia ipsa. Iste optio omnis debitis est.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(44, 'Et consectetur sit sit neque accusantium ipsam.', 'et-consectetur-sit-sit-neque-accusantium-ipsamm62YRECw', 'KCJrhMT243', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Rerum excepturi molestiae optio reprehenderit. Suscipit quo aut dolore suscipit.', 'Ut expedita unde dicta iste sed libero. Omnis blanditiis quos laboriosam et non.', 'Quia quia sit consequatur veritatis repellendus qui dolorum. Eius perspiciatis veritatis quod qui.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(45, 'Consequatur quaerat mollitia ipsam id id.', 'consequatur-quaerat-mollitia-ipsam-id-ideNufqFg6', 'kS55Vm2744', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Ullam officia quia nesciunt aut consequatur consequatur excepturi. Suscipit enim qui quas cum.', 'Et qui maxime at provident ipsam. Libero et et ea. Blanditiis et beatae possimus dicta.', 'Eum ex aperiam nostrum voluptatum molestiae debitis. Est id est est magnam quia magni.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(46, 'Sint sit quia minima.', 'sint-sit-quia-minimaEKyvUrb6', '69cu7K5V45', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Eum cum reprehenderit quia. Possimus quasi aliquid et cumque. Eum sit alias officiis laboriosam.', 'Quod enim quos quis vel odio. Aperiam eos delectus accusantium odit provident consequuntur aut.', 'Et quis et ex consequatur. Dicta odio aliquid sapiente consectetur ut corrupti vitae.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(47, 'Ad voluptatem eum distinctio molestiae ea odit.', 'ad-voluptatem-eum-distinctio-molestiae-ea-odith0U1PwLH', '58U6dosD46', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Error aut qui vel omnis. Modi odio est aliquam aspernatur.', 'Qui voluptatem aut rerum dolores ex. Quis sit sint non facere. Placeat ab optio perferendis aut.', 'Quaerat amet pariatur delectus. Qui eligendi magnam dolores voluptatem sed porro.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(48, 'Est nobis quo magnam vitae.', 'est-nobis-quo-magnam-vitae561sHK8l', '7iu9GVo647', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Magnam totam omnis fugit. Ducimus sapiente modi sed debitis impedit fugiat.', 'Modi sit et sit quidem et velit saepe. Iste unde asperiores eaque quis beatae voluptatem.', 'Est ipsa quo magni consequatur dolor eius qui debitis. Enim vitae eum eum.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(49, 'Quia amet est veritatis nobis.', 'quia-amet-est-veritatis-nobislMycv345', 'jIuwp0Lu48', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Illum perferendis rerum iusto quas quod corrupti non. Qui rem dolor non velit.', 'Hic sunt tempore fuga voluptas. Magni rem eos est. Velit est atque molestiae commodi.', 'Maxime dolor qui dolore enim. Libero ex pariatur sit vel.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(50, 'Impedit voluptas aut nemo enim neque ut.', 'impedit-voluptas-aut-nemo-enim-neque-utcAuYgM4T', 'PawlBv0R49', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Id labore illum molestiae et fugit sequi. Corrupti rerum voluptatem mollitia maxime dolorum quis.', 'Soluta iusto vitae laudantium veniam quod nesciunt quibusdam. Quo laborum a eligendi accusamus est.', 'Non modi est temporibus quidem dolores quas exercitationem. Magni aliquam adipisci commodi nemo a.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(51, 'Dolore eum laborum ipsam aliquid tempore et.', 'dolore-eum-laborum-ipsam-aliquid-tempore-etadKSL8nP', 'u0xYTyiQ50', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Cum expedita accusamus veritatis expedita est. Alias quod perferendis illum magni.', 'Suscipit quia ipsa deleniti qui sit qui. Sed enim illum eius.', 'Voluptate animi doloremque odit nihil. Cupiditate deserunt sed aut et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(52, 'Unde officiis voluptatem minus voluptate.', 'unde-officiis-voluptatem-minus-voluptateGeZ7yeyp', 'r2EYvNxP51', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Eligendi porro eum quis ipsa et distinctio. Esse unde distinctio nemo nemo aut praesentium.', 'Doloribus similique corporis velit nisi. Maiores quia totam velit impedit id.', 'Voluptate harum impedit natus tempora. Vel fugiat dolores ad excepturi nostrum quos adipisci.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(53, 'Distinctio voluptatum aut fugiat autem eos.', 'distinctio-voluptatum-aut-fugiat-autem-eosNXIuILBV', '8gT4mIIC52', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Temporibus soluta alias velit voluptatem. Est quod tempore est quo.', 'Qui nam et id at. Illo rerum qui dolor neque quasi iste sed. Est nihil nam repellendus eum sed.', 'Soluta maxime ut et. Quis sit voluptatem neque quia. Sunt ea reprehenderit eius nostrum et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(54, 'Et et in aut dolor sit voluptas.', 'et-et-in-aut-dolor-sit-voluptasJRVmQysh', 'jHbi5mBZ53', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Excepturi aperiam ratione eum ad. In delectus voluptas quos et.', 'Soluta ipsa dicta blanditiis ea. Porro et ut eum repellendus. Unde vero aperiam ipsum.', 'Dolores id cum quia. Nemo nihil labore nostrum. Veniam ex odio id repudiandae.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(55, 'Modi ut sunt vel enim voluptatibus.', 'modi-ut-sunt-vel-enim-voluptatibusHCu60L6X', 'mM3SwZ6x54', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Consequatur nihil repellat voluptates non. Debitis perferendis rerum est similique nihil deleniti.', 'Accusantium architecto quos magni. Nemo at quam temporibus voluptas itaque quas.', 'Dolorem eius dolorum dolores eius quaerat soluta voluptas. Sit ut sunt animi vitae repellendus.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(56, 'Eius quo minima omnis ex odio distinctio est.', 'eius-quo-minima-omnis-ex-odio-distinctio-estPjUpMLSD', 'rY9HsrWf55', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Incidunt cupiditate occaecati repudiandae est non non omnis. Velit nihil et voluptas at voluptatum.', 'Delectus ab eum aspernatur. Eius eos sint ea quae facere.', 'Hic quibusdam possimus velit consectetur. Sit quasi voluptatem et. Quidem porro et et blanditiis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(57, 'Aliquam assumenda id rerum magnam officiis.', 'aliquam-assumenda-id-rerum-magnam-officiisxgaLmfLB', 'NxqmFJyR56', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Nesciunt id neque ut quis. Molestias saepe est ea asperiores est quae.', 'Maxime atque magni aliquam quo eum dolore. Aut quia quis nihil quisquam consequatur.', 'Odit laborum sapiente mollitia. Totam dolore quisquam perferendis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(58, 'Quia sed eos qui et id provident quis.', 'quia-sed-eos-qui-et-id-provident-quisVGNxpLNW', '4xZtXWUq57', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est et eum id. Impedit eos omnis error aut aut.', 'Aliquid quasi quibusdam cum architecto. Ea aspernatur et necessitatibus nihil nam sapiente quam.', 'Voluptatem qui quae officia. Accusantium ad sit est. Quisquam nostrum vel placeat velit.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(59, 'Et numquam quibusdam quo in id.', 'et-numquam-quibusdam-quo-in-idWYQwCLOk', 'jGNgSO3q58', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Et doloribus eaque provident illum et. Hic tenetur eveniet asperiores aliquid voluptatem excepturi.', 'Sed deleniti eum nemo provident. Fuga dicta consequatur qui autem est.', 'Rerum ab velit id quia quibusdam. Ut earum qui consequatur quo blanditiis quod asperiores.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(60, 'Cum commodi impedit dicta.', 'cum-commodi-impedit-dicta1F4x8TMF', 'yWWjc4RT59', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Qui ut sequi rem. Velit distinctio cupiditate ut quibusdam in repellendus quas sequi.', 'Occaecati vel sed repudiandae corporis. Nulla reiciendis ut eaque voluptatem ab.', 'Iste enim et blanditiis aut corporis et. Et quod voluptatem ea voluptatum.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(61, 'Qui pariatur non reiciendis quos.', 'qui-pariatur-non-reiciendis-quostRvBiR6c', '22mhEai760', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Unde omnis officiis ut. Iste architecto sed quo sed est ea quod hic.', 'Totam natus quos ea asperiores. Dicta facere animi consequatur ipsa rem voluptatibus est.', 'Eveniet pariatur ipsam quaerat dolor voluptatem non. Velit qui sint modi dolore ea iusto voluptas.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(62, 'Consequatur accusantium itaque numquam unde quia.', 'consequatur-accusantium-itaque-numquam-unde-quia3hjhHN4o', '0Cwtlxf661', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Hic et reprehenderit excepturi expedita. Nisi eveniet quo et.', 'Et autem soluta id ratione. Consequatur possimus voluptatem explicabo. Harum est et ut et.', 'Consequatur ea assumenda odit quas voluptas minus. Sunt nesciunt temporibus vitae error voluptatum.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(63, 'Non alias qui quia sint non rerum iusto.', 'non-alias-qui-quia-sint-non-rerum-iustoi0KaPWUB', '6OvgCylf62', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Impedit repudiandae delectus tempore quia. Aut sit vitae illo totam.', 'Non libero assumenda incidunt magnam inventore. Dolor sapiente magni eos quo aut illo.', 'Sint illum ut sint excepturi. In sit voluptas omnis aut asperiores et delectus.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(64, 'Autem ut autem dolor dolores provident dolor.', 'autem-ut-autem-dolor-dolores-provident-dolorNLvpMcT0', 'WPShyFVf63', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Quia ratione enim voluptatibus quia omnis. Magnam excepturi ut dolores.', 'Quis officia libero qui. Consequatur occaecati dolorem necessitatibus aut nam eveniet facilis.', 'Dolor occaecati et harum numquam nobis. Voluptatum enim temporibus sed fuga quam quia.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(65, 'Fugiat voluptatum ut aut deserunt.', 'fugiat-voluptatum-ut-aut-deseruntNfGcpTHa', '5hqV85z364', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Eos porro odit velit eum dolores assumenda. Expedita dolor quia aut iste. Earum sequi ut iusto.', 'Velit voluptas alias amet sunt voluptas. Eaque velit molestias aliquid.', 'Quia in facere quo. Beatae ut non illum. Perferendis eveniet sapiente nesciunt deserunt eos.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(66, 'Soluta nihil enim ipsa quia.', 'soluta-nihil-enim-ipsa-quiaDaUmAdqc', 'wagqSlzl65', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Quibusdam expedita ducimus vero perferendis. Magni aut est ad.', 'In fugit quis alias quia exercitationem quos porro aut. Est hic quo illo molestias quia eos vel.', 'Soluta ea omnis est quasi similique voluptatem. Fuga debitis quia et voluptatibus voluptas.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(67, 'Eligendi dicta qui cum.', 'eligendi-dicta-qui-cumdvAXa9Lx', '56oJvOzM66', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Voluptas commodi mollitia ipsa atque. Odio est ut ipsa. Eos et voluptas sequi inventore.', 'Et ab enim explicabo dicta et. Laborum aut explicabo tempora eum praesentium.', 'Ea vero sint minima in quae consequatur eos cumque. Sint corporis vel architecto voluptas.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(68, 'Aut sit quia est a eum dolores enim.', 'aut-sit-quia-est-a-eum-dolores-enimZGwvm3f0', 'Ca6eCfTA67', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Ut quis earum eius et. Aut labore assumenda et tempora voluptatem sed.', 'Amet dolorem iure eos a beatae et. Pariatur nihil commodi numquam quos eos.', 'Velit et et enim provident. Odit earum aut tempora. Eaque voluptatem molestias aspernatur.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(69, 'Eaque exercitationem error facere.', 'eaque-exercitationem-error-facerey90ntfTX', 'EAzC6cad68', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Optio modi debitis magni autem. Omnis ipsam quia sint sequi asperiores non facere.', 'Ratione reprehenderit tempore maxime voluptatibus quis modi. Nam facere iure voluptates itaque.', 'Nihil ex delectus ea ea atque aperiam laborum. Exercitationem magnam asperiores tenetur quis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(70, 'Porro est culpa modi deserunt fugit nulla aut.', 'porro-est-culpa-modi-deserunt-fugit-nulla-autMXh2zSWv', 'zDf0Ho2269', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Quaerat deserunt quos et. Quia et dolorem rerum illo. Non consequatur molestiae iure nam et modi.', 'Neque enim est omnis consectetur beatae. Libero consequuntur a nisi magni.', 'Et perferendis laboriosam et voluptas. Qui placeat eum necessitatibus.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(71, 'Modi consequatur facilis assumenda dolores.', 'modi-consequatur-facilis-assumenda-doloresBbnX0n0X', 'T66IZuUP70', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Commodi nulla animi ut voluptate rerum rerum voluptate. Ut enim ut hic tempora.', 'Vel sapiente blanditiis repellendus mollitia ipsa. Qui ea nam consequatur odit.', 'Qui iste corrupti commodi doloribus et. Deleniti iure ipsa dicta veritatis omnis temporibus vitae.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(72, 'Consequatur cum ut consequatur.', 'consequatur-cum-ut-consequaturAIFMAIR5', 'DRzj2xxQ71', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Alias ad dolor blanditiis voluptate soluta. Omnis voluptate expedita dolorem. Vero dolor sed ullam.', 'Minus quidem incidunt debitis porro. Iste ex dolores ipsum ut.', 'Ad cum quidem delectus a sit nihil nobis quo. Sint est sint provident qui autem.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(73, 'Dicta illo sed est reprehenderit totam.', 'dicta-illo-sed-est-reprehenderit-totamhTDWUu8Z', '3AaSto9q72', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est sed explicabo distinctio. Impedit mollitia excepturi qui.', 'Quisquam quae odio qui vero quaerat voluptas aut. Ut autem consectetur voluptas aspernatur.', 'Qui maiores quos ipsam qui molestias enim. Vel aliquid eaque molestiae et dolore.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(74, 'Qui quaerat quo doloremque in ut vel.', 'qui-quaerat-quo-doloremque-in-ut-velBK2kqJFk', '5wWbWWF873', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Illum natus ut sint tempora. Ut nihil nesciunt deleniti ab non minima tenetur.', 'Nesciunt est molestiae facilis eveniet id. At placeat in culpa et id quibusdam accusamus.', 'Expedita est vel molestiae quo dolorem ea cumque. Omnis animi velit sint. Sint rerum dolorem modi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(75, 'Est provident minima accusamus quibusdam in odit.', 'est-provident-minima-accusamus-quibusdam-in-odituQFeIEn1', 'fz6FTde074', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Tempore est tempore ut quos et qui eaque. Autem minima distinctio debitis commodi delectus non aut.', 'Perferendis illum sunt ex. Ad nemo autem velit quia.', 'In veritatis quia adipisci natus. Expedita tempora fuga incidunt. Iste autem quis qui.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(76, 'Voluptas in nobis delectus non.', 'voluptas-in-nobis-delectus-nonTOrOUKQs', '9dTLVXrO75', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Molestiae esse maiores voluptate. Labore et aut quidem hic.', 'Doloribus blanditiis natus ullam quia. Et dolor cum quia qui omnis quibusdam impedit.', 'Nemo explicabo rerum voluptas fuga. Molestiae aut fuga qui. Aliquam sint et debitis mollitia ipsam.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(77, 'Voluptas molestiae eligendi adipisci aliquam sit.', 'voluptas-molestiae-eligendi-adipisci-aliquam-sitEVqNnTUW', 'BwaebnLH76', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'At quia sed nihil explicabo consectetur. Mollitia aut provident consequatur sed.', 'Ipsa qui eum enim corrupti excepturi. Id officia cupiditate quo.', 'Est quia perferendis animi vel. Sit quis odit qui perspiciatis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(78, 'Fuga et dicta porro maiores nulla.', 'fuga-et-dicta-porro-maiores-nullaIikGzMHt', 's8h5lVpE77', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Sed harum rem rerum corrupti autem. Dolorem velit tempore temporibus.', 'Asperiores expedita iste expedita dolor. Qui est sapiente dolorem molestiae voluptas non.', 'Tenetur et minima et fuga. Impedit id ut dolore asperiores. Accusantium in iste aspernatur maxime.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(79, 'Et libero voluptates a qui ducimus ea.', 'et-libero-voluptates-a-qui-ducimus-ea2AkCMG5R', 'ObmT6qP878', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Quidem nostrum occaecati et. Repellendus aut et quaerat est quis.', 'Explicabo molestiae eaque voluptatem. Voluptas quaerat sint atque rerum doloremque rerum quis sunt.', 'Sit accusamus ut facere autem. Deleniti perferendis sapiente corporis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(80, 'Quia et quidem nemo officiis.', 'quia-et-quidem-nemo-officiisdl9pyHYU', 'cZjYUZQT79', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'In ut laboriosam aliquid sapiente est. Sit qui non id est eum. Qui fugit quia id qui.', 'Nostrum sit minima fuga. Cum modi officiis quia ut et quia sit officia.', 'Deserunt et cumque dignissimos sit quaerat. Sed voluptas excepturi aliquam dolore eum animi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(81, 'Fugiat commodi excepturi quia aut earum et.', 'fugiat-commodi-excepturi-quia-aut-earum-etdf2LPHlv', 'Kylci5xI80', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Iusto dolor fugiat neque autem itaque mollitia. Et rem eum rerum maiores pariatur voluptatum.', 'Tempore voluptatum optio non facilis. Est voluptatum voluptatum quasi neque harum veniam.', 'Voluptate harum odio aut odio. Ut ut eum veniam qui.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(82, 'Eius libero aut numquam.', 'eius-libero-aut-numquamHWxpx9Dt', 'enwKBwBa81', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Laboriosam qui ut ut aut odit. Dolor omnis hic nostrum recusandae fugit.', 'Fugiat autem eum voluptatem numquam qui. Est sunt minus illum. Et rem vero aut omnis.', 'Doloribus provident repellendus hic fugiat. Laboriosam quo nihil totam magnam et ut.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(83, 'Magni assumenda omnis optio voluptas.', 'magni-assumenda-omnis-optio-voluptasLgqarelD', 'MTiSeJTY82', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Placeat voluptas recusandae culpa. Quidem aut hic et ut quas. Ex odio dolor fugiat ea.', 'Libero ab ad et laborum enim et. Et non et in et dolore animi vero. Deserunt sed vel sit quisquam.', 'Ipsa omnis quia officiis ratione corporis. Itaque est aut iure.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(84, 'Est quibusdam rerum illo non labore iste quae.', 'est-quibusdam-rerum-illo-non-labore-iste-quaeFhC8z2Qz', 'shfdosRT83', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Animi atque qui quaerat. Porro iure alias porro qui recusandae saepe.', 'Architecto ipsa voluptatibus eum nihil. Libero sapiente repellendus vero.', 'Ut voluptas sit similique eum rem. Dignissimos vel molestiae ipsa rerum et et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(85, 'Fuga illo et dolor corporis aut porro facere.', 'fuga-illo-et-dolor-corporis-aut-porro-facere3SRzoq5W', 'vy6kJXjC84', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Saepe dolor rerum provident ut sint quos nisi est. Veritatis unde in eos.', 'Assumenda eum aut veniam ratione est totam. Quidem sunt maxime ea aut dignissimos cumque.', 'Dolor aliquid sapiente eius quidem et. Dolor iste deserunt dignissimos veniam et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38');
INSERT INTO `products` (`id`, `name`, `slug`, `sku`, `category_id`, `img_thumb`, `price`, `price_sale`, `material`, `description`, `use_manual`, `is_active`, `is_best_sale`, `is_40_sale`, `is_hot_online`, `created_at`, `updated_at`) VALUES
(86, 'Quam debitis nobis aliquam tempore.', 'quam-debitis-nobis-aliquam-temporeHvDMmnje', 'hQQDQiCC85', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Numquam ea qui maiores numquam sunt. Expedita suscipit laudantium aut suscipit.', 'Esse ut pariatur quia asperiores laboriosam et atque. At nobis dicta ea enim vel.', 'Asperiores maxime et omnis sunt voluptas quia. At qui inventore nobis magni eum vel.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(87, 'Laborum distinctio unde magni.', 'laborum-distinctio-unde-magnihIlupRSU', 'KOxJBFkK86', 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Deserunt eum laborum enim. Voluptatum et cum qui. Nobis cumque beatae id totam.', 'Omnis consequatur expedita molestiae qui exercitationem. Mollitia voluptatum velit numquam illum.', 'Temporibus veritatis est expedita quos dolores. Est a dolores accusantium quia.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(88, 'Qui nulla voluptas beatae ut maiores et.', 'qui-nulla-voluptas-beatae-ut-maiores-etGf8GImho', 'bSohIo1087', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Sint voluptas ullam est. Repudiandae nihil et saepe amet.', 'Nam cum et et. Amet commodi vel harum sed magni cumque.', 'Quis non rem dolorum neque. Dignissimos a et explicabo dicta id ipsam. Corporis aut dicta eum.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(89, 'Molestias aspernatur ut rerum ipsum sed.', 'molestias-aspernatur-ut-rerum-ipsum-sedOq1BvqjI', '12dOC25V88', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Debitis nihil sed velit fugiat totam blanditiis numquam. Qui illo fuga voluptate ex ea est.', 'Sint illo possimus eligendi nam. Nesciunt asperiores quibusdam dolor et qui illum voluptatum et.', 'Ut dolor incidunt aut fugit laboriosam et rem. Natus fuga ut esse nisi. Ducimus in velit tempora.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(90, 'Ipsam nihil eos in voluptatem nihil voluptatum.', 'ipsam-nihil-eos-in-voluptatem-nihil-voluptatumnMzKbP6E', 'C03My80L89', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Nihil aut omnis nam omnis saepe. Rerum quas et voluptatem ut. Eum ab perferendis nihil sit.', 'Rem qui non nihil aperiam aperiam. Impedit consequatur unde officia odit.', 'Dignissimos officiis ut ab omnis. Tempora quis maiores enim culpa illo nihil dolores.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(91, 'Enim vel nobis eveniet minima quia aperiam.', 'enim-vel-nobis-eveniet-minima-quia-aperiamxERFeb18', 'OH93TOnO90', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Rerum sint blanditiis natus non voluptas explicabo et. Similique ipsum molestiae eum velit.', 'Ex velit maxime eum aut amet et. Quas tenetur consequuntur blanditiis sint molestias.', 'Expedita labore alias enim error qui. Tempora qui qui quisquam.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(92, 'Eum omnis beatae velit et ducimus minima.', 'eum-omnis-beatae-velit-et-ducimus-minimaC4dfcnXy', 'TpVF0uRV91', 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Pariatur accusamus earum molestiae non est quis ab. Veritatis ut perferendis nisi nemo quas.', 'Sit aspernatur est rem. Necessitatibus deserunt quidem eum commodi assumenda qui. Sed et sit nihil.', 'Rerum et aliquid velit repudiandae non. Est quis porro omnis pariatur velit officia.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(93, 'Eligendi rerum veniam voluptatem.', 'eligendi-rerum-veniam-voluptatemyNHWEsfj', '9K8DmjNr92', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Aut eaque quis pariatur vel. Omnis repellat earum unde.', 'Voluptas ut et vitae est corrupti. Amet et eos aperiam repellat saepe dolor tenetur.', 'Ducimus reiciendis consequatur vero velit voluptatibus atque et. Nam eos nemo sed totam optio.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(94, 'Sint reprehenderit soluta nesciunt voluptate id.', 'sint-reprehenderit-soluta-nesciunt-voluptate-idzWMBZFJ3', 'Bkf520YC93', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Sapiente quidem enim et dolore rerum est. Rem non accusamus quos ea possimus.', 'Quia est quia ut sunt ipsa. Corrupti nam recusandae vel voluptate qui.', 'Facere culpa consequatur est. Provident veniam deleniti fugit blanditiis. Et accusamus numquam ea.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(95, 'Enim id consequatur doloremque perspiciatis.', 'enim-id-consequatur-doloremque-perspiciatisfAbuzNde', '923zRbB594', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Illo dolores et earum hic ducimus nobis perspiciatis. Sit autem ad eum fuga est.', 'Fugiat illum labore et ea blanditiis. Rem rem et repellendus.', 'Voluptate quis dolor in consequatur omnis at error. Nesciunt beatae aut illo voluptas minus.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(96, 'Atque id corporis dolor placeat ut minima.', 'atque-id-corporis-dolor-placeat-ut-minimaFhOiVs9r', '6IxZwmwB95', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Mollitia ut pariatur ipsa et dolorem. Ut ut sint natus nihil nulla. Modi vel alias dolorum ipsam.', 'Distinctio unde tenetur dolores rerum. A occaecati quaerat ad nam.', 'Est qui et debitis voluptatum voluptate sit. Accusamus et velit iste earum est fugit officiis.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(97, 'Odit necessitatibus neque cumque.', 'odit-necessitatibus-neque-cumqueetUSW7sB', '873zKu4i96', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Est aut qui est quo. Sit officiis nemo minus non deserunt. Voluptatem dicta fuga eos iusto.', 'Vel molestias libero aut sed. Voluptas tenetur nisi qui eum. Odio sed molestiae aut.', 'Repellat minus et qui sed deleniti in qui. Omnis doloremque laudantium dolor est impedit et.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(98, 'Tempore nobis dignissimos iure quis sit iure.', 'tempore-nobis-dignissimos-iure-quis-sit-iurejwwcpr3A', '5fBdcm4f97', 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Neque non laudantium fugit. Esse in eum odio odit. Perferendis quaerat ullam et impedit vel.', 'Nam veritatis quia dignissimos. Voluptas fugiat libero nemo aut.', 'Cum fugit delectus velit ipsam. Accusantium hic illo rerum quia accusamus ex.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(99, 'Cum ut velit facilis culpa et reprehenderit.', 'cum-ut-velit-facilis-culpa-et-reprehenderittGKHQYIi', '4uhmhBFq98', 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'Aut sequi odit adipisci omnis asperiores optio. Excepturi fugit cupiditate aut neque ad.', 'Tenetur tempore et voluptatem non repellendus laudantium. Veniam corrupti non aperiam.', 'Nulla omnis totam sed. Qui voluptates excepturi error non.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(100, 'Facere ut officiis optio quisquam ea.', 'facere-ut-officiis-optio-quisquam-eaIjNtPiWd', 'WoH1WZgM99', 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75', 100000.00, 690000.00, 'A iste sint sint iure nam. Recusandae soluta ullam veritatis. Asperiores rem dicta omnis.', 'Voluptatem ratione et aperiam optio placeat sed quo. Voluptatem amet asperiores dolor nisi eius.', 'Unde quisquam eius laborum. Error quibusdam qui aut rerum sed quaerat vel. Molestiae ab et modi.', 1, 0, 0, 0, '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(103, 'Mai Vinh', 'mai-vinh-iy1ldtbc', 'IY1LDTBC', 8, NULL, 10.00, 100.00, NULL, NULL, NULL, 0, 1, 1, 0, '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(104, 'Mai Vinh', 'mai-vinh-uswllqib', 'USWLLQIB', 16, NULL, 10.00, 99.00, NULL, NULL, NULL, 1, 1, 1, 1, '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(106, 'Mai Vinh', 'mai-vinh-igzrv38w', 'IGZRV38W', 15, NULL, 10.00, 99.00, NULL, NULL, NULL, 1, 1, 1, 1, '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(112, 'Mai Quang Vinh', 'mai-quang-vinh-a7i2cn4d', 'A7I2CN4D', 15, NULL, 10.00, 10.00, NULL, NULL, NULL, 1, 0, 1, 1, '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(113, 'hoodie', 'hoodie-rkdksv3p', 'RKDKSV3P', 8, NULL, 519090.00, 99.00, NULL, NULL, NULL, 0, 1, 1, 0, '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(114, 'Mai Vinh', 'mai-vinh-cmymvi80', 'CMYMVI80', 16, NULL, 10.00, 99.00, NULL, NULL, NULL, 1, 1, 1, 0, '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(115, 'Mai Quang Vinh', 'mai-quang-vinh-i7oqvqb4', 'I7OQVQB4', 8, NULL, 10.00, 10.00, NULL, NULL, NULL, 0, 1, 1, 0, '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(117, 'Mai Vinh', 'mai-vinh-dbunlt9l', 'DBUNLT9L', 16, NULL, 519090.00, 10.00, NULL, NULL, NULL, 1, 0, 1, 1, '2024-08-02 10:44:14', '2024-08-02 10:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'black', '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(2, 'white', '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(3, 'gray', '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(4, 'blue', '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(5, 'yellow', '2024-07-20 09:29:38', '2024-07-20 09:29:38'),
(6, 'red', '2024-07-20 09:29:38', '2024-07-20 09:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(2, 1, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(3, 2, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(4, 2, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(5, 3, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(6, 3, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(7, 4, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(8, 4, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(9, 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(10, 5, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(11, 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(12, 6, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(13, 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(14, 7, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(15, 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(16, 8, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(17, 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(18, 9, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(19, 10, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(20, 10, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(21, 11, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(22, 11, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(23, 12, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(24, 12, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(25, 13, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(26, 13, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(27, 14, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(28, 14, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(29, 15, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(30, 15, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(31, 16, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(32, 16, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(33, 17, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(34, 17, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(35, 18, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(36, 18, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(37, 19, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(38, 19, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(39, 20, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(40, 20, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(41, 21, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(42, 21, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(43, 22, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(44, 22, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(45, 23, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(46, 23, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(47, 24, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(48, 24, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(49, 25, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(50, 25, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(51, 26, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(52, 26, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(53, 27, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(54, 27, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(55, 28, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(56, 28, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(57, 29, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(58, 29, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(59, 30, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(60, 30, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(61, 31, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(62, 31, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(63, 32, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(64, 32, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(65, 33, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(66, 33, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(67, 34, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(68, 34, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(69, 35, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(70, 35, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(71, 36, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(72, 36, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(73, 37, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(74, 37, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(75, 38, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(76, 38, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(77, 39, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(78, 39, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(79, 40, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(80, 40, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(81, 41, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(82, 41, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(83, 42, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(84, 42, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(85, 43, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(86, 43, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(87, 44, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(88, 44, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(89, 45, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(90, 45, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(91, 46, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(92, 46, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(93, 47, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(94, 47, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(95, 48, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(96, 48, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(97, 49, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(98, 49, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(99, 50, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(100, 50, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(101, 51, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(102, 51, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(103, 52, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(104, 52, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(105, 53, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(106, 53, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(107, 54, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(108, 54, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(109, 55, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(110, 55, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(111, 56, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(112, 56, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(113, 57, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(114, 57, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(115, 58, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(116, 58, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(117, 59, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(118, 59, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(119, 60, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(120, 60, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(121, 61, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(122, 61, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(123, 62, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(124, 62, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(125, 63, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(126, 63, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(127, 64, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(128, 64, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(129, 65, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(130, 65, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(131, 66, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(132, 66, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(133, 67, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(134, 67, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(135, 68, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(136, 68, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(137, 69, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(138, 69, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(139, 70, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(140, 70, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(141, 71, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(142, 71, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(143, 72, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(144, 72, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(145, 73, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(146, 73, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(147, 74, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(148, 74, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(149, 75, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(150, 75, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(151, 76, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(152, 76, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(153, 77, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(154, 77, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(155, 78, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(156, 78, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(157, 79, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(158, 79, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(159, 80, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(160, 80, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(161, 81, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(162, 81, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(163, 82, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(164, 82, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(165, 83, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(166, 83, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(167, 84, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(168, 84, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(169, 85, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(170, 85, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(171, 86, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(172, 86, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(173, 87, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(174, 87, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(175, 88, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(176, 88, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(177, 89, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(178, 89, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(179, 90, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(180, 90, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(181, 91, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(182, 91, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(183, 92, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(184, 92, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(185, 93, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(186, 93, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(187, 94, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(188, 94, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(189, 95, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(190, 95, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(191, 96, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(192, 96, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(193, 97, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(194, 97, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(195, 98, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(196, 98, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(197, 99, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(198, 99, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(199, 100, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75', NULL, NULL),
(200, 100, 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75', NULL, NULL),
(201, 103, 'product_galleries/h1IqqBAAlmTkBSgVqCk5UlJX0noj33HRfYenPuYK.png', '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(202, 103, 'product_galleries/rjD52B6cTNnRqdBSGbQkdkUbFEC0SkDag4ubYotK.jpg', '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(203, 103, 'product_galleries/rzFYfUV7HCKIhIpnD5Uq1aYMr5v1diH3kVQVyolU.jpg', '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(204, 103, 'product_galleries/VddrlitJshFMLPAyVApvBGgxUEmTtWJKNXRd9NKj.jpg', '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(205, 104, 'product_galleries/KXuFxKBTHSuxgURBhiv7WiSYjalqTG62ZKUuO1jr.png', '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(206, 104, 'product_galleries/ZXtmGviFxfMYWCOQhLKsLhsa9VDC3PzqtiTuPdPs.jpg', '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(207, 106, 'product_galleries/wz8iniNsicl6I2PU7cVn6nwylic0AGpJXRvBybkR.png', '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(208, 106, 'product_galleries/psmDdNjz6OW0wSF6IiFHqzd8mGbxII7gjgSCDadX.jpg', '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(209, 112, 'product_galleries/LssJXfsyKxxI50dEOCFf1A9MMUKG0yIaZkn4p7hp.png', '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(210, 112, 'product_galleries/QkzVWZyew7dVHB0oXlDh6Piz6SKkgtf4b4R5QSLw.jpg', '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(211, 112, 'product_galleries/jl1eypVEXa1v2FzpTKhPrmZYv4B8Ru7aMfEjeA2L.jpg', '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(212, 112, 'product_galleries/V2UpihHBW7YVMI1Qv6aZ0lU0AyGgR00bjALWNs42.jpg', '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(213, 113, 'product_galleries/okice5xn1I9qED1jD6Acvbm5I2eodSV7hPIY96rq.png', '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(214, 113, 'product_galleries/Adsw15cBgeLy4ctV46ZR6nTZoDeRv2BuwG0m7jN4.jpg', '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(215, 113, 'product_galleries/yrPVYqxk1iKQ7dpVFY69A23M9kDGn8CYvnEVz3oK.jpg', '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(216, 113, 'product_galleries/yE5hySRVgcpx5ewnkqqzl3oEyZgT8D1S6bWoEIVl.jpg', '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(217, 113, 'product_galleries/VTK9vEGjQfafg7ETqW2U2imPerP3v097QAxAa4n0.html', '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(218, 113, 'product_galleries/lCNAgUrstrWe534SZI5v2Qx0Pxgp6YGccSVfYHGH.jpg', '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(219, 114, 'product_galleries/fZPut0i6zUuETbNIyB8XJpjautAorWxyaHZ0v2Pj.png', '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(220, 114, 'product_galleries/ETWCvjYNabcmuqYAuoqZU3tkxKWuQY4W6FvHjwiH.jpg', '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(221, 114, 'product_galleries/jQG5ia2nG8loKoV7FfhSHwouBW4O6gjccAwtgnB4.jpg', '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(222, 114, 'product_galleries/rTvdgbKIiUXO0sue4UJQ5lUN7wyXQQXKVFH6bdRz.jpg', '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(223, 115, 'product_galleries/OPQBE2Kvv8pTpF5LbxsoX6Vz2Mk2enCBzZlPyBwq.png', '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(224, 115, 'product_galleries/o6bzQPwOumV8MrbTj8OnPXc4OcmPDbWGAWPNZgAd.jpg', '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(225, 115, 'product_galleries/90XaBMqUErcx6e3sjaoq9y0WVpvKTrwgFJY4msoJ.jpg', '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(226, 115, 'product_galleries/6itw8MHZSXZCkXZNRBGv8msVo6WZQoqDJoajhdsX.jpg', '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(227, 117, 'product_galleries/5sbTQ34zm6NMxS6Ks2MyEv25G9uysY7zsK2B1xPa.jpg', '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(228, 117, 'product_galleries/JFUKWD4SVk1lCireYBnL5LceuW6mah8KjoN400Ny.jpg', '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(229, 117, 'product_galleries/JR4R4Qd77ppy9TgB92NsNcNkAVUjulJ6uO7wNR9T.jpg', '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(230, 117, 'product_galleries/jusRbeUS7oKUe8Z3sXTQEesNhZ4JZmCaJGBQ5uYh.png', '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(231, 117, 'product_galleries/yT2Vq1wd16J0NTg4YfNJVn84aPhpF3RWlrWqFqK2.jpg', '2024-08-02 10:44:14', '2024-08-02 10:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2024-07-20 09:29:37', '2024-07-20 09:29:37'),
(2, 'M', '2024-07-20 09:29:37', '2024-07-20 09:29:37'),
(3, 'L', '2024-07-20 09:29:37', '2024-07-20 09:29:37'),
(4, 'XL', '2024-07-20 09:29:37', '2024-07-20 09:29:37'),
(5, 'XXL', '2024-07-20 09:29:37', '2024-07-20 09:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `product_color_id` bigint UNSIGNED NOT NULL,
  `product_size_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `product_color_id`, `product_size_id`, `image`, `quantity`, `created_at`, `updated_at`) VALUES
(5, 103, 1, 1, 'product_variants/ogHAD9NVzEw4AGVfeyslx0QWz81Jxet54WBdtlpK.jpg', 1, '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(6, 103, 2, 2, 'product_variants/tsZUea4ikyTkNTPJVqM9iEWJdXOeH2yV4km1V2fh.jpg', 1, '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(7, 103, 3, 2, 'product_variants/dv3bEAv9TfGTRywhxxSbdacyPV42cTfQe5nPXbCT.jpg', 1, '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(8, 103, 5, 4, 'product_variants/LZOQVaytlox308GoEtzhd3wnB6jrjTpwZzr774Ea.jpg', 1, '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(9, 103, 6, 5, 'product_variants/qJJX1kaNWI447WXnkm695s647u2TSLtVdt8s4NN0.jpg', 1, '2024-08-02 04:47:17', '2024-08-02 04:47:17'),
(10, 104, 1, 1, 'product_variants/yKMgghk7gRkFv2ZLG3vgjDQI2HmXCpRzh5XhojTq.jpg', 1, '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(11, 104, 2, 2, 'product_variants/sIu8Qh7YDTifuy7z4pkvxNADL2KRm24sU6BEWVa2.jpg', 1, '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(12, 104, 5, 3, 'product_variants/0dbOyZuyfR4Q0dF0eigTfzqI4o8cvhN1S34Y7iaC.jpg', 1, '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(13, 104, 4, 4, 'product_variants/pGSd5j7Y1Iw7NCxUYO0Xlt89ru5rbRDQsjep26jG.jpg', 1, '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(14, 104, 4, 5, 'product_variants/jehzFMiC6dkzQQdVqGWACj4lr71y0QOIGO3D8CxI.jpg', 1, '2024-08-02 04:57:26', '2024-08-02 04:57:26'),
(15, 106, 1, 1, 'product_variants/NCQaAWBQyi4fkDZLzcGcDzoRAZccWZKtRmWTPmG5.jpg', 1, '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(16, 106, 2, 2, 'product_variants/BhyVuPtnp2ijPl82ZImdka3nrVKNyNcabWxkfFvA.jpg', 1, '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(17, 106, 5, 3, 'product_variants/fwBY8oxGy9kpsQV90XyJNs88N0w2Z7Kdo3pWbR8n.jpg', 1, '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(18, 106, 4, 4, 'product_variants/KHl3yIL9syUfZuu6taD1UNxSxzp3GxJWxsaFlWgA.jpg', 1, '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(19, 106, 4, 5, 'product_variants/EibOGfklgdXQKwMxBROox2VX5wq5QIUdkPrg35Cx.jpg', 1, '2024-08-02 04:58:00', '2024-08-02 04:58:00'),
(31, 112, 1, 1, 'product_variants/WXyhCz643vAWQU29IVGWkvFEaguMrivM4G58Zf8A.jpg', 1, '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(32, 112, 2, 2, 'product_variants/KNA0vHHStq7S791kgMv1xwSx2fGHDGnlRhjNPCEg.jpg', 1, '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(33, 112, 3, 3, 'product_variants/utD4Bqhrlli5zV9w9cBzsVyoHhg4w7BPTTijRiPl.jpg', 1, '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(34, 112, 6, 4, 'product_variants/qa2zCdZNkFhSqwIHR631JY2ZvSNLvVFX3JUtaXmq.jpg', 1, '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(35, 112, 5, 5, 'product_variants/wx7RyFirhKMxHf86KLLiBz6EEih47shn8y6obPbT.jpg', 1, '2024-08-02 05:46:29', '2024-08-02 05:46:29'),
(36, 113, 2, 1, 'product_variants/MPxR8zruw1k78bBnnnPERt38Qh2zEZ42iPeBMiOC.png', 1, '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(37, 113, 5, 3, 'product_variants/LLja2VqYTOwzRaOGfLeSZANZNQI8KIJsrbszZ3d8.jpg', 1, '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(38, 113, 4, 4, 'product_variants/c97mRAbC1BsMfxDPx47mQdXPrJRnjmwQ3B2vuDge.jpg', 1, '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(39, 113, 6, 4, 'product_variants/KwzQqk442knY9EBeUwp9sro0iHw2MhOcHTKAEvnu.jpg', 1, '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(40, 113, 3, 5, 'product_variants/al02Bhv5uKxrW7GdeuqLa0axUNSEOJP7XlC2D3FR.jpg', 1, '2024-08-02 05:48:38', '2024-08-02 05:48:38'),
(41, 114, 1, 1, 'product_variants/O2XwnRUzEL7yVBVYeVdGeJGDkh8ObIlCvZUInuEw.jpg', 1, '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(42, 114, 2, 2, 'product_variants/QPRcwUbMcIeMaNPJKh57WEquxOdgbJVK0iwbGuk4.html', 1, '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(43, 114, 3, 3, 'product_variants/9t0QyzTLv54vq97b3aOhNv0HjgnSqn8TlgA7jfCS.jpg', 1, '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(44, 114, 4, 4, 'product_variants/SAkzIAh7PPLESDTRI8dIbb0UP0EWOvIwXO4iJFMQ.jpg', 0, '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(45, 114, 5, 5, 'product_variants/1AZAE1pxNvakv6O1TdhkuU2DWciCANSvYqHxC7rG.jpg', 1, '2024-08-02 05:55:46', '2024-08-02 05:55:46'),
(46, 115, 2, 1, 'product_variants/gxKoze3SpNCXWgkSJwskbwNej4cgBa0hQbCvD8MU.jpg', 0, '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(47, 115, 3, 2, 'product_variants/1cQ4BDpn3uIP6ztkCNkQJ4ZgaiOcvdpbfvksnr8W.jpg', 0, '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(48, 115, 4, 3, 'product_variants/WOmKtmdhzuRNRvvcrAks5sjhfU0pFnxPZOafvwaD.jpg', 0, '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(49, 115, 5, 5, 'product_variants/5y6ZIS3bvqCKtOmMvN7hvRs9O2NY8Pre5kR6p6nv.jpg', 0, '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(50, 115, 1, 1, '', 0, '2024-08-02 06:01:17', '2024-08-02 06:01:17'),
(53, 117, 1, 1, 'product_variants/SBYYcMNhigD9yP7OpY9CPoUz8LHdmAPUXSsvsB4e.jpg', 1, '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(54, 117, 2, 2, 'product_variants/5BfHHX9Z5SAtnBvQ9yoA6sjIMSD58hMoW3L70Dxw.jpg', 1, '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(55, 117, 3, 3, 'product_variants/bs534IJDRPG7t5B923TMqkSP59WBsrmuKhBH58Ay.jpg', 1, '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(56, 117, 5, 4, 'product_variants/2vd73ylCay24YA3clJd5Z7AYWgTSe4jo7T37bRvJ.jpg', 1, '2024-08-02 10:44:14', '2024-08-02 10:44:14'),
(57, 117, 6, 5, 'product_variants/5kvgKcq9xlh6STcfo81V4YIFmk2CbXYrwYMkVvms.jpg', 1, '2024-08-02 10:44:14', '2024-08-02 10:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_unique` (`product_id`,`product_color_id`,`product_size_id`),
  ADD KEY `product_variants_product_color_id_foreign` (`product_color_id`),
  ADD KEY `product_variants_product_size_id_foreign` (`product_size_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `product_colors` (`id`),
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variants_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `product_sizes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
