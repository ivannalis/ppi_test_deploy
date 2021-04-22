-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 08:41 PM
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
-- Database: `ppi3`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_kat_ppi`
--

CREATE TABLE `detail_kat_ppi` (
  `id_detail_kat_ppi` int(255) NOT NULL,
  `id_katppi` int(255) NOT NULL,
  `ppi` varchar(255) NOT NULL,
  `kat_ppi` varchar(255) NOT NULL,
  `rincian` varchar(255) NOT NULL,
  `data_dasar` int(255) NOT NULL DEFAULT 0,
  `indikator_capaian_2025` int(255) DEFAULT 0,
  `satuan` varchar(255) NOT NULL,
  `progress` int(255) NOT NULL DEFAULT 0,
  `sign` varchar(255) NOT NULL,
  `last_update` varchar(255) DEFAULT '...'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_kat_ppi`
--

INSERT INTO `detail_kat_ppi` (`id_detail_kat_ppi`, `id_katppi`, `ppi`, `kat_ppi`, `rincian`, `data_dasar`, `indikator_capaian_2025`, `satuan`, `progress`, `sign`, `last_update`) VALUES
(9, 2, 'Proteksi', 'Luas dan laju deforestasi dan degradasi menurun', 'Luas tutupan hutan', 260548, 0, 'hektar', 260548, '+', '2021-04-01'),
(10, 2, 'Proteksi', 'Luas dan laju deforestasi dan degradasi menurun', 'Deforestasi', 8780, 0, 'hektar', 20, '+', '2021-04-01'),
(11, 2, 'Proteksi', 'Luas dan laju deforestasi dan degradasi menurun', 'Degradasi', 20, 0, 'hektar', 0, '+', '...'),
(12, 3, 'Proteksi', 'Emisi karbon menurun', 'Emisi deforestasi', 2770668, 0, 'tonCO2eq', 0, '+', '...'),
(13, 3, 'Proteksi', 'Emisi karbon menurun', 'Emisi degradasi', 3347, 0, 'tonCO2eq', 0, '', '...'),
(14, 4, 'Proteksi', 'Kebakaran hutan dan lahan menurun', 'Rerata hostspot', 311, 0, 'hotspot', 0, '', '...'),
(15, 4, 'Proteksi', 'Kebakaran hutan dan lahan menurun', 'Rerata luas areal terbakar ', 6731, 0, 'hektar', 0, '', '...'),
(16, 5, 'Proteksi', 'Legal status areal konservasi di KH dan APL meningkat', 'Luas hutan dengan izin perlindungan dan pengelolaan', 131765, 0, 'hektar', 0, '', '...'),
(17, 5, 'Proteksi', 'Legal status areal konservasi di KH dan APL meningkat', 'Luas hutan yang tidak memiliki izin perlindungan dan pengelolaan', 128783, 0, 'hektar', 0, '', '...'),
(18, 6, 'Produksi', 'Peningkatan produksi komoditas kunci', 'Produksi TBS perusahaan', 118576, 0, 'ton', 0, '', '...'),
(19, 6, 'Produksi', 'Peningkatan produksi komoditas kunci', 'Petani TBS pekebun swadaya', 29311, 0, 'ton', 0, '', '...'),
(20, 6, 'Produksi', 'Peningkatan produksi komoditas kunci', 'Produksi kehutanan', 0, 0, 'ton', 0, '', '...'),
(21, 7, 'Produksi', 'Pekebun yang memperoleh pelayanan dalam mengaplikasikan Good Agriculture Practice (GAP)', 'Jumlah pekebun yang memperoleh pelayanan', 0, 0, 'orang', 0, '', '...'),
(22, 8, 'Produksi', 'Sertifikasi komoditas', 'Jumlah unit manajemen tersertifikasi ISPO', 2, 0, 'unit manajemen ISPO', 0, '', '...'),
(23, 8, 'Produksi', 'Sertifikasi komoditas', 'Jumlah unit manajemen tersertifikasi RSPO', 1, 0, 'unit manajemen RSPO', 0, '', '...'),
(24, 8, 'Produksi', 'Sertifikasi komoditas', 'Luas lahan tersertifikasi', 4847, 0, 'hektar', 0, '', '...'),
(25, 8, 'Produksi', 'Sertifikasi komoditas', 'Jumlah pekebun swadaya tersertifikasi', 0, 0, 'orang', 0, '', '...'),
(26, 8, 'Produksi', 'Sertifikasi komoditas', 'Luas pekebun tersertifikasi', 0, 0, 'hektar', 0, '', '...'),
(27, 9, 'Produksi', 'Legalitas budidaya masyarakat meningkat', 'Jumlah STDB yang telah dikeluarkan', 0, 0, 'STDB', 0, '', '...'),
(28, 9, 'Produksi', 'Legalitas budidaya masyarakat meningkat', 'Luas STDB yang telah dikeluarkan', 0, 0, 'hektar', 0, '', '...'),
(29, 9, 'Produksi', 'Legalitas budidaya masyarakat meningkat', 'Jumlah STDB yang telah dalam proses', 0, 0, 'STDB', 0, '', '...'),
(30, 9, 'Produksi', 'Legalitas budidaya masyarakat meningkat', 'Luas STDB yang telah dalam proses', 0, 0, 'hektar', 0, '', '...'),
(31, 10, 'Produksi', 'Penguatan rantai pasok', 'Jumlah kesepakatan rantai pasok', 0, 0, 'kesepakatan', 0, '', '...'),
(32, 11, 'Produksi', 'Indeks Desa Membangun', 'Desa sangat tertinggal', 1, 0, 'desa', 0, '', '...'),
(33, 11, 'Produksi', 'Indeks Desa Membangun', 'Desa tertinggal', 30, 0, 'desa', 0, '', ''),
(34, 11, 'Produksi', 'Indeks Desa Membangun', 'Desa berkembang', 51, 0, 'desa', 0, '', '...'),
(35, 11, 'Produksi', 'Indeks Desa Membangun', 'Desa maju', 21, 0, 'desa', 0, '', '...'),
(36, 11, 'Produksi', 'Indeks Desa Membangun', 'Desa mandiri', 10, 0, 'desa', 0, '', '...'),
(37, 12, 'Inklusi', 'Kelembagaan percepatan pertumbuhan hijau terbentuk', 'Jumlah kelembagaan', 0, 0, 'kelembagaan', 0, '', '...'),
(38, 13, 'Inklusi', 'Keterlibatan pemangku kepentingan kunci meningkat', 'Pemerintah', 0, 0, 'instansi', 0, '', '...'),
(39, 13, 'Inklusi', 'Keterlibatan pemangku kepentingan kunci meningkat', 'Sektor swasta', 0, 0, 'perusahaan', 0, '', '...'),
(40, 13, 'Inklusi', 'Keterlibatan pemangku kepentingan kunci meningkat', 'Koperasi/kelompok masyarakat', 0, 0, 'koperasi/kelompok masyarakat', 0, '', '...'),
(41, 13, 'Inklusi', 'Keterlibatan pemangku kepentingan kunci meningkat', 'Stakeholder lalin', 0, 0, 'stakeholder', 0, '', '...'),
(42, 14, 'Inklusi', 'Monitoring dan Evaluasi (M&E) terlaksana', 'Jumlah M&E dilaksanakan', 0, 0, 'kali', 0, '', '...'),
(43, 15, 'Inklusi', 'Kerangka hukum yang terbentuk untuk mendukung SRAK PPH Kubu Raya', 'Jumlah kebijakan', 0, 0, 'kebijakan', 0, '', '...'),
(44, 16, 'Produksi', 'Peningkatann jumlah pendanaan inovatif di sektor kehutanan, dan pertanian', 'Jumlah investasi sektor berbasis lahan', 5, 0, 'Rupiah', 0, '', '...'),
(45, 17, 'Produksi', 'Kasus bisnis berkelanjuttan baru yang investable dan bankable', 'Jumlah model bisnis berkelanjutan', 3, 0, 'bisnis', 0, '', '...');

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
  `kat_ppi` varchar(255) DEFAULT NULL,
  `progress` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kat_ppi`
--

INSERT INTO `kat_ppi` (`id_katppi`, `indikator`, `kat_ppi`, `progress`) VALUES
(2, 'Luas dan laju deforestasi dan degradasi menurun', 'Proteksi', 0),
(3, 'Emisi karbon menurun', 'Proteksi', 0),
(4, 'Kebakaran hutan dan lahan menurun', 'Proteksi', 0),
(5, 'Legal status areal konservasi di KH dan APL meningkat', 'Proteksi', 0),
(6, 'Peningkatan produksi komoditas kunci', 'Produksi', 0),
(7, 'Pekebun yang memperoleh pelayanan dalam mengaplikasikan Good Agriculture Practice (GAP)', 'Produksi', 0),
(8, 'Sertifikasi komoditas ', 'Produksi', 0),
(9, 'Legalitas budidaya masyarakat meningkat', 'Produksi', 0),
(10, 'Penguatan rantai pasok', 'Produksi', 0),
(11, 'Indeks Desa Membangun', 'Produksi', 0),
(12, 'Kelembagaan percepatan pertumbuhan hijau terbentuk', 'Inklusi', 0),
(13, 'Keterlibatan pemangku kepentingan kunci meningkat', 'Inklusi', 0),
(14, 'Monitoring dan Evaluasi (M&E) terlaksana', 'Inklusi', 0),
(15, 'Kerangka hukum yang terbentuk untuk mendukung SRAK PPH Kubu Raya', 'Inklusi', 0),
(16, 'Peningkatann jumlah pendanaan inovatif di sektor kehutanan, dan pertanian', 'Produksi', 0),
(17, 'Kasus bisnis berkelanjuttan baru yang investable dan bankable', 'Produksi', 0);

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
(88, 'Kawasan Hutan', 'SK733 tahun 2014'),
(90, 'Perhutanan Sosial', 'Izin Hutan Desa Kubu Raya'),
(91, 'Administrasi', '');

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
(5, 'World Wide Fund (WWF)', 'Non-Government Organization', 'Afghanistan', 'Kab. Kubu Raya', '2021-04-15', '2021-04-20', 300000000, 'Identifikasi Cadangan Karbon di Taman Nasional Gunung Palung', '<p>Indonesia tercatat sebagai negara yang berhasil melindungi hutan dibandingkan dengan negara tropis lainnya. Pujian itu tertuang dari data dari University of Maryland yang dirilis pada 27 Juni 2018 oleh lembaga riset World Resources Institute pada Oslo Tropical Forest Forum. Tentu ini merupakan kabar baik hasil dari pengelolaan hutan yang dilakukan selama ini. Direktur Jenderal Perhutanan Sosial dan Kemitraan Lingkungan Kementerian Lingkungan Hidup Bambang Supriyanto menjelaskan pemerintah telah membuat program pengelolaan hutan yang melibatkan masyarakat yakni Program Perhutanan Sosial.</p>\r\n<p>Target kawasan hutan untuk program ini seluas 12,7 juta hektare yang awalnya dicanangkan oleh Presiden Joko Widodo untuk selesai pada 2019. Capaian akses kelola Hutan Sosial per 28 Juni 2019 sudah mencapai 3.133.847,19 ha, dengan total surat keputusan (SK) sebanyak 5.756 unit SK yang diberikan kepada 691.737 kepala keluarga.</p>', 'public/assets/geojson/1618942017342-58568d4c4f6ae202fedf2721.png', 1, 'Running', 76000, 'Hektar Tutupan Hutan', 600000, 'Rupiah Investasi Luar Negeri', 7000, 'Kepala Keluarga', '2021-04-09'),
(8, 'Inisiatif Dagang Hijau', 'Government', 'Afghanistan', 'Kec. Batu Ampar', '2021-04-26', '2022-07-08', 100000000, 'Penguatan Kelembagaan Hutan Desa di Bentang Pesisir Padang Tikar Kabupaten Kubu Raya', '<p>Indonesia tercatat sebagai negara yang berhasil melindungi hutan dibandingkan dengan negara tropis lainnya. Pujian itu tertuang dari data dari University of Maryland yang dirilis pada 27 Juni 2018 oleh lembaga riset World Resources Institute pada Oslo Tropical Forest Forum. Tentu ini merupakan kabar baik hasil dari pengelolaan hutan yang dilakukan selama ini. Direktur Jenderal Perhutanan Sosial dan Kemitraan Lingkungan Kementerian Lingkungan Hidup Bambang Supriyanto menjelaskan pemerintah telah membuat program pengelolaan hutan yang melibatkan masyarakat yakni Program Perhutanan Sosial.</p>\r\n<p>Target kawasan hutan untuk program ini seluas 12,7 juta hektare yang awalnya dicanangkan oleh Presiden Joko Widodo untuk selesai pada 2019. Capaian akses kelola Hutan Sosial per 28 Juni 2019 sudah mencapai 3.133.847,19 ha, dengan total surat keputusan (SK) sebanyak 5.756 unit SK yang diberikan kepada 691.737 kepala keluarga.</p>', 'public/assets/geojson/1618942141106-IDH The Sustainable Trade Initiative Job Vacancy.jpg', 1, 'Contracting', 76000, 'Hektar Tutupan Hutan', 600000, 'Rupiah Investasi Luar Negeri', 7000, 'Kepala Keluarga', '2021-04-09'),
(9, 'GIZ Jerman', 'Government', 'Germany', 'Kab. Kubu Raya', '2021-02-03', '2021-04-08', 25000000, 'Identifikasi Cadangan Karbon di Hutan Lindung G. Pemancing - G Ambawang', '<p>Indonesia tercatat sebagai negara yang berhasil melindungi hutan dibandingkan dengan negara tropis lainnya. Pujian itu tertuang dari data dari University of Maryland yang dirilis pada 27 Juni 2018 oleh lembaga riset World Resources Institute pada Oslo Tropical Forest Forum. Tentu ini merupakan kabar baik hasil dari pengelolaan hutan yang dilakukan selama ini. Direktur Jenderal Perhutanan Sosial dan Kemitraan Lingkungan Kementerian Lingkungan Hidup Bambang Supriyanto menjelaskan pemerintah telah membuat program pengelolaan hutan yang melibatkan masyarakat yakni Program Perhutanan Sosial.</p>\r\n<p>Target kawasan hutan untuk program ini seluas 12,7 juta hektare yang awalnya dicanangkan oleh Presiden Joko Widodo untuk selesai pada 2019. Capaian akses kelola Hutan Sosial per 28 Juni 2019 sudah mencapai 3.133.847,19 ha, dengan total surat keputusan (SK) sebanyak 5.756 unit SK yang diberikan kepada 691.737 kepala keluarga.</p>', 'public/assets/geojson/1618942176969-giz-avatar.jpeg', 1, 'Closing', 76000, 'Hektar Tutupan Hutan', 600000, 'Rupiah Investasi Luar Negeri', 7000, 'Kepala Keluarga', '2021-04-09'),
(10, 'The Asia Foundation', 'Government', 'Afghanistan', 'Kec. Teluk Pakedai', '2021-05-08', '2022-07-22', 2000000000, 'The Foundation creates effective partnerships with innovative local government, civil society, and private sector leaders in Sui Nibung.', '<p>In Indonesia, many groups suffer from exclusion, including religious minorities, victims of human rights abuses, indigenous communities, disabled persons, transgender individuals, and vulnerable children, even as the country enjoys steady economic growth. Building on the government&rsquo;s commitment to improve public accountability and performance through inclusive development, the Foundation&rsquo;s ambitious Peduli project has been helping to improve services, social acceptance, and policies for the most marginalized.&nbsp;</p>\r\n<p>Significantly, the project increased interactions with local government officials and other stakeholders to improve social assistance for thousands, including education rights and legal identity services. With support from Australian DFAT, we trained and supported local champions, and helped 3,149 indigenous people receive national ID cards and birth certificates.</p>', 'public/assets/geojson/1618942412123-1547081092770.jfif', 1, 'Running', 1800, 'Hektar Tutupan Hutan', 200000000, 'Rupiah Investasi Budidaya Berkelanjutan', 2400, 'Kepala Keluarga', '2021-04-21');

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
(55, 'Batas Kecamatan', NULL, 91, 'd', 'public/assets/geojson/1618606393319-1616240324922-admin_new.geojson', 'Rest Service KLHK tahun 2019', 1, '2021-04-01 11:17', 'point', 'default'),
(56, 'Izin Hutan Desa', NULL, 90, '', 'public/assets/geojson/1618581736435-hdkk2r.geojson', 'Usulan Hutan Desa Sampan-Bentang 2017-18', 1, '2021-04-16 20:45', 'polygon', NULL),
(57, 'Tutupan Lahan 2016', NULL, 86, '', 'public/assets/geojson/1618942839431-1618475370106-plkkr16.geojson', 'Tutupan Lahan KLHK tahun 2016', 1, '2021-04-21 01:20', 'polygon', NULL);

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
(253, 'Batu Ampar', '#d31717', '55', '', 'WADMKC'),
(254, 'Kuala Mandor B', '#17de2e', '55', '', 'WADMKC'),
(255, 'Kuala Mandor/B-Sungai Ambawang', '#000000', '55', '', 'WADMKC'),
(256, 'Kubu', '#000000', '55', '', 'WADMKC'),
(257, 'Rasau Jaya', '#000000', '55', '', 'WADMKC'),
(258, 'Sungai Ambawang', '#000000', '55', '', 'WADMKC'),
(259, 'Sungai Kakap', '#000000', '55', '', 'WADMKC'),
(260, 'Sungai Raya', '#000000', '55', '', 'WADMKC'),
(261, 'Teluk Pakedai', '#000000', '55', '', 'WADMKC'),
(262, 'Terentang', '#000000', '55', '', 'WADMKC'),
(289, 'Desa Kubu', '#000000', '56', NULL, 'DESA'),
(290, 'Desa Sungai Deras', '#000000', '56', NULL, 'DESA'),
(291, 'Desa Teluk Nibung', '#000000', '56', NULL, 'DESA'),
(292, 'Desa Tasik Malaya', '#000000', '56', NULL, 'DESA'),
(293, 'Desa Sumber Agung', '#000000', '56', NULL, 'DESA'),
(294, 'Desa Betuah', '#000000', '56', NULL, 'DESA'),
(295, 'Desa Sui Nibung', '#000000', '56', NULL, 'DESA'),
(296, 'Desa Ambarawa', '#000000', '56', NULL, 'DESA'),
(297, 'Desa Padang Tikar 1', '#000000', '56', NULL, 'DESA'),
(298, 'Desa Sungai Bemban', '#000000', '56', NULL, 'DESA'),
(299, 'Desa Seruat 2', '#000000', '56', NULL, 'DESA'),
(300, 'Desa Dabong', '#000000', '56', NULL, 'DESA'),
(301, 'Desa Tanjung Beringin', '#000000', '56', NULL, 'DESA'),
(302, 'Desa Selat Remis', '#000000', '56', NULL, 'DESA'),
(303, 'Desa Mengkalang', '#000000', '56', NULL, 'DESA'),
(304, 'Desa Sungai Besar', '#000000', '56', NULL, 'DESA'),
(305, 'Desa Tanjung Harapan', '#000000', '56', NULL, 'DESA'),
(306, 'Desa Medan Mas', '#000000', '56', NULL, 'DESA'),
(307, 'Desa Batu Ampar', '#000000', '56', NULL, 'DESA'),
(308, 'Desa Kampung Baru', '#000000', '56', NULL, 'DESA'),
(309, 'Desa Ambawang', '#000000', '56', NULL, 'DESA'),
(310, 'Desa Sei Kerawang', '#000000', '56', NULL, 'DESA'),
(311, 'Desa Mengkalang Jambu', '#000000', '56', NULL, 'DESA'),
(312, 'Desa Permata', '#000000', '56', NULL, 'DESA'),
(313, 'Desa Sungai Jawi', '#000000', '56', NULL, 'DESA'),
(314, 'Desa Nipah Panjang', '#000000', '56', NULL, 'DESA'),
(315, 'badan air', '#8ac8ff', '57', '', 'keterangan'),
(316, 'belukar', '#c8b014', '57', '', 'keterangan'),
(317, 'belukar rawa', '#fa8314', '57', '', 'keterangan'),
(318, 'hutan lahan kering sekunder', '#39e916', '57', '', 'keterangan'),
(319, 'hutan mangrove sekunder', '#063c08', '57', '', 'keterangan'),
(320, 'hutan rawa primer', '#92dd95', '57', '', 'keterangan'),
(321, 'hutan rawa sekunder', '#557c50', '57', '', 'keterangan'),
(322, 'hutan tanaman', '#7a04c8', '57', '', 'keterangan'),
(323, 'pemukiman', '#000000', '57', '', 'keterangan'),
(324, 'perkebunan', '#ffd500', '57', '', 'keterangan'),
(325, 'pertambangan', '#ec2222', '57', '', 'keterangan'),
(326, 'pertanian lahan kering', '#e5d199', '57', '', 'keterangan'),
(327, 'pertanian lahan kering campur', '#feee10', '57', '', 'keterangan'),
(328, 'rawa', '#21e4d7', '57', '', 'keterangan'),
(329, 'sawah', '#038596', '57', '', 'keterangan'),
(330, 'tambak', '#175e9b', '57', '', 'keterangan'),
(331, 'tanah terbuka', '#f46666', '57', '', 'keterangan'),
(332, 'transmigrasi', '#575757', '57', '', 'keterangan');

-- --------------------------------------------------------

--
-- Table structure for table `update_indikator_ppi`
--

CREATE TABLE `update_indikator_ppi` (
  `id_update_indikator_ppi` int(255) NOT NULL,
  `ppi` varchar(255) NOT NULL,
  `id_detail_kat_ppi` int(255) NOT NULL,
  `id_kat_ppi` int(255) NOT NULL,
  `komponen` varchar(255) NOT NULL,
  `update_capaian` int(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `last_update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update_indikator_ppi`
--

INSERT INTO `update_indikator_ppi` (`id_update_indikator_ppi`, `ppi`, `id_detail_kat_ppi`, `id_kat_ppi`, `komponen`, `update_capaian`, `satuan`, `last_update`) VALUES
(7, 'Proteksi', 9, 2, '', 2000, 'hektar', '2021-04-19'),
(8, 'Proteksi', 9, 2, '', 5000, 'hektar', '2021-05-01'),
(9, 'Proteksi', 10, 2, '', 1200, 'hektar', '2021-05-07');

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
-- Indexes for table `update_indikator_ppi`
--
ALTER TABLE `update_indikator_ppi`
  ADD PRIMARY KEY (`id_update_indikator_ppi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_kat_ppi`
--
ALTER TABLE `detail_kat_ppi`
  MODIFY `id_detail_kat_ppi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `loi`
--
ALTER TABLE `loi`
  MODIFY `id_loi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shp`
--
ALTER TABLE `shp`
  MODIFY `id_shp` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `styleshp`
--
ALTER TABLE `styleshp`
  MODIFY `id_style` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `update_indikator_ppi`
--
ALTER TABLE `update_indikator_ppi`
  MODIFY `id_update_indikator_ppi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
