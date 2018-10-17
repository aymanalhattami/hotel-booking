-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 02, 2018 at 12:06 PM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time_from` datetime DEFAULT NULL,
  `time_to` datetime DEFAULT NULL,
  `additional_information` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_deleted_at_index` (`deleted_at`),
  KEY `110461_5a676fa2321c7` (`customer_id`),
  KEY `110461_5a676fa239ffd` (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `time_from`, `time_to`, `additional_information`, `created_at`, `updated_at`, `deleted_at`, `customer_id`, `room_id`) VALUES
(1, '2018-09-22 22:14:00', '2018-09-23 22:14:00', 'for one night', '2018-09-22 16:14:30', '2018-09-22 16:14:30', NULL, 1, 1),
(2, '2018-09-22 17:30:00', '2018-09-23 17:30:00', 'on night', '2018-09-23 11:31:04', '2018-09-23 11:31:04', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortcode`, `title`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', 'Afghanistan', '2018-09-22 14:45:01', '2018-09-23 06:36:29', NULL),
(2, 'AL', 'Albania', '', '2018-09-22 14:45:01', '2018-09-23 06:12:16', NULL),
(3, 'DZ', 'Algeria', '', '2018-09-22 14:45:01', '2018-09-23 06:12:21', NULL),
(4, 'AS', 'American Samoa', '', '2018-09-22 14:45:01', '2018-09-23 06:12:26', NULL),
(5, 'AD', 'Andorra', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(6, 'AO', 'Angola', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(7, 'AI', 'Anguilla', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(8, 'AQ', 'Antarctica', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(9, 'AG', 'Antigua and Barbuda', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(10, 'AR', 'Argentina', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(11, 'AM', 'Armenia', '', '2018-09-22 14:45:01', '2018-09-23 06:11:29', NULL),
(12, 'AW', 'Aruba', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(13, 'AU', 'Australia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(14, 'AT', 'Austria', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(15, 'AZ', 'Azerbaijan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(16, 'BS', 'Bahamas', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(17, 'BH', 'Bahrain', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(18, 'BD', 'Bangladesh', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(19, 'BB', 'Barbados', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(20, 'BY', 'Belarus', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(21, 'BE', 'Belgium', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(22, 'BZ', 'Belize', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(23, 'BJ', 'Benin', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(24, 'BM', 'Bermuda', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(25, 'BT', 'Bhutan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(26, 'BO', 'Bolivia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(27, 'BA', 'Bosnia and Herzegovina', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(28, 'BW', 'Botswana', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(29, 'BV', 'Bouvet Island', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(30, 'BR', 'Brazil', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(31, 'BQ', 'British Antarctic Territory', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(32, 'IO', 'British Indian Ocean Territory', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(33, 'VG', 'British Virgin Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(34, 'BN', 'Brunei', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(35, 'BG', 'Bulgaria', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(36, 'BF', 'Burkina Faso', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(37, 'BI', 'Burundi', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(38, 'KH', 'Cambodia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(39, 'CM', 'Cameroon', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(40, 'CA', 'Canada', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(41, 'CT', 'Canton and Enderbury Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(42, 'CV', 'Cape Verde', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(43, 'KY', 'Cayman Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(44, 'CF', 'Central African Republic', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(45, 'TD', 'Chad', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(46, 'CL', 'Chile', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(47, 'CN', 'China', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(48, 'CX', 'Christmas Island', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(49, 'CC', 'Cocos [Keeling] Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(50, 'CO', 'Colombia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(51, 'KM', 'Comoros', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(52, 'CG', 'Congo - Brazzaville', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(53, 'CD', 'Congo - Kinshasa', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(54, 'CK', 'Cook Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(55, 'CR', 'Costa Rica', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(56, 'HR', 'Croatia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(57, 'CU', 'Cuba', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(58, 'CY', 'Cyprus', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(59, 'CZ', 'Czech Republic', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(60, 'CI', 'Côte d’Ivoire', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(61, 'DK', 'Denmark', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(62, 'DJ', 'Djibouti', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(63, 'DM', 'Dominica', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(64, 'DO', 'Dominican Republic', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(65, 'NQ', 'Dronning Maud Land', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(66, 'DD', 'East Germany', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(67, 'EC', 'Ecuador', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(68, 'EG', 'Egypt', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(69, 'SV', 'El Salvador', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(70, 'GQ', 'Equatorial Guinea', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(71, 'ER', 'Eritrea', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(72, 'EE', 'Estonia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(73, 'ET', 'Ethiopia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(74, 'FK', 'Falkland Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(75, 'FO', 'Faroe Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(76, 'FJ', 'Fiji', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(77, 'FI', 'Finland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(78, 'FR', 'France', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(79, 'GF', 'French Guiana', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(80, 'PF', 'French Polynesia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(81, 'TF', 'French Southern Territories', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(82, 'FQ', 'French Southern and Antarctic Territories', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(83, 'GA', 'Gabon', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(84, 'GM', 'Gambia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(85, 'GE', 'Georgia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(86, 'DE', 'Germany', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(87, 'GH', 'Ghana', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(88, 'GI', 'Gibraltar', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(89, 'GR', 'Greece', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(90, 'GL', 'Greenland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(91, 'GD', 'Grenada', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(92, 'GP', 'Guadeloupe', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(93, 'GU', 'Guam', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(94, 'GT', 'Guatemala', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(95, 'GG', 'Guernsey', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(96, 'GN', 'Guinea', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(97, 'GW', 'Guinea-Bissau', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(98, 'GY', 'Guyana', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(99, 'HT', 'Haiti', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(100, 'HM', 'Heard Island and McDonald Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(101, 'HN', 'Honduras', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(102, 'HK', 'Hong Kong SAR China', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(103, 'HU', 'Hungary', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(104, 'IS', 'Iceland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(105, 'IN', 'India', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(106, 'ID', 'Indonesia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(107, 'IR', 'Iran', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(108, 'IQ', 'Iraq', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(109, 'IE', 'Ireland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(110, 'IM', 'Isle of Man', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(111, 'IL', 'Israel', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(112, 'IT', 'Italy', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(113, 'JM', 'Jamaica', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(114, 'JP', 'Japan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(115, 'JE', 'Jersey', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(116, 'JT', 'Johnston Island', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(117, 'JO', 'Jordan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(118, 'KZ', 'Kazakhstan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(119, 'KE', 'Kenya', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(120, 'KI', 'Kiribati', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(121, 'KW', 'Kuwait', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(122, 'KG', 'Kyrgyzstan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(123, 'LA', 'Laos', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(124, 'LV', 'Latvia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(125, 'LB', 'Lebanon', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(126, 'LS', 'Lesotho', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(127, 'LR', 'Liberia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(128, 'LY', 'Libya', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(129, 'LI', 'Liechtenstein', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(130, 'LT', 'Lithuania', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(131, 'LU', 'Luxembourg', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(132, 'MO', 'Macau SAR China', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(133, 'MK', 'Macedonia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(134, 'MG', 'Madagascar', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(135, 'MW', 'Malawi', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(136, 'MY', 'Malaysia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(137, 'MV', 'Maldives', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(138, 'ML', 'Mali', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(139, 'MT', 'Malta', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(140, 'MH', 'Marshall Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(141, 'MQ', 'Martinique', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(142, 'MR', 'Mauritania', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(143, 'MU', 'Mauritius', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(144, 'YT', 'Mayotte', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(145, 'FX', 'Metropolitan France', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(146, 'MX', 'Mexico', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(147, 'FM', 'Micronesia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(148, 'MI', 'Midway Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(149, 'MD', 'Moldova', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(150, 'MC', 'Monaco', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(151, 'MN', 'Mongolia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(152, 'ME', 'Montenegro', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(153, 'MS', 'Montserrat', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(154, 'MA', 'Morocco', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(155, 'MZ', 'Mozambique', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(156, 'MM', 'Myanmar [Burma]', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(157, 'NA', 'Namibia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(158, 'NR', 'Nauru', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(159, 'NP', 'Nepal', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(160, 'NL', 'Netherlands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(161, 'AN', 'Netherlands Antilles', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(162, 'NT', 'Neutral Zone', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(163, 'NC', 'New Caledonia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(164, 'NZ', 'New Zealand', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(165, 'NI', 'Nicaragua', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(166, 'NE', 'Niger', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(167, 'NG', 'Nigeria', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(168, 'NU', 'Niue', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(169, 'NF', 'Norfolk Island', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(170, 'KP', 'North Korea', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(171, 'VD', 'North Vietnam', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(172, 'MP', 'Northern Mariana Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(173, 'NO', 'Norway', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(174, 'OM', 'Oman', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(175, 'PC', 'Pacific Islands Trust Territory', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(176, 'PK', 'Pakistan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(177, 'PW', 'Palau', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(178, 'PS', 'Palestinian Territories', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(179, 'PA', 'Panama', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(180, 'PZ', 'Panama Canal Zone', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(181, 'PG', 'Papua New Guinea', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(182, 'PY', 'Paraguay', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(183, 'YD', 'People\'s Democratic Republic of Yemen', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(184, 'PE', 'Peru', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(185, 'PH', 'Philippines', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(186, 'PN', 'Pitcairn Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(187, 'PL', 'Poland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(188, 'PT', 'Portugal', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(189, 'PR', 'Puerto Rico', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(190, 'QA', 'Qatar', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(191, 'RO', 'Romania', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(192, 'RU', 'Russia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(193, 'RW', 'Rwanda', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(194, 'RE', 'Réunion', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(195, 'BL', 'Saint Barthélemy', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(196, 'SH', 'Saint Helena', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(197, 'KN', 'Saint Kitts and Nevis', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(198, 'LC', 'Saint Lucia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(199, 'MF', 'Saint Martin', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(200, 'PM', 'Saint Pierre and Miquelon', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(201, 'VC', 'Saint Vincent and the Grenadines', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(202, 'WS', 'Samoa', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(203, 'SM', 'San Marino', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(204, 'SA', 'Saudi Arabia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(205, 'SN', 'Senegal', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(206, 'RS', 'Serbia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(207, 'CS', 'Serbia and Montenegro', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(208, 'SC', 'Seychelles', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(209, 'SL', 'Sierra Leone', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(210, 'SG', 'Singapore', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(211, 'SK', 'Slovakia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(212, 'SI', 'Slovenia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(213, 'SB', 'Solomon Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(214, 'SO', 'Somalia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(215, 'ZA', 'South Africa', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(216, 'GS', 'South Georgia and the South Sandwich Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(217, 'KR', 'South Korea', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(218, 'ES', 'Spain', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(219, 'LK', 'Sri Lanka', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(220, 'SD', 'Sudan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(221, 'SR', 'Suriname', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(222, 'SJ', 'Svalbard and Jan Mayen', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(223, 'SZ', 'Swaziland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(224, 'SE', 'Sweden', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(225, 'CH', 'Switzerland', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(226, 'SY', 'Syria', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(227, 'ST', 'São Tomé and Príncipe', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(228, 'TW', 'Taiwan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(229, 'TJ', 'Tajikistan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(230, 'TZ', 'Tanzania', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(231, 'TH', 'Thailand', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(232, 'TL', 'Timor-Leste', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(233, 'TG', 'Togo', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(234, 'TK', 'Tokelau', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(235, 'TO', 'Tonga', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(236, 'TT', 'Trinidad and Tobago', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(237, 'TN', 'Tunisia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(238, 'TR', 'Turkey', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(239, 'TM', 'Turkmenistan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(240, 'TC', 'Turks and Caicos Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(241, 'TV', 'Tuvalu', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(242, 'UM', 'U.S. Minor Outlying Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(243, 'PU', 'U.S. Miscellaneous Pacific Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(244, 'VI', 'U.S. Virgin Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(245, 'UG', 'Uganda', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(246, 'UA', 'Ukraine', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(247, 'SU', 'Union of Soviet Socialist Republics', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(248, 'AE', 'United Arab Emirates', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(249, 'GB', 'United Kingdom', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(250, 'US', 'United States', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(251, 'ZZ', 'Unknown or Invalid Region', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(252, 'UY', 'Uruguay', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(253, 'UZ', 'Uzbekistan', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(254, 'VU', 'Vanuatu', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(255, 'VA', 'Vatican City', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(256, 'VE', 'Venezuela', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(257, 'VN', 'Vietnam', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(258, 'WK', 'Wake Island', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(259, 'WF', 'Wallis and Futuna', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(260, 'EH', 'Western Sahara', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(261, 'YE', 'Yemen', '', '2018-09-22 14:45:01', '2018-09-23 06:11:03', NULL),
(262, 'ZM', 'Zambia', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(263, 'ZW', 'Zimbabwe', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(264, 'AX', 'Åland Islands', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL),
(265, 'YE', 'Yemen', '', '2018-09-22 14:45:01', '2018-09-22 14:45:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_deleted_at_index` (`deleted_at`),
  KEY `110459_5a676ed5d9792` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `deleted_at`, `country_id`) VALUES
(1, 'aymen', 'mohammed', 'sanaa', '774885285', 'aymen.alyemen@gmail.com', '2018-09-22 16:13:19', '2018-09-23 06:41:35', NULL, 1),
(2, 'aymen_1', 'aymen_1', 'aden', '774885285', 'aymen@moh.saleh', '2018-09-23 01:48:06', '2018-09-23 11:06:59', '2018-09-23 11:06:59', 2),
(3, 'mohammed', 'saleh', 'dammar', '123456789', 'moh@g.com', '2018-09-23 01:49:05', '2018-09-23 01:49:05', NULL, 204),
(4, 'saleh', 'saeed', 'hodida', '369852147', 'saleh@g.com', '2018-09-23 01:49:40', '2018-09-23 01:49:40', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_01_23_191448_create_1516727688_roles_table', 1),
(3, '2018_01_23_191453_create_1516727692_users_table', 1),
(4, '2018_01_23_191454_add_5a676d8f84952_relationships_to_user_table', 1),
(5, '2018_01_23_191536_create_1516727736_countries_table', 1),
(6, '2018_01_23_192021_create_1516728020_customers_table', 1),
(7, '2018_01_23_192022_add_5a676ed766f5b_relationships_to_customer_table', 1),
(8, '2018_01_23_192145_create_1516728105_rooms_table', 1),
(9, '2018_01_23_192345_create_1516728224_bookings_table', 1),
(10, '2018_01_23_192346_add_5a676fa3e3cd8_relationships_to_booking_table', 1),
(11, '2018_01_23_192755_add_5a67709b89c38_relationships_to_booking_table', 1),
(12, '2018_01_23_192910_add_5a6770e6b5767_relationships_to_customer_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2018-09-22 14:45:01', '2018-09-22 14:45:01'),
(2, 'Simple user', '2018-09-22 14:45:01', '2018-09-22 14:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `room_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `floor`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 1, 'Room 1 in floor 1', '2018-09-22 16:13:45', '2018-09-22 16:13:45', NULL),
(2, '2', 1, 'Room 2 in floor 1', '2018-09-23 11:22:57', '2018-09-23 11:22:57', NULL),
(4, '3', 1, 'Room 3 in floor 1', '2018-09-23 11:25:13', '2018-09-23 11:25:13', NULL),
(5, '4', 1, 'Room 4 in floor 1', '2018-09-23 11:25:36', '2018-09-23 11:25:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `110457_5a676d8ddf4c7` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$UGUIyjxyeUKk2wGS4JRD.ePlo8QzRIaxKMkdpQTkVUekbt9SvYm3y', 'GzrNw4Be0k0giqHBzUfHlk09Lz9P4sbqsaQUs8j7zpn4qLxPp3K90QITpIcs', '2018-09-22 14:45:01', '2018-09-23 14:12:39', 1),
(2, 'aymen', 'aymen.alyemen@gmail.com', '$2y$10$IoQH29BMUDdQK2tDW.MyfeRuelBZjvrf/c2Yu026iGi5gSB0.DHDO', NULL, '2018-09-22 14:48:01', '2018-09-22 14:48:01', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
