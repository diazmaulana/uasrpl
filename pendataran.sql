-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 03:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppsekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `namalengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'angga', 'angga', ''),
(5, 'vina', 'vina', 'vina av'),
(6, 'vina1', 'vina', 'vinaa');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idguru` int(5) NOT NULL,
  `namaguru` varchar(40) DEFAULT NULL,
  `mata_pelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `namaguru`, `mata_pelajaran`) VALUES
(10, 'Ari', 'penjaskes'),
(12, 'yudi', 'siskom'),
(63, 'Anggi', 'Sistem Oprasi'),
(1234, 'vina', 'Sistem Oprasi');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(10) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `tahunajaran`, `biaya`) VALUES
(31, '20200001', 'rohmat', 'VIIA', '2020/2021', 300000),
(32, '20200002', 'yudi', 'VIIA', '2020/2021', 300000),
(33, '20200003', 'ahmad', 'VIIA', '2020/2021', 300000),
(34, '20200004', 'sita', 'VIIA', '2020/2021', 300000),
(35, '20200005', 'rahayu', 'VIIA', '2020/2021', 300000),
(36, '20200006', 'salsa', 'VIIA', '2020/2021', 300000),
(37, '20200007', 'devia', 'VIIA', '2020/2021', 300000),
(41, '20020009', 'Rudini', 'VIIA', '2017/2018', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `idsiswa` int(10) NOT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `nobayar` varchar(10) DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL,
  `idadmin` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`idsiswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `idadmin`) VALUES
(38, '2017-07-10', 'Juli 2017', NULL, NULL, 250000, NULL, NULL),
(38, '2017-08-10', 'Agustus 2017', NULL, NULL, 250000, NULL, NULL),
(38, '2017-09-10', 'September 2017', NULL, NULL, 250000, NULL, NULL),
(38, '2017-10-10', 'Oktober 2017', NULL, NULL, 250000, NULL, NULL),
(38, '2017-11-10', 'November 2017', NULL, NULL, 250000, NULL, NULL),
(38, '2017-12-10', 'Desember 2017', NULL, NULL, 250000, NULL, NULL),
(38, '2018-01-10', 'Januari 2018', NULL, NULL, 250000, NULL, NULL),
(38, '2018-02-10', 'Februari 2018', NULL, NULL, 250000, NULL, NULL),
(38, '2018-03-10', 'Maret 2018', NULL, NULL, 250000, NULL, NULL),
(38, '2018-04-10', 'April 2018', NULL, NULL, 250000, NULL, NULL),
(38, '2018-05-10', 'Mei 2018', NULL, NULL, 250000, NULL, NULL),
(38, '2018-06-10', 'Juni 2018', NULL, NULL, 250000, NULL, NULL),
(39, '2017-07-10', 'Juli 2017', NULL, NULL, 300000, NULL, NULL),
(39, '2017-08-10', 'Agustus 2017', NULL, NULL, 300000, NULL, NULL),
(39, '2017-09-10', 'September 2017', NULL, NULL, 300000, NULL, NULL),
(39, '2017-10-10', 'Oktober 2017', NULL, NULL, 300000, NULL, NULL),
(39, '2017-11-10', 'November 2017', NULL, NULL, 300000, NULL, NULL),
(39, '2017-12-10', 'Desember 2017', NULL, NULL, 300000, NULL, NULL),
(39, '2018-01-10', 'Januari 2018', NULL, NULL, 300000, NULL, NULL),
(39, '2018-02-10', 'Februari 2018', NULL, NULL, 300000, NULL, NULL),
(39, '2018-03-10', 'Maret 2018', NULL, NULL, 300000, NULL, NULL),
(39, '2018-04-10', 'April 2018', NULL, NULL, 300000, NULL, NULL),
(39, '2018-05-10', 'Mei 2018', NULL, NULL, 300000, NULL, NULL),
(39, '2018-06-10', 'Juni 2018', NULL, NULL, 300000, NULL, NULL),
(40, '2017-07-10', 'Juli 2017', NULL, NULL, 300000, NULL, NULL),
(40, '2017-08-10', 'Agustus 2017', NULL, NULL, 300000, NULL, NULL),
(40, '2017-09-10', 'September 2017', NULL, NULL, 300000, NULL, NULL),
(40, '2017-10-10', 'Oktober 2017', NULL, NULL, 300000, NULL, NULL),
(40, '2017-11-10', 'November 2017', NULL, NULL, 300000, NULL, NULL),
(40, '2017-12-10', 'Desember 2017', NULL, NULL, 300000, NULL, NULL),
(40, '2018-01-10', 'Januari 2018', NULL, NULL, 300000, NULL, NULL),
(40, '2018-02-10', 'Februari 2018', NULL, NULL, 300000, NULL, NULL),
(40, '2018-03-10', 'Maret 2018', NULL, NULL, 300000, NULL, NULL),
(40, '2018-04-10', 'April 2018', NULL, NULL, 300000, NULL, NULL),
(40, '2018-05-10', 'Mei 2018', NULL, NULL, 300000, NULL, NULL),
(40, '2018-06-10', 'Juni 2018', NULL, NULL, 300000, NULL, NULL),
(41, '2017-07-10', 'Juli 2017', NULL, NULL, 250000, NULL, NULL),
(41, '2017-08-10', 'Agustus 2017', NULL, NULL, 250000, NULL, NULL),
(41, '2017-09-10', 'September 2017', NULL, NULL, 250000, NULL, NULL),
(41, '2017-10-10', 'Oktober 2017', NULL, NULL, 250000, NULL, NULL),
(41, '2017-11-10', 'November 2017', NULL, NULL, 250000, NULL, NULL),
(41, '2017-12-10', 'Desember 2017', NULL, NULL, 250000, NULL, NULL),
(41, '2018-01-10', 'Januari 2018', NULL, NULL, 250000, NULL, NULL),
(41, '2018-02-10', 'Februari 2018', NULL, NULL, 250000, NULL, NULL),
(41, '2018-03-10', 'Maret 2018', NULL, NULL, 250000, NULL, NULL),
(41, '2018-04-10', 'April 2018', NULL, NULL, 250000, NULL, NULL),
(41, '2018-05-10', 'Mei 2018', NULL, NULL, 250000, NULL, NULL),
(41, '2018-06-10', 'Juni 2018', NULL, NULL, 250000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `kelas` varchar(10) NOT NULL,
  `idguru` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`kelas`, `idguru`) VALUES
('VIIB', 10),
('VIID', 10),
('VIIC', 63);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `fkguru` (`idguru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `fkguru` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
