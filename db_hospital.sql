-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2022 pada 18.54
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
-- Database: `db_hospital`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `username` varchar(30) NOT NULL,
  `password` varchar(4) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `password`, `jenis_kelamin`) VALUES
('admin', '0123', 'L'),
('vrnca', '6029', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `nik` bigint(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `usia` varchar(3) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(14) NOT NULL,
  `keluhan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`nik`, `nama`, `jenis_kelamin`, `usia`, `alamat`, `no_hp`, `keluhan`) VALUES
(6112345678901234, 'Aira Fahrina', 'P', '24', 'Jl. Anggur No. 12', 6281345678901, 'Meriang, Flu'),
(6112398678771234, 'Bima Satria', 'L', '19', 'Jl. Sirsak No. 05', 6281343468901, 'Kulit Gatal '),
(6121299865771541, 'Firdaus Lammu', 'L', '35', 'Jl. Semangka No. 17', 6285243668789, 'Mata Merah '),
(6122345678901145, 'Aina Jihana', 'P', '28', 'Jl. Mangga No. 10', 6281345671234, 'Batuk, Pilek'),
(6128790678771234, 'Bisma Saputra', 'L', '25', 'Jl. Apel No. 15', 6285243468016, 'Telinga '),
(6128899678771543, 'Celina Tiara', 'P', '28', 'Jl. Jeruk No. 07', 6285289668017, 'Telinga '),
(6138896678776678, 'Desyana P', 'P', '29', 'Jl. Mangis No. 19', 62853678678912, 'Batuk, Pilek'),
(6139864172776900, 'Firlazin Fautz', 'L', '26', 'Jl. Melon No. 23', 62857578617817, 'Meriang'),
(6139864172776901, 'Firlazin Fautz', 'L', '26', 'Jl. Melon No. 23', 62857578617812, 'Meriang'),
(6139896172776612, 'Erin Agustiana', 'P', '19', 'Jl. Jeruk No. 27', 62852678667812, 'Batuk, Pilek'),
(6141378627769013, 'Ilyas Sapotra', 'L', '27', 'Jl. Pepaya N0. 18', 62858178947812, 'Kulit Gatal'),
(6143782173668993, 'Irham Bahrudin', 'L', '26', 'Jl. Anggur N0. 01', 62851498783212, 'Tenggorokan'),
(6153781737698111, 'Jemimah ', 'P', '25', 'Jl. Apel N0. 21', 62851567783212, 'Batuk'),
(6158782116683293, 'Juan Fabrio', 'L', '18', 'Jl. Kelengkeng N0. 21', 628542123383212, 'Pilek'),
(6168282121698293, 'Jeslina Putri', 'P', '28', 'Jl. Sirsak N0. 12', 628126123383212, 'Telingga '),
(6168321416145392, 'Kasih Harinata', 'P', '34', 'Jl. Mangga N0. 02', 6281963112388212, 'Meriang, Batuk, Pilek'),
(6168921216128393, 'Jessica Floren', 'P', '29', 'Jl. Semangka N0. 02', 6281261137382212, 'Kulit Gatal '),
(6178921216128344, 'Lasya', 'P', '30', 'Jl. Jeruk N0. 13', 6281461137381212, 'Kulit Gatal '),
(6279921216128344, 'Saputra Haliman', 'L', '31', 'Jl. Mangis N0. 13', 6281901137141212, 'Kulit Gatal '),
(6279925126158314, 'Saputri Intaran', 'P', '29', 'Jl. Pepaya N0. 13', 6281912134541212, 'Telingga');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
