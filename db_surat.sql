-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 03:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_surat`
--

CREATE TABLE `jenis_surat` (
  `id_jenis` int(3) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_surat`
--

INSERT INTO `jenis_surat` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Surat Masuk'),
(2, 'Surat Keluar'),
(4, 'Surat Keputusan'),
(6, 'Surat Perintah Tugas'),
(8, 'Surat Perintah Perjalanan Dinas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(10) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username_admin`, `password`, `gambar`) VALUES
(1, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin.jpg'),
(2, 'admin2', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bagian`
--

CREATE TABLE `tb_bagian` (
  `id_bagian` int(11) NOT NULL,
  `nama_bagian` varchar(120) NOT NULL,
  `nama_lengkap` varchar(70) NOT NULL,
  `tanggal_lahir_bagian` date NOT NULL,
  `alamat` text NOT NULL,
  `no_hp_bagian` varchar(12) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bagian`
--

INSERT INTO `tb_bagian` (`id_bagian`, `nama_bagian`, `nama_lengkap`, `tanggal_lahir_bagian`, `alamat`, `no_hp_bagian`, `gambar`) VALUES
(1, 'WALIKOTA', 'walikota', '2017-05-25', 'Rantau', '081222222222', 'walikota.jpg'),
(2, 'WAKIL WALIKOTA', 'wawali', '2017-11-04', 'Rantau', '081222222222', 'wawali.jpg'),
(3, 'SEKDA', 'SEKDA', '2017-11-10', 'Rantau', '081299101309', 'sekda.jpg'),
(4, 'PLH.SEKDA', 'plh sekda', '2017-11-10', 'Rantau', '087731311111', 'plh sekda.jpg'),
(5, 'ASS.I', 'ass i', '2017-11-10', 'Rantau', '322222222222', 'ass i.jpg'),
(6, 'PLT.ASS.I', 'plt ass i', '2017-11-03', 'Rantau', '233333333333', 'plt ass i.jpg'),
(9, 'UMUM', 'umum', '2017-11-17', 'Rantau', '333333333333', 'umum.jpg'),
(10, 'TU', 'tu', '2017-11-10', 'Rantau', '24224242', 'tu.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sk`
--

CREATE TABLE `tb_sk` (
  `no_sk` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nomorsurat` varchar(45) NOT NULL,
  `tentang` varchar(50) NOT NULL,
  `pengolah` varchar(50) NOT NULL,
  `filesurat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sk`
--

INSERT INTO `tb_sk` (`no_sk`, `jenis_surat`, `tanggal`, `kode`, `nomorsurat`, `tentang`, `pengolah`, `filesurat`) VALUES
(2, 'Surat Keluar', '1970-01-01', '0002', '1112', 'Penetapan Libur', 'Kepala Dinas', '2022-1112.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sppd`
--

CREATE TABLE `tb_sppd` (
  `no_sppd` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nomorsurat` varchar(45) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `pengikut` varchar(50) NOT NULL,
  `filesurat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sppd`
--

INSERT INTO `tb_sppd` (`no_sppd`, `jenis_surat`, `tanggal`, `kode`, `nomorsurat`, `nama`, `tujuan`, `tanggal_berangkat`, `tanggal_kembali`, `keperluan`, `pengikut`, `filesurat`) VALUES
(1, 'Surat Perjalanan', '2022-01-08', '0001', '1111', 'Rina', 'Yogyakarta', '2022-01-01', '2022-01-22', 'tes', 'tes', 'surat.pdf'),
(6, 'Surat Perintah Perjalanan Dinas', '2022-01-22', '0002', '1112', 'Tania', 'Perjalanan', '1970-01-01', '1970-01-01', 'Tugas', 'Anggota', '2022-0002.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spt`
--

CREATE TABLE `tb_spt` (
  `no_spt` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nomorsurat` varchar(45) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `pengikut` varchar(50) NOT NULL,
  `filesurat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_spt`
--

INSERT INTO `tb_spt` (`no_spt`, `jenis_surat`, `tanggal`, `kode`, `nomorsurat`, `nama`, `tujuan`, `tanggal_berangkat`, `tanggal_kembali`, `keperluan`, `pengikut`, `filesurat`) VALUES
(3, 'Surat Perintah Tugas', '2022-01-22', '0003', '1113', 'Aulia Mayrina Rahmi', 'Perintah', '1970-01-01', '1970-01-01', 'Tugas', 'Anggota', '2022-1113.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tanggalkeluar_suratkeluar` datetime NOT NULL,
  `kode_suratkeluar` varchar(10) NOT NULL,
  `nomor_suratkeluar` varchar(45) NOT NULL,
  `nama_bagian` varchar(70) NOT NULL,
  `tanggalsurat_suratkeluar` date NOT NULL,
  `kepada_suratkeluar` varchar(255) NOT NULL,
  `perihal_suratkeluar` text NOT NULL,
  `file_suratkeluar` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id_suratkeluar`, `jenis_surat`, `tanggalkeluar_suratkeluar`, `kode_suratkeluar`, `nomor_suratkeluar`, `nama_bagian`, `tanggalsurat_suratkeluar`, `kepada_suratkeluar`, `perihal_suratkeluar`, `file_suratkeluar`, `operator`, `tanggal_entry`) VALUES
(27, '', '2017-11-15 11:15:00', '411', '3451/WALIKOTA/2017', 'WALIKOTA', '2017-11-15', 'Masyarakat', 'Himbauan Gotong Royong', '2017-3451.pdf', 'admin', '2017-11-18 01:25:31'),
(29, '', '2017-11-15 08:20:00', '851', '3453/TU/2017', 'TU', '2017-11-15', 'Kepala Bagian Tata Usaha', 'Cuti Tahunan ', '2017-3453.pdf', 'admin', '2017-11-18 02:39:32'),
(30, '', '2017-11-14 13:25:00', '915.1', '3454/ADM.PEMB/2017', 'ADM.PEMB', '2017-11-15', 'Walikota', 'Daftar Usulan Proyek', '2017-3454.pdf', 'admin', '2017-11-14 23:29:41'),
(31, '', '2017-11-17 08:30:00', '125.4', '3455/PEM-OTDA/2017', 'PEM-OTDA', '2017-11-16', 'Camat Samarida Seberang', 'Pemekaran Wilayah', '2017-3455.pdf', 'admin', '2017-11-16 02:30:02'),
(35, '', '2017-11-17 08:30:00', '821.1', '3452/TU/2017', 'TU', '2017-11-16', 'Kepala Bagian Lingkup Pemkot Samarinda', 'Pengangkatan Jabatan Pegawai Negeri ', '2017-3452.pdf', 'admin', '2017-11-16 17:35:35'),
(88, '', '2017-11-17 08:45:00', '476.4', '3456/KESRA/2017', 'KESRA', '2017-11-17', 'Lurah SE-KOTA SAMARINDA', 'Peninjauan Kampung KB', '2017-3456.pdf', 'admin', '2017-11-17 02:58:51'),
(90, '', '2017-11-18 08:30:00', '376', '3458/ASSIII/2017', 'ASS.III', '2017-11-18', 'Kontraktor Bangunan', 'Penindakan Bangunan tanpa surat izin mendirikan bangunan', '2017-3458.pdf', 'admin', '2017-11-18 03:19:54'),
(91, '', '2017-11-30 01:00:00', '454', '3457/ORTAL/2017', 'ORTAL', '2017-11-30', 'Lurah SE-KOTA SAMARINDA', 'Pelatihan Kelembagaan Desa', '2017-3457.pdf', 'admin', '2017-11-30 00:01:06'),
(92, '', '2017-12-06 08:17:00', '342', '3459/TU/2017', 'TU', '2017-12-06', 'CAMAT SE-KOTA SAMARINDA', 'pilgub', '2017-3459.pdf', 'admin', '2017-12-06 07:19:29'),
(93, 'Surat Keluar', '2022-01-04 10:17:00', '8888', '3460', 'WAKIL WALIKOTA', '2022-01-16', 'hkb', 'hjk', '2022-3460.pdf', 'admin', '2022-01-16 10:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tanggalmasuk_suratmasuk` datetime NOT NULL DEFAULT current_timestamp(),
  `kode_suratmasuk` varchar(10) NOT NULL,
  `nomorurut_suratmasuk` varchar(7) NOT NULL,
  `nomor_suratmasuk` varchar(25) NOT NULL,
  `tanggalsurat_suratmasuk` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `kepada_suratmasuk` varchar(255) NOT NULL,
  `perihal_suratmasuk` text NOT NULL,
  `file_suratmasuk` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi1` varchar(50) NOT NULL,
  `tanggal_disposisi1` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi2` varchar(50) DEFAULT NULL,
  `tanggal_disposisi2` varchar(25) DEFAULT NULL,
  `disposisi3` varchar(50) DEFAULT NULL,
  `tanggal_disposisi3` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmasuk`, `jenis_surat`, `tanggalmasuk_suratmasuk`, `kode_suratmasuk`, `nomorurut_suratmasuk`, `nomor_suratmasuk`, `tanggalsurat_suratmasuk`, `pengirim`, `kepada_suratmasuk`, `perihal_suratmasuk`, `file_suratmasuk`, `operator`, `tanggal_entry`, `disposisi1`, `tanggal_disposisi1`, `disposisi2`, `tanggal_disposisi2`, `disposisi3`, `tanggal_disposisi3`) VALUES
(2, 'Surat Masuk', '2017-09-20 13:00:00', '900', '4518', '050/588/300.01', '2017-09-20', 'BAPPEDA KOTA SAMARINDA', 'Sekretaris Daerah', 'Penyampaian Usulan Bantuan Keuangan Pada APBD Prov.Kaltim Tahun 2018\r\n', '2017-4518.pdf', 'admin', '2017-11-18 03:30:06', 'SEKDA', '2017-09-20 14:30:00', 'PLT.ASS.II', '2017-09-28 09:00:00', 'ADM.PEMB', '2017-09-29 10:00:00'),
(3, '', '2017-09-20 14:00:00', '010', '4519', '036/B/HMJELEKTRO/IX/2017', '2017-09-18', 'FORUM KOMUNIKASI HIMPUNAN MAHASISWA ELEKTRO INDONESIA WILAYAH XIII KALIMANTAN', 'UMUM', 'Permohonan\r\n', '2017-4519.pdf', 'admin2', '2017-11-14 23:43:44', 'UMUM', '2017-09-22 11:00:00', '', '1970-01-01 07:00:00', 'UMUM', '2017-09-22 11:05:00'),
(5, '', '2017-09-21 15:10:00', '660', '4520', '660.2/1539/100.14', '2017-09-19', 'DINAS LINGKUNGAN HIDUP KOTA SAMARINDA', 'Sekretaris Daerah', 'Penting', '2017-4520.pdf', 'admin2', '2017-11-14 23:58:01', 'SEKDA', '2017-09-21 23:00:00', 'PLT.ASS.II', '2017-09-24 21:00:00', 'EKONOMI & SDA', '2017-09-25 09:00:00'),
(6, '', '2017-09-26 10:00:00', '061', '4521', '061/4382/SJ', '2017-09-20', 'MENDAGRI RI', 'Organisasi', 'Surat Edaran Tentang Mekanisme Layanan Administrasi Kemendagri\r\n', '2017-4521.pdf', 'admin', '2017-12-02 21:44:11', 'ASS.III', '2017-09-26 15:00:00', '', '1970-01-01 07:00:00', 'ORTAL', '2017-09-27 11:30:00'),
(7, '', '2017-09-25 14:00:00', '503', '4522', '503/744/100.26', '2017-09-25', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA SAMARINDA', 'PLH SEKDA', 'Tindak Lanjut Permohonan Penghapusan Denda Retribusi IMB PT.Borneo Inti Graha\r\n', '2017-4522.pdf', 'admin', '2017-12-06 00:32:23', 'PLH.SEKDA', '2017-09-26 10:00:00', '', '1970-01-01 07:00:00', 'HUKUM', '2017-09-27 15:00:00'),
(8, '', '2017-12-06 08:12:00', '454', '4523', '4121/wawali/2017', '2017-12-06', 'pdam', 'wawali', 'air bersih', '2022-4523.pdf', 'admin', '2022-01-16 09:00:05', 'WAKIL WALIKOTA', '2017-12-14 08:14:00', 'ADM.PEMB', '2017-12-12 08:14:00', 'PEM-OTDA', '2017-12-13 08:15:00'),
(9, '', '2022-01-15 10:18:00', '666', '4524 ', '99', '2022-01-15', 'mm', 'mm', 'mm', '2022-4524.pdf', 'admin', '2022-01-15 10:19:46', 'PROTOKOL', '2022-01-15 10:19:00', 'PROTOKOL', '2022-01-15 10:19:00', 'EKONOMI & SDA', '2022-01-27 10:18:00'),
(10, '', '2022-01-15 10:21:00', '88', '4525 ', '98', '2022-01-15', 'hk', 'bm', 'mb', '2022-4525.pdf', 'admin', '2022-01-15 10:22:08', 'WAKIL WALIKOTA', '2022-01-15 10:21:00', 'WAKIL WALIKOTA', '2022-01-15 10:21:00', 'HUKUM', '2022-01-15 10:22:00'),
(11, '', '2022-01-15 10:42:00', '22', '4526 ', '21', '2022-01-15', 'mm', 'mm', 'ss', '2022-4526.pdf', 'admin', '2022-01-15 10:43:51', 'WALIKOTA', '2022-01-15 10:43:00', 'SEKDA', '2022-01-15 10:43:00', 'EKONOMI & SDA', '2022-01-22 10:24:00'),
(12, '', '2022-01-15 10:59:00', '880', '4527 ', '908', '2022-01-15', 'hu', 'nb', 'hjuk', '2022-4527.pdf', 'admin', '2022-01-15 11:00:03', 'PLH.SEKDA', '2022-01-15 10:59:00', 'BKPPD', '2022-01-15 10:59:00', 'PROTOKOL', '2022-01-15 11:00:00'),
(13, '', '2022-01-15 11:04:00', '9942', '4528 ', '98', '2022-01-15', 'hk', 'j', 'rr', '2022-4528.pdf', 'admin', '2022-01-15 11:05:15', 'PLH.SEKDA', '2022-01-15 11:05:00', 'ASS.III', '2022-01-15 11:05:00', 'ORTAL', '2022-01-15 11:06:00'),
(14, 'Surat Masuk', '2022-01-15 11:10:00', '1009841', '4529 ', '66', '2022-01-15', 'hk', 'j', 'jhfs', '2022-4529.pdf', 'admin', '2022-01-15 11:11:06', 'SEKDA', '2022-01-15 11:10:00', 'ADM.PEMB', '2022-01-15 11:10:00', 'BKPPD', '2022-01-15 11:11:00'),
(15, 'Surat Masuk', '2022-01-17 12:48:00', '6272', '453', '0837/SM', '2022-01-17', 'Pegawai', 'Kepala Dinas Pemuda Olahraga', 'Permohonan', '2022-453.pdf', 'admin', '2022-01-17 12:55:01', 'KESRA', '2022-01-17 12:52:00', 'PEM-OTDA', '2022-01-17 12:52:00', 'PEM-OTDA', '2022-01-17 12:53:00'),
(16, 'Surat Masuk', '2022-01-22 09:01:00', '454', '454 ', '242', '2022-01-22', 'Sekretaris', 'Kepala ', 'Permohonan', '2022-454 .pdf', 'admin', '2022-01-22 09:04:29', 'HUKUM', '2022-01-22 09:03:00', NULL, NULL, NULL, '2022-01-22 09:03:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_surat`
--
ALTER TABLE `jenis_surat`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indexes for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `tb_sk`
--
ALTER TABLE `tb_sk`
  ADD PRIMARY KEY (`no_sk`);

--
-- Indexes for table `tb_sppd`
--
ALTER TABLE `tb_sppd`
  ADD PRIMARY KEY (`no_sppd`);

--
-- Indexes for table `tb_spt`
--
ALTER TABLE `tb_spt`
  ADD PRIMARY KEY (`no_spt`);

--
-- Indexes for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id_suratkeluar`),
  ADD UNIQUE KEY `nomor_suratkeluar` (`nomor_suratkeluar`);

--
-- Indexes for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`),
  ADD UNIQUE KEY `nomorurut_suratmasuk` (`nomorurut_suratmasuk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_surat`
--
ALTER TABLE `jenis_surat`
  MODIFY `id_jenis` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_sk`
--
ALTER TABLE `tb_sk`
  MODIFY `no_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_sppd`
--
ALTER TABLE `tb_sppd`
  MODIFY `no_sppd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_spt`
--
ALTER TABLE `tb_spt`
  MODIFY `no_spt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id_suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
bukudbbukudb