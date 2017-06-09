-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Jun 2017 pada 11.30
-- Versi Server: 10.1.13-MariaDB
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
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `listing` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bookings`
--

INSERT INTO `bookings` (`no`, `id`, `listing`, `customer`, `agent`, `message`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'bk1', 14, 2, 1, 'im interested', 'pending', '2017-06-09 00:00:00', '2017-06-09 00:00:00'),
(31, 'bk31', 14, 2, 1, 'Ex: Saya Booking dengan DP 50%', 'approved', '2017-05-30 17:09:54', '2017-06-02 14:43:24'),
(32, 'bk32', 19, 2, 1, 'Ex: Saya Booking dengan DP 50%', 'approved', '2017-05-30 21:42:48', '2017-06-02 14:42:52'),
(35, 'bk35', 28, 1, 2, 'Saya ingin ketemuan dilokasi', 'approved', '2017-06-02 14:56:16', '2017-06-03 12:53:22'),
(36, 'bk36', 31, 8, 2, 'Ex: Saya Booking dengan DP 50%', 'pending', '2017-06-03 16:25:01', '2017-06-03 16:25:01'),
(37, 'bk37', 26, 8, 3, 'Ex: Saya Booking dengan DP 50%', 'pending', '2017-06-04 00:43:11', '2017-06-04 00:43:11'),
(38, 'bk38', 29, 5, 2, 'Ex: Saya Booking dengan DP 50%', 'approved', '2017-06-06 14:33:11', '2017-06-06 14:35:29'),
(39, 'bk39', 29, 1, 2, 'Ex: Saya Booking dengan DP 50%', 'approved', '2017-06-09 12:49:42', '2017-06-09 12:50:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `crud`
--

CREATE TABLE `crud` (
  `id` varchar(255) NOT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `value2` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `crud`
--

INSERT INTO `crud` (`id`, `value1`, `value2`, `createdAt`, `updatedAt`) VALUES
('p1', 'isi value 1', 'isi value 2', '2016-10-14 12:55:09', '2016-10-14 15:13:45'),
('p100', 'value1 p100 ', 'value2 p100', '2016-11-17 00:25:01', '2016-11-17 00:25:01'),
('P1000', 'Value 1 P1000', 'Value 2 P1000', '2016-11-24 18:18:46', '2016-11-24 18:18:46'),
('p2', 'isi value 1', 'isi value 2', '2016-10-14 13:00:37', '2016-10-15 13:37:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `owner`, `createdAt`, `updatedAt`) VALUES
(3, '921ed129-c07e-451e-8933-bd5079a4afdf.jpg', '/uploads/921ed129-c07e-451e-8933-bd5079a4afdf.jpg', 13, '2016-12-21 19:31:42', '2016-12-21 19:31:42'),
(4, 'd3aa93ab-3d29-4793-af11-66c53c9b68f0.jpg', '/uploads/d3aa93ab-3d29-4793-af11-66c53c9b68f0.jpg', 14, '2016-12-21 19:33:49', '2016-12-24 02:00:49'),
(5, 'ae9f9272-e6cb-4574-b934-8e1be476445c.jpg', '/uploads/ae9f9272-e6cb-4574-b934-8e1be476445c.jpg', 15, '2016-12-21 19:41:10', '2016-12-21 19:41:10'),
(6, 'c5ae2c0c-022a-45ff-9434-b54be681857b.jpg', '/uploads/c5ae2c0c-022a-45ff-9434-b54be681857b.jpg', 16, '2016-12-21 19:45:48', '2016-12-21 19:45:48'),
(7, '57b84fe1-a99c-4752-9af3-2e48703cf234.jpg', '/uploads/57b84fe1-a99c-4752-9af3-2e48703cf234.jpg', 17, '2016-12-21 19:46:56', '2016-12-21 19:46:56'),
(8, '7cdd93e3-5888-432f-9e9b-543f699d2177.png', '/uploads/7cdd93e3-5888-432f-9e9b-543f699d2177.png', 18, '2016-12-21 19:50:21', '2016-12-21 19:50:21'),
(9, '62fe12bc-d226-4456-acb6-3e14152d6074.png', '/uploads/62fe12bc-d226-4456-acb6-3e14152d6074.png', 19, '2016-12-21 19:54:09', '2016-12-21 19:54:09'),
(12, '45ed9705-7396-45ec-9819-f8ce47e6dcbf.jpg', '/uploads/45ed9705-7396-45ec-9819-f8ce47e6dcbf.jpg', 20, '2016-12-21 20:16:16', '2016-12-21 20:16:16'),
(13, 'fb86a1c1-d136-4a43-9711-0199492ad1df.jpg', '/uploads/fb86a1c1-d136-4a43-9711-0199492ad1df.jpg', 21, '2016-12-23 22:11:55', '2016-12-23 22:11:55'),
(14, '69ebf7b6-7ce2-4c28-b9dc-f12c0d801786.png', '/uploads/69ebf7b6-7ce2-4c28-b9dc-f12c0d801786.png', 22, '2016-12-23 22:15:01', '2016-12-23 22:15:01'),
(15, 'a6438305-0aae-4785-ae0b-a335a7948359.jpg', '/uploads/a6438305-0aae-4785-ae0b-a335a7948359.jpg', 23, '2016-12-27 19:31:18', '2016-12-27 19:31:18'),
(16, '78850efd-4d8b-4b90-a733-14c1c4f3cf65.jpg', '/uploads/78850efd-4d8b-4b90-a733-14c1c4f3cf65.jpg', 24, '2016-12-27 19:34:32', '2016-12-27 19:34:32'),
(18, '797b4adf-5c31-4d1c-92ec-018ea9eae358.jpg', '/uploads/797b4adf-5c31-4d1c-92ec-018ea9eae358.jpg', 26, '2017-01-01 15:54:04', '2017-01-01 15:54:04'),
(19, '5233368a-9237-448b-9cd3-1411124b83af.JPG', '/uploads/5233368a-9237-448b-9cd3-1411124b83af.JPG', 27, '2017-01-01 15:56:59', '2017-01-01 15:56:59'),
(20, '9fe3d221-aa15-4ccf-a635-1d04d30d3b3b.jpg', '/uploads/9fe3d221-aa15-4ccf-a635-1d04d30d3b3b.jpg', 28, '2017-05-18 23:42:13', '2017-05-18 23:42:13'),
(21, '9295cf78-f0d9-4a38-b369-6c714c2aea33.jpg', '/uploads/9295cf78-f0d9-4a38-b369-6c714c2aea33.jpg', 29, '2017-05-20 13:19:12', '2017-05-20 13:19:12'),
(22, '291dad68-31fc-45e6-bded-d64c6f0d84af.jpg', '/uploads/291dad68-31fc-45e6-bded-d64c6f0d84af.jpg', 30, '2017-05-20 13:32:04', '2017-05-20 13:32:04'),
(23, '08cd1e6c-2674-4cd8-82cb-54cec5a4f644.jpg', '/uploads/08cd1e6c-2674-4cd8-82cb-54cec5a4f644.jpg', 31, '2017-05-20 13:38:01', '2017-05-20 13:38:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `listings`
--

CREATE TABLE `listings` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lotSize` varchar(255) DEFAULT NULL,
  `buildingSize` varchar(255) DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `baths` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `sold_or_rented` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `listings`
--

INSERT INTO `listings` (`no`, `id`, `title`, `status`, `type`, `price`, `province`, `city`, `address`, `lat`, `lng`, `lotSize`, `buildingSize`, `floors`, `beds`, `baths`, `description`, `agent`, `createdAt`, `updatedAt`, `sold_or_rented`) VALUES
(14, 'p14', 'Rumah Tepi di Sawah Kesambi Raya', 'dijual', 'rumah', 500000, 'Bali', 'Kuta Utara', 'Perum Kesambi Raya no 77', '-8.653635', '115.1719873', '120', '100', 1, 1, 1, 'View Bagus Landscape Sawah asri', 1, '2016-12-21 19:33:49', '2017-05-26 14:26:13', NULL),
(15, 'p15', 'Rumah 100', 'dijual', 'rumah', 100000000, 'Bali', 'Denpasar', 'Bagus Jaya Residence, Padangsambian Klod, Kota Denpasar, Bali, Indonesia no 7', '-8.6681273', '115.18169149999994', '100', '100', 1, 1, 1, 'family 100', 2, '2016-12-21 19:41:10', '2017-05-26 14:26:29', NULL),
(17, 'p17', 'Rumah Minimalis Kerobokan', 'dijual', 'rumah', 100500000, 'Bali', 'Denpasar', 'Kerobokan, Kabupaten Badung, Bali, Indonesia', '-8.651221199999998', '115.16223630000002', '100', '80', 1, 1, 1, '- Modern\r\n- Minimalis', 3, '2016-12-21 19:46:56', '2017-05-26 14:26:38', NULL),
(18, 'p18', 'Ruko 3 Lantai dekat Pasar Badung', 'dijual', 'ruko', 50000000, 'Bali', 'Badung', 'Pasar Badung, Dauh Puri Kangin, Kota Denpasar, Bali, Indonesia', '-8.656546580789643', '115.21237500244672', '100', '80', 2, 1, 1, '-24 jam full Security', 4, '2016-12-21 20:04:38', '2017-05-26 14:26:41', NULL),
(19, 'p19', 'Ruko Strategis Pusat Kota Jakarta', 'disewa', 'ruko', 111000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', '1000', '700', 55, 50, 100, '- full furniture', 1, '2016-12-21 20:15:37', '2017-05-26 14:26:44', NULL),
(20, 'p20', 'Gedung Perkantoran Pusat Kota Jakarta', 'dijual', 'gedung', 2100000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', '1000', '700', 55, 50, 100, '- Fasilitas premium \r\n- Lokasi strategis', 2, '2016-12-21 20:16:16', '2017-05-26 14:26:46', NULL),
(21, 'p21', 'Perkantoran High venue Jakarta Pusat', 'disewa', 'perkantoran', 150000000, 'Jakarta', 'Jakarta Pusat', 'Gedung Bursa Efek Indonesia, Senayan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.223559709560551', '106.80813927909844', '800', '600', 60, 60, 120, '- Full security sistem \r\n- Free Maintenance Bill', 3, '2016-12-23 22:11:55', '2017-05-26 14:26:50', NULL),
(22, 'p22', 'Gedung Perkantoran Kemang', 'disewa', 'perkantoran', 100000000, 'Jakarta', 'Jakarta Selatan', 'Kemang Icon by Alila, Bangka, Kota Jakarta Selatan, Jakarta Raya, Indonesia', '-6.255591523485944', '106.81475853677057', '500', '300', 10, 10, 20, '- Kawasan Tenang dan nyaman\r\n- Standar Fasilitas Internasional', 4, '2016-12-23 22:15:01', '2017-05-26 14:26:52', NULL),
(23, 'p23', 'Tanah Kosong Padang Sambian', 'dijual', 'tanah', 300000000, 'Bali', 'Kuta', 'Padangsambian, Kota Denpasar, Bali, Indonesia no 89', '-8.6546221', '115.18595170000003', '300', '0', 0, 0, 0, '- Surat Lengkap', 1, '2016-12-27 19:31:18', '2017-05-26 14:27:48', NULL),
(24, 'p24', 'Tanah Rawa Daerah Serangan', 'dijual', 'tanah', 50000000, 'Bali', 'Denpasar', 'Jalan Rawa-rawa, Serangan, Kota Denpasar, Bali, Indonesia no 33', '-8.734714429762585', '115.23011543383791', '500', '0', 0, 0, 0, '- surat lengkap', 2, '2016-12-27 19:34:32', '2017-05-26 14:27:50', NULL),
(26, 'p25', 'Gudang Barang Strategis Depok', 'dijual', 'gudang', 30000000, 'Jawa Barat', 'Depok', 'Jalan Pusat Gudang no 77', '-6.364270647289123', '106.86221840527344', '700', '600', 2, 0, 0, '- Keamanan 24 Jam', 3, '2017-01-01 15:54:04', '2017-05-26 14:27:58', NULL),
(27, 'p27', 'Gudang Barang Strategis Bekasi', 'disewa', 'gudang', 50000000, 'Jawa Barat', 'Bekasi', 'Jalan Gudang Ratu no99c', '-6.232429896450983', '107.00837641640624', '1200', '900', 2, 3, 3, '', 4, '2017-01-01 15:56:59', '2017-05-26 14:28:00', NULL),
(28, 'p28', 'Apartement dibilangan Sanur', 'dijual', 'apartemen', 150000000, 'Bali', 'Denpasar', 'Jalan Danau Tamblingan no 55 Sanur Bali', '-8.694737', '115.26301420000004', '150', '150', 1, 2, 2, 'Fasilitas ISO Eropa', 2, '2017-05-18 23:42:13', '2017-05-26 14:28:02', NULL),
(29, 'p29', 'Rumah Tipe 38', 'disewa', 'rumah', 1200000000, 'Bali', 'Kuta', 'Jl Muding Mekar No 11 F, Kerobokan, Badung, Bali', '-8.65011358262249', '115.17551176190182', '150', '150', 2, 2, 2, 'One way Gate System\r\nSecuruty 24 Jam', 2, '2017-05-20 13:19:12', '2017-05-26 14:28:04', NULL),
(30, 'p30', 'Perumahan Kesambi Raya', 'disewa', 'rumah', 1300000000, 'Bali', 'Badung', 'Perum Kesambi raya no 9F, Kerobokan, Badung, Bali', '-8.653155100000001', '115.17380730000002', '150', '200', 2, 3, 3, 'Keamanan 24 jam\r\nOne Gate System', 2, '2017-05-20 13:32:04', '2017-05-26 14:28:08', NULL),
(31, 'p31', 'Villa Mewah di bilangan Sanur', 'dijual', 'villa', 310000000, 'Bali', 'Denpasar', 'Jalan Hang Tuah no 8, Sanur, Denpasar, Bali', '-8.674427542151289', '115.26289072491454', '500', '700', 2, 7, 3, '- Kolam Renang\r\n- Security 24 Jam\r\n- CCTV\r\n- Fresh Water Tank Stock', 2, '2017-05-20 13:38:01', '2017-05-26 14:28:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `listings_types`
--

CREATE TABLE `listings_types` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `listings_types`
--

INSERT INTO `listings_types` (`no`, `id`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'pt1', 'rumah', '2017-05-20 13:47:00', '2017-05-20 13:47:00'),
(2, 'pt2', 'tanah', '2017-05-20 13:47:13', '2017-05-20 13:47:13'),
(3, 'pt3', 'ruko', '2017-05-20 13:47:21', '2017-05-20 13:47:21'),
(4, 'pt4', 'gudang', '2017-05-20 13:47:32', '2017-05-20 13:47:32'),
(5, 'pt5', 'ruang usaha', '2017-05-20 13:47:42', '2017-05-20 13:47:42'),
(6, 'pt6', 'villa', '2017-05-20 13:47:51', '2017-05-20 13:47:51'),
(9, 'pt7', 'apartemen', '2017-05-20 13:50:46', '2017-05-20 13:50:46'),
(11, 'pt8', 'pabrik', '2017-05-20 13:51:13', '2017-05-20 13:51:13'),
(12, 'pt9', 'perkantoran', '2017-05-20 13:51:31', '2017-05-20 13:51:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maps`
--

CREATE TABLE `maps` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`no`, `id`, `sender`, `receiver`, `message`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'msg2', 3, 2, 'Hi Tomomi Saya tertarik dengan properti anda', '2017-06-08 04:00:02', '2017-06-08 04:00:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `listing` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `accountOwner` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `paidOn` date DEFAULT NULL,
  `fromBank` varchar(255) DEFAULT NULL,
  `toBank` varchar(255) DEFAULT NULL,
  `dp` int(11) DEFAULT NULL,
  `remainingPayment` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`no`, `id`, `listing`, `customer`, `agent`, `accountOwner`, `email`, `phone`, `paidOn`, `fromBank`, `toBank`, `dp`, `remainingPayment`, `amount`, `message`, `status`, `proof`, `createdAt`, `updatedAt`) VALUES
(1, 'pyt1', 14, 2, 1, 'Tomomi Ogawa', 'tomomi_ogw@gmail.com', '087722867908', '2017-06-06', 'bca', 'mandiri', NULL, NULL, 1500000000, 'Pembayaran Lunas', 'belum bayar', '', '2017-05-29 00:00:00', '2017-06-06 14:36:36'),
(9, 'pyt2', 28, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-05-30 01:43:18', '2017-05-30 01:43:18'),
(10, 'pyt10', 31, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-05-30 01:52:23', '2017-05-30 01:52:23'),
(11, 'pyt11', 29, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-05-30 01:54:41', '2017-05-30 01:54:41'),
(12, 'pyt12', 28, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-05-31 09:53:53', '2017-05-31 09:53:53'),
(13, 'pyt13', 31, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-06-02 14:20:52', '2017-06-02 14:20:52'),
(14, 'pyt14', 19, 2, 1, 'Tomomi Ogawa', 'tomomi_ogw@gmail.com', '087722867908', '2017-06-05', 'mandiri', 'mandiri', NULL, NULL, 1500000000, NULL, 'pending dp', '', '2017-06-02 14:42:52', '2017-06-05 17:50:15'),
(15, 'pyt15', 14, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-06-02 14:43:24', '2017-06-02 14:43:24'),
(16, 'pyt16', 28, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-06-03 12:53:22', '2017-06-03 12:53:22'),
(17, 'pyt17', 29, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-06-06 14:35:30', '2017-06-06 14:35:30'),
(18, 'pyt18', 29, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum bayar', NULL, '2017-06-09 12:50:15', '2017-06-09 12:50:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reports`
--

CREATE TABLE `reports` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `listing` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `idNumber` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`no`, `id`, `username`, `role`, `password`, `name`, `phone`, `email`, `idNumber`, `avatar`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'u1', 'frizadiga', 'agent', 'root', 'frizadiga', '087722867907', 'frizadiga@gmail.com', NULL, '5cf153a3-93c2-4059-ad4d-859761cdfe17.jpg', 'on', '2017-05-19 02:11:51', '2017-05-19 02:20:20'),
(2, 'u2', 'timogawa', 'agent', 'root', 'Tomomi Ogawa', '087722867908', 'tomomi_ogw@gmail.com', NULL, 'avatar-tomomi.jpg', 'on', '2016-12-25 22:30:28', '2017-05-19 02:27:50'),
(3, 'u3', 'haruna', 'agent', 'root', 'Rina Suzuki', '087722867909', 'haruna@gmail.com', NULL, '3e745bc7-bf2f-4d26-b251-7b1da2434d44.jpg', 'on', '2016-12-26 04:35:44', '2017-05-19 02:27:37'),
(4, 'u4', 'mami', 'agent', 'root', 'Mami Sasazaki', '087722867910', 'mamiguitar@gmail.com', NULL, 'avatar-mami.jpg', 'on', '2017-05-02 20:05:00', '2017-05-19 02:22:36'),
(5, 'u5', 'rina', 'member', 'root', 'Rina Suzuki', '087722867911', 'urarina@gmail.com', NULL, 'avatar-rina.jpg', 'on', '2017-05-08 01:08:45', '2017-05-08 01:08:45'),
(8, 'u0', 'frizadygates', 'administrator', 'root', 'Frizadiga', '087722867907', 'frizadiga@gmail.com', NULL, 'avatar-friza.jpg', 'on', '2016-12-23 21:09:57', '2017-05-02 22:56:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `listings_types`
--
ALTER TABLE `listings_types`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `listings_types`
--
ALTER TABLE `listings_types`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
