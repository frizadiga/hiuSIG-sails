-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Mei 2017 pada 14.29
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
  `property` int(11) DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('', '', '', '2016-10-16 16:01:33', '2016-10-16 16:01:33'),
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
  `idOwner` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `idOwner`, `createdAt`, `updatedAt`) VALUES
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
(20, '9fe3d221-aa15-4ccf-a635-1d04d30d3b3b.jpg', '/uploads/9fe3d221-aa15-4ccf-a635-1d04d30d3b3b.jpg', 28, '2017-05-18 23:42:13', '2017-05-18 23:42:13');

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

--
-- Dumping data untuk tabel `maps`
--

INSERT INTO `maps` (`id`, `name`, `lat`, `lng`, `createdAt`, `updatedAt`) VALUES
('m1', 'Place 1', '101', '201', '2016-10-09 10:36:25', '2016-10-09 10:36:25'),
('m2', 'Place 2', '102', '202', '2016-10-10 12:43:09', '2016-10-10 12:43:09'),
('m3', 'Place 3', '103', '203', '2016-10-11 14:54:31', '2016-10-11 14:54:31');

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
(1, 'm1', 2, 1, 'Saya tertarik pada properti anda', '2017-05-16 20:28:42', '2017-05-16 20:28:42'),
(2, 'm2', 3, 1, 'Saya ingin bertanya tentang properti anda', '2017-05-18 01:09:01', '2017-05-18 01:09:01'),
(5, 'm3', 2, 1, 'saya ingin ketemuan untuk membahas properti anda', '2017-05-18 17:09:00', '2017-05-18 17:09:00'),
(6, 'm6', 1, 2, 'saya ingin bertemu membahas masalah harga', '2017-05-18 17:12:14', '2017-05-18 17:12:14'),
(7, 'm7', 2, 1, 'Bisa Ketemuan? saya tertarik banget dengan rumah ini', '2017-05-18 17:23:37', '2017-05-18 17:23:37'),
(8, 'm8', 4, 3, 'hai rina saya tertarik untuk bertemu bicara harga', '2017-05-18 17:27:07', '2017-05-18 17:27:07'),
(9, 'm9', 2, 1, 'bisa info lebih lanjut ke no 087722867908 ?', '2017-05-18 20:16:30', '2017-05-18 20:16:30'),
(18, 'm10', 1, 2, 'hi', '2017-05-19 00:50:41', '2017-05-19 00:50:41'),
(19, 'm19', 1, 2, 'hai tomomi', '2017-05-19 00:55:43', '2017-05-19 00:55:43'),
(20, 'm20', 1, 2, 'halo timo', '2017-05-19 00:57:07', '2017-05-19 00:57:07'),
(21, 'm21', 1, 2, 'hi', '2017-05-19 01:11:05', '2017-05-19 01:11:05'),
(22, 'm22', 1, 3, 'hi rina', '2017-05-19 01:13:13', '2017-05-19 01:13:13'),
(23, 'm23', 1, 3, 'hi rina', '2017-05-19 01:16:32', '2017-05-19 01:16:32'),
(24, 'm24', 1, 3, 'hai rina how do u do?', '2017-05-19 01:24:17', '2017-05-19 01:24:17'),
(25, 'm25', 1, 3, 'test', '2017-05-19 01:26:36', '2017-05-19 01:26:36'),
(26, 'm26', 1, 3, 'test', '2017-05-19 01:27:22', '2017-05-19 01:27:22'),
(27, 'm27', 1, 3, 'ok', '2017-05-19 01:28:38', '2017-05-19 01:28:38'),
(28, 'm28', 2, 1, 'hi friza', '2017-05-19 02:34:28', '2017-05-19 02:34:28'),
(29, 'm29', 2, 1, 'hi friza', '2017-05-19 02:37:37', '2017-05-19 02:37:37'),
(30, 'm30', 2, 1, 'test', '2017-05-19 02:39:31', '2017-05-19 02:39:31'),
(31, 'm31', 2, 1, 'test friza', '2017-05-19 02:39:53', '2017-05-19 02:39:53'),
(32, 'm32', 1, 2, 'pm harga ya', '2017-05-19 02:41:03', '2017-05-19 02:41:03'),
(33, 'm33', 1, 2, 'hai timo saya tertarik membantu listing kamu', '2017-05-19 02:55:41', '2017-05-19 02:55:41'),
(34, 'm34', 0, 2, 'hai tomomi', '2017-05-19 13:52:44', '2017-05-19 13:52:44'),
(35, 'm35', 1, 2, 'ruko baru ya?', '2017-05-19 17:08:54', '2017-05-19 17:08:54'),
(36, 'm36', 1, 2, 'ruko ya?', '2017-05-19 17:11:12', '2017-05-19 17:11:12'),
(37, 'm37', 1, 2, 'ruko ya?', '2017-05-19 17:12:36', '2017-05-19 17:12:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `properties`
--

CREATE TABLE `properties` (
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
  `floor` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `bath` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `properties`
--

INSERT INTO `properties` (`no`, `id`, `title`, `status`, `type`, `price`, `province`, `city`, `address`, `lat`, `lng`, `lotSize`, `buildingSize`, `floor`, `bed`, `bath`, `description`, `idUser`, `createdAt`, `updatedAt`) VALUES
(14, 'p14', 'Rumah Tepi di Sawah Kesambi Raya', 'dijual', 'rumah', 500000, 'Bali', 'Kuta Utara', 'Perum Kesambi Raya no 77', '-8.653635', '115.1719873', '1', '1', 1, 1, 1, 'View Bagus Landscape Sawah asri', 1, '2016-12-21 19:33:49', '2017-05-02 00:58:37'),
(15, 'p15', 'Rumah 100', 'dijual', 'rumah', 100000000, 'Bali', 'Denpasar', 'Bagus Jaya Residence, Padangsambian Klod, Kota Denpasar, Bali, Indonesia no 7', '-8.6681273', '115.18169149999994', '100', '100', 1, 1, 1, 'family 100', 2, '2016-12-21 19:41:10', '2016-12-27 12:41:17'),
(17, 'p17', 'Rumah Minimalis Kerobokan', 'dijual', 'rumah', 100500000, 'Bali', 'Denpasar', 'Kerobokan, Kabupaten Badung, Bali, Indonesia', '-8.651221199999998', '115.16223630000002', '1', '1', 1, 1, 1, '- Modern\r\n- Minimalis', 3, '2016-12-21 19:46:56', '2016-12-27 12:42:08'),
(18, 'p18', 'Ruko 3 Lantai dekat Pasar Badung', 'dijual', 'ruko', 50000000, 'Bali', 'Badung', 'Pasar Badung, Dauh Puri Kangin, Kota Denpasar, Bali, Indonesia', '-8.656546580789643', '115.21237500244672', '100', '80', 2, 1, 1, '-24 jam full Security', 1, '2016-12-21 20:04:38', '2016-12-27 01:52:49'),
(19, 'p19', 'Ruko Strategis Pusat Kota Jakarta', 'disewa', 'ruko', 111000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', '1000', '700', 55, 50, 100, '- full furniture', 2, '2016-12-21 20:15:37', '2016-12-24 02:08:44'),
(20, 'p20', 'Gedung Perkantoran Pusat Kota Jakarta', 'dijual', 'perkantoran', 2100000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', '1000', '700', 55, 50, 100, '- Fasilitas premium \r\n- Lokasi strategis', 3, '2016-12-21 20:16:16', '2016-12-25 15:04:26'),
(21, 'p21', 'Perkantoran High venue Jakarta Pusat', 'disewa', 'perkantoran', 150000000, 'Jakarta', 'Jakarta Pusat', 'Gedung Bursa Efek Indonesia, Senayan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.223559709560551', '106.80813927909844', '800', '600', 60, 60, 120, '- Full security sistem \r\n- Free Maintenance Bill', 1, '2016-12-23 22:11:55', '2016-12-25 15:05:15'),
(22, 'p22', 'Gedung Perkantoran Kemang', 'disewa', 'perkantoran', 100000000, 'Jakarta', 'Jakarta Selatan', 'Kemang Icon by Alila, Bangka, Kota Jakarta Selatan, Jakarta Raya, Indonesia', '-6.255591523485944', '106.81475853677057', '500', '300', 10, 10, 20, '- Kawasan Tenang dan nyaman\r\n- Standar Fasilitas Internasional', 2, '2016-12-23 22:15:01', '2016-12-25 15:05:05'),
(23, 'p23', 'Tanah Kosong Padang Sambian', 'dijual', 'tanah', 300000000, 'Bali', 'Kuta', 'Padangsambian, Kota Denpasar, Bali, Indonesia no 89', '-8.6546221', '115.18595170000003', '300', '1', 0, 0, 0, '- Surat Lengkap', 3, '2016-12-27 19:31:18', '2016-12-27 19:31:18'),
(24, 'p24', 'Tanah Rawa Daerah Serangan', 'dijual', 'tanah', 50000000, 'Bali', 'Denpasar', 'Jalan Rawa-rawa, Serangan, Kota Denpasar, Bali, Indonesia no 33', '-8.734714429762585', '115.23011543383791', '500', '0', 0, 0, 0, '- surat lengkap', 1, '2016-12-27 19:34:32', '2016-12-27 19:34:32'),
(26, 'p25', 'Gudang Barang Strategis Depok', 'disewa', 'gudang', 30000000, 'Jawa Barat', 'Depok', 'Jalan Pusat Gudang no 77', '-6.364270647289123', '106.86221840527344', '700', '600', 2, 0, 0, '- Keamanan 24 Jam', 2, '2017-01-01 15:54:04', '2017-01-01 15:54:04'),
(27, 'p27', 'Gudang Barang Strategis Bekasi', 'disewa', 'gudang', 50000000, 'Jawa Barat', 'Bekasi', 'Jalan Gudang Ratu no99c', '-6.232429896450983', '107.00837641640624', '1200', '900', 2, 3, 3, '', 3, '2017-01-01 15:56:59', '2017-01-01 15:56:59'),
(28, 'p28', 'Apartement dibilangan Sanur', 'dijual', 'apartemen', 150000000, 'Bali', 'Denpasar', 'Jalan Danau Tamblingan no 55 Sanur Bali', '-8.694737', '115.26301420000004', '150', '150', 1, 2, 2, 'Fasilitas ISO Eropa', 2, '2017-05-18 23:42:13', '2017-05-19 13:34:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `propertiestypes`
--

CREATE TABLE `propertiestypes` (
  `no` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reports`
--

CREATE TABLE `reports` (
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
  `avatar` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`no`, `id`, `username`, `role`, `password`, `name`, `phone`, `email`, `avatar`, `createdAt`, `updatedAt`) VALUES
(1, 'u1', 'frizadiga', 'agent', 'root', 'frizadiga', '087722867907', 'frizadiga@gmail.com', '5cf153a3-93c2-4059-ad4d-859761cdfe17.jpg', '2017-05-19 02:11:51', '2017-05-19 02:20:20'),
(2, 'u2', 'timogawa', 'agent', 'root', 'Tomomi Ogawa', '087722867908', 'tomomi_ogw@gmail.com', 'avatar-tomomi.jpg', '2016-12-25 22:30:28', '2017-05-19 02:27:50'),
(3, 'u3', 'rina', 'agent', 'root', 'Rina Suzuki', '087722867909', 'urarina@gmail.com', 'avatar-rina.jpg', '2016-12-26 04:35:44', '2017-05-19 02:27:37'),
(4, 'u4', 'mami', 'agent', 'root', 'Mami Sasazaki', '087722867910', 'mamiguitar@gmail.com', 'avatar-mami.jpg', '2017-05-02 20:05:00', '2017-05-19 02:22:36'),
(5, 'u5', 'haruna', 'member', 'root', 'Haruna Ono', '087722867911', 'haruna@gmail.com', '3e745bc7-bf2f-4d26-b251-7b1da2434d44.jpg', '2017-05-08 01:08:45', '2017-05-08 01:08:45'),
(8, 'u0', 'frizadygates', 'administrator', 'root', 'Frizadiga', '087722867907', 'frizadiga@gmail.com', 'avatar-friza.jpg', '2016-12-23 21:09:57', '2017-05-02 22:56:05');

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
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `propertiestypes`
--
ALTER TABLE `propertiestypes`
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
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `propertiestypes`
--
ALTER TABLE `propertiestypes`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
