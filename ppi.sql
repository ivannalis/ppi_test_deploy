-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 05:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_kat_ppi`
--

CREATE TABLE `detail_kat_ppi` (
  `id_detail_kat_ppi` int(255) NOT NULL,
  `id_katppi` int(255) NOT NULL,
  `kat_ppi` varchar(255) NOT NULL,
  `rincian` varchar(255) NOT NULL,
  `data_dasar` int(255) NOT NULL DEFAULT 0,
  `indikator_capaian_2025` int(255) DEFAULT 0,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kab`
--

CREATE TABLE `kab` (
  `id` int(255) NOT NULL,
  `kab` varchar(255) NOT NULL,
  `prov` varchar(255) NOT NULL,
  `neg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kab`
--

INSERT INTO `kab` (`id`, `kab`, `prov`, `neg`) VALUES
(34, 'kab ketapang', 'kalimantan barat', 'indonesia'),
(35, 'kab kubu raya', 'kalimantan barat', 'indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `kat_ppi`
--

CREATE TABLE `kat_ppi` (
  `id_katppi` int(255) NOT NULL,
  `indikator` varchar(255) DEFAULT NULL,
  `kat_ppi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kat_ppi`
--

INSERT INTO `kat_ppi` (`id_katppi`, `indikator`, `kat_ppi`) VALUES
(2, 'Luas dan laju deforestasi dan degradasi menurun', 'Proteksi'),
(3, 'Emisi karbon menurun', 'Proteksi'),
(4, 'Kebakaran hutan dan lahan menurun', 'Proteksi'),
(5, 'Legal status areal konservasi di KH dan APL meningkat', 'Proteksi'),
(6, 'Peningkatan produksi komoditas kunci', 'Produksi'),
(7, 'Pekebun yang memperoleh pelayanan dalam mengaplikasikan Good Agriculture Practice (GAP)', 'Produksi'),
(8, 'Sertifikasi komoditas ', 'Produksi'),
(9, 'Legalitas budidaya masyarakat meningkat', 'Produksi'),
(10, 'Penguatan rantai pasok', 'Produksi'),
(11, 'Indeks Desa Membangun', 'Produksi'),
(12, 'Kelembagaan percepatan pertumbuhan hijau terbentuk', 'Inklusi'),
(13, 'Keterlibatan pemangku kepentingan kunci meningkat', 'Inklusi'),
(14, 'Monitoring dan Evaluasi (M&E) terlaksana', 'Inklusi'),
(15, 'Kerangka hukum yang terbentuk untuk mendukung SRAK PPH Kubu Raya', 'Inklusi'),
(16, 'Peningkatann jumlah pendanaan inovatif di sektor kehutanan, dan pertanian', 'Produksi'),
(17, 'Kasus bisnis berkelanjuttan baru yang investable dan bankable', 'Produksi');

-- --------------------------------------------------------

--
-- Table structure for table `kat_shp`
--

CREATE TABLE `kat_shp` (
  `id` int(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL DEFAULT 'Belum ada deskripsi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kat_shp`
--

INSERT INTO `kat_shp` (`id`, `kategori`, `deskripsi`) VALUES
(86, 'Tutupan Lahan', 'Tutupan Lahan Tahunan'),
(87, 'Deforestasi', 'Deforestasi Bulanan'),
(88, 'Kawasan Hutan', 'SK733 tahun 2014');

-- --------------------------------------------------------

--
-- Table structure for table `loi`
--

CREATE TABLE `loi` (
  `id_loi` int(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `afiliasi` varchar(255) NOT NULL,
  `web_afiliasi` varchar(255) NOT NULL,
  `jenis_afiliasi` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL,
  `ketertarikan` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Hide',
  `tanggal` varchar(10) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loi`
--

INSERT INTO `loi` (`id_loi`, `pengirim`, `email`, `afiliasi`, `web_afiliasi`, `jenis_afiliasi`, `negara`, `ketertarikan`, `role`, `deskripsi`, `file`, `status`, `tanggal`) VALUES
(15, 'Yohanes Koko', 'koko@solidaridad.org', 'Solidaridad', 'solidaridad.org', 'Non-Government Organization', 'Afghanistan', '_Pertumbuhan Ekonomi Berkelanjutan,_Pengurangan Emisi Gas Rumah Kaca\r\n                                                        \r\n                                                        \r\n                                                        \r\n           ', 'Funding', '', NULL, '1', '2021-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id_project` int(11) NOT NULL,
  `funding` varchar(255) DEFAULT NULL,
  `jenis_afiliasi` varchar(255) DEFAULT NULL,
  `negara` varchar(255) DEFAULT NULL,
  `lokasi_project` varchar(255) DEFAULT NULL,
  `start_project` varchar(255) DEFAULT NULL,
  `end_project` varchar(255) DEFAULT NULL,
  `estimasi_budget` int(255) DEFAULT NULL,
  `judul_project` varchar(255) DEFAULT NULL,
  `deskripsi_project` varchar(5000) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `visibility` int(5) DEFAULT NULL,
  `status_project` varchar(255) DEFAULT NULL,
  `proteksi` int(255) DEFAULT NULL,
  `st_proteksi` varchar(255) DEFAULT NULL,
  `produksi` int(255) DEFAULT NULL,
  `st_produksi` varchar(255) NOT NULL,
  `inklusi` int(255) DEFAULT NULL,
  `st_inklusi` varchar(255) DEFAULT NULL,
  `tanggal` varchar(10) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `funding`, `jenis_afiliasi`, `negara`, `lokasi_project`, `start_project`, `end_project`, `estimasi_budget`, `judul_project`, `deskripsi_project`, `logo`, `visibility`, `status_project`, `proteksi`, `st_proteksi`, `produksi`, `st_produksi`, `inklusi`, `st_inklusi`, `tanggal`) VALUES
(5, 'World Wide Fund (WWF)', 'Non-Government Organization', 'Afghanistan', 'Kab. Kubu Raya', '2021-04-15', '2021-04-20', 300000000, 'Identifikasi Cadangan Karbon di Taman Nasional Gunung Palung', '<p>Indonesia tercatat sebagai negara yang berhasil melindungi hutan dibandingkan dengan negara tropis lainnya. Pujian itu tertuang dari data dari University of Maryland yang dirilis pada 27 Juni 2018 oleh lembaga riset World Resources Institute pada Oslo Tropical Forest Forum. Tentu ini merupakan kabar baik hasil dari pengelolaan hutan yang dilakukan selama ini. Direktur Jenderal Perhutanan Sosial dan Kemitraan Lingkungan Kementerian Lingkungan Hidup Bambang Supriyanto menjelaskan pemerintah telah membuat program pengelolaan hutan yang melibatkan masyarakat yakni Program Perhutanan Sosial.</p>\r\n<p>Target kawasan hutan untuk program ini seluas 12,7 juta hektare yang awalnya dicanangkan oleh Presiden Joko Widodo untuk selesai pada 2019. Capaian akses kelola Hutan Sosial per 28 Juni 2019 sudah mencapai 3.133.847,19 ha, dengan total surat keputusan (SK) sebanyak 5.756 unit SK yang diberikan kepada 691.737 kepala keluarga.</p>', 'public/assets/geojson/1617872679053-logowwf.png', 1, 'Running', 76000, 'Hektar Tutupan Hutan', 600000, 'Rupiah Investasi Luar Negeri', 7000, 'Kepala Keluarga', '2021-04-09'),
(8, 'Inisiatif Dagang Hijau', 'Government', 'Afghanistan', 'Kec. Batu Ampar', '2021-04-26', '2022-07-08', 100000000, 'Penguatan Kelembagaan Hutan Desa di Bentang Pesisir Padang Tikar Kabupaten Kubu Raya', '<p>Indonesia tercatat sebagai negara yang berhasil melindungi hutan dibandingkan dengan negara tropis lainnya. Pujian itu tertuang dari data dari University of Maryland yang dirilis pada 27 Juni 2018 oleh lembaga riset World Resources Institute pada Oslo Tropical Forest Forum. Tentu ini merupakan kabar baik hasil dari pengelolaan hutan yang dilakukan selama ini. Direktur Jenderal Perhutanan Sosial dan Kemitraan Lingkungan Kementerian Lingkungan Hidup Bambang Supriyanto menjelaskan pemerintah telah membuat program pengelolaan hutan yang melibatkan masyarakat yakni Program Perhutanan Sosial.</p>\r\n<p>Target kawasan hutan untuk program ini seluas 12,7 juta hektare yang awalnya dicanangkan oleh Presiden Joko Widodo untuk selesai pada 2019. Capaian akses kelola Hutan Sosial per 28 Juni 2019 sudah mencapai 3.133.847,19 ha, dengan total surat keputusan (SK) sebanyak 5.756 unit SK yang diberikan kepada 691.737 kepala keluarga.</p>', 'public/assets/geojson/1617874160250-IDH-logo.png', 1, 'Contracting', 76000, 'Hektar Tutupan Hutan', 600000, 'Rupiah Investasi Luar Negeri', 7000, 'Kepala Keluarga', '2021-04-09'),
(9, 'GIZ Jerman', 'Government', 'Germany', 'Kab. Kubu Raya', '2021-02-03', '2021-04-08', 25000000, 'Identifikasi Cadangan Karbon di Hutan Lindung G. Pemancing - G Ambawang', '<p>Indonesia tercatat sebagai negara yang berhasil melindungi hutan dibandingkan dengan negara tropis lainnya. Pujian itu tertuang dari data dari University of Maryland yang dirilis pada 27 Juni 2018 oleh lembaga riset World Resources Institute pada Oslo Tropical Forest Forum. Tentu ini merupakan kabar baik hasil dari pengelolaan hutan yang dilakukan selama ini. Direktur Jenderal Perhutanan Sosial dan Kemitraan Lingkungan Kementerian Lingkungan Hidup Bambang Supriyanto menjelaskan pemerintah telah membuat program pengelolaan hutan yang melibatkan masyarakat yakni Program Perhutanan Sosial.</p>\r\n<p>Target kawasan hutan untuk program ini seluas 12,7 juta hektare yang awalnya dicanangkan oleh Presiden Joko Widodo untuk selesai pada 2019. Capaian akses kelola Hutan Sosial per 28 Juni 2019 sudah mencapai 3.133.847,19 ha, dengan total surat keputusan (SK) sebanyak 5.756 unit SK yang diberikan kepada 691.737 kepala keluarga.</p>', 'public/assets/geojson/1617875428755-giz-logo-e1520839037693.png', 1, 'Closing', 76000, 'Hektar Tutupan Hutan', 600000, 'Rupiah Investasi Luar Negeri', 7000, 'Kepala Keluarga', '2021-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `shp`
--

CREATE TABLE `shp` (
  `id_shp` int(255) NOT NULL,
  `nama_shp` varchar(255) NOT NULL,
  `kat_shp` varchar(255) DEFAULT NULL,
  `id_kat_shp` int(255) NOT NULL,
  `deskripsi_shp` varchar(255) DEFAULT 'None',
  `path_shp` varchar(255) DEFAULT NULL,
  `sumber_shp` varchar(255) DEFAULT NULL,
  `status_shp` int(255) NOT NULL DEFAULT 0,
  `tanggal` varchar(16) NOT NULL DEFAULT current_timestamp(),
  `type_shp` varchar(255) DEFAULT NULL,
  `kat_style` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shp`
--

INSERT INTO `shp` (`id_shp`, `nama_shp`, `kat_shp`, `id_kat_shp`, `deskripsi_shp`, `path_shp`, `sumber_shp`, `status_shp`, `tanggal`, `type_shp`, `kat_style`) VALUES
(55, 'Tutupan Lahan tahun 2019', NULL, 86, 'd', 'public/assets/geojson/1617250630132-admin_kkr.geojson', 'Rest Service KLHK tahun 2019', 1, '2021-04-01 11:17', 'point', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `styleshp`
--

CREATE TABLE `styleshp` (
  `id_style` int(255) NOT NULL,
  `prop_shp` varchar(255) DEFAULT NULL,
  `color_prop` varchar(255) DEFAULT NULL,
  `id_shp` varchar(255) DEFAULT NULL,
  `label_style` varchar(255) DEFAULT NULL,
  `style_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `styleshp`
--

INSERT INTO `styleshp` (`id_style`, `prop_shp`, `color_prop`, `id_shp`, `label_style`, `style_by`) VALUES
(252, NULL, NULL, '55', NULL, 'default'),
(253, 'Batu Ampar', '#000000', '55', NULL, 'WADMKC'),
(254, 'Kuala Mandor B', '#000000', '55', NULL, 'WADMKC'),
(255, 'Kuala Mandor/B-Sungai Ambawang', '#000000', '55', NULL, 'WADMKC'),
(256, 'Kubu', '#000000', '55', NULL, 'WADMKC'),
(257, 'Rasau Jaya', '#000000', '55', NULL, 'WADMKC'),
(258, 'Sungai Ambawang', '#000000', '55', NULL, 'WADMKC'),
(259, 'Sungai Kakap', '#000000', '55', NULL, 'WADMKC'),
(260, 'Sungai Raya', '#000000', '55', NULL, 'WADMKC'),
(261, 'Teluk Pakedai', '#000000', '55', NULL, 'WADMKC'),
(262, 'Terentang', '#000000', '55', NULL, 'WADMKC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_kat_ppi`
--
ALTER TABLE `detail_kat_ppi`
  ADD PRIMARY KEY (`id_detail_kat_ppi`);

--
-- Indexes for table `kab`
--
ALTER TABLE `kab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kat_ppi`
--
ALTER TABLE `kat_ppi`
  ADD PRIMARY KEY (`id_katppi`);

--
-- Indexes for table `kat_shp`
--
ALTER TABLE `kat_shp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loi`
--
ALTER TABLE `loi`
  ADD PRIMARY KEY (`id_loi`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `shp`
--
ALTER TABLE `shp`
  ADD PRIMARY KEY (`id_shp`);

--
-- Indexes for table `styleshp`
--
ALTER TABLE `styleshp`
  ADD PRIMARY KEY (`id_style`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_kat_ppi`
--
ALTER TABLE `detail_kat_ppi`
  MODIFY `id_detail_kat_ppi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kab`
--
ALTER TABLE `kab`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kat_ppi`
--
ALTER TABLE `kat_ppi`
  MODIFY `id_katppi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kat_shp`
--
ALTER TABLE `kat_shp`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `loi`
--
ALTER TABLE `loi`
  MODIFY `id_loi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shp`
--
ALTER TABLE `shp`
  MODIFY `id_shp` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `styleshp`
--
ALTER TABLE `styleshp`
  MODIFY `id_style` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
