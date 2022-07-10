-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2016 at 05:40 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsarpras`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `id_barang` int(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `spesifikasi` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `sumberdana` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `kondisi` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `id_namabarang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_barang`
--

INSERT INTO `tabel_barang` (`id_barang`, `nama`, `spesifikasi`, `lokasi`, `jumlah`, `sumberdana`, `jenis`, `kondisi`, `keterangan`, `tanggal`, `id_namabarang`) VALUES
(5, 'KURSI ', '   KAYU', '   pati', '   94unit', '   BOS', '   Sarana', '   Baru', '   DI BELI BARU', '2022-07-10', '1002'),
(6, 'meja', 'kayu  jati', 'pati', '100unit', 'BOS', 'Sarana', 'Baru', 'beli baru', '2022-07-10', ''),
(7, 'WC ', 'beton ', 'pati', '25barang', 'sekolah', 'prasarana', 'baru', 'beli baru', '0000-00-00', '1001'),
(8, 'PENSIL 2B ', 'pensil kayu', 'kudus', '1000unit', 'bos', 'sarpras', 'baru', 'beli baru', '0000-00-00', ''),
(9, 'AC', 'AC samsung ', 'pati', '25unit', 'bos', 'sarpras', 'baru', 'untuk ruangan', '2022-07-07', ''),
(10, 'drone', 'drone DJI MAVIC pro 5', 'pati', '5unit', 'bos', 'sarpras', 'baru', '5unit  baru', '2022-07-15', ''),
(11, 'Kipas angin', 'Kipasangin dinding', 'pati', '30unit', 'bos', 'sarpras', 'baru', 'bagus', '2022-07-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pinjam`
--

CREATE TABLE `tabel_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `namaygpinjam` varchar(200) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `totalpinjambarangunit` varchar(200) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggaldikembalikan` date NOT NULL,
  `kondisibarangpinjam` varchar(200) NOT NULL,
  `pinjamstatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_pinjam`
--

INSERT INTO `tabel_pinjam` (`id_pinjam`, `namaygpinjam`, `id_barang`, `totalpinjambarangunit`, `tanggalpinjam`, `tanggaldikembalikan`, `kondisibarangpinjam`, `pinjamstatus`) VALUES
(1, 'ridho', 8, '10', '2022-07-13', '2022-07-29', 'bagus', 'ok'),
(2, 'alexz', 5, '10', '2022-07-05', '2022-07-14', 'ok', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `id_supplier` int(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telfon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_supplier`
--

INSERT INTO `tabel_supplier` (`id_supplier`, `nama`, `alamat`, `telfon`) VALUES
(32, 'af', 'af', 'af'),
(33, 'jenaka', 'jenaka', 'jenaka'),
(36, 't', 't', 't'),
(37, 'b', 'b', 'b'),
(38, 'h', 'h', 'h'),
(39, 'sg', 'ash', 'ash'),
(40, '8', '8', '8'),
(41, '8', '8', '8'),
(42, '9', '9', '9'),
(43, '10', '0', '0'),
(44, '10', '0', '0'),
(45, 'sah', 'asjh', 'hjas'),
(46, 'sahwaeiki', ' sahwaeiki', ''),
(47, 'anjas', 'anjas', 'anjas'),
(48, 'coba', 'coba', 'coba'),
(49, 'nadern1', ' nadern', ''),
(50, 'baca', 'baca', 'baca'),
(51, 'a', 'a', 'a'),
(52, 'kipas', 'kipass', 'kipas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `tabel_pinjam`
--
ALTER TABLE `tabel_pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD UNIQUE KEY `namabarangygdipinjam` (`id_barang`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `id_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tabel_pinjam`
--
ALTER TABLE `tabel_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  MODIFY `id_supplier` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_pinjam`
--
ALTER TABLE `tabel_pinjam`
  ADD CONSTRAINT `tabel_pinjam_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tabel_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
