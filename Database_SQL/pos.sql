-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2023 at 05:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(1, 'Nani', 'P', '087162836482', 'Bandung', '2023-03-07 18:49:48', '2023-04-12 18:43:48'),
(2, 'Dadang', 'L', '089526372536', 'Jakarta', '2023-03-07 18:51:51', NULL),
(3, 'Toni', 'L', '084362739463', 'Bekasi', '2023-03-07 19:46:55', '2023-03-07 13:47:17'),
(4, 'Dani', 'L', '0864253728368', 'Banjar', '2023-03-08 16:03:26', NULL),
(7, 'Nana', 'P', '0867336483638', 'Jakarta', '2023-03-08 16:04:31', NULL),
(8, 'Winda', 'P', '08252873628323', 'Palembang', '2023-03-08 16:04:45', NULL),
(9, 'Eko', 'L', '0813537724634', 'Batam', '2023-03-08 16:05:01', NULL),
(11, 'Andi', 'L', '08751248784', 'Bandung', '2023-07-13 20:04:58', '2023-07-20 05:42:38'),
(12, 'Bayu', 'L', '08123354747', 'Bandung', '2023-08-05 09:10:26', '2023-08-05 04:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`) VALUES
(2, 'Syrup', '2023-03-07 23:51:11', '2023-07-13 08:18:22'),
(3, 'Minuman', '2023-03-08 00:01:18', '2023-03-08 04:35:21'),
(4, 'Mie Instan', '2023-04-12 23:31:39', NULL),
(5, 'Biscuit', '2023-04-12 23:31:47', NULL),
(6, 'Wafer', '2023-04-12 23:31:53', NULL),
(7, 'Buah', '2023-04-12 23:32:05', NULL),
(8, 'Sayur', '2023-04-12 23:32:11', NULL),
(9, 'Snack', '2023-04-12 23:32:36', NULL),
(10, 'Sabun Mandi', '2023-04-12 23:32:50', NULL),
(13, 'Kopi', '2023-07-13 13:18:43', NULL),
(14, 'Teh', '2023-07-13 13:39:06', NULL),
(15, 'Susu', '2023-07-13 13:39:12', NULL),
(16, 'Rokok', '2023-07-13 13:39:21', NULL),
(17, 'air mineral', '2023-07-13 20:05:55', NULL),
(19, 'Pembersih lantai', '2023-08-05 09:10:57', NULL),
(20, 'Sabun Bayi', '2023-08-05 09:11:17', '2023-08-05 04:11:34'),
(21, 'Keju', '2023-08-05 09:13:49', NULL),
(24, 'Minyak Goreng', '2023-08-28 08:32:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_item`
--

CREATE TABLE `p_item` (
  `item_id` int(11) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(10) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_item`
--

INSERT INTO `p_item` (`item_id`, `barcode`, `name`, `category_id`, `unit_id`, `price`, `stock`, `image`, `created`, `updated`) VALUES
(13, '089686041705', 'Indomie Goreng', 4, 2, 2700, 10, 'item-230412-f055857885.jpeg', '2023-03-09 16:13:30', '2023-07-18 04:41:41'),
(14, '8992702000063', 'Indomilk Botol', 3, 5, 4000, 10, 'item-230413-ae6f72b49e.jpg', '2023-03-09 16:16:12', '2023-07-30 05:15:13'),
(15, '8888002188511', 'pulpy orange', 3, 5, 7000, 18, 'item-230729-098e63c0a2.jpeg', '2023-03-09 16:27:10', '2023-07-29 06:37:21'),
(16, '8992753033645', 'bendera coklat UHT', 3, 5, 7000, 16, 'item-230718-70bd2b9c3c.jpeg', '2023-03-11 23:10:50', '2023-07-18 04:45:09'),
(20, '89686014280', 'Supermi Ayam Bawang', 4, 2, 2600, 48, 'item-230718-73bf38f3bc.jpeg', '2023-03-12 19:02:35', '2023-07-18 04:46:45'),
(22, '8991001005694', 'Wafer Selamat', 6, 2, 2000, 17, 'item-230718-c24b66e798.jpeg', '2023-03-12 19:03:20', '2023-07-18 04:50:39'),
(23, '8998866200301', 'Mie Sedaap', 4, 2, 2700, 15, 'item-230413-19cca36583.jpeg', '2023-03-12 19:03:48', '2023-07-18 04:28:19'),
(24, '8993175538398', 'Richesse Nabati wafer', 6, 2, 5000, 18, 'item-230718-5235e541f1.jpeg', '2023-03-12 19:04:25', '2023-07-23 11:19:05'),
(25, '8992775001660', 'Gerry Salut', 5, 2, 7000, 21, 'item-230723-9fe88368ae.jpeg', '2023-03-12 19:04:42', '2023-07-23 11:20:36'),
(26, '8998888110114', 'Syrup marjan cocopandan', 2, 5, 25000, 50, 'item-230723-afbd8d1af8.jpeg', '2023-03-25 20:13:12', '2023-08-27 07:36:42'),
(36, '7622300136055', 'oreo strawberry', 5, 2, 7000, 9, 'item-230713-e7e50f0b75.jpeg', '2023-07-13 20:08:44', '2023-07-30 05:15:03'),
(39, '8999918181289', 'A.I.M ROASTED CORN 80G ', 5, 2, 6200, 50, 'item-230827-8864e7f380.jpeg', '2023-08-27 12:14:25', NULL),
(40, '8999918182989', 'A.I.M TOASTY CHEESE 80G', 5, 2, 6500, 50, 'item-230827-42bbce488a.jpeg', '2023-08-27 12:15:53', NULL),
(41, '8996001356364', 'ASTOR SKINNY ROLL VANILA 50G ', 5, 2, 5300, 50, 'item-230827-ff3efd79ee.jpeg', '2023-08-27 12:17:52', NULL),
(42, '8996001356340', 'ASTOR SKINNY ROLL KACANG 50G', 5, 2, 7100, 50, 'item-230827-59c6a0ca53.jpeg', '2023-08-27 12:26:23', NULL),
(43, '8996001356357', 'ASTOR SKINNY ROLL COKELAT 50G ', 5, 2, 6600, 49, 'item-230827-0eb385ec0c.jpeg', '2023-08-27 12:55:14', NULL),
(44, '8992716108892', 'BISKUAT ENERGI 140GR', 5, 2, 20000, 50, 'item-230827-e229b404a6.jpeg', '2023-08-27 13:06:06', NULL),
(45, '8992716109561', 'BISKUAT ENERGI COKLAT 140GR', 5, 2, 20000, 50, 'item-230827-9b36cbcbec.jpeg', '2023-08-27 13:10:02', NULL),
(46, '7622210476067', 'CHIPS AHOY ORIGINAL 84G', 5, 2, 7700, 50, 'item-230827-7e0810f94c.jpeg', '2023-08-27 13:11:58', NULL),
(47, '7622210476043', 'CHIPS AHOY CHOCO DELIGHT 84G ', 5, 2, 15000, 50, 'item-230827-04882289cc.jpeg', '2023-08-27 13:17:11', NULL),
(48, '8992952924461', 'CHO CHO CHOCO STRAW 40G', 5, 2, 7300, 50, 'item-230827-5874ccd5b5.jpeg', '2023-08-27 13:18:45', NULL),
(49, '8992952924669', 'CHO CHO CHOCOLATE VANILLA 40G ', 5, 2, 6000, 54, 'item-230827-1f75a93af4.jpeg', '2023-08-27 13:20:07', NULL),
(50, '8998694120208', 'CHOCO MANIA CHOCOLATE MANIA 90GR', 5, 2, 12500, 50, 'item-230827-142fa7cce1.jpeg', '2023-08-27 14:06:27', NULL),
(51, '8998694120345', 'CHO MANIA RICH CHOCOLATE 90GR', 6, 2, 1500, 59, 'item-230827-1d4d96576d.jpeg', '2023-08-27 16:54:59', NULL),
(52, '8991001242372', 'DELFII FUN TIME MILK VANILA 26G', 6, 2, 1750, 80, 'item-230827-331b24ee17.jpeg', '2023-08-27 16:56:01', NULL),
(53, '8991001004772', 'DELFI FUNTIME CAPPUCINO 26G', 6, 2, 1750, 40, 'item-230827-a81b8a4378.jpeg', '2023-08-27 16:56:51', NULL),
(54, '8991001790071', 'DELFI TWISTER THINS VANILA 20G', 5, 2, 1600, 59, 'item-230827-983082b7ae.jpeg', '2023-08-27 16:58:12', NULL),
(55, '8991001781000', 'DELFI TWISTER THINS CHOCOLATE 20G', 5, 2, 1600, 35, 'item-230827-34058317c3.jpeg', '2023-08-27 17:18:40', NULL),
(56, '8992775311608', 'GERY CHOCOLATOS 13.5G', 5, 2, 700, 40, 'item-230827-af97501332.jpeg', '2023-08-27 17:46:25', NULL),
(57, '089686060775', 'INDOMIE PM GRG PEDAS 80G', 4, 2, 3100, 40, 'item-230827-f9ae53d138.jpeg', '2023-08-27 20:54:27', NULL),
(58, '089686060744', 'INDOMIE PM GRG SPC ', 4, 2, 4200, 49, 'item-230827-b0f93ccc29.jpeg', '2023-08-27 21:02:59', NULL),
(59, '089686060027', 'INDOMIE POP MIE AYAM', 4, 2, 3300, 56, 'item-230827-7cfeb97622.jpeg', '2023-08-27 21:09:28', NULL),
(60, '10089686010012', 'INDOMIE AYAM BAWANG', 4, 2, 3000, 50, 'item-230827-45221696d9.jpeg', '2023-08-27 21:16:24', NULL),
(61, '10089686011279', 'INDOMIE MIE KOCOK BANDUNG 72 G', 4, 2, 3200, 49, 'item-230827-2e0e55c0b3.jpeg', '2023-08-27 21:18:07', NULL),
(62, '089686910308', 'INDOMIE EMPAL GENTONG 74 G', 4, 2, 3400, 45, 'item-230827-02571937a4.jpeg', '2023-08-27 21:21:40', NULL),
(63, '089686010107', 'INDOMIE KALDU AYAM', 4, 2, 2700, 29, 'item-230827-3a7ac5f4da.jpeg', '2023-08-27 21:23:38', NULL),
(64, '0089686010190', 'INDOMIE KARI AYAM', 4, 2, 3100, 47, 'item-230827-f8910f7619.jpeg', '2023-08-27 21:27:26', NULL),
(65, '10089686010043', 'INDOMIE AYAM  SPECIAL', 4, 2, 2900, 40, 'item-230827-1c59fac2b4.jpeg', '2023-08-27 21:36:19', NULL),
(66, '089686010343', 'INDOMIE SOTO MIE', 4, 2, 3000, 40, 'item-230827-b3953c5525.jpeg', '2023-08-27 21:38:34', NULL),
(67, '089686910384', 'INDOMIE SOTO SPC 75G', 4, 2, 2900, 40, 'item-230827-fbf214d60d.jpeg', '2023-08-27 21:40:28', NULL),
(68, '089686043990', 'INDOMIE SOTO LAMONGAN 90G', 4, 2, 2700, 40, 'item-230827-de928cead2.jpeg', '2023-08-27 21:43:12', NULL),
(69, '089686040166', 'INDOMIE KRITING AYAM PANGGANG 90GR', 4, 2, 4300, 50, 'item-230827-1d7877101f.jpeg', '2023-08-27 21:53:48', NULL),
(70, '089686041767', 'INDOMIE GORENG AYAM PANGGANG JUMBO', 4, 2, 4200, 40, 'item-230827-d04bafbf4f.jpeg', '2023-08-27 22:05:05', NULL),
(71, '089686060065', 'POP MIE AYAM BAWANG', 4, 2, 5000, 50, 'item-230827-b5e6f70745.jpeg', '2023-08-27 22:17:27', NULL),
(72, '0089686060461', 'INDOMIE POP MIE KARI AYAM 60', 4, 2, 5000, 49, 'item-230827-eb8a7f5b5d.jpeg', '2023-08-27 22:21:20', NULL),
(73, '089686060362', 'INDOMIE POP MIE SOTO AYAM 60', 4, 2, 5000, 51, 'item-230827-47d5d3f660.jpeg', '2023-08-27 22:23:50', NULL),
(74, '8801073110502', 'SAMYANG HOT CHICKEN RAMEN 140G', 4, 2, 15000, 69, 'item-230827-11a5698330.jpeg', '2023-08-27 22:27:07', NULL),
(75, '089686014280', 'SUPERMIE AYAM BAWANG', 4, 2, 3000, 39, 'item-230827-be336714ae.jpeg', '2023-08-27 23:14:13', NULL),
(76, '089686017823', 'SARIMI BASO SAPI 77G', 4, 2, 3000, 70, 'item-230827-b75614ac01.jpeg', '2023-08-27 23:16:59', NULL),
(77, '089686017854', 'SARIMI TONGSENG AYAM 75G', 4, 2, 3000, 50, 'item-230827-9c5c90f643.jpeg', '2023-08-27 23:19:43', NULL),
(78, '089686017830', 'SARIMI GORENG AYAM KREMES 88G', 4, 2, 4000, 50, 'item-230827-7c7e8813f2.jpeg', '2023-08-27 23:21:05', NULL),
(79, '089686017748', 'SARIMI ISI 2 MI GORENGG RASA AYAMK REMES 125G', 4, 2, 4000, 50, 'item-230827-2537ba4c82.jpeg', '2023-08-28 00:27:23', NULL),
(80, '089686048704', 'SARIMI  GORENG RASA AYAM KECAP 126G ISI 2', 4, 2, 4000, 50, 'item-230827-efd52d1174.jpeg', '2023-08-28 00:28:33', NULL),
(81, '8998866200813', 'SEDAAP MIE GORENG CUP 85 GR', 4, 2, 5500, 70, 'item-230827-acbf1906a8.jpeg', '2023-08-28 00:30:29', NULL),
(82, '8998866200844', 'SEDAAP MIE CUP MI KUAH RASA KARI SPC 85G', 4, 2, 5000, 55, 'item-230827-bf759be7fa.jpeg', '2023-08-28 00:31:54', NULL),
(83, '8998866200837', 'SEDAAP MIE SOTO CUP 85 GR', 4, 2, 5000, 50, 'item-230827-d2ce31dce1.jpeg', '2023-08-28 00:32:45', NULL),
(84, '8998866200851', 'SEDAAP MIE CUP BASO SPESIAL  85 GR', 4, 2, 4500, 44, 'item-230827-dc72c127f5.jpeg', '2023-08-28 00:33:39', NULL),
(85, '8998866200578', 'SEDAAP MIE KARI SPECIAL 75G', 4, 2, 3000, 87, 'item-230827-e0a5d446f0.jpeg', '2023-08-28 00:34:47', NULL),
(86, '8998866200929', 'SEDAAP MIE BASO SPESIAL 77GR', 4, 2, 2800, 49, 'item-230827-9df3306c6a.jpeg', '2023-08-28 00:35:33', NULL),
(87, '8998866201346', 'SEDAAP MIE WHITE CURRY 81G ', 4, 2, 2800, 65, 'item-230827-9b34274aaf.jpeg', '2023-08-28 00:36:37', NULL),
(88, '8998866200325', 'SEDAAP MIE SOTO 75GR', 4, 2, 3200, 60, 'item-230827-b8eebd77dd.jpeg', '2023-08-28 00:40:38', NULL),
(89, '8998866200332', 'SEDAAP MIE KARI AYAM 72GR', 4, 2, 3000, 76, 'item-230827-586e949198.jpeg', '2023-08-28 00:41:50', NULL),
(90, '8998866200318', 'SEDAAP MIE AYAM BAWANG 70GR', 4, 2, 3000, 59, 'item-230827-428551752c.jpeg', '2023-08-28 00:42:33', NULL),
(91, '8998866200899', 'SUKSESS ISI 2 AYAM BAWANG 112G', 4, 2, 4200, 67, 'item-230827-725a2968a8.jpeg', '2023-08-28 00:45:56', NULL),
(92, '8998866200912', 'SUKSESS ISI 2 KARI AYAM 112G', 4, 2, 4500, 49, 'item-230827-8409b5185d.jpeg', '2023-08-28 00:46:48', NULL),
(93, '8998866200882', 'SUKSESS ISI 2 GORENG AYAM KREMES 133G', 4, 2, 4000, 44, 'item-230827-c0a8cdca95.jpeg', '2023-08-28 00:47:43', NULL),
(94, '8992753033720', 'FRISIAN FLAG UHT COKELAT 225 ML', 3, 5, 6500, 49, NULL, '2023-08-28 01:20:38', NULL),
(95, '8992753033737', 'FRISIAN FLAG UHT STROBERI 225 ML', 3, 5, 6500, 50, NULL, '2023-08-28 01:20:38', NULL),
(96, '8992753033744', 'FRISIAN FLAG UHT FULL CREAM 225 ML', 3, 5, 6500, 50, NULL, '2023-08-28 01:20:38', NULL),
(97, '8998009010231', 'ULTRA CHOCO SLIM 250ML', 3, 5, 6000, 50, NULL, '2023-08-28 01:20:38', NULL),
(98, '8998009010248', 'ULTRA STRAW SLIM 250ML', 3, 5, 6000, 50, NULL, '2023-08-28 01:20:38', NULL),
(99, '8998009010569', 'ULTRA CHOCO SLIM 200ML', 3, 5, 5000, 50, NULL, '2023-08-28 01:20:38', NULL),
(100, '8998009010071', 'ULTRA STRAW SLIM 200ML', 3, 5, 5000, 50, NULL, '2023-08-28 01:20:38', NULL),
(101, '8998009010224', 'ULTRA PLAIN SLIM 250ML', 3, 5, 6000, 49, NULL, '2023-08-28 01:20:38', NULL),
(102, '8998009010255', 'ULTRA MOCCA SLIM 250ML', 3, 5, 6000, 50, NULL, '2023-08-28 01:20:38', NULL),
(103, '8998009011214', 'ULTRA LOWFAT CHOCOLATE 250 ML', 3, 5, 6000, 50, NULL, '2023-08-28 01:20:38', NULL),
(104, '8998009010262', 'ULTRA LOWFAT SLIM 250ML', 3, 5, 6000, 50, NULL, '2023-08-28 01:20:38', NULL),
(105, '8998009010552', 'ULTRA PLAIN SLIM 200ML', 3, 5, 5000, 50, NULL, '2023-08-28 01:20:38', NULL),
(106, '8998009010583', 'ULTRA MOCCA SLIM 200ML', 3, 5, 5000, 50, NULL, '2023-08-28 01:20:38', NULL),
(107, '8998009011344', 'ULTRA LOWFAT CHOCOLATE 200 ML', 3, 5, 5000, 50, NULL, '2023-08-28 01:20:38', NULL),
(108, '8998009010682', 'ULTRA LOWFAT SLIM 200 ML', 3, 5, 5000, 50, NULL, '2023-08-28 01:20:38', NULL),
(109, '9556001051509', 'MILO RTD 240 ML', 3, 5, 8000, 50, NULL, '2023-08-28 01:20:38', NULL),
(110, '8992628020145', 'BIMOLI BOTOL 2000 ML', 24, 5, 40000, 50, NULL, '2023-08-28 08:44:23', NULL),
(111, '8992628022149', 'BIMOLI BOTOL 1000 ML', 24, 5, 25000, 50, NULL, '2023-08-28 08:44:23', NULL),
(112, '8992628026147', 'BIMOLI BOTOL 250 ML', 24, 5, 8000, 50, NULL, '2023-08-28 08:44:23', NULL),
(113, '8992628024143', 'BIMOLI BOTOL 620 ML', 24, 5, 15000, 50, NULL, '2023-08-28 08:44:23', NULL),
(114, '8992628022156', 'BIMOLI POUCH 1 LT', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(115, '8992628020152', 'BIMOLI POUCH 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(116, '8997035780026', 'CEMARA POUCH 2L ', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(117, '8992826111058', 'FILMA BOTOL 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(118, '8992826111034', 'FILMA BOTOL 1000 ML', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(119, '8992826111027', 'FILMA BOTOL 500 ML', 24, 5, 13000, 50, NULL, '2023-08-28 08:44:23', NULL),
(120, '8992826245005', 'FILMA POUCH 500 ML', 24, 5, 13000, 50, NULL, '2023-08-28 08:44:23', NULL),
(121, '8992826111072', 'FILMA POUCH 1000 ML', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(122, '8992826111089', 'FILMA POUCH 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(123, '8993496106979', 'FORTUNE  PILLOW PACK 250 ML', 24, 5, 4000, 50, NULL, '2023-08-28 08:44:23', NULL),
(124, '8993496106986', 'FORTUNE  PILLOW PACK 500 ML', 24, 5, 13000, 50, NULL, '2023-08-28 08:44:23', NULL),
(125, '8998225800012', 'FORTUNE PILLOW PACK 1 LT ', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(126, '4012030', 'FORTUNE POUCH 1L', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(127, '8998225800043', 'FORTUNE POUCH 2 LT', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(128, '4010302', 'FORVITA POUCH 1.8 LT', 24, 5, 34000, 47, NULL, '2023-08-28 08:44:23', NULL),
(129, '8992826112017', 'KUNCI MAS POUCH 225 ML', 24, 5, 5000, 49, NULL, '2023-08-28 08:44:23', NULL),
(130, '8992826112093', 'KUNCI MAS POUCH 1000 ML', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(131, '8992826112215', 'KUNCI MAS POUCH 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(132, '8993093664780', 'ROSE BRAND CUP 220ML', 24, 5, 4000, 50, NULL, '2023-08-28 08:44:23', NULL),
(133, '8993093664711', 'ROSE BRAND POUCH 2L ', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(134, '8993496103015', 'SANIA BOTOL 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(135, '8993496104012', 'SANIA BOTOL 1000 ML', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(136, '8993496001083', 'SANIA POUCH 1 LT', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(137, '8993496001076', 'SANIA POUCH 2 LT', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(138, '8994239181888', 'SARI MURNI POUCH 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(139, '8998866501033', 'SEDAAP POUCH 2000ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(140, '8993496107068', 'SOVIA POUCH 2 L ', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(141, '4012054', 'SUNCO BOTOL 2L ', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(142, '4012061', 'SUNCO BOTOL 1L ', 24, 5, 20000, 40, NULL, '2023-08-28 08:44:23', NULL),
(143, '4012047', 'SUNCO POUCH 1L', 24, 5, 20000, 49, NULL, '2023-08-28 08:44:23', NULL),
(144, '8993379500238', 'SUNCO POUCH 2LT', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(145, '8992946122002', 'TROPICAL BOTOL 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL),
(146, '8992946121005', 'TROPICAL BOTOL 1000 ML', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(147, '8992946121012', 'TROPICAL POUCH 1000 ML', 24, 5, 20000, 50, NULL, '2023-08-28 08:44:23', NULL),
(148, '8992946121029', 'TROPICAL POUCH 2000 ML', 24, 5, 37000, 50, NULL, '2023-08-28 08:44:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `created`, `updated`) VALUES
(2, 'Gram', '2023-03-07 23:51:11', '2023-07-18 04:27:42'),
(5, 'ML', '2023-04-12 23:33:23', '2023-07-18 04:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(2, 'PT. Indofood CBP Sukses Makmur, Tbk', '02157958822', 'Sudirman Plaza, Indofood Tower, Jl. Jend. Sudirman Kav. 76-78, Jakarta', 'Perusahaan Produksi Makanan', '2023-03-06 19:14:35', '2023-08-27 07:21:08'),
(4, 'PT. Wings Group', '0214602696', 'Jl. Raya Narogong Km. 16,5, Cileungsi, Bogor', 'Produksi food non-food', '2023-03-07 13:32:15', '2023-08-27 07:21:15'),
(5, 'PT. Perusahaan Industri Ceres', '0225207421', 'Jl. Raya Dayeuhkolot No.94, Pasawahan, Dayeuhkolot, Bandung Regency, West Java', 'Produsen makanan', '2023-07-13 19:33:07', '2023-08-27 04:28:12'),
(6, 'PT. Panjunan', '081234567899', 'bandung', 'distributor makanan', '2023-07-13 20:03:06', '2023-08-27 07:21:26'),
(7, 'PT. Mondelēz Indonesia', '0218935340', 'Jl. Jababeka VII, Wangunharja, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat', 'produsen makanan', '2023-07-20 11:36:40', '2023-08-27 07:21:34'),
(9, 'PT. Garudafood Putra Putri Jaya Tbk,', '02172897777', 'Jakarta', 'produsen makanan dan minuman', '2023-07-24 10:25:10', '2023-08-27 07:21:45'),
(12, 'PT. ABC', '08123445567', 'Jakarta', 'PT.ABC Food Indonesia', '2023-08-05 09:09:51', '2023-08-27 07:22:37'),
(18, 'PT. Mayora Indah, Tbk', '02242832923', 'Jl. Jend. Sudirman Kav. 76-78, Jakarta ', 'Makanan dan Minuman', '2023-08-26 16:33:30', '2023-08-27 07:22:46'),
(20, 'PT. Indofood CBP Sukses Makmur ', '0226809803', 'jl. Raya Caringin No.353, bandung', 'Makanan dan Minuman ', '2023-08-26 16:38:22', '2023-08-27 07:22:56'),
(21, 'PT. Garudafood ', '0227783121', 'Jl. Rancaekek No.Km, RW.5, Mangunarga, Kec. Cimanggung, Kabupaten Sumedang,', 'Makanan dan Minuman', '2023-08-26 16:40:19', NULL),
(22, 'PT. Siantar Top', '0218251010', 'Jl. Cipendawa Lama No.7, RT.04/RW.07, Bojong Menteng, Kec. Rawalumbu, Kota Bekasi', 'Makanan dan Minuman', '2023-08-26 16:41:57', NULL),
(23, 'PT. Tiga Pilar Sejahtera Food', '0212521698', 'Sampoerna Strategic Square North Tower, RT.3/RW.4, Karet Semanggi, Setiabudi, South Jakarta City', 'Makanan dan Minuman', '2023-08-26 16:43:07', NULL),
(24, 'PT. Nutrifood Indonesia', '0218240257', 'Jl. Raya Ciawi Prapatan No.280A, RT.01/RW.03, Sindangsari, Kec. Bogor Tim., Kota Bogor', 'Makanan dan Minuman', '2023-08-26 16:44:53', NULL),
(25, 'PT. Wilmar Cahaya Indonesia', '02189830004', 'Kawasan Industri Jababeka Tahap 2 Jalan Industri Selatan 3 Blok GG No. 1, Pasirsari, Cikarang ', 'Perusahaan minyak goreng dengan brand Siip, Sovia, Mahkota, Ol\'eis, Bukit Zaitun dan Goldie.', '2023-08-26 16:46:40', NULL),
(26, 'PT. Aneka Indo Makmur', '0318913318', 'JL Karang Bong No.2, Pucang, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur ', 'pelaku industri biskuit & snack di Indonesia', '2023-08-27 10:13:13', NULL),
(27, 'PT. Arnott\'s Indonesia', '0218854136', 'Jl. Wahab Affan No.8, RT.002/RW.002, Medan Satria, Kecamatan Medan Satria, Kota Bekasi', 'produsen biskuit ', '2023-08-27 10:13:40', '2023-08-27 07:22:30'),
(28, 'PT. Unilever Indonesia Tbk', '0225408222', 'Jl. Soekarno Hatta No.364, Kb. Lega, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat', 'manufaktur, pemasaran dan distribusi barang konsumsi termasuk sabun, deterjen, margarin, makanan berbasis susu, es krim, produk kosmetik, minuman berbasis teh dan jus buah.', '2023-08-27 10:14:24', NULL),
(29, 'PT. Marga Nusantara Jaya', '0227563495', ' Jl. Soekarno Hatta No.454, Batununggal, Kec. Bandung Kidul, Kota Bandung', 'produsen makanan', '2023-08-27 10:15:31', NULL),
(30, 'PT. GLICO INDONESIA', '02150845450', 'Cibis Nine, 9th Floor, Unit A-E, Jl. TB Simatupang Kel No.2, RT.1/RW.5, Cilandak Tim., Ps. Minggu, Kota Jakarta Selatan', 'produsen makanan', '2023-08-27 10:15:55', NULL),
(31, 'PT. Meiji Food Indonesia', '02189109777', 'Karawang International Industrial City (KIIC, Jl. Maligi III No.Desa, Wadas, Telukjambe Timur, Karawang', 'produsen makanan', '2023-08-27 10:16:38', NULL),
(32, 'PT. Ultra Prima Abadi', '0267435133', 'Walahar, Kec. Klari, Karawang, Jawa Barat ', 'produsen makanan', '2023-08-27 10:17:11', NULL),
(33, 'PT. Mega Global Food Industri', '0317590008', 'Jalan Raya Tenaru Industri No, Jl. Raya Driyorejo, RT.02/RW.01, Dusun Gading, Cangkir, Kec. Driyorejo, Kabupaten Gresik', 'produsen makanan', '2023-08-27 10:17:39', NULL),
(34, 'PT. Kaldu Sari Nabati Indonesia', '0226000666', 'Jl. Soekarno Hatta No.112, Babakan Ciparay, Kec. Babakan Ciparay, Kota Bandung, Jawa Barat', 'industri makanan dan minuman ringan', '2023-08-27 10:19:25', NULL),
(35, 'PT. Serena Indopangan Industri', '0218753950', ' Jl. H. Moh. Ashari No.35, Cibinong, Kec. Cibinong, Kabupaten Bogor,', 'produsen makanan', '2023-08-27 10:23:59', NULL),
(36, 'PT. Nirwana Lestari', '0218204054', 'Jl. Siliwangi No.KM7, RT.005/RW.001, Bojong Menteng, Kec. Rawalumbu, Kota Bks, Jawa Barat 17117', 'distributor makanan', '2023-08-27 12:05:57', NULL),
(37, 'LAIN LAIN', '0', '0', NULL, '2023-08-27 12:28:51', NULL),
(38, 'PT. Lasallefood Indonesia', '0218710303', 'Jl. Raya Jakarta-Bogor No.KM 31, Mekarsari, Kec. Cimanggis, Kota Depok', 'produsen makanan', '2023-08-27 12:35:31', NULL),
(39, 'PT. Dolphin Food & Beverages Industry', '0215902280', 'Jl. Industri Raya XIII Blok AE Kav. 4-7, Bunder, Kec. Cikupa, Kabupaten Tangerang, Banten', 'produsen makanan', '2023-08-27 17:01:37', NULL),
(40, 'PT Frisian Flag Indonesia', '0218410945', 'GIIC Block BB No, RW.2, Sukamahi, Central Cikarang', 'perusahaan yang memproduksi susu untuk anak dan keluarga salah satunya susu Bendera', '2023-08-28 01:27:42', NULL),
(41, 'PT Ultra Jaya Milk Industry And Trading Company, Tbk', '02286700700', 'Jalan Raya Cimareme No. 131, Padalarang, Gadobangkong, Ngamprah, Gadobangkong, Kec. Ngamprah, Bandung, Jawa Barat ', 'Produsen susu cair segar, minuman ringan, dan juga beberapa minuman kesehatan yang diproduksi dengan UHT Teknologi dan dikemas secara aseptik.', '2023-08-28 01:28:46', NULL),
(42, 'PT Nestle Indonesia', '02678630353', 'Jl. Surya Pratama Kav. I 37-39 ABC Kawasan Industri Surya Cipta, Kutanegara, Ciampel, Karawang', 'produsen makanan dan minuman', '2023-08-28 01:29:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_cart`
--

CREATE TABLE `t_cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(10) NOT NULL,
  `discount_item` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_cart`
--

INSERT INTO `t_cart` (`cart_id`, `item_id`, `price`, `qty`, `discount_item`, `total`, `user_id`) VALUES
(1, 128, 34000, 1, 0, 34000, 1),
(2, 143, 20000, 1, 0, 20000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_sale`
--

CREATE TABLE `t_sale` (
  `sale_id` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_sale`
--

INSERT INTO `t_sale` (`sale_id`, `invoice`, `customer_id`, `total_price`, `discount`, `final_price`, `cash`, `remaining`, `note`, `date`, `user_id`, `created`) VALUES
(20, 'MP2303260001', NULL, 2000, 0, 2000, 2000, 0, 'lunas', '2023-03-26', 1, '2023-03-26 13:28:31'),
(23, 'MP2303260002', NULL, 14000, 0, 14000, 15000, 1000, 'LUNAS', '2023-03-26', 1, '2023-03-26 13:37:23'),
(25, 'MP2303260004', 4, 40000, 0, 40000, 50000, 10000, 'lunas', '2023-03-26', 1, '2023-03-26 13:55:41'),
(26, 'MP2304130001', NULL, 5700, 0, 5700, 6000, 300, 'Lunas', '2023-04-13', 1, '2023-04-13 09:20:42'),
(27, 'MP2307050001', NULL, 4700, 0, 4700, 5000, 300, 'lunas', '2023-07-05', 1, '2023-07-05 11:38:37'),
(28, 'MP2307130001', NULL, 4000, 0, 4000, 5000, 1000, '', '2023-07-13', 1, '2023-07-13 13:21:47'),
(29, 'MP2307130002', 2, 6000, 0, 6000, 7000, 1000, '', '2023-07-13', 1, '2023-07-13 13:23:13'),
(30, 'MP2307130003', 8, 7000, 0, 7000, 10000, 3000, '', '2023-07-13', 2, '2023-07-13 13:24:18'),
(31, 'MP2307130004', NULL, 5400, 0, 5400, 6000, 600, '', '2023-07-13', 1, '2023-07-13 15:40:46'),
(32, 'MP2307130005', NULL, 12300, 0, 12300, 15000, 2700, '', '2023-07-13', 1, '2023-07-13 19:35:08'),
(33, 'MP2307130006', NULL, 29700, 0, 29700, 30000, 300, 'lunas', '2023-07-13', 13, '2023-07-13 20:15:55'),
(34, 'MP2307130007', NULL, 23400, 0, 23400, 300000, 276600, 'lunas', '2023-07-13', 13, '2023-07-13 20:16:26'),
(35, 'MP2307180001', NULL, 21000, 1000, 20000, 50000, 30000, 'Lunas', '2023-07-18', 1, '2023-07-18 11:39:48'),
(36, 'MP2307200001', NULL, 4700, 700, 4000, 5000, 1000, 'Lunas', '2023-07-20', 2, '2023-07-20 11:17:28'),
(37, 'MP2307200002', 2, 4700, 700, 4000, 5000, 1000, 'Lunas', '2023-07-20', 2, '2023-07-20 11:20:39'),
(38, 'MP2307200003', 2, 4700, 700, 4000, 5000, 1000, 'Lunas', '2023-07-20', 2, '2023-07-20 11:23:06'),
(39, 'MP2307200004', 2, 4700, 700, 4000, 5000, 1000, 'Lunas', '2023-07-20', 2, '2023-07-20 11:24:28'),
(40, 'MP2307210001', NULL, 40000, 10000, 30000, 50000, 20000, 'lunas', '2023-07-21', 2, '2023-07-21 17:53:49'),
(41, 'MP2307240001', NULL, 9600, 0, 9600, 10000, 400, '', '2023-07-24', 1, '2023-07-24 11:48:26'),
(42, 'MP2307290001', NULL, 12000, 2000, 10000, 20000, 10000, 'LUNAS', '2023-07-29', 2, '2023-07-29 11:58:47'),
(43, 'MP2307300001', NULL, 11000, 1000, 10000, 20000, 10000, 'lunas', '2023-07-30', 1, '2023-07-30 10:16:15'),
(44, 'MP2308050001', 12, 160000, 10000, 150000, 200000, 50000, 'lunas', '2023-08-05', 15, '2023-08-05 09:16:09'),
(45, 'MP2308050002', 12, 9400, 1000, 8400, 10000, 1600, 'lunas', '2023-08-05', 2, '2023-08-05 16:27:39'),
(46, 'MP2308050003', NULL, 80000, 0, 80000, 100000, 20000, '', '2023-08-05', 1, '2023-08-05 20:02:42'),
(47, 'MP2308280001', 1, 39300, 0, 39300, 50000, 10700, 'lunas', '2023-07-01', 2, '2023-08-28 10:27:08'),
(48, 'MP2308280002', 2, 11500, 0, 11500, 20000, 8500, 'lunas', '2023-07-02', 2, '2023-08-28 10:28:56'),
(49, 'MP2308280003', 3, 18600, 0, 18600, 20000, 1400, 'lunas', '2023-07-03', 2, '2023-08-28 10:30:03'),
(50, 'MP2308280004', 4, 15800, 0, 15800, 20000, 4200, '', '2023-07-04', 2, '2023-08-28 10:30:47'),
(51, 'MP2308280005', 7, 37000, 0, 37000, 50000, 13000, '', '2023-07-05', 2, '2023-08-28 10:36:11'),
(52, 'MP2308280006', 8, 22000, 0, 22000, 30000, 8000, '', '2023-07-06', 2, '2023-08-28 10:42:26'),
(53, 'MP2308280007', 9, 22600, 2000, 20600, 25000, 4400, 'lunas', '2023-07-06', 2, '2023-08-28 10:44:14'),
(54, 'MP2308280008', 1, 14300, 10000, 4300, 20000, 15700, 'lunas', '2023-08-28', 1, '2023-08-28 13:42:42'),
(55, 'MP2308280009', NULL, 34000, 0, 34000, 50000, 16000, 'lunas', '2023-08-28', 2, '2023-08-28 14:11:59');

--
-- Triggers `t_sale`
--
DELIMITER $$
CREATE TRIGGER `del_detail` AFTER DELETE ON `t_sale` FOR EACH ROW BEGIN
	DELETE FROM t_sale_detail
    WHERE sale_id = OLD.sale_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `t_sale_detail`
--

CREATE TABLE `t_sale_detail` (
  `detail_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(10) NOT NULL,
  `discount_item` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_sale_detail`
--

INSERT INTO `t_sale_detail` (`detail_id`, `sale_id`, `item_id`, `price`, `qty`, `discount_item`, `total`) VALUES
(22, 18, 15, 7000, 1, 0, 7000),
(23, 19, 15, 7000, 1, 0, 7000),
(24, 20, 16, 2000, 1, 0, 2000),
(28, 23, 15, 7000, 2, 0, 14000),
(31, 26, 14, 3000, 1, 0, 3000),
(32, 26, 23, 2700, 1, 0, 2700),
(33, 27, 13, 2700, 1, 0, 2700),
(34, 27, 16, 2000, 1, 0, 2000),
(35, 28, 16, 2000, 2, 0, 4000),
(36, 29, 14, 3000, 2, 0, 6000),
(37, 30, 15, 7000, 1, 0, 7000),
(38, 31, 13, 2700, 2, 0, 5400),
(39, 32, 23, 2700, 1, 0, 2700),
(40, 32, 15, 7000, 1, 0, 7000),
(41, 32, 20, 2600, 1, 0, 2600),
(42, 33, 36, 9000, 3, 0, 27000),
(43, 33, 13, 2700, 1, 0, 2700),
(44, 34, 13, 2700, 2, 0, 5400),
(45, 34, 36, 9000, 2, 0, 18000),
(46, 35, 36, 9000, 2, 0, 18000),
(47, 35, 14, 3000, 1, 0, 3000),
(48, 36, 13, 2700, 1, 0, 2700),
(49, 36, 22, 2000, 1, 0, 2000),
(50, 37, 13, 2700, 1, 0, 2700),
(51, 37, 22, 2000, 1, 0, 2000),
(52, 38, 13, 2700, 1, 0, 2700),
(53, 38, 22, 2000, 1, 0, 2000),
(54, 39, 13, 2700, 1, 0, 2700),
(55, 39, 22, 2000, 1, 0, 2000),
(57, 41, 20, 2600, 1, 0, 2600),
(58, 41, 16, 7000, 1, 0, 7000),
(59, 42, 36, 9000, 1, 0, 9000),
(60, 42, 14, 3000, 1, 0, 3000),
(61, 43, 14, 4000, 1, 0, 4000),
(62, 43, 36, 7000, 1, 0, 7000),
(64, 45, 13, 2700, 2, 0, 5400),
(65, 45, 22, 2000, 2, 0, 4000),
(67, 47, 128, 34000, 1, 0, 34000),
(68, 47, 63, 2700, 1, 0, 2700),
(69, 47, 20, 2600, 1, 0, 2600),
(70, 48, 94, 6500, 1, 0, 6500),
(71, 48, 129, 5000, 1, 0, 5000),
(72, 49, 54, 1600, 1, 0, 1600),
(73, 49, 22, 2000, 1, 0, 2000),
(74, 49, 74, 15000, 1, 0, 15000),
(75, 50, 61, 3200, 1, 0, 3200),
(76, 50, 101, 6000, 1, 0, 6000),
(77, 50, 43, 6600, 1, 0, 6600),
(78, 51, 128, 34000, 1, 0, 34000),
(79, 51, 75, 3000, 1, 0, 3000),
(80, 52, 55, 1600, 5, 0, 8000),
(81, 52, 15, 7000, 2, 0, 14000),
(82, 53, 143, 20000, 1, 0, 20000),
(83, 53, 20, 2600, 1, 0, 2600),
(84, 54, 64, 3100, 3, 0, 9300),
(85, 54, 72, 5000, 1, 0, 5000),
(86, 55, 128, 34000, 1, 0, 34000);

--
-- Triggers `t_sale_detail`
--
DELIMITER $$
CREATE TRIGGER `stock_min` AFTER INSERT ON `t_sale_detail` FOR EACH ROW BEGIN
	UPDATE p_item SET stock = stock - NEW.qty
    WHERE item_id = NEW.item_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stock_return` AFTER DELETE ON `t_sale_detail` FOR EACH ROW BEGIN
	UPDATE p_item SET stock = stock + OLD.qty
    WHERE item_id = OLD.item_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `t_stock`
--

CREATE TABLE `t_stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` varchar(200) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_stock`
--

INSERT INTO `t_stock` (`stock_id`, `item_id`, `type`, `detail`, `supplier_id`, `qty`, `date`, `created`, `user_id`) VALUES
(19, 13, 'in', 'Tambahan', 2, 20, '2023-07-20', '2023-07-20 11:19:58', 2),
(20, 36, 'in', 'Tambahan', 7, 20, '2023-07-20', '2023-07-20 11:37:06', 2),
(22, 15, 'in', 'Tambahan', 6, 20, '2023-07-20', '2023-07-20 11:37:41', 2),
(23, 13, 'in', 'Tambahan', 2, 20, '2023-07-20', '2023-07-20 11:37:59', 2),
(25, 22, 'in', 'Bonus', 6, 13, '2023-07-20', '2023-07-20 11:44:08', 2),
(35, 24, 'in', 'Tambahan', 6, 20, '2023-07-23', '2023-07-23 16:17:58', 1),
(36, 23, 'out', 'hilang', NULL, 2, '2023-07-23', '2023-07-23 16:37:17', 1),
(39, 20, 'in', 'tambah', 6, 2, '2023-08-05', '2023-08-05 16:29:09', 2),
(40, 14, 'out', 'expired', NULL, 1, '2023-08-05', '2023-08-05 16:29:47', 2),
(41, 39, 'in', 'TAMBAH', 18, 50, '2023-08-27', '2023-08-27 12:18:57', 1),
(42, 40, 'in', 'TAMBAH', 18, 50, '2023-08-27', '2023-08-27 12:19:15', 1),
(43, 41, 'in', 'TAMBAH', 18, 50, '2023-08-27', '2023-08-27 12:20:56', 1),
(44, 42, 'in', 'TAMBAH', 18, 50, '2023-08-27', '2023-08-27 12:27:02', 1),
(45, 26, 'in', 'TAMBAHAN', 38, 50, '2023-08-27', '2023-08-27 12:36:27', 1),
(46, 43, 'in', 'TAMBAH', 18, 50, '2023-08-27', '2023-08-27 13:06:38', 1),
(47, 44, 'in', 'TAMBAH', 7, 50, '2023-08-27', '2023-08-27 13:07:52', 1),
(48, 45, 'in', 'TAMBAH', 7, 50, '2023-08-27', '2023-08-27 13:10:31', 1),
(49, 46, 'in', 'TAMBAH', 7, 50, '2023-08-27', '2023-08-27 13:12:25', 1),
(50, 47, 'in', 'TAMBAHAN', 7, 50, '2023-08-27', '2023-08-27 13:17:35', 1),
(51, 48, 'in', 'TAMBAHAN', 7, 50, '2023-08-27', '2023-08-27 13:19:10', 1),
(52, 50, 'in', 'TAMBAHAN', 29, 50, '2023-08-27', '2023-08-27 14:07:07', 1),
(53, 53, 'in', 'TAMBAHAN', 5, 40, '2023-08-27', '2023-08-27 16:59:35', 1),
(54, 52, 'in', 'TAMBAHAN', 5, 80, '2023-08-27', '2023-08-27 16:59:50', 1),
(55, 54, 'in', 'TAMBAH', 5, 60, '2023-08-27', '2023-08-27 17:00:06', 1),
(56, 49, 'in', 'TAMBAHAN', 39, 54, '2023-08-27', '2023-08-27 17:02:24', 1),
(57, 51, 'in', 'TAMBAHAN', 29, 59, '2023-08-27', '2023-08-27 17:03:44', 1),
(58, 20, 'in', 'TAMBAHAN', 2, 30, '2023-08-27', '2023-08-27 17:16:42', 1),
(59, 55, 'in', 'TAMBAHAN', 5, 40, '2023-08-27', '2023-08-27 17:19:18', 1),
(60, 56, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 20:55:08', 1),
(61, 57, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 20:55:32', 1),
(62, 63, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 21:54:38', 1),
(63, 64, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-27 21:56:29', 1),
(64, 66, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 21:57:49', 1),
(65, 69, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-27 21:58:07', 1),
(66, 68, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 21:58:25', 1),
(67, 59, 'in', 'TAMBAHAN', 2, 56, '2023-08-27', '2023-08-27 21:58:47', 1),
(68, 58, 'in', 'TAMBAHAN', 2, 49, '2023-08-27', '2023-08-27 21:59:18', 1),
(69, 62, 'in', 'TAMBAHAN', 2, 45, '2023-08-27', '2023-08-27 21:59:36', 1),
(70, 67, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 22:00:01', 1),
(71, 60, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-27 22:00:23', 1),
(72, 65, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 22:00:39', 1),
(73, 61, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-27 22:01:00', 1),
(74, 70, 'in', 'TAMBAHAN', 2, 40, '2023-08-27', '2023-08-27 23:11:42', 1),
(75, 71, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-27 23:11:56', 1),
(76, 73, 'in', 'TAMBAHAN', 2, 51, '2023-08-27', '2023-08-27 23:12:10', 1),
(77, 72, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-27 23:12:27', 1),
(78, 74, 'in', 'TAMBAHAN', 2, 70, '2023-08-27', '2023-08-27 23:12:38', 1),
(79, 75, 'in', 'TAMBAHAN', 4, 40, '2023-08-27', '2023-08-28 00:49:13', 1),
(80, 79, 'in', 'TAMBAHAN', 4, 50, '2023-08-27', '2023-08-28 00:49:25', 1),
(81, 76, 'in', 'TAMBAHAN', 2, 70, '2023-08-27', '2023-08-28 00:49:41', 1),
(82, 78, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-28 00:49:53', 1),
(83, 77, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-28 00:50:08', 1),
(84, 80, 'in', 'TAMBAHAN', 2, 50, '2023-08-27', '2023-08-28 00:50:18', 1),
(85, 90, 'in', 'TAMBAHAN', 4, 59, '2023-08-27', '2023-08-28 00:50:33', 1),
(86, 88, 'in', 'TAMBAHAN', 4, 60, '2023-08-27', '2023-08-28 00:50:47', 1),
(87, 89, 'in', 'TAMBAHAN', 4, 76, '2023-08-27', '2023-08-28 00:50:58', 1),
(88, 85, 'in', 'TAMBAHAN', 4, 87, '2023-08-27', '2023-08-28 00:51:12', 1),
(89, 81, 'in', 'TAMBAHAN', 4, 70, '2023-08-27', '2023-08-28 00:51:23', 1),
(90, 83, 'in', 'TAMBAHAN', 4, 50, '2023-08-27', '2023-08-28 00:51:33', 1),
(91, 82, 'in', 'TAMBAHAN', 4, 55, '2023-08-27', '2023-08-28 00:51:46', 1),
(92, 84, 'in', 'TAMBAHAN', 4, 44, '2023-08-27', '2023-08-28 00:51:57', 1),
(93, 93, 'in', 'TAMBAHAN', 4, 44, '2023-08-27', '2023-08-28 00:52:21', 1),
(94, 91, 'in', 'TAMBAHAN', 4, 67, '2023-08-27', '2023-08-28 00:52:33', 1),
(95, 92, 'in', 'TAMBAHAN', 4, 49, '2023-08-27', '2023-08-28 00:52:43', 1),
(96, 86, 'in', 'TAMBAHAN', 4, 49, '2023-08-27', '2023-08-28 00:52:53', 1),
(97, 87, 'in', 'TAMBAHAN', 4, 65, '2023-08-27', '2023-08-28 00:53:03', 1),
(98, 63, 'out', 'HILANG', NULL, 10, '2023-08-27', '2023-08-28 00:57:45', 1),
(99, 13, 'in', 'Tambah', 2, 2, '2023-08-28', '2023-08-28 13:44:21', 1),
(100, 142, 'out', 'Expired', NULL, 10, '2023-08-28', '2023-08-28 13:45:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:admin, 2:kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Budiman', 'Bandung', 1),
(2, 'kasir', '874c0ac75f323057fe3b7fb3f5a8a41df2b94b1d', 'Steven', 'Jakarta', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_item`
--
ALTER TABLE `p_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `t_cart`
--
ALTER TABLE `t_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `t_sale`
--
ALTER TABLE `t_sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `t_sale_detail`
--
ALTER TABLE `t_sale_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `p_item`
--
ALTER TABLE `p_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `t_sale`
--
ALTER TABLE `t_sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `t_sale_detail`
--
ALTER TABLE `t_sale_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_item`
--
ALTER TABLE `p_item`
  ADD CONSTRAINT `p_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`),
  ADD CONSTRAINT `p_item_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `p_unit` (`unit_id`);

--
-- Constraints for table `t_cart`
--
ALTER TABLE `t_cart`
  ADD CONSTRAINT `t_cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_sale_detail`
--
ALTER TABLE `t_sale_detail`
  ADD CONSTRAINT `t_sale_detail_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`);

--
-- Constraints for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stock_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
