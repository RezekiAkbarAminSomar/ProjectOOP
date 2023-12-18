-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2023 pada 17.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perawatan_wajah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `nama`, `tanggal`, `keterangan`) VALUES
(19, 'Rezeki Akbar Somar', '18-12-2023', 'Hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `noHp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `nama`, `alamat`, `umur`, `noHp`) VALUES
(1, 'Rezeki Akbar Somar', 'Jl. Mawar Indah, Suku, Malang', '24', '081245678812'),
(6, 'Kurnawan', 'Jl. Merdeka, Surabaya', '27', '081255474839');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_layanan`
--

CREATE TABLE `tb_layanan` (
  `id` int(11) NOT NULL,
  `namaLayanan` varchar(50) NOT NULL,
  `kategoriLayanan` varchar(50) NOT NULL,
  `hargaLayanan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_layanan`
--

INSERT INTO `tb_layanan` (`id`, `namaLayanan`, `kategoriLayanan`, `hargaLayanan`) VALUES
(8, 'Injeksi Flek', 'Injeksi Treatment', 150000),
(14, 'Infuse Whitening', 'Infuse Treatment', 450000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_layanan`
--
ALTER TABLE `tb_layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
