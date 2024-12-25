-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2024 at 01:04 PM
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
-- Database: `glasses`
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
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Áo khoác', NULL, NULL),
(2, 'Áo len', NULL, NULL),
(3, 'Áo giữ nhiệt', NULL, NULL),
(4, 'Bé gái\r\n', NULL, NULL),
(5, 'Thời trang', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `hex_code` varchar(7) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`color_id`, `name`, `hex_code`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#FF0000', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(2, 'Green', '#00FF00', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(3, 'Blue', '#0000FF', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(4, 'Yellow', '#FFFF00', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(5, 'Purple', '#800080', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(6, 'Orange', '#FFA500', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(7, 'Pink', '#FFC0CB', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(8, 'Brown', '#A52A2A', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(9, 'Gray', '#808080', '2024-12-07 09:25:43', '2024-12-07 09:25:43'),
(10, 'Black', '#000000', '2024-12-07 09:25:43', '2024-12-07 09:25:43');

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
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`gender_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nam', NULL, NULL),
(2, 'Nữ', NULL, NULL),
(3, 'Bé trai', NULL, NULL),
(4, 'Bé gái', NULL, NULL);

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
(4, '2024_11_23_112059_create_products_table', 2),
(5, '2024_12_07_080319_create_colors_table', 3),
(6, '2024_12_07_080809_create_product_colors_table', 4),
(7, '2024_12_07_085434_create_colors_table', 5),
(8, '2024_12_07_090731_change_primary_key_to_product_id_in_products_table', 6),
(9, '2024_12_07_090843_remove_id_column_from_products_table', 7),
(10, '2024_12_07_091450_create_products_table', 8),
(11, '2024_12_07_092142_create_product_color_table', 9),
(12, '2024_12_07_152949_create_sizes_table', 10),
(13, '2024_12_07_153144_create_product_size_table', 10),
(15, '2024_12_11_101135_create_categories_table', 11),
(16, '2024_12_11_101148_create_subcategories_table', 12),
(17, '2024_12_11_103117_add_category_id_to_products_table', 13),
(18, '2024_12_11_113105_create_genders_table', 14),
(19, '2024_12_11_113201_add_gender_id_to_products_table', 15),
(20, '2024_12_25_100520_create_orders_table', 16),
(21, '2024_12_25_100719_create_order_details_table', 16),
(22, '2024_12_25_101757_add_fields_to_orders_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','paid','shipped','delivered') NOT NULL DEFAULT 'pending',
  `total` decimal(10,2) NOT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `image_url`, `quantity`, `created_at`, `updated_at`, `category_id`, `gender_id`) VALUES
(1, 'Áo giữ nhiệt nam cổ tròn', 100000.00, '/images/category/ao-giu-nhiet/ao-khoac-1.webp', 50, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 1),
(2, 'Áo giữ nhiệt nữ dày', 120000.00, '/images/category/ao-giu-nhiet/ao-khoac-2.webp', 30, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 2),
(3, 'Áo giữ nhiệt nữ dáng dài', 130000.00, '/images/category/ao-giu-nhiet/ao-khoac-3.webp', 60, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 2),
(4, 'Áo giữ nhiệt nam phong cách', 110000.00, '/images/category/ao-giu-nhiet/ao-khoac-4.webp', 25, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 1),
(5, 'Áo giữ nhiệt trẻ em cổ lọ', 90000.00, '/images/category/ao-giu-nhiet/ao-khoac-5.webp', 20, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 3),
(6, 'Áo giữ nhiệt trẻ em mềm mại', 100000.00, '/images/category/ao-giu-nhiet/ao-khoac-6.webp', 45, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 3),
(7, 'Áo giữ nhiệt nam mỏng', 140000.00, '/images/category/ao-giu-nhiet/ao-khoac-7.webp', 30, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 1),
(8, 'Áo giữ nhiệt nữ họa tiết', 125000.00, '/images/category/ao-giu-nhiet/ao-khoac-8.webp', 50, '2024-12-11 11:06:06', '2024-12-11 11:06:06', 3, 2),
(9, 'Áo khoác nam dày', 250000.00, '/images/category/ao-khoac/ao-khoac-1.webp', 50, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 1),
(10, 'Áo khoác nữ dạ', 300000.00, '/images/category/ao-khoac/ao-khoac-2.webp', 40, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 2),
(11, 'Áo khoác trẻ em ấm áp', 200000.00, '/images/category/ao-khoac/ao-khoac-3.webp', 60, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 3),
(12, 'Áo khoác nữ kiểu dáng thể thao', 270000.00, '/images/category/ao-khoac/ao-khoac-4.webp', 25, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 2),
(13, 'Áo khoác nam da lộn', 320000.00, '/images/category/ao-khoac/ao-khoac-5.webp', 20, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 1),
(14, 'Áo khoác nữ giữ nhiệt', 350000.00, '/images/category/ao-khoac/ao-khoac-6.webp', 30, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 2),
(15, 'Áo khoác nam chống thấm', 280000.00, '/images/category/ao-khoac/ao-khoac-7.webp', 40, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 1),
(16, 'Áo khoác trẻ em màu sắc tươi sáng', 220000.00, '/images/category/ao-khoac/ao-khoac-8.webp', 35, '2024-12-11 11:07:17', '2024-12-11 11:07:17', 1, 3),
(17, 'Áo len nam cổ tròn', 150000.00, '/images/category/ao-len/ao-len-1.webp', 50, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 1),
(18, 'Áo len nữ cổ lọ', 180000.00, '/images/category/ao-len/ao-len-2.webp', 40, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 2),
(19, 'Áo len trẻ em dày dặn', 120000.00, '/images/category/ao-len/ao-len-3.webp', 60, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 3),
(20, 'Áo len nữ tay dài', 160000.00, '/images/category/ao-len/ao-len-4.webp', 30, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 2),
(21, 'Áo len nam dáng ôm', 170000.00, '/images/category/ao-len/ao-len-5.webp', 25, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 1),
(22, 'Áo len nữ mỏng nhẹ', 140000.00, '/images/category/ao-len/ao-len-6.webp', 50, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 2),
(23, 'Áo len nam họa tiết', 190000.00, '/images/category/ao-len/ao-len-7.webp', 40, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 1),
(24, 'Áo len trẻ em cổ tròn', 130000.00, '/images/category/ao-len/ao-len-8.webp', 35, '2024-12-11 11:08:30', '2024-12-11 11:08:30', 2, 3),
(25, 'Áo nỉ nam cổ tròn', 150000.00, '/images/products/image1.webp', 50, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 1),
(26, 'Áo nỉ nữ dày', 170000.00, '/images/products/image2.webp', 40, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 1),
(27, 'Áo nỉ trẻ em cổ lọ', 120000.00, '/images/products/image3.webp', 60, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 3),
(28, 'Áo nỉ nam dáng ôm', 160000.00, '/images/products/image4.webp', 30, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 1),
(29, 'Áo nỉ nữ màu pastel', 180000.00, '/images/products/image5.webp', 25, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 2),
(30, 'Áo nỉ nam họa tiết', 140000.00, '/images/products/image6.webp', 50, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 1),
(31, 'Áo nỉ nữ kiểu dáng thể thao', 190000.00, '/images/products/image7.webp', 40, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 1),
(32, 'Áo nỉ trẻ em mềm mại', 130000.00, '/images/products/image8.webp', 35, '2024-12-11 11:09:58', '2024-12-11 11:09:58', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(1, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(2, 3, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(2, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(3, 5, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(3, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(4, 7, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(4, 8, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(5, 9, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(5, 10, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(6, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(6, 3, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(7, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(7, 5, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(8, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(8, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(9, 7, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(9, 9, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(10, 8, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(10, 10, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(11, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(11, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(12, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(12, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(13, 3, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(13, 7, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(14, 5, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(14, 8, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(15, 9, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(15, 10, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(16, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(16, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(17, 3, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(17, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(18, 5, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(18, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(19, 7, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(19, 8, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(20, 9, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(20, 10, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(21, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(21, 3, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(22, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(22, 5, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(23, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(23, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(24, 7, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(24, 9, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(25, 8, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(25, 10, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(26, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(26, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(27, 3, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(27, 5, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(28, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(28, 7, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(29, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(29, 9, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(30, 8, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(30, 10, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(31, 1, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(31, 4, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(32, 2, '2024-12-11 11:15:24', '2024-12-11 11:15:24'),
(32, 6, '2024-12-11 11:15:24', '2024-12-11 11:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(2, 1, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(3, 2, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(4, 2, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(5, 3, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(6, 3, 4, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(7, 4, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(8, 4, 5, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(9, 5, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(10, 5, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(11, 6, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(12, 6, 4, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(13, 7, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(14, 7, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(15, 8, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(16, 8, 5, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(17, 9, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(18, 9, 4, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(19, 10, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(20, 10, 5, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(21, 11, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(22, 11, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(23, 12, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(24, 12, 5, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(25, 13, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(26, 13, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(27, 14, 4, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(28, 14, 5, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(29, 15, 2, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(30, 15, 3, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(31, 16, 1, '2024-12-11 11:16:58', '2024-12-11 11:16:58'),
(32, 16, 4, '2024-12-11 11:16:58', '2024-12-11 11:16:58');

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
('0LIeCozg1OfBpNd8YmKH087q2Mp13UIo2RgJNrM3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVh5bXVxOUJaMmgxV3ZISW5hdHJRbmRkdUJZYm44a2hYRG1MM2N3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127631),
('1B4J4It90wQkrQIRu0yoRNesbHQnx8nxEL5YFtn2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ2hNbHBHdlE5OEJYSURZZDJScWxVV2dDbUV5cFRhdFFWTnVvaFIyNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735124163),
('2eavaNpzdZHdGR7CLHLRFMhXmQY0LcmDqLUrkgbU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGlVN3VPcTlSSVh1bDJHMks2V3ZUbEEzTHk1S2ZQa2ZzckJCOTNNWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735120610),
('33YDTK6dQ9j9oVa1w42iwEmEbaDmyMRZYxyRabnk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUgzQlhtNkdPa0NjcEsyb2R5U1FSV1BpTlZjUVZHRzRqN0dtYjdIRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127317),
('8mvXgkgB0M1QOFShVqt7fGhSVHh4ZuBXeT8NEd43', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2c1M0NHbUtvUzJzT0ZyaVFDWk83R3l0eE4zWUh3WjJ2RVNHTEJHSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127327),
('99ib6XEE4n9o1Hk8xLt5jLRV6STXyh7tukDQW2jf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMGZhSWY1czNucFU5MUFwWGZwRzJWanRxeGdpY1NYZ3hrV1FWdXJ0WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123585),
('9cN4ejc2lJhxD2FA3j0WMDlxbFFW026ddjKgQUoG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMk94MUxFdjlrY240UUZIVkdqbW44RjNUQ1B0S3l3ZTd5ckJZTEt4ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735120611),
('9iTWEXcdWWpoMF0C6QgzAaqFiE9924nOCqDgOEuP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3VSNFc2WTQxcHRzcmdtMGczemU5OFg1S3N4YWRob0kwYnpUcHRNVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127415),
('aAkL9ahGczZnulTNsfGmJlfCxYn2KnCyAOBqbSG4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWVxT3VGOENkQXBRTWx1Y25JdmJTdWpXMEpsNmE0eHVKVHVWbmt5bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127317),
('ad1pdIqh2zI9UtvLfNMafHGJboaUKeH535FeDjHu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm1TbUZYTGJvSVhzZ3B1ODFBbU9VQkZWdGVmalc4cjZrYXV0WXVlZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127303),
('At3MqM0Nlyci8fFubfkcFzQzZvCdUB7LkmBNFLBg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmZlQUJyWTFIcGNCalNsQjRyRHlFV3kyZTgxcTB5bnVHVjZIcUpjQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127318),
('BeAXY0Fit89FytBTTz2nTGxnDMS0NtRit6K7CmjA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkZBQnRBb2EySVFMbjhJM2pvTmVPeHFVSWFIRXhrY0xNS3RORlBhdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127319),
('d86IVENayyVjECXNXnaQTH3wOEM3MBZZJjPGvrsI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienJlZFl6MUQxb09iYjVGZGp3RjBCdUZCald4b0o5YW1EQk8yTWtGZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127102),
('dXrrK4B5w8HhEudQOcVdrLLV0QCxMSTudRuCyvJC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWlRTDZ4OGFrN0xaNUZoNjE4c0lDQzByUE95bjY4RllIcnc3ZG5VOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735124146),
('EgMEogFDKblhFIgOxEl0anX8gAhwBZ93GFKcGUba', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWJmU0dHUkxPU05STGd4b3djMEVJVUpFenVYVEFvaDc5dUhrRE9PVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127211),
('eke2WjYcHQts21fnyuFE4D5nq4KGfRA3dzezbhP1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDBxRW0zNHpGY29JeFpuOGZjM0VobHlLZGE2cHFhZnZIeHZZZFE5USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127390),
('Fq2PJeZ6dVzszm0tJCsM3BoOvSbn5kf8nV9XfBxR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekpIUkdCQ2dYS3V6QTBmaWVpWnVScGtSUXZMVUJwSFBrU3RkQWFUNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127396),
('gDUihnbScCIcnPFsZ7sjMxLivhMqz2qKivwtbxO2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2xuYjJ0bjczS2UzNzZwNmpoMEJ3Z1VvaU81RXlZSmxSeVJkMTlNNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127396),
('GfLORHKUVrdU6RYzrURL6G4xLS6gs3nUW7eaBPNv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEJGQ2U1THRTck9MeVBXWGRtVkNjTWl2UlBSd1hXcVl0ejJqejJ6WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127103),
('GjkMWqr2bAPb9q4QixIk5TpuA6aMhcdtDKfVCgBu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3lmNmRxcGZXVWxHTnJrZFp2WkVuOVd6RENLYk81aURaN2Nvckp6UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127248),
('hODVUEMbhdyt2pmhv3PfBQ5oCr4PVlaItb0niiAn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUo1ZGNCMmw3ZDhDUm1UanRteXJCN2ZVbm51TXo4c0JSSFAzbWRvSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123276),
('HupbfYQ37P1KwQ8AjDUp3pOz20YEtul8xOkHGSv1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0tneDJMd1VkajUxS201TFk2R0hyWFRTZVozZkptWnNlNFB4dVN5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123629),
('isZbOWf9acVznCvxcpl4AljCNtBUFrTBXwI0p2jR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWZVWUhLUVhDWW5lS0syWWVLQUNKWFBEY010M2liUmNZaTBpaEIxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123157),
('j2SOywDQO9kvHlh0ty7ZXuTbtGDfCqHT0nBB5QUb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMklTSXkxSEJsSGZMZjdhYUEybnUyaW5UQk12MHhmNndxTnBvdWdMbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735120610),
('khsmXJN4EfDqcJR43t9YCfyJgWoYFLAdfWhwpS4b', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk9xS3FCZXVzUUFHSkpmSmhDTHBjeEJCOTM0aVg4NFpTbGFtNUNLayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127631),
('kJO1JK0LCbStrYghAGUuOt8noDoIgiPfYntrxlh2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1ZkdnFDOTNGeG1wdEI1QnMzNkNyNXRrdjVNS2F4b0lWQnNXS3BxTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127416),
('kqXY6gu4IvklXveXdGgSNCHxc0FkCSNRWvZspAP5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0xySjI0bGpDQXBGM2h2RUFrbFRzU0F6OG1pa2JxeUVCWlFSU3RVZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127632),
('l2NeZZ8YmRZIrBft0mAVVPTzmwPmKpYehoo9B5Py', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmkxYmpCZml2YndITXk2ME5aTjQwVmp3UTlnVXFwSE1pZVI2WEV0RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127701),
('l5SbidWrBmEin9tPyTYTpW94rCdYUGAoR5pKAvtx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlpiSWZOZEtHTTl3dkpaclB0RDFOSFRLY3RibVRyQmNhMUJvNU9vMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127115),
('LH78OJwN3iSacZq7GmBS0JmmAZQPWBWCsTIHC0wk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkk2aDM2MnlrY2hZUWhYZEZRZk93T0gxU1J3b2pBcEQ4MnJ1S0FHNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123157),
('lJKbF5HEWDoP72pzOTQppt9RkC1gyjCzCmUf6We6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlJZbXpvNEVwTDlUanQyMjFWcmVEQXdoS01zT2pOa3lBRU5rSG9CTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127304),
('ltCwOKhe75vQUBnJdMMHUr3hqZG8fXaiYjChMcS5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnRCN20yc2ZHOHdza2hZTUlLdDlZdlQ2ZUJFYVBBOGIybTJVd3pOSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127249),
('LzuSSGF7WFxREXmcMvA1Wwa73hfKLjQR36Ly5TrC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUJXdHh5d1FsY0NqNVA3ZXZiOVNGSG5BMldBTHZjakJuRjZQRE9ZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127326),
('NMyg3WpEGuIJg9PQux2nU6RGtUESuzjy8vRZcUBg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjlGdldZYmRuZlBFWDBpeFlobE1lN0R4NDVqUVVDaG9LclpqR2JGWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127318),
('NyNiUJVmrmYGKXP8g9aG8ypqgNNASSra5QbRrgS2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkhIRU01c3k4b3BaTzhRcmlJWUR4WE9SUTlwTHdmaU00YWlJSXZnMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127305),
('PbVX0MnTusSRW7OYHUIuow89zuLHopqCDg6dkAuO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTZ3d2MyeWExVWt1SU1UTVZxTWpKVzBpQUZuWjRkR2IwakxhVldzciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735124146),
('peVtGmPKWJ0ZqXg9qtGeh8SVrvoCDtAKiqR94lJE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzIyb3QxWHhQZHNNNWtHQ3pGQjhZd2g4Z2poMmJ1S1Y3a1RSZktxSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127327),
('Phiq1e8Cxup22pUg7IyhJnnNUJVFVoa6e5Lu88qj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0lWdmZhblpvQ05iTGZ3Mm1RSjNOY1c3dHdwZFBjVXU1dUNzUFVvdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123630),
('POTTkjKOfOZeVVArnZz4FxnXPVsCGiv16u1GUYCW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjlUclJEVjZvcUdnbVNIZFpjZTRFd1RaYllLWDUwTG9POHZyS3BSOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127416),
('R3a7oCOEbLLYpp8aR9WsZswXXNg5cL4H1d75WqBV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUtBOEJTN1U0clVOcXZhTWRieHZLQ2g1MWRIZEo3Wm5UN1ZWUllsVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127701),
('r6UPn1TGmDgEQIPiENYXYrFuBEowTBEwYwg1u8dE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2pGWnQ0ZHZETHZBQVdlWDY0UTN3OG9NMHFremxrSXpFZmJsRXMwZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735122403),
('RdvpYLVKJnk8TTqx09Yx752XZ31LM0jzxbS1e3wM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2RKNTE2QW1yOTdWNkx3bmk1TkVXSnd4RzFvTVZBSW10cktKWVU1cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127317),
('rjQGrMArlg2n2bWcRl7P7FBDXzrMKdYFNlQwEHGV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFhOSEo0akhTYXBoWUtRSXRtMVRPZUhNZ2FHRm0wb0ZQTmNIYjVkZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127211),
('rPZNann0UQIQ8clstEDE657Hb73uG7jxtCs8KozJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFByQ3RRS2tVM2tyRnJEVjdVaXBXMnFGT0pQZ1NIUllXT0VoMjJuSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123508),
('sJ3XBvtjKgYKVXbc0QubJQ8tiik483tOTGC13cAm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU5HMXJORzZTU1FvbWN6QU1NN0VwZnhFcDk1VUJYMTVmT2pRbmhEQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735122404),
('tjmERX3omV814SWaiZ8P0TJ46QGo77Zlrvp97RD7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxsYUtIRktoVnNieFBXTU5vNmNmRjViOUNiQWRKZkdZUlAyYWR6YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123629),
('TSYOyhmkWHuqrS01I5zFWEjrkPvTm2eACLX7gXBK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE1NOFppWW5ocG5qZjIyV3FkY1RGREZ1WnlUUHoyMUdFMEFQQ0szayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127102),
('tz0y6xV4jJS5GBVdHkHv6n35Mx5AlnH8Cw5NcXVu', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSTZYS3pFZGFHSHk3bmtiYlREaVREQzAxUUE4NDdKS0xQRFVZdFRVdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735126603),
('U0BKwSVCJz0fX8pd6VQFaQOH1TDJw0OAGSw0Gs0r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWhWVlF3RTNodHgyQmJDUzJib05DQ3hOVHdSQnZ4eGFRTk56NXVDTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127299),
('UggoqfxRu75fp4dxD8RC5VY7GyrC8Tf966CDHS0a', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2Y0eldoUzQyZlFTZzQ3VEJEbkRIek9BTXRwcXZxVXBMNDZGSkdTYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735122403),
('uUKzkUZiMGwMiMDcR9ruEeDiCohKJTPaSbtq5TwS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW0wejByVERncFlLc2JqY3lXUjI0eGwxUUk0UUpLVUpwRkN4dWhSSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127115),
('V7wcMjVFYw865cmgeOi7ELv57RMqpoVZwLxfrXD1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzlVMkg2UE9ScTJmdUF0b1piRVgxU1dLZ1VTYVdqaXdGcTBPWXdFQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127701),
('Vaw2ELZ9dpvAFehBGyfSH3A6iGYlHUyi5fC8zdIX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiamxkeWxRb0xUSGtXb2JhQ2VLMW42dWFERFdZclU5b3Z4bWl0UnNONCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123647),
('VgcdixsD3ehgfIDagkgngIFYIAxDWMTuLIBe1ZW4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTdRM2FKY3o0azJqMjhteTRjSGpHTFA2T3pQYjBLYUx2M0NCSDJTRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127212),
('vQIixm9oqfXqF8xY3UPx5ozfUOQ7JC23N5AyRng5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmhEWmZRZGo5S1FBdUoycG1uQTZyblJpWjEwN0IwNHBxMDNseXJUOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127248),
('vU5brRIkVVzwXiQU3hSk2guEKVvNu4ZopyXpqKa5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTldoSVpVWTBlVFlQdER5c1JiSDdIc0JSaHNCNzZ3RnAxUWNwVWl3YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735123157),
('WqaJJQz4MKHIjKQ6OQEa6qBNhNOe6STIMEl6j8Hk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlRBNkV0S2MyaVFxTGhkd1E1cE51T3oxVWZqRHZ0eUZ2QTdjdExSZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127395),
('XFv7pVUiKYPW4yVi9z4hlYCDadhk2zKy3L2Opqvn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0F2QTRzT3RSeGFlQlRqOEk3eldoT1l1T0t5NjgxeVViY1RnRnQwdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127318),
('yAe2SwLCSPNPSydGfjKKSswY34EqIUsnXZhBHrzT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUsySG85RHZRTURvSERraU5wUHV1ejA2M2ZEbTJVbm9oQVBvblN5cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93aW50ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735127316),
('yBk6pgWafNbEmqD2q1nWJ3QpmOJO8ngNS86nu8Cn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUpSZkppZmtMS3dqNzRkUDUwUjhKWkNsTkllaXNwNGQ0bDU1bXZmRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735127114),
('yOffGg5Q6dECqj8Odf1z6tU8GBm6cB8UDOFcGccS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnVzNGlTVjFWdHVNYnJrUzBmeGdmczd0SGpwOEhSZlk1VlZBNENpNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735124147);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`size_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2024-12-07 15:42:07', '2024-12-07 15:42:07'),
(2, 'M', '2024-12-07 15:42:07', '2024-12-07 15:42:07'),
(3, 'L', '2024-12-07 15:42:07', '2024-12-07 15:42:07'),
(4, 'XL', '2024-12-07 15:42:07', '2024-12-07 15:42:07'),
(5, 'XXL', '2024-12-07 15:42:07', '2024-12-07 15:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Áo khoác nam', 1, NULL, NULL),
(4, 'Áo len nam', 1, NULL, NULL),
(5, 'Áo giữ nhiệt nam', 1, NULL, NULL),
(6, 'Áo khoác nữ', 1, NULL, NULL),
(7, 'Áo giữ nhiệt nữ', 2, NULL, NULL),
(8, 'Áo len nữ', 2, NULL, NULL);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`color_id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`gender_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`product_id`,`color_id`),
  ADD KEY `product_color_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `color_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `gender_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `size_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
