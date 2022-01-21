-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 11:28 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bljr`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `npm` varchar(255) DEFAULT NULL,
  `namamahasiswa` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notlp` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `npm`, `namamahasiswa`, `prodi`, `alamat`, `notlp`, `createdAt`, `updatedAt`) VALUES
(2, '190201014', 'Ilham Ubaidillah', 'Teknik Informatika', 'Pringsewu', '082279003143', '2022-01-14 23:47:30', '2022-01-17 09:41:42'),
(5, '190201031', 'Ghazy', 'Teknik Informatika', 'Bandar Lampung', '083156987622', '2022-01-15 00:00:12', '2022-01-15 00:01:08'),
(6, '190201025', 'Aulia', 'Pendidikan Guru SD', 'Bandar Lampung', '084577342104', '2022-01-15 00:04:43', '2022-01-15 00:06:31'),
(8, '190201020', 'Rian Candra', 'Teknik Kebidanan', 'Pugung', '089765443213', '2022-01-17 09:32:24', '2022-01-17 09:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa2s`
--

CREATE TABLE `mahasiswa2s` (
  `id` int(11) NOT NULL,
  `npm` varchar(255) DEFAULT NULL,
  `namamahasiswa` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa2s`
--

INSERT INTO `mahasiswa2s` (`id`, `npm`, `namamahasiswa`, `prodi`, `createdAt`, `updatedAt`) VALUES
(3, '190201014', 'Ilham Ubaidillah', 'Teknik Informatika', '2022-01-19 23:48:07', '2022-01-19 23:48:07'),
(4, '190201022', 'Rian Candra', 'Teknik Informatika', '2022-01-19 23:49:48', '2022-01-20 00:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `potos`
--

CREATE TABLE `potos` (
  `id` int(11) NOT NULL,
  `idfoods` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potos`
--

INSERT INTO `potos` (`id`, `idfoods`, `path`, `createdAt`, `updatedAt`) VALUES
(2, '2', '0004717.JPG', '2022-01-20 04:36:48', '2022-01-20 04:36:48'),
(3, '3', '0006639.JPG', '2022-01-20 04:45:38', '2022-01-20 04:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Ilham', '$2a$10$u0oDJK192piCd0LjCBWmMempicszk1.8OTrmXWiMTQeLAF2sobqhe', 'ilham@gmail.com', '2022-01-20 06:05:19', '2022-01-20 06:05:19'),
(2, 'Ilhamubai', '$2a$10$psduj7nl6bi2Hh/dejNT/urf.3l1tx05p1/dn3Sew/7m/t79b.ic2', 'ilhamubai@gmail.com', '2022-01-21 01:47:35', '2022-01-21 01:47:35'),
(3, 'RianChan', '$2a$10$BEt9QI.v.WiuhUmRNm3wXOU.sfjwqtbFmawsA9IIdRPswtcVdAL5y', 'rian@gmail.com', '2022-01-21 01:57:00', '2022-01-21 01:57:00'),
(4, 'Ilhamubai', '$2a$10$VPyMZdor0xfRvjryj6N5vulhn5HZ8TDYfpvRsJsXe997l8OZ8AGdS', 'ilham@gmail.com', '2022-01-21 02:16:36', '2022-01-21 02:16:36'),
(5, 'asdfghjkl', '$2a$10$vc2wMNdfbw0UKJvmNqWR/OO7JU0wtrMdvIb8i5hXtGao/8EeKBZvi', 'abcd@gmail.com', '2022-01-21 02:18:18', '2022-01-21 02:18:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa2s`
--
ALTER TABLE `mahasiswa2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potos`
--
ALTER TABLE `potos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa2s`
--
ALTER TABLE `mahasiswa2s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `potos`
--
ALTER TABLE `potos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
