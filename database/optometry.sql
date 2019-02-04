-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2019 at 10:34 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `optometry`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_codes`
--

CREATE TABLE `country_codes` (
  `id` int(11) NOT NULL,
  `iso` char(2) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `nicename` varchar(80) DEFAULT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) DEFAULT NULL,
  `country_flag` varchar(200) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `currency_code` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_codes`
--

INSERT INTO `country_codes` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `country_flag`, `status`, `currency_code`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, '7FfOsUnp2DUYVkc.png', '0', 'AFN'),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, '7FfOsUnp2DUYVkc.png', '0', 'ALL'),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, '7FfOsUnp2DUYVkc.png', '0', 'DZD'),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, '7FfOsUnp2DUYVkc.png', '0', 'USD'),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, 'G9npcMp8xNSZqPm.jpeg', '0', 'EUR'),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, '7FfOsUnp2DUYVkc.png', '0', 'AOA'),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, '7FfOsUnp2DUYVkc.png', '0', 'XCD'),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0, '7FfOsUnp2DUYVkc.png', '0', NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, '7FfOsUnp2DUYVkc.png', '0', 'XCD'),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, '7FfOsUnp2DUYVkc.png', '0', 'ARS'),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, '7FfOsUnp2DUYVkc.png', '0', 'AMD'),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, '7FfOsUnp2DUYVkc.png', '0', 'AWG'),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, '7FfOsUnp2DUYVkc.png', '0', 'AUD'),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, '7FfOsUnp2DUYVkc.png', '0', 'EUR'),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, '7FfOsUnp2DUYVkc.png', '0', 'AZN'),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, '7FfOsUnp2DUYVkc.png', '0', 'BSD'),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, '7FfOsUnp2DUYVkc.png', '0', 'BHD'),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, '7FfOsUnp2DUYVkc.png', '0', 'BDT'),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, '7FfOsUnp2DUYVkc.png', '0', 'BBD'),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, '7FfOsUnp2DUYVkc.png', '0', 'BYR'),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, '7FfOsUnp2DUYVkc.png', '0', 'EUR'),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, '7FfOsUnp2DUYVkc.png', '0', 'BZD'),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, '7FfOsUnp2DUYVkc.png', '0', 'XOF'),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, '7FfOsUnp2DUYVkc.png', '0', 'BMD'),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, '7FfOsUnp2DUYVkc.png', '0', 'BTN'),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, '7FfOsUnp2DUYVkc.png', '0', 'BOB'),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, '7FfOsUnp2DUYVkc.png', '0', 'BAM'),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, '7FfOsUnp2DUYVkc.png', '0', 'BWP'),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0, '7FfOsUnp2DUYVkc.png', '0', 'NOK'),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, '7FfOsUnp2DUYVkc.png', '0', 'BRL'),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246, '7FfOsUnp2DUYVkc.png', '0', ' 	USD'),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, '7FfOsUnp2DUYVkc.png', '0', ' 	BND'),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, '7FfOsUnp2DUYVkc.png', '0', 'BGN'),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, '7FfOsUnp2DUYVkc.png', '0', ' 	XOF'),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, '7FfOsUnp2DUYVkc.png', '0', 'BIF'),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, '7FfOsUnp2DUYVkc.png', '0', ' 	KHR'),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, '7FfOsUnp2DUYVkc.png', '0', 'XAF'),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, '7FfOsUnp2DUYVkc.png', '1', 'CAD'),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, '7FfOsUnp2DUYVkc.png', '0', NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, '7FfOsUnp2DUYVkc.png', '0', 'KYD'),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, '7FfOsUnp2DUYVkc.png', '0', 'XAF'),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, '7FfOsUnp2DUYVkc.png', '0', NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, '7FfOsUnp2DUYVkc.png', '0', NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, '7FfOsUnp2DUYVkc.png', '0', NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61, '7FfOsUnp2DUYVkc.png', '0', NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672, '7FfOsUnp2DUYVkc.png', '0', NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, '7FfOsUnp2DUYVkc.png', '0', NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, '7FfOsUnp2DUYVkc.png', '0', NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, '7FfOsUnp2DUYVkc.png', '0', NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, '7FfOsUnp2DUYVkc.png', '0', NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, '7FfOsUnp2DUYVkc.png', '0', NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, '7FfOsUnp2DUYVkc.png', '0', NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, '7FfOsUnp2DUYVkc.png', '0', NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, '7FfOsUnp2DUYVkc.png', '0', NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, '7FfOsUnp2DUYVkc.png', '0', NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, '7FfOsUnp2DUYVkc.png', '0', NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, '7FfOsUnp2DUYVkc.png', '0', NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, '7FfOsUnp2DUYVkc.png', '0', NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, '7FfOsUnp2DUYVkc.png', '0', NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, '7FfOsUnp2DUYVkc.png', '0', NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, '7FfOsUnp2DUYVkc.png', '0', NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, '7FfOsUnp2DUYVkc.png', '0', NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, '7FfOsUnp2DUYVkc.png', '0', NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, '7FfOsUnp2DUYVkc.png', '0', NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, '7FfOsUnp2DUYVkc.png', '0', NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, '7FfOsUnp2DUYVkc.png', '0', NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, '7FfOsUnp2DUYVkc.png', '0', NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, '7FfOsUnp2DUYVkc.png', '0', NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, '7FfOsUnp2DUYVkc.png', '0', NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, '7FfOsUnp2DUYVkc.png', '0', NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, '7FfOsUnp2DUYVkc.png', '0', NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, '7FfOsUnp2DUYVkc.png', '0', NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, '7FfOsUnp2DUYVkc.png', '0', NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, '7FfOsUnp2DUYVkc.png', '0', NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, '7FfOsUnp2DUYVkc.png', '0', NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0, '7FfOsUnp2DUYVkc.png', '0', NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, '7FfOsUnp2DUYVkc.png', '0', NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, '7FfOsUnp2DUYVkc.png', '0', NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, '7FfOsUnp2DUYVkc.png', '0', NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, '7FfOsUnp2DUYVkc.png', '0', NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, '7FfOsUnp2DUYVkc.png', '0', NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, '7FfOsUnp2DUYVkc.png', '0', NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, '7FfOsUnp2DUYVkc.png', '0', NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, '7FfOsUnp2DUYVkc.png', '0', NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, '7FfOsUnp2DUYVkc.png', '0', NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, '7FfOsUnp2DUYVkc.png', '0', NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, '7FfOsUnp2DUYVkc.png', '0', NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, '7FfOsUnp2DUYVkc.png', '0', NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, '7FfOsUnp2DUYVkc.png', '0', NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, '7FfOsUnp2DUYVkc.png', '0', NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, '7FfOsUnp2DUYVkc.png', '0', NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, '7FfOsUnp2DUYVkc.png', '0', NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, '7FfOsUnp2DUYVkc.png', '0', NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, '7FfOsUnp2DUYVkc.png', '0', NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, '7FfOsUnp2DUYVkc.png', '0', NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, '7FfOsUnp2DUYVkc.png', '0', NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, '7FfOsUnp2DUYVkc.png', '0', NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, '7FfOsUnp2DUYVkc.png', '0', NULL),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, '7FfOsUnp2DUYVkc.png', '1', NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, '7FfOsUnp2DUYVkc.png', '0', NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, '7FfOsUnp2DUYVkc.png', '0', NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, '7FfOsUnp2DUYVkc.png', '0', NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, '7FfOsUnp2DUYVkc.png', '0', NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, '7FfOsUnp2DUYVkc.png', '0', NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, '7FfOsUnp2DUYVkc.png', '0', NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, '7FfOsUnp2DUYVkc.png', '0', NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, '7FfOsUnp2DUYVkc.png', '0', NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, '7FfOsUnp2DUYVkc.png', '0', NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, '7FfOsUnp2DUYVkc.png', '0', NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, '7FfOsUnp2DUYVkc.png', '0', NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, '7FfOsUnp2DUYVkc.png', '0', NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, '7FfOsUnp2DUYVkc.png', '0', NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, '7FfOsUnp2DUYVkc.png', '0', NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, '7FfOsUnp2DUYVkc.png', '0', NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, '7FfOsUnp2DUYVkc.png', '0', NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, '7FfOsUnp2DUYVkc.png', '0', NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, '7FfOsUnp2DUYVkc.png', '0', NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, '7FfOsUnp2DUYVkc.png', '0', NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, '7FfOsUnp2DUYVkc.png', '0', NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, '7FfOsUnp2DUYVkc.png', '0', NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, '7FfOsUnp2DUYVkc.png', '0', NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, '7FfOsUnp2DUYVkc.png', '0', NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, '7FfOsUnp2DUYVkc.png', '0', NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, '7FfOsUnp2DUYVkc.png', '0', NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, '7FfOsUnp2DUYVkc.png', '0', NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, '7FfOsUnp2DUYVkc.png', '0', NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, '7FfOsUnp2DUYVkc.png', '0', NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, '7FfOsUnp2DUYVkc.png', '0', NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, '7FfOsUnp2DUYVkc.png', '0', NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, '7FfOsUnp2DUYVkc.png', '0', NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, '7FfOsUnp2DUYVkc.png', '0', NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, '7FfOsUnp2DUYVkc.png', '0', NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, '7FfOsUnp2DUYVkc.png', '0', NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, '7FfOsUnp2DUYVkc.png', '0', NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, '7FfOsUnp2DUYVkc.png', '0', NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, '7FfOsUnp2DUYVkc.png', '0', NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269, '7FfOsUnp2DUYVkc.png', '0', NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, '7FfOsUnp2DUYVkc.png', '0', NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, '7FfOsUnp2DUYVkc.png', '0', NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, '7FfOsUnp2DUYVkc.png', '0', NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, '7FfOsUnp2DUYVkc.png', '0', NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, '7FfOsUnp2DUYVkc.png', '0', NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, '7FfOsUnp2DUYVkc.png', '0', NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, '7FfOsUnp2DUYVkc.png', '0', NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, '7FfOsUnp2DUYVkc.png', '0', NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, '7FfOsUnp2DUYVkc.png', '0', NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, '7FfOsUnp2DUYVkc.png', '0', NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, '7FfOsUnp2DUYVkc.png', '0', NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, '7FfOsUnp2DUYVkc.png', '0', NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, '7FfOsUnp2DUYVkc.png', '0', NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, '7FfOsUnp2DUYVkc.png', '0', NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, '7FfOsUnp2DUYVkc.png', '0', NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, '7FfOsUnp2DUYVkc.png', '0', NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, '7FfOsUnp2DUYVkc.png', '0', NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, '7FfOsUnp2DUYVkc.png', '0', NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, '7FfOsUnp2DUYVkc.png', '0', NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, '7FfOsUnp2DUYVkc.png', '0', NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, '7FfOsUnp2DUYVkc.png', '0', NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, '7FfOsUnp2DUYVkc.png', '0', NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, '7FfOsUnp2DUYVkc.png', '0', NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, '7FfOsUnp2DUYVkc.png', '0', NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, '7FfOsUnp2DUYVkc.png', '0', NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, '7FfOsUnp2DUYVkc.png', '0', NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970, '7FfOsUnp2DUYVkc.png', '0', NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, '7FfOsUnp2DUYVkc.png', '0', NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, '7FfOsUnp2DUYVkc.png', '0', NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, '7FfOsUnp2DUYVkc.png', '0', NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, '7FfOsUnp2DUYVkc.png', '0', NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, '7FfOsUnp2DUYVkc.png', '0', NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, '7FfOsUnp2DUYVkc.png', '0', NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, '7FfOsUnp2DUYVkc.png', '0', NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, '7FfOsUnp2DUYVkc.png', '0', NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, '7FfOsUnp2DUYVkc.png', '0', NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, '7FfOsUnp2DUYVkc.png', '0', NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, '7FfOsUnp2DUYVkc.png', '0', NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, '7FfOsUnp2DUYVkc.png', '0', NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, '7FfOsUnp2DUYVkc.png', '0', NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, '7FfOsUnp2DUYVkc.png', '0', NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, '7FfOsUnp2DUYVkc.png', '0', NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, '7FfOsUnp2DUYVkc.png', '0', NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, '7FfOsUnp2DUYVkc.png', '0', NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, '7FfOsUnp2DUYVkc.png', '0', NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, '7FfOsUnp2DUYVkc.png', '0', NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, '7FfOsUnp2DUYVkc.png', '0', NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, '7FfOsUnp2DUYVkc.png', '0', NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, '7FfOsUnp2DUYVkc.png', '0', NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, '7FfOsUnp2DUYVkc.png', '0', NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, '7FfOsUnp2DUYVkc.png', '0', NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381, '7FfOsUnp2DUYVkc.png', '0', NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, '7FfOsUnp2DUYVkc.png', '0', NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, '7FfOsUnp2DUYVkc.png', '0', NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, '7FfOsUnp2DUYVkc.png', '0', NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, '7FfOsUnp2DUYVkc.png', '0', NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, '7FfOsUnp2DUYVkc.png', '0', NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, '7FfOsUnp2DUYVkc.png', '0', NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, '7FfOsUnp2DUYVkc.png', '0', NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, '7FfOsUnp2DUYVkc.png', '0', NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, '7FfOsUnp2DUYVkc.png', '0', NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, '7FfOsUnp2DUYVkc.png', '0', NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, '7FfOsUnp2DUYVkc.png', '0', NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, '7FfOsUnp2DUYVkc.png', '0', NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, '7FfOsUnp2DUYVkc.png', '0', NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, '7FfOsUnp2DUYVkc.png', '0', NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, '7FfOsUnp2DUYVkc.png', '0', NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, '7FfOsUnp2DUYVkc.png', '0', NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, '7FfOsUnp2DUYVkc.png', '0', NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, '7FfOsUnp2DUYVkc.png', '0', NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, '7FfOsUnp2DUYVkc.png', '0', NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, '7FfOsUnp2DUYVkc.png', '0', NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, '7FfOsUnp2DUYVkc.png', '0', NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, '7FfOsUnp2DUYVkc.png', '0', NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670, '7FfOsUnp2DUYVkc.png', '0', NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, '7FfOsUnp2DUYVkc.png', '0', NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, '7FfOsUnp2DUYVkc.png', '0', NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, '7FfOsUnp2DUYVkc.png', '0', NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, '7FfOsUnp2DUYVkc.png', '0', NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, '7FfOsUnp2DUYVkc.png', '0', NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, '7FfOsUnp2DUYVkc.png', '0', NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, '7FfOsUnp2DUYVkc.png', '0', NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, '7FfOsUnp2DUYVkc.png', '0', NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, '7FfOsUnp2DUYVkc.png', '0', NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, '7FfOsUnp2DUYVkc.png', '0', NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, '7FfOsUnp2DUYVkc.png', '0', NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, '7FfOsUnp2DUYVkc.png', '0', ''),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, '7FfOsUnp2DUYVkc.png', '0', NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, '7FfOsUnp2DUYVkc.png', '1', 'USD'),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, '7FfOsUnp2DUYVkc.png', '0', NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, '7FfOsUnp2DUYVkc.png', '0', NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, '7FfOsUnp2DUYVkc.png', '0', NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, '7FfOsUnp2DUYVkc.png', '0', NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, '7FfOsUnp2DUYVkc.png', '0', NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, '7FfOsUnp2DUYVkc.png', '0', NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, '7FfOsUnp2DUYVkc.png', '0', NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, '7FfOsUnp2DUYVkc.png', '0', NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, '7FfOsUnp2DUYVkc.png', '0', NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, '7FfOsUnp2DUYVkc.png', '0', NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, '7FfOsUnp2DUYVkc.png', '0', NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, '7FfOsUnp2DUYVkc.png', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cron_jobs`
--

CREATE TABLE `cron_jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cron_jobs`
--

INSERT INTO `cron_jobs` (`id`, `name`, `description`, `url`, `created`, `modified`) VALUES
(1, 'Send email to Users from Database', 'Send store email to users from database whoch have pending status.', 'http://localhost/optometry/cron/sendingEmailToUsers', '2019-01-15 00:00:00', '2019-01-15 07:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `allowed_vars` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email_from` varchar(250) NOT NULL,
  `email_name` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `alias`, `subject`, `allowed_vars`, `description`, `email_from`, `email_name`, `status`, `modified`) VALUES
(23, 'Registration', 'registration', 'Optometry - New Registration', '{full_name},{username},{password}', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"border-color:#c0c0c0; vertical-align:top; width:600px\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<h1><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Optometry</strong></em></h1>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">Hi {full_name},</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">\r\n						<p>You&#39;re now a member of the Optometry.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n						<p>Kindly review the details below.</p>\r\n\r\n						<p>Username : {username}</p>\r\n\r\n						<p>Password : {password}</p>\r\n\r\n						<p>Welcome aboard!</p>\r\n\r\n						<p>&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p>&nbsp;</p>\r\n\r\n						<p>Team<br />\r\n						Optometry</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', ' Optometry@yopmail.com ', 'Optometry ', 1, '2019-01-15 06:32:45'),
(32, 'Contact Us', 'contact_us', 'RapidVolley- Contact Us ', '{name},{email},{phone},{message}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<p>Hi Admin,</p>\r\n<p>One Visitor has messages you. Please check the details below</p>\r\n<p><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em> </em></p>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\"><em>RapidVolley</em></p>\r\n<em> </em>\r\n<p>&nbsp;</p>\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td>{name}</td>\r\n<td>{phone}</td>\r\n<td>{email}</td>\r\n<td>{message}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-04-06 01:08:34'),
(20, 'Password Reset', 'reset_password', 'RapidVolley - Reset Password', '{full_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {full_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your password has been reset successfully.</span></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"background-color: #fff; padding: 15px 0; font-family: verdana;\" valign=\"top\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'rapid@yopmail.com', 'RapidVolley', 1, '2018-03-23 04:40:03'),
(4, 'Change Password', 'change_password', 'RapidVolley - Change Password', '{name},{password}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://mcchandigarh.gov.in/MC%20Photos/logo.jpg\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {full_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your password has been reset successfully.</span></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"background-color: #fff; padding: 15px 0; font-family: verdana;\" valign=\"top\"></td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley', 1, '2018-03-23 04:41:08'),
(24, 'Change Password', 'change_password_by_admin', 'RapidVolley - Change Password', '{name},{password}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">You have requested for reset your password, Kindly review the below details of OTP.</span></p>\r\n<p>{link}</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley', 1, '2018-03-23 04:42:24'),
(1, 'Forgot Password', 'forgot_password', 'Optometry- Forgot Password', '{user},{link}', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"border-color:#c0c0c0; vertical-align:top; width:600px\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<h1><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Optometry</strong></em></h1>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">Hi {user},</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">\r\n						<p>You have requested to reset your password, Enter your new password by clicking on the link below.</p>\r\n\r\n						<p>{link}</p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p>&nbsp;</p>\r\n\r\n						<p>Team<br />\r\n						Optometry</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', ' Optometry@yopmail.com ', 'Optometry ', 1, '2019-01-11 07:16:32'),
(34, 'User Registration', 'new_registration', 'Optometry- Email Sign-up Registration Confirmation', '{user},{link}', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"border-color:#c0c0c0; vertical-align:top; width:600px\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<h1><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Optometry</strong></em></h1>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">Hi {user},</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">\r\n						<p>Please use this link to confirm your email address, and we&#39;ll also take you back to Optometry so you can continue completeing your profile set-up&nbsp;</p>\r\n\r\n						<p>{link}</p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p>&nbsp;</p>\r\n\r\n						<p>Team<br />\r\n						Optometry</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', ' Optometry@yopmail.com ', 'Optometry', 1, '2019-01-15 06:30:13'),
(35, 'The Account Activated', 'account_activated', 'Optometry- Account Activated', '{username},{link}', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"border-color:#c0c0c0; vertical-align:top; width:600px\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<h1><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Optometry</strong></em></h1>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">Hi {username},</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">\r\n						<p>Thanks for getting a interest for member of Optometry family. Please click on below link for activate your account.&nbsp;</p>\r\n\r\n						<p>{link}</p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p>&nbsp;</p>\r\n\r\n						<p>Team<br />\r\n						Optometry</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', ' Optometry@yopmail.com ', 'Optometry ', 1, '2019-01-15 06:36:35'),
(36, 'The Email Verified', 'email_verified', 'RapidVolley- Email Verified', '{First_name}', '\r\n<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your email has been verified successfully,Please wait for admin approval. Thanks for becoming a member of RapidVolly\'s.\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(37, 'The Account Approved', 'account_approved', 'Optometry- Account Approved', '{user},{link}', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"border-color:#c0c0c0; vertical-align:top; width:600px\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<h1><em><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Optometry</strong></em></h1>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">Hi {user},</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">\r\n						<p>Your account has been approved by admin. Thanks for becoming a member of Optometry.<br />\r\n						Please click&nbsp;&nbsp;{link}</p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p>&nbsp;</p>\r\n\r\n						<p>Team<br />\r\n						Optometry</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', ' Optometry@yopmail.com ', 'Optometry', 1, '2019-01-15 06:14:47'),
(38, 'Send Group Invite', 'send_group_invite', 'RapidVolley- Send Group Invite', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: x-small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\"> invited you to the \"</span><span style=\"font-size: x-small;\">{group_name}</span><span style=\"font-size: small;\">\" group . Please {link}</span></p>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-04-17 04:06:51'),
(39, 'The Account Disapproved', 'account_disapproved', 'RapidVolley- Account Disapproved', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your account has been disapproved by admin. You can resubmit your details to try again.<br>Please click here to login {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(40, 'Send Event Invite', 'send_event_invite', 'RapidVolley- Send Event Invite', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: x-small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">send a new request for join \"</span><span>{event_title}</span><span>\" event. Please {link}</span></p>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(41, 'Send Event Invite', 'send_event_invite_friend', 'RapidVolley- Send Event Invite', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">send a new request for join \"</span><span>{event_title}</span><span>\" event. Please {link}</span></p>\n\n<h2>Event Detail</h2>\n<table style=\"width:100%\" class=\"tableStyle\">\n  <tr>\n    <th class=\"tableStyle\">Event Name</th>\n    <th class=\"tableStyle\" >Start Date</th> \n    <th class=\"tableStyle\">End Date</th>\n    <th class=\"tableStyle\">Location</th>\n  </tr>\n  <tr>\n\n     {event_info}\n\n  </tr>\n</table>\n\n\n\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n\n<style>\n.tableStyle {\n    border: 1px solid black;\n    border-collapse: collapse;\n}\n</style>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(42, 'Send Friend Invite', 'send_friend_invite', 'RapidVolley- Send Friend Invite', '{receiver_name},{link},{sender_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">send a new request for join RapidVolley\". Please {link}</span></p>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(43, 'Service Approval', 'send_approval_service', 'RapidVolley- Service Approval', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" width=\"125\" alt=\"\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">has sent you service link to approve. \"</span><span>&nbsp;</span><span>\". Please {link}</span></p>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-11-13 12:47:11'),
(44, 'The Service Approved', 'service_approved', 'RapidVolley- Service Approved', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your service has been approved by admin. Thanks for adedd new service on RapidVolley\'s.<br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(45, 'The Service Dis-approved', 'service_disapproved', 'RapidVolley- Service Approved', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p><span style=\"font-size: small;\">Your service has been Dis-approved by admin. Thanks for added new service on RapidVolley\'s.<br>Please click {link}\n</span></p>\n<p></p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(46, 'Event Created By Admin', 'event_created_by_admin', 'RapidVolley- Send Event Invite', '{receiver_name},{link},{event_title}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: small;\">Admin has&nbsp;</span><span style=\"font-size: small;\"> created <b>{event_title}</b> Event for you on RapidVolley\". Please click on  {link}</span></p>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(47, 'Service Booking Accepted', 'service_booking_accepted', 'RapidVolley- Service Booking Accepted', '{receiver_name},{sender_name},{service},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p><span style=\"font-size: small;\">Your service request has been accpted by {sender_name}.<br>Please click {link}\n</span></p>\n<p></p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(48, 'Service Booking canceled', 'service_booking_canceled', 'RapidVolley- Service Booking canceled', '{receiver_name},{sender_name},{service},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your service request has been canceled by {sender_name}.<br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(49, 'Service Booking rejected', 'service_booking_rejected', 'RapidVolley- Service Booking rejected', '{receiver_name},{sender_name},{service},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your service request has been rejected by {sender_name}.<br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(50, 'Service Booking Request', 'service_booking_request', 'RapidVolley- Service Booking Request', '{receiver_name},{sender_name},{service},{link},{service},{event},{start_date},{end_date},{location},{total_amount},{booking_status}', '\n<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: small;\">{sender_name} has sent booking request for service \"{service}\". Please {link}</span></p>\n<h2>Service Booking Detail:</h2>\n<table class=\"tableStyle\" style=\"width: 100%;\">\n<tbody>\n    \n    <tr>\n	    <th>Service :</th> \n	    <td>{service}</td> \n	</tr>\n	<tr>\n		<th>Event :</th> \n		<td>{event}</td> \n	</tr>\n	<tr>\n		<th>Start Date :</th> \n		<td>{start_date}</td> \n	</tr>\n	<tr>\n		<th>End Date :</th> \n		<td>{end_date}</td> \n	</tr>\n	<tr>\n		<th>Location :</th>\n		<td>{location}</td>\n	</tr>\n	<tr>\n		<th>Total Amount :</th>\n		<td>{total_amount}</td>\n	</tr>\n	<tr>\n		<th>Booking Status :</th>\n		<td>{booking_status}</td>\n	</tr>\n\n</tbody>\n</table>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(51, 'join Group Request', 'join_group_request', 'RapidVolley- Send Group Request', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: x-small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\"> Requested you to join \"</span><span style=\"font-size: x-small;\">{group_name}</span><span style=\"font-size: small;\">\" group . Please {link}</span></p>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-04-17 04:06:51'),
(52, 'Remind Contribution', 'remind_contribution', 'RapidVolley- Remind Contribution', '{receiver_name},{link},{sender_name},{event}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span>{sender_name} has&nbsp;</span><span style=\"font-size: small;\"> send reminder to you contribute for event \"</span><span style=\"font-size: x-small;\">{event}</span><span style=\"font-size: small;\">\" . Please {link}</span></p>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-04-17 04:06:51'),
(55, 'The event Approved', 'event_approved', 'RapidVolley- Event Approved', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p><span style=\"font-size: small;\">Your event has been approved by admin. Thanks for adedd new event on RapidVolley\'s.<br>Please click {link}\n</span></p>\n<p></p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(57, 'Event Approval', 'send_approval_event', 'RapidVolley- Event Approval', '{receiver_name},{link},{sender_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">sent rquest for event approval. \"</span><span>&nbsp;</span><span>\". Please {link}</span></p>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-08-09 05:46:47'),
(56, 'The Event Dis-approved', 'event_disapproved', 'RapidVolley- Event Dis-Approved', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your event has been Dis-approved by admin. Thanks for added new event on RapidVolley\'s.<br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(58, 'The Event Report', 'event_user_report', 'RapidVolley- Event Report', '{receiver_name},{sender_name},{link},{event}', '\r\n\r\n\r\n <table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">{sender_name} has reported against event {event}. <br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(67, 'Booking due payment reminder', 'booking_due_payment_reminder', 'RapidVolley- Booking due payment reminder', '{receiver_name},{service},{event},{link}', '\r\n <table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your service \"{service}\" booking for event \"{event}\" payment is due. {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05');
INSERT INTO `email_templates` (`id`, `title`, `alias`, `subject`, `allowed_vars`, `description`, `email_from`, `email_name`, `status`, `modified`) VALUES
(59, 'The Event Report', 'event_user_report', 'RapidVolley- Event Report', '{receiver_name},{sender_name},{link},{event}', '\r\n <table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">{sender_name} has reported against event {event}. <br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(60, 'Reported issue resolved', 'event_user_report_resolved', 'RapidVolley- Event Report', '{receiver_name},{sender_name},{link},{event}', '\r\n <table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">{sender_name} has been resolved your reported issue against {event} event. <br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(61, 'Accept Group Invite', 'accept_group_invite', 'RapidVolley- Accept Group Invite', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" valign=\"top\" width=\"600\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: x-small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">accepted&nbsp; \"</span><span style=\"font-size: x-small;\">{group_name}</span><span style=\"font-size: small;\">\" group request&nbsp; . Please {link}</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-04-17 04:06:51'),
(62, 'Event payments on hold', 'event_payment_on_hold', 'RapidVolley- Event Payments on hold', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your event payments has been on hold by admin. Due to users reports. <br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(63, 'Event payments hold resolved', 'event_payment_hold_resolved', 'RapidVolley- Event Payments hold resolved', '{user},{link}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {user},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your event payments hold issue has been resolved by admin. <br>Please click {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(64, 'Send Refund Request For Contribution Amount', 'send_contribution_amount_refund', 'RapidVolley- Send Refund Request For Contribution Amount', '{receiver_name},{link},{sender_name},{group_name},{amount}', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"border-color:#c0c0c0; vertical-align:top; width:600px\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td><img alt=\"\" src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" style=\"height:110px; width:125px\" /> <em> </em>\r\n						<p><em>RapidVolley</em></p>\r\n						<em> </em></td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">Hi {receiver_name},</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"vertical-align:top\">\r\n						<p>&nbsp;</p>\r\n\r\n						<p>{sender_name} has&nbsp;send a refund request for contribution amount {amount}&nbsp; of&nbsp; &quot;{event_title}&quot; event. Please {link}</p>\r\n\r\n						<h2>Event Detail</h2>\r\n						{event_info}\r\n\r\n						<table style=\"width:100%\">\r\n							<tbody>\r\n								<tr>\r\n									<th>Event Name</th>\r\n									<th>Start Date</th>\r\n									<th>End Date</th>\r\n									<th>Location</th>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<p>&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p>&nbsp;</p>\r\n\r\n						<p>Team<br />\r\n						RapidVolley</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', ' rapid@yopmail.com ', 'RapidVolley 1', 1, '2018-12-26 08:06:54'),
(68, 'Booked Service Payment', 'booked_service_payment', 'RapidVolley- Booked Service Payment', '{receiver_name},{payment_by},{service},{link},{service},{event},{start_date},{end_date},{location},{amount},{due_amount},{booking_status}', '\n<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: small;\">{payment_by} has&nbsp;</span><span style=\"font-size: small;\">made payment for booked service \"</span><span>{service}</span><span>\". Please {link}</span></p>\n<h2>Service Payment Detail:</h2>\n<table class=\"tableStyle\" style=\"width: 100%;\">\n<tbody>\n    \n    <tr>\n	    <th>Service :</th> \n	    <td>{service}</td> \n	</tr>\n	<tr>\n		<th>Event :</th> \n		<td>{event}</td> \n	</tr>\n	<tr>\n		<th>Start Date :</th> \n		<td>{start_date}</td> \n	</tr>\n	<tr>\n		<th>End Date :</th> \n		<td>{end_date}</td> \n	</tr>\n	<tr>\n		<th>Location :</th>\n		<td>{location}</td>\n	</tr>\n	<tr>\n		<th>Payment :</th>\n		<td>{amount}</td>\n	</tr>\n	<tr>\n		<th>Payment Due :</th>\n		<td>{due_amount}</td>\n	</tr>\n	<tr>\n		<th>Booking Status :</th>\n		<td>{booking_status}</td>\n	</tr>\n\n</tbody>\n</table>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(65, 'Refund Released For Contribution Amount', 'send_contribution_amount_refund_release', 'RapidVolley- Refund Released For Contribution Amount', '{receiver_name},{link},{sender_name},{group_name},{amount}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\">send a refund request for contribution amount {amount}&nbsp; of&nbsp; \"</span><span>{event_title}</span><span>\" event. Please {link}</span></p>\r\n<h2>Event Detail</h2>\r\n{event_info}     \r\n<table class=\"tableStyle\" style=\"width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<th class=\"tableStyle\">Event Name</th> <th class=\"tableStyle\">Start Date</th> <th class=\"tableStyle\">End Date</th> <th class=\"tableStyle\">Location</th>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-12-26 08:06:54'),
(66, 'Overdue payment booking rejected', 'overdue_payment_booking_rejected', 'RapidVolley- Overdue payment booking rejected', '{receiver_name},{service},{event},{link}', '\r\n <table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"http://rapidvolley.mobilytedev.com/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p><span style=\"font-size: small;\">Your service \"{service}\" booking for event \"{event}\" has been rejected, due to overdue of payment. {link}\r\n</span></p>\r\n<p></p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(69, 'Booked Service Payment', 'booked_service_payment_host', 'RapidVolley- Booked Service Payment', '{receiver_name},{service},{link},{service},{event},{start_date},{end_date},{location},{amount},{due_amount},{booking_status}', '\n<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: small;\">You have sent booking request for service \"{service}\". Please {link}</span></p>\n<h2>Service Booking Detail:</h2>\n<table class=\"tableStyle\" style=\"width: 100%;\">\n<tbody>\n    \n    <tr>\n	    <th>Service :</th> \n	    <td>{service}</td> \n	</tr>\n	<tr>\n		<th>Event :</th> \n		<td>{event}</td> \n	</tr>\n	<tr>\n		<th>Start Date :</th> \n		<td>{start_date}</td> \n	</tr>\n	<tr>\n		<th>End Date :</th> \n		<td>{end_date}</td> \n	</tr>\n	<tr>\n		<th>Location :</th>\n		<td>{location}</td>\n	</tr>\n	<tr>\n		<th>Payment :</th>\n		<td>{amount}</td>\n	</tr>\n	<tr>\n		<th>Payment Due :</th>\n		<td>{due_amount}</td>\n	</tr>\n	<tr>\n		<th>Booking Status :</th>\n		<td>{booking_status}</td>\n	</tr>\n\n</tbody>\n</table>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-03-23 04:23:05'),
(70, 'Service Booking Request', 'service_booking_request_host', 'RapidVolley- Service Booking Request', '{receiver_name},{service},{link},{service},{event},{start_date},{end_date},{location},{total_amount},{booking_status}', '\n<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\n<table style=\"font-size: small; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\n</em></td>\n</tr>\n<tr>\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\n</tr>\n<tr>\n<td valign=\"top\">\n<p>&nbsp;</p>\n<p><span style=\"font-size: small;\">You have sent booking request for service \"{service}\". Please {link}</span></p>\n<h2>Service Booking Detail:</h2>\n<table class=\"tableStyle\" style=\"width: 100%;\">\n<tbody>\n    \n    <tr>\n	    <th>Service :</th> \n	    <td>{service}</td> \n	</tr>\n	<tr>\n		<th>Event :</th> \n		<td>{event}</td> \n	</tr>\n	<tr>\n		<th>Start Date :</th> \n		<td>{start_date}</td> \n	</tr>\n	<tr>\n		<th>End Date :</th> \n		<td>{end_date}</td> \n	</tr>\n	<tr>\n		<th>Location :</th>\n		<td>{location}</td>\n	</tr>\n	<tr>\n		<th>Total Amount :</th>\n		<td>{total_amount}</td>\n	</tr>\n	<tr>\n		<th>Booking Status :</th>\n		<td>{booking_status}</td>\n	</tr>\n\n</tbody>\n</table>\n<p>&nbsp;</p>\n<br /></td>\n</tr>\n<tr>\n<td class=\"system_contmail\">\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- .tableStyle {     border: 1px solid black;     border-collapse: collapse; } -->', 'rapid@yopmail.com ', 'RapidVolley ', 1, '2018-05-14 02:41:28'),
(71, 'Send Group Invite Admin', 'send_group_invite_admin', 'RapidVolley- Send Group Invite', '{receiver_name},{link},{sender_name},{group_name}', '<table style=\"border-collapse: collapse; border-spacing: 0; background-color: #fff; padding: 0;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 600px; padding: 10px 10px; border: 1px solid #c0c0c0; font-family: verdana;\" colspan=\"3\" width=\"600\" valign=\"top\">\r\n<table style=\"font-size: small; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 6px solid #33C7FF;\" align=\"center\"><span style=\"font-size: small;\"> <img src=\"/img/site_logo/original_image/Trn9HdRQAEXgU4Q.png\" alt=\"\" width=\"125\" height=\"110\" /> </span> <em>\r\n<p style=\"font-size: medium; padding: 0px !important; margin: 0px 0px 10px 0px !important;\">RapidVolley</p>\r\n</em></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 10px;\" valign=\"top\"><span style=\"font-size: small;\">Hi {receiver_name},</span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: x-small;\">{sender_name} has&nbsp;</span><span style=\"font-size: small;\"> create \"</span><span style=\"font-size: x-small;\">{group_name}</span><span style=\"font-size: small;\">\" group . Please {link}</span></p>\r\n<p>&nbsp;</p>\r\n<br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"system_contmail\">\r\n<p style=\"border-top: 2px solid #33C7FF; width: 500px; text-align: center; margin: 15px auto;\">&nbsp;</p>\r\n<p style=\"margin-top: 0;\"><span style=\"font-size: medium;\">Team<br />RapidVolley</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', ' rapid@yopmail.com ', 'RapidVolley ', 1, '2018-04-17 04:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `sending_emails`
--

CREATE TABLE `sending_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `replace_field` text NOT NULL,
  `status` enum('draft','pending','sent') NOT NULL COMMENT 'Draft,Pending,Sent',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sending_emails`
--

INSERT INTO `sending_emails` (`id`, `email`, `slug`, `replace_field`, `status`, `created`, `modified`) VALUES
(3, 'admin@yopmail.com', 'forgot_password', '{\"{user}\":\"Rohit Kumar\",\"{link}\":\"<a href=\\\"http:\\/\\/localhost\\/optimetry\\/users\\/set-password\\/ISwwYGAKYAo=\\\" target=\\\"_blank\\\">Click here <\\/a>\"}', 'sent', '2019-01-11 10:15:44', '2019-01-11 10:15:44'),
(4, 'admin@yopmail.com', 'forgot_password', '{\"{user}\":\"Rohit Kumar\",\"{link}\":\"<a href=\\\"http:\\/\\/localhost\\/optimetry\\/users\\/set-password\\/ISwwYGAKYAo=\\\" target=\\\"_blank\\\">Click here <\\/a>\"}', 'sent', '2019-01-11 11:03:16', '2019-01-11 11:03:16'),
(5, 'sukhdev@yopmail.com', 'registration', '{\"{full_name},{username}\":\"Sukhdev Singh\",\"{password}\":2}', 'sent', '2019-01-15 06:39:49', '2019-01-15 06:39:49'),
(6, 'sukhdev@yopmail.com', 'new_registration', '{\"{user}\":\"Sukhdev Singh\",\"{link}\":\"<a href=\\\"http:\\/\\/localhost\\/optometry\\/users\\/activate-account\\/ISxAYGAKYAo=\\\" target=\\\"_blank\\\">Click here for activation<\\/a>\"}', 'pending', '2019-01-15 06:39:49', '2019-01-15 06:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `site_configuration`
--

CREATE TABLE `site_configuration` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_email` varchar(255) NOT NULL,
  `site_favicon` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `copyright` text NOT NULL,
  `fb_link` text NOT NULL,
  `twitter_link` text NOT NULL,
  `google_link` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_configuration`
--

INSERT INTO `site_configuration` (`id`, `site_name`, `site_email`, `site_favicon`, `site_logo`, `address`, `copyright`, `fb_link`, `twitter_link`, `google_link`, `created`, `modified`) VALUES
(1, 'Optometry', 'optometry@yopmail.com', '6rVWsgEgv0SRvdI.png', 'wNsk6DVar3zFKXF.png', 'E-40 , Industrial Area,Mohali\r\n', 'Optometry Pvt Ltd', '', '', '', '2019-01-14 12:13:08', '2019-01-14 13:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(11) NOT NULL,
  `from_email` text NOT NULL,
  `from_name` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_secure` text NOT NULL,
  `smtp_auth` text NOT NULL,
  `smtp_host` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `from_email`, `from_name`, `smtp_port`, `smtp_secure`, `smtp_auth`, `smtp_host`, `username`, `password`, `created`) VALUES
(1, 'optometry@yopmail.com', 'Optometry', '587', 'TLS', 'Yes', 'smtp.gmail.com', 'betasoftsystems.dummy@gmail.com', '@Password12', '2016-11-02 00:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `phone_varified_status` enum('0','1') DEFAULT NULL COMMENT '0 for not varified and 1 for varified',
  `email_activate_status` enum('0','1') NOT NULL DEFAULT '0',
  `activation_code` varchar(255) DEFAULT NULL,
  `address` text,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0 for inactive and 1 for active',
  `login_status` enum('0','1') DEFAULT NULL COMMENT '0 for logout, 1 for login',
  `last_login` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `profile_picture`, `firstname`, `lastname`, `email`, `password`, `country_code`, `phone_number`, `otp`, `phone_varified_status`, `email_activate_status`, `activation_code`, `address`, `state`, `country`, `status`, `login_status`, `last_login`, `created`, `modified`) VALUES
(1, 1, 'krU1JoY6W3yTU9h.jpg', 'Rohit', 'Dhiman', 'admin@yopmail.com', '$2y$10$ghOtmg6PmwMJT6deJ0xJD.jgzvIk7SJw5LiBw4ino7WNfWyCzGhOC', '91', '7696285366', NULL, NULL, '0', NULL, 'Sector 71', 'Mohali', 'Punjab', '1', '1', '2019-01-15 07:08:32', '2019-01-07 12:12:34', '2019-01-15 06:08:37'),
(2, 3, NULL, 'Sukhdev', 'Singh', 'sukhdev@yopmail.com', '$2y$10$gleMyKc4.DVFo24hgyiGXuIAWwyUVDvXNY2QQAXAwcPPW6o2.LpU6', NULL, NULL, NULL, NULL, '1', '', NULL, NULL, NULL, '1', '1', '2019-01-15 07:11:07', '2019-01-15 06:39:49', '2019-01-15 06:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `created`, `modified`) VALUES
(1, 'admin', '2019-01-04 00:00:00', '2019-01-04 00:00:00'),
(2, 'doctor', '2019-01-04 00:00:00', '2019-01-04 00:00:00'),
(3, 'patient', '2019-01-04 00:00:00', '2019-01-04 00:00:00'),
(4, 'optician', '2019-01-04 00:00:00', '2019-01-04 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_codes`
--
ALTER TABLE `country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sending_emails`
--
ALTER TABLE `sending_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_configuration`
--
ALTER TABLE `site_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_codes`
--
ALTER TABLE `country_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `sending_emails`
--
ALTER TABLE `sending_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `site_configuration`
--
ALTER TABLE `site_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
