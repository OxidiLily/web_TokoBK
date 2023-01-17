-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2023 pada 17.30
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `stok`, `gambar`, `id_kategori`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Yellow Sweater', 75000, 8, 'product-1.jpg', 2, 1, '2022-06-26 07:40:57', 0, '2022-12-14 07:40:57'),
(2, 'Dusty Pink Crop Sweater', 100000, 6, 'product-2.jpg', 2, 1, '2022-12-14 07:45:33', 0, '2022-12-14 07:45:33'),
(3, 'Green Jacket', 250000, 2, 'product-3.jpg', 1, 1, '2022-12-14 07:52:11', 0, '2022-12-14 07:52:11'),
(4, 'Grey Syal', 50000, 16, 'product-4.jpg', 3, 1, '2022-12-14 07:52:11', 0, '2022-12-14 07:52:11'),
(5, 'Yellow Bag', 150000, 44, 'product-7.jpg', 3, 1, '2022-12-14 07:54:44', 0, '2022-12-14 07:54:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `Kode_voucher` varchar(10) NOT NULL,
  `Tanggal_mulai_berlaku` date NOT NULL,
  `Tanggal_akhir_berlaku` date NOT NULL,
  `Besar_diskon` tinyint(2) NOT NULL,
  `Aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id`, `Kode_voucher`, `Tanggal_mulai_berlaku`, `Tanggal_akhir_berlaku`, `Besar_diskon`, `Aktif`) VALUES
(1, 'a112019117', '2022-12-17', '2023-01-21', 5, 1),
(2, 'asd10000', '2022-12-17', '2023-01-19', 20, 0),
(3, 'asd11354', '2022-12-22', '2023-01-17', 30, 1),
(4, '4654asd', '2022-12-22', '2022-12-31', 50, 1),
(5, 'kau1234', '2023-01-17', '2023-01-31', 20, 1),
(6, '1235jghj', '2023-01-18', '2023-04-30', 10, 1),
(7, 'hfghfg331', '2023-01-17', '2023-04-30', 12, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Men', 1, '2022-12-14 07:39:28', NULL, NULL),
(2, 'Women', 1, '2022-12-14 07:39:28', NULL, NULL),
(3, 'Kid', 0, '2022-12-14 07:40:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `id_barang`, `id_user`, `komentar`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 'Yeay', 1, '2022-12-14 22:07:14', NULL, NULL),
(2, 1, 1, 'wow', 1, '2022-12-15 04:29:43', NULL, NULL),
(3, 1, 1, 'wow', 1, '2022-12-15 04:30:13', NULL, NULL),
(4, 2, 1, 'wow', 1, '2022-12-15 04:30:27', NULL, NULL),
(5, 1, 1, 'wow', 1, '2022-12-15 04:52:42', NULL, NULL),
(6, 1, 1, 'asd', 1, '2022-12-16 20:36:50', NULL, NULL),
(7, 2, 1, 'asdaas', 1, '2022-12-16 20:43:42', NULL, NULL),
(8, 5, 1, 'asd', 1, '2022-12-16 20:46:50', NULL, NULL),
(9, 3, 1, 'asd', 1, '2022-12-16 20:47:00', NULL, NULL),
(10, 3, 1, 'asd', 1, '2022-12-16 22:02:51', NULL, NULL),
(11, 4, 1, 'asdaaaa', 1, '2022-12-16 22:03:12', NULL, NULL),
(12, 2, 1, 'wew', 1, '2022-12-22 15:33:54', NULL, NULL),
(13, 4, 1, 'wew', 1, '2022-12-22 15:34:29', NULL, NULL),
(14, 2, 1, 'bagus', 1, '2022-12-23 10:18:12', NULL, NULL),
(15, 5, 1, 'tasnya bagus', 1, '2022-12-23 10:21:08', NULL, NULL),
(16, 1, 1, 'yeay', 1, '2022-12-23 10:28:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `id_pembeli`, `jumlah`, `total_harga`, `alamat`, `ongkir`, `status`, `created_by`, `created_date`, `updated_by`, `updated_data`) VALUES
(11, 5, 1, 1, 163000, 'asd', 13000, 0, 1, '2022-12-16 20:45:43', NULL, NULL),
(12, 5, 1, 1, 168000, 'sss', 18000, 0, 1, '2022-12-16 20:46:20', NULL, NULL),
(13, 3, 1, 1, 289000, 'ddd', 39000, 0, 1, '2022-12-16 20:46:43', NULL, NULL),
(14, 2, 1, 1, 145000, 'asdasd', 45000, 0, 1, '2022-12-16 20:51:34', NULL, NULL),
(15, 1, 1, 1, 155000, 'dddd', 80000, 0, 1, '2022-12-16 20:51:53', NULL, NULL),
(16, 4, 1, 1, 68000, 'dddd', 18000, 0, 1, '2022-12-16 20:52:17', NULL, NULL),
(17, 5, 1, 1, 185000, 'bbbb', 35000, 0, 1, '2022-12-16 20:52:48', NULL, NULL),
(18, 4, 1, 1, 95000, 'asw', 45000, 0, 1, '2022-12-16 20:53:33', NULL, NULL),
(19, 3, 1, 1, 265000, 'ds', 15000, 0, 1, '2022-12-16 20:53:35', NULL, NULL),
(20, 2, 1, 1, 145000, 'ssss', 45000, 0, 1, '2022-12-16 22:05:52', NULL, NULL),
(21, 2, 1, 1, 113000, 'dddf', 13000, 0, 1, '2022-12-17 11:12:03', NULL, NULL),
(22, 2, 1, 1, 130000, 'asd', 30000, 0, 1, '2022-12-17 15:03:36', NULL, NULL),
(23, 2, 1, 1, 61000, 'asd', 11000, 0, 1, '2022-12-22 15:33:47', NULL, NULL),
(24, 4, 1, 1, 80000, 'jk', 45000, 0, 1, '2022-12-22 15:34:24', NULL, NULL),
(25, 2, 1, 1, 119000, 'Tugu', 19000, 0, 1, '2022-12-23 10:17:46', NULL, NULL),
(26, 5, 1, 1, 167000, 'Tugu', 17000, 0, 1, '2022-12-23 10:20:49', NULL, NULL),
(27, 1, 1, 1, 69500, 'Tugu', 17000, 0, 1, '2022-12-23 10:28:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `avatar` text NOT NULL,
  `role` int(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `avatar`, `role`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'asd1000', '879838f601e9a4859c750d7055200984', '63996947ca5190.88131598', '', 0, 0, '2022-12-14 00:12:23', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pembeli` (`id_pembeli`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
