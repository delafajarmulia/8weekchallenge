-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2024 at 06:10 AM
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
-- Database: `data_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `clean_weekly_sales`
--

CREATE TABLE `clean_weekly_sales` (
  `week_date` varchar(7) DEFAULT NULL,
  `week_number` int(2) DEFAULT NULL,
  `month_number` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `region` varchar(13) DEFAULT NULL,
  `platform` varchar(7) DEFAULT NULL,
  `segment` varchar(4) DEFAULT NULL,
  `age_band` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demographic` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactions` int(11) DEFAULT NULL,
  `avg_transaction` decimal(13,2) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clean_weekly_sales`
--

INSERT INTO `clean_weekly_sales` (`week_date`, `week_number`, `month_number`, `year`, `region`, `platform`, `segment`, `age_band`, `demographic`, `transactions`, `avg_transaction`, `sales`) VALUES
('20/8/31', 35, 8, 2020, 'ASIA', 'Retail', 'C3', 'Retirees', 'Couples', 120631, 30.31, 3656163),
('20/8/31', 35, 8, 2020, 'OCEANIA', 'Shopify', 'F3', 'Retirees', 'Families', 190, 159.28, 30264),
('20/8/31', 35, 8, 2020, 'USA', 'Retail', 'null', 'unknown', 'unknown', 529151, 31.20, 16509610),
('20/8/31', 35, 8, 2020, 'EUROPE', 'Retail', 'C1', 'Young Adult', 'Couples', 4517, 31.42, 141942),
('20/8/31', 35, 8, 2020, 'AFRICA', 'Retail', 'C2', 'Middle Aged', 'Couples', 58046, 30.29, 1758388),
('20/8/31', 35, 8, 2020, 'OCEANIA', 'Shopify', 'F1', 'Young Adult', 'Families', 4498, 186.62, 839437),
('20/8/31', 35, 8, 2020, 'CANADA', 'Shopify', 'F1', 'Young Adult', 'Families', 789, 171.09, 134990),
('20/8/31', 35, 8, 2020, 'SOUTH AMERICA', 'Shopify', 'C3', 'Retirees', 'Couples', 109, 211.53, 23057),
('20/8/24', 34, 8, 2020, 'CANADA', 'Shopify', 'C1', 'Young Adult', 'Couples', 80, 130.84, 10467),
('20/8/24', 34, 8, 2020, 'SOUTH AMERICA', 'Shopify', 'C2', 'Middle Aged', 'Couples', 124, 203.18, 25194),
('20/8/24', 34, 8, 2020, 'USA', 'Retail', 'C3', 'Retirees', 'Couples', 47022, 38.23, 1797843),
('20/8/24', 34, 8, 2020, 'SOUTH AMERICA', 'Retail', 'C3', 'Retirees', 'Couples', 952, 40.28, 38345),
('20/8/24', 34, 8, 2020, 'ASIA', 'Retail', 'C1', 'Young Adult', 'Couples', 188753, 33.46, 6315069),
('20/8/24', 34, 8, 2020, 'EUROPE', 'Retail', 'null', 'unknown', 'unknown', 2962, 43.56, 129020),
('20/8/24', 34, 8, 2020, 'AFRICA', 'Retail', 'C2', 'Middle Aged', 'Couples', 58705, 31.70, 1860988),
('20/8/24', 34, 8, 2020, 'AFRICA', 'Shopify', 'F3', 'Retirees', 'Families', 2331, 208.64, 486331),
('20/8/24', 34, 8, 2020, 'ASIA', 'Shopify', 'F1', 'Young Adult', 'Families', 208, 137.22, 28542),
('20/8/24', 34, 8, 2020, 'SOUTH AMERICA', 'Shopify', 'C3', 'Retirees', 'Couples', 91, 205.63, 18712),
('20/8/17', 33, 8, 2020, 'OCEANIA', 'Shopify', 'C2', 'Middle Aged', 'Couples', 4440, 188.21, 835663),
('20/8/17', 33, 8, 2020, 'USA', 'Shopify', 'F1', 'Young Adult', 'Families', 1318, 185.51, 244502),
('20/8/17', 33, 8, 2020, 'AFRICA', 'Shopify', 'F3', 'Retirees', 'Families', 2391, 203.52, 486614),
('20/8/17', 33, 8, 2020, 'OCEANIA', 'Shopify', 'C4', 'Retirees', 'Couples', 100, 136.73, 13673),
('20/8/17', 33, 8, 2020, 'EUROPE', 'Shopify', 'C2', 'Middle Aged', 'Couples', 160, 316.76, 50681),
('20/8/17', 33, 8, 2020, 'OCEANIA', 'Shopify', 'F1', 'Young Adult', 'Families', 4324, 185.20, 800804),
('20/8/17', 33, 8, 2020, 'EUROPE', 'Shopify', 'F2', 'Middle Aged', 'Families', 8, 176.50, 1412),
('20/8/17', 33, 8, 2020, 'SOUTH AMERICA', 'Shopify', 'null', 'unknown', 'unknown', 47, 184.64, 8678),
('20/8/17', 33, 8, 2020, 'SOUTH AMERICA', 'Retail', 'C4', 'Retirees', 'Couples', 257, 38.05, 9779),
('20/8/17', 33, 8, 2020, 'USA', 'Shopify', 'F2', 'Middle Aged', 'Families', 146, 154.86, 22610),
('20/8/10', 32, 8, 2020, 'AFRICA', 'Retail', 'null', 'unknown', 'unknown', 1552707, 28.53, 44304726),
('20/8/10', 32, 8, 2020, 'USA', 'Shopify', 'F2', 'Middle Aged', 'Families', 1913, 200.98, 384475),
('20/8/10', 32, 8, 2020, 'USA', 'Retail', 'null', 'unknown', 'unknown', 23420, 41.46, 971003),
('20/8/10', 32, 8, 2020, 'AFRICA', 'Shopify', 'null', 'unknown', 'unknown', 382, 185.93, 71027),
('20/8/10', 32, 8, 2020, 'OCEANIA', 'Shopify', 'C2', 'Middle Aged', 'Couples', 770, 162.97, 125489),
('20/8/10', 32, 8, 2020, 'SOUTH AMERICA', 'Shopify', 'null', 'unknown', 'unknown', 2062, 190.60, 393008),
('20/8/10', 32, 8, 2020, 'OCEANIA', 'Shopify', 'C2', 'Middle Aged', 'Couples', 4391, 186.13, 817285),
('20/8/10', 32, 8, 2020, 'USA', 'Shopify', 'F1', 'Young Adult', 'Families', 1335, 190.09, 253770),
('20/8/3', 31, 8, 2020, 'EUROPE', 'Shopify', 'null', 'unknown', 'unknown', 371, 223.53, 82928),
('20/8/3', 31, 8, 2020, 'USA', 'Retail', 'F2', 'Middle Aged', 'Families', 26359, 35.96, 947836),
('20/8/3', 31, 8, 2020, 'USA', 'Retail', 'F2', 'Middle Aged', 'Families', 92243, 56.62, 5223071),
('20/8/3', 31, 8, 2020, 'EUROPE', 'Retail', 'C1', 'Young Adult', 'Couples', 14456, 44.46, 642677),
('20/8/3', 31, 8, 2020, 'ASIA', 'Shopify', 'C4', 'Retirees', 'Couples', 38, 146.11, 5552),
('20/8/3', 31, 8, 2020, 'EUROPE', 'Shopify', 'F2', 'Middle Aged', 'Families', 224, 222.88, 49924),
('20/8/3', 31, 8, 2020, 'USA', 'Shopify', 'F3', 'Retirees', 'Families', 44, 151.68, 6674),
('20/7/20', 29, 7, 2020, 'SOUTH AMERICA', 'Shopify', 'C3', 'Retirees', 'Couples', 98, 198.74, 19477),
('20/7/20', 29, 7, 2020, 'CANADA', 'Shopify', 'null', 'unknown', 'unknown', 83, 156.96, 13028),
('20/7/20', 29, 7, 2020, 'SOUTH AMERICA', 'Retail', 'null', 'unknown', 'unknown', 157, 38.51, 6046),
('20/7/20', 29, 7, 2020, 'SOUTH AMERICA', 'Shopify', 'C1', 'Young Adult', 'Couples', 69, 169.25, 11678),
('20/7/20', 29, 7, 2020, 'AFRICA', 'Shopify', 'C2', 'Middle Aged', 'Couples', 401, 136.08, 54568),
('19/7/29', 30, 7, 2019, 'AFRICA', 'Retail', 'C4', 'Retirees', 'Couples', 110233, 51.38, 5664273),
('19/7/29', 30, 7, 2019, 'EUROPE', 'Retail', 'F1', 'Young Adult', 'Families', 6299, 62.35, 392713),
('19/7/29', 30, 7, 2019, 'EUROPE', 'Retail', 'C4', 'Retirees', 'Couples', 4763, 55.67, 265148),
('19/7/29', 30, 7, 2019, 'EUROPE', 'Shopify', 'null', 'unknown', 'unknown', 13, 232.00, 3016),
('19/7/29', 30, 7, 2019, 'ASIA', 'Shopify', 'C1', 'Young Adult', 'Couples', 264, 120.56, 31827),
('19/7/29', 30, 7, 2019, 'ASIA', 'Shopify', 'F1', 'Young Adult', 'Families', 1657, 171.84, 284731),
('19/7/29', 30, 7, 2019, 'ASIA', 'Retail', 'C3', 'Retirees', 'Couples', 108292, 31.35, 3394521),
('19/7/29', 30, 7, 2019, 'CANADA', 'Shopify', 'null', 'unknown', 'unknown', 1040, 164.97, 171564),
('19/7/29', 30, 7, 2019, 'CANADA', 'Retail', 'null', 'unknown', 'unknown', 422024, 27.86, 11759218),
('19/7/29', 30, 7, 2019, 'SOUTH AMERICA', 'Retail', 'C2', 'Middle Aged', 'Couples', 801, 36.74, 29430),
('19/7/29', 30, 7, 2019, 'SOUTH AMERICA', 'Shopify', 'C4', 'Retirees', 'Couples', 2, 114.50, 229),
('19/7/29', 30, 7, 2019, 'ASIA', 'Retail', 'C3', 'Retirees', 'Couples', 216731, 46.11, 9993226),
('19/7/29', 30, 7, 2019, 'AFRICA', 'Retail', 'C1', 'Young Adult', 'Couples', 167965, 38.44, 6456437),
('18/8/20', 33, 8, 2018, 'AFRICA', 'Shopify', 'C2', 'Middle Aged', 'Couples', 205, 157.00, 32186),
('18/8/20', 33, 8, 2018, 'ASIA', 'Shopify', 'F3', 'Retirees', 'Families', 73, 158.66, 11582),
('18/8/20', 33, 8, 2018, 'OCEANIA', 'Retail', 'F1', 'Young Adult', 'Families', 39791, 35.50, 1412520),
('18/8/20', 33, 8, 2018, 'USA', 'Retail', 'C4', 'Retirees', 'Couples', 29773, 56.53, 1683008),
('18/8/20', 33, 8, 2018, 'AFRICA', 'Retail', 'F1', 'Young Adult', 'Families', 86232, 56.93, 4909403),
('18/8/20', 33, 8, 2018, 'ASIA', 'Retail', 'F2', 'Middle Aged', 'Families', 66723, 32.88, 2193709),
('18/8/20', 33, 8, 2018, 'SOUTH AMERICA', 'Retail', 'F3', 'Retirees', 'Families', 312, 38.50, 12013),
('18/8/20', 33, 8, 2018, 'ASIA', 'Retail', 'C2', 'Middle Aged', 'Couples', 71287, 27.36, 1950082),
('18/8/20', 33, 8, 2018, 'SOUTH AMERICA', 'Retail', 'null', 'unknown', 'unknown', 356, 40.03, 14251),
('18/8/20', 33, 8, 2018, 'EUROPE', 'Retail', 'C1', 'Young Adult', 'Couples', 14250, 47.91, 682656);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_sales`
--

CREATE TABLE `weekly_sales` (
  `id` int(11) NOT NULL,
  `week_date` varchar(7) DEFAULT NULL,
  `region` varchar(13) DEFAULT NULL,
  `platform` varchar(7) DEFAULT NULL,
  `segment` varchar(4) DEFAULT NULL,
  `customer_type` varchar(8) DEFAULT NULL,
  `transactions` int(11) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekly_sales`
--

INSERT INTO `weekly_sales` (`id`, `week_date`, `region`, `platform`, `segment`, `customer_type`, `transactions`, `sales`) VALUES
(1, '20/8/31', 'ASIA', 'Retail', 'C3', 'New', 120631, 3656163),
(2, '20/8/31', 'OCEANIA', 'Shopify', 'F3', 'New', 190, 30264),
(3, '20/8/31', 'USA', 'Retail', 'null', 'Guest', 529151, 16509610),
(4, '20/8/31', 'EUROPE', 'Retail', 'C1', 'New', 4517, 141942),
(5, '20/8/31', 'AFRICA', 'Retail', 'C2', 'New', 58046, 1758388),
(6, '20/8/31', 'OCEANIA', 'Shopify', 'F1', 'Existing', 4498, 839437),
(7, '20/8/31', 'CANADA', 'Shopify', 'F1', 'Existing', 789, 134990),
(8, '20/8/31', 'SOUTH AMERICA', 'Shopify', 'C3', 'Existing', 109, 23057),
(9, '20/8/24', 'CANADA', 'Shopify', 'C1', 'New', 80, 10467),
(10, '20/8/24', 'SOUTH AMERICA', 'Shopify', 'C2', 'Existing', 124, 25194),
(11, '20/8/24', 'USA', 'Retail', 'C3', 'New', 47022, 1797843),
(12, '20/8/24', 'SOUTH AMERICA', 'Retail', 'C3', 'New', 952, 38345),
(13, '20/8/24', 'ASIA', 'Retail', 'C1', 'Existing', 188753, 6315069),
(14, '20/8/24', 'EUROPE', 'Retail', 'null', 'New', 2962, 129020),
(15, '20/8/24', 'AFRICA', 'Retail', 'C2', 'New', 58705, 1860988),
(16, '20/8/24', 'AFRICA', 'Shopify', 'F3', 'Existing', 2331, 486331),
(17, '20/8/24', 'ASIA', 'Shopify', 'F1', 'New', 208, 28542),
(18, '20/8/24', 'SOUTH AMERICA', 'Shopify', 'C3', 'Existing', 91, 18712),
(19, '20/8/17', 'OCEANIA', 'Shopify', 'C2', 'Existing', 4440, 835663),
(20, '20/8/17', 'USA', 'Shopify', 'F1', 'Existing', 1318, 244502),
(21, '20/8/17', 'AFRICA', 'Shopify', 'F3', 'Existing', 2391, 486614),
(22, '20/8/17', 'OCEANIA', 'Shopify', 'C4', 'New', 100, 13673),
(23, '20/8/17', 'EUROPE', 'Shopify', 'C2', 'Existing', 160, 50681),
(24, '20/8/17', 'OCEANIA', 'Shopify', 'F1', 'Existing', 4324, 800804),
(25, '20/8/17', 'EUROPE', 'Shopify', 'F2', 'New', 8, 1412),
(26, '20/8/17', 'SOUTH AMERICA', 'Shopify', 'null', 'New', 47, 8678),
(27, '20/8/17', 'SOUTH AMERICA', 'Retail', 'C4', 'New', 257, 9779),
(28, '20/8/17', 'USA', 'Shopify', 'F2', 'New', 146, 22610),
(29, '20/8/10', 'AFRICA', 'Retail', 'null', 'Guest', 1552707, 44304726),
(30, '20/8/10', 'USA', 'Shopify', 'F2', 'Existing', 1913, 384475),
(31, '20/8/10', 'USA', 'Retail', 'null', 'New', 23420, 971003),
(32, '20/8/10', 'AFRICA', 'Shopify', 'null', 'Existing', 382, 71027),
(33, '20/8/10', 'OCEANIA', 'Shopify', 'C2', 'New', 770, 125489),
(34, '20/8/10', 'SOUTH AMERICA', 'Shopify', 'null', 'Guest', 2062, 393008),
(35, '20/8/10', 'OCEANIA', 'Shopify', 'C2', 'Existing', 4391, 817285),
(36, '20/8/10', 'USA', 'Shopify', 'F1', 'Existing', 1335, 253770),
(37, '20/8/3', 'EUROPE', 'Shopify', 'null', 'Guest', 371, 82928),
(38, '20/8/3', 'USA', 'Retail', 'F2', 'New', 26359, 947836),
(39, '20/8/3', 'USA', 'Retail', 'F2', 'Existing', 92243, 5223071),
(40, '20/8/3', 'EUROPE', 'Retail', 'C1', 'Existing', 14456, 642677),
(41, '20/8/3', 'ASIA', 'Shopify', 'C4', 'New', 38, 5552),
(42, '20/8/3', 'EUROPE', 'Shopify', 'F2', 'Existing', 224, 49924),
(43, '20/8/3', 'USA', 'Shopify', 'F3', 'New', 44, 6674),
(44, '20/7/20', 'SOUTH AMERICA', 'Shopify', 'C3', 'Existing', 98, 19477),
(45, '20/7/20', 'CANADA', 'Shopify', 'null', 'Existing', 83, 13028),
(46, '20/7/20', 'SOUTH AMERICA', 'Retail', 'null', 'Existing', 157, 6046),
(47, '20/7/20', 'SOUTH AMERICA', 'Shopify', 'C1', 'Existing', 69, 11678),
(48, '20/7/20', 'AFRICA', 'Shopify', 'C2', 'New', 401, 54568),
(49, '19/7/29', 'AFRICA', 'Retail', 'C4', 'Existing', 110233, 5664273),
(50, '19/7/29', 'EUROPE', 'Retail', 'F1', 'Existing', 6299, 392713),
(51, '19/7/29', 'EUROPE', 'Retail', 'C4', 'Existing', 4763, 265148),
(52, '19/7/29', 'EUROPE', 'Shopify', 'null', 'Existing', 13, 3016),
(53, '19/7/29', 'ASIA', 'Shopify', 'C1', 'New', 264, 31827),
(54, '19/7/29', 'ASIA', 'Shopify', 'F1', 'Existing', 1657, 284731),
(55, '19/7/29', 'ASIA', 'Retail', 'C3', 'New', 108292, 3394521),
(56, '19/7/29', 'CANADA', 'Shopify', 'null', 'Guest', 1040, 171564),
(57, '19/7/29', 'CANADA', 'Retail', 'null', 'Guest', 422024, 11759218),
(58, '19/7/29', 'SOUTH AMERICA', 'Retail', 'C2', 'Existing', 801, 29430),
(59, '19/7/29', 'SOUTH AMERICA', 'Shopify', 'C4', 'New', 2, 229),
(60, '19/7/29', 'ASIA', 'Retail', 'C3', 'Existing', 216731, 9993226),
(61, '19/7/29', 'AFRICA', 'Retail', 'C1', 'Existing', 167965, 6456437),
(62, '18/8/20', 'AFRICA', 'Shopify', 'C2', 'New', 205, 32186),
(63, '18/8/20', 'ASIA', 'Shopify', 'F3', 'New', 73, 11582),
(64, '18/8/20', 'OCEANIA', 'Retail', 'F1', 'New', 39791, 1412520),
(65, '18/8/20', 'USA', 'Retail', 'C4', 'Existing', 29773, 1683008),
(66, '18/8/20', 'AFRICA', 'Retail', 'F1', 'Existing', 86232, 4909403),
(67, '18/8/20', 'ASIA', 'Retail', 'F2', 'New', 66723, 2193709),
(68, '18/8/20', 'SOUTH AMERICA', 'Retail', 'F3', 'New', 312, 12013),
(69, '18/8/20', 'ASIA', 'Retail', 'C2', 'New', 71287, 1950082),
(70, '18/8/20', 'SOUTH AMERICA', 'Retail', 'null', 'Existing', 356, 14251),
(71, '18/8/20', 'EUROPE', 'Retail', 'C1', 'Existing', 14250, 682656);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weekly_sales`
--
ALTER TABLE `weekly_sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weekly_sales`
--
ALTER TABLE `weekly_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
