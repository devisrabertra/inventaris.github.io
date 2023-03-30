-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2023 pada 05.11
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventarisbarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Id_Barang` int(15) NOT NULL,
  `Id_Kategori` int(15) NOT NULL,
  `Device_Type` varchar(45) NOT NULL,
  `Merek` varchar(45) NOT NULL,
  `Gambar_Barang` varchar(500) NOT NULL,
  `Serial_Number` varchar(500) NOT NULL,
  `Size` varchar(500) NOT NULL,
  `Id_Ruangan` int(15) NOT NULL,
  `Id_Kondisi` int(15) NOT NULL,
  `Asal_Perolehan` varchar(35) NOT NULL,
  `Tahun_Perolehan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Id_Barang`, `Id_Kategori`, `Device_Type`, `Merek`, `Gambar_Barang`, `Serial_Number`, `Size`, `Id_Ruangan`, `Id_Kondisi`, `Asal_Perolehan`, `Tahun_Perolehan`) VALUES
(6, 0, 'Router 4300 Series', 'Wavecom | Storage', 'http://localhost/invetarisbarang/uploads/files/us4ej8_67n01b5w.JPG', '354060010353254', 'DRC01 | 35 | 2 | 2', 2, 3, 'BANK RIAU SYARIAH', '2022'),
(7, 0, 'Thinksystem 3550 M5', 'Lenovo | Server', 'http://localhost/invetarisbarang/uploads/files/3xpkjhtg9i7mc_e.JPG', 'J3024004', 'DRC01 | 26 | 8 | 2', 2, 3, 'BANK RIAU SYARIAH', '2023'),
(8, 0, 'Blade Center H', 'IBM | Flex Server IBM', 'http://localhost/invetarisbarang/uploads/files/0gqni26lkbcofme.JPG', '99E5457', 'C1A1 - 0102 | 3 | 1 | 2', 2, 3, 'MDS', '2022'),
(9, 0, 'System Storage DS 5020', 'IBM | System Storage', 'http://localhost/invetarisbarang/uploads/files/4fys_zhq392pbam.JPG', '78K1D6X', 'C1A1 - 0102 | 12 | 1 | 2', 2, 3, 'MDS', '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `Id_Kategori` int(15) NOT NULL,
  `Kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`Id_Kategori`, `Kategori`) VALUES
(1, 'BANK NOBU'),
(2, 'BANK RIAU SYARIAH'),
(3, 'BANK JTRUSH'),
(4, 'MDS'),
(5, 'MPPA'),
(6, 'SILOAM'),
(7, 'VDI CLOUD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `Id_Kondisi` int(15) NOT NULL,
  `Kondisi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`Id_Kondisi`, `Kondisi`) VALUES
(1, 'AMBER'),
(2, 'OFF'),
(3, 'ON');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(1, 1, 'barang', 'list'),
(2, 1, 'barang', 'view'),
(3, 1, 'barang', 'add'),
(4, 1, 'barang', 'edit'),
(5, 1, 'barang', 'editfield'),
(6, 1, 'barang', 'delete'),
(7, 1, 'barang', 'import_data'),
(8, 1, 'kategori', 'list'),
(9, 1, 'kategori', 'view'),
(10, 1, 'kategori', 'add'),
(11, 1, 'kategori', 'edit'),
(12, 1, 'kategori', 'editfield'),
(13, 1, 'kategori', 'delete'),
(14, 1, 'kategori', 'import_data'),
(15, 1, 'kondisi', 'list'),
(16, 1, 'kondisi', 'view'),
(17, 1, 'kondisi', 'add'),
(18, 1, 'kondisi', 'edit'),
(19, 1, 'kondisi', 'editfield'),
(20, 1, 'kondisi', 'delete'),
(21, 1, 'kondisi', 'import_data'),
(22, 1, 'ruang', 'list'),
(23, 1, 'ruang', 'view'),
(24, 1, 'ruang', 'add'),
(25, 1, 'ruang', 'edit'),
(26, 1, 'ruang', 'editfield'),
(27, 1, 'ruang', 'delete'),
(28, 1, 'ruang', 'import_data'),
(29, 1, 'user', 'list'),
(30, 1, 'user', 'view'),
(31, 1, 'user', 'add'),
(32, 1, 'user', 'edit'),
(33, 1, 'user', 'editfield'),
(34, 1, 'user', 'delete'),
(35, 1, 'user', 'import_data'),
(36, 1, 'user', 'userregister'),
(37, 1, 'user', 'accountedit'),
(38, 1, 'user', 'accountview'),
(39, 1, 'role_permissions', 'list'),
(40, 1, 'role_permissions', 'view'),
(41, 1, 'role_permissions', 'add'),
(42, 1, 'role_permissions', 'edit'),
(43, 1, 'role_permissions', 'editfield'),
(44, 1, 'role_permissions', 'delete'),
(45, 1, 'roles', 'list'),
(46, 1, 'roles', 'view'),
(47, 1, 'roles', 'add'),
(48, 1, 'roles', 'edit'),
(49, 1, 'roles', 'editfield'),
(50, 1, 'roles', 'delete'),
(51, 2, 'barang', 'list'),
(52, 2, 'barang', 'view'),
(53, 2, 'barang', 'add'),
(54, 2, 'barang', 'edit'),
(55, 2, 'barang', 'editfield'),
(56, 2, 'barang', 'delete'),
(57, 2, 'barang', 'import_data'),
(58, 2, 'kategori', 'list'),
(59, 2, 'kategori', 'view'),
(60, 2, 'kategori', 'add'),
(61, 2, 'kategori', 'edit'),
(62, 2, 'kategori', 'editfield'),
(63, 2, 'kategori', 'delete'),
(64, 2, 'kategori', 'import_data'),
(65, 2, 'kondisi', 'list'),
(66, 2, 'kondisi', 'view'),
(67, 2, 'kondisi', 'add'),
(68, 2, 'kondisi', 'edit'),
(69, 2, 'kondisi', 'editfield'),
(70, 2, 'kondisi', 'delete'),
(71, 2, 'kondisi', 'import_data'),
(72, 2, 'ruang', 'list'),
(73, 2, 'ruang', 'view'),
(74, 2, 'ruang', 'add'),
(75, 2, 'ruang', 'edit'),
(76, 2, 'ruang', 'editfield'),
(77, 2, 'ruang', 'delete'),
(78, 2, 'ruang', 'import_data'),
(79, 2, 'user', 'userregister'),
(80, 2, 'user', 'accountedit'),
(81, 2, 'user', 'accountview');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `Id_Ruangan` int(15) NOT NULL,
  `Ruangan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`Id_Ruangan`, `Ruangan`) VALUES
(1, 'LINTAS ARTA'),
(2, 'GTN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2021-10-11 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'admin', '$2y$10$Wvu.cV.LcuwVylhaRSjuZ.DqwmBgOfEZ2Ng3qbtsppQ8UXJHstkZ2', 'Administrator', 'Administrator@gmail.com', '', NULL, NULL, '2021-10-11 00:00:00', NULL, 1),
(2, 'devis', '$2y$10$c7dklb0ZYq0J95sw6/R40e7iztQpN7NSBCBG6XpCk0XthNA7XFyAG', 'devis', 'user@gmail.com', 'http://localhost/invetarisbarang/uploads/files/ny0o5murb9wth4f.jpg', NULL, NULL, '2021-10-11 00:00:00', NULL, 2),
(3, 'fahli', '$2y$10$7NGgbolahs0C8YTWWFXM8u56md2W00SOduwR3149uB9I4cPV0CG22', 'fahli', 'fahli@visionet.co.id', 'http://localhost/invetarisbarang/uploads/files/tcigv68eyzs3ra_.png', NULL, NULL, '2021-10-11 00:00:00', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Id_Barang`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Id_Kategori`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`Id_Kondisi`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`Id_Ruangan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `Id_Barang` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `Id_Kategori` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `Id_Kondisi` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `Id_Ruangan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
