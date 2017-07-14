-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 04:05 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiusig`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lotSize` float DEFAULT NULL,
  `buildingSize` float DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `baths` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `sold_or_rented` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`no`, `id`, `title`, `status`, `type`, `price`, `province`, `city`, `address`, `lat`, `lng`, `lotSize`, `buildingSize`, `floors`, `beds`, `baths`, `description`, `agent`, `createdAt`, `updatedAt`, `sold_or_rented`) VALUES
(14, 'lst14', 'Rumah Tepi di Sawah Kesambi Raya', 'dijual', 'rumah', 1500000000, 'Bali', 'Kuta Utara', 'Perum Kesambi Raya no 77', '-8.653635', '115.1719873', 120, 100, 1, 1, 1, 'View Bagus Landscape Sawah asri', 1, '2016-12-21 19:33:49', '2017-06-09 17:26:48', NULL),
(15, 'lst15', 'Rumah 100', 'dijual', 'rumah', 100000000, 'Bali', 'Denpasar', 'Bagus Jaya Residence, Padangsambian Klod, Kota Denpasar, Bali, Indonesia no 7', '-8.6681273', '115.18169149999994', 100, 100, 1, 1, 1, 'family 100', 2, '2016-12-21 19:41:10', '2017-05-26 14:26:29', NULL),
(17, 'lst17', 'Rumah Minimalis Kerobokan', 'dijual', 'rumah', 800000000, 'Bali', 'Denpasar', 'Kerobokan, Kabupaten Badung, Bali, Indonesia', '-8.651221199999998', '115.16223630000002', 100, 80, 1, 1, 1, '- Modern\r\n- Minimalis', 3, '2016-12-21 19:46:56', '2017-07-05 23:07:51', NULL),
(18, 'lst18', 'Ruko 3 Lantai dekat Pasar Badung', 'dijual', 'ruko', 50000000, 'Bali', 'Badung', 'Pasar Badung, Dauh Puri Kangin, Kota Denpasar, Bali, Indonesia', '-8.656546580789643', '115.21237500244672', 100, 80, 2, 1, 1, '-24 jam full Security', 4, '2016-12-21 20:04:38', '2017-05-26 14:26:41', NULL),
(19, 'lst19', 'Ruko Strategis Pusat Kota Jakarta', 'disewa', 'ruko', 111000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', 1000, 700, 55, 50, 100, '- full furniture', 1, '2016-12-21 20:15:37', '2017-05-26 14:26:44', NULL),
(20, 'lst20', 'Gedung Perkantoran Pusat Kota Jakarta', 'dijual', 'gedung', 30000000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', 1000, 700, 55, 50, 100, '- Fasilitas premium \r\n- Lokasi strategis', 2, '2016-12-21 20:16:16', '2017-07-04 00:41:26', NULL),
(21, 'lst21', 'Perkantoran High venue Jakarta Pusat', 'disewa', 'perkantoran', 150500000, 'Jakarta', 'Jakarta Pusat', 'Gedung Bursa Efek Indonesia, Senayan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.223559709560551', '106.80813927909844', 800, 600, 60, 60, 120, '- Full security sistem \r\n- Free Maintenance Bill', 3, '2016-12-23 22:11:55', '2017-07-05 16:32:33', NULL),
(22, 'lst22', 'Gedung Perkantoran Kemang', 'disewa', 'perkantoran', 100000000, 'Jakarta', 'Jakarta Selatan', 'Kemang Icon by Alila, Bangka, Kota Jakarta Selatan, Jakarta Raya, Indonesia', '-6.255591523485944', '106.81475853677057', 500, 300, 10, 10, 20, '- Kawasan Tenang dan nyaman\r\n- Standar Fasilitas Internasional', 4, '2016-12-23 22:15:01', '2017-05-26 14:26:52', NULL),
(23, 'lst23', 'Tanah Kosong Padang Sambian', 'dijual', 'tanah', 300000000, 'Bali', 'Kuta', 'Padangsambian, Kota Denpasar, Bali, Indonesia no 89', '-8.6546221', '115.18595170000003', 300, 0, 0, 0, 0, '- Surat Lengkap', 1, '2016-12-27 19:31:18', '2017-05-26 14:27:48', NULL),
(24, 'lst24', 'Tanah Rawa Daerah Serangan', 'dijual', 'tanah', 500000000, 'Bali', 'Denpasar', 'Jalan Rawa-rawa, Serangan, Kota Denpasar, Bali, Indonesia no 33', '-8.734714429762585', '115.23011543383791', 500, 0, 0, 0, 0, '- surat lengkap', 2, '2016-12-27 19:34:32', '2017-07-03 10:36:37', NULL),
(26, 'lst25', 'Gudang Barang Strategis Depok', 'dijual', 'gudang', 1300000000, 'Jawa Barat', 'Depok', 'Jalan Pusat Gudang no 77', '-6.364270647289123', '106.86221840527344', 700, 600, 2, 0, 2, '- Keamanan 24 Jam', 3, '2017-01-01 15:54:04', '2017-07-05 23:09:58', NULL),
(27, 'lst27', 'Gudang Barang Strategis Bekasi', 'disewa', 'gudang', 50000000, 'Jawa Barat', 'Bekasi', 'Jalan Gudang Ratu no99c', '-6.232429896450983', '107.00837641640624', 1200, 900, 2, 3, 3, '', 4, '2017-01-01 15:56:59', '2017-05-26 14:28:00', NULL),
(28, 'lst28', 'Apartement dibilangan Sanur', 'dijual', 'apartemen', 150000000, 'Bali', 'Denpasar', 'Jalan Danau Tamblingan no 55 Sanur Bali', '-8.694737', '115.26301420000004', 150, 150, 1, 2, 2, 'Fasilitas ISO Eropa', 2, '2017-05-18 23:42:13', '2017-05-26 14:28:02', NULL),
(29, 'lst29', 'Rumah Tipe 38', 'disewa', 'rumah', 1200000000, 'Bali', 'Kuta', 'Jl Muding Mekar No 11 F, Kerobokan, Badung, Bali', '-8.65011358262249', '115.17551176190182', 150, 150, 2, 2, 2, 'One way Gate System\r\nSecuruty 24 Jam', 2, '2017-05-20 13:19:12', '2017-05-26 14:28:04', NULL),
(30, 'lst30', 'Perumahan Kesambi Raya', 'disewa', 'rumah', 1300000000, 'Bali', 'Badung', 'Perum Kesambi raya no 9F, Kerobokan, Badung, Bali', '-8.653155100000001', '115.17380730000002', 150, 200, 2, 3, 3, 'Keamanan 24 jam\r\nOne Gate System', 2, '2017-05-20 13:32:04', '2017-05-26 14:28:08', NULL),
(31, 'lst31', 'Villa Mewah di bilangan Sanur', 'dijual', 'villa', 3000000000, 'Bali', 'Sanur', 'Jalan Hang Tuah no 8, Sanur, Denpasar, Bali', '-8.674427542151289', '115.26289072491454', 1000, 700, 2, 7, 3, '- Kolam Renang\r\n- Security 24 Jam\r\n- CCTV\r\n- Fresh Water Tank Stock', 2, '2017-05-20 13:38:01', '2017-07-03 11:12:45', NULL),
(32, 'lst32', 'Rumah Lantai Satu Daerah Pemogan', 'dijual', 'rumah', 700000000, 'Bali', 'Denpasar', 'Jalan Mekar Jaya, Pemogan, Denpasar City, Bali, Indonesia', '-8.705626299999999', '115.20266590000006', 150, 130, 1, 2, 1, '- Garasi\r\n- Air PAM', 16, '2017-07-14 08:59:04', '2017-07-14 08:59:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
