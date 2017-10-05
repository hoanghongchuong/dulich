-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 09:12 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulich`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(4, 5, 'EazeTour', 'eazetour', '1-0.jpg', '<h2 class=\"font-italic mb-5 text-center about-stit\" style=\"text-align: center;\"><em><strong>C&ugrave;ng ch&uacute;ng t&ocirc;i kh&aacute;m ph&aacute; Thế Giới!</strong></em></h2>\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đảm bảo sự an to&agrave;n của bạn l&agrave; tr&ecirc;n hết.</p>\r\n<p>Hướng dẫn vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn t&igrave;m hiểu c&aacute;c nền văn h&oacute;a nơi m&agrave; bạn đặt ch&acirc;n đến.</p>\r\n<p>Ch&uacute;ng t&ocirc;i cũng cung cấp c&aacute;c mức gi&aacute; theo nh&oacute;m v&agrave; c&ocirc;ng ty</p>', NULL, NULL, 1, NULL, NULL, NULL, 'gioi-thieu', '2017-10-02 10:24:04', '2017-10-02 03:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1506482199_nh1.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-09-26 20:16:39', '2017-09-26 20:16:39'),
(3, '1506483606_7-5.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-09-27 04:23:42', '2017-09-26 21:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(1, '1506915373_7_01.jpg', NULL, 2, '2017-10-01 20:36:13', '2017-10-01 20:36:13'),
(2, '1506920431_7_01.jpg', NULL, 1, '2017-10-04 18:59:51', '2017-10-05 01:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Cẩm nang', '2017-09-20 02:21:08', '2017-09-20 02:21:08'),
(3, 'Trang liên hệ', '2017-10-02 03:32:35', '2017-10-01 20:32:35'),
(4, 'Trang danh mục tour', '2017-10-01 20:32:58', '2017-10-01 20:32:58'),
(5, 'Trang chi tiết tour', '2017-10-01 20:33:06', '2017-10-01 20:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(2, 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0987654321', 'Hà Nội', NULL, NULL, NULL, 1, 5000000, '[{\"product_name\":\"Natural Glam\",\"product_numb\":\"5\",\"product_price\":1000000,\"product_img\":\"1506332932_2_06.png\",\"product_code\":null}]', '2017-09-27 02:14:36', '2017-09-26 19:14:36', NULL, 1),
(3, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', '0987654321', 'Hà Nội', NULL, NULL, NULL, 3, 30000000, '[{\"product_name\":\"\\u0110\\u00e8n tr\\u1ea7n 1\",\"product_numb\":\"3\",\"product_price\":3000000,\"product_img\":\"1506389332_1-1.png\",\"product_code\":null},{\"product_name\":\"\\u0110\\u00e8n ch\\u00f9m\",\"product_numb\":\"7\",\"product_price\":3000000,\"product_img\":\"1506389384_2_27.png\",\"product_code\":null}]', '2017-09-27 04:39:21', '2017-09-26 21:39:21', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories_tour`
--

CREATE TABLE `categories_tour` (
  `id` int(11) NOT NULL,
  `level` tinyint(2) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `alias` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_tour`
--

INSERT INTO `categories_tour` (`id`, `level`, `name`, `parent_id`, `alias`, `created_at`, `updated_at`) VALUES
(1, 1, 'Du lịch trong nước', 0, 'du-lich-trong-nuoc', '2017-10-02 08:43:24', '2017-10-02 08:43:24'),
(2, 2, 'Du lịch miền bắc', 1, 'du-lich-mien-bac', '2017-10-02 08:43:28', '2017-10-02 08:43:28'),
(3, 2, 'Du lịch miền trung', 1, 'du-lich-mien-trung', '2017-10-02 08:43:29', '2017-10-02 08:43:29'),
(4, 2, 'Du lịch miền nam', 1, 'du-lich-mien-nam', '2017-10-02 08:43:30', '2017-10-02 08:43:30'),
(5, 2, 'Du lịch khách lẻ', 1, 'du-lich-khach-le', '2017-10-02 08:43:54', '2017-10-02 08:43:54'),
(6, 1, 'Du lịch nước ngoài', 0, 'du-lich-nuoc-ngoai', '2017-10-02 08:43:25', '2017-10-02 08:43:25'),
(7, 2, 'Du lịch Châu Âu', 6, 'du-lich-chau-au', '2017-10-02 08:43:34', '2017-10-02 08:43:34'),
(8, 2, 'Du lịch Châu Á', 6, 'du-lich-chau-a', '2017-10-02 08:43:35', '2017-10-02 08:43:35'),
(9, 2, 'Du lịch Châu Mỹ-Phi', 6, 'du-lich-chau-my-phi', '2017-10-02 08:43:36', '2017-10-02 08:43:36'),
(10, 2, 'Du lịch Châu Úc', 10, 'du-lich-chau-uc', '2017-10-03 01:05:10', '2017-10-02 18:05:10'),
(13, 3, 'Du lịch Đông Âu', 7, 'du-lich-dong-au', '2017-10-02 08:43:42', '2017-10-02 08:43:42'),
(14, 3, 'Du lịch Bắc Âu', 7, 'du-lich-bac-au', '2017-10-02 08:43:44', '2017-10-02 08:43:44'),
(16, 3, 'Du lịch Hà Nội', 2, 'du-lich-ha-noi', '2017-10-02 18:00:59', '2017-10-02 18:00:59'),
(17, 3, 'Du lịch Quảng Ninh', 2, 'du-lich-quang-ninh', '2017-10-02 18:01:13', '2017-10-02 18:01:13'),
(18, 3, 'Du lịch Hội an', 3, 'du-lich-hoi-an', '2017-10-02 18:01:32', '2017-10-02 18:01:32'),
(19, 3, 'Du lịch Quảng Bình', 3, 'du-lich-quang-binh', '2017-10-02 18:01:56', '2017-10-02 18:01:56'),
(20, 3, 'Du lịch TP Hồ Chí Minh', 4, 'du-lich-tp-ho-chi-minh', '2017-10-02 18:02:30', '2017-10-02 18:02:30'),
(21, 3, 'Du lịch Hàn Quốc', 8, 'du-lich-han-quoc', '2017-10-02 18:03:29', '2017-10-02 18:03:29'),
(22, 3, 'Du lịch Nhật Bản', 8, 'du-lich-nhat-ban', '2017-10-02 18:03:39', '2017-10-02 18:03:39'),
(23, 3, 'Du lịch Trung Quốc', 8, 'du-lich-trung-quoc', '2017-10-02 18:03:49', '2017-10-02 18:03:49'),
(24, 3, 'Du lịch nước Mỹ', 9, 'du-lich-nuoc-my', '2017-10-02 18:04:04', '2017-10-02 18:04:04'),
(25, 3, 'Du lịch Braxin', 9, 'du-lich-braxin', '2017-10-02 18:04:18', '2017-10-02 18:04:18'),
(26, 3, 'Du lịch nước Úc', 9, 'du-lich-nuoc-uc', '2017-10-02 18:04:45', '2017-10-02 18:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Showroom 1', '0918273645', 'Số 1 Thái Hà, Đống Đa, Hà Nộ', '2017-09-26 02:36:29', '2017-09-26 02:36:29'),
(2, 'Showroom 2', '091864573', 'Thanh Xuân, Hà Nội', '2017-09-26 10:07:47', '2017-09-26 03:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', NULL, 'asdfsd sdfs', 0, '2017-09-27 19:36:11', '2017-09-27 19:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tour_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `tour_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(5, 1, NULL, NULL, NULL, '1503999263_sp1.png', 1, NULL, NULL, 0, '2017-08-29 09:34:23', '2017-08-29 09:34:23'),
(27, 1, NULL, NULL, NULL, '1506650199_1_31.png', 1, NULL, NULL, 0, '2017-09-29 01:56:39', '2017-09-29 01:56:39'),
(13, 3, NULL, NULL, NULL, '1506054442_thumb-1.png', 1, NULL, NULL, 0, '2017-09-22 04:27:22', '2017-09-22 04:27:22'),
(12, 3, NULL, NULL, NULL, '1506054442_cart-3.png', 1, NULL, NULL, 0, '2017-09-22 04:27:22', '2017-09-22 04:27:22'),
(9, 4, NULL, NULL, NULL, '1505958574_hand-2.png', 1, NULL, NULL, 0, '2017-09-21 01:49:34', '2017-09-21 01:49:34'),
(10, 4, NULL, NULL, NULL, '1505958574_hand-3.png', 1, NULL, NULL, 0, '2017-09-21 01:49:34', '2017-09-21 01:49:34'),
(15, 6, NULL, NULL, NULL, '1506390151_3-0.png', 1, NULL, NULL, 0, '2017-09-26 01:42:31', '2017-09-26 01:42:31'),
(16, 6, NULL, NULL, NULL, '1506390151_3-1.png', 1, NULL, NULL, 0, '2017-09-26 01:42:31', '2017-09-26 01:42:31'),
(17, 6, NULL, NULL, NULL, '1506390151_3-2.png', 1, NULL, NULL, 0, '2017-09-26 01:42:31', '2017-09-26 01:42:31'),
(18, 2, NULL, NULL, NULL, '1506487055_2_24.png', 1, NULL, NULL, 0, '2017-09-27 04:37:35', '2017-09-27 04:37:35'),
(19, 2, NULL, NULL, NULL, '1506487055_2_25.png', 1, NULL, NULL, 0, '2017-09-27 04:37:35', '2017-09-27 04:37:35'),
(20, 2, NULL, NULL, NULL, '1506487055_2_27.png', 1, NULL, NULL, 0, '2017-09-27 04:37:35', '2017-09-27 04:37:35'),
(43, 0, 10, NULL, NULL, '1506651161_1_31.png', 1, NULL, NULL, 0, '2017-09-29 02:12:41', '2017-09-29 02:12:41'),
(44, 0, 10, NULL, NULL, '1506651161_1_35.png', 1, NULL, NULL, 0, '2017-09-29 02:12:41', '2017-09-29 02:12:41'),
(24, 0, 3, NULL, NULL, '1506592540_3_11.jpg', 1, NULL, NULL, 0, '2017-09-28 09:55:40', '2017-09-28 09:55:40'),
(25, 0, 3, NULL, NULL, '1506592540_3_13.jpg', 1, NULL, NULL, 0, '2017-09-28 09:55:40', '2017-09-28 09:55:40'),
(26, 0, 3, NULL, NULL, '1506592540_3_18.jpg', 1, NULL, NULL, 0, '2017-09-28 09:55:40', '2017-09-28 09:55:40'),
(50, 0, 5, NULL, NULL, '1506651252_1_05.png', 1, NULL, NULL, 0, '2017-09-29 02:14:12', '2017-09-29 02:14:12'),
(51, 0, 5, NULL, NULL, '1506651252_1_07.png', 1, NULL, NULL, 0, '2017-09-29 02:14:12', '2017-09-29 02:14:12'),
(53, 0, 19, NULL, NULL, '1506745821_1_19.png', 1, NULL, NULL, 0, '2017-09-30 04:30:21', '2017-09-30 04:30:21'),
(54, 0, 19, NULL, NULL, '1506745821_1_23.png', 1, NULL, NULL, 0, '2017-09-30 04:30:21', '2017-09-30 04:30:21'),
(55, 0, 19, NULL, NULL, '1506745821_1_24.png', 1, NULL, NULL, 0, '2017-09-30 04:30:21', '2017-09-30 04:30:21'),
(56, 0, 12, NULL, NULL, '1506909143_1_07.png', 1, NULL, NULL, 0, '2017-10-02 01:52:23', '2017-10-02 01:52:23'),
(57, 0, 12, NULL, NULL, '1506909143_1_19.png', 1, NULL, NULL, 0, '2017-10-02 01:52:23', '2017-10-02 01:52:23'),
(58, 0, 12, NULL, NULL, '1506909143_1_23.png', 1, NULL, NULL, 0, '2017-10-02 01:52:23', '2017-10-02 01:52:23'),
(59, 0, 21, NULL, NULL, '1506909764_1_19.png', 1, NULL, NULL, 0, '2017-10-02 02:02:44', '2017-10-02 02:02:44'),
(60, 0, 21, NULL, NULL, '1506909764_1_23.png', 1, NULL, NULL, 0, '2017-10-02 02:02:44', '2017-10-02 02:02:44'),
(61, 0, 21, NULL, NULL, '1506909764_1_24.png', 1, NULL, NULL, 0, '2017-10-02 02:02:44', '2017-10-02 02:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1505460187_qc.png', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2017-09-15 00:23:07', '2017-09-15 00:23:07'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(46, 5, 'banner quảng cáo trang tin tức', 'http://gco.vn/', '1505460335_thumb2.png', NULL, NULL, 1, 0, 'chuyen-muc', 2, '2017-09-15 00:25:35', '2017-09-15 00:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `location_finish`
--

CREATE TABLE `location_finish` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_finish`
--

INSERT INTO `location_finish` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', '2017-09-30 01:25:13', '2017-09-29 18:25:13'),
(2, 'Hải Phòng', '2017-09-29 18:25:21', '2017-09-29 18:25:21'),
(3, 'Đà Nẵng', '2017-09-29 18:25:30', '2017-09-29 18:25:30'),
(4, 'Quảng Bình', '2017-09-29 18:25:41', '2017-09-29 18:25:41'),
(5, 'Huế', '2017-09-29 18:25:48', '2017-09-29 18:25:48'),
(8, 'Paris', '2017-10-02 18:07:43', '2017-10-02 18:07:43'),
(9, 'London', '2017-10-02 18:07:50', '2017-10-02 18:07:50'),
(10, 'New York', '2017-10-02 18:08:13', '2017-10-02 18:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `location_start`
--

CREATE TABLE `location_start` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_start`
--

INSERT INTO `location_start` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Hà Nội', '2017-09-29 02:42:52', '2017-09-29 02:42:52'),
(3, 'Hải Phòng', '2017-09-29 02:43:01', '2017-09-29 02:43:01'),
(4, 'Đà Nẵng', '2017-09-29 02:43:09', '2017-09-29 02:43:09'),
(5, 'Thành Phố Hồ Chí Minh', '2017-09-29 02:43:18', '2017-09-29 02:43:18'),
(6, 'Cần Thơ', '2017-09-29 02:43:24', '2017-09-29 02:43:24'),
(7, 'Cà Mau', '2017-09-29 02:43:29', '2017-09-29 02:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Đến với nước Ý - Đất nước của những điều tuyệt vời', 'den-voi-nuoc-y-dat-nuoc-cua-nhung-dieu-tuyet-voi', '1506567590_7_09.jpg', '', NULL, '<div class=\"col-sm-12\">\r\n<p class=\"gdetail-sumary\">Opera, hội hoạ, ẩm thực, thi&ecirc;n nhi&ecirc;n lộng lẫy, kiến tr&uacute;c thăng hoa, thời trang s&agrave;nh điệu, kh&ocirc;ng chỉ vậy, &Yacute; c&ograve;n l&agrave; đất nước hội tụ những trường đại học cổ k&iacute;nh nhất ch&acirc;u &Acirc;u.</p>\r\n<p>C&oacute; x&ograve;e hết 10 ng&oacute;n tay vẫn chưa đếm hết những điều tuyệt vời, m&agrave; c&oacute; x&ograve;e th&ecirc;m ng&oacute;n ch&acirc;n nữa cũng chắc g&igrave; đ&atilde; đủ để kể về những điều th&uacute; vị ở &Yacute;: b&oacute;ng đ&aacute;, điện ảnh, c&aacute;c danh lam thắng cảnh, chưa kể &ocirc; t&ocirc; sang, xe m&aacute;y s&agrave;nh điệu, pizza, c&agrave; ph&ecirc;, kem ở chỗ n&agrave;o cũng ngon v&agrave; trai xinh g&aacute;i đẹp lại c&ograve;n l&atilde;ng mạn nữa... Chẳng thế m&agrave; th&aacute;ng trước khi Đại sứ qu&aacute;n Italia tổ chức cuộc thi với giải thưởng l&agrave; chuyến đi 10 ng&agrave;y đi t&igrave;m 10 điều tuyệt vời nhất nước &Yacute; c&ugrave;ng Quang Quick, Ban gi&aacute;m khảo đ&atilde; thật sự l&uacute;ng t&uacute;ng v&igrave; những b&agrave;i dự thi chất lừ v&agrave; cuối c&ugrave;ng đ&atilde; phải tăng số lượng giải thưởng l&ecirc;n đến 250%. N&oacute;i như thế để thấy rằng, nước &Yacute;, thật sự l&agrave; một điểm đến đ&aacute;ng chọn cho bạn ngay từ h&ocirc;m nay.</p>\r\n</div>\r\n<div class=\"col-sm-12 col-md-6\">\r\n<p><strong>1. C&aacute;c di sản được Unesco c&ocirc;ng nhận</strong></p>\r\n<p>&Yacute; được biết đến l&agrave; đất nước với hơn 50 di sản thi&ecirc;n nhi&ecirc;n v&agrave; văn ho&aacute;, kiến tr&uacute;c nổi bật của thế giới.</p>\r\n<p><strong>2. Thi&ecirc;n nhi&ecirc;n tươi đẹp</strong></p>\r\n<p>Đọc danh s&aacute;ch những điểm nhất định bạn phải đến l&uacute;c n&agrave;o cũng l&agrave; Venice, Floren, Cinqueterre. Khổ nỗi đi mấy chỗ đấy về lại th&ocirc;i th&uacute;c muốn quay lại lần nữa.</p>\r\n<p><strong>3. Thời tiết đẹp</strong></p>\r\n<p>Thật kh&oacute; tả, c&aacute;i cảm gi&aacute;c mắt nh&igrave;n bầu trời xanh ngắt, tai nghe s&oacute;ng biển r&igrave; r&agrave;o, da ấm n&oacute;ng dưới nắng mặt trời v&agrave;ng &oacute;ng&hellip; m&agrave; chỉ d&ugrave;ng lời th&igrave; quả l&agrave; nhiệm vụ bất khả thi. Thời tiết ở &Yacute; l&agrave; c&aacute;i g&igrave; đ&oacute; khiến mọi t&iacute;n đồ du lịch đều phải ngả m&igrave;nh hưởng thụ v&agrave; chỉ muốn h&ograve;a v&agrave;o nhịp đập của cuộc sống nơi đ&acirc;y.</p>\r\n</div>\r\n<div class=\"col-sm-12 col-md-6 gdetail-img\"><a title=\"\" href=\"http://localhost/dulich/admin/news/guide-detail.html\"><img src=\"http://localhost/dulich/admin/news/images/8_03.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-sm-12 col-md-6 gdetail-img\"><a title=\"\" href=\"http://localhost/dulich/admin/news/guide-detail.html\"><img src=\"http://localhost/dulich/admin/news/images/8_03.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-sm-12 col-md-6\">\r\n<p><strong>4. Ẩm thực</strong></p>\r\n<p>Kh&ocirc;ng cần phải b&agrave;n c&atilde;i, ẩm thực &Yacute; th&igrave; qu&aacute; nổi tiếng rồi, chả thế m&agrave; mấy từ tiếng &Yacute; d&agrave;i loằng ngoằng như: spaghetti, espresso... ở nước n&agrave;o người ta cũng biết. C&ograve;n g&igrave; tuyệt vời hơn l&agrave; đến tận nơi v&agrave; tận hưởng phi&ecirc;n bản gốc, đ&uacute;ng kh&ocirc;ng n&agrave;o?</p>\r\n<p><strong>5. Kinh đ&ocirc; thời trang thế giới</strong></p>\r\n<p>L&agrave; nơi sản sinh ra rất nhiều thương hiệu thời trang đ&igrave;nh đ&aacute;m, những nh&agrave; thiết kế t&agrave;i danh. &Yacute; lu&ocirc;n l&agrave; c&aacute;i n&ocirc;i của thời trang n&oacute;i ri&ecirc;ng v&agrave; nền nghệ thuật n&oacute;i chung. Đến &Yacute; l&agrave; sẽ đắm ch&igrave;m trong c&aacute;i đẹp, c&aacute;i đẹp của thời trang, của con người v&agrave; của cả một nền văn ho&aacute;.</p>\r\n<p><strong>6. C&aacute;c lễ hội</strong></p>\r\n<p>Với lịch sử l&acirc;u đời v&agrave; một nền văn h&oacute;a đa dạng, &Yacute; c&oacute; rất nhiều lễ hội đặc sắc m&agrave; điển h&igrave;nh l&agrave; Carnevale ở Venice.</p>\r\n<p><strong>7. Thiết kế c&ocirc;ng nghiệp</strong></p>\r\n<p>C&aacute;c sản phẩm của &Yacute; vừa tốt, vừa bền m&agrave; lại s&agrave;nh điệu. Cứ điểm mặt c&aacute;c d&ograve;ng xe sang trọng như: Ferrari, Lamborghini, Maserati... hay đơn giản hơn l&agrave; c&aacute;c d&ograve;ng xe m&aacute;y quen thuộc như Vespa, Ducati... l&agrave; đủ h&igrave;nh dung được sức ảnh hưởng của n&oacute; đến thế giới như thế n&agrave;o!</p>\r\n</div>\r\n<div class=\"col-sm-12\">\r\n<p><strong>8. C&aacute;c trường Đại học &Yacute;</strong></p>\r\n<p>Trường ĐH cổ nhất ch&acirc;u &Acirc;u ch&iacute;nh l&agrave; của &Yacute;. H&atilde;y tưởng tượng bạn sẽ sống những năm th&aacute;ng đẹp nhất v&agrave; quan trọng nhất của thời sinh vi&ecirc;n trong một m&ocirc;i trường gi&aacute;o dục c&oacute; bề d&agrave;y lịch sử, c&oacute; chất lượng cao v&agrave; nhất l&agrave; ở một nước với bao điều tuyệt vời kể tr&ecirc;n.</p>\r\n<p>Con đường du học &Yacute; dễ d&agrave;ng v&agrave; th&uacute; vị hơn bạn tưởng rất nhiều. Trong những năm gần đ&acirc;y &Yacute; đ&atilde; d&agrave;nh những ưu đ&atilde;i đặc biệt cho sinh vi&ecirc;n Việt Nam, h&atilde;y kh&aacute;m ph&aacute; v&agrave; đoạt cho m&igrave;nh một v&eacute; đi học ở &Yacute; tại Ng&agrave;y hội Học bổng &Yacute; cuối tuần n&agrave;y 19 - 20/11.</p>\r\n<p><strong>9. Ng&ocirc;n ngữ</strong></p>\r\n<p>Tiếng &Yacute; l&agrave; thứ tiếng của t&igrave;nh y&ecirc;u, của nghệ thuật, của s&aacute;ng tạo. Bạn c&oacute; biết tiếng &Yacute; l&agrave; ng&ocirc;n ngữ được học nhiều thứ 4 tr&ecirc;n thế giới, chỉ sau tiếng Anh, tiếng T&acirc;y Ban Nha v&agrave; tiếng Trung Quốc.</p>\r\n</div>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2017-09-27 19:59:50', '2017-09-27 19:59:50'),
(2, 0, 5, '6 điểm đến lãng mạn nhất Việt Nam', '6-diem-den-lang-man-nhat-viet-nam', '1506567706_7_04.jpg', '', NULL, '<div class=\"col-sm-12\">\r\n<p class=\"gdetail-sumary\">Opera, hội hoạ, ẩm thực, thi&ecirc;n nhi&ecirc;n lộng lẫy, kiến tr&uacute;c thăng hoa, thời trang s&agrave;nh điệu, kh&ocirc;ng chỉ vậy, &Yacute; c&ograve;n l&agrave; đất nước hội tụ những trường đại học cổ k&iacute;nh nhất ch&acirc;u &Acirc;u.</p>\r\n<p>C&oacute; x&ograve;e hết 10 ng&oacute;n tay vẫn chưa đếm hết những điều tuyệt vời, m&agrave; c&oacute; x&ograve;e th&ecirc;m ng&oacute;n ch&acirc;n nữa cũng chắc g&igrave; đ&atilde; đủ để kể về những điều th&uacute; vị ở &Yacute;: b&oacute;ng đ&aacute;, điện ảnh, c&aacute;c danh lam thắng cảnh, chưa kể &ocirc; t&ocirc; sang, xe m&aacute;y s&agrave;nh điệu, pizza, c&agrave; ph&ecirc;, kem ở chỗ n&agrave;o cũng ngon v&agrave; trai xinh g&aacute;i đẹp lại c&ograve;n l&atilde;ng mạn nữa... Chẳng thế m&agrave; th&aacute;ng trước khi Đại sứ qu&aacute;n Italia tổ chức cuộc thi với giải thưởng l&agrave; chuyến đi 10 ng&agrave;y đi t&igrave;m 10 điều tuyệt vời nhất nước &Yacute; c&ugrave;ng Quang Quick, Ban gi&aacute;m khảo đ&atilde; thật sự l&uacute;ng t&uacute;ng v&igrave; những b&agrave;i dự thi chất lừ v&agrave; cuối c&ugrave;ng đ&atilde; phải tăng số lượng giải thưởng l&ecirc;n đến 250%. N&oacute;i như thế để thấy rằng, nước &Yacute;, thật sự l&agrave; một điểm đến đ&aacute;ng chọn cho bạn ngay từ h&ocirc;m nay.</p>\r\n</div>\r\n<div class=\"col-sm-12 col-md-6\">\r\n<p><strong>1. C&aacute;c di sản được Unesco c&ocirc;ng nhận</strong></p>\r\n<p>&Yacute; được biết đến l&agrave; đất nước với hơn 50 di sản thi&ecirc;n nhi&ecirc;n v&agrave; văn ho&aacute;, kiến tr&uacute;c nổi bật của thế giới.</p>\r\n<p><strong>2. Thi&ecirc;n nhi&ecirc;n tươi đẹp</strong></p>\r\n<p>Đọc danh s&aacute;ch những điểm nhất định bạn phải đến l&uacute;c n&agrave;o cũng l&agrave; Venice, Floren, Cinqueterre. Khổ nỗi đi mấy chỗ đấy về lại th&ocirc;i th&uacute;c muốn quay lại lần nữa.</p>\r\n<p><strong>3. Thời tiết đẹp</strong></p>\r\n<p>Thật kh&oacute; tả, c&aacute;i cảm gi&aacute;c mắt nh&igrave;n bầu trời xanh ngắt, tai nghe s&oacute;ng biển r&igrave; r&agrave;o, da ấm n&oacute;ng dưới nắng mặt trời v&agrave;ng &oacute;ng&hellip; m&agrave; chỉ d&ugrave;ng lời th&igrave; quả l&agrave; nhiệm vụ bất khả thi. Thời tiết ở &Yacute; l&agrave; c&aacute;i g&igrave; đ&oacute; khiến mọi t&iacute;n đồ du lịch đều phải ngả m&igrave;nh hưởng thụ v&agrave; chỉ muốn h&ograve;a v&agrave;o nhịp đập của cuộc sống nơi đ&acirc;y.</p>\r\n</div>\r\n<div class=\"col-sm-12 col-md-6 gdetail-img\"><a title=\"\" href=\"http://localhost/dulich/admin/news/guide-detail.html\"><img src=\"http://localhost/dulich/admin/news/images/8_03.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-sm-12 col-md-6 gdetail-img\"><a title=\"\" href=\"http://localhost/dulich/admin/news/guide-detail.html\"><img src=\"http://localhost/dulich/admin/news/images/8_03.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-sm-12 col-md-6\">\r\n<p><strong>4. Ẩm thực</strong></p>\r\n<p>Kh&ocirc;ng cần phải b&agrave;n c&atilde;i, ẩm thực &Yacute; th&igrave; qu&aacute; nổi tiếng rồi, chả thế m&agrave; mấy từ tiếng &Yacute; d&agrave;i loằng ngoằng như: spaghetti, espresso... ở nước n&agrave;o người ta cũng biết. C&ograve;n g&igrave; tuyệt vời hơn l&agrave; đến tận nơi v&agrave; tận hưởng phi&ecirc;n bản gốc, đ&uacute;ng kh&ocirc;ng n&agrave;o?</p>\r\n<p><strong>5. Kinh đ&ocirc; thời trang thế giới</strong></p>\r\n<p>L&agrave; nơi sản sinh ra rất nhiều thương hiệu thời trang đ&igrave;nh đ&aacute;m, những nh&agrave; thiết kế t&agrave;i danh. &Yacute; lu&ocirc;n l&agrave; c&aacute;i n&ocirc;i của thời trang n&oacute;i ri&ecirc;ng v&agrave; nền nghệ thuật n&oacute;i chung. Đến &Yacute; l&agrave; sẽ đắm ch&igrave;m trong c&aacute;i đẹp, c&aacute;i đẹp của thời trang, của con người v&agrave; của cả một nền văn ho&aacute;.</p>\r\n<p><strong>6. C&aacute;c lễ hội</strong></p>\r\n<p>Với lịch sử l&acirc;u đời v&agrave; một nền văn h&oacute;a đa dạng, &Yacute; c&oacute; rất nhiều lễ hội đặc sắc m&agrave; điển h&igrave;nh l&agrave; Carnevale ở Venice.</p>\r\n<p><strong>7. Thiết kế c&ocirc;ng nghiệp</strong></p>\r\n<p>C&aacute;c sản phẩm của &Yacute; vừa tốt, vừa bền m&agrave; lại s&agrave;nh điệu. Cứ điểm mặt c&aacute;c d&ograve;ng xe sang trọng như: Ferrari, Lamborghini, Maserati... hay đơn giản hơn l&agrave; c&aacute;c d&ograve;ng xe m&aacute;y quen thuộc như Vespa, Ducati... l&agrave; đủ h&igrave;nh dung được sức ảnh hưởng của n&oacute; đến thế giới như thế n&agrave;o!</p>\r\n</div>\r\n<div class=\"col-sm-12\">\r\n<p><strong>8. C&aacute;c trường Đại học &Yacute;</strong></p>\r\n<p>Trường ĐH cổ nhất ch&acirc;u &Acirc;u ch&iacute;nh l&agrave; của &Yacute;. H&atilde;y tưởng tượng bạn sẽ sống những năm th&aacute;ng đẹp nhất v&agrave; quan trọng nhất của thời sinh vi&ecirc;n trong một m&ocirc;i trường gi&aacute;o dục c&oacute; bề d&agrave;y lịch sử, c&oacute; chất lượng cao v&agrave; nhất l&agrave; ở một nước với bao điều tuyệt vời kể tr&ecirc;n.</p>\r\n<p>Con đường du học &Yacute; dễ d&agrave;ng v&agrave; th&uacute; vị hơn bạn tưởng rất nhiều. Trong những năm gần đ&acirc;y &Yacute; đ&atilde; d&agrave;nh những ưu đ&atilde;i đặc biệt cho sinh vi&ecirc;n Việt Nam, h&atilde;y kh&aacute;m ph&aacute; v&agrave; đoạt cho m&igrave;nh một v&eacute; đi học ở &Yacute; tại Ng&agrave;y hội Học bổng &Yacute; cuối tuần n&agrave;y 19 - 20/11.</p>\r\n<p><strong>9. Ng&ocirc;n ngữ</strong></p>\r\n<p>Tiếng &Yacute; l&agrave; thứ tiếng của t&igrave;nh y&ecirc;u, của nghệ thuật, của s&aacute;ng tạo. Bạn c&oacute; biết tiếng &Yacute; l&agrave; ng&ocirc;n ngữ được học nhiều thứ 4 tr&ecirc;n thế giới, chỉ sau tiếng Anh, tiếng T&acirc;y Ban Nha v&agrave; tiếng Trung Quốc.</p>\r\n</div>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-09-27 20:01:46', '2017-09-27 20:01:46'),
(3, 0, 5, 'Mùa thu đông Bắc Á', 'mua-thu-dong-bac-a', '1506567744_7_07.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2017-09-27 20:02:24', '2017-09-27 20:02:24'),
(4, 0, 5, 'Những điểm du lịch tuyệt vời', 'nhung-diem-du-lich-tuyet-voi', '1506567771_7_15.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2017-09-27 20:02:51', '2017-09-27 20:02:51'),
(5, 0, 5, 'Những bãi biển đẹp', 'nhung-bai-bien-dep', '1506567787_7_16.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2017-09-27 20:03:07', '2017-09-27 20:03:07'),
(6, 0, 5, 'Du lịch văn hóa', 'du-lich-van-hoa', '1506567805_7_17.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 6, '2017-09-27 20:03:25', '2017-09-27 20:03:25'),
(7, 0, 5, 'Những thành phố nổi bật', 'nhung-thanh-pho-noi-bat', '1506567828_7_21.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 7, '2017-09-27 20:03:48', '2017-09-27 20:03:48'),
(8, 0, 5, 'Những điểm du lịch Châu phi đẹp', 'nhung-diem-du-lich-chau-phi-dep', '1506567918_7_22.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 8, '2017-09-27 20:05:18', '2017-09-27 20:05:18'),
(9, 0, 5, 'Du lịch mạo hiểm', 'du-lich-mao-hiem', '1506567950_7_24.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 9, '2017-09-27 20:05:50', '2017-09-27 20:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(37, 5, NULL, NULL, 'duydoan.nina@gmail.com', NULL, '', NULL, NULL, 1, 0, 'newsletter', 1, '2017-09-01 02:50:14', '2017-08-31 19:50:14'),
(38, 5, NULL, NULL, 'nguyennhan091@gmail.com', NULL, '', NULL, NULL, 1, 0, 'newsletter', 2, '2017-08-31 19:51:32', '2017-08-31 19:51:32'),
(40, 0, NULL, NULL, 'info@shoesshop.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-09-06 02:48:56', '2017-09-06 02:48:56'),
(42, 0, 'Hoàng Hồng Chương', NULL, 'chuonghoanghong@gmail.com', '0987654321', NULL, NULL, 'sdf', 1, 0, 'newsletter', 0, '2017-09-15 00:56:36', '2017-09-15 00:56:36'),
(43, 0, 'Nguyễn Văn A', NULL, 'a@gmail.com', '09392929', NULL, NULL, 'sfdsdf', 1, 0, 'newsletter', 0, '2017-09-15 19:48:18', '2017-09-15 19:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(3, 'Tin nội bộ', 'tin-noi-bo', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-08-07 21:52:19', NULL, '2017-08-08 00:13:28'),
(2, 'Tin thế giới', 'tin-the-gioi', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2017-08-07 21:36:29', NULL, '2017-08-08 00:13:31'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', NULL, '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', NULL, '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', NULL, '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', NULL, '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', NULL, '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', NULL, '2017-08-30 00:48:18'),
(31, 'Sản phẩm khác', 'san-pham-khac', '1505465773_sv3.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-15 09:49:21', '1505468961_dv4.png', '2017-09-15 02:49:21'),
(30, 'Canxi nano', 'canxi-nano', '1505465758_sv2.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-15 09:48:41', '1505468921_dv3.png', '2017-09-15 02:48:41'),
(29, 'Sản phẩm bảo vệ sức khỏe', 'san-pham-bao-ve-suc-khoe', '1505465729_sv1.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-16 04:14:59', '1505468944_dv4.png', '2017-09-15 21:14:59'),
(33, 'Sản phẩm mới nhập', 'san-pham-moi-nhap', '', NULL, 0, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-18 01:49:43', '', '2017-09-17 18:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) NOT NULL DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `model`, `namsanxuat`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, 1, 'Natural Glam', 'natural-glam', '1506332932_2_06.png', 1000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-26 04:51:49', '2017-09-25 21:51:49'),
(2, 5, 1, NULL, 2, 'Đèn trần 1', 'den-tran-1', '1506389332_1-1.png', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-26 04:58:39', '2017-09-25 21:58:39'),
(3, 5, 1, NULL, 3, 'Đèn trần 2', 'den-tran-2', '1506389354_1-3.png', 5000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-26 04:58:40', '2017-09-25 21:58:40'),
(4, 5, 2, NULL, 4, 'Đèn chùm', 'den-chum', '1506389384_2_27.png', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-26 04:58:41', '2017-09-25 21:58:41'),
(5, 5, 2, NULL, 5, 'Đèn chùm 1', 'den-chum-1', '1506487641_1-2.png', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-27 04:47:21', '2017-09-26 21:47:21'),
(6, 5, 2, '4JG4JN', 6, 'Đèn chùm 2', 'den-chum-2', '1506389811_2_16.png', 1000000, 0, 0, '<p>Thương hiệu: Sylcom</p>\r\n<p>K&iacute;ch thước (mm): 840 x H min 660/ max 1200</p>\r\n<p>M&agrave;u: Gold</p>\r\n<p>Chất liệu: Metal, glass</p>\r\n<p>Loại b&oacute;ng: E14/max 40W</p>\r\n<p>Số lượng b&oacute;ng: 7</p>', '<p>Đ&egrave;n ch&ugrave;m trang tr&iacute; tạo kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch ấm c&uacute;ng v&agrave; sang trọng</p>\r\n<p>nh s&aacute;ng của đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch cực kỳ quan trọng trong việc trang tr&iacute; nội thất căn ph&ograve;ng. Ngo&agrave;i những c&ocirc;ng năng trang tr&iacute; chiếu s&aacute;ng th&ocirc;ng thường ch&uacute;ng c&ograve;n g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp sang trọng, ấm c&uacute;ng cho căn ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n<p>Để tạo ra một ko gian ấm &aacute;p với &aacute;nh nguồn &aacute;nh s&aacute;ng dịu nhẹ, lan tỏa bạn cần treo một chiếc đ&egrave;n ch&ugrave;m trang tr&iacute; đảm bảo cường độ &aacute;nh s&aacute;ng vừa phải, nguồn &aacute;nh s&aacute;ng t&ocirc;ng v&agrave;ng sẽ mang lại một cảm gi&aacute;c ấm &aacute;p cho căn ph&ograve;ng v&agrave; đỡ tr&oacute;i mắt . Ngo&agrave;i ra treo một đ&egrave;n ch&ugrave;m pha l&ecirc; lớn tr&ecirc;n trần của ph&ograve;ng ăn cũng rất tốt v&igrave; n&oacute; tượng trưng cho năng lượng dương, rất tốt cho c&aacute;c bữa ăn.</p>\r\n<p>Lựa chọn đ&egrave;n trang tr&iacute; ph&ugrave; hợp cho ph&ograve;ng kh&aacute;ch Đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch phải tạo được cho căn ph&ograve;ng kh&ocirc;ng gian ấm c&uacute;ng v&agrave; sang trọng. C&oacute; thể bố tr&iacute; cho ph&ograve;ng kh&aacute;ch những ngọn đ&egrave;n ch&ugrave;m đẹp lấp l&aacute;nh sẽ l&agrave;m cho ph&ograve;ng kh&aacute;ch th&ecirc;m lung linh</p>\r\n<p>C&oacute; rất nhiều loại đ&egrave;n trang tr&iacute; nội thất như đ&egrave;n ch&ugrave;m, đ&egrave;n trần, đ&egrave;n b&agrave;n, ... mỗi loại c&oacute; một ưu điểm v&agrave; c&aacute;ch b&agrave;i tr&iacute; xắp đặt ri&ecirc;ng, v&igrave; k&iacute;ch cỡ mỗi loại kh&aacute;c nhau n&ecirc;n cần phải lụa chọn cho ph&ugrave; hợp với từng kh&ocirc;ng gian</p>\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; treo đ&egrave;n ch&ugrave;m trang tr&iacute; ph&ograve;ng kh&aacute;ch cần phải hiểu r&otilde; chức năng, biết lựa chọn đ&egrave;n c&oacute; k&iacute;ch thước ph&ugrave; hợp, ngo&agrave;i việc bạn cần hiểu về đặc điểm từng loại ra th&igrave; đ&egrave;n c&ograve;n phải gắn với kh&ocirc;ng gian kiến tr&uacute;c v&agrave; nội thất.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-26 01:54:57', '2017-09-25 18:54:57'),
(7, 5, 3, NULL, 7, 'Đèn cây 1', 'den-cay-1', '1506487615_1-0.png', 1000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-27 04:46:55', '2017-09-26 21:46:55'),
(8, 5, 3, NULL, 8, 'Sản phẩm đèn demo', 'san-pham-den-demo', '1506487627_1-1.png', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-27 04:47:07', '2017-09-26 21:47:07'),
(9, 5, 3, NULL, 9, 'Đèn cây 3', 'den-cay-3', '1506487673_2_08.png', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-26 21:47:53', '2017-09-26 21:47:53'),
(10, 5, 4, NULL, 10, 'Đèn bàn 1', 'den-ban-1', '1506487781_1-4.png', 1400000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-26 21:49:41', '2017-09-26 21:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Đèn Trần', 'den-tran', '1506332200_1-4.png', 1, 0, NULL, NULL, NULL, '2017-09-25 02:36:40', '2017-09-25 02:36:40'),
(2, 0, 2, 'Đèn chùm', 'den-chum', '1506332306_2-2_02.png', 1, 0, NULL, NULL, NULL, '2017-09-25 09:38:26', '2017-09-25 02:38:26'),
(3, 0, 3, 'Đèn cây', 'den-cay', '1506332346_2-1.png', 1, 0, NULL, NULL, NULL, '2017-09-25 02:39:06', '2017-09-25 02:39:06'),
(4, 0, 4, 'Đèn bàn', 'den-ban', '1506332358_2-0.png', 1, 0, NULL, NULL, NULL, '2017-09-25 02:39:18', '2017-09-25 02:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`, `created_at`, `updated_at`) VALUES
(2, 'hai phong', '2017-09-21 07:19:34', '2017-09-21 07:19:34'),
(4, 'Hà Nội', '2017-09-21 21:47:54', '2017-09-21 21:47:54'),
(5, 'Thái Bình', '2017-09-21 21:48:05', '2017-09-21 21:48:17'),
(6, 'Hồ Chí Minh', '2017-09-25 00:14:42', '2017-09-25 00:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'EazeTour', 'EazeTour', 'CÔNG TY CỔ PHẦN EAZE TOUR', 'http://gco.vn/', '167 Giảng võ, P.Cát Linh, Q.Đống Đa, Hà Nội', '324 3512 3388', '324 3512 3388', '024 3512 2789', 'support@gco.vn', '1506563526_logo.png', '1506563526_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO 2017. All rights reserved. Design by chuonghoanghong@gmail.com.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761617598985!2d105.82076241501875!3d21.00219068601275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac869cd63f89%3A0xa2e71c273579f51b!2zMzE1IFRyxrDhu51uZyBDaGluaA!5e0!3m2!1sen!2s!4v1505443560797\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2017-09-28 02:12:10', '2017-09-27 19:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(49, 5, '7', NULL, '1506652011_1_42.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 7, '2017-09-28 19:26:51', '2017-09-28 19:26:51'),
(50, 5, '8', NULL, '1506652027_1_33.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 8, '2017-09-28 19:27:07', '2017-09-28 19:27:07'),
(48, 5, '6', NULL, '1506651994_1_37.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 6, '2017-09-28 19:26:34', '2017-09-28 19:26:34'),
(47, 5, '5', NULL, '1506651982_1_41.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 5, '2017-09-28 19:26:22', '2017-09-28 19:26:22'),
(46, 5, '4', NULL, '1506651968_1_31.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 4, '2017-09-28 19:26:08', '2017-09-28 19:26:08'),
(45, 5, '3', NULL, '1506651959_1_40.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-09-28 19:25:59', '2017-09-28 19:25:59'),
(44, 5, '2', NULL, '1506651948_1_35.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-09-28 19:25:48', '2017-09-28 19:25:48'),
(43, 5, '1', NULL, '1506651938_1_34.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-09-28 19:25:38', '2017-09-28 19:25:38'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'SẢN PHẨM ĐA DẠNG, CHẤT LƯỢNG.', '<p>Đảm bảo sản phẩm chất lượng nhất</p>', '2017-10-02 06:43:22', '2017-10-02 06:43:22'),
(3, 'MẠNG BÁN TOUR SỐ 1 VIỆT NAM', '<p>Ứng dụng c&ocirc;ng nghệ mới nhất</p>', '2017-10-02 06:43:45', '2017-10-02 06:43:45'),
(4, 'SẢN PHẨM ĐA DẠNg', '<p>Sản phẩm đa dạng</p>', '2017-10-02 06:44:17', '2017-10-02 06:44:17'),
(5, 'Sản phẩm tốt nhất', '<p>Sản phẩm đảm bảo chất lượng cao</p>', '2017-10-02 06:44:37', '2017-10-02 06:44:37'),
(6, 'Hệ thống bán tour hiện đại', '<p>Hệ thống tour hiện đại</p>', '2017-10-02 06:44:57', '2017-10-02 06:44:57'),
(7, 'Cung cấp các chuyến du lịch hấp dẫn', '<p>Cung cấp c&aacute;c chuyến du lịch hấp dẫn</p>', '2017-10-02 06:45:22', '2017-10-02 06:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(11) NOT NULL,
  `diemdi_id` int(11) DEFAULT NULL,
  `diemden_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `photo` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `number_date` varchar(250) DEFAULT NULL,
  `des_schedule` text,
  `content_schedule` text,
  `mota` text,
  `content` text,
  `start` text,
  `price` int(11) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_start` datetime DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id`, `diemdi_id`, `diemden_id`, `cate_id`, `name`, `alias`, `photo`, `time_start`, `number_date`, `des_schedule`, `content_schedule`, `mota`, `content`, `start`, `price`, `note`, `status`, `created_at`, `updated_at`, `date_start`, `keyword`, `description`) VALUES
(1, 2, 1, 1, 'Du lịch Tam Đảo', 'du-lich-tam-dao', '1506658967_1_05.png', NULL, '3 ngày 2 đêm', '<p>M&ocirc; tả lịch tr&igrave;nh</p>', '<p>Nội dung lịch tr&igrave;nh</p>', 'Mùa thu luôn được coi là mùa đẹp nhất trong năm. Sức hấp dẫn đặc biệt của mùa thu không chỉ bởi khung cảnh thiên nhiên lãng mạn, bởi sắc thu bao phủ mọi cảnh vật mà còn bởi tiết trời thu luôn là một trợ thủ đắc lực, giúp du khách có một sức khỏe và tinh thần sảng khoái khi đi du lịch dài ngày.', '<p>Nội dung tổng quan</p>', '<p>Nội dung khởi h&agrave;nh</p>', 1000000, '<p>Nội dung ghi ch&uacute;</p>', 1, '2017-10-05 02:16:25', '2017-10-04 19:16:25', '1970-01-01 00:00:00', NULL, NULL),
(3, 2, 3, 3, 'du lịch đà nẵng', 'du-lich-da-nang', '1506668547_7_30.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, NULL, 1, '2017-09-30 03:59:52', '2017-09-29 20:59:52', '2017-09-30 00:00:00', NULL, NULL),
(19, 3, 3, 2, 'test tim kiem tour', 'test-tim-kiem-tour', '1506739063_2_11.jpg', 7, NULL, '<p class=\"tdetail-trip\">Hanh trinh chuyen di</p>', '<p>Du lịch Ch&acirc;u &Acirc;u - H&agrave;nh tr&igrave;nh Ph&aacute;p - Thụy Sĩ - &Yacute; - Vatican - Monaco m&ugrave;a thu từ TP.HCM. V&agrave;o m&ugrave;a thu, mọi người thường đi bộ trong những khu rừng để thanh thản ngắm nh&igrave;n thi&ecirc;n nhi&ecirc;n. V&agrave; Ngắm khu rừng từ tr&ecirc;n cao, bạn sẽ thấy nao l&ograve;ng với những thảm thực vật xếp chồng l&ecirc;n nhau che phủ c&aacute;c thung lũng, tạo n&ecirc;n những mảng m&agrave;u đẹp, s&aacute;ng bừng cả kh&ocirc;ng gian.</p>\r\n<p>Đ&atilde; từ l&acirc;u, du lịch Italia (&Yacute;) đ&atilde; được coi l&agrave; h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; tuyệt vời nhất, nổi tiếng nhất đối với du kh&aacute;ch to&agrave;n thế giới. Chắc chắn, kh&ocirc;ng c&oacute; một chuyến du lịch n&agrave;o m&agrave; du kh&aacute;ch lại được chi&ecirc;m ngưỡng vẻ đẹp pha trộn ho&agrave;n hảo giữa hiện thực v&agrave; qu&aacute; khứ, giữa truyền thống v&agrave; hiện đại, những c&ocirc;ng tr&igrave;nh kiến tr&uacute;c La M&atilde; vĩ đại, n&eacute;t văn h&oacute;a đặc sắc l&acirc;u đời, những cảnh quan đẹp ho&agrave;n mỹ v&agrave; n&eacute;t ẩm thực tinh tế đến kh&ocirc;ng ngờ,&hellip;như chuyến du lịch Italia.</p>', NULL, '<p>Du lịch Ch&acirc;u &Acirc;u - H&agrave;nh tr&igrave;nh Ph&aacute;p - Thụy Sĩ - &Yacute; - Vatican - Monaco m&ugrave;a thu từ TP.HCM. V&agrave;o m&ugrave;a thu, mọi người thường đi bộ trong những khu rừng để thanh thản ngắm nh&igrave;n thi&ecirc;n nhi&ecirc;n. V&agrave; Ngắm khu rừng từ tr&ecirc;n cao, bạn sẽ thấy nao l&ograve;ng với những thảm thực vật xếp chồng l&ecirc;n nhau che phủ c&aacute;c thung lũng, tạo n&ecirc;n những mảng m&agrave;u đẹp, s&aacute;ng bừng cả kh&ocirc;ng gian.</p>\r\n<p>Đ&atilde; từ l&acirc;u, du lịch Italia (&Yacute;) đ&atilde; được coi l&agrave; h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; tuyệt vời nhất, nổi tiếng nhất đối với du kh&aacute;ch to&agrave;n thế giới. Chắc chắn, kh&ocirc;ng c&oacute; một chuyến du lịch n&agrave;o m&agrave; du kh&aacute;ch lại được chi&ecirc;m ngưỡng vẻ đẹp pha trộn ho&agrave;n hảo giữa hiện thực v&agrave; qu&aacute; khứ, giữa truyền thống v&agrave; hiện đại, những c&ocirc;ng tr&igrave;nh kiến tr&uacute;c La M&atilde; vĩ đại, n&eacute;t văn h&oacute;a đặc sắc l&acirc;u đời, những cảnh quan đẹp ho&agrave;n mỹ v&agrave; n&eacute;t ẩm thực tinh tế đến kh&ocirc;ng ngờ,&hellip;như chuyến du lịch Italia.</p>\r\n<p>Thời điểm tuyệt vời nhất n&ecirc;n đi du lịch Italia</p>\r\n<p>C&oacute; thể n&oacute;i, nước &Yacute; l&agrave; một trong những quốc gia c&oacute; kh&iacute; hậu cực đa dạng, mỗi v&ugrave;ng miền của &Yacute; lại c&oacute; một kh&iacute; hậu kh&aacute;c nhau. Thế nhưng, &Yacute; vẫn c&oacute; 4 m&ugrave;a r&otilde; rệt:</p>\r\n<p>&ndash; M&ugrave;a xu&acirc;n thường k&eacute;o d&agrave;i khoảng từ th&aacute;ng 3 đến giữa th&aacute;ng 6. Nhiệt độ trung b&igrave;nh v&agrave;o khoảng 10-25 độ C. Kh&iacute; hậu m&aacute;t mẻ, tho&aacute;ng đ&atilde;ng, cảnh vật tươi sắc.</p>\r\n<p>&ndash; M&ugrave;a h&egrave; ở &Yacute; thường bắt đầu v&agrave;o tầm trung tuần th&aacute;ng 6 v&agrave; kết th&uacute;c v&agrave;o khoảng giữa th&aacute;ng 9. Nhiệt độ trung b&igrave;nh l&agrave; từ 20-38 độ C. C&oacute; năm đỉnh điểm hơn 40 độ C. Rất n&oacute;ng v&agrave; hanh kh&ocirc;, nhưng kh&ocirc;ng gay gắt như Việt Nam.</p>\r\n<p>&ndash; M&ugrave;a thu k&eacute;o d&agrave;i 3 th&aacute;ng, từ th&aacute;ng 9 đến giữa th&aacute;ng 12. Nhiệt độ trung b&igrave;nh thấp hơn m&ugrave;a xu&acirc;n khoảng 2-5 độ C. Kh&iacute; hậu hơi lạnh, nhưng thoải m&aacute;i, cảnh vật l&atilde;ng mạng, thơ mộng.</p>\r\n<p>&ndash; M&ugrave;a đ&ocirc;ng ở &Yacute; rơi v&agrave;o khoảng giữa th&aacute;ng 12 đến giữa th&aacute;ng 3 năm sau. Nhiệt độ trung b&igrave;nh cao nhất l&agrave; 10 độ C, thậm ch&iacute; c&oacute; thể xuống dưới &acirc;m độ. Rất lạnh, nhưng lại rất đẹp v&igrave; c&oacute; tuyết rơi.</p>\r\n<p>Theo kinh nghiệm du lịch &Yacute; tự t&uacute;c th&igrave; bạn n&ecirc;n đi du lịch &Yacute; v&agrave;o m&ugrave;a xu&acirc;n hoặc m&ugrave;a m&ugrave;a thu. Bởi thời gian n&agrave;y kh&iacute; hậu rất m&aacute;t mẻ, dễ chịu, cảnh sắc đẹp m&ecirc; hồn v&agrave; c&oacute; nhiều lễ hội diễn ra. V&agrave; đặc biệt kh&ocirc;ng n&ecirc;n đi du lịch Italia v&agrave;o m&ugrave;a h&egrave; v&igrave; m&ugrave;a hẻ ở đ&acirc;y rất n&oacute;ng, n&oacute;ng đến nỗi người d&acirc;n ở đ&acirc;y cũng phải &ldquo;di cư&rdquo; đến những v&ugrave;ng biển c&oacute; kh&iacute; hậu dịu m&aacute;t hơn. C&agrave;ng kh&ocirc;ng n&ecirc;n đến &Yacute; v&agrave;o m&ugrave;a đ&ocirc;ng v&igrave; thời tiết rất lạnh, tuyết rơi nhiều v&agrave; d&agrave;y đặc sẽ khiến kế hoạch du lịch của bạn bị cản trở.</p>\r\n<p>Phương tiện đến v&agrave; đi khi du lịch Italia</p>\r\n<p>&ndash; Phương tiện di chuyển từ Việt Nam đến Italia</p>\r\n<p>Tất nhi&ecirc;n l&agrave; m&aacute;y bay rồi. Hiện nay ở Việt Nam c&oacute; 3 h&atilde;ng h&agrave;ng kh&ocirc;ng c&oacute; nhiều chuyến bay gi&aacute; rẻ đến Italia nhất l&agrave;: Air France, Turkish v&agrave; Cathay Pacific. C&aacute;c chuyến bay của 3 h&atilde;ng n&agrave;y đều đ&aacute;p ở 2 s&acirc;n bay lớn nhất nước &Yacute; l&agrave; Rome v&agrave; Milan.</p>\r\n<p>Nếu bạn đến &Yacute; từ Việt Nam v&agrave; chọn m&aacute;y bay l&agrave; phương tiện di chuyển, th&igrave; ch&uacute;ng t&ocirc;i xin chia sẻ với bạn một số kinh nghiệm du lịch &Yacute; tiết kiệm tiền v&eacute; m&aacute;y bay nhất, đ&oacute; l&agrave;:</p>\r\n<p>Săn v&eacute; m&aacute;y bay gi&aacute; rẻ bằng c&aacute;ch theo d&otilde;i v&agrave; đăng k&yacute; email nhận th&ocirc;ng tin khuyến m&atilde;i từ c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng c&oacute; chuyến bay đến &Yacute; trước chuyến đi của bạn khoảng 2-3 th&aacute;ng.</p>\r\n<p>N&ecirc;n chọn những chuyến bay đ&ecirc;m, v&agrave;o ng&agrave;y thường v&igrave; gi&aacute; v&eacute; sẽ rẻ hơn v&eacute; bay ng&agrave;y v&agrave; cuối tuần. Thậm ch&iacute; nếu may mắn, bạn sẽ nhận được những ưu đ&atilde;i bất ngờ trong c&aacute;c chuyến bay đ&ecirc;m. Đặt v&eacute; m&aacute;y bay c&agrave;ng sớm c&agrave;ng tốt. Nhất l&agrave; v&agrave;o m&ugrave;a du lịch. Bởi v&agrave;o thời điểm m&ugrave;a du lịch, v&eacute; m&aacute;y bay đến c&aacute;c nước Ch&acirc;u &Acirc;u, trong đ&oacute; c&oacute; &Yacute; thường tăng cao đột biến.</p>\r\n<p>Nếu được, h&atilde;y đặt v&eacute; m&aacute;y bay trực tuyến, thay v&igrave; đến s&acirc;n bay mới mua. Vừa gi&uacute;p bạn tiết kiệm thời gian xếp h&agrave;ng mua v&eacute; ở s&acirc;n bay, vừa tiết kiệm được tiền bạc, bởi một số h&atilde;ng thường c&oacute; nhiều chương tr&igrave;nh ưu đ&atilde;i cho kh&aacute;ch đặt v&eacute; trực tuyến.</p>\r\n<p>C&ograve;n nếu bạn c&oacute; kế hoạch cho một chuyến du lịch v&ograve;ng quanh thế giới th&igrave; t&ugrave;y v&agrave;o địa điểm m&agrave; bạn đang dừng ch&acirc;n, bạn c&oacute; thể đi t&agrave;u, thuyền, &ocirc;-t&ocirc; hoặc xe bus để đến &Yacute;.</p>\r\n<p>&ndash; Phương tiện di chuyển ở &Yacute;</p>\r\n<p>Ở &Yacute; c&oacute; rất nhiều phương tiện di chuyển cho bạn lựa chọn: M&aacute;y bay (v&igrave; &Yacute; kh&aacute; rộng, n&ecirc;n nếu c&oacute; &iacute;t thời gian th&igrave; n&ecirc;n chọn phương tiện n&agrave;y), &ocirc;-t&ocirc;, xe m&aacute;y, xe đạp, xe bus, t&agrave;u lửa&hellip;</p>\r\n<p>Trong số những phương tiện n&agrave;y, th&igrave; phương tiện c&ocirc;ng cộng xe bus v&agrave; xe lửa lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu của kh&aacute;ch du lịch. Bởi gi&aacute; rẻ, tiện lợi v&agrave; chất lượng. Do đ&oacute;, kinh nghiệm du lịch Italia tự t&uacute;c, tiết kiệm cho người lần đầu đến &Yacute; l&agrave; sau khi nhận ph&ograve;ng kh&aacute;ch sạn, h&atilde;y lấy một tờ bản đồ di chuyển phương tiện c&ocirc;ng cộng ở quầy lễ t&acirc;n v&agrave; sử dụng xe bus hoặc t&agrave;u lửa l&agrave;m phương tiện di chuyển ch&iacute;nh.</p>', '<p>Nếu bạn đến &Yacute; từ Việt Nam v&agrave; chọn m&aacute;y bay l&agrave; phương tiện di chuyển, th&igrave; ch&uacute;ng t&ocirc;i xin chia sẻ với bạn một số kinh nghiệm du lịch &Yacute; tiết kiệm tiền v&eacute; m&aacute;y bay nhất, đ&oacute; l&agrave;:</p>\r\n<p>&nbsp;</p>\r\n<p>Săn v&eacute; m&aacute;y bay gi&aacute; rẻ bằng c&aacute;ch theo d&otilde;i v&agrave; đăng k&yacute; email nhận th&ocirc;ng tin khuyến m&atilde;i từ c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng c&oacute; chuyến bay đến &Yacute; trước chuyến đi của bạn khoảng 2-3 th&aacute;ng.</p>\r\n<p>N&ecirc;n chọn những chuyến bay đ&ecirc;m, v&agrave;o ng&agrave;y thường v&igrave; gi&aacute; v&eacute; sẽ rẻ hơn v&eacute; bay ng&agrave;y v&agrave; cuối tuần. Thậm ch&iacute; nếu may mắn, bạn sẽ nhận được những ưu đ&atilde;i bất ngờ trong c&aacute;c chuyến bay đ&ecirc;m. Đặt v&eacute; m&aacute;y bay c&agrave;ng sớm c&agrave;ng tốt. Nhất l&agrave; v&agrave;o m&ugrave;a du lịch. Bởi v&agrave;o thời điểm m&ugrave;a du lịch, v&eacute; m&aacute;y bay đến c&aacute;c nước Ch&acirc;u &Acirc;u, trong đ&oacute; c&oacute; &Yacute; thường tăng cao đột biến.</p>\r\n<p>Nếu được, h&atilde;y đặt v&eacute; m&aacute;y bay trực tuyến, thay v&igrave; đến s&acirc;n bay mới mua. Vừa gi&uacute;p bạn tiết kiệm thời gian xếp h&agrave;ng mua v&eacute; ở s&acirc;n bay, vừa tiết kiệm được tiền bạc, bởi một số h&atilde;ng thường c&oacute; nhiều chương tr&igrave;nh ưu đ&atilde;i cho kh&aacute;ch đặt v&eacute; trực tuyến.</p>\r\n<p>C&ograve;n nếu bạn c&oacute; kế hoạch cho một chuyến du lịch v&ograve;ng quanh thế giới th&igrave; t&ugrave;y v&agrave;o địa điểm m&agrave; bạn đang dừng ch&acirc;n, bạn c&oacute; thể đi t&agrave;u, thuyền, &ocirc;-t&ocirc; hoặc xe bus để đến &Yacute;.</p>\r\n<p>&ndash; Phương tiện di chuyển ở &Yacute;</p>', 4000000, '<p>Nếu bạn đến &Yacute; từ Việt Nam v&agrave; chọn m&aacute;y bay l&agrave; phương tiện di chuyển, th&igrave; ch&uacute;ng t&ocirc;i xin chia sẻ với bạn một số kinh nghiệm du lịch &Yacute; tiết kiệm tiền v&eacute; m&aacute;y bay nhất, đ&oacute; l&agrave;:</p>\r\n<p>&nbsp;</p>\r\n<p>Săn v&eacute; m&aacute;y bay gi&aacute; rẻ bằng c&aacute;ch theo d&otilde;i v&agrave; đăng k&yacute; email nhận th&ocirc;ng tin khuyến m&atilde;i từ c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng c&oacute; chuyến bay đến &Yacute; trước chuyến đi của bạn khoảng 2-3 th&aacute;ng.</p>\r\n<p>N&ecirc;n chọn những chuyến bay đ&ecirc;m, v&agrave;o ng&agrave;y thường v&igrave; gi&aacute; v&eacute; sẽ rẻ hơn v&eacute; bay ng&agrave;y v&agrave; cuối tuần. Thậm ch&iacute; nếu may mắn, bạn sẽ nhận được những ưu đ&atilde;i bất ngờ trong c&aacute;c chuyến bay đ&ecirc;m. Đặt v&eacute; m&aacute;y bay c&agrave;ng sớm c&agrave;ng tốt. Nhất l&agrave; v&agrave;o m&ugrave;a du lịch. Bởi v&agrave;o thời điểm m&ugrave;a du lịch, v&eacute; m&aacute;y bay đến c&aacute;c nước Ch&acirc;u &Acirc;u, trong đ&oacute; c&oacute; &Yacute; thường tăng cao đột biến.</p>\r\n<p>Nếu được, h&atilde;y đặt v&eacute; m&aacute;y bay trực tuyến, thay v&igrave; đến s&acirc;n bay mới mua. Vừa gi&uacute;p bạn tiết kiệm thời gian xếp h&agrave;ng mua v&eacute; ở s&acirc;n bay, vừa tiết kiệm được tiền bạc, bởi một số h&atilde;ng thường c&oacute; nhiều chương tr&igrave;nh ưu đ&atilde;i cho kh&aacute;ch đặt v&eacute; trực tuyến.</p>\r\n<p>C&ograve;n nếu bạn c&oacute; kế hoạch cho một chuyến du lịch v&ograve;ng quanh thế giới th&igrave; t&ugrave;y v&agrave;o địa điểm m&agrave; bạn đang dừng ch&acirc;n, bạn c&oacute; thể đi t&agrave;u, thuyền, &ocirc;-t&ocirc; hoặc xe bus để đến &Yacute;.</p>\r\n<p>&ndash; Phương tiện di chuyển ở &Yacute;</p>', 1, '2017-10-02 04:02:53', '2017-10-02 04:02:53', '2017-10-01 00:00:00', NULL, NULL),
(20, 2, 4, 1, 'Du lichj phuot', 'du-lichj-phuot', '1506950425_1506737043_1_24.png', 3, NULL, '<p>Mo ta lich trinh chuyen di afn;lasf ;las;lsda;f&nbsp;</p>', '<p>noi dung lich trinh chuyen di</p>', 'sfdf sf sf', '<p>noi dung tong quan</p>', '<p>noi dung khoi hanh</p>', 700000, '<p>noi dng ghi chu</p>', 1, '2017-10-02 13:20:25', '2017-10-02 06:20:25', '1970-01-01 00:00:00', NULL, NULL),
(21, 2, 5, 7, 'Du lịch nước italia', 'du-lich-nuoc-italia', '1506909724_1_23.png', 5, NULL, NULL, NULL, NULL, NULL, NULL, 4444444, NULL, 1, '2017-10-02 04:03:03', '2017-10-02 04:03:03', '2017-10-01 00:00:00', NULL, NULL),
(22, 4, 4, 13, 'Du lịch nước Nga', 'du-lich-nuoc-nga', '1506909966_1_11.png', 15, '5 ngày 4 đêm', NULL, NULL, NULL, NULL, NULL, 77777777, NULL, 1, '2017-10-03 02:05:01', '2017-10-02 19:05:01', '1970-01-01 00:00:00', NULL, NULL),
(23, NULL, NULL, 2, 'Tour test', 'tour-test', '', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-02 19:10:56', '2017-10-02 19:10:56', '1970-01-01 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'Mc0QrDAe2azzsAqVTEpySEQEJDeBa30IKL1ie5H1IGhukZKBgvKgJKaZQXcx', '2017-09-25 02:31:46', '2017-09-24 19:31:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_tour`
--
ALTER TABLE `categories_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_finish`
--
ALTER TABLE `location_finish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_start`
--
ALTER TABLE `location_start`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories_tour`
--
ALTER TABLE `categories_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `location_finish`
--
ALTER TABLE `location_finish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location_start`
--
ALTER TABLE `location_start`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
