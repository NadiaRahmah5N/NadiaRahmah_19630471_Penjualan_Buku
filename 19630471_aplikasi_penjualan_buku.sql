-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2022 pada 11.26
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19630471_aplikasi_penjualan_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `kota_penerbit` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `kota_penerbit`) VALUES
('PN001', 'Budi Budiman', 'Jakarta'),
('PN002', 'Arif SantaI', 'Palembang'),
('PN003', 'Putri Rahayu Wati', 'Banjarmasin'),
('PN004', 'Anjasmara', 'Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` varchar(10) NOT NULL,
  `nama_pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_buku` varchar(10) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `penerbit` varchar(15) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_buku`, `judul_buku`, `kategori`, `pengarang`, `deskripsi`, `penerbit`, `tahun_terbit`, `harga`) VALUES
('BK001', 'Menuju senja', 'Novel', 'Budi Budiman', '-', 'Erlangga', 2000, 50000),
('BK002', 'Aplikasi Web', 'Pengetahuan', 'Putri Ayu', '-', 'Yudisthira', 2001, 100000),
('BK003', 'Anjay Bersama', 'Novel', 'Joni Sanuri', '-', 'Yudisthira', 2010, 70000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_order` varchar(10) NOT NULL,
  `tgl_order` date NOT NULL,
  `nama_kostumer` varchar(50) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `harga_buku` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_order`, `tgl_order`, `nama_kostumer`, `judul_buku`, `harga_buku`, `diskon`, `total_bayar`) VALUES
('001', '2021-12-26', 'BOWO', 'ANJAY', 120000, 15000, 15000),
('002', '2021-12-26', 'PUTRI', 'WANGI - WANGI', 50000, 0, 50000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
