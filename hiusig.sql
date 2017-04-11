-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Apr 2017 pada 04.08
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
(10, '547a3dfd-dbc7-4e33-9dce-7a0862dcc344.png', '/uploads/547a3dfd-dbc7-4e33-9dce-7a0862dcc344.png', 18, '2016-12-21 20:04:38', '2016-12-21 20:04:38'),
(11, '423df02b-87ca-4940-ab26-9a9c412fef9e.jpg', '/uploads/423df02b-87ca-4940-ab26-9a9c412fef9e.jpg', 19, '2016-12-21 20:15:37', '2016-12-21 20:15:37'),
(12, '45ed9705-7396-45ec-9819-f8ce47e6dcbf.jpg', '/uploads/45ed9705-7396-45ec-9819-f8ce47e6dcbf.jpg', 20, '2016-12-21 20:16:16', '2016-12-21 20:16:16'),
(13, 'fb86a1c1-d136-4a43-9711-0199492ad1df.jpg', '/uploads/fb86a1c1-d136-4a43-9711-0199492ad1df.jpg', 21, '2016-12-23 22:11:55', '2016-12-23 22:11:55'),
(14, '69ebf7b6-7ce2-4c28-b9dc-f12c0d801786.png', '/uploads/69ebf7b6-7ce2-4c28-b9dc-f12c0d801786.png', 22, '2016-12-23 22:15:01', '2016-12-23 22:15:01'),
(15, 'a6438305-0aae-4785-ae0b-a335a7948359.jpg', '/uploads/a6438305-0aae-4785-ae0b-a335a7948359.jpg', 23, '2016-12-27 19:31:18', '2016-12-27 19:31:18'),
(16, '78850efd-4d8b-4b90-a733-14c1c4f3cf65.jpg', '/uploads/78850efd-4d8b-4b90-a733-14c1c4f3cf65.jpg', 24, '2016-12-27 19:34:32', '2016-12-27 19:34:32'),
(18, '797b4adf-5c31-4d1c-92ec-018ea9eae358.jpg', '/uploads/797b4adf-5c31-4d1c-92ec-018ea9eae358.jpg', 26, '2017-01-01 15:54:04', '2017-01-01 15:54:04'),
(19, '5233368a-9237-448b-9cd3-1411124b83af.JPG', '/uploads/5233368a-9237-448b-9cd3-1411124b83af.JPG', 27, '2017-01-01 15:56:59', '2017-01-01 15:56:59');

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
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `properties`
--

INSERT INTO `properties` (`no`, `id`, `title`, `status`, `type`, `price`, `province`, `city`, `address`, `lat`, `lng`, `lotSize`, `buildingSize`, `floor`, `bed`, `bath`, `description`, `createdAt`, `updatedAt`) VALUES
(14, 'p14', 'Rumah Tepi Sawah Kesambi Raya', 'dijual', 'rumah', 500000, 'Bali', 'Kuta Utara', 'Perum Kesambi Raya no 77', '-8.653635', '115.1719873', '1', '1', 1, 1, 1, 'View Bagus Landscape Sawah asri', '2016-12-21 19:33:49', '2016-12-28 04:29:36'),
(15, 'p15', 'Rumah 100', 'dijual', 'rumah', 100000000, 'Bali', 'Denpasar', 'Bagus Jaya Residence, Padangsambian Klod, Kota Denpasar, Bali, Indonesia no 7', '-8.6681273', '115.18169149999994', '100', '100', 1, 1, 1, 'family 100', '2016-12-21 19:41:10', '2016-12-27 12:41:17'),
(17, 'p17', 'Rumah Minimalis Kerobokan', 'dijual', 'rumah', 100500000, 'Bali', 'Denpasar', 'Kerobokan, Kabupaten Badung, Bali, Indonesia', '-8.651221199999998', '115.16223630000002', '1', '1', 1, 1, 1, '- Modern\r\n- Minimalis', '2016-12-21 19:46:56', '2016-12-27 12:42:08'),
(18, 'p18', 'Ruko 3 Lantai dekat Pasar Badung', 'dijual', 'ruko', 50000000, 'Bali', 'Badung', 'Pasar Badung, Dauh Puri Kangin, Kota Denpasar, Bali, Indonesia', '-8.656546580789643', '115.21237500244672', '100', '80', 2, 1, 1, '-24 jam full Security', '2016-12-21 20:04:38', '2016-12-27 01:52:49'),
(19, 'p19', 'Ruko Strategis Pusat Kota Jakarta', 'disewa', 'ruko', 111000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', '1000', '700', 55, 50, 100, '- full furniture', '2016-12-21 20:15:37', '2016-12-24 02:08:44'),
(20, 'p20', 'Gedung Perkantoran Pusat Kota Jakarta', 'dijual', 'perkantoran', 2100000000, 'Jakarta', 'Jakarta', 'Jalan Jakarta Besar no 60 Jakarta Pusat, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.186486399999999', '106.83409110000002', '1000', '700', 55, 50, 100, '- Fasilitas premium \r\n- Lokasi strategis', '2016-12-21 20:16:16', '2016-12-25 15:04:26'),
(21, 'p21', 'Perkantoran High venue Jakarta Pusat', 'disewa', 'perkantoran', 150000000, 'Jakarta', 'Jakarta Pusat', 'Gedung Bursa Efek Indonesia, Senayan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', '-6.223559709560551', '106.80813927909844', '800', '600', 60, 60, 120, '- Full security sistem \r\n- Free Maintenance Bill', '2016-12-23 22:11:55', '2016-12-25 15:05:15'),
(22, 'p22', 'Gedung Perkantoran Kemang', 'disewa', 'perkantoran', 100000000, 'Jakarta', 'Jakarta Selatan', 'Kemang Icon by Alila, Bangka, Kota Jakarta Selatan, Jakarta Raya, Indonesia', '-6.255591523485944', '106.81475853677057', '500', '300', 10, 10, 20, '- Kawasan Tenang dan nyaman\r\n- Standar Fasilitas Internasional', '2016-12-23 22:15:01', '2016-12-25 15:05:05'),
(23, 'p23', 'Tanah Kosong Padang Sambian', 'dijual', 'tanah', 300000000, 'Bali', 'Kuta', 'Padangsambian, Kota Denpasar, Bali, Indonesia no 89', '-8.6546221', '115.18595170000003', '300', '1', 0, 0, 0, '- Surat Lengkap', '2016-12-27 19:31:18', '2016-12-27 19:31:18'),
(24, 'p24', 'Tanah Rawa Daerah Serangan', 'dijual', 'tanah', 50000000, 'Bali', 'Denpasar', 'Jalan Rawa-rawa, Serangan, Kota Denpasar, Bali, Indonesia no 33', '-8.734714429762585', '115.23011543383791', '500', '0', 0, 0, 0, '- surat lengkap', '2016-12-27 19:34:32', '2016-12-27 19:34:32'),
(26, 'p25', 'Gudang Barang Strategis Depok', 'disewa', 'gudang', 30000000, 'Jawa Barat', 'Depok', 'Jalan Pusat Gudang no 77', '-6.364270647289123', '106.86221840527344', '700', '600', 2, 0, 0, '- Keamanan 24 Jam', '2017-01-01 15:54:04', '2017-01-01 15:54:04'),
(27, 'p27', 'Gudang Barang Strategis Bekasi', 'disewa', 'gudang', 50000000, 'Jawa Barat', 'Bekasi', 'Jalan Gudang Ratu no99c', '-6.232429896450983', '107.00837641640624', '1200', '900', 2, 3, 3, '', '2017-01-01 15:56:59', '2017-01-01 15:56:59');

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
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`no`, `id`, `username`, `role`, `password`, `name`, `email`, `createdAt`, `updatedAt`) VALUES
(4, 'u3', 'frizadygates', 'administrator', 'root', 'frizadiga', 'frizadiga@gmail.com', '2016-12-23 21:09:57', '2016-12-25 19:56:16'),
(8, 'u5', 'timogawa', 'member', 'root', 'Tomomi Ogawa', 'tomomi_ogw@gmail.com', '2016-12-25 22:30:28', '2016-12-26 02:16:32'),
(9, 'u9', 'rinax', 'agen', 'root', 'Rina Suzuki', 'rinax@gmail.com', '2016-12-26 04:35:44', '2016-12-26 04:35:44');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `properties`
--
ALTER TABLE `properties`
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
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
