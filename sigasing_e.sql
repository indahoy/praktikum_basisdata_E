-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 21. Desember 2021 jam 17:31
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sigasing_e`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagiannn`
--

CREATE TABLE IF NOT EXISTS `bagiannn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bagian` varchar(255) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `lokasi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `bagiannn`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian_karyawan`
--

CREATE TABLE IF NOT EXISTS `bagian_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bagian_id` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `bagian_karyawan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_karyawan`
--

CREATE TABLE IF NOT EXISTS `gaji_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan_id` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `bulan` char(2) NOT NULL,
  `gapok` double NOT NULL,
  `tunjangan` double NOT NULL,
  `uang_makan` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `gaji_karyawan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(255) NOT NULL,
  `gapok_jabatan` double NOT NULL,
  `tunjangan_jabatan` double NOT NULL,
  `uang_makan_perhari` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `jabatan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_karyawan`
--

CREATE TABLE IF NOT EXISTS `jabatan_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `jabatan_karyawan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pengguna_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `karyawan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `lokasi`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `peran` enum('ADMIN','USER') NOT NULL,
  `login_terakhir` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `pengguna`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE IF NOT EXISTS `presensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `keterangan` enum('HADIR','SAKIT','IZIN','CUTI','LIBUR','TIDAK HADIR') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `presensi`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
