-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2021 pada 13.16
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elearning1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id`, `tanggal`, `pengajar_id`, `mapel_id`, `kelas_id`) VALUES
(1, '2021-07-05 17:46:10', 7, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_siswa`
--

CREATE TABLE `absensi_siswa` (
  `id` int(11) NOT NULL,
  `absensi_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `jenis_kehadiran` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `field_tambahan`
--

CREATE TABLE `field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `field_tambahan`
--

INSERT INTO `field_tambahan` (`id`, `nama`, `value`) VALUES
('check-urgent-info', 'Check Urgent Info', '{\"info\":\"\",\"last_check\":\"2021-08-12 19:55:21\"}'),
('history-mengerjakan-8-4', 'History pengerjaan tugas', '{\"mulai\":\"2021-07-25 11:42:53\",\"selesai\":\"2021-07-25 11:52:53\",\"uri_string\":\"tugas\\/kerjakan\\/4\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"4\",\"mapel_id\":\"3\",\"pengajar_id\":\"1\",\"type_id\":\"2\",\"judul\":\"mm\",\"durasi\":\"10\",\"info\":\"<p>sdkjsljdlsjdlsk<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-07-25 11:37:16\",\"tampil_siswa\":\"1\"},\"unix_id\":\"1ee1241a4960eb4e5b27604f04199d2f236634\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"pertanyaan_id\":[\"3\"],\"jawaban\":{\"3\":\"<p>skjhdkshdkshkdj<\\/p>\\r\\n\"},\"tgl_submit\":\"2021-07-25 11:43:33\",\"total_waktu\":\"40 detik\",\"nilai\":{\"3\":\"85\"}}'),
('history-mengerjakan-8-2', 'History pengerjaan tugas', '{\"mulai\":\"2021-07-24 21:24:37\",\"selesai\":\"2021-07-24 21:34:37\",\"uri_string\":\"tugas\\/kerjakan\\/2\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"2\",\"mapel_id\":\"15\",\"pengajar_id\":\"7\",\"type_id\":\"2\",\"judul\":\"sejarah indonesia\",\"durasi\":\"10\",\"info\":\"<p>Apakah cinta itu?<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-07-24 21:15:17\",\"tampil_siswa\":\"1\"},\"unix_id\":\"b2f0702dd34e81c3faa6d6377511593940218\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"pertanyaan_id\":[\"2\"],\"jawaban\":{\"2\":\"<p>cinta adalahhh sesuatuuu gituulaaa<\\/p>\\r\\n\"},\"tgl_submit\":\"2021-07-24 21:25:00\",\"total_waktu\":\"23 detik\",\"nilai\":{\"2\":\"80\"}}'),
('history-mengerjakan-8-1', 'History pengerjaan tugas', '{\"mulai\":\"2021-07-24 21:25:09\",\"selesai\":\"2021-07-24 21:35:09\",\"uri_string\":\"tugas\\/kerjakan\\/1\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"1\",\"mapel_id\":\"1\",\"pengajar_id\":\"7\",\"type_id\":\"3\",\"judul\":\"mengejaa\",\"durasi\":\"10\",\"info\":\"<p>apakahh b indio itu?<\\/p>\\r\\n\\r\\n<p>a. jdjkd<\\/p>\\r\\n\\r\\n<p>b.jdhkjd<\\/p>\\r\\n\\r\\n<p>c.dkjhdkj<\\/p>\\r\\n\\r\\n<p>d.kjsh<\\/p>\\r\\n\\r\\n<p>e.sjhdkjs<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-07-24 21:12:19\",\"tampil_siswa\":\"1\"},\"unix_id\":\"447b3edc1f8b4b2131c8b90972ff82ae75000\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"pertanyaan_id\":[\"1\"],\"jawaban\":{\"1\":\"1\"},\"nilai\":100,\"jml_benar\":1,\"jml_salah\":0,\"tgl_submit\":\"2021-07-24 21:25:26\",\"total_waktu\":\"17 detik\"}'),
('history-mengerjakan-8-3', 'History pengerjaan tugas', '{\"mulai\":\"2021-07-25 11:45:00\",\"uri_string\":\"tugas\\/kerjakan\\/3\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"3\",\"mapel_id\":\"6\",\"pengajar_id\":\"7\",\"type_id\":\"1\",\"judul\":\"sepak bola\",\"durasi\":null,\"info\":\"<p>dididid<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-07-24 21:16:16\",\"tampil_siswa\":\"1\"},\"unix_id\":\"b771ec89a76c767c7d1e7bfd43c7d835386248\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"file_name\":\"b771ec89a76c767c7d1e7bfd43c7d835386248.jpeg\",\"tgl_submit\":\"2021-07-25 11:45:17\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `parent_id`, `urutan`, `aktif`) VALUES
(1, 'KELAS X', NULL, 1, 1),
(2, 'KELAS X - TO1', 1, 2, 1),
(3, 'KELAS X - TO2', 1, 3, 1),
(4, 'KELAS X - TO3', 1, 4, 1),
(5, 'KELAS XI', NULL, 5, 1),
(6, 'KELAS XI - TKJ1', 5, 6, 1),
(7, 'KELAS XI - TKJ2', 5, 7, 1),
(8, 'KELAS XI - TKJ3', 5, 8, 1),
(9, 'KELAS XII', NULL, 9, 1),
(10, 'KELAS XII - RPL1', 9, 10, 1),
(11, 'KELAS XII - RPL2', 9, 11, 1),
(12, 'KELAS XII - RPL3', 9, 12, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id`, `kelas_id`, `siswa_id`, `aktif`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 2, 3, 1),
(4, 2, 4, 1),
(5, 3, 5, 1),
(6, 4, 6, 1),
(7, 6, 7, 1),
(8, 10, 8, 1),
(9, 2, 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=tidak,1=tampil',
  `konten` text DEFAULT NULL,
  `tgl_posting` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `login_id`, `materi_id`, `tampil`, `konten`, `tgl_posting`) VALUES
(1, 20, 3, 1, '<p>baik pak</p>\r\n', '2021-07-28 19:16:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(1, 'nansol@gmail.com', '1521c7f6a719bb42f17bf8c165fdd078', NULL, 1, 1, NULL),
(2, 'almiramaja@gmail.com', 'b6f8400a41549335b30da7700de628a1', 1, NULL, 0, NULL),
(3, 'chairanisaragih@gmail.com', '26f70027ebfd6475d42a819442663bea', NULL, 2, 0, NULL),
(4, 'adistianibarus@gmail.com', '149c99555fd31a01a1830f99fcccce4a', NULL, 3, 0, NULL),
(5, 'agungdani@gmail.com', '79f73f627cf1e442108face8272f3a3d', NULL, 4, 0, NULL),
(6, 'agustina@gmail.com', '06918f62e237864605fb962c3c28595a', NULL, 5, 0, NULL),
(7, 'ahmad@gmail.com', '6212ab9ffe67fd77a98e1a271d815255', NULL, 6, 0, NULL),
(8, 'alipianto@gmail.com', '6b67e68d7c0b5c4431677732c00d37da', NULL, 7, 0, NULL),
(9, 'andisyahputra@gmail.com', 'c76c5ec0aafb43d2995070d143c551bd', NULL, 8, 0, NULL),
(10, 'anggi@gmail.com', 'bf6bdeae70dd80cc6f5cfd8723a825b1', NULL, 9, 0, NULL),
(11, 'anggun@gmail.com', '81fe8148b793354ad0b62204092bccb3', NULL, 10, 0, NULL),
(12, 'arry@gmail.com', '596d9220f9a8aba9dc8b897b2c03d4c5', NULL, 11, 0, NULL),
(13, 'dianipratiwi@gmail.com', '235a3be84527ded3c35846b8641c434b', NULL, 12, 0, NULL),
(14, 'deaalawiyah@gmail.com', '7c534f1b9550ab77c2f6bc39191cff59', 2, NULL, 0, NULL),
(15, 'raffahabibi@gmail.com', '95af690207d42d6e024544574ed7cc9c', 3, NULL, 0, NULL),
(16, 'rifkihusni@gmail.com', '81134492c754d8e79f4354e6fa398dde', 4, NULL, 0, NULL),
(17, 'alliyahartati@gmail.com', 'b0e8767068e1413433f03f9cdb836968', 5, NULL, 0, NULL),
(18, 'fatih@gmail.com', '552b06c5fcb56eb23eea22b7926258cc', 6, NULL, 0, NULL),
(19, 'aisyahseruni@gmail.com', '285ac98632ddd6b9157ac94ea44adc14', 7, NULL, 0, NULL),
(20, 'bayuirawan@gmail.com', 'c33d5d2776631f08019c4a771ea822dc', 8, NULL, 0, NULL),
(21, 'alkhalifi@gmail.com', '76a975d77f2655a443c286226a477056', 9, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_log`
--

CREATE TABLE `login_log` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login_log`
--

INSERT INTO `login_log` (`id`, `login_id`, `lasttime`, `agent`, `last_activity`) VALUES
(1, 1, '2021-07-24 16:25:07', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627120439),
(2, 2, '2021-07-24 16:56:12', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627120846),
(3, 1, '2021-07-24 17:02:57', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627120930),
(4, 3, '2021-07-24 17:04:22', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627121179),
(5, 1, '2021-07-24 17:08:30', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627128656),
(6, 1, '2021-07-24 19:25:41', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627134822),
(7, 20, '2021-07-24 20:56:26', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627134933),
(8, 1, '2021-07-24 20:57:49', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627135023),
(9, 8, '2021-07-24 20:59:16', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627135474),
(10, 20, '2021-07-24 21:06:46', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627135491),
(11, 1, '2021-07-24 21:07:01', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627135645),
(12, 1, '2021-07-24 21:10:18', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627135747),
(13, 8, '2021-07-24 21:11:17', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627136174),
(14, 20, '2021-07-24 21:18:27', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627136815),
(15, 8, '2021-07-24 21:29:21', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627137027),
(16, 20, '2021-07-24 21:32:40', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627137525),
(17, 1, '2021-07-24 21:41:10', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627138041),
(18, 8, '2021-07-24 21:49:37', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627138243),
(19, 20, '2021-07-24 21:52:54', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627138334),
(20, 1, '2021-07-24 21:54:23', '{\"is_mobile\":0,\"browser\":\"Chrome 91.0.4472.164\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/91.0.4472.164 Safari\\/537.36\",\"ip\":\"::1\"}', 1627141220),
(21, 1, '2021-07-25 10:52:53', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627186350),
(22, 20, '2021-07-25 11:14:48', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627187416),
(23, 1, '2021-07-25 11:32:39', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627187604),
(24, 20, '2021-07-25 11:35:37', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627187650),
(25, 1, '2021-07-25 11:36:22', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627187735),
(26, 20, '2021-07-25 11:37:45', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627187780),
(27, 1, '2021-07-25 11:38:29', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627187809),
(28, 20, '2021-07-25 11:39:11', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627188852),
(29, 1, '2021-07-25 11:56:22', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627189448),
(30, 8, '2021-07-25 12:06:19', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627190023),
(31, 20, '2021-07-25 12:15:53', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627190142),
(32, 1, '2021-07-25 12:17:56', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627191382),
(33, 8, '2021-07-25 12:38:33', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627191746),
(34, 1, '2021-07-25 12:44:35', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627193418),
(35, 8, '2021-07-25 13:12:37', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627193505),
(36, 1, '2021-07-25 21:44:37', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627225690),
(37, 20, '2021-07-25 22:10:27', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627228950),
(38, 1, '2021-07-26 15:04:33', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627287599),
(39, 8, '2021-07-26 15:22:16', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627305917),
(40, 20, '2021-07-26 17:32:23', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627312610),
(41, 8, '2021-07-26 20:25:35', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627312523),
(42, 1, '2021-07-28 14:59:16', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627459148),
(43, 8, '2021-07-28 15:01:18', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627474379),
(44, 8, '2021-07-28 19:14:27', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627479379),
(45, 20, '2021-07-28 19:15:46', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627483912),
(46, 1, '2021-07-28 20:36:42', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627480629),
(47, 1, '2021-07-28 21:11:56', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627482551),
(48, 1, '2021-07-28 21:38:08', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627484398),
(49, 20, '2021-07-28 21:52:11', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627484048),
(50, 20, '2021-07-28 21:56:23', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627484134),
(51, 1, '2021-07-29 14:00:10', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627567053),
(52, 8, '2021-07-29 20:58:07', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627571674),
(53, 8, '2021-07-30 23:14:24', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627668984),
(54, 1, '2021-07-31 01:20:58', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627669306),
(55, 20, '2021-07-31 01:23:58', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627669450),
(56, 8, '2021-07-31 01:26:20', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627669487),
(57, 1, '2021-07-31 01:26:57', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627669501),
(58, 1, '2021-07-31 01:27:16', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627670289),
(59, 20, '2021-07-31 01:40:23', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627670887),
(60, 1, '2021-07-31 01:50:20', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627672730),
(61, 8, '2021-07-31 02:21:08', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627673491),
(62, 8, '2021-07-31 02:33:41', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627701167),
(63, 20, '2021-07-31 02:34:03', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627699830),
(64, 1, '2021-07-31 09:50:43', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627701436),
(65, 8, '2021-07-31 10:13:06', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627702488),
(66, 20, '2021-07-31 10:37:11', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627703713),
(67, 1, '2021-07-31 10:57:34', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627747107),
(68, 1, '2021-08-01 19:19:26', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627820450),
(69, 8, '2021-08-01 19:25:51', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627820678),
(70, 20, '2021-08-01 19:26:53', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627824604),
(71, 8, '2021-08-01 19:30:04', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627821469),
(72, 1, '2021-08-01 19:40:01', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627824304),
(73, 8, '2021-08-01 20:28:25', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627824596),
(74, 1, '2021-08-01 20:32:16', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627825322),
(75, 8, '2021-08-01 20:44:14', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627827030),
(76, 1, '2021-08-01 22:13:04', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1627831098),
(77, 8, '2021-08-02 11:54:20', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.107\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.107 Safari\\/537.36\",\"ip\":\"::1\"}', 1628256100),
(78, 1, '2021-08-12 18:22:50', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.131\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.131 Safari\\/537.36\",\"ip\":\"::1\"}', 1628768239),
(79, 1, '2021-08-12 18:39:33', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.131\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.131 Safari\\/537.36\",\"ip\":\"::1\"}', 1628772838),
(80, 8, '2021-08-12 19:54:49', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.131\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.131 Safari\\/537.36\",\"ip\":\"::1\"}', 1628772787),
(81, 1, '2021-08-12 19:55:18', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.131\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.131 Safari\\/537.36\",\"ip\":\"::1\"}', 1628782125),
(82, 8, '2021-08-14 16:18:50', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.131\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.131 Safari\\/537.36\",\"ip\":\"::1\"}', 1628933668),
(83, 8, '2021-08-14 18:15:13', '{\"is_mobile\":0,\"browser\":\"Chrome 92.0.4515.131\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/92.0.4515.131 Safari\\/537.36\",\"ip\":\"::1\"}', 1628939773);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = ya, 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama`, `info`, `aktif`) VALUES
(1, 'Bahasa Indonesia', NULL, 1),
(2, 'Bahasa Inggris', NULL, 1),
(3, 'Matematika', NULL, 1),
(11, 'GTO', '', 1),
(6, 'Penjas', NULL, 1),
(7, 'Agama', NULL, 1),
(8, 'Fisika', NULL, 1),
(9, 'Kimia', NULL, 1),
(12, 'PDO', '', 1),
(13, 'Seni Budaya', '', 1),
(14, 'PKN', '', 1),
(15, 'Sejarah', '', 1),
(16, 'Kewirausahaan', '', 1),
(17, 'TJBL', '', 1),
(18, 'AIJ', '', 1),
(19, 'PWPB', '', 1),
(20, 'PBO', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_ajar`
--

CREATE TABLE `mapel_ajar` (
  `id` int(11) NOT NULL,
  `hari_id` tinyint(1) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mapel_ajar`
--

INSERT INTO `mapel_ajar` (`id`, `hari_id`, `jam_mulai`, `jam_selesai`, `pengajar_id`, `mapel_kelas_id`, `aktif`) VALUES
(1, 4, '08:30:00', '09:15:00', 7, 49, 1),
(2, 1, '11:50:00', '12:30:00', 7, 58, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_kelas`
--

CREATE TABLE `mapel_kelas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mapel_kelas`
--

INSERT INTO `mapel_kelas` (`id`, `kelas_id`, `mapel_id`, `aktif`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 2, 3, 1),
(4, 2, 6, 1),
(5, 2, 7, 1),
(6, 2, 11, 1),
(7, 2, 12, 1),
(8, 2, 13, 1),
(9, 2, 14, 1),
(10, 2, 8, 1),
(11, 2, 9, 1),
(12, 2, 15, 1),
(13, 3, 1, 1),
(14, 3, 2, 1),
(15, 3, 3, 1),
(16, 3, 6, 1),
(17, 3, 7, 1),
(18, 3, 8, 1),
(19, 3, 9, 1),
(20, 3, 11, 1),
(21, 3, 12, 1),
(22, 3, 13, 1),
(23, 3, 14, 1),
(24, 3, 15, 1),
(25, 4, 1, 1),
(26, 4, 2, 1),
(27, 4, 3, 1),
(28, 4, 6, 1),
(29, 4, 7, 1),
(30, 4, 8, 1),
(31, 4, 9, 1),
(32, 4, 11, 1),
(33, 4, 12, 1),
(34, 4, 13, 1),
(35, 4, 14, 1),
(36, 4, 15, 1),
(37, 6, 1, 1),
(38, 6, 2, 1),
(39, 6, 3, 1),
(40, 6, 6, 1),
(41, 6, 7, 1),
(42, 6, 14, 1),
(43, 6, 16, 1),
(44, 6, 17, 1),
(45, 6, 18, 1),
(46, 7, 1, 1),
(47, 7, 2, 1),
(48, 7, 3, 1),
(49, 7, 6, 1),
(50, 7, 7, 1),
(51, 7, 14, 1),
(52, 7, 16, 1),
(53, 7, 17, 1),
(54, 7, 18, 1),
(55, 8, 1, 1),
(56, 8, 2, 1),
(57, 8, 3, 1),
(58, 8, 6, 1),
(59, 8, 7, 1),
(60, 8, 14, 1),
(61, 8, 16, 1),
(62, 8, 17, 1),
(63, 8, 18, 1),
(64, 10, 1, 1),
(65, 10, 2, 1),
(66, 10, 3, 1),
(67, 10, 6, 1),
(68, 10, 7, 1),
(69, 10, 14, 1),
(70, 10, 16, 1),
(71, 10, 19, 1),
(72, 10, 20, 1),
(73, 11, 1, 1),
(74, 11, 2, 1),
(75, 11, 3, 1),
(76, 11, 6, 1),
(77, 11, 7, 1),
(78, 11, 14, 1),
(79, 11, 16, 1),
(80, 11, 19, 1),
(81, 11, 20, 1),
(82, 12, 1, 1),
(83, 12, 2, 1),
(84, 12, 3, 1),
(85, 12, 6, 1),
(86, 12, 7, 1),
(87, 12, 14, 1),
(88, 12, 16, 1),
(89, 12, 19, 1),
(90, 12, 20, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `mapel_id`, `pengajar_id`, `siswa_id`, `judul`, `konten`, `file`, `tgl_posting`, `publish`, `views`) VALUES
(1, 1, 2, NULL, 'Mengeja kalimat', '<p><strong>Pengertian Poster</strong></p>\r\n\r\n<ol>\r\n	<li>Poster merupakan plakat atau tempelan yang berisi pengumuman dan biasanya ditempel di tempat umum. Bahasa yang digunakan dalam poster biasanya singkat, padat, dan jelas. Poster juga komunikatif dan persuasive. Selain itu, poster menarik perharian orang yang melihat dan membacanya. Ciri khasnya, poster biasanya dilengkapi dengan gambar yang menarik.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contoh poster :</p>\r\n\r\n<ol>\r\n	<li>Pakailah helm demi keselamatan anda</li>\r\n	<li>Kunjungilah pameran batik terbesar, terlengkap di alun-alun Cilacap. Rabu, 29 September 2016. Dapatkan diskon hingga 30%.</li>\r\n	<li>Jangan tebang aku sembarangan! Demi keselamatan anak cucu kita. (Disertai ilustrasi hutan)</li>\r\n</ol>\r\n', NULL, '2021-07-24 17:07:52', 1, 1),
(2, 3, 7, NULL, 'mm', NULL, 'mm_1627136238.xlsx', '2021-07-24 21:17:31', 1, 2),
(3, 8, 7, NULL, 'fisika', '<p><strong>Pengertian Poster</strong></p>\r\n\r\n<ol>\r\n	<li>Poster merupakan plakat atau tempelan yang berisi pengumuman dan biasanya ditempel di tempat umum. Bahasa yang digunakan dalam poster biasanya singkat, padat, dan jelas. Poster juga komunikatif dan persuasive. Selain itu, poster menarik perharian orang yang melihat dan membacanya. Ciri khasnya, poster biasanya dilengkapi dengan gambar yang menarik.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contoh poster :</p>\r\n\r\n<ol>\r\n	<li>Pakailah helm demi keselamatan anda</li>\r\n	<li>Kunjungilah pameran batik terbesar, terlengkap di alun-alun Cilacap. Rabu, 29 September 2016. Dapatkan diskon hingga 30%.</li>\r\n	<li>Jangan tebang aku sembarangan! Demi keselamatan anak cucu kita. (Disertai ilustrasi hutan)</li>\r\n</ol>\r\n', NULL, '2021-07-24 21:18:05', 1, 9),
(4, 2, 7, NULL, 'kiko', '<p>asasasasaa</p>\r\n', NULL, '2021-08-01 19:31:52', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_kelas`
--

CREATE TABLE `materi_kelas` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `materi_kelas`
--

INSERT INTO `materi_kelas` (`id`, `materi_id`, `kelas_id`) VALUES
(1, 1, 1),
(2, 2, 9),
(3, 3, 9),
(4, 4, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=belum,1=sudah'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `type_id`, `content`, `owner_id`, `sender_receiver_id`, `date`, `opened`) VALUES
(1, 2, '<p>mana tugasnya pak</p>\r\n', 2, 1, '2021-07-24 16:56:43', 1),
(2, 1, '<p>mana tugasnya pak</p>\r\n', 1, 2, '2021-07-24 16:56:43', 1),
(3, 2, '<p>nak mana tugasnya?</p>\r\n', 3, 2, '2021-07-24 17:04:50', 1),
(4, 1, '<p>nak mana tugasnya?</p>\r\n', 2, 3, '2021-07-24 17:04:50', 0),
(5, 2, '<p>kamu berhasill</p>\r\n', 8, 20, '2021-07-24 21:32:04', 1),
(6, 1, '<p>kamu berhasill</p>\r\n', 20, 8, '2021-07-24 21:32:04', 1),
(7, 2, '<p>terima kasih pak</p>\r\n', 20, 8, '2021-07-24 21:33:31', 1),
(8, 1, '<p>terima kasih pak</p>\r\n', 8, 20, '2021-07-24 21:33:31', 1),
(9, 2, '<p>khkkhkhkhk</p>\r\n', 1, 20, '2021-07-25 11:03:12', 1),
(10, 1, '<p>khkkhkhkhk</p>\r\n', 20, 1, '2021-07-25 11:03:12', 1),
(11, 2, '<p>jjususi</p>\r\n', 1, 20, '2021-08-01 19:20:11', 1),
(12, 1, '<p>jjususi</p>\r\n', 20, 1, '2021-08-01 19:20:11', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `nilai_tugas`
--

INSERT INTO `nilai_tugas` (`id`, `nilai`, `tugas_id`, `siswa_id`) VALUES
(1, 100, 1, 8),
(4, 85, 4, 8),
(3, 80, 2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`id`, `nip`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `foto`, `status_id`) VALUES
(1, '12038909099', 'Nanda Sholihin', 'Laki-laki', 'Medan', '1991-04-15', 'Jl. Tembung', NULL, 1),
(3, '10003880021', 'Adistiani Barus', 'Perempuan', 'Medan', '1978-02-07', 'Jl. Gurilla No.5', NULL, 1),
(4, '12000390090', 'Agung Dani Setiawan', 'Laki-laki', 'Bandar Khalifah', '0000-00-00', 'Jl.Batang Kuis No.18', NULL, 1),
(5, '20001918190', 'Agustina Lamhot Pakpahan', 'Perempuan', 'Medan', '0000-00-00', 'Jl. Perhubungan Gg.Rezeki No.9', NULL, 1),
(6, '30298000982', 'Ahmad Zakir', 'Laki-laki', 'Panyabungan', '0000-00-00', 'Jl. Letda Sujono Gg.Sahabat', NULL, 1),
(7, '90001890009', 'Ali Pianto', 'Laki-laki', 'Tebing Tinggi', '1983-12-23', 'Jl. Datuk Kabu No.23', NULL, 1),
(8, '12900028379', 'Andi Syahputra', 'Laki-laki', 'Aceh', '1990-11-30', 'Jl. Letda Sujono Gg. Sepakat No.12', NULL, 1),
(9, '120092009222', 'Anggi Marwina Nasution', 'Perempuan', 'Medan', '1994-02-02', 'Jl. Sutrisno No.18', NULL, 1),
(10, '18293000383', 'Anggun Desrivawany', 'Perempuan', 'Medan', '1992-05-27', 'Jl. Tembung Pasar VII', NULL, 1),
(11, '39280038099', 'Arry Faisal', 'Laki-laki', 'Medan', '1985-09-09', 'Jl. Aksara Gg.Amal No.3', NULL, 1),
(12, '17627837800', 'Diani Pratiwi', 'Perempuan', 'Medan', '1987-03-01', 'Jl. Dr Mansyur', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `value`) VALUES
('email-server', 'Email server', 'no-reply@domain.com'),
('email-template-approve-pengajar', 'Approve pengajar (email pengajar)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-approve-siswa', 'Approve siswa (email siswa)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-link-reset', 'Link Reset Password', '{\"subject\":\"Reset Password\",\"body\":\"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>\"}'),
('email-template-register-pengajar', 'Register pengajar (email pengajar)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('email-template-register-siswa', 'Register siswa (email siswa)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('info-registrasi', 'Info Registrasi', '<p>Silakan mendaftar sebagai siswa atau pengajar (jika anda sebagai pengajar) dengan memilih sesuai tab berikut :</p>\r\n'),
('peraturan-elearning', 'Peraturan E-learning', ''),
('registrasi-pengajar', 'Registrasi Pengajar', '1'),
('registrasi-siswa', 'Registrasi Siswa', '1'),
('versi', 'Versi', '2.0'),
('jenjang', 'jenjang', 'SMA'),
('nama-sekolah', 'nama-sekolah', 'SMK SWASTA MANDIRI'),
('alamat', 'alamat', 'Jl. Datuk Kabu No. 99'),
('telp', 'telp', '0811-6041-633'),
('install-success', 'install-success', '1'),
('status-registrasi-siswa', 'status-registrasi-siswa', '0'),
('status-registrasi-pengajar', 'status-registrasi-pengajar', '0'),
('smtp-host', 'smtp-host', ''),
('smtp-username', 'smtp-username', ''),
('smtp-pass', 'smtp-pass', ''),
('smtp-port', 'smtp-port', ''),
('edit-username-siswa', 'edit-username-siswa', '1'),
('edit-foto-siswa', 'edit-foto-siswa', '1'),
('info-slide-1', 'info-slide-1', ''),
('info-slide-2', 'info-slide-2', ''),
('info-slide-3', 'info-slide-3', ''),
('info-slide-4', 'info-slide-4', ''),
('logo-sekolah', 'logo-sekolah', 'logo-sekolah.jpg'),
('img-slide-1', 'img-slide-1', 'img-slide-1.jpg'),
('img-slide-2', 'img-slide-2', 'img-slide-2.jpg'),
('img-slide-3', 'img-slide-3', 'img-slide-3.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 1,
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT 1,
  `pengajar_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihan`
--

CREATE TABLE `pilihan` (
  `id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pilihan`
--

INSERT INTO `pilihan` (`id`, `pertanyaan_id`, `konten`, `kunci`, `urutan`, `aktif`) VALUES
(1, 1, '<p>wiwo</p>\r\n', 1, 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `tahun_masuk`, `foto`, `status_id`) VALUES
(1, '101', 'Almira Maja', 'Perempuan', 'Medan', '2008-08-13', 'ISLAM', 'Jl.Letda Sujono No.126', 2018, NULL, 1),
(2, '100', 'Dea Alawiyah', 'Perempuan', 'Medan', '2009-06-11', 'ISLAM', 'Jl. Letda Sujono Gg.Abadi', 2018, NULL, 1),
(3, '102', 'Raffa Habibie', 'Laki-laki', 'Aceh', '2009-08-14', 'KRISTEN', 'Jl. Aksara No.123', 2018, NULL, 1),
(4, '103', 'Rifki Husni Nst', 'Laki-laki', 'Tanjung Morawa', '2008-01-28', 'ISLAM', 'Jl. Medan Estate', 2018, NULL, 1),
(5, '104', 'Alliya Hartati Lubis', 'Perempuan', 'Tebing Tinggi', '2009-10-02', 'ISLAM', 'Jl. Tembung Pasar V', 2018, NULL, 1),
(6, '105', 'Al Fatih Lubis', 'Laki-laki', 'Bandar Khalifah', '2009-11-18', 'ISLAM', 'Jl.Perhubungan Gg.Cempaka', 2018, NULL, 1),
(7, '106', 'Aisyah Seruni', 'Perempuan', 'Medan', '2007-03-27', 'ISLAM', 'Jl. Denai Gg.Damai', 2019, NULL, 1),
(8, '107', 'Bayu Irawan', 'Laki-laki', 'Tebing Tinggi', '2007-04-30', 'KRISTEN', 'Jl. Pasar VI', 2020, NULL, 1),
(9, '108', 'Al Khalifi Bagas Pradana', 'Laki-laki', 'Medan', '2008-05-16', 'ISLAM', 'Jl.Panglima Denai', 2017, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE `tugas` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 0,
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=tidak tampil di siswa, 1=tampil siswa'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tugas`
--

INSERT INTO `tugas` (`id`, `mapel_id`, `pengajar_id`, `type_id`, `judul`, `durasi`, `info`, `aktif`, `tgl_buat`, `tampil_siswa`) VALUES
(1, 1, 7, 3, 'mengejaa', 10, '<p>apakahh b indio itu?</p>\r\n\r\n<p>a. jdjkd</p>\r\n\r\n<p>b.jdhkjd</p>\r\n\r\n<p>c.dkjhdkj</p>\r\n\r\n<p>d.kjsh</p>\r\n\r\n<p>e.sjhdkjs</p>\r\n', 1, '2021-07-24 21:12:19', 1),
(2, 15, 7, 2, 'sejarah indonesia', 10, '<p>Apakah cinta itu?</p>\r\n', 1, '2021-07-24 21:15:17', 1),
(3, 6, 7, 1, 'sepak bola', NULL, '<p>dididid</p>\r\n', 1, '2021-07-24 21:16:16', 1),
(4, 3, 1, 2, 'mm', 10, '<p>sdkjsljdlsjdlsk</p>\r\n', 1, '2021-07-25 11:37:16', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_kelas`
--

CREATE TABLE `tugas_kelas` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tugas_kelas`
--

INSERT INTO `tugas_kelas` (`id`, `tugas_id`, `kelas_id`) VALUES
(1, 1, 10),
(2, 2, 10),
(3, 3, 10),
(4, 4, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_pertanyaan`
--

CREATE TABLE `tugas_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tugas_pertanyaan`
--

INSERT INTO `tugas_pertanyaan` (`id`, `pertanyaan`, `urutan`, `tugas_id`, `aktif`) VALUES
(1, '<p>Apakahh b indo itu?</p>\r\n', 1, 1, 1),
(2, '<p>Apakah CInta itu?</p>\r\n', 1, 2, 1),
(3, '<p>kjhskaskahakja</p>\r\n', 1, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengajar_id` (`pengajar_id`),
  ADD UNIQUE KEY `mapel_id` (`mapel_id`);

--
-- Indeks untuk tabel `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `absensi_id` (`absensi_id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `field_tambahan`
--
ALTER TABLE `field_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_2` (`parent_id`);

--
-- Indeks untuk tabel `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`siswa_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`siswa_id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`,`materi_id`),
  ADD KEY `login_id_2` (`login_id`,`materi_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  ADD KEY `username_2` (`username`,`siswa_id`,`pengajar_id`);

--
-- Indeks untuk tabel `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `login_id_2` (`login_id`),
  ADD KEY `login_id_3` (`login_id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hari_id` (`hari_id`,`pengajar_id`,`mapel_kelas_id`),
  ADD KEY `hari_id_2` (`hari_id`,`pengajar_id`,`mapel_kelas_id`);

--
-- Indeks untuk tabel `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`mapel_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`mapel_id`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`);

--
-- Indeks untuk tabel `materi_kelas`
--
ALTER TABLE `materi_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`,`kelas_id`),
  ADD KEY `materi_id_2` (`materi_id`,`kelas_id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`,`owner_id`,`sender_receiver_id`),
  ADD KEY `type_id_2` (`type_id`,`owner_id`,`sender_receiver_id`);

--
-- Indeks untuk tabel `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`siswa_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`siswa_id`);

--
-- Indeks untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajar_id` (`pengajar_id`);

--
-- Indeks untuk tabel `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaan_id` (`pertanyaan_id`),
  ADD KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`,`nama`,`status_id`),
  ADD KEY `nis_2` (`nis`,`nama`,`status_id`);

--
-- Indeks untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`type_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`type_id`);

--
-- Indeks untuk tabel `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`kelas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`kelas_id`);

--
-- Indeks untuk tabel `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `login_log`
--
ALTER TABLE `login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `materi_kelas`
--
ALTER TABLE `materi_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
