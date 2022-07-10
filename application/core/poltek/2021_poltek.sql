-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 02:43 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2021_poltek`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(70, 'Pelaksanaan Ujian Tengah Semester ( UTS ) 2020', 'pelaksanaan-ujian-tengah-semester--uts--2020', '<p>Ujian Tengah Semester ( UTS ) tahun Akademik 2020/2021 akan diadakan mulai tanggal 16 November sampai dengan 21 November 2020</p>', 'Politeknik Kaltara', 'Bagian Kemahasiswaan dan Alumni', 'kedai-online-tarakan-services-komputer.png', '2020-11-16', '2020-11-21', '2020-11-10', '08.00 sd 12.00 Wita', 3, 'poltek.kaltara');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(53, 'Hari menanam Pohon Nasional 2020', 'hari-menanam-pohon-nasional-2020', '<p>Selamat Hari menanam Pohon Nasional 2020<br></p>', 'politeknik_kaltara_128202267_294230721907562_1998642749331764112_n.jpg', 'Y', 3, '2020-11-28', '12:51:53', 'Sabtu', 'poltek.kaltara'),
(54, 'Kabar Alumni', 'kabar-alumni', '', '123570583_206473024178713_2181526929189361211_o.jpg', 'Y', 8, '2020-11-28', '12:56:43', 'Sabtu', 'poltek.kaltara');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(19, 'Belajar Islam menjadi lebih mudah', 'https://rumaysho.com', '', '2017-05-21'),
(20, 'Kursus Web Programming Online', 'https://members.phpmu.com/', '', '2017-05-21'),
(21, 'Pro dan Kontra Fenomena Viral di Dunia Maya', 'https://cekinbox.com', '', '2017-05-21'),
(22, 'Memurnikan Aqidah Menebarkan Sunnah', 'https://muslim.or.id', '', '2017-05-21'),
(23, 'Media Salafiyyah Ahlus Sunnah', 'https://almanhaj.or.id', '', '2017-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(729, 67, 'poltek.kaltara', 'SLIDE', '', '', 'slide', 'Y', 'Y', 'N', '<p><span style=\"background-color: rgb(255, 255, 255);\">,</span></p>', '', 'Senin', '2020-11-09', '21:28:16', 'SUKSESKAN_PEMBENTUKAN.png', 0, '', 'Y'),
(727, 67, 'poltek.kaltara', 'slide selamat datang', '', '', 'slide-selamat-datang', 'Y', 'Y', 'N', '<p>-</p>', '', 'Senin', '2020-11-09', '19:35:53', 'WhatsApp_Image_2020-11-09_at_00_21_45.jpeg', 12, '', 'Y'),
(725, 67, 'poltek.kaltara', '.', '', '', '', 'Y', 'Y', 'N', '<p>.</p>', '', 'Sabtu', '2020-11-07', '22:22:54', '20201107_232248_0000.png', 0, '', 'Y'),
(717, 31, 'poltek.kaltara', 'Risiko Kanker di Balik Sedapnya Ikan Asin', '', '', 'risiko-kanker-di-balik-sedapnya-ikan-asin', 'N', 'N', 'Y', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">Ikan asin lekat dengan image pangan yang murah, enak, dan mudah diolah. Makan ikan asin sebetulnya tak jadi masalah jika tidak terlalu banyak atau sering.<br><br>Namun berbeda halnya jika ikan asin dikonsumsi berlebihan. Apalagi jika ikan asin mengandung banyak zat&nbsp;<a href=\"https://www.detik.com/tag/pengawet-makanan\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(70, 174, 230); font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; transition: all 0.3s ease-in-out 0s;\">pengawet</a>, misal formalin dan boraks.<br><br>\"Konsumsi ikan asin berlebihan berisiko mengakibatkan&nbsp;<a href=\"https://www.detik.com/tag/kanker\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(70, 174, 230); font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; transition: all 0.3s ease-in-out 0s;\">kanker</a>&nbsp;saluran cerna, yang dimulai dari bibir dan rongga mulut hingga lambung. Semua yang dilewatin ikan asin berisiko kena kanker,\" kata dokter ahli radiasi onkologi dr Denny Handoyo Kirana, SpOnk.Rad.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\"><br>Risiko ini sesuai alur pengolahan ikan asin dalam saluran cerna. Beberapa risiko kanker yang mungkin muncul adalah rongga mulut, tenggorokan dekat nasofaring, kerongkongan atau esofagus, hingga lambung. Risiko paling besar adalah nasofaring karena letaknya ngumpet.<br><br>Nasofaring adalah areal di belakang hidung yang lebih tinggi dari rongga mulut. Menurut dr Denny, areal ini berbahaya karena sulit dijaga kebersihannya. Areal nasofaring tak terjangkau usaha kebersihan setiap hari, layaknya sikat gigi untuk menjaga kebersihan rongga mulut<br><br>Letak yang ngumpet juga menyulitkan kontrol di bagian nasofaring. Padahal nasofaring dilewati sirkulasi udara dan pengolahan makanan di dasarnya setiap hari. Tak heran bila kanker nasofaring ditemukan bila ukurannya sudah besar.<br><br>Pertumbuhan benjolan ke arah telinga menimbulkan sensasi penuh, bergesekan dengan hidung mengakibatkan mimisan, atau sulit menelan seperti amandel. Kanker nasofaring biasanya diatasi dengan kemoterapi dan radiasi.<br><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">Salah satu penikmat ikan asin Ekariyana tak menyangka asupan tersebut berkontribusi mengakibatkan kanker nasofaring. Lelaki asal Blora, Jawa Tengah ini mengatakan tak perlu lauk lain jika sudah ada ikan asin dan sambal terasi.<br><br>\"Dulu saya tidak tahu kalau ikan asin bisa mengakibatkan kanker. Sekarang saya menghindari ikan asin, paling konsumsi 1 kali setahun ngobatin kangen. Dikit aja cuma buat inget begini lho rasanya,\" kata Eka yang kini berusia 46 tahun.<br><br>Eka menjalani pengobatan selama kurang lebih 6 bulan, yang berakhir pada Agustus 2014. Sejak didiagnosa pada Februari 2014, Eka menjalani kurang lebih 30 radiasi, 3 kali kemoterapi dengan periode 3 bulan, dan 6 kali terapi kemoterapi periode mingguan. Eka kini memasuki tahun kelima pemulihan kanker.Ikan asin tentunya bukan menjadi faktor risiko satu-satunya kanker nasofaring. Gaya hidup, geografis, dan ekonomi ikut berperan mengakibatkan kanker di masyarakat. Pertumbuhan kanker bisa dicegah dengan tidak merokok, olahraga, makan sehat, dan rutin cek kesehatan.<br><br>Bagi penikmat ikan asin, dr Dante mengatakan masih bisa menimati makanan favoritnya. Namun sebaiknya jangan terlalu sering serta tahu proses pembuatan dan kualitas bahannya. Ikan asin yang hendak dikonsumsi harus terbuat dari bahan segar serta tanpa pengawet, untuk menekan risiko terjadinya kanker (detik/m)</p>', '', 'Jumat', '2020-11-06', '13:13:54', 'ikan_asin.jpeg', 9, '', 'Y'),
(716, 31, 'poltek.kaltara', 'Bahu Membahu Bagikan Makan Siang Gratis untuk Tenaga Medis di DKI', '', '', 'bahu-membahu-bagikan-makan-siang-gratis-untuk-tenaga-medis-di-dki', 'N', 'N', 'Y', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">Melihat tenaga medis yang tengah berjuang menghadapi pandemi virus corona <a href=\"https://www.detik.com/tag/covid_19\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(70, 174, 230); font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; transition: all 0.3s ease-in-out 0s;\">COVID-19</a>, seorang wanita bernama Titi Rusdi tergerak hatinya untuk sedikit meringankan beban mereka. Ia membuat suatu gerakan yang diberi nama \'Lunch 4 Paramedic\' di mana memberi makan siang gratis untuk para tenaga medis.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">Awalnya, gerakan ini hanya ia lakukan sendiri dan dikabarkan ke teman terdekatnya. Namun saat ia memposting gerakan ini di akun Twitternya, banyak pula yang menanyakan dan antusias ingin membantu.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">\"Tidak semua RS menyediakan makan untuk <a href=\"https://www.detik.com/tag/paramedis\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(70, 174, 230); font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; transition: all 0.3s ease-in-out 0s;\">paramedis</a>. Kebanyakan mereka harus cari makan sendiri. Saya pikir mungkin bisa meringankan sedikit kerja mereka dengan menyediakan mereka makan siang,\" ujar Titi saat dihubungi detikcom Selasa, (31/3/2020).</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">Tak tanggung-tanggung, bukan cuma satu rumah sakit yang ia bantu melalui gerakannya ini. Sudah lebih dari empat rumah sakit di Jakarta yang terbatu dengan gerakannya ini seperti RS Universitas Indonesia (RSUI), RSUP Persahabatan, RSUD Tanah Abang, RSUP Fatmawati, dan beberapa rumah sakit kecil.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">\"RSUD Tanah Abang itu tidak besar tapi lumayan banyak pasien suspect COVID-19-nya di situ. Kadang kan orang hanya perhatian ke RS besar saja, padahal di Jakarta ini semua RSUD ini penuh sekarang,\" tambahnya.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">Hari ini, ia mengatakan sudah sebanyak 2.450 lunch box yang dibagikan kepada <a href=\"https://www.detik.com/tag/rumah-sakit\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(70, 174, 230); font-family: inherit; font-weight: inherit; font-style: inherit; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; transition: all 0.3s ease-in-out 0s;\">rumah sakit</a> tersebut. Bahkan Titi tak menutup kemungkinan jika ke depannya ia akan menyediakan dapur umum untuk masyarakat kecil karena menilai ekonomi pun turut berdampak karena adanya wabah corona, apalagi ekonomi masyarakat kecil dengan adanya kebijakan bekerja dari rumah.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(92, 95, 104);\">\"Efek pandemic corona ini kan besar sekali secara ekonomi apalagi ke masyarakat kelas bawah. Mungkin saya akan alokasikan lunch box yang lebih murah untuk masyarakat bawah, atau saya bikin dapur umum kecil di beberapa titik,\" tutupnya.</p>', '', 'Jumat', '2020-11-06', '10:20:56', 'cov1.jpeg', 4, '', 'Y'),
(695, 1, 'admin', 'Profil Dosen', 'Profil Dosen', '', 'overview-prodi-sarjana-terapan-div-promkes', 'N', 'Y', 'N', '<p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>', '', 'Kamis', '2020-10-29', '14:27:12', 'hamas_inggris.jpg', 0, '', 'Y'),
(696, 1, 'admin', 'Kurikulum', 'Kurikulum D-IV Promkes', '', 'kurikulum', 'N', 'Y', 'N', '<p>Isi&nbsp;Kurikulum DIV Promkes</p>', '', 'Kamis', '2020-10-29', '17:05:26', 'gambar_berita1.png', 0, '', 'Y'),
(697, 1, 'admin', 'Overview', 'Overview D-IV Promkes', '', 'profil-dosen', 'N', 'Y', 'N', '<p>Isi&nbsp;Profil Dosen D-IV Promkes</p>', '', 'Kamis', '2020-10-29', '18:23:04', 'bus-transjakarta.jpg', 0, '', 'Y'),
(698, 2, 'admin', 'Profil Dosen', 'Profil Dosen D-III Farmasi', '', 'profil-dosen', 'N', 'Y', 'N', '<p>Isi&nbsp;Profil Dosen D-III Farmasi</p>', '', 'Kamis', '2020-10-29', '19:00:28', '', 0, '', 'Y'),
(699, 2, 'admin', 'Kurikulum', 'D-III Farmasi Kurikulum', '', 'kurikulum', 'N', 'Y', 'N', '<p>Isi&nbsp;D-III Farmasi Kurikulum</p>', '', 'Kamis', '2020-10-29', '19:02:34', '', 0, '', 'Y'),
(700, 2, 'admin', 'Overview', 'Overview D-III Farmasi', '', 'overview', 'N', 'Y', 'N', '<p>Isi Overview D-III Farmasi</p>', '', 'Kamis', '2020-10-29', '19:03:03', '', 0, '', 'Y'),
(701, 3, 'admin', 'Profil Dosen', 'Profil Dosen D-III Keperawatan', '', 'profil-dosen', 'N', 'Y', 'N', '<p>Isi&nbsp;Profil Dosen D-III Keperawatan</p>', '', 'Kamis', '2020-10-29', '19:17:12', '', 0, '', 'Y'),
(702, 3, 'admin', 'Kurikulum', 'Kurikulum D-III Keperawatan', '', 'kurikulum', 'N', 'Y', 'N', '<p>Isi&nbsp;Kurikulum D-III Keperawatan</p>', '', 'Kamis', '2020-10-29', '19:18:09', '', 0, '', 'Y'),
(703, 3, 'admin', 'Overview', 'Overview D-III Keperawatan', '', 'overview', 'N', 'Y', 'N', '<p>Isi&nbsp;Overview D-III Keperawatan</p>', '', 'Kamis', '2020-10-29', '19:18:47', '', 0, '', 'Y'),
(704, 65, 'admin', 'Ruang Serbaguna', 'Ruang Serbaguna Poltek Kaltara', '', 'ruang-serbaguna', 'N', 'Y', 'N', '<p>Isi&nbsp;Ruang Serbaguna Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:24:13', 'slide-17.jpg', 0, '', 'Y'),
(705, 65, 'admin', 'Aula', 'Aula Poltek Kaltara', '', 'aula', 'N', 'Y', 'N', '<p>Isi&nbsp;Aula Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:28:59', 'slide-17.jpg', 0, '', 'Y'),
(706, 65, 'admin', 'Ruang Tamu', 'Ruang Tamu Poltek Kaltara', '', 'ruang-tamu', 'N', 'Y', 'N', '<p>Isi&nbsp;Ruang Tamu Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:29:43', 'slide-17.jpg', 0, '', 'Y'),
(707, 65, 'admin', 'Perpustakaan', 'Perpustakaan Poltek Kaltara', '', 'perpustakaan', 'N', 'Y', 'N', '<p>Isi&nbsp;Perpustakaan Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:30:50', 'slide-17.jpg', 0, '', 'Y'),
(708, 65, 'admin', 'Kantin', 'Kantin Poltek Kaltara', '', 'kantin', 'N', 'Y', 'N', '<p>Isi&nbsp;Kantin Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:31:34', 'slide-17.jpg', 0, '', 'Y'),
(709, 65, 'admin', 'Dapur', 'Dapur Poltek Kaltara', '', 'dapur', 'N', 'Y', 'N', '<p>Isi&nbsp;Dapur Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:32:07', 'slide-17.jpg', 0, '', 'Y'),
(710, 65, 'admin', 'Laboratorium', 'Laboratorium Poltek Kaltara', '', 'laboratorium', 'N', 'Y', 'N', '<p>Isi&nbsp;Laboratorium Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:32:39', 'slide-17.jpg', 0, '', 'Y'),
(711, 65, 'admin', 'Mushola', 'Mushola Poltek Kaltara', '', 'mushola', 'N', 'Y', 'N', '<p>Isi&nbsp;Mushola Poltek Kaltara</p>', '', 'Kamis', '2020-10-29', '19:33:16', 'slide-17.jpg', 0, '', 'Y'),
(712, 65, 'admin', 'Asrama', 'Asrama Poltek Kaltara', '', 'asrama', 'N', 'Y', 'N', '<p><span style=\"font-size: 1rem;\"></span></p><p style=\"text-align: center;\"><img src=\"http://localhost/akper/asset/images/moscow.jpg\" style=\"width: 257.641px; height: 145.132px;\"><img src=\"http://localhost/akper/asset/images/arab1.jpg\" style=\"width: 259.573px; height: 146px;\"><span style=\"color: rgb(62, 77, 92); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><br></span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(62, 77, 92); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Program studi Teknik Elektronika menyelenggarakan proses belajar mengajar dengan menekankan pada kemampuan praktik yang dilandasi oleh pengetahuan yang sesuai. Proses belajar mengajar didukung oleh fasilitas kelas dan laboraturium yang sangat memadai, dengan dipandu oleh dosen dan laboran yang berpengalaman. Dosen dan laboran telah mengikuti berbagai training baik dalam negeri maupun luar negeri.</span></p><p></p><div style=\"text-align: center;\"><img src=\"http://localhost/akper/asset/images/Sharp-Bulding.jpg\" style=\"font-size: 1rem; width: 540.922px; height: 337.729px;\"></div><br><p></p>', '', 'Kamis', '2020-10-29', '19:34:29', 'anis_mengatasi_banjir1.jpg', 0, '', 'Y'),
(728, 31, 'poltek.kaltara', '4 Provinsi Ini Laporkan Tidak Ada Kasus Baru Corona Per 9 November', 'coroma', '', '4-provinsi-ini-laporkan-tidak-ada-kasus-baru-corona-per-9-november', 'N', 'N', 'Y', '<p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); display: inline; font-family: helvetica, arial, sans-serif;\">Berdasarkan situs resmi Satgas Penanganan&nbsp;<a href=\"https://www.detik.com/tag/covid_19\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">COVID-19</a>&nbsp;pada Senin (9/11/2020), kasus baru&nbsp;<a href=\"https://www.detik.com/tag/corona\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">Corona</a>&nbsp;di Indonesia bertambah sebanyak 2.853 kasus, sehingga totalnya sudah mencapai 440.569 orang.</p><p style=\"box-sizing: content-box; margin-top: 16px; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">DKI Jakarta menjadi provinsi dengan penambahan&nbsp;<a href=\"https://www.detik.com/tag/kasus-corona\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">kasus Corona</a>&nbsp;baru tertinggi sebanyak 716 orang. Sementara posisi kedua ditempati Jawa Tengah.</p><h3 style=\"box-sizing: content-box; font-size: 23px; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; font-family: helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.25; color: rgb(68, 68, 68);\">Berikut 4 provinsi di Indonesia yang tidak ada kasus baru Corona per 9 November:</h3><ol style=\"box-sizing: content-box; padding: 0px 0px 0px 25px; margin-top: 14px; margin-bottom: 14px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><li style=\"box-sizing: content-box; padding: 5px 0px;\">Bangka Belitung</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Kalimantan Barat</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Sulawesi Tengah</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Papua</li></ol><p style=\"box-sizing: content-box; padding: 5px 0px;\">Adapun 5 Provinsi dengan kasus Corona terbanyak, Senin (9/11/2020).</p><p style=\"box-sizing: content-box; padding: 5px 0px;\"><span style=\"color: rgb(68, 68, 68); font-family: helvetica, Arial, sans-serif; font-size: 23px; font-weight: bold;\">DKI Jakarta: 716 kasus</span></p><ol style=\"box-sizing: content-box; padding: 0px 0px 0px 25px; margin-top: 14px; margin-bottom: 14px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><li style=\"box-sizing: content-box; padding: 5px 0px;\"><ul style=\"box-sizing: content-box; padding: 0px 0px 0px 25px; margin-top: 14px; margin-bottom: 14px;\"><li style=\"box-sizing: content-box; padding: 5px 0px;\">JawaTengah: 619 kasus</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Jawa Barat: 330 kasus</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Jawa Timur: 234 kasus</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Sumatera Barat: 126 kasus</li></ul></li></ol>', '', 'Senin', '2020-11-09', '20:03:44', 'menengok-aktivitas-di-dalam-laboratorium-kontainer-covid-19-4_169.jpeg', 7, '', 'Y'),
(722, 67, 'poltek.kaltara', 'Pembentukan Ikatan Alumni Politeknik Kaltara', '', '', 'pembentukan-ikatan-alumni-politeknik-kaltara', 'Y', 'Y', 'N', '.', '', 'Sabtu', '2020-11-07', '20:10:18', '0001-12812554735_20201107_210924_0000.png', 0, '', 'Y'),
(723, 67, 'poltek.kaltara', '.', '', '', '', 'Y', 'Y', 'N', '.', '', 'Sabtu', '2020-11-07', '20:51:46', '20201107_215106_0000.png', 0, '', 'Y'),
(730, 31, 'poltek.kaltara', 'Daftar 2 Obat yang Diizinkan BPOM RI dan 14 Herbal yang Diteliti untuk COVID-19', '', '', 'daftar-2-obat-yang-diizinkan-bpom-ri-dan-14-herbal-yang-diteliti-untuk-covid19', 'N', 'N', 'Y', '<p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; display: inline; font-family: helvetica, arial, sans-serif;\"><font color=\"#000000\" style=\"\"><a href=\"https://www.detik.com/tag/bpom?_ga=2.21468665.359230150.1605608748-1990003035.1604914706\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: content-box; transition: all 200ms linear 0s; font-weight: bold; font-style: italic;\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\">BPOM</font></a><span style=\"background-color: rgb(255, 255, 255);\"> </span></font><font color=\"#444444\">memberikan izin penggunaan darurat 2 obat untuk pasien COVID-19, yakni Favipiravir dan Remdevisir. Sebanyak 14 produk herbal juga diberi izin serupa.</font></p><p style=\"box-sizing: content-box; margin-top: 16px; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">\"Dua obat ini sudah mendapatkan hasil uji klinik yang telah dipublikasikan secara internasional. Sudah mendapatkan data yang cukup yang dipercaya dapat meningkatkan angka kesembuhan dan menurunkan angka kematian pasien COVID-19,\" kata Kepala Badan Pengawas Obat dan Makanan (<a href=\"https://www.detik.com/tag/bpom\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">BPOM</a>), Penny Kusumastuti Lukito dalam rapat dengan Komisi IX DPR, Selasa (17/11).</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Favipiravir merupakan obat dalam bentuk tablet dan diberikan untuk pasien bergejala ringan hingga sedang (usia 18 tahun lebih). Remdevisir berbentuk serbuk injeksi dan diberikan untuk pasien COVID-19 yang dirawat di rumah sakit.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">BPOM juga telah memberikan persetujuan EUA untuk 7 industri farmasi terkait dua obat ini. Berikut rinciannya:</p><ol style=\"box-sizing: content-box; padding: 0px 0px 0px 25px; margin-top: 14px; margin-bottom: 14px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><li style=\"box-sizing: content-box; padding: 5px 0px;\">Favipiravir dengan nama dagang Avigan diproduksi oleh Fujifilm Toyama Chemical Jepang/PT Beta Pharmacon.</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Favipiravir oleh Kimia Farma.</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Remdesivir dengan nama dagang Cofivor diproduksi oleh Hetero India/Amarox Pharma.</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Remdesivir dengan nama dagang Desrem oleh Mylan India/Indo Farma</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Remdesivir dengana nama dagang Jubi-R oleh Jubilant India/Dexa Medica</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Remdesivir dengan nama dagang Remdac oleh Cadila Healthcare India/PT Kimia Farma</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Remdesivir dengan nama dagang Cipremi oleh Cipta India/PT Soho Industri Farmasi.</li></ol><table class=\"linksisip\" style=\"box-sizing: content-box; border-spacing: 0px; display: block; width: 590px; color: rgb(31, 172, 150); margin: 15px 0px; padding: 0px; font-family: helvetica, arial, sans-serif;\"><tbody style=\"box-sizing: content-box;\"><tr style=\"box-sizing: content-box;\"><td style=\"box-sizing: content-box; padding: 0px;\"><div class=\"lihatjg\" style=\"box-sizing: content-box;\"><br></div></td></tr></tbody></table><span style=\"font-size: 1rem; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Selain obat, BPOM juga telah melakukan pendampingan terhadap 14 komponen herbal sebagai imunomodulator atau pendamping pengobatan pasien </span><a href=\"https://www.detik.com/tag/covid_19\" style=\"background: rgb(255, 255, 255); font-size: 1rem; font-family: helvetica, arial, sans-serif; box-sizing: content-box; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">COVID-19</a><span style=\"font-size: 1rem; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">. Ke-14 produk ini juga tengah menjalani uji di sejumlah RS.</span><h2 style=\"box-sizing: content-box; font-size: 26px; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; font-family: helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.25; position: relative; z-index: 10; color: rgb(68, 68, 68);\"><br><br>Berikut daftar lengkapnya:</h2><ol style=\"box-sizing: content-box; padding: 0px 0px 0px 25px; margin-top: 14px; margin-bottom: 14px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><li style=\"box-sizing: content-box; padding: 5px 0px;\">Cordycep dan Deteflu</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Ekstrak daun jambu biji</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Health tone oil</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Avimac</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Virgin coconut oil</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Ekstrak etanol ketopeng China</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Golerend, Penglar</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Minyak atsiri daun ecalyptus</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Awer-awer</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Innamed COV</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Jamu purwarupa</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Vipalboemin</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Bejo</li><li style=\"box-sizing: content-box; padding: 5px 0px;\">Health tone.</li></ol>', '', 'Selasa', '2020-11-17', '20:05:50', '5aa82a6c-5a96-4b69-b505-9ec829b96608_169.jpeg', 2, 'kesehatan', 'Y'),
(731, 31, 'poltek.kaltara', 'Deklarasi Anti Nyontek di adakan di Politeknik Kaltara', 'UTS bersih dan jujur', '', 'deklarasi-anti-nyontek-di-adakan-di-politeknik-kaltara', 'N', 'N', 'Y', '<p>Bertempat dikampus Politeknik Kaltara diadakan kegiatan Deklarasi Anti Nyontek yang diadakan sebelum pelaksanaan Ujian Tengah Semester (UTS) yang diikuti oleh semua mahasiswa dari semua program studi</p>', '', 'Selasa', '2020-11-17', '20:13:01', 'WhatsApp_Image_2020-11-17_at_08_57_16.jpeg', 4, 'hiburan', 'Y'),
(732, 31, 'poltek.kaltara', 'Sama-sama 90 Persen Efektif, Ini Kelebihan Vaksin COVID-19 Moderna Vs Pfizer', '', '', 'samasama-90-persen-efektif-ini-kelebihan-vaksin-covid19-moderna-vs-pfizer', 'N', 'N', 'Y', '<p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); display: inline; font-family: helvetica, arial, sans-serif;\">Sama-sama diklaim punya efektivitas di atas 90 persen,&nbsp;<a href=\"https://www.detik.com/tag/vaksin-covid_19\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">vaksin COVID-19</a>&nbsp;buatan Moderna dan Pfizer memang punya sejumlah kemiripan. Namun Moderna mengklaim vaksin buatannya punya keunggulan.</p><p style=\"box-sizing: content-box; margin-top: 16px; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Selain punya efektivitas yang mencapai 94,5 persen,&nbsp;<a href=\"https://www.detik.com/tag/vaksin-covid_19\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">vaksin COVID-19</a>&nbsp;Moderna juga mirip dengan vaksin Pfizer dalam hal teknologi yang digunakan. Keduanya menggunakan platform mRNA, yakni menggunakan kode genetik virus yang bisa dibuat manusia.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Cara kerja vaksin ini adalah dengan melatih sistem imun tubuh untuk memerangi infeksi virus. Teknologi yang menggunakan platform mRNA ini terbilang paling mutakhir, belum pernah digunakan dalam vaksin yang saat ini beredar.</p><h2 style=\"box-sizing: content-box; font-size: 26px; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; font-family: helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.25; position: relative; z-index: 10; color: rgb(68, 68, 68);\">Apa kelebihan vaksin Moderna dibanding Pfizer?</h2><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Dr Tal Zacks, chief medical officer Moderna, mengatakan vaksin ini bisa bertahan selama 6 bulan pada penyimpanan dengan suhu minus 20 derajat Celcius. Bahkan masih bisa bertahan selama 30 hari pada suhu pendingin biasa.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">\"Kami memanfaatkan infrastruktur yang sudah ada untuk vaksin lain di pasaran,\" kata Dr Zacks, dikutip dari CNN, Selasa (17/11/2020).</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Vaksin lain yang bisa disimpan dengan suhu serupa adalah vaksin cacar air.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; font-family: helvetica, arial, sans-serif;\"><span style=\"color: rgb(68, 68, 68);\">Sebagai pembanding, vaksin&nbsp;<a href=\"https://www.detik.com/tag/vaksin-covid_19\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">COVID-19</a>&nbsp;Pfizer disebut membutuhkan penyimpanan pada suhu minus 75 derajat Celcius. Tidak ada vaksin lain di Amerika Serikat yang membutuhkan suhu serendah itu untuk penyimpanan, sehingga masalah distribusi akan menjadi tantangan serius.</span><span style=\"background-color: rgb(0, 255, 255);\">detikhealth</span></p>', '', 'Selasa', '2020-11-17', '21:06:24', 'ilustrasi-vaksin-corona_169.jpeg', 3, 'kesehatan', 'Y'),
(733, 31, 'poltek.kaltara', 'Indonesia Bakal Beli Vaksin COVID-19 Pfizer? Ini Kata Kemenkes', '', '', 'indonesia-bakal-beli-vaksin-covid19-pfizer-ini-kata-kemenkes', 'N', 'N', 'Y', '<p><span style=\"color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">&nbsp;</span></p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); display: inline; font-family: helvetica, arial, sans-serif;\"><a href=\"https://www.detik.com/tag/vaksin-corona-pfizer\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">Vaksin Corona Pfizer</a>&nbsp;diklaim efektif 90 persen mencegah symptomatic&nbsp;<a href=\"https://www.detik.com/tag/covid_19\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">COVID-19</a>. Artinya, seseorang yang disuntik vaksin ini tetap bisa terinfeksi, namun tidak mengalami gejala.</p><p style=\"box-sizing: content-box; margin-top: 16px; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Ini tetap jadi kabar baik untuk meredakan pandemi COVID-19. Lantas apakah Indonesia tertarik membeli vaksin Corona Pfizer?</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Plt Direktur Jenderal Pencegahan dan Pengendalian Penyakit (P2P) Kemenkes Budi Hidayat mengatakan, hingga saat ini belum ada keputusan apakah Indonesia akan memasukkan vaksin Corona Pfizer ke dalam program vaksinasi COVID-19 di Indonesia.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Lebih lanjut, Budi menjelaskan, ia dan pihaknya masih menunggu perkembangan terbaru dari penelitian uji klinis fase 3 vaksin Corona Pfizer.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">\"Didiskusikan dulu, belum bisa jawab soal penggunaannya, karena masih dipelajari,\" ucap Budi saat dihubungi&nbsp;<strong style=\"box-sizing: content-box; font-weight: bold;\">detikcom</strong>, Rabu (11/11/2020).</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Sementara itu, Menteri Koordinator Bidang Perekonomian Airlangga Hartarto mengaku masuknya&nbsp;<a href=\"https://www.detik.com/tag/vaksin-corona-pfizer\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">vaksin Corona Pfizer</a>&nbsp;ke Indonesia masih menjadi pertimbangan. Sebab, masih banyaknya pembahasan soal pengadaan vaksin.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">\"Ini disiapkan untuk menjadi bagian berikutnya (dari pengadaan vaksin di dalam negeri), karena masih banyak yang dibahas terkait pengadaan vaksin,\" ungkap Airlangga, Selasa (10/11/2020) dikutip dari CNNIndonesia.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">\"Indonesia tentunya dari berbagai vaksin itu dipertimbangkan, tapi kami belum memasukkan Pfizer sebagai salah satu (pada saat ini),\" katanya.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\">Di sisi lain, Menteri Keuangan Sri Mulyani mengaku kabar baik yang datang dari&nbsp;<a href=\"https://www.detik.com/tag/vaksin-corona-pfizer\" style=\"box-sizing: content-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 200ms linear 0s; color: rgb(23, 128, 112); font-weight: bold; font-style: italic;\">vaksin Corona Pfizer</a>&nbsp;ini memberikan harapan baru bagi dunia.</p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; font-family: helvetica, arial, sans-serif;\"><span style=\"color: rgb(68, 68, 68);\">\"Kabar vaksin (Pfizer) memberi sentimen positif di seluruh dunia. Lalu hasil pemilu AS juga diharapkan bisa memberi sentimen positif,\" kata Sri Mulyani dalam acara CNBC Indonesia, Selasa (10/11/2020).</span><span style=\"background-color: rgb(0, 255, 255);\">detikhealth</span></p><p style=\"box-sizing: content-box; margin-bottom: 20px; line-height: 22.4px; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif;\"><br></p>', '', 'Rabu', '2020-11-18', '08:18:27', 'ilustrasi-vaksin-covid-19_169g.jpeg', 11, 'kesehatan', 'Y'),
(734, 67, 'poltek.kaltara', 'HGN', 'H', '', 'hgn', 'Y', 'Y', 'N', '<p><span style=\"background-color: rgb(255, 255, 255);\">H</span></p>', '', 'Selasa', '2020-11-24', '13:19:03', 'SUKSESKAN_PEMBENTUKAN1.png', 0, 'kesehatan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 8),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', ''),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', ''),
(240, 31, 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', ''),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', ''),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', ''),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', ''),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', ''),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', 'sdasdasd', ''),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', ''),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', ''),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', ''),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', ''),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', ''),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', ''),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', ''),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', ''),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', ''),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', ''),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', ''),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', ''),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', ''),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', ''),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', ''),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', ''),
(261, 51, 'poltek.kaltara', 'tes', 'tes', '', 'ss.JPG'),
(262, 53, 'poltek.kaltara', '1', '1', '', 'politeknik_kaltara_128202267_294230721907562_1998642749331764112_n.jpg'),
(263, 54, 'poltek.kaltara', '1', '1', '', '123570583_206473024178713_2181526929189361211_o.jpg'),
(264, 54, 'poltek.kaltara', '2', '2', '', '125805975_213817996777549_8270484962881858994_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(52, 'Yayasan Pendidikan dan Sosial Kaltara', 'yayasan-pendidikan-dan-sosial-kaltara', '<p></p><p><br></p><p><b>Ketua Yayasan Pendidikan dan Sosial Kaltara</b></p><p><b><br></b></p><p><b>Drs. H. Mustamin Bachri, MAP</b></p>\r\n', '2020-10-29', '002_(2).jpg', 'admin', 73, '10:54:14', 'Kamis'),
(53, 'Pengantar Direktur', 'pengantar-direktur', '<p><span style=\"color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify;\"><b>Assalamu Alaikum Wr. Wb</b></span></p><p><span style=\"color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify;\"><b> </b></span></p><p><span style=\"color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify;\"><b>Salam sejahtera bagi kita semua</b></span></p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\"><b>Para pengunjung yang terhormat,</b><br></p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\">Politeknik Kaltara merupakan salah satu perguruan tinggi Vokasi di Indonesia dan lebih khusus lagi di Provinsi yang termuda di Indonesia Provinsi Kalimantan Utara, yang bernaung di bawah&nbsp; Yayasan Pendidikan dan Sosial Kaltara. Karakter tinggi vokasi yang memiliki visi&nbsp;Politeknik Kaltara menjadi lembaga pendidikan tinggi vokasi yang berorientasi\r\nnasional, berkarakter, bermartabat dan unggul pada tahun 2035\r\n</p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\">Politeknik Kaltara secara resmi terbentuk sejak tanggal 24 Juni tahun 2020, dengan\r\nditerbitkannya Surat Keputusan Kemendikbud RI No. 592/M/2020 tentang “Izin\r\npenggabungan Akademi Keperawatan Kaltara di Kota\r\nTarakan dan Akademi Farmasi Kaltara Tarakan di kota\r\nTarakan menjadi Politeknik Kaltara di kota Tarakan\r\nProvinsi Kalimantan Utara yang diselenggarakan oleh\r\nYayasan Pendidikan dan Sosial Kaltara”. Jadi\r\nPoliteknik Kaltara adalah institusi Pendidikan Tinggi\r\nVokasi yang terbentuk dari 2 (dua) institusi yang\r\nsebelumnya telah berjalan, yaitu:\r\n1. Akademi Keperawatan Kaltara\r\nAkademi Keperawatan Kaltara merupan institusi pendidikan tinggi yang dibentuk\r\noleh Yapensos Kaltara dan berdiri berdasarkan SK\r\nMendiknas No 151 / D/ O / 2003 tertanggal 5 September\r\n2003. Akademi Keperawatan Kaltara sejak dibuka hingga\r\nberubah bentuk hanya memiliki 1 (satu) program studi,\r\nyaitu D-III Keperawatan dengan. Lulusan Akademi\r\nKeperawatan Kaltara telah diserap diberbagai tempat\r\nfasilitas kesehatan terutama yang berada di wilayah Kalimantan Utara, baik dari\r\ninstitusi swasta maupun negeri.\r\n2. Akademi Farmasi Kaltara Tarakan\r\nAkademi Farmasi Kaltara Tarakan merupan instusi pendidikan\r\ntinggi yang dikelola oleh Yapensos Kaltara dengan hanya\r\nmemiliki 1 (satu) program studi, yaitu D-III Farmasi berdasarkan\r\nSK Menristekdikti No 250/KPT/I/2017 tanggal 8 Mei 2017.&nbsp;<br></p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\">jadi, dengan terbitnya website Profil Politeknik Kaltara ini, diharapkan mampu menjadi sumber informasi bagi segenap masyarakat dan mitra usaha secara luas, guna mempercepat jalinan kerjasama di masa mendatang.<br></p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\">Akhirnya, semoga website ini dapat memberikan manfaat bagi semua pihak.</p><div class=\"symple-column symple-one-third symple-column-first \" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; margin: 0px 29.1094px 2em 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 223.219px; position: relative; float: left; color: rgb(77, 77, 77);\"></div><div class=\"symple-column symple-one-third symple-column-first \" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; margin: 0px 29.1094px 2em 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 223.219px; position: relative; float: left; color: rgb(77, 77, 77);\"></div><div class=\"symple-column symple-one-third symple-column-last \" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; margin-top: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 223.219px; position: relative; float: left; clear: right; color: rgb(77, 77, 77); margin-right: 0px !important;\"></div><p><strong style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-weight: bold; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\">Tarakan, 12 November 2020</strong><br style=\"color: rgb(77, 77, 77); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\"><strong style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-weight: bold; vertical-align: baseline; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\">Direktur,</strong></p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\"></p><p style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; vertical-align: baseline; text-align: justify; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(77, 77, 77);\"><strong style=\"font-family: inherit; font-weight: bold; font-style: inherit; vertical-align: baseline; text-align: left; margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent;\">Dr. Muh. Aris, M.Kes</strong><br><strong style=\"font-family: inherit; font-weight: bold; font-style: inherit; vertical-align: baseline; text-align: left; margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent;\">NIDN 11127401</strong></p>', '2020-10-29', 'WhatsApp_Image_2020-11-07_at_20_22_59.jpeg', 'admin', 36, '11:01:15', 'Kamis'),
(54, 'Sejarah', 'sejarah', '<p>Politeknik Kaltara secara resmi terbentuk sejak tanggal 24 Juni tahun 2020, dengan\r\nditerbitkannya Surat Keputusan Kemendikbud RI No. 592/M/2020 tentang “Izin\r\npenggabungan Akademi Keperawatan Kaltara di kota\r\nTarakan dan Akademi Farmasi Kaltara Tarakan di kota\r\nTarakan menjadi Politeknik Kaltara di kota Tarakan\r\nProvinsi Kalimantan Utara yang diselenggarakan oleh\r\nYayasan Pendidikan dan Sosial Kaltara”. </p><p>Jadi\r\nPoliteknik Kaltara adalah institusi Pendidikan Tinggi\r\nVokasi yang terbentuk dari 2 (dua) institusi yang\r\nsebelumnya telah berjalan, yaitu:\r\n</p><p><b>1. Akademi Keperawatan Kaltara\r\n</b></p><p>Akademi Keperawatan Kaltara merupan institusi pendidikan tinggi yang dibentuk\r\noleh Yapensos Kaltara dan berdiri berdasarkan SK\r\nMendiknas No 151 / D/ O / 2003 tertanggal 5 September\r\n2003. Akademi Keperawatan Kaltara sejak dibuka hingga\r\nberubah bentuk hanya memiliki 1 (satu) program studi,\r\nyaitu D-III Keperawatan dengan. Lulusan Akademi\r\nKeperawatan Kaltara telah diserap diberbagai tempat\r\nfasilitas kesehatan terutama yang berada di wilayah Kalimantan Utara, baik dari\r\ninstitusi swasta maupun negeri.\r\n</p><p><b>2. Akademi Farmasi Kaltara Tarakan\r\n</b></p><p>Akademi Farmasi Kaltara Tarakan merupan instusi pendidikan\r\ntinggi yang dikelola oleh Yapensos Kaltara dengan hanya\r\nmemiliki 1 (satu) program studi, yaitu D-III Farmasi berdasarkan\r\nSK Menristekdikti No 250/KPT/I/2017 tanggal 8 Mei 2017. <br></p>', '2020-10-29', 'P1050117.JPG', 'admin', 15, '11:02:30', 'Kamis'),
(55, 'Visi dan Misi', 'visi-dan-misi', '<p><b>VISI</b></p><p>Politeknik Kaltara menjadi lembaga pendidikan tinggi vokasi yang berorientasi\r\nnasional, berkarakter, bermartabat dan unggul pada tahun 2035<br></p><p><span style=\"font-size: 1rem;\"><b>MISI</b></span></p><p>a. Menyelenggarakan pendidikan dengan dasar keilmuan yang kuat bersinergi\r\nantar disiplin ilmu dan berorientasi nasional\r\n</p><p>b. Menyelenggarakan penelitian yang menghasilkan ilmu pengetahuan terapan\r\ndan produk-produk intelektual yang unggul sesuai kebutuhan bangsa\r\n</p><p>c. Memajukan bangsa melalui penerapan ilmu pengetahuan yang dikembangkan\r\ndalam kehidupan masyarakat\r\n</p><p>d. Memperluas dan memperkuat jejaring kerjasama dengan berbagai pihak pada\r\ntingkat regional, nasional dan global\r\n</p><p>e. Menjalankan tata kelola perguruan tinggi dengan mengoptimalkan sumber\r\ndaya <span style=\"font-size: 1rem;\"><b><br></b></span><br></p>', '2020-10-29', 'WhatsApp_Image_2020-10-20_at_09_04_31.jpeg', 'admin', 11, '11:03:32', 'Kamis'),
(56, 'Struktur Organisasi', 'struktur-organisasi', '<p><img src=\"https://poltekkaltara.ac.id/asset/images/Untitled.png\" style=\"width: 100%;\"><br></p>', '2020-10-29', 'WhatsApp_Image_2020-10-20_at_09_04_311.jpeg', 'admin', 19, '11:04:22', 'Kamis'),
(57, 'Kerja Sama', 'kerja-sama', '<p><span style=\"color: rgb(62, 77, 92); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Politeknik Kaltara memiliki hubungan kerjasama dengan beberapa instansi baik instansi pemerintahan maupun perusahaan dalam dan luar negeri. Sebagai perguruan tinggi swasta yang memiliki visi </span><span style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">&nbsp;menjadi lembaga pendidikan tinggi vokasi yang berorientasi nasional, berkarakter, bermartabat dan unggul pada tahun 2035</span><span style=\"color: rgb(62, 77, 92); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">, kerjasama tersebut tidak hanya berupa dalam penyerapan alumni di dunia kerja, namun juga dalam bentuk peningkatan kualitas&nbsp;tenaga pengajar maupun penyediaan fasilitas perkuliahan serta bentuk kerjasama lainnya. Berikut beberapa Kerjasama Politeknik Kaltara dengan Instansi Dalam Negeri maupun Luar Negeri :</span><br></p>', '2020-10-29', 'WhatsApp_Image_2020-10-20_at_09_04_312.jpeg', 'admin', 7, '11:05:05', 'Kamis'),
(58, 'Laporan Tahunan', 'laporan-tahunan', '<p>Isi Laporan Tahunan</p>', '2020-10-29', 'WhatsApp_Image_2020-10-20_at_09_04_313.jpeg', 'admin', 9, '11:06:21', 'Kamis'),
(59, 'Sarjana Terapan D-IV Promkes', 'sarjana-terapan-div-promkes', '<p>Isi&nbsp;Sarjana Terapan D-IV Promkes</p>', '2020-10-29', '', 'admin', 4, '14:14:07', 'Kamis'),
(60, 'Penilitian', 'penilitian', '<p>Isi Penilitian</p>', '2020-11-01', 'departments-4.jpg', 'admin', 9, '15:03:23', 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Politeknik Ngodingpintar', 'info@poltek.ac.id', 'https://poltek.ac.id', 'https://facebook.com/#, \r\nhttps://twitter.com/#, \r\nhttps://www.instagram.com/#/, \r\nhttps://www.youtube.com/ngodingpintar', 'Jl. P. Lumpuran, Kampung 1 Skip, Tarakan Tengah, Kota Tarakan, Kalimantan Utara', '+6282350595164', 'Poltek.ac.id merupakan website resmi dari Politeknik, dimana semua informasi yang berhubungan dengan politeknik akan dipublish pada website ini.', 'poltek.ac.id, politeknik, tarakan, kalimantan utara, poltek', 'favicon.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.13644019761!2d117.6127153570613!3d3.316431565277392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x32138a1a22483871%3A0xf4d8b261b15faa2d!2sAkademi%20Keperawatan%20Kaltara!5e0!3m2!1sid!2sid!4v1604632387460!5m2!1sid!');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Penerimaan Mahasiswa Baru', 'poltek.kaltara', 'https://poltekkaltara.ac.id/', '.', 'Copy_of_Art_Event_Flyer.png', '2020-11-09'),
(41, 'Andik Firmasnyah', 'admin', 'Pesepakbola', 'Saya sangat suka', 'andik-vermansyah_20180123_024550.jpg', '2020-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`, `posisi`) VALUES
(1, 'Iklan Home No 1', 'admin', 'http://phpmu.com', '', 'home.jpg', '2015-03-17', 'home'),
(2, 'Iklan Home No 2', 'admin', 'http://phpmu.com', '', 'home.jpg', '2015-03-17', 'home'),
(3, 'Iklan Home No 3', 'admin', 'http://phpmu.com', '', 'home.jpg', '2015-03-17', 'home'),
(4, 'Iklan Detail Berita', 'admin', 'http://phpmu.com', '', 'home.jpg', '2019-11-18', 'berita_detail'),
(5, 'Iklan Detail Video', 'admin', 'http://phpmu.com', '', 'home.jpg', '2019-11-18', 'detail_video'),
(6, 'Iklan Detail Berita Foto', 'admin', 'http://phpmu.com', '', 'home.swf', '2019-11-18', 'berita_foto'),
(7, 'Iklan Halaman Download', 'admin', 'http://phpmu.com', '', 'home.jpg', '2019-11-18', 'hal_download'),
(8, 'Iklan detail agenda', 'admin', 'http://phpmu.com', '', 'home.jpg', '2019-11-18', 'detail_agenda'),
(9, 'Iklan halaman statis', 'admin', 'http://phpmu.com', '', '', '2019-11-18', 'hal_statis'),
(35, 'Iklan 2', 'admin', 'http://phpmu.com', '', 'iklan2.png', '2019-11-18', 'home_tengah'),
(36, 'Iklan 3', 'admin', 'http://phpmu.com', '', 'iklan3.png', '2019-11-18', 'home_tengah'),
(37, 'Iklan 4', 'admin', 'http://phpmu.com', '', 'iklan4.png', '2019-11-18', 'home_tengah'),
(38, 'iklan 5', 'admin', 'http://phpmu.com', '', 'iklan5.png', '2019-11-18', 'home_bawah'),
(39, 'iklan 6', 'admin', 'http://phpmu.com', '', 'iklan6.png', '2019-11-18', 'home_bawah'),
(40, 'iklan 7', 'admin', 'http://phpmu.com', '', 'iklan7.png', '2019-11-18', 'home_bawah');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(19, 'Prestasi', 'admin', 'prestasi', 'Y', 2, ''),
(67, 'Slide', 'poltek.kaltara', 'slide', 'Y', 1, ''),
(31, 'Berita', 'admin', 'berita', 'Y', 5, ''),
(1, 'Sarjana Terapan D-IV Promkes', 'admin', 'sarjana-terapan-div-promkes', 'Y', 1, ''),
(2, 'Program Studi D-III Farmasi ', 'admin', 'diii-farmasi-', 'Y', 2, ''),
(3, 'Program Studi D-III Keperawatan', 'admin', 'program-studi-diii-keperawatan', 'Y', 3, ''),
(65, 'Fasilitas', 'admin', 'fasilitas', 'Y', 4, ''),
(66, 'Infografis', 'admin', 'infografis', 'Y', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logoe1.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(115, 0, 'Info Iklan', '#', 'Ya', 'Top', 2),
(113, 0, 'Tentang Kami', 'halaman/detail/tentang-kami-tunggul-news', 'Ya', 'Top', 1),
(190, 149, 'Pengantar Direktur', 'halaman/detail/pengantar-direktur', 'Ya', 'Bottom', 10),
(202, 170, 'D-III Keperawatan', 'kategori/detail/program-studi-diii-keperawatan', 'Ya', 'Bottom', 19),
(178, 0, 'Susunan Redaksi', '#', 'Ya', 'Top', 4),
(116, 0, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 3),
(179, 0, 'Pemberitaan Media Siber', '#', 'Ya', 'Top', 5),
(199, 170, 'Sarjana Terapan D-IV Promkes', 'kategori/detail/sarjana-terapan-div-promkes', 'Ya', 'Bottom', 17),
(149, 0, 'Tentang', '#', 'Ya', 'Bottom', 8),
(191, 149, 'Sejarah', 'halaman/detail/sejarah', 'Ya', 'Bottom', 11),
(187, 0, 'Kontak', 'hubungi', 'Ya', 'Bottom', 28),
(181, 0, 'Prestasi', 'kategori/detailinfo/prestasi', 'Ya', 'Bottom', 27),
(182, 0, 'Penelitian', 'halaman/detail/penilitian', 'Ya', 'Top', 6),
(183, 0, 'Infografis', 'kategori/detailinfo/infografis', 'Ya', 'Top', 7),
(189, 149, 'Yayasan', 'halaman/detail/yayasan-pendidikan-dan-sosial-kaltara', 'Ya', 'Bottom', 9),
(170, 0, 'Program Studi', '#', 'Ya', 'Bottom', 16),
(203, 0, 'Fasilitas', 'kategori/detail/fasilitas', 'Ya', 'Bottom', 26),
(192, 149, 'Visi dan Misi', 'halaman/detail/visi-dan-misi', 'Ya', 'Bottom', 12),
(193, 149, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Bottom', 13),
(194, 149, 'Kerja Sama', 'halaman/detail/kerja-sama', 'Ya', 'Bottom', 14),
(195, 149, 'Laporan Tahunan', 'halaman/detail/laporan-tahunan', 'Ya', 'Bottom', 15),
(201, 170, 'D-III Farmasi', 'kategori/detail/diii-farmasi-', 'Ya', 'Bottom', 18),
(204, 0, 'Informasi Publik', '#', 'Ya', 'Bottom', 20),
(205, 204, 'Berita', 'kategori/detailinfo/berita', 'Ya', 'Bottom', 21),
(206, 204, 'Agenda', 'agenda', 'Ya', 'Bottom', 22),
(207, 204, 'Pengumuman', 'pengumuman', 'Ya', 'Bottom', 23),
(208, 204, 'Foto', 'albums', 'Ya', 'Bottom', 24),
(209, 204, 'Video', 'playlist', 'Ya', 'Bottom', 25);

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Pemerintah Provinsi Kalimantan Utara', 'poltek.kaltara', 'kaltaraprov.go.id', '', '2.png', '2020-11-17'),
(2, 'BAN PT', 'poltek.kaltara', 'www.banpt.or.id', '', '4.png', '2020-11-17'),
(3, 'LAM PTKES', 'poltek.kaltara', 'https://lamptkes.org/', '', '3.png', '2020-11-17'),
(4, 'Pemenrintah Kota Tarakan', 'poltek.kaltara', 'www.tarakankota.go.id', '', '5.png', '2020-11-17'),
(5, 'Sevima', 'poltek.kaltara', 'sevima.com', '', '1.png', '2020-11-17'),
(6, 'Pemkot tarakan', 'poltek.kaltara', 'www.tarakankota.go.id', '', 'Untitled_design__3_-removebg-preview_(1).png', '2020-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\n<strong>CV. ASKTECH INDONESIA</strong><br />\r\nSwarakalibata.com | Portal Media Online International<br />\r\nJl. Angkasa Puri, Perundam 4 S No. C 2<br />\r\nKel. Tunggul Hitam, Koto Tangah<br />\r\nPadang - Sumatera Barat<br />\r\nTelp. 0751 - 461692<br />\r\nEmail: redaksi@swarakalibata.com</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Kiri - Iklan Sidebar', 'admin', 'http://phpmu.com', '', 'banner2.jpg', '2019-05-18'),
(2, 'Kanan - Iklan Sidebar', 'admin', 'http://phpmu.com', '', 'banner1.jpg', '2019-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(62, 'Video Kegiatan Politeknik Kaltara', 'poltek.kaltara', 'video-kegiatan-politeknik-kaltara', 'WhatsApp_Image_2020-10-20_at_09_04_31.jpeg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Mahyeldi Ansyarullah - Emzalmi', 'Jawaban', 'admin', 25, 'Y'),
(31, 'Robby Prihandaya - Dewi Safitri', 'Jawaban', 'admin', 1, 'Y'),
(32, 'Tommy Utama - Laura Hikmah', 'Jawaban', 'admin', 3, 'Y'),
(33, 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', 9, 'Y'),
(35, 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', 5, 'Y'),
(38, 'admin', 'Jawaban', 'dewi', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `judul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `info` text COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `judul`, `info`, `judul_seo`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Perkuliahan Awal Semester Genap 2020', 'isi pengumuman', 'perkuliahan-awal-semester-genap-2020', '2020-11-06', 'andik-vermansyah_20180123_024550.jpg', 'Y'),
(2, 'Ayooo UTS sudah dekat', 'UTS mulai tanggal Banjir Jakarta banyak Dicari di Google Banjir Jakarta banyak Dicari di Google', 'ayooo-uts-sudah-dekat', '2020-11-06', 'hamburger-fast-food-french-fries-fried-chicken-burger-games-png-favpng-62f9NKJ5R312dxXfw5sYqMf0Y.png', 'Y'),
(3, 'Banjir Jakarta banyak Dicari di Google', 'Banjir Jakarta banyak Dicari di Google Banjir Jakarta banyak Dicari di Google Banjir Jakarta banyak Dicari di Google Banjir Jakarta banyak Dicari di Google', 'banjir-jakarta-banyak-dicari-di-google', '2020-11-26', 'download_(1).jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('::1', '2020-10-19', 2, '1603086710'),
('::1', '2020-10-24', 32, '1603543985'),
('::1', '2020-10-26', 23, '1603678775'),
('::1', '2020-10-29', 399, '1603982561'),
('::1', '2020-10-30', 492, '1604064118'),
('::1', '2020-10-31', 541, '1604155666'),
('::1', '2020-11-01', 158, '1604234808'),
('192.168.43.206', '2020-11-01', 40, '1604198836'),
('192.168.43.252', '2020-11-01', 13, '1604202832'),
('192.168.43.98', '2020-11-01', 44, '1604213075'),
('192.168.43.102', '2020-11-01', 27, '1604216371'),
('192.168.43.131', '2020-11-01', 9, '1604217447'),
('::1', '2020-11-02', 186, '1604301722'),
('::1', '2020-11-03', 1029, '1604413511'),
('192.168.43.91', '2020-11-03', 16, '1604404102'),
('10.72.229.114', '2020-11-03', 2, '1604407161'),
('192.168.43.167', '2020-11-03', 10, '1604407371'),
('::1', '2020-11-04', 611, '1604484657'),
('192.168.43.132', '2020-11-04', 2, '1604438575'),
('::1', '2020-11-05', 365, '1604585765'),
('192.168.43.90', '2020-11-05', 22, '1604559091'),
('192.168.43.189', '2020-11-05', 2, '1604559463'),
('192.168.43.29', '2020-11-05', 2, '1604559658'),
('::1', '2020-11-06', 153, '1604646760'),
('36.75.195.246', '2020-11-06', 6, '1604630413'),
('180.242.222.43', '2020-11-06', 5, '1604629867'),
('114.125.184.154', '2020-11-06', 2, '1604629747'),
('114.125.184.195', '2020-11-06', 8, '1604630433'),
('36.75.195.28', '2020-11-06', 7, '1604649670'),
('114.125.167.177', '2020-11-06', 7, '1604649628'),
('18.188.117.3', '2020-11-06', 1, '1604647626'),
('54.188.197.115', '2020-11-06', 1, '1604647789'),
('182.1.190.65', '2020-11-06', 6, '1604648574'),
('114.125.203.201', '2020-11-06', 1, '1604649463'),
('36.75.195.7', '2020-11-06', 3, '1604649933'),
('125.167.213.173', '2020-11-06', 22, '1604652044'),
('66.249.79.50', '2020-11-06', 2, '1604659852'),
('69.25.58.62', '2020-11-06', 1, '1604663119'),
('182.1.188.105', '2020-11-06', 1, '1604663916'),
('54.221.27.173', '2020-11-06', 1, '1604666281'),
('66.249.79.43', '2020-11-06', 1, '1604667047'),
('114.125.171.33', '2020-11-06', 3, '1604668983'),
('182.1.189.65', '2020-11-06', 3, '1604669010'),
('107.161.169.197', '2020-11-07', 1, '1604689769'),
('181.214.164.99', '2020-11-07', 1, '1604705271'),
('36.75.195.28', '2020-11-07', 1, '1604711032'),
('66.249.79.202', '2020-11-07', 1, '1604719647'),
('66.249.79.200', '2020-11-07', 2, '1604754330'),
('114.125.170.253', '2020-11-07', 1, '1604730568'),
('66.249.79.223', '2020-11-07', 1, '1604746277'),
('66.249.79.193', '2020-11-07', 1, '1604746297'),
('110.139.137.182', '2020-11-07', 7, '1604750045'),
('168.151.115.22', '2020-11-07', 1, '1604750296'),
('114.125.172.34', '2020-11-07', 20, '1604757805'),
('66.249.79.198', '2020-11-07', 1, '1604754326'),
('182.1.182.51', '2020-11-07', 1, '1604756099'),
('114.125.186.79', '2020-11-07', 11, '1604758739'),
('114.125.188.46', '2020-11-07', 3, '1604762738'),
('114.125.191.30', '2020-11-07', 1, '1604762815'),
('62.4.14.198', '2020-11-08', 1, '1604768411'),
('13.209.14.93', '2020-11-08', 3, '1604798067'),
('66.249.79.202', '2020-11-08', 1, '1604805259'),
('66.249.79.200', '2020-11-08', 1, '1604805262'),
('66.249.79.196', '2020-11-08', 1, '1604832672'),
('66.249.79.223', '2020-11-08', 1, '1604832694'),
('110.139.136.120', '2020-11-08', 20, '1604837428'),
('66.249.79.198', '2020-11-08', 2, '1604840216'),
('171.13.14.17', '2020-11-09', 1, '1604860929'),
('181.214.115.45', '2020-11-09', 1, '1604878682'),
('114.125.165.73', '2020-11-09', 2, '1604884431'),
('114.125.181.17', '2020-11-09', 3, '1604888925'),
('182.1.181.141', '2020-11-09', 47, '1604901908'),
('182.1.168.45', '2020-11-09', 1, '1604889876'),
('66.249.79.46', '2020-11-09', 1, '1604891178'),
('66.249.79.40', '2020-11-09', 1, '1604891210'),
('36.75.195.246', '2020-11-09', 15, '1604903009'),
('114.125.186.79', '2020-11-09', 1, '1604893672'),
('114.125.181.29', '2020-11-09', 6, '1604897916'),
('180.242.222.170', '2020-11-09', 2, '1604901128'),
('182.1.213.83', '2020-11-09', 18, '1604929019'),
('182.1.218.211', '2020-11-09', 31, '1604933885'),
('66.249.79.47', '2020-11-09', 1, '1604919982'),
('66.249.79.53', '2020-11-09', 1, '1604921028'),
('110.139.136.120', '2020-11-09', 6, '1604923184'),
('180.242.222.33', '2020-11-09', 1, '1604924755'),
('182.1.168.22', '2020-11-09', 8, '1604928646'),
('182.1.177.30', '2020-11-09', 43, '1604928959'),
('66.249.79.43', '2020-11-09', 2, '1604925800'),
('114.125.219.110', '2020-11-09', 6, '1604933437'),
('36.75.195.246', '2020-11-10', 9, '1604969036'),
('66.249.79.40', '2020-11-10', 2, '1605011408'),
('66.249.79.46', '2020-11-10', 1, '1604977634'),
('114.125.172.72', '2020-11-10', 2, '1604980862'),
('182.1.197.75', '2020-11-10', 2, '1604983108'),
('182.1.185.158', '2020-11-10', 1, '1604982600'),
('182.1.162.10', '2020-11-10', 1, '1604982602'),
('36.75.195.112', '2020-11-10', 1, '1604982727'),
('180.242.222.56', '2020-11-10', 2, '1604983783'),
('182.1.219.187', '2020-11-10', 3, '1604983741'),
('180.242.222.170', '2020-11-10', 14, '1604995102'),
('114.125.188.16', '2020-11-10', 2, '1604987562'),
('182.1.176.10', '2020-11-10', 1, '1604989235'),
('182.1.171.14', '2020-11-10', 3, '1605009100'),
('66.249.79.50', '2020-11-10', 1, '1605009088'),
('66.249.79.47', '2020-11-10', 1, '1605009091'),
('66.249.79.43', '2020-11-10', 1, '1605011411'),
('142.93.147.255', '2020-11-10', 1, '1605020509'),
('134.122.42.68', '2020-11-10', 1, '1605020510'),
('68.183.196.60', '2020-11-10', 1, '1605020511'),
('159.203.36.59', '2020-11-10', 1, '1605020513'),
('180.242.222.170', '2020-11-11', 2, '1605070471'),
('114.125.189.201', '2020-11-11', 2, '1605056259'),
('182.1.171.111', '2020-11-11', 4, '1605056338'),
('182.1.175.33', '2020-11-11', 1, '1605056253'),
('182.1.175.35', '2020-11-11', 1, '1605056302'),
('114.125.182.241', '2020-11-11', 7, '1605057412'),
('114.125.174.127', '2020-11-11', 5, '1605057673'),
('180.248.123.205', '2020-11-11', 1, '1605056630'),
('3.129.5.80', '2020-11-11', 1, '1605056754'),
('18.197.193.89', '2020-11-11', 1, '1605056913'),
('66.249.79.43', '2020-11-11', 1, '1605063882'),
('66.249.79.40', '2020-11-11', 1, '1605063894'),
('36.75.74.143', '2020-11-11', 10, '1605069641'),
('182.1.176.48', '2020-11-11', 1, '1605069884'),
('182.1.179.100', '2020-11-11', 4, '1605070087'),
('36.75.195.246', '2020-11-11', 5, '1605082704'),
('66.249.79.193', '2020-11-11', 1, '1605095095'),
('66.249.79.196', '2020-11-11', 1, '1605095103'),
('182.1.170.115', '2020-11-11', 1, '1605096722'),
('66.249.79.200', '2020-11-11', 1, '1605097808'),
('66.249.79.198', '2020-11-11', 1, '1605097813'),
('61.8.75.45', '2020-11-11', 1, '1605099752'),
('182.1.188.57', '2020-11-12', 1, '1605142508'),
('114.125.188.179', '2020-11-12', 7, '1605159031'),
('182.1.165.221', '2020-11-12', 1, '1605144604'),
('114.125.185.135', '2020-11-12', 1, '1605145064'),
('114.125.166.75', '2020-11-12', 3, '1605145667'),
('182.1.172.85', '2020-11-12', 1, '1605145343'),
('114.125.213.237', '2020-11-12', 1, '1605145376'),
('182.1.167.61', '2020-11-12', 4, '1605145436'),
('114.125.175.15', '2020-11-12', 2, '1605145833'),
('182.1.179.146', '2020-11-12', 1, '1605148370'),
('66.249.79.46', '2020-11-12', 3, '1605183488'),
('110.136.136.247', '2020-11-12', 4, '1605151908'),
('114.125.203.82', '2020-11-12', 3, '1605159496'),
('114.125.216.122', '2020-11-12', 2, '1605160058'),
('182.1.176.10', '2020-11-12', 1, '1605171748'),
('114.125.171.180', '2020-11-12', 1, '1605175323'),
('66.249.79.53', '2020-11-12', 2, '1605180661'),
('66.249.79.43', '2020-11-12', 1, '1605183489'),
('110.139.139.244', '2020-11-12', 1, '1605193882'),
('138.246.253.15', '2020-11-13', 2, '1605281620'),
('36.75.75.106', '2020-11-13', 2, '1605227283'),
('182.1.195.187', '2020-11-13', 1, '1605227333'),
('114.125.166.185', '2020-11-13', 1, '1605227418'),
('125.167.213.72', '2020-11-13', 4, '1605228454'),
('36.75.195.98', '2020-11-13', 2, '1605228700'),
('182.1.213.79', '2020-11-13', 1, '1605231451'),
('66.249.79.40', '2020-11-13', 3, '1605269898'),
('180.248.192.186', '2020-11-13', 1, '1605239068'),
('182.1.194.32', '2020-11-13', 1, '1605264059'),
('66.249.79.47', '2020-11-13', 2, '1605266316'),
('66.249.79.46', '2020-11-13', 1, '1605269897'),
('66.249.79.200', '2020-11-14', 2, '1605356300'),
('66.249.79.198', '2020-11-14', 3, '1605356307'),
('182.1.190.214', '2020-11-14', 1, '1605335495'),
('66.249.79.193', '2020-11-14', 2, '1605352731'),
('66.249.79.202', '2020-11-15', 2, '1605407120'),
('182.1.175.194', '2020-11-15', 1, '1605411276'),
('66.249.79.223', '2020-11-15', 1, '1605438235'),
('66.249.79.196', '2020-11-15', 1, '1605438250'),
('180.242.222.14', '2020-11-15', 7, '1605439439'),
('66.249.79.200', '2020-11-15', 2, '1605442712'),
('180.242.222.207', '2020-11-16', 1, '1605473790'),
('66.249.79.46', '2020-11-16', 1, '1605494463'),
('66.249.79.40', '2020-11-16', 3, '1605528330'),
('180.248.205.248', '2020-11-16', 1, '1605495595'),
('114.125.222.118', '2020-11-16', 1, '1605499052'),
('180.248.120.91', '2020-11-16', 1, '1605499136'),
('182.1.214.205', '2020-11-16', 1, '1605506549'),
('66.249.79.50', '2020-11-16', 2, '1605524653'),
('66.249.79.43', '2020-11-16', 1, '1605528327'),
('182.1.183.86', '2020-11-17', 1, '1605578795'),
('66.249.79.46', '2020-11-17', 1, '1605580003'),
('66.249.79.43', '2020-11-17', 1, '1605580007'),
('66.249.79.40', '2020-11-17', 1, '1605583169'),
('180.248.205.248', '2020-11-17', 4, '1605599985'),
('114.125.207.98', '2020-11-17', 2, '1605590787'),
('222.124.219.37', '2020-11-17', 1, '1605591697'),
('182.1.176.111', '2020-11-17', 1, '1605592163'),
('199.16.157.181', '2020-11-17', 1, '1605592919'),
('35.233.178.233', '2020-11-17', 1, '1605592920'),
('35.197.68.214', '2020-11-17', 2, '1605594029'),
('104.198.6.90', '2020-11-17', 1, '1605593889'),
('182.1.176.123', '2020-11-17', 3, '1605595553'),
('199.16.157.183', '2020-11-17', 1, '1605594028'),
('35.230.13.12', '2020-11-17', 1, '1605594032'),
('35.199.156.231', '2020-11-17', 1, '1605594032'),
('34.105.94.107', '2020-11-17', 1, '1605594695'),
('34.105.94.107', '2020-11-17', 1, '1605594695'),
('135.181.1.123', '2020-11-17', 2, '1605594718'),
('110.136.137.232', '2020-11-17', 1, '1605595107'),
('173.252.95.21', '2020-11-17', 1, '1605597769'),
('173.252.95.1', '2020-11-17', 1, '1605597772'),
('66.249.79.196', '2020-11-17', 2, '1605610170'),
('182.1.176.197', '2020-11-17', 22, '1605622230'),
('66.249.79.202', '2020-11-17', 2, '1605632231'),
('66.249.79.200', '2020-11-17', 1, '1605613870'),
('182.1.210.18', '2020-11-17', 4, '1605616768'),
('114.125.205.250', '2020-11-17', 49, '1605622304'),
('182.1.208.14', '2020-11-17', 1, '1605620747'),
('34.83.190.70', '2020-11-17', 1, '1605621895'),
('34.83.190.70', '2020-11-17', 1, '1605621895'),
('66.249.79.198', '2020-11-17', 1, '1605632231'),
('66.249.79.200', '2020-11-18', 2, '1605699450'),
('180.248.205.248', '2020-11-18', 3, '1605661914'),
('182.1.163.197', '2020-11-18', 1, '1605662593'),
('66.249.79.198', '2020-11-18', 3, '1605670042'),
('66.249.79.202', '2020-11-18', 1, '1605699446'),
('66.249.79.223', '2020-11-18', 2, '1605700188'),
('114.125.200.192', '2020-11-18', 2, '1605705722'),
('66.249.79.40', '2020-11-19', 3, '1605796554'),
('66.249.79.46', '2020-11-19', 5, '1605796552'),
('114.124.130.29', '2020-11-19', 1, '1605745469'),
('66.249.79.43', '2020-11-19', 1, '1605783114'),
('36.75.195.62', '2020-11-19', 6, '1605786537'),
('66.249.79.53', '2020-11-19', 1, '1605785699'),
('66.249.79.50', '2020-11-19', 1, '1605785703'),
('66.249.79.47', '2020-11-19', 1, '1605796551'),
('66.249.79.46', '2020-11-20', 4, '1605851856'),
('66.249.79.40', '2020-11-20', 4, '1605871487'),
('36.76.72.59', '2020-11-20', 7, '1605843327'),
('114.125.215.130', '2020-11-20', 1, '1605838442'),
('66.249.79.43', '2020-11-20', 5, '1605889662'),
('66.249.79.50', '2020-11-20', 3, '1605871216'),
('66.249.79.53', '2020-11-21', 1, '1605898289'),
('66.249.79.43', '2020-11-21', 6, '1605972628'),
('66.249.79.40', '2020-11-21', 6, '1605977342'),
('66.249.79.46', '2020-11-21', 4, '1605957962'),
('66.249.79.50', '2020-11-21', 1, '1605957816'),
('66.249.79.47', '2020-11-21', 1, '1605957827'),
('36.75.195.212', '2020-11-21', 2, '1605958096'),
('173.249.22.173', '2020-11-21', 1, '1605958683'),
('36.76.66.213', '2020-11-21', 2, '1605959897'),
('66.249.79.40', '2020-11-22', 6, '1606024036'),
('66.249.79.46', '2020-11-22', 3, '1606043536'),
('36.83.20.159', '2020-11-22', 1, '1606015661'),
('66.249.79.43', '2020-11-22', 1, '1606043535'),
('66.249.79.50', '2020-11-22', 1, '1606044575'),
('66.249.79.47', '2020-11-22', 1, '1606044577'),
('138.246.253.24', '2020-11-23', 1, '1606068500'),
('66.249.79.40', '2020-11-23', 3, '1606109821'),
('66.249.79.43', '2020-11-23', 3, '1606115591'),
('36.75.195.203', '2020-11-23', 2, '1606102720'),
('180.242.222.77', '2020-11-23', 3, '1606133234'),
('66.249.79.46', '2020-11-23', 5, '1606140894'),
('163.172.148.199', '2020-11-23', 1, '1606120047'),
('125.160.65.119', '2020-11-23', 1, '1606126855'),
('36.75.195.66', '2020-11-23', 1, '1606127132'),
('66.249.79.53', '2020-11-23', 1, '1606130983'),
('66.249.79.47', '2020-11-23', 1, '1606131001'),
('114.125.202.189', '2020-11-23', 1, '1606142573'),
('180.242.222.130', '2020-11-24', 1, '1606159806'),
('36.75.195.167', '2020-11-24', 14, '1606201030'),
('34.82.41.123', '2020-11-24', 2, '1606189197'),
('35.230.59.170', '2020-11-24', 1, '1606190146'),
('35.230.59.170', '2020-11-24', 1, '1606190146'),
('182.1.219.120', '2020-11-24', 4, '1606190512'),
('66.249.79.46', '2020-11-24', 2, '1606214820'),
('66.249.79.43', '2020-11-24', 1, '1606193097'),
('35.230.19.108', '2020-11-24', 1, '1606197684'),
('35.230.19.108', '2020-11-24', 1, '1606197684'),
('114.125.205.212', '2020-11-24', 1, '1606198863'),
('138.246.253.24', '2020-11-24', 1, '1606200950'),
('114.125.199.22', '2020-11-24', 1, '1606201431'),
('182.1.200.172', '2020-11-24', 9, '1606222549'),
('66.249.79.53', '2020-11-24', 1, '1606217392'),
('66.249.79.47', '2020-11-24', 1, '1606217395'),
('51.158.98.24', '2020-11-24', 1, '1606221429'),
('51.158.109.3', '2020-11-24', 1, '1606231000'),
('66.249.79.40', '2020-11-25', 1, '1606247543'),
('66.249.79.46', '2020-11-25', 3, '1606286700'),
('138.246.253.24', '2020-11-25', 1, '1606255269'),
('66.249.79.43', '2020-11-25', 3, '1606300348'),
('36.75.195.167', '2020-11-25', 1, '1606285723'),
('180.242.222.77', '2020-11-25', 2, '1606300118'),
('::1', '2020-11-26', 194, '1606375586'),
('::1', '2020-11-27', 286, '1606464487'),
('::1', '2020-11-28', 134, '1606544318'),
('::1', '2020-12-23', 5, '1608699126'),
('::1', '2021-02-24', 14, '1614130977');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(39, 'Politeknik Kaltara', 'poltek.kaltara', 'politeknik-kaltara', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'Swarakalibata Magazine Template', 'admin', 'Robby Prihandaya', 'phpmu-magazine', 'N'),
(24, 'Swarakalibata Personal Template', 'admin', 'Robby Prihandaya', 'phpmu-standar', 'N'),
(27, 'Akper Theme', 'admin', 'Fai Pagun', 'akpertheme', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(45, 'Renna Youfristiya Sari, Amd.Kep', 'admin', 'Lulusan Tahun 2008, Lulus CPNS tahun 2008, Perawat Teladan Tingkat Prop. Kalimanta Utara', 'Alhamdullilah, begitu banyak pelajaran dan pengalaman yang saya dapatkan selama menempuh pendidikan di Politeknik Swarakalibata. Dosen dan fasilitasnya yang berkualitas serta pelayanannya yang ramah membuat saya sangat terbantu, bangga menjadi salah satu bagian dari Alumni Politeknik Swarakalibata', 'lele1_(3).png', '2021-02-24'),
(44, 'Deni Hidayad', 'poltek.kaltara', 'Mahasiswa Akper Kaltara', 'Alhamdulillah, semua ilmu yang saya dapat dari perkuliahan benar-benar sangat membantu saya untuk menjadi perawat yang baik, karena di Akper Kaltara sistem pembelajarannya yang aktual ditambah lagi kita lebih sering melakukan praktek keperawatan baik di Puskesmas maupun di RSUD. Alhamdulillah saya dapat lulus CPNS langsung setelah lulus dari Akper Kaltara.', 'DENI_HIDAYAD.jpg', '2020-11-06'),
(43, 'Chandra Oktovialdy, Amd.Kep', 'poltek.kaltara', 'Ketua Ikatan Alumni Akper Kaltara, Lulusan tahun 2007, Perawat Ruangan OK RSUD Tarakan', 'Ini kampus kesayangan kota tarakan. Kampus yang nyaman dan aman untuk semua civitas akademikanya, serta kampus yang memiliki integritas yang sangat tinggi. Maju terus kampus kesayanganku ini.', 'Screenshot_2017-12-14-10-25-55.png', '2020-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '081267771344', 'robbyprihandaya-708967734.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('dewi', '82712d6185313c5cab37780e6aa1bb571b2283efa92fd7153a28bbb3e34b0489dcc5a943ae7f61c5380184fea2ee750c40718a1601d9e7748427a767bdc3f64b', 'Dewiiit Safitri', 'dewi.safitri@gmail.com', '081267778899', '', 'kontributor', 'N', 'ed1d859c50262701d92e5cbf39652792-20170120090507'),
('arsen', 'dac396a174a4a2aa2526bf23c05f0adbe6139f53047c273fd65e1fb813a05ce42a82d8e9b997972937a87238702dab4e981b184083d5d83b6542f79f29f8bde0', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', '081267773333', '', 'kontributor', 'N', 'f76ad5ee772ac196cbc09824e24859ee'),
('poltek.kaltara', '53dcb552ef564c5012cb0d7786821424e9d2069789259a84eb8b52353ff0ef76e9729aecd439a2e10cd615fc1fb714df67439e8779ee4006214cfedc3c6036b9', 'Admin Politeknik Kaltara', 'admin@poltekkaltara.ac.id', '0', '', 'admin', 'N', '93217c6ac5116752ee55357a2028dd35-20201106100519');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 31, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 24, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 16, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 31, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 44, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 24, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 124, 'Minggu', '2014-08-17', '16:51:04', 'perang'),
(180, 62, 'poltek.kaltara', 'Video viral....semangat pelaksanaan UAP', 'video-viralsemangat-pelaksanaan-uap', '', '', '', 'https://www.youtube.com/embed/Wov_d0SCVFU', 0, 'Sabtu', '2020-11-28', '12:48:13', 'politeknik-kaltara'),
(176, 63, 'admin', 'Tes video aja', 'tes-video-aja', '<p>asdasdasdas dsa</p>', 'kemeja.png', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 38, 'Jumat', '2020-11-27', '12:46:24', ''),
(175, 62, 'poltek.kaltara', 'Profil', 'profil', '<p>Isi Pofil Poltek Kaltara</p>', 'departments-2.jpg', '', 'https://www.youtube.com/watch?v=wgAD3DhvwEI', 1, 'Kamis', '2020-11-05', '19:26:10', ''),
(178, 62, 'poltek.kaltara', 'Video Lokakarya Politeknik Kaltara', 'video-lokakarya-politeknik-kaltara', '', '', '', 'https://www.youtube.com/embed/J8HBGUiFKVc', 0, 'Sabtu', '2020-11-28', '12:19:49', 'politeknik-kaltara'),
(179, 62, 'poltek.kaltara', 'Video peringkat I UAP prodi Keperawatan Politeknik Kaltara', 'video-peringkat-i-uap-prodi-keperawatan-politeknik-kaltara', '', '', '', 'https://www.youtube.com/embed/wgAD3DhvwEI', 0, 'Sabtu', '2020-11-28', '12:40:22', 'politeknik-kaltara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id_mitra` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
