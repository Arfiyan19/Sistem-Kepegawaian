-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 04:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `tipe_cuti` enum('Tahunan','Besar','Bersama','Hamil','Sakit','Penting') NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `ket` text NOT NULL,
  `status` enum('Disetujui HRD','Ditolak HRD','Disetujui Atasan','Ditolak Atasan','Diproses') NOT NULL,
  `tgl_disetujui_atasan` date DEFAULT NULL,
  `tgl_disetujui_hrd` date DEFAULT NULL,
  `tgl_ditolak_atasan` date DEFAULT NULL,
  `tgl_ditolak_hrd` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_divisi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `nm_divisi`, `created_at`, `updated_at`) VALUES
(1, 'Non-Divisi', NULL, NULL),
(2, 'Business Development', NULL, NULL),
(3, 'Finance', NULL, NULL),
(4, 'Technology Officer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `gaji_pokok` int(10) UNSIGNED DEFAULT NULL,
  `jml_tunjangan` int(10) UNSIGNED DEFAULT NULL,
  `jml_potongan` int(10) UNSIGNED DEFAULT NULL,
  `tot_gaji_diterima` int(10) UNSIGNED DEFAULT NULL,
  `dikirim_tgl` date DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT 0,
  `path` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'icon-home', NULL, NULL),
(2, 'icon-home2', NULL, NULL),
(3, 'icon-home5', NULL, NULL),
(4, 'icon-home7', NULL, NULL),
(5, 'icon-home8', NULL, NULL),
(6, 'icon-home9', NULL, NULL),
(7, 'icon-office', NULL, NULL),
(8, 'icon-city', NULL, NULL),
(9, 'icon-newspaper', NULL, NULL),
(10, 'icon-magazine', NULL, NULL),
(11, 'icon-design', NULL, NULL),
(12, 'icon-pencil', NULL, NULL),
(13, 'icon-pencil3', NULL, NULL),
(14, 'icon-pencil4', NULL, NULL),
(15, 'icon-pencil5', NULL, NULL),
(16, 'icon-pencil6', NULL, NULL),
(17, 'icon-pencil7', NULL, NULL),
(18, 'icon-eraser', NULL, NULL),
(19, 'icon-eraser2', NULL, NULL),
(20, 'icon-eraser3', NULL, NULL),
(21, 'icon-quill2', NULL, NULL),
(22, 'icon-quill4', NULL, NULL),
(23, 'icon-pen', NULL, NULL),
(24, 'icon-pen-plus', NULL, NULL),
(25, 'icon-pen-minus', NULL, NULL),
(26, 'icon-pen2', NULL, NULL),
(27, 'icon-blog', NULL, NULL),
(28, 'icon-pen6', NULL, NULL),
(29, 'icon-brush', NULL, NULL),
(30, 'icon-spray', NULL, NULL),
(31, 'icon-color-sampler', NULL, NULL),
(32, 'icon-toggle', NULL, NULL),
(33, 'icon-bucket', NULL, NULL),
(34, 'icon-gradient', NULL, NULL),
(35, 'icon-eyedropper', NULL, NULL),
(36, 'icon-eyedropper2', NULL, NULL),
(37, 'icon-eyedropper3', NULL, NULL),
(38, 'icon-droplet', NULL, NULL),
(39, 'icon-droplet2', NULL, NULL),
(40, 'icon-color-clear', NULL, NULL),
(41, 'icon-paint-format', NULL, NULL),
(42, 'icon-stamp', NULL, NULL),
(43, 'icon-image2', NULL, NULL),
(44, 'icon-image-compare', NULL, NULL),
(45, 'icon-images2', NULL, NULL),
(46, 'icon-image3', NULL, NULL),
(47, 'icon-images3', NULL, NULL),
(48, 'icon-image4', NULL, NULL),
(49, 'icon-image5', NULL, NULL),
(50, 'icon-camera', NULL, NULL),
(51, 'icon-shutter', NULL, NULL),
(52, 'icon-headphones', NULL, NULL),
(53, 'icon-headset', NULL, NULL),
(54, 'icon-music', NULL, NULL),
(55, 'icon-album', NULL, NULL),
(56, 'icon-tape', NULL, NULL),
(57, 'icon-piano', NULL, NULL),
(58, 'icon-speakers', NULL, NULL),
(59, 'icon-play', NULL, NULL),
(60, 'icon-clapboard-play', NULL, NULL),
(61, 'icon-clapboard', NULL, NULL),
(62, 'icon-media', NULL, NULL),
(63, 'icon-presentation', NULL, NULL),
(64, 'icon-movie', NULL, NULL),
(65, 'icon-film', NULL, NULL),
(66, 'icon-film2', NULL, NULL),
(67, 'icon-film3', NULL, NULL),
(68, 'icon-film4', NULL, NULL),
(69, 'icon-video-camera', NULL, NULL),
(70, 'icon-video-camera2', NULL, NULL),
(71, 'icon-video-camera-slash', NULL, NULL),
(72, 'icon-video-camera3', NULL, NULL),
(73, 'icon-dice', NULL, NULL),
(74, 'icon-chess-king', NULL, NULL),
(75, 'icon-chess-queen', NULL, NULL),
(76, 'icon-chess', NULL, NULL),
(77, 'icon-megaphone', NULL, NULL),
(78, 'icon-new', NULL, NULL),
(79, 'icon-connection', NULL, NULL),
(80, 'icon-station', NULL, NULL),
(81, 'icon-satellite-dish2', NULL, NULL),
(82, 'icon-feed', NULL, NULL),
(83, 'icon-mic2', NULL, NULL),
(84, 'icon-mic-off2', NULL, NULL),
(85, 'icon-book', NULL, NULL),
(86, 'icon-book2', NULL, NULL),
(87, 'icon-book-play', NULL, NULL),
(88, 'icon-book3', NULL, NULL),
(89, 'icon-bookmark', NULL, NULL),
(90, 'icon-books', NULL, NULL),
(91, 'icon-archive', NULL, NULL),
(92, 'icon-reading', NULL, NULL),
(93, 'icon-library2', NULL, NULL),
(94, 'icon-graduation2', NULL, NULL),
(95, 'icon-file-text', NULL, NULL),
(96, 'icon-profile', NULL, NULL),
(97, 'icon-file-empty', NULL, NULL),
(98, 'icon-file-empty2', NULL, NULL),
(99, 'icon-files-empty', NULL, NULL),
(100, 'icon-files-empty2', NULL, NULL),
(101, 'icon-file-plus', NULL, NULL),
(102, 'icon-file-plus2', NULL, NULL),
(103, 'icon-file-minus', NULL, NULL),
(104, 'icon-file-minus2', NULL, NULL),
(105, 'icon-file-download', NULL, NULL),
(106, 'icon-file-download2', NULL, NULL),
(107, 'icon-file-upload', NULL, NULL),
(108, 'icon-file-upload2', NULL, NULL),
(109, 'icon-file-check', NULL, NULL),
(110, 'icon-file-check2', NULL, NULL),
(111, 'icon-file-eye', NULL, NULL),
(112, 'icon-file-eye2', NULL, NULL),
(113, 'icon-file-text2', NULL, NULL),
(114, 'icon-file-text3', NULL, NULL),
(115, 'icon-file-picture', NULL, NULL),
(116, 'icon-file-picture2', NULL, NULL),
(117, 'icon-file-music', NULL, NULL),
(118, 'icon-file-music2', NULL, NULL),
(119, 'icon-file-play', NULL, NULL),
(120, 'icon-file-play2', NULL, NULL),
(121, 'icon-file-video', NULL, NULL),
(122, 'icon-file-video2', NULL, NULL),
(123, 'icon-copy', NULL, NULL),
(124, 'icon-copy2', NULL, NULL),
(125, 'icon-file-zip', NULL, NULL),
(126, 'icon-file-zip2', NULL, NULL),
(127, 'icon-file-xml', NULL, NULL),
(128, 'icon-file-xml2', NULL, NULL),
(129, 'icon-file-css', NULL, NULL),
(130, 'icon-file-css2', NULL, NULL),
(131, 'icon-file-presentation', NULL, NULL),
(132, 'icon-file-presentation2', NULL, NULL),
(133, 'icon-file-stats', NULL, NULL),
(134, 'icon-file-stats2', NULL, NULL),
(135, 'icon-file-locked', NULL, NULL),
(136, 'icon-file-locked2', NULL, NULL),
(137, 'icon-file-spreadsheet', NULL, NULL),
(138, 'icon-file-spreadsheet2', NULL, NULL),
(139, 'icon-copy3', NULL, NULL),
(140, 'icon-copy4', NULL, NULL),
(141, 'icon-paste', NULL, NULL),
(142, 'icon-paste2', NULL, NULL),
(143, 'icon-paste3', NULL, NULL),
(144, 'icon-paste4', NULL, NULL),
(145, 'icon-stack', NULL, NULL),
(146, 'icon-stack2', NULL, NULL),
(147, 'icon-stack3', NULL, NULL),
(148, 'icon-folder', NULL, NULL),
(149, 'icon-folder-search', NULL, NULL),
(150, 'icon-folder-download', NULL, NULL),
(151, 'icon-folder-upload', NULL, NULL),
(152, 'icon-folder-plus', NULL, NULL),
(153, 'icon-folder-plus2', NULL, NULL),
(154, 'icon-folder-minus', NULL, NULL),
(155, 'icon-folder-minus2', NULL, NULL),
(156, 'icon-folder-check', NULL, NULL),
(157, 'icon-folder-heart', NULL, NULL),
(158, 'icon-folder-remove', NULL, NULL),
(159, 'icon-folder2', NULL, NULL),
(160, 'icon-folder-open', NULL, NULL),
(161, 'icon-folder3', NULL, NULL),
(162, 'icon-folder4', NULL, NULL),
(163, 'icon-folder-plus3', NULL, NULL),
(164, 'icon-folder-minus3', NULL, NULL),
(165, 'icon-folder-plus4', NULL, NULL),
(166, 'icon-folder-minus4', NULL, NULL),
(167, 'icon-folder-download2', NULL, NULL),
(168, 'icon-folder-upload2', NULL, NULL),
(169, 'icon-folder-download3', NULL, NULL),
(170, 'icon-folder-upload3', NULL, NULL),
(171, 'icon-folder5', NULL, NULL),
(172, 'icon-folder-open2', NULL, NULL),
(173, 'icon-folder6', NULL, NULL),
(174, 'icon-folder-open3', NULL, NULL),
(175, 'icon-certificate', NULL, NULL),
(176, 'icon-cc', NULL, NULL),
(177, 'icon-price-tag', NULL, NULL),
(178, 'icon-price-tag2', NULL, NULL),
(179, 'icon-price-tags', NULL, NULL),
(180, 'icon-price-tag3', NULL, NULL),
(181, 'icon-price-tags2', NULL, NULL),
(182, 'icon-barcode2', NULL, NULL),
(183, 'icon-qrcode', NULL, NULL),
(184, 'icon-ticket', NULL, NULL),
(185, 'icon-theater', NULL, NULL),
(186, 'icon-store', NULL, NULL),
(187, 'icon-store2', NULL, NULL),
(188, 'icon-cart', NULL, NULL),
(189, 'icon-cart2', NULL, NULL),
(190, 'icon-cart4', NULL, NULL),
(191, 'icon-cart5', NULL, NULL),
(192, 'icon-cart-add', NULL, NULL),
(193, 'icon-cart-add2', NULL, NULL),
(194, 'icon-cart-remove', NULL, NULL),
(195, 'icon-basket', NULL, NULL),
(196, 'icon-bag', NULL, NULL),
(197, 'icon-percent', NULL, NULL),
(198, 'icon-coins', NULL, NULL),
(199, 'icon-coin-dollar', NULL, NULL),
(200, 'icon-coin-euro', NULL, NULL),
(201, 'icon-coin-pound', NULL, NULL),
(202, 'icon-coin-yen', NULL, NULL),
(203, 'icon-piggy-bank', NULL, NULL),
(204, 'icon-wallet', NULL, NULL),
(205, 'icon-cash', NULL, NULL),
(206, 'icon-cash2', NULL, NULL),
(207, 'icon-cash3', NULL, NULL),
(208, 'icon-cash4', NULL, NULL),
(209, 'icon-credit-card', NULL, NULL),
(210, 'icon-credit-card2', NULL, NULL),
(211, 'icon-calculator4', NULL, NULL),
(212, 'icon-calculator2', NULL, NULL),
(213, 'icon-calculator3', NULL, NULL),
(214, 'icon-chip', NULL, NULL),
(215, 'icon-lifebuoy', NULL, NULL),
(216, 'icon-phone', NULL, NULL),
(217, 'icon-phone2', NULL, NULL),
(218, 'icon-phone-slash', NULL, NULL),
(219, 'icon-phone-wave', NULL, NULL),
(220, 'icon-phone-plus', NULL, NULL),
(221, 'icon-phone-minus', NULL, NULL),
(222, 'icon-phone-plus2', NULL, NULL),
(223, 'icon-phone-minus2', NULL, NULL),
(224, 'icon-phone-incoming', NULL, NULL),
(225, 'icon-phone-outgoing', NULL, NULL),
(226, 'icon-phone-hang-up', NULL, NULL),
(227, 'icon-address-book', NULL, NULL),
(228, 'icon-address-book2', NULL, NULL),
(229, 'icon-address-book3', NULL, NULL),
(230, 'icon-notebook', NULL, NULL),
(231, 'icon-envelop', NULL, NULL),
(232, 'icon-envelop2', NULL, NULL),
(233, 'icon-envelop3', NULL, NULL),
(234, 'icon-envelop4', NULL, NULL),
(235, 'icon-envelop5', NULL, NULL),
(236, 'icon-mailbox', NULL, NULL),
(237, 'icon-pushpin', NULL, NULL),
(238, 'icon-location3', NULL, NULL),
(239, 'icon-location4', NULL, NULL),
(240, 'icon-compass4', NULL, NULL),
(241, 'icon-map', NULL, NULL),
(242, 'icon-map4', NULL, NULL),
(243, 'icon-map5', NULL, NULL),
(244, 'icon-direction', NULL, NULL),
(245, 'icon-reset', NULL, NULL),
(246, 'icon-history', NULL, NULL),
(247, 'icon-watch', NULL, NULL),
(248, 'icon-watch2', NULL, NULL),
(249, 'icon-alarm', NULL, NULL),
(250, 'icon-alarm-add', NULL, NULL),
(251, 'icon-alarm-check', NULL, NULL),
(252, 'icon-alarm-cancel', NULL, NULL),
(253, 'icon-bell2', NULL, NULL),
(254, 'icon-bell3', NULL, NULL),
(255, 'icon-bell-plus', NULL, NULL),
(256, 'icon-bell-minus', NULL, NULL),
(257, 'icon-bell-check', NULL, NULL),
(258, 'icon-bell-cross', NULL, NULL),
(259, 'icon-calendar', NULL, NULL),
(260, 'icon-calendar2', NULL, NULL),
(261, 'icon-calendar3', NULL, NULL),
(262, 'icon-calendar52', NULL, NULL),
(263, 'icon-printer', NULL, NULL),
(264, 'icon-printer2', NULL, NULL),
(265, 'icon-printer4', NULL, NULL),
(266, 'icon-shredder', NULL, NULL),
(267, 'icon-mouse', NULL, NULL),
(268, 'icon-mouse-left', NULL, NULL),
(269, 'icon-mouse-right', NULL, NULL),
(270, 'icon-keyboard', NULL, NULL),
(271, 'icon-typewriter', NULL, NULL),
(272, 'icon-display', NULL, NULL),
(273, 'icon-display4', NULL, NULL),
(274, 'icon-laptop', NULL, NULL),
(275, 'icon-mobile', NULL, NULL),
(276, 'icon-mobile2', NULL, NULL),
(277, 'icon-tablet', NULL, NULL),
(278, 'icon-mobile3', NULL, NULL),
(279, 'icon-tv', NULL, NULL),
(280, 'icon-radio', NULL, NULL),
(281, 'icon-cabinet', NULL, NULL),
(282, 'icon-drawer', NULL, NULL),
(283, 'icon-drawer2', NULL, NULL),
(284, 'icon-drawer-out', NULL, NULL),
(285, 'icon-drawer-in', NULL, NULL),
(286, 'icon-drawer3', NULL, NULL),
(287, 'icon-box', NULL, NULL),
(288, 'icon-box-add', NULL, NULL),
(289, 'icon-box-remove', NULL, NULL),
(290, 'icon-download', NULL, NULL),
(291, 'icon-upload', NULL, NULL),
(292, 'icon-floppy-disk', NULL, NULL),
(293, 'icon-floppy-disks', NULL, NULL),
(294, 'icon-usb-stick', NULL, NULL),
(295, 'icon-drive', NULL, NULL),
(296, 'icon-server', NULL, NULL),
(297, 'icon-database', NULL, NULL),
(298, 'icon-database2', NULL, NULL),
(299, 'icon-database4', NULL, NULL),
(300, 'icon-database-menu', NULL, NULL),
(301, 'icon-database-add', NULL, NULL),
(302, 'icon-database-remove', NULL, NULL),
(303, 'icon-database-insert', NULL, NULL),
(304, 'icon-database-export', NULL, NULL),
(305, 'icon-database-upload', NULL, NULL),
(306, 'icon-database-refresh', NULL, NULL),
(307, 'icon-database-diff', NULL, NULL),
(308, 'icon-database-edit2', NULL, NULL),
(309, 'icon-database-check', NULL, NULL),
(310, 'icon-database-arrow', NULL, NULL),
(311, 'icon-database-time2', NULL, NULL),
(312, 'icon-undo', NULL, NULL),
(313, 'icon-redo', NULL, NULL),
(314, 'icon-rotate-ccw', NULL, NULL),
(315, 'icon-rotate-cw', NULL, NULL),
(316, 'icon-rotate-ccw2', NULL, NULL),
(317, 'icon-rotate-cw2', NULL, NULL),
(318, 'icon-rotate-ccw3', NULL, NULL),
(319, 'icon-rotate-cw3', NULL, NULL),
(320, 'icon-flip-vertical2', NULL, NULL),
(321, 'icon-flip-horizontal2', NULL, NULL),
(322, 'icon-flip-vertical3', NULL, NULL),
(323, 'icon-flip-vertical4', NULL, NULL),
(324, 'icon-angle', NULL, NULL),
(325, 'icon-shear', NULL, NULL),
(326, 'icon-align-left', NULL, NULL),
(327, 'icon-align-center-horizontal', NULL, NULL),
(328, 'icon-align-right', NULL, NULL),
(329, 'icon-align-top', NULL, NULL),
(330, 'icon-align-center-vertical', NULL, NULL),
(331, 'icon-align-bottom', NULL, NULL),
(332, 'icon-undo2', NULL, NULL),
(333, 'icon-redo2', NULL, NULL),
(334, 'icon-forward', NULL, NULL),
(335, 'icon-reply', NULL, NULL),
(336, 'icon-reply-all', NULL, NULL),
(337, 'icon-bubble', NULL, NULL),
(338, 'icon-bubbles', NULL, NULL),
(339, 'icon-bubbles2', NULL, NULL),
(340, 'icon-bubble2', NULL, NULL),
(341, 'icon-bubbles3', NULL, NULL),
(342, 'icon-bubbles4', NULL, NULL),
(343, 'icon-bubble-notification', NULL, NULL),
(344, 'icon-bubbles5', NULL, NULL),
(345, 'icon-bubbles6', NULL, NULL),
(346, 'icon-bubble6', NULL, NULL),
(347, 'icon-bubbles7', NULL, NULL),
(348, 'icon-bubble7', NULL, NULL),
(349, 'icon-bubbles8', NULL, NULL),
(350, 'icon-bubble8', NULL, NULL),
(351, 'icon-bubble-dots3', NULL, NULL),
(352, 'icon-bubble-lines3', NULL, NULL),
(353, 'icon-bubble9', NULL, NULL),
(354, 'icon-bubble-dots4', NULL, NULL),
(355, 'icon-bubble-lines4', NULL, NULL),
(356, 'icon-bubbles9', NULL, NULL),
(357, 'icon-bubbles10', NULL, NULL),
(358, 'icon-user', NULL, NULL),
(359, 'icon-users', NULL, NULL),
(360, 'icon-user-plus', NULL, NULL),
(361, 'icon-user-minus', NULL, NULL),
(362, 'icon-user-cancel', NULL, NULL),
(363, 'icon-user-block', NULL, NULL),
(364, 'icon-user-lock', NULL, NULL),
(365, 'icon-user-check', NULL, NULL),
(366, 'icon-users2', NULL, NULL),
(367, 'icon-users4', NULL, NULL),
(368, 'icon-user-tie', NULL, NULL),
(369, 'icon-collaboration', NULL, NULL),
(370, 'icon-vcard', NULL, NULL),
(371, 'icon-hat', NULL, NULL),
(372, 'icon-bowtie', NULL, NULL),
(373, 'icon-quotes-left', NULL, NULL),
(374, 'icon-quotes-right', NULL, NULL),
(375, 'icon-quotes-left2', NULL, NULL),
(376, 'icon-quotes-right2', NULL, NULL),
(377, 'icon-hour-glass', NULL, NULL),
(378, 'icon-hour-glass2', NULL, NULL),
(379, 'icon-hour-glass3', NULL, NULL),
(380, 'icon-spinner', NULL, NULL),
(381, 'icon-spinner2', NULL, NULL),
(382, 'icon-spinner3', NULL, NULL),
(383, 'icon-spinner4', NULL, NULL),
(384, 'icon-spinner6', NULL, NULL),
(385, 'icon-spinner9', NULL, NULL),
(386, 'icon-spinner10', NULL, NULL),
(387, 'icon-spinner11', NULL, NULL),
(388, 'icon-microscope', NULL, NULL),
(389, 'icon-enlarge', NULL, NULL),
(390, 'icon-shrink', NULL, NULL),
(391, 'icon-enlarge3', NULL, NULL),
(392, 'icon-shrink3', NULL, NULL),
(393, 'icon-enlarge5', NULL, NULL),
(394, 'icon-shrink5', NULL, NULL),
(395, 'icon-enlarge6', NULL, NULL),
(396, 'icon-shrink6', NULL, NULL),
(397, 'icon-enlarge7', NULL, NULL),
(398, 'icon-shrink7', NULL, NULL),
(399, 'icon-key', NULL, NULL),
(400, 'icon-lock', NULL, NULL),
(401, 'icon-lock2', NULL, NULL),
(402, 'icon-lock4', NULL, NULL),
(403, 'icon-unlocked', NULL, NULL),
(404, 'icon-lock5', NULL, NULL),
(405, 'icon-unlocked2', NULL, NULL),
(406, 'icon-safe', NULL, NULL),
(407, 'icon-wrench', NULL, NULL),
(408, 'icon-wrench2', NULL, NULL),
(409, 'icon-wrench3', NULL, NULL),
(410, 'icon-equalizer', NULL, NULL),
(411, 'icon-equalizer2', NULL, NULL),
(412, 'icon-equalizer3', NULL, NULL),
(413, 'icon-equalizer4', NULL, NULL),
(414, 'icon-cog', NULL, NULL),
(415, 'icon-cogs', NULL, NULL),
(416, 'icon-cog2', NULL, NULL),
(417, 'icon-cog3', NULL, NULL),
(418, 'icon-cog4', NULL, NULL),
(419, 'icon-cog52', NULL, NULL),
(420, 'icon-cog6', NULL, NULL),
(421, 'icon-cog7', NULL, NULL),
(422, 'icon-hammer', NULL, NULL),
(423, 'icon-hammer-wrench', NULL, NULL),
(424, 'icon-magic-wand', NULL, NULL),
(425, 'icon-magic-wand2', NULL, NULL),
(426, 'icon-pulse2', NULL, NULL),
(427, 'icon-aid-kit', NULL, NULL),
(428, 'icon-bug2', NULL, NULL),
(429, 'icon-construction', NULL, NULL),
(430, 'icon-traffic-cone', NULL, NULL),
(431, 'icon-traffic-lights', NULL, NULL),
(432, 'icon-pie-chart', NULL, NULL),
(433, 'icon-pie-chart2', NULL, NULL),
(434, 'icon-pie-chart3', NULL, NULL),
(435, 'icon-pie-chart4', NULL, NULL),
(436, 'icon-pie-chart5', NULL, NULL),
(437, 'icon-pie-chart6', NULL, NULL),
(438, 'icon-pie-chart7', NULL, NULL),
(439, 'icon-stats-dots', NULL, NULL),
(440, 'icon-stats-bars', NULL, NULL),
(441, 'icon-pie-chart8', NULL, NULL),
(442, 'icon-stats-bars2', NULL, NULL),
(443, 'icon-stats-bars3', NULL, NULL),
(444, 'icon-stats-bars4', NULL, NULL),
(445, 'icon-chart', NULL, NULL),
(446, 'icon-stats-growth', NULL, NULL),
(447, 'icon-stats-decline', NULL, NULL),
(448, 'icon-stats-growth2', NULL, NULL),
(449, 'icon-stats-decline2', NULL, NULL),
(450, 'icon-stairs-up', NULL, NULL),
(451, 'icon-stairs-down', NULL, NULL),
(452, 'icon-stairs', NULL, NULL),
(453, 'icon-ladder', NULL, NULL),
(454, 'icon-rating', NULL, NULL),
(455, 'icon-rating2', NULL, NULL),
(456, 'icon-rating3', NULL, NULL),
(457, 'icon-podium', NULL, NULL),
(458, 'icon-stars', NULL, NULL),
(459, 'icon-medal-star', NULL, NULL),
(460, 'icon-medal', NULL, NULL),
(461, 'icon-medal2', NULL, NULL),
(462, 'icon-medal-first', NULL, NULL),
(463, 'icon-medal-second', NULL, NULL),
(464, 'icon-medal-third', NULL, NULL),
(465, 'icon-crown', NULL, NULL),
(466, 'icon-trophy2', NULL, NULL),
(467, 'icon-trophy3', NULL, NULL),
(468, 'icon-diamond', NULL, NULL),
(469, 'icon-trophy4', NULL, NULL),
(470, 'icon-gift', NULL, NULL),
(471, 'icon-pipe', NULL, NULL),
(472, 'icon-mustache', NULL, NULL),
(473, 'icon-cup2', NULL, NULL),
(474, 'icon-coffee', NULL, NULL),
(475, 'icon-paw', NULL, NULL),
(476, 'icon-footprint', NULL, NULL),
(477, 'icon-rocket', NULL, NULL),
(478, 'icon-meter2', NULL, NULL),
(479, 'icon-meter-slow', NULL, NULL),
(480, 'icon-meter-fast', NULL, NULL),
(481, 'icon-hammer2', NULL, NULL),
(482, 'icon-balance', NULL, NULL),
(483, 'icon-fire', NULL, NULL),
(484, 'icon-fire2', NULL, NULL),
(485, 'icon-lab', NULL, NULL),
(486, 'icon-atom', NULL, NULL),
(487, 'icon-atom2', NULL, NULL),
(488, 'icon-bin', NULL, NULL),
(489, 'icon-bin2', NULL, NULL),
(490, 'icon-briefcase', NULL, NULL),
(491, 'icon-briefcase3', NULL, NULL),
(492, 'icon-airplane2', NULL, NULL),
(493, 'icon-airplane3', NULL, NULL),
(494, 'icon-airplane4', NULL, NULL),
(495, 'icon-paperplane', NULL, NULL),
(496, 'icon-car', NULL, NULL),
(497, 'icon-steering-wheel', NULL, NULL),
(498, 'icon-car2', NULL, NULL),
(499, 'icon-gas', NULL, NULL),
(500, 'icon-bus', NULL, NULL),
(501, 'icon-truck', NULL, NULL),
(502, 'icon-bike', NULL, NULL),
(503, 'icon-road', NULL, NULL),
(504, 'icon-train', NULL, NULL),
(505, 'icon-train2', NULL, NULL),
(506, 'icon-ship', NULL, NULL),
(507, 'icon-boat', NULL, NULL),
(508, 'icon-chopper', NULL, NULL),
(509, 'icon-cube', NULL, NULL),
(510, 'icon-cube2', NULL, NULL),
(511, 'icon-cube3', NULL, NULL),
(512, 'icon-cube4', NULL, NULL),
(513, 'icon-pyramid', NULL, NULL),
(514, 'icon-pyramid2', NULL, NULL),
(515, 'icon-package', NULL, NULL),
(516, 'icon-puzzle', NULL, NULL),
(517, 'icon-puzzle2', NULL, NULL),
(518, 'icon-puzzle3', NULL, NULL),
(519, 'icon-puzzle4', NULL, NULL),
(520, 'icon-glasses-3d2', NULL, NULL),
(521, 'icon-brain', NULL, NULL),
(522, 'icon-accessibility', NULL, NULL),
(523, 'icon-accessibility2', NULL, NULL),
(524, 'icon-strategy', NULL, NULL),
(525, 'icon-target', NULL, NULL),
(526, 'icon-target2', NULL, NULL),
(527, 'icon-shield-check', NULL, NULL),
(528, 'icon-shield-notice', NULL, NULL),
(529, 'icon-shield2', NULL, NULL),
(530, 'icon-racing', NULL, NULL),
(531, 'icon-finish', NULL, NULL),
(532, 'icon-power2', NULL, NULL),
(533, 'icon-power3', NULL, NULL),
(534, 'icon-switch', NULL, NULL),
(535, 'icon-switch22', NULL, NULL),
(536, 'icon-power-cord', NULL, NULL),
(537, 'icon-clipboard', NULL, NULL),
(538, 'icon-clipboard2', NULL, NULL),
(539, 'icon-clipboard3', NULL, NULL),
(540, 'icon-clipboard4', NULL, NULL),
(541, 'icon-clipboard5', NULL, NULL),
(542, 'icon-clipboard6', NULL, NULL),
(543, 'icon-playlist', NULL, NULL),
(544, 'icon-playlist-add', NULL, NULL),
(545, 'icon-list-numbered', NULL, NULL),
(546, 'icon-list', NULL, NULL),
(547, 'icon-list2', NULL, NULL),
(548, 'icon-more', NULL, NULL),
(549, 'icon-more2', NULL, NULL),
(550, 'icon-grid', NULL, NULL),
(551, 'icon-grid2', NULL, NULL),
(552, 'icon-grid3', NULL, NULL),
(553, 'icon-grid4', NULL, NULL),
(554, 'icon-grid52', NULL, NULL),
(555, 'icon-grid6', NULL, NULL),
(556, 'icon-grid7', NULL, NULL),
(557, 'icon-tree5', NULL, NULL),
(558, 'icon-tree6', NULL, NULL),
(559, 'icon-tree7', NULL, NULL),
(560, 'icon-lan', NULL, NULL),
(561, 'icon-lan2', NULL, NULL),
(562, 'icon-lan3', NULL, NULL),
(563, 'icon-menu', NULL, NULL),
(564, 'icon-circle-small', NULL, NULL),
(565, 'icon-menu2', NULL, NULL),
(566, 'icon-menu3', NULL, NULL),
(567, 'icon-menu4', NULL, NULL),
(568, 'icon-menu5', NULL, NULL),
(569, 'icon-menu62', NULL, NULL),
(570, 'icon-menu7', NULL, NULL),
(571, 'icon-menu8', NULL, NULL),
(572, 'icon-menu9', NULL, NULL),
(573, 'icon-menu10', NULL, NULL),
(574, 'icon-cloud', NULL, NULL),
(575, 'icon-cloud-download', NULL, NULL),
(576, 'icon-cloud-upload', NULL, NULL),
(577, 'icon-cloud-check', NULL, NULL),
(578, 'icon-cloud2', NULL, NULL),
(579, 'icon-cloud-download2', NULL, NULL),
(580, 'icon-cloud-upload2', NULL, NULL),
(581, 'icon-cloud-check2', NULL, NULL),
(582, 'icon-import', NULL, NULL),
(583, 'icon-download4', NULL, NULL),
(584, 'icon-upload4', NULL, NULL),
(585, 'icon-download7', NULL, NULL),
(586, 'icon-upload7', NULL, NULL),
(587, 'icon-download10', NULL, NULL),
(588, 'icon-upload10', NULL, NULL),
(589, 'icon-sphere', NULL, NULL),
(590, 'icon-sphere3', NULL, NULL),
(591, 'icon-earth', NULL, NULL),
(592, 'icon-link', NULL, NULL),
(593, 'icon-unlink', NULL, NULL),
(594, 'icon-link2', NULL, NULL),
(595, 'icon-unlink2', NULL, NULL),
(596, 'icon-anchor', NULL, NULL),
(597, 'icon-flag3', NULL, NULL),
(598, 'icon-flag4', NULL, NULL),
(599, 'icon-flag7', NULL, NULL),
(600, 'icon-flag8', NULL, NULL),
(601, 'icon-attachment', NULL, NULL),
(602, 'icon-attachment2', NULL, NULL),
(603, 'icon-eye', NULL, NULL),
(604, 'icon-eye-plus', NULL, NULL),
(605, 'icon-eye-minus', NULL, NULL),
(606, 'icon-eye-blocked', NULL, NULL),
(607, 'icon-eye2', NULL, NULL),
(608, 'icon-eye-blocked2', NULL, NULL),
(609, 'icon-eye4', NULL, NULL),
(610, 'icon-bookmark2', NULL, NULL),
(611, 'icon-bookmark3', NULL, NULL),
(612, 'icon-bookmarks', NULL, NULL),
(613, 'icon-bookmark4', NULL, NULL),
(614, 'icon-spotlight2', NULL, NULL),
(615, 'icon-starburst', NULL, NULL),
(616, 'icon-snowflake', NULL, NULL),
(617, 'icon-weather-windy', NULL, NULL),
(618, 'icon-fan', NULL, NULL),
(619, 'icon-umbrella', NULL, NULL),
(620, 'icon-sun3', NULL, NULL),
(621, 'icon-contrast', NULL, NULL),
(622, 'icon-bed2', NULL, NULL),
(623, 'icon-furniture', NULL, NULL),
(624, 'icon-chair', NULL, NULL),
(625, 'icon-star-empty3', NULL, NULL),
(626, 'icon-star-half', NULL, NULL),
(627, 'icon-star-full2', NULL, NULL),
(628, 'icon-heart5', NULL, NULL),
(629, 'icon-heart6', NULL, NULL),
(630, 'icon-heart-broken2', NULL, NULL),
(631, 'icon-thumbs-up2', NULL, NULL),
(632, 'icon-thumbs-down2', NULL, NULL),
(633, 'icon-thumbs-up3', NULL, NULL),
(634, 'icon-thumbs-down3', NULL, NULL),
(635, 'icon-height', NULL, NULL),
(636, 'icon-man', NULL, NULL),
(637, 'icon-woman', NULL, NULL),
(638, 'icon-man-woman', NULL, NULL),
(639, 'icon-yin-yang', NULL, NULL),
(640, 'icon-cursor', NULL, NULL),
(641, 'icon-cursor2', NULL, NULL),
(642, 'icon-lasso2', NULL, NULL),
(643, 'icon-select2', NULL, NULL),
(644, 'icon-point-up', NULL, NULL),
(645, 'icon-point-right', NULL, NULL),
(646, 'icon-point-down', NULL, NULL),
(647, 'icon-point-left', NULL, NULL),
(648, 'icon-pointer', NULL, NULL),
(649, 'icon-reminder', NULL, NULL),
(650, 'icon-drag-left-right', NULL, NULL),
(651, 'icon-drag-left', NULL, NULL),
(652, 'icon-drag-right', NULL, NULL),
(653, 'icon-touch', NULL, NULL),
(654, 'icon-multitouch', NULL, NULL),
(655, 'icon-touch-zoom', NULL, NULL),
(656, 'icon-touch-pinch', NULL, NULL),
(657, 'icon-hand', NULL, NULL),
(658, 'icon-grab', NULL, NULL),
(659, 'icon-stack-empty', NULL, NULL),
(660, 'icon-stack-plus', NULL, NULL),
(661, 'icon-stack-minus', NULL, NULL),
(662, 'icon-stack-star', NULL, NULL),
(663, 'icon-stack-picture', NULL, NULL),
(664, 'icon-stack-down', NULL, NULL),
(665, 'icon-stack-up', NULL, NULL),
(666, 'icon-stack-cancel', NULL, NULL),
(667, 'icon-stack-check', NULL, NULL),
(668, 'icon-stack-text', NULL, NULL),
(669, 'icon-stack4', NULL, NULL),
(670, 'icon-stack-music', NULL, NULL),
(671, 'icon-stack-play', NULL, NULL),
(672, 'icon-move', NULL, NULL),
(673, 'icon-dots', NULL, NULL),
(674, 'icon-warning', NULL, NULL),
(675, 'icon-warning22', NULL, NULL),
(676, 'icon-notification2', NULL, NULL),
(677, 'icon-question3', NULL, NULL),
(678, 'icon-question4', NULL, NULL),
(679, 'icon-plus3', NULL, NULL),
(680, 'icon-minus3', NULL, NULL),
(681, 'icon-plus-circle2', NULL, NULL),
(682, 'icon-minus-circle2', NULL, NULL),
(683, 'icon-cancel-circle2', NULL, NULL),
(684, 'icon-blocked', NULL, NULL),
(685, 'icon-cancel-square', NULL, NULL),
(686, 'icon-cancel-square2', NULL, NULL),
(687, 'icon-spam', NULL, NULL),
(688, 'icon-cross2', NULL, NULL),
(689, 'icon-cross3', NULL, NULL),
(690, 'icon-checkmark', NULL, NULL),
(691, 'icon-checkmark3', NULL, NULL),
(692, 'icon-checkmark2', NULL, NULL),
(693, 'icon-checkmark4', NULL, NULL),
(694, 'icon-spell-check', NULL, NULL),
(695, 'icon-spell-check2', NULL, NULL),
(696, 'icon-enter', NULL, NULL),
(697, 'icon-exit', NULL, NULL),
(698, 'icon-enter2', NULL, NULL),
(699, 'icon-exit2', NULL, NULL),
(700, 'icon-enter3', NULL, NULL),
(701, 'icon-exit3', NULL, NULL),
(702, 'icon-wall', NULL, NULL),
(703, 'icon-fence', NULL, NULL),
(704, 'icon-play3', NULL, NULL),
(705, 'icon-pause', NULL, NULL),
(706, 'icon-stop', NULL, NULL),
(707, 'icon-previous', NULL, NULL),
(708, 'icon-next', NULL, NULL),
(709, 'icon-backward', NULL, NULL),
(710, 'icon-forward2', NULL, NULL),
(711, 'icon-play4', NULL, NULL),
(712, 'icon-pause2', NULL, NULL),
(713, 'icon-stop2', NULL, NULL),
(714, 'icon-backward2', NULL, NULL),
(715, 'icon-forward3', NULL, NULL),
(716, 'icon-first', NULL, NULL),
(717, 'icon-last', NULL, NULL),
(718, 'icon-previous2', NULL, NULL),
(719, 'icon-next2', NULL, NULL),
(720, 'icon-eject', NULL, NULL),
(721, 'icon-volume-high', NULL, NULL),
(722, 'icon-volume-medium', NULL, NULL),
(723, 'icon-volume-low', NULL, NULL),
(724, 'icon-volume-mute', NULL, NULL),
(725, 'icon-speaker-left', NULL, NULL),
(726, 'icon-speaker-right', NULL, NULL),
(727, 'icon-volume-mute2', NULL, NULL),
(728, 'icon-volume-increase', NULL, NULL),
(729, 'icon-volume-decrease', NULL, NULL),
(730, 'icon-volume-mute5', NULL, NULL),
(731, 'icon-loop', NULL, NULL),
(732, 'icon-loop3', NULL, NULL),
(733, 'icon-infinite-square', NULL, NULL),
(734, 'icon-infinite', NULL, NULL),
(735, 'icon-loop4', NULL, NULL),
(736, 'icon-shuffle', NULL, NULL),
(737, 'icon-wave', NULL, NULL),
(738, 'icon-wave2', NULL, NULL),
(739, 'icon-split', NULL, NULL),
(740, 'icon-merge', NULL, NULL),
(741, 'icon-arrow-up5', NULL, NULL),
(742, 'icon-arrow-right5', NULL, NULL),
(743, 'icon-arrow-down5', NULL, NULL),
(744, 'icon-arrow-left5', NULL, NULL),
(745, 'icon-arrow-up-left2', NULL, NULL),
(746, 'icon-arrow-up7', NULL, NULL),
(747, 'icon-arrow-up-right2', NULL, NULL),
(748, 'icon-arrow-right7', NULL, NULL),
(749, 'icon-arrow-down-right2', NULL, NULL),
(750, 'icon-arrow-down7', NULL, NULL),
(751, 'icon-arrow-down-left2', NULL, NULL),
(752, 'icon-arrow-left7', NULL, NULL),
(753, 'icon-arrow-up-left3', NULL, NULL),
(754, 'icon-arrow-up8', NULL, NULL),
(755, 'icon-arrow-up-right3', NULL, NULL),
(756, 'icon-arrow-right8', NULL, NULL),
(757, 'icon-arrow-down-right3', NULL, NULL),
(758, 'icon-arrow-down8', NULL, NULL),
(759, 'icon-arrow-down-left3', NULL, NULL),
(760, 'icon-arrow-left8', NULL, NULL),
(761, 'icon-circle-up2', NULL, NULL),
(762, 'icon-circle-right2', NULL, NULL),
(763, 'icon-circle-down2', NULL, NULL),
(764, 'icon-circle-left2', NULL, NULL),
(765, 'icon-arrow-resize7', NULL, NULL),
(766, 'icon-arrow-resize8', NULL, NULL),
(767, 'icon-square-up-left', NULL, NULL),
(768, 'icon-square-up', NULL, NULL),
(769, 'icon-square-up-right', NULL, NULL),
(770, 'icon-square-right', NULL, NULL),
(771, 'icon-square-down-right', NULL, NULL),
(772, 'icon-square-down', NULL, NULL),
(773, 'icon-square-down-left', NULL, NULL),
(774, 'icon-square-left', NULL, NULL),
(775, 'icon-arrow-up15', NULL, NULL),
(776, 'icon-arrow-right15', NULL, NULL),
(777, 'icon-arrow-down15', NULL, NULL),
(778, 'icon-arrow-left15', NULL, NULL),
(779, 'icon-arrow-up16', NULL, NULL),
(780, 'icon-arrow-right16', NULL, NULL),
(781, 'icon-arrow-down16', NULL, NULL),
(782, 'icon-arrow-left16', NULL, NULL),
(783, 'icon-menu-open', NULL, NULL),
(784, 'icon-menu-open2', NULL, NULL),
(785, 'icon-menu-close', NULL, NULL),
(786, 'icon-menu-close2', NULL, NULL),
(787, 'icon-enter5', NULL, NULL),
(788, 'icon-esc', NULL, NULL),
(789, 'icon-enter6', NULL, NULL),
(790, 'icon-backspace', NULL, NULL),
(791, 'icon-backspace2', NULL, NULL),
(792, 'icon-tab', NULL, NULL),
(793, 'icon-transmission', NULL, NULL),
(794, 'icon-sort', NULL, NULL),
(795, 'icon-move-up2', NULL, NULL),
(796, 'icon-move-down2', NULL, NULL),
(797, 'icon-sort-alpha-asc', NULL, NULL),
(798, 'icon-sort-alpha-desc', NULL, NULL),
(799, 'icon-sort-numeric-asc', NULL, NULL),
(800, 'icon-sort-numberic-desc', NULL, NULL),
(801, 'icon-sort-amount-asc', NULL, NULL),
(802, 'icon-sort-amount-desc', NULL, NULL),
(803, 'icon-sort-time-asc', NULL, NULL),
(804, 'icon-sort-time-desc', NULL, NULL),
(805, 'icon-battery-6', NULL, NULL),
(806, 'icon-battery-0', NULL, NULL),
(807, 'icon-battery-charging', NULL, NULL),
(808, 'icon-command', NULL, NULL),
(809, 'icon-shift', NULL, NULL),
(810, 'icon-ctrl', NULL, NULL),
(811, 'icon-opt', NULL, NULL),
(812, 'icon-checkbox-checked', NULL, NULL),
(813, 'icon-checkbox-unchecked', NULL, NULL),
(814, 'icon-checkbox-partial', NULL, NULL),
(815, 'icon-square', NULL, NULL),
(816, 'icon-triangle', NULL, NULL),
(817, 'icon-triangle2', NULL, NULL),
(818, 'icon-diamond3', NULL, NULL),
(819, 'icon-diamond4', NULL, NULL),
(820, 'icon-checkbox-checked2', NULL, NULL),
(821, 'icon-checkbox-unchecked2', NULL, NULL),
(822, 'icon-checkbox-partial2', NULL, NULL),
(823, 'icon-radio-checked', NULL, NULL),
(824, 'icon-radio-checked2', NULL, NULL),
(825, 'icon-radio-unchecked', NULL, NULL),
(826, 'icon-checkmark-circle', NULL, NULL),
(827, 'icon-circle', NULL, NULL),
(828, 'icon-circle2', NULL, NULL),
(829, 'icon-circles', NULL, NULL),
(830, 'icon-circles2', NULL, NULL),
(831, 'icon-crop', NULL, NULL),
(832, 'icon-crop2', NULL, NULL),
(833, 'icon-make-group', NULL, NULL),
(834, 'icon-ungroup', NULL, NULL),
(835, 'icon-vector', NULL, NULL),
(836, 'icon-vector2', NULL, NULL),
(837, 'icon-rulers', NULL, NULL),
(838, 'icon-pencil-ruler', NULL, NULL),
(839, 'icon-scissors', NULL, NULL),
(840, 'icon-filter3', NULL, NULL),
(841, 'icon-filter4', NULL, NULL),
(842, 'icon-font', NULL, NULL),
(843, 'icon-ampersand2', NULL, NULL),
(844, 'icon-ligature', NULL, NULL),
(845, 'icon-font-size', NULL, NULL),
(846, 'icon-typography', NULL, NULL),
(847, 'icon-text-height', NULL, NULL),
(848, 'icon-text-width', NULL, NULL),
(849, 'icon-height2', NULL, NULL),
(850, 'icon-width', NULL, NULL),
(851, 'icon-strikethrough2', NULL, NULL),
(852, 'icon-font-size2', NULL, NULL),
(853, 'icon-bold2', NULL, NULL),
(854, 'icon-underline2', NULL, NULL),
(855, 'icon-italic2', NULL, NULL),
(856, 'icon-strikethrough3', NULL, NULL),
(857, 'icon-omega', NULL, NULL),
(858, 'icon-sigma', NULL, NULL),
(859, 'icon-nbsp', NULL, NULL),
(860, 'icon-page-break', NULL, NULL),
(861, 'icon-page-break2', NULL, NULL),
(862, 'icon-superscript', NULL, NULL),
(863, 'icon-subscript', NULL, NULL),
(864, 'icon-superscript2', NULL, NULL),
(865, 'icon-subscript2', NULL, NULL),
(866, 'icon-text-color', NULL, NULL),
(867, 'icon-highlight', NULL, NULL),
(868, 'icon-pagebreak', NULL, NULL),
(869, 'icon-clear-formatting', NULL, NULL),
(870, 'icon-table', NULL, NULL),
(871, 'icon-table2', NULL, NULL),
(872, 'icon-insert-template', NULL, NULL),
(873, 'icon-pilcrow', NULL, NULL),
(874, 'icon-ltr', NULL, NULL),
(875, 'icon-rtl', NULL, NULL),
(876, 'icon-ltr2', NULL, NULL),
(877, 'icon-rtl2', NULL, NULL),
(878, 'icon-section', NULL, NULL),
(879, 'icon-paragraph-left2', NULL, NULL),
(880, 'icon-paragraph-center2', NULL, NULL),
(881, 'icon-paragraph-right2', NULL, NULL),
(882, 'icon-paragraph-justify2', NULL, NULL),
(883, 'icon-indent-increase', NULL, NULL),
(884, 'icon-indent-decrease', NULL, NULL),
(885, 'icon-paragraph-left3', NULL, NULL),
(886, 'icon-paragraph-center3', NULL, NULL),
(887, 'icon-paragraph-right3', NULL, NULL),
(888, 'icon-paragraph-justify3', NULL, NULL),
(889, 'icon-indent-increase2', NULL, NULL),
(890, 'icon-indent-decrease2', NULL, NULL),
(891, 'icon-share', NULL, NULL),
(892, 'icon-share2', NULL, NULL),
(893, 'icon-new-tab', NULL, NULL),
(894, 'icon-new-tab2', NULL, NULL),
(895, 'icon-popout', NULL, NULL),
(896, 'icon-embed', NULL, NULL),
(897, 'icon-embed2', NULL, NULL),
(898, 'icon-markup', NULL, NULL),
(899, 'icon-regexp', NULL, NULL),
(900, 'icon-regexp2', NULL, NULL),
(901, 'icon-code', NULL, NULL),
(902, 'icon-circle-css', NULL, NULL),
(903, 'icon-circle-code', NULL, NULL),
(904, 'icon-terminal', NULL, NULL),
(905, 'icon-unicode', NULL, NULL),
(906, 'icon-seven-segment-0', NULL, NULL),
(907, 'icon-seven-segment-1', NULL, NULL),
(908, 'icon-seven-segment-2', NULL, NULL),
(909, 'icon-seven-segment-3', NULL, NULL),
(910, 'icon-seven-segment-4', NULL, NULL),
(911, 'icon-seven-segment-5', NULL, NULL),
(912, 'icon-seven-segment-6', NULL, NULL),
(913, 'icon-seven-segment-7', NULL, NULL),
(914, 'icon-seven-segment-8', NULL, NULL),
(915, 'icon-seven-segment-9', NULL, NULL),
(916, 'icon-share3', NULL, NULL),
(917, 'icon-share4', NULL, NULL),
(918, 'icon-google', NULL, NULL),
(919, 'icon-google-plus', NULL, NULL),
(920, 'icon-google-plus2', NULL, NULL),
(921, 'icon-google-drive', NULL, NULL),
(922, 'icon-facebook', NULL, NULL),
(923, 'icon-facebook2', NULL, NULL),
(924, 'icon-instagram', NULL, NULL),
(925, 'icon-twitter', NULL, NULL),
(926, 'icon-twitter2', NULL, NULL),
(927, 'icon-feed2', NULL, NULL),
(928, 'icon-feed3', NULL, NULL),
(929, 'icon-youtube', NULL, NULL),
(930, 'icon-youtube2', NULL, NULL),
(931, 'icon-youtube3', NULL, NULL),
(932, 'icon-vimeo', NULL, NULL),
(933, 'icon-vimeo2', NULL, NULL),
(934, 'icon-lanyrd', NULL, NULL),
(935, 'icon-flickr', NULL, NULL),
(936, 'icon-flickr2', NULL, NULL),
(937, 'icon-flickr3', NULL, NULL),
(938, 'icon-picassa', NULL, NULL),
(939, 'icon-picassa2', NULL, NULL),
(940, 'icon-dribbble', NULL, NULL),
(941, 'icon-dribbble2', NULL, NULL),
(942, 'icon-dribbble3', NULL, NULL),
(943, 'icon-forrst', NULL, NULL),
(944, 'icon-forrst2', NULL, NULL),
(945, 'icon-deviantart', NULL, NULL),
(946, 'icon-deviantart2', NULL, NULL),
(947, 'icon-steam', NULL, NULL),
(948, 'icon-steam2', NULL, NULL),
(949, 'icon-dropbox', NULL, NULL),
(950, 'icon-onedrive', NULL, NULL),
(951, 'icon-github', NULL, NULL),
(952, 'icon-github4', NULL, NULL),
(953, 'icon-github5', NULL, NULL),
(954, 'icon-wordpress', NULL, NULL),
(955, 'icon-wordpress2', NULL, NULL),
(956, 'icon-joomla', NULL, NULL),
(957, 'icon-blogger', NULL, NULL),
(958, 'icon-blogger2', NULL, NULL),
(959, 'icon-tumblr', NULL, NULL),
(960, 'icon-tumblr2', NULL, NULL),
(961, 'icon-yahoo', NULL, NULL),
(962, 'icon-tux', NULL, NULL),
(963, 'icon-apple2', NULL, NULL),
(964, 'icon-finder', NULL, NULL),
(965, 'icon-android', NULL, NULL),
(966, 'icon-windows', NULL, NULL),
(967, 'icon-windows8', NULL, NULL),
(968, 'icon-soundcloud', NULL, NULL),
(969, 'icon-soundcloud2', NULL, NULL),
(970, 'icon-skype', NULL, NULL),
(971, 'icon-reddit', NULL, NULL),
(972, 'icon-linkedin', NULL, NULL),
(973, 'icon-linkedin2', NULL, NULL),
(974, 'icon-lastfm', NULL, NULL),
(975, 'icon-lastfm2', NULL, NULL),
(976, 'icon-delicious', NULL, NULL),
(977, 'icon-stumbleupon', NULL, NULL),
(978, 'icon-stumbleupon2', NULL, NULL),
(979, 'icon-stackoverflow', NULL, NULL),
(980, 'icon-pinterest2', NULL, NULL),
(981, 'icon-xing', NULL, NULL),
(982, 'icon-flattr', NULL, NULL),
(983, 'icon-foursquare', NULL, NULL),
(984, 'icon-paypal', NULL, NULL),
(985, 'icon-paypal2', NULL, NULL),
(986, 'icon-yelp', NULL, NULL),
(987, 'icon-file-pdf', NULL, NULL),
(988, 'icon-file-openoffice', NULL, NULL),
(989, 'icon-file-word', NULL, NULL),
(990, 'icon-file-excel', NULL, NULL),
(991, 'icon-libreoffice', NULL, NULL),
(992, 'icon-html5', NULL, NULL),
(993, 'icon-html52', NULL, NULL),
(994, 'icon-css3', NULL, NULL),
(995, 'icon-git', NULL, NULL),
(996, 'icon-svg', NULL, NULL),
(997, 'icon-codepen', NULL, NULL),
(998, 'icon-chrome', NULL, NULL),
(999, 'icon-firefox', NULL, NULL),
(1000, 'icon-IE', NULL, NULL),
(1001, 'icon-opera', NULL, NULL),
(1002, 'icon-safari', NULL, NULL),
(1003, 'icon-check2', NULL, NULL),
(1004, 'icon-home4', NULL, NULL),
(1005, 'icon-people', NULL, NULL),
(1006, 'icon-checkmark-circle2', NULL, NULL),
(1007, 'icon-arrow-up-left32', NULL, NULL),
(1008, 'icon-arrow-up52', NULL, NULL),
(1009, 'icon-arrow-up-right32', NULL, NULL),
(1010, 'icon-arrow-right6', NULL, NULL),
(1011, 'icon-arrow-down-right32', NULL, NULL),
(1012, 'icon-arrow-down52', NULL, NULL),
(1013, 'icon-arrow-down-left32', NULL, NULL),
(1014, 'icon-arrow-left52', NULL, NULL),
(1015, 'icon-calendar5', NULL, NULL),
(1016, 'icon-move-alt1', NULL, NULL),
(1017, 'icon-reload-alt', NULL, NULL),
(1018, 'icon-move-vertical', NULL, NULL),
(1019, 'icon-move-horizontal', NULL, NULL),
(1020, 'icon-hash', NULL, NULL),
(1021, 'icon-bars-alt', NULL, NULL),
(1022, 'icon-eye8', NULL, NULL),
(1023, 'icon-search4', NULL, NULL),
(1024, 'icon-zoomin3', NULL, NULL),
(1025, 'icon-zoomout3', NULL, NULL),
(1026, 'icon-add', NULL, NULL),
(1027, 'icon-subtract', NULL, NULL),
(1028, 'icon-exclamation', NULL, NULL),
(1029, 'icon-question6', NULL, NULL),
(1030, 'icon-close2', NULL, NULL),
(1031, 'icon-task', NULL, NULL),
(1032, 'icon-inbox', NULL, NULL),
(1033, 'icon-inbox-alt', NULL, NULL),
(1034, 'icon-envelope', NULL, NULL),
(1035, 'icon-compose', NULL, NULL),
(1036, 'icon-newspaper2', NULL, NULL),
(1037, 'icon-calendar22', NULL, NULL),
(1038, 'icon-hyperlink', NULL, NULL),
(1039, 'icon-trash', NULL, NULL),
(1040, 'icon-trash-alt', NULL, NULL),
(1041, 'icon-grid5', NULL, NULL),
(1042, 'icon-grid-alt', NULL, NULL),
(1043, 'icon-menu6', NULL, NULL),
(1044, 'icon-list3', NULL, NULL),
(1045, 'icon-gallery', NULL, NULL),
(1046, 'icon-calculator', NULL, NULL),
(1047, 'icon-windows2', NULL, NULL),
(1048, 'icon-browser', NULL, NULL),
(1049, 'icon-portfolio', NULL, NULL),
(1050, 'icon-comments', NULL, NULL),
(1051, 'icon-screen3', NULL, NULL),
(1052, 'icon-iphone', NULL, NULL),
(1053, 'icon-ipad', NULL, NULL),
(1054, 'icon-googleplus5', NULL, NULL),
(1055, 'icon-pin', NULL, NULL),
(1056, 'icon-pin-alt', NULL, NULL),
(1057, 'icon-cog5', NULL, NULL),
(1058, 'icon-graduation', NULL, NULL),
(1059, 'icon-air', NULL, NULL),
(1060, 'icon-droplets', NULL, NULL),
(1061, 'icon-statistics', NULL, NULL),
(1062, 'icon-pie5', NULL, NULL),
(1063, 'icon-cross', NULL, NULL),
(1064, 'icon-minus2', NULL, NULL),
(1065, 'icon-plus2', NULL, NULL),
(1066, 'icon-info3', NULL, NULL),
(1067, 'icon-info22', NULL, NULL),
(1068, 'icon-question7', NULL, NULL),
(1069, 'icon-help', NULL, NULL),
(1070, 'icon-warning2', NULL, NULL),
(1071, 'icon-add-to-list', NULL, NULL),
(1072, 'icon-arrow-left12', NULL, NULL),
(1073, 'icon-arrow-down12', NULL, NULL),
(1074, 'icon-arrow-up12', NULL, NULL),
(1075, 'icon-arrow-right13', NULL, NULL),
(1076, 'icon-arrow-left22', NULL, NULL),
(1077, 'icon-arrow-down22', NULL, NULL),
(1078, 'icon-arrow-up22', NULL, NULL),
(1079, 'icon-arrow-right22', NULL, NULL),
(1080, 'icon-arrow-left32', NULL, NULL),
(1081, 'icon-arrow-down32', NULL, NULL),
(1082, 'icon-arrow-up32', NULL, NULL),
(1083, 'icon-arrow-right32', NULL, NULL),
(1084, 'icon-switch2', NULL, NULL),
(1085, 'icon-checkmark5', NULL, NULL),
(1086, 'icon-ampersand', NULL, NULL),
(1087, 'icon-alert', NULL, NULL),
(1088, 'icon-alignment-align', NULL, NULL),
(1089, 'icon-alignment-aligned-to', NULL, NULL),
(1090, 'icon-alignment-unalign', NULL, NULL),
(1091, 'icon-arrow-down132', NULL, NULL),
(1092, 'icon-arrow-up13', NULL, NULL),
(1093, 'icon-arrow-left13', NULL, NULL),
(1094, 'icon-arrow-right14', NULL, NULL),
(1095, 'icon-arrow-small-down', NULL, NULL),
(1096, 'icon-arrow-small-left', NULL, NULL),
(1097, 'icon-arrow-small-right', NULL, NULL),
(1098, 'icon-arrow-small-up', NULL, NULL),
(1099, 'icon-check', NULL, NULL),
(1100, 'icon-chevron-down', NULL, NULL),
(1101, 'icon-chevron-left', NULL, NULL),
(1102, 'icon-chevron-right', NULL, NULL),
(1103, 'icon-chevron-up', NULL, NULL),
(1104, 'icon-clippy', NULL, NULL),
(1105, 'icon-comment', NULL, NULL),
(1106, 'icon-comment-discussion', NULL, NULL),
(1107, 'icon-dash', NULL, NULL),
(1108, 'icon-diff', NULL, NULL),
(1109, 'icon-diff-added', NULL, NULL),
(1110, 'icon-diff-ignored', NULL, NULL),
(1111, 'icon-diff-modified', NULL, NULL),
(1112, 'icon-diff-removed', NULL, NULL),
(1113, 'icon-diff-renamed', NULL, NULL),
(1114, 'icon-file-media', NULL, NULL),
(1115, 'icon-fold', NULL, NULL),
(1116, 'icon-gear', NULL, NULL),
(1117, 'icon-git-branch', NULL, NULL),
(1118, 'icon-git-commit', NULL, NULL),
(1119, 'icon-git-compare', NULL, NULL),
(1120, 'icon-git-merge', NULL, NULL),
(1121, 'icon-git-pull-request', NULL, NULL),
(1122, 'icon-graph', NULL, NULL),
(1123, 'icon-law', NULL, NULL),
(1124, 'icon-list-ordered', NULL, NULL),
(1125, 'icon-list-unordered', NULL, NULL),
(1126, 'icon-mail5', NULL, NULL),
(1127, 'icon-mail-read', NULL, NULL),
(1128, 'icon-mention', NULL, NULL),
(1129, 'icon-mirror', NULL, NULL),
(1130, 'icon-move-down', NULL, NULL),
(1131, 'icon-move-left', NULL, NULL),
(1132, 'icon-move-right', NULL, NULL),
(1133, 'icon-move-up', NULL, NULL),
(1134, 'icon-person', NULL, NULL),
(1135, 'icon-plus22', NULL, NULL),
(1136, 'icon-primitive-dot', NULL, NULL),
(1137, 'icon-primitive-square', NULL, NULL),
(1138, 'icon-repo-forked', NULL, NULL),
(1139, 'icon-screen-full', NULL, NULL),
(1140, 'icon-screen-normal', NULL, NULL),
(1141, 'icon-sync', NULL, NULL),
(1142, 'icon-three-bars', NULL, NULL),
(1143, 'icon-unfold', NULL, NULL),
(1144, 'icon-versions', NULL, NULL),
(1145, 'icon-x', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_jabatan` varchar(255) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nm_jabatan`, `gaji_pokok`, `created_at`, `updated_at`) VALUES
(1, 'Chief Executive Officer', 20000000, NULL, NULL),
(2, 'Head of Business Development', 10000000, NULL, NULL),
(3, 'Chief Technology Officer', 10000000, NULL, NULL),
(4, 'Head of Finance', 10000000, NULL, NULL),
(5, 'Finance Staff', 9000000, NULL, NULL),
(6, 'FE Manager', 7000000, NULL, NULL),
(7, 'BE Manager', 7000000, NULL, NULL),
(8, 'Mobile Manager', 7000000, NULL, NULL),
(9, 'DevOps Manager', 7000000, NULL, NULL),
(10, 'Elite Engineer ', 7000000, NULL, NULL),
(11, 'Engineer Staff ', 7000000, NULL, NULL),
(12, 'R & D Director', 5000000, NULL, NULL),
(13, 'Engineer Platform', 9000000, NULL, NULL),
(14, 'Training Director', 9000000, NULL, NULL),
(15, 'Training Manager', 9000000, NULL, NULL),
(16, 'Training Staff', 9000000, NULL, NULL),
(17, 'PM', 9000000, NULL, NULL),
(18, 'QA Coord.', 9000000, NULL, NULL),
(19, 'QA Staff', 9000000, NULL, NULL),
(20, 'Marketing & Admin Coord.', 9000000, NULL, NULL),
(21, 'Admin Staff', 9000000, NULL, NULL),
(22, 'Content Coord.', 9000000, NULL, NULL),
(23, 'Content Staff', 9000000, NULL, NULL),
(24, 'HRD Coord.', 9000000, NULL, NULL),
(25, 'HR Staff', 9000000, NULL, NULL),
(26, 'Operasional', 9000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_parent` bigint(20) UNSIGNED DEFAULT NULL,
  `judul` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `id_hak_akses` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `id_parent`, `judul`, `url`, `icon`, `id_hak_akses`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard Admin', 'superAdmin', 'icon-rocket', 1, 0, NULL, NULL),
(2, NULL, 'Dashboard HRD', 'hrd', 'icon-rocket', 2, 1, NULL, NULL),
(3, NULL, 'Menu Staff', NULL, 'icon-user', 3, 2, NULL, NULL),
(4, 3, 'Dashboard Staff', 'staff', NULL, 3, 3, NULL, NULL),
(5, 3, 'Riwayat Pengajuan Cuti', 'staffCuti', NULL, 3, 4, NULL, NULL),
(6, 3, 'Buat Pengajuan Cuti', 'staffCuti/create', NULL, 3, 5, NULL, NULL),
(7, 3, 'Pengajuan Cuti (Tahap Atasan)', 'staffPengajuanCuti', NULL, 3, 6, NULL, NULL),
(8, NULL, 'Manajemen Role & Menu', 'manajemen', 'icon-key', 4, 7, NULL, NULL),
(9, NULL, 'Manajemen Perusahaan', 'perusahaan', ' icon-highlight', 14, 8, NULL, NULL),
(10, NULL, 'Kebijakan Cuti & Jam Kantor', 'peraturan', 'icon-info3', 5, 9, NULL, NULL),
(11, NULL, 'Data Pegawai', 'pegawai', 'icon-users4', 6, 10, NULL, NULL),
(12, NULL, 'Data Jabatan', NULL, 'icon-user-tie', 7, 11, NULL, NULL),
(13, 12, 'List Data Jabatan', 'jabatan', NULL, 7, 12, NULL, NULL),
(14, 12, 'Data Riwayat Jabatan', 'riwayatJabatan', NULL, 7, 13, NULL, NULL),
(15, NULL, 'Data Divisi', NULL, 'icon-hat', 8, 14, NULL, NULL),
(16, 15, 'List Data Divisi', 'divisi', NULL, 8, 15, NULL, NULL),
(17, 15, 'Data Riwayat Divisi', 'riwayatDivisi', NULL, 8, 16, NULL, NULL),
(18, NULL, 'Data Presensi', NULL, 'icon-notebook', 9, 17, NULL, NULL),
(19, 18, 'List Data Presensi', 'presensi', NULL, 9, 18, NULL, NULL),
(20, 18, 'Rekapan Data Presensi Pegawai', 'rekapPresensi', NULL, 9, 19, NULL, NULL),
(21, NULL, 'Data Cuti', NULL, 'icon-furniture', 10, 20, NULL, NULL),
(22, 21, 'List Data Cuti', 'cuti', NULL, 10, 21, NULL, NULL),
(23, 21, 'Atur Tanggal Cuti Bersama', 'cuti/cutiBersama', NULL, 10, 22, NULL, NULL),
(24, 21, 'Pengajuan Cuti (Tahap HRD)', 'hrdPengajuanCuti', NULL, 10, 23, NULL, NULL),
(25, 21, 'Rekapan Data Cuti Pegawai', 'rekapCuti', NULL, 10, 24, NULL, NULL),
(26, NULL, 'Data Gaji', NULL, 'icon-cash3', 11, 25, NULL, NULL),
(27, 26, 'Data Tunjangan', 'tunjangan', NULL, 11, 26, NULL, NULL),
(28, 26, 'Data Potongan', 'potongan', NULL, 11, 27, NULL, NULL),
(29, 26, 'Data Slip Gaji ', 'gaji', NULL, 11, 28, NULL, NULL),
(30, NULL, 'Surat Peringatan', 'suratPeringatan', ' icon-file-text2', 12, 29, NULL, NULL),
(31, NULL, 'Export Kinerja Pegawai', 'report', 'icon-magazine', 13, 30, NULL, NULL),
(32, 3, 'Penilaian Karyawan', 'penilaian', NULL, 3, 31, NULL, NULL),
(33, NULL, 'Dashboard Admin', 'superAdmin', 'icon-rocket', 1, 0, NULL, NULL),
(34, NULL, 'Dashboard HRD', 'hrd', 'icon-rocket', 2, 1, NULL, NULL),
(35, NULL, 'Menu Staff', NULL, 'icon-user', 3, 2, NULL, NULL),
(36, 3, 'Dashboard Staff', 'staff', NULL, 3, 3, NULL, NULL),
(37, 3, 'Riwayat Pengajuan Cuti', 'staffCuti', NULL, 3, 4, NULL, NULL),
(38, 3, 'Buat Pengajuan Cuti', 'staffCuti/create', NULL, 3, 5, NULL, NULL),
(39, 3, 'Pengajuan Cuti (Tahap Atasan)', 'staffPengajuanCuti', NULL, 3, 6, NULL, NULL),
(40, 3, 'Penilaian Karyawan', 'penilaian', NULL, 3, 7, NULL, NULL),
(41, NULL, 'Data Master', NULL, 'icon-gear', 4, 8, NULL, NULL),
(42, 9, 'Data Role & Menu', 'manajemen', NULL, 4, 9, NULL, NULL),
(43, 9, 'Data Informasi Perusahaan', 'perusahaan', NULL, 4, 10, NULL, NULL),
(44, 9, 'Data Peraturan Kantor', 'peraturan', NULL, 4, 11, NULL, NULL),
(45, 9, 'Data Jabatan', 'jabatan', NULL, 4, 12, NULL, NULL),
(46, 9, 'Data Divisi', 'divisi', NULL, 4, 13, NULL, NULL),
(47, 9, 'Data Pegawai', 'pegawai', NULL, 4, 14, NULL, NULL),
(48, 9, 'Data Tunjangan', 'tunjangan', NULL, 4, 15, NULL, NULL),
(49, 9, 'Data Potongan', 'potongan', NULL, 4, 16, NULL, NULL),
(50, NULL, 'Data Presensi', NULL, 'icon-notebook', 5, 17, NULL, NULL),
(51, 18, 'List Data Presensi', 'presensi', NULL, 5, 18, NULL, NULL),
(52, 18, 'Rekapan Data Presensi ', 'rekapPresensi', NULL, 5, 19, NULL, NULL),
(53, NULL, 'Data Cuti', NULL, 'icon-furniture', 6, 20, NULL, NULL),
(54, 21, 'List Data Cuti', 'cuti', NULL, 6, 21, NULL, NULL),
(55, 21, 'Atur Tanggal Cuti Bersama', 'cuti/cutiBersama', NULL, 6, 22, NULL, NULL),
(56, 21, 'Pengajuan Cuti (Tahap HRD)', 'hrdPengajuanCuti', NULL, 6, 23, NULL, NULL),
(57, 21, 'Rekapan Data Cuti Pegawai', 'rekapCuti', NULL, 6, 24, NULL, NULL),
(58, NULL, 'Data Gaji', 'gaji', 'icon-cash3', 7, 25, NULL, NULL),
(59, NULL, 'Surat Peringatan', 'suratPeringatan', ' icon-file-text2', 8, 26, NULL, NULL),
(60, NULL, 'Export Kinerja Pegawai', 'report', 'icon-magazine', 9, 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_09_133758_create_permission_tables', 1),
(5, '2021_02_27_143833_create_jabatans_table', 1),
(6, '2021_02_27_144019_create_divisis_table', 1),
(7, '2021_02_27_181740_create_pegawais_table', 1),
(8, '2021_02_28_021611_create_cutis_table', 1),
(9, '2021_02_28_021828_create_presensi_harians_table', 1),
(10, '2021_02_28_022252_create_riwayat_jabatans_table', 1),
(11, '2021_02_28_022637_create_riwayat_divisis_table', 1),
(12, '2021_03_15_232901_create_peraturans_table', 1),
(13, '2021_05_11_100655_create_menus_table', 1),
(14, '2021_05_17_115302_create_tunjangans_table', 1),
(15, '2021_05_17_115713_create_potongans_table', 1),
(16, '2021_05_18_070004_create_gajis_table', 1),
(17, '2021_05_25_055722_create_surat_peringatans_table', 1),
(18, '2021_05_29_094121_create_pegawai_potongans_table', 1),
(19, '2021_05_29_095550_create_pegawai_tunjangans_table', 1),
(20, '2021_06_03_050657_create_icons_table', 1),
(21, '2021_06_15_063430_create_perusahaans_table', 1),
(22, '2021_07_15_063302_create_penilaian_pegawais_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Pegawai', 23010001),
(2, 'App\\Models\\Pegawai', 23010002),
(3, 'App\\Models\\Pegawai', 23010003);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_role` bigint(20) UNSIGNED DEFAULT NULL,
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `agama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_ktp` varchar(255) NOT NULL,
  `alamat_dom` varchar(255) NOT NULL,
  `status` enum('Menikah','Lajang') NOT NULL,
  `jml_anak` int(11) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_atasan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_jabatan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_divisi` bigint(20) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `id_role`, `nik`, `nama`, `jk`, `agama`, `tempat_lahir`, `tgl_lahir`, `alamat_ktp`, `alamat_dom`, `status`, `jml_anak`, `no_hp`, `email`, `password`, `tgl_masuk`, `id_atasan`, `id_jabatan`, `id_divisi`, `path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23010001, 1, '3322076102202788', 'Arfiyan', 'Pria', 'Islam', 'Binjai', '1990-08-31', 'Dk. Pasteur No. 270', 'Ds. Moch. Yamin No. 552', 'Menikah', 1, '0633 9645 1674', 'admin@gmail.com', '$2y$10$CFKhY6K6twJVIJaYG9XDTu5BU8fphV9fHYviV6NhGaM33OA7OJgiO', '2006-02-06', NULL, 1, 2, 'foto.jpg', NULL, '2023-01-30 20:10:10', '2023-01-30 20:10:10', NULL),
(23010002, 2, '6311342307160413', 'Rahayu Hassanah', 'Pria', 'Islam', 'Bekasi', '2012-01-27', 'Psr. Rajawali No. 964', 'Ki. Ters. Kiaracondong No. 292', 'Menikah', 0, '(+62) 629 9787 452', 'hrd@gmail.com', '$2y$10$CFKhY6K6twJVIJaYG9XDTu5BU8fphV9fHYviV6NhGaM33OA7OJgiO', '2000-12-15', NULL, 8, 3, 'foto.jpg', NULL, '2023-01-30 20:10:10', '2023-01-30 20:10:10', NULL),
(23010003, 3, '1409040504027752', 'Patricia Hassanah S.Ked', 'Pria', 'Islam', 'Mataram', '1984-06-22', 'Kpg. Batako No. 877', 'Dk. Lumban Tobing No. 370', 'Menikah', 0, '(+62) 216 4127 9020', 'staff@gmail.com', '$2y$10$CFKhY6K6twJVIJaYG9XDTu5BU8fphV9fHYviV6NhGaM33OA7OJgiO', '1996-02-18', NULL, 6, 2, 'foto.jpg', NULL, '2023-01-30 20:10:10', '2023-01-30 20:10:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_potongan`
--

CREATE TABLE `pegawai_potongan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `potongan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_tunjangan`
--

CREATE TABLE `pegawai_tunjangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `tunjangan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_pegawai`
--

CREATE TABLE `penilaian_pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `responsible` int(11) NOT NULL,
  `initiate` int(11) NOT NULL,
  `teamwork` int(11) NOT NULL,
  `discipline` int(11) NOT NULL,
  `work_performance` int(11) NOT NULL,
  `final_value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penilaian_pegawai`
--

INSERT INTO `penilaian_pegawai` (`id`, `id_pegawai`, `tanggal`, `responsible`, `initiate`, `teamwork`, `discipline`, `work_performance`, `final_value`, `created_at`, `updated_at`) VALUES
(1, 23010001, '2023-01-31', 82, 90, 55, 80, 73, 86, NULL, NULL),
(2, 23010002, '2023-01-31', 84, 59, 82, 71, 82, 94, NULL, NULL),
(3, 23010003, '2023-01-31', 63, 84, 57, 98, 66, 56, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peraturan`
--

CREATE TABLE `peraturan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_plg` time DEFAULT NULL,
  `jml_cuti_tahunan` int(10) UNSIGNED DEFAULT 12,
  `jml_cuti_besar` int(10) UNSIGNED DEFAULT 12,
  `jml_cuti_bersama` int(10) UNSIGNED DEFAULT 12,
  `jml_cuti_hamil` int(10) UNSIGNED DEFAULT 12,
  `jml_cuti_sakit` int(10) UNSIGNED DEFAULT 12,
  `jml_cuti_penting` int(10) UNSIGNED DEFAULT 12,
  `syarat_bulan_cuti_tahunan` int(10) UNSIGNED DEFAULT 0,
  `syarat_bulan_cuti_besar` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peraturan`
--

INSERT INTO `peraturan` (`id`, `jam_masuk`, `jam_plg`, `jml_cuti_tahunan`, `jml_cuti_besar`, `jml_cuti_bersama`, `jml_cuti_hamil`, `jml_cuti_sakit`, `jml_cuti_penting`, `syarat_bulan_cuti_tahunan`, `syarat_bulan_cuti_besar`, `created_at`, `updated_at`) VALUES
(1, '08:30:00', '16:30:00', 12, 30, 12, 45, 99, 15, 12, 60, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard-admin', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(2, 'dashboard-hrd', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(3, 'menu-staff', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(4, 'manajemen-role', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(5, 'menu-kebijakan-kantor', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(6, 'menu-pegawai', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(7, 'menu-jabatan', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(8, 'menu-divisi', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(9, 'menu-presensi', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(10, 'menu-cuti', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(11, 'menu-gaji', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(12, 'menu-surat-peringatan', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(13, 'menu-export-kinerja', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(14, 'manajemen-perusahaan', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `no_telp` varchar(100) DEFAULT NULL,
  `email_public` varchar(255) NOT NULL,
  `path_logo` varchar(100) DEFAULT NULL,
  `email_private` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `nama`, `alamat`, `kota`, `no_telp`, `email_public`, `path_logo`, `email_private`, `password`, `created_at`, `updated_at`) VALUES
(1, 'PT SOFTWARE INTEGRASI', 'Kota Malang', 'Kota Malang', '08885082933', 'arfieyan1903@gmail.com', 'logo_3101230639.png', 'arfieyan1903@gmail.com', '$2y$10$OD0BmX8HW6d.Pm9g6a/yguT/n41ag5tIhepEUWhCNWPcUoC64AQ1O', '2023-01-30 23:39:28', '2023-01-30 23:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `potongan`
--

CREATE TABLE `potongan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_shown` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `potongan`
--

INSERT INTO `potongan` (`id`, `nama`, `jumlah`, `is_active`, `is_shown`, `created_at`, `updated_at`) VALUES
(1, 'Potongan Keterlambatan (per Hari)', 50000, 1, 0, NULL, NULL),
(2, 'Potongan Membolos Kerja (per Hari)', 150000, 1, 0, NULL, NULL),
(3, 'Potongan BPJS Kesehatan', 0, 1, 0, NULL, NULL),
(4, 'Potongan BPJS Ketenagakerjaan', 0, 1, 0, NULL, NULL),
(5, 'Potongan PPH 21', 0, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `presensi_harian`
--

CREATE TABLE `presensi_harian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `ket` enum('Hadir','Cuti','Alpha') NOT NULL,
  `jam_dtg` time DEFAULT NULL,
  `jam_plg` time DEFAULT NULL,
  `is_wfh` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `presensi_harian`
--

INSERT INTO `presensi_harian` (`id`, `id_pegawai`, `tanggal`, `ket`, `jam_dtg`, `jam_plg`, `is_wfh`, `created_at`, `updated_at`) VALUES
(1, 23010001, '2023-01-01', 'Hadir', '08:07:00', '16:44:00', 0, NULL, NULL),
(2, 23010001, '2023-01-02', 'Alpha', '08:44:00', '16:55:00', 0, NULL, NULL),
(3, 23010001, '2023-01-03', 'Alpha', '08:46:00', '16:50:00', 0, NULL, NULL),
(4, 23010001, '2023-01-04', 'Cuti', '08:42:00', '16:37:00', 0, NULL, NULL),
(5, 23010001, '2023-01-05', 'Alpha', '08:34:00', '16:16:00', 0, NULL, NULL),
(6, 23010001, '2023-01-06', 'Hadir', '08:17:00', '16:28:00', 0, NULL, NULL),
(7, 23010001, '2023-01-07', 'Cuti', '08:38:00', '16:33:00', 0, NULL, NULL),
(8, 23010001, '2023-01-08', 'Hadir', '08:39:00', '16:11:00', 0, NULL, NULL),
(9, 23010001, '2023-01-09', 'Alpha', '08:39:00', '16:50:00', 0, NULL, NULL),
(10, 23010001, '2023-01-10', 'Alpha', '08:59:00', '16:52:00', 0, NULL, NULL),
(11, 23010001, '2023-01-11', 'Cuti', '08:40:00', '16:46:00', 0, NULL, NULL),
(12, 23010001, '2023-01-12', 'Alpha', '08:15:00', '16:04:00', 0, NULL, NULL),
(13, 23010001, '2023-01-13', 'Hadir', '08:07:00', '16:31:00', 0, NULL, NULL),
(14, 23010001, '2023-01-14', 'Hadir', '08:11:00', '16:43:00', 0, NULL, NULL),
(15, 23010001, '2023-01-15', 'Alpha', '08:00:00', '16:46:00', 0, NULL, NULL),
(16, 23010001, '2023-01-16', 'Alpha', '08:40:00', '16:31:00', 0, NULL, NULL),
(17, 23010001, '2023-01-17', 'Alpha', '08:02:00', '16:16:00', 0, NULL, NULL),
(18, 23010001, '2023-01-18', 'Cuti', '08:08:00', '16:59:00', 0, NULL, NULL),
(19, 23010001, '2023-01-19', 'Cuti', '08:31:00', '16:47:00', 0, NULL, NULL),
(20, 23010001, '2023-01-20', 'Hadir', '08:26:00', '16:29:00', 0, NULL, NULL),
(21, 23010001, '2023-01-21', 'Hadir', '08:20:00', '16:41:00', 0, NULL, NULL),
(22, 23010001, '2023-01-22', 'Alpha', '08:32:00', '16:20:00', 0, NULL, NULL),
(23, 23010001, '2023-02-01', 'Hadir', '08:53:00', '16:56:00', 0, NULL, NULL),
(24, 23010001, '2023-02-02', 'Alpha', '08:44:00', '16:52:00', 0, NULL, NULL),
(25, 23010001, '2023-02-03', 'Alpha', '08:18:00', '16:10:00', 0, NULL, NULL),
(26, 23010001, '2023-02-04', 'Cuti', '08:45:00', '16:25:00', 0, NULL, NULL),
(27, 23010001, '2023-02-05', 'Cuti', '08:29:00', '16:07:00', 0, NULL, NULL),
(28, 23010001, '2023-02-06', 'Hadir', '08:13:00', '16:23:00', 0, NULL, NULL),
(29, 23010001, '2023-02-07', 'Hadir', '08:45:00', '16:56:00', 0, NULL, NULL),
(30, 23010001, '2023-02-08', 'Hadir', '08:18:00', '16:07:00', 0, NULL, NULL),
(31, 23010001, '2023-02-09', 'Cuti', '08:32:00', '16:57:00', 0, NULL, NULL),
(32, 23010001, '2023-02-10', 'Alpha', '08:16:00', '16:17:00', 0, NULL, NULL),
(33, 23010001, '2023-02-11', 'Alpha', '08:51:00', '16:24:00', 0, NULL, NULL),
(34, 23010001, '2023-02-12', 'Hadir', '08:36:00', '16:24:00', 0, NULL, NULL),
(35, 23010001, '2023-02-13', 'Alpha', '08:24:00', '16:01:00', 0, NULL, NULL),
(36, 23010001, '2023-02-14', 'Cuti', '08:58:00', '16:59:00', 0, NULL, NULL),
(37, 23010001, '2023-02-15', 'Alpha', '08:57:00', '16:45:00', 0, NULL, NULL),
(38, 23010001, '2023-02-16', 'Cuti', '08:34:00', '16:52:00', 0, NULL, NULL),
(39, 23010001, '2023-02-17', 'Alpha', '08:56:00', '16:34:00', 0, NULL, NULL),
(40, 23010001, '2023-02-18', 'Hadir', '08:43:00', '16:09:00', 0, NULL, NULL),
(41, 23010001, '2023-02-19', 'Alpha', '08:47:00', '16:21:00', 0, NULL, NULL),
(42, 23010001, '2023-02-20', 'Cuti', '08:02:00', '16:37:00', 0, NULL, NULL),
(43, 23010001, '2023-02-21', 'Cuti', '08:43:00', '16:07:00', 0, NULL, NULL),
(44, 23010001, '2023-02-22', 'Hadir', '08:03:00', '16:44:00', 0, NULL, NULL),
(45, 23010001, '2023-03-01', 'Cuti', '08:27:00', '16:03:00', 0, NULL, NULL),
(46, 23010001, '2023-03-02', 'Hadir', '08:38:00', '16:58:00', 0, NULL, NULL),
(47, 23010001, '2023-03-03', 'Hadir', '08:07:00', '16:06:00', 0, NULL, NULL),
(48, 23010001, '2023-03-04', 'Alpha', '08:46:00', '16:03:00', 0, NULL, NULL),
(49, 23010001, '2023-03-05', 'Hadir', '08:16:00', '16:21:00', 0, NULL, NULL),
(50, 23010001, '2023-03-06', 'Cuti', '08:00:00', '16:37:00', 0, NULL, NULL),
(51, 23010001, '2023-03-07', 'Hadir', '08:40:00', '16:10:00', 0, NULL, NULL),
(52, 23010001, '2023-03-08', 'Alpha', '08:56:00', '16:43:00', 0, NULL, NULL),
(53, 23010001, '2023-03-09', 'Hadir', '08:02:00', '16:05:00', 0, NULL, NULL),
(54, 23010001, '2023-03-10', 'Hadir', '08:29:00', '16:06:00', 0, NULL, NULL),
(55, 23010001, '2023-03-11', 'Hadir', '08:05:00', '16:09:00', 0, NULL, NULL),
(56, 23010001, '2023-03-12', 'Cuti', '08:45:00', '16:56:00', 0, NULL, NULL),
(57, 23010001, '2023-03-13', 'Hadir', '08:25:00', '16:25:00', 0, NULL, NULL),
(58, 23010001, '2023-03-14', 'Alpha', '08:53:00', '16:34:00', 0, NULL, NULL),
(59, 23010001, '2023-03-15', 'Cuti', '08:01:00', '16:02:00', 0, NULL, NULL),
(60, 23010001, '2023-03-16', 'Alpha', '08:45:00', '16:35:00', 0, NULL, NULL),
(61, 23010001, '2023-03-17', 'Cuti', '08:55:00', '16:11:00', 0, NULL, NULL),
(62, 23010001, '2023-03-18', 'Cuti', '08:27:00', '16:31:00', 0, NULL, NULL),
(63, 23010001, '2023-03-19', 'Hadir', '08:29:00', '16:42:00', 0, NULL, NULL),
(64, 23010001, '2023-03-20', 'Alpha', '08:54:00', '16:10:00', 0, NULL, NULL),
(65, 23010001, '2023-03-21', 'Alpha', '08:33:00', '16:21:00', 0, NULL, NULL),
(66, 23010001, '2023-03-22', 'Hadir', '08:41:00', '16:30:00', 0, NULL, NULL),
(67, 23010001, '2023-04-01', 'Alpha', '08:42:00', '16:14:00', 0, NULL, NULL),
(68, 23010001, '2023-04-02', 'Cuti', '08:08:00', '16:59:00', 0, NULL, NULL),
(69, 23010001, '2023-04-03', 'Hadir', '08:29:00', '16:18:00', 0, NULL, NULL),
(70, 23010001, '2023-04-04', 'Cuti', '08:25:00', '16:15:00', 0, NULL, NULL),
(71, 23010001, '2023-04-05', 'Hadir', '08:44:00', '16:52:00', 0, NULL, NULL),
(72, 23010001, '2023-04-06', 'Cuti', '08:14:00', '16:11:00', 0, NULL, NULL),
(73, 23010001, '2023-04-07', 'Hadir', '08:53:00', '16:34:00', 0, NULL, NULL),
(74, 23010001, '2023-04-08', 'Cuti', '08:45:00', '16:52:00', 0, NULL, NULL),
(75, 23010001, '2023-04-09', 'Cuti', '08:30:00', '16:43:00', 0, NULL, NULL),
(76, 23010001, '2023-04-10', 'Alpha', '08:54:00', '16:11:00', 0, NULL, NULL),
(77, 23010001, '2023-04-11', 'Cuti', '08:18:00', '16:37:00', 0, NULL, NULL),
(78, 23010001, '2023-04-12', 'Alpha', '08:28:00', '16:22:00', 0, NULL, NULL),
(79, 23010001, '2023-04-13', 'Cuti', '08:46:00', '16:24:00', 0, NULL, NULL),
(80, 23010001, '2023-04-14', 'Alpha', '08:17:00', '16:37:00', 0, NULL, NULL),
(81, 23010001, '2023-04-15', 'Hadir', '08:43:00', '16:20:00', 0, NULL, NULL),
(82, 23010001, '2023-04-16', 'Cuti', '08:27:00', '16:17:00', 0, NULL, NULL),
(83, 23010001, '2023-04-17', 'Cuti', '08:24:00', '16:13:00', 0, NULL, NULL),
(84, 23010001, '2023-04-18', 'Hadir', '08:19:00', '16:38:00', 0, NULL, NULL),
(85, 23010001, '2023-04-19', 'Hadir', '08:33:00', '16:10:00', 0, NULL, NULL),
(86, 23010001, '2023-04-20', 'Hadir', '08:17:00', '16:10:00', 0, NULL, NULL),
(87, 23010001, '2023-04-21', 'Alpha', '08:52:00', '16:36:00', 0, NULL, NULL),
(88, 23010001, '2023-04-22', 'Alpha', '08:31:00', '16:24:00', 0, NULL, NULL),
(89, 23010001, '2023-05-01', 'Cuti', '08:39:00', '16:54:00', 0, NULL, NULL),
(90, 23010001, '2023-05-02', 'Cuti', '08:16:00', '16:57:00', 0, NULL, NULL),
(91, 23010001, '2023-05-03', 'Cuti', '08:37:00', '16:08:00', 0, NULL, NULL),
(92, 23010001, '2023-05-04', 'Alpha', '08:57:00', '16:16:00', 0, NULL, NULL),
(93, 23010001, '2023-05-05', 'Hadir', '08:50:00', '16:48:00', 0, NULL, NULL),
(94, 23010001, '2023-05-06', 'Alpha', '08:22:00', '16:08:00', 0, NULL, NULL),
(95, 23010001, '2023-05-07', 'Hadir', '08:30:00', '16:28:00', 0, NULL, NULL),
(96, 23010001, '2023-05-08', 'Hadir', '08:30:00', '16:39:00', 0, NULL, NULL),
(97, 23010001, '2023-05-09', 'Hadir', '08:08:00', '16:44:00', 0, NULL, NULL),
(98, 23010001, '2023-05-10', 'Hadir', '08:30:00', '16:36:00', 0, NULL, NULL),
(99, 23010001, '2023-05-11', 'Cuti', '08:35:00', '16:20:00', 0, NULL, NULL),
(100, 23010001, '2023-05-12', 'Hadir', '08:39:00', '16:35:00', 0, NULL, NULL),
(101, 23010001, '2023-05-13', 'Hadir', '08:32:00', '16:19:00', 0, NULL, NULL),
(102, 23010001, '2023-05-14', 'Alpha', '08:16:00', '16:32:00', 0, NULL, NULL),
(103, 23010001, '2023-05-15', 'Hadir', '08:34:00', '16:30:00', 0, NULL, NULL),
(104, 23010001, '2023-05-16', 'Hadir', '08:23:00', '16:11:00', 0, NULL, NULL),
(105, 23010001, '2023-05-17', 'Alpha', '08:32:00', '16:19:00', 0, NULL, NULL),
(106, 23010001, '2023-05-18', 'Hadir', '08:37:00', '16:10:00', 0, NULL, NULL),
(107, 23010001, '2023-05-19', 'Hadir', '08:52:00', '16:45:00', 0, NULL, NULL),
(108, 23010001, '2023-05-20', 'Cuti', '08:25:00', '16:55:00', 0, NULL, NULL),
(109, 23010001, '2023-05-21', 'Hadir', '08:31:00', '16:44:00', 0, NULL, NULL),
(110, 23010001, '2023-05-22', 'Cuti', '08:36:00', '16:00:00', 0, NULL, NULL),
(111, 23010001, '2023-06-01', 'Alpha', '08:22:00', '16:20:00', 0, NULL, NULL),
(112, 23010001, '2023-06-02', 'Cuti', '08:53:00', '16:06:00', 0, NULL, NULL),
(113, 23010001, '2023-06-03', 'Alpha', '08:20:00', '16:01:00', 0, NULL, NULL),
(114, 23010001, '2023-06-04', 'Cuti', '08:51:00', '16:32:00', 0, NULL, NULL),
(115, 23010001, '2023-06-05', 'Alpha', '08:25:00', '16:44:00', 0, NULL, NULL),
(116, 23010001, '2023-06-06', 'Alpha', '08:58:00', '16:31:00', 0, NULL, NULL),
(117, 23010001, '2023-06-07', 'Cuti', '08:41:00', '16:20:00', 0, NULL, NULL),
(118, 23010001, '2023-06-08', 'Cuti', '08:45:00', '16:54:00', 0, NULL, NULL),
(119, 23010001, '2023-06-09', 'Cuti', '08:17:00', '16:40:00', 0, NULL, NULL),
(120, 23010001, '2023-06-10', 'Alpha', '08:17:00', '16:05:00', 0, NULL, NULL),
(121, 23010001, '2023-06-11', 'Alpha', '08:41:00', '16:14:00', 0, NULL, NULL),
(122, 23010001, '2023-06-12', 'Hadir', '08:47:00', '16:42:00', 0, NULL, NULL),
(123, 23010001, '2023-06-13', 'Alpha', '08:41:00', '16:55:00', 0, NULL, NULL),
(124, 23010001, '2023-06-14', 'Cuti', '08:08:00', '16:35:00', 0, NULL, NULL),
(125, 23010001, '2023-06-15', 'Cuti', '08:39:00', '16:24:00', 0, NULL, NULL),
(126, 23010001, '2023-06-16', 'Alpha', '08:27:00', '16:27:00', 0, NULL, NULL),
(127, 23010001, '2023-06-17', 'Cuti', '08:11:00', '16:33:00', 0, NULL, NULL),
(128, 23010001, '2023-06-18', 'Hadir', '08:56:00', '16:42:00', 0, NULL, NULL),
(129, 23010001, '2023-06-19', 'Hadir', '08:57:00', '16:44:00', 0, NULL, NULL),
(130, 23010001, '2023-06-20', 'Cuti', '08:59:00', '16:32:00', 0, NULL, NULL),
(131, 23010001, '2023-06-21', 'Hadir', '08:41:00', '16:42:00', 0, NULL, NULL),
(132, 23010001, '2023-06-22', 'Alpha', '08:59:00', '16:42:00', 0, NULL, NULL),
(133, 23010001, '2023-07-01', 'Cuti', '08:08:00', '16:22:00', 0, NULL, NULL),
(134, 23010001, '2023-07-02', 'Alpha', '08:40:00', '16:29:00', 0, NULL, NULL),
(135, 23010001, '2023-07-03', 'Hadir', '08:13:00', '16:15:00', 0, NULL, NULL),
(136, 23010001, '2023-07-04', 'Cuti', '08:48:00', '16:19:00', 0, NULL, NULL),
(137, 23010001, '2023-07-05', 'Alpha', '08:44:00', '16:13:00', 0, NULL, NULL),
(138, 23010001, '2023-07-06', 'Cuti', '08:06:00', '16:03:00', 0, NULL, NULL),
(139, 23010001, '2023-07-07', 'Alpha', '08:58:00', '16:46:00', 0, NULL, NULL),
(140, 23010001, '2023-07-08', 'Hadir', '08:57:00', '16:37:00', 0, NULL, NULL),
(141, 23010001, '2023-07-09', 'Hadir', '08:14:00', '16:46:00', 0, NULL, NULL),
(142, 23010001, '2023-07-10', 'Hadir', '08:13:00', '16:36:00', 0, NULL, NULL),
(143, 23010001, '2023-07-11', 'Alpha', '08:47:00', '16:27:00', 0, NULL, NULL),
(144, 23010001, '2023-07-12', 'Cuti', '08:40:00', '16:44:00', 0, NULL, NULL),
(145, 23010001, '2023-07-13', 'Cuti', '08:29:00', '16:53:00', 0, NULL, NULL),
(146, 23010001, '2023-07-14', 'Cuti', '08:38:00', '16:43:00', 0, NULL, NULL),
(147, 23010001, '2023-07-15', 'Alpha', '08:45:00', '16:01:00', 0, NULL, NULL),
(148, 23010001, '2023-07-16', 'Cuti', '08:15:00', '16:03:00', 0, NULL, NULL),
(149, 23010001, '2023-07-17', 'Hadir', '08:42:00', '16:40:00', 0, NULL, NULL),
(150, 23010001, '2023-07-18', 'Hadir', '08:42:00', '16:56:00', 0, NULL, NULL),
(151, 23010001, '2023-07-19', 'Hadir', '08:16:00', '16:38:00', 0, NULL, NULL),
(152, 23010001, '2023-07-20', 'Hadir', '08:34:00', '16:35:00', 0, NULL, NULL),
(153, 23010001, '2023-07-21', 'Hadir', '08:53:00', '16:45:00', 0, NULL, NULL),
(154, 23010001, '2023-07-22', 'Hadir', '08:12:00', '16:25:00', 0, NULL, NULL),
(155, 23010001, '2023-08-01', 'Cuti', '08:15:00', '16:02:00', 0, NULL, NULL),
(156, 23010001, '2023-08-02', 'Cuti', '08:38:00', '16:17:00', 0, NULL, NULL),
(157, 23010001, '2023-08-03', 'Hadir', '08:51:00', '16:10:00', 0, NULL, NULL),
(158, 23010001, '2023-08-04', 'Cuti', '08:24:00', '16:58:00', 0, NULL, NULL),
(159, 23010001, '2023-08-05', 'Cuti', '08:32:00', '16:18:00', 0, NULL, NULL),
(160, 23010001, '2023-08-06', 'Cuti', '08:29:00', '16:12:00', 0, NULL, NULL),
(161, 23010001, '2023-08-07', 'Alpha', '08:16:00', '16:46:00', 0, NULL, NULL),
(162, 23010001, '2023-08-08', 'Hadir', '08:44:00', '16:18:00', 0, NULL, NULL),
(163, 23010001, '2023-08-09', 'Cuti', '08:41:00', '16:34:00', 0, NULL, NULL),
(164, 23010001, '2023-08-10', 'Hadir', '08:49:00', '16:04:00', 0, NULL, NULL),
(165, 23010001, '2023-08-11', 'Hadir', '08:33:00', '16:57:00', 0, NULL, NULL),
(166, 23010001, '2023-08-12', 'Cuti', '08:09:00', '16:46:00', 0, NULL, NULL),
(167, 23010001, '2023-08-13', 'Alpha', '08:52:00', '16:41:00', 0, NULL, NULL),
(168, 23010001, '2023-08-14', 'Cuti', '08:02:00', '16:27:00', 0, NULL, NULL),
(169, 23010001, '2023-08-15', 'Cuti', '08:30:00', '16:28:00', 0, NULL, NULL),
(170, 23010001, '2023-08-16', 'Hadir', '08:57:00', '16:45:00', 0, NULL, NULL),
(171, 23010001, '2023-08-17', 'Alpha', '08:34:00', '16:25:00', 0, NULL, NULL),
(172, 23010001, '2023-08-18', 'Cuti', '08:40:00', '16:21:00', 0, NULL, NULL),
(173, 23010001, '2023-08-19', 'Cuti', '08:27:00', '16:58:00', 0, NULL, NULL),
(174, 23010001, '2023-08-20', 'Hadir', '08:51:00', '16:09:00', 0, NULL, NULL),
(175, 23010001, '2023-08-21', 'Hadir', '08:21:00', '16:41:00', 0, NULL, NULL),
(176, 23010001, '2023-08-22', 'Hadir', '08:22:00', '16:42:00', 0, NULL, NULL),
(177, 23010001, '2023-09-01', 'Alpha', '08:08:00', '16:38:00', 0, NULL, NULL),
(178, 23010001, '2023-09-02', 'Hadir', '08:23:00', '16:30:00', 0, NULL, NULL),
(179, 23010001, '2023-09-03', 'Hadir', '08:06:00', '16:49:00', 0, NULL, NULL),
(180, 23010001, '2023-09-04', 'Hadir', '08:15:00', '16:42:00', 0, NULL, NULL),
(181, 23010001, '2023-09-05', 'Alpha', '08:28:00', '16:11:00', 0, NULL, NULL),
(182, 23010001, '2023-09-06', 'Cuti', '08:05:00', '16:09:00', 0, NULL, NULL),
(183, 23010001, '2023-09-07', 'Cuti', '08:23:00', '16:28:00', 0, NULL, NULL),
(184, 23010001, '2023-09-08', 'Alpha', '08:04:00', '16:55:00', 0, NULL, NULL),
(185, 23010001, '2023-09-09', 'Hadir', '08:14:00', '16:38:00', 0, NULL, NULL),
(186, 23010001, '2023-09-10', 'Hadir', '08:50:00', '16:42:00', 0, NULL, NULL),
(187, 23010001, '2023-09-11', 'Alpha', '08:20:00', '16:16:00', 0, NULL, NULL),
(188, 23010001, '2023-09-12', 'Cuti', '08:18:00', '16:02:00', 0, NULL, NULL),
(189, 23010001, '2023-09-13', 'Hadir', '08:09:00', '16:35:00', 0, NULL, NULL),
(190, 23010001, '2023-09-14', 'Hadir', '08:48:00', '16:25:00', 0, NULL, NULL),
(191, 23010001, '2023-09-15', 'Cuti', '08:32:00', '16:31:00', 0, NULL, NULL),
(192, 23010001, '2023-09-16', 'Hadir', '08:47:00', '16:46:00', 0, NULL, NULL),
(193, 23010001, '2023-09-17', 'Cuti', '08:59:00', '16:30:00', 0, NULL, NULL),
(194, 23010001, '2023-09-18', 'Alpha', '08:39:00', '16:21:00', 0, NULL, NULL),
(195, 23010001, '2023-09-19', 'Cuti', '08:33:00', '16:16:00', 0, NULL, NULL),
(196, 23010001, '2023-09-20', 'Cuti', '08:50:00', '16:19:00', 0, NULL, NULL),
(197, 23010001, '2023-09-21', 'Hadir', '08:54:00', '16:56:00', 0, NULL, NULL),
(198, 23010001, '2023-09-22', 'Hadir', '08:53:00', '16:53:00', 0, NULL, NULL),
(199, 23010001, '2023-10-01', 'Hadir', '08:04:00', '16:53:00', 0, NULL, NULL),
(200, 23010001, '2023-10-02', 'Hadir', '08:29:00', '16:27:00', 0, NULL, NULL),
(201, 23010001, '2023-10-03', 'Hadir', '08:08:00', '16:59:00', 0, NULL, NULL),
(202, 23010001, '2023-10-04', 'Cuti', '08:45:00', '16:41:00', 0, NULL, NULL),
(203, 23010001, '2023-10-05', 'Cuti', '08:18:00', '16:17:00', 0, NULL, NULL),
(204, 23010001, '2023-10-06', 'Cuti', '08:04:00', '16:53:00', 0, NULL, NULL),
(205, 23010001, '2023-10-07', 'Hadir', '08:07:00', '16:43:00', 0, NULL, NULL),
(206, 23010001, '2023-10-08', 'Cuti', '08:13:00', '16:48:00', 0, NULL, NULL),
(207, 23010001, '2023-10-09', 'Hadir', '08:32:00', '16:41:00', 0, NULL, NULL),
(208, 23010001, '2023-10-10', 'Hadir', '08:07:00', '16:19:00', 0, NULL, NULL),
(209, 23010001, '2023-10-11', 'Hadir', '08:02:00', '16:31:00', 0, NULL, NULL),
(210, 23010001, '2023-10-12', 'Alpha', '08:15:00', '16:14:00', 0, NULL, NULL),
(211, 23010001, '2023-10-13', 'Hadir', '08:27:00', '16:04:00', 0, NULL, NULL),
(212, 23010001, '2023-10-14', 'Hadir', '08:55:00', '16:35:00', 0, NULL, NULL),
(213, 23010001, '2023-10-15', 'Alpha', '08:47:00', '16:45:00', 0, NULL, NULL),
(214, 23010001, '2023-10-16', 'Hadir', '08:16:00', '16:25:00', 0, NULL, NULL),
(215, 23010001, '2023-10-17', 'Hadir', '08:53:00', '16:56:00', 0, NULL, NULL),
(216, 23010001, '2023-10-18', 'Cuti', '08:32:00', '16:59:00', 0, NULL, NULL),
(217, 23010001, '2023-10-19', 'Alpha', '08:33:00', '16:50:00', 0, NULL, NULL),
(218, 23010001, '2023-10-20', 'Hadir', '08:29:00', '16:05:00', 0, NULL, NULL),
(219, 23010001, '2023-10-21', 'Alpha', '08:14:00', '16:21:00', 0, NULL, NULL),
(220, 23010001, '2023-10-22', 'Hadir', '08:54:00', '16:43:00', 0, NULL, NULL),
(221, 23010001, '2023-11-01', 'Hadir', '08:39:00', '16:43:00', 0, NULL, NULL),
(222, 23010001, '2023-11-02', 'Cuti', '08:51:00', '16:49:00', 0, NULL, NULL),
(223, 23010001, '2023-11-03', 'Cuti', '08:28:00', '16:12:00', 0, NULL, NULL),
(224, 23010001, '2023-11-04', 'Cuti', '08:56:00', '16:49:00', 0, NULL, NULL),
(225, 23010001, '2023-11-05', 'Alpha', '08:13:00', '16:59:00', 0, NULL, NULL),
(226, 23010001, '2023-11-06', 'Hadir', '08:07:00', '16:56:00', 0, NULL, NULL),
(227, 23010001, '2023-11-07', 'Hadir', '08:40:00', '16:07:00', 0, NULL, NULL),
(228, 23010001, '2023-11-08', 'Hadir', '08:22:00', '16:51:00', 0, NULL, NULL),
(229, 23010001, '2023-11-09', 'Hadir', '08:59:00', '16:11:00', 0, NULL, NULL),
(230, 23010001, '2023-11-10', 'Hadir', '08:14:00', '16:19:00', 0, NULL, NULL),
(231, 23010001, '2023-11-11', 'Alpha', '08:35:00', '16:17:00', 0, NULL, NULL),
(232, 23010001, '2023-11-12', 'Cuti', '08:16:00', '16:44:00', 0, NULL, NULL),
(233, 23010001, '2023-11-13', 'Hadir', '08:49:00', '16:48:00', 0, NULL, NULL),
(234, 23010001, '2023-11-14', 'Hadir', '08:21:00', '16:24:00', 0, NULL, NULL),
(235, 23010001, '2023-11-15', 'Alpha', '08:44:00', '16:56:00', 0, NULL, NULL),
(236, 23010001, '2023-11-16', 'Cuti', '08:22:00', '16:01:00', 0, NULL, NULL),
(237, 23010001, '2023-11-17', 'Cuti', '08:09:00', '16:25:00', 0, NULL, NULL),
(238, 23010001, '2023-11-18', 'Hadir', '08:07:00', '16:58:00', 0, NULL, NULL),
(239, 23010001, '2023-11-19', 'Alpha', '08:26:00', '16:01:00', 0, NULL, NULL),
(240, 23010001, '2023-11-20', 'Hadir', '08:59:00', '16:05:00', 0, NULL, NULL),
(241, 23010001, '2023-11-21', 'Alpha', '08:16:00', '16:37:00', 0, NULL, NULL),
(242, 23010001, '2023-11-22', 'Hadir', '08:03:00', '16:19:00', 0, NULL, NULL),
(243, 23010001, '2023-12-01', 'Cuti', '08:44:00', '16:54:00', 0, NULL, NULL),
(244, 23010001, '2023-12-02', 'Hadir', '08:13:00', '16:38:00', 0, NULL, NULL),
(245, 23010001, '2023-12-03', 'Alpha', '08:48:00', '16:28:00', 0, NULL, NULL),
(246, 23010001, '2023-12-04', 'Cuti', '08:47:00', '16:05:00', 0, NULL, NULL),
(247, 23010001, '2023-12-05', 'Cuti', '08:45:00', '16:45:00', 0, NULL, NULL),
(248, 23010001, '2023-12-06', 'Cuti', '08:12:00', '16:18:00', 0, NULL, NULL),
(249, 23010001, '2023-12-07', 'Cuti', '08:12:00', '16:47:00', 0, NULL, NULL),
(250, 23010001, '2023-12-08', 'Cuti', '08:18:00', '16:42:00', 0, NULL, NULL),
(251, 23010001, '2023-12-09', 'Cuti', '08:21:00', '16:03:00', 0, NULL, NULL),
(252, 23010001, '2023-12-10', 'Alpha', '08:30:00', '16:14:00', 0, NULL, NULL),
(253, 23010001, '2023-12-11', 'Hadir', '08:29:00', '16:50:00', 0, NULL, NULL),
(254, 23010001, '2023-12-12', 'Alpha', '08:55:00', '16:44:00', 0, NULL, NULL),
(255, 23010001, '2023-12-13', 'Alpha', '08:46:00', '16:50:00', 0, NULL, NULL),
(256, 23010001, '2023-12-14', 'Alpha', '08:11:00', '16:33:00', 0, NULL, NULL),
(257, 23010001, '2023-12-15', 'Hadir', '08:18:00', '16:48:00', 0, NULL, NULL),
(258, 23010001, '2023-12-16', 'Alpha', '08:13:00', '16:51:00', 0, NULL, NULL),
(259, 23010001, '2023-12-17', 'Alpha', '08:22:00', '16:06:00', 0, NULL, NULL),
(260, 23010001, '2023-12-18', 'Cuti', '08:07:00', '16:54:00', 0, NULL, NULL),
(261, 23010001, '2023-12-19', 'Cuti', '08:44:00', '16:49:00', 0, NULL, NULL),
(262, 23010001, '2023-12-20', 'Cuti', '08:16:00', '16:25:00', 0, NULL, NULL),
(263, 23010001, '2023-12-21', 'Cuti', '08:58:00', '16:22:00', 0, NULL, NULL),
(264, 23010001, '2023-12-22', 'Alpha', '08:08:00', '16:09:00', 0, NULL, NULL),
(265, 23010002, '2023-01-01', 'Cuti', '08:43:00', '16:03:00', 0, NULL, NULL),
(266, 23010002, '2023-01-02', 'Alpha', '08:41:00', '16:31:00', 0, NULL, NULL),
(267, 23010002, '2023-01-03', 'Hadir', '08:38:00', '16:16:00', 0, NULL, NULL),
(268, 23010002, '2023-01-04', 'Hadir', '08:20:00', '16:08:00', 0, NULL, NULL),
(269, 23010002, '2023-01-05', 'Cuti', '08:18:00', '16:52:00', 0, NULL, NULL),
(270, 23010002, '2023-01-06', 'Cuti', '08:19:00', '16:27:00', 0, NULL, NULL),
(271, 23010002, '2023-01-07', 'Hadir', '08:13:00', '16:04:00', 0, NULL, NULL),
(272, 23010002, '2023-01-08', 'Alpha', '08:08:00', '16:29:00', 0, NULL, NULL),
(273, 23010002, '2023-01-09', 'Hadir', '08:26:00', '16:11:00', 0, NULL, NULL),
(274, 23010002, '2023-01-10', 'Hadir', '08:42:00', '16:57:00', 0, NULL, NULL),
(275, 23010002, '2023-01-11', 'Hadir', '08:55:00', '16:52:00', 0, NULL, NULL),
(276, 23010002, '2023-01-12', 'Hadir', '08:47:00', '16:05:00', 0, NULL, NULL),
(277, 23010002, '2023-01-13', 'Hadir', '08:00:00', '16:42:00', 0, NULL, NULL),
(278, 23010002, '2023-01-14', 'Alpha', '08:52:00', '16:36:00', 0, NULL, NULL),
(279, 23010002, '2023-01-15', 'Cuti', '08:53:00', '16:24:00', 0, NULL, NULL),
(280, 23010002, '2023-01-16', 'Alpha', '08:40:00', '16:44:00', 0, NULL, NULL),
(281, 23010002, '2023-01-17', 'Hadir', '08:18:00', '16:54:00', 0, NULL, NULL),
(282, 23010002, '2023-01-18', 'Cuti', '08:43:00', '16:16:00', 0, NULL, NULL),
(283, 23010002, '2023-01-19', 'Cuti', '08:23:00', '16:14:00', 0, NULL, NULL),
(284, 23010002, '2023-01-20', 'Hadir', '08:41:00', '16:24:00', 0, NULL, NULL),
(285, 23010002, '2023-01-21', 'Alpha', '08:27:00', '16:58:00', 0, NULL, NULL),
(286, 23010002, '2023-01-22', 'Hadir', '08:52:00', '16:53:00', 0, NULL, NULL),
(287, 23010002, '2023-02-01', 'Hadir', '08:00:00', '16:43:00', 0, NULL, NULL),
(288, 23010002, '2023-02-02', 'Cuti', '08:27:00', '16:40:00', 0, NULL, NULL),
(289, 23010002, '2023-02-03', 'Cuti', '08:14:00', '16:26:00', 0, NULL, NULL),
(290, 23010002, '2023-02-04', 'Alpha', '08:03:00', '16:15:00', 0, NULL, NULL),
(291, 23010002, '2023-02-05', 'Alpha', '08:34:00', '16:26:00', 0, NULL, NULL),
(292, 23010002, '2023-02-06', 'Alpha', '08:34:00', '16:23:00', 0, NULL, NULL),
(293, 23010002, '2023-02-07', 'Alpha', '08:55:00', '16:58:00', 0, NULL, NULL),
(294, 23010002, '2023-02-08', 'Hadir', '08:22:00', '16:42:00', 0, NULL, NULL),
(295, 23010002, '2023-02-09', 'Alpha', '08:56:00', '16:31:00', 0, NULL, NULL),
(296, 23010002, '2023-02-10', 'Hadir', '08:03:00', '16:17:00', 0, NULL, NULL),
(297, 23010002, '2023-02-11', 'Cuti', '08:24:00', '16:06:00', 0, NULL, NULL),
(298, 23010002, '2023-02-12', 'Alpha', '08:31:00', '16:05:00', 0, NULL, NULL),
(299, 23010002, '2023-02-13', 'Alpha', '08:46:00', '16:20:00', 0, NULL, NULL),
(300, 23010002, '2023-02-14', 'Cuti', '08:47:00', '16:55:00', 0, NULL, NULL),
(301, 23010002, '2023-02-15', 'Hadir', '08:56:00', '16:06:00', 0, NULL, NULL),
(302, 23010002, '2023-02-16', 'Cuti', '08:23:00', '16:51:00', 0, NULL, NULL),
(303, 23010002, '2023-02-17', 'Cuti', '08:55:00', '16:20:00', 0, NULL, NULL),
(304, 23010002, '2023-02-18', 'Cuti', '08:40:00', '16:22:00', 0, NULL, NULL),
(305, 23010002, '2023-02-19', 'Cuti', '08:04:00', '16:08:00', 0, NULL, NULL),
(306, 23010002, '2023-02-20', 'Hadir', '08:24:00', '16:36:00', 0, NULL, NULL),
(307, 23010002, '2023-02-21', 'Hadir', '08:32:00', '16:16:00', 0, NULL, NULL),
(308, 23010002, '2023-02-22', 'Cuti', '08:36:00', '16:26:00', 0, NULL, NULL),
(309, 23010002, '2023-03-01', 'Cuti', '08:34:00', '16:18:00', 0, NULL, NULL),
(310, 23010002, '2023-03-02', 'Hadir', '08:42:00', '16:01:00', 0, NULL, NULL),
(311, 23010002, '2023-03-03', 'Cuti', '08:28:00', '16:16:00', 0, NULL, NULL),
(312, 23010002, '2023-03-04', 'Alpha', '08:36:00', '16:01:00', 0, NULL, NULL),
(313, 23010002, '2023-03-05', 'Hadir', '08:24:00', '16:35:00', 0, NULL, NULL),
(314, 23010002, '2023-03-06', 'Cuti', '08:13:00', '16:51:00', 0, NULL, NULL),
(315, 23010002, '2023-03-07', 'Alpha', '08:25:00', '16:22:00', 0, NULL, NULL),
(316, 23010002, '2023-03-08', 'Cuti', '08:01:00', '16:03:00', 0, NULL, NULL),
(317, 23010002, '2023-03-09', 'Alpha', '08:30:00', '16:59:00', 0, NULL, NULL),
(318, 23010002, '2023-03-10', 'Cuti', '08:04:00', '16:09:00', 0, NULL, NULL),
(319, 23010002, '2023-03-11', 'Cuti', '08:03:00', '16:50:00', 0, NULL, NULL),
(320, 23010002, '2023-03-12', 'Cuti', '08:23:00', '16:43:00', 0, NULL, NULL),
(321, 23010002, '2023-03-13', 'Cuti', '08:01:00', '16:57:00', 0, NULL, NULL),
(322, 23010002, '2023-03-14', 'Hadir', '08:41:00', '16:56:00', 0, NULL, NULL),
(323, 23010002, '2023-03-15', 'Cuti', '08:13:00', '16:01:00', 0, NULL, NULL),
(324, 23010002, '2023-03-16', 'Cuti', '08:56:00', '16:23:00', 0, NULL, NULL),
(325, 23010002, '2023-03-17', 'Alpha', '08:54:00', '16:56:00', 0, NULL, NULL),
(326, 23010002, '2023-03-18', 'Hadir', '08:51:00', '16:52:00', 0, NULL, NULL),
(327, 23010002, '2023-03-19', 'Cuti', '08:50:00', '16:09:00', 0, NULL, NULL),
(328, 23010002, '2023-03-20', 'Hadir', '08:24:00', '16:31:00', 0, NULL, NULL),
(329, 23010002, '2023-03-21', 'Hadir', '08:35:00', '16:16:00', 0, NULL, NULL),
(330, 23010002, '2023-03-22', 'Alpha', '08:51:00', '16:51:00', 0, NULL, NULL),
(331, 23010002, '2023-04-01', 'Hadir', '08:50:00', '16:18:00', 0, NULL, NULL),
(332, 23010002, '2023-04-02', 'Alpha', '08:45:00', '16:51:00', 0, NULL, NULL),
(333, 23010002, '2023-04-03', 'Alpha', '08:55:00', '16:12:00', 0, NULL, NULL),
(334, 23010002, '2023-04-04', 'Hadir', '08:36:00', '16:02:00', 0, NULL, NULL),
(335, 23010002, '2023-04-05', 'Alpha', '08:42:00', '16:33:00', 0, NULL, NULL),
(336, 23010002, '2023-04-06', 'Alpha', '08:31:00', '16:43:00', 0, NULL, NULL),
(337, 23010002, '2023-04-07', 'Cuti', '08:01:00', '16:49:00', 0, NULL, NULL),
(338, 23010002, '2023-04-08', 'Cuti', '08:06:00', '16:37:00', 0, NULL, NULL),
(339, 23010002, '2023-04-09', 'Hadir', '08:04:00', '16:16:00', 0, NULL, NULL),
(340, 23010002, '2023-04-10', 'Alpha', '08:53:00', '16:28:00', 0, NULL, NULL),
(341, 23010002, '2023-04-11', 'Hadir', '08:35:00', '16:32:00', 0, NULL, NULL),
(342, 23010002, '2023-04-12', 'Cuti', '08:45:00', '16:38:00', 0, NULL, NULL),
(343, 23010002, '2023-04-13', 'Alpha', '08:27:00', '16:13:00', 0, NULL, NULL),
(344, 23010002, '2023-04-14', 'Cuti', '08:29:00', '16:13:00', 0, NULL, NULL),
(345, 23010002, '2023-04-15', 'Cuti', '08:04:00', '16:19:00', 0, NULL, NULL),
(346, 23010002, '2023-04-16', 'Alpha', '08:36:00', '16:01:00', 0, NULL, NULL),
(347, 23010002, '2023-04-17', 'Hadir', '08:47:00', '16:46:00', 0, NULL, NULL),
(348, 23010002, '2023-04-18', 'Alpha', '08:07:00', '16:59:00', 0, NULL, NULL),
(349, 23010002, '2023-04-19', 'Cuti', '08:37:00', '16:00:00', 0, NULL, NULL),
(350, 23010002, '2023-04-20', 'Hadir', '08:28:00', '16:02:00', 0, NULL, NULL),
(351, 23010002, '2023-04-21', 'Alpha', '08:32:00', '16:35:00', 0, NULL, NULL),
(352, 23010002, '2023-04-22', 'Hadir', '08:26:00', '16:20:00', 0, NULL, NULL),
(353, 23010002, '2023-05-01', 'Alpha', '08:37:00', '16:11:00', 0, NULL, NULL),
(354, 23010002, '2023-05-02', 'Hadir', '08:16:00', '16:50:00', 0, NULL, NULL),
(355, 23010002, '2023-05-03', 'Hadir', '08:13:00', '16:48:00', 0, NULL, NULL),
(356, 23010002, '2023-05-04', 'Cuti', '08:07:00', '16:38:00', 0, NULL, NULL),
(357, 23010002, '2023-05-05', 'Alpha', '08:48:00', '16:39:00', 0, NULL, NULL),
(358, 23010002, '2023-05-06', 'Alpha', '08:39:00', '16:29:00', 0, NULL, NULL),
(359, 23010002, '2023-05-07', 'Hadir', '08:01:00', '16:15:00', 0, NULL, NULL),
(360, 23010002, '2023-05-08', 'Hadir', '08:45:00', '16:13:00', 0, NULL, NULL),
(361, 23010002, '2023-05-09', 'Alpha', '08:30:00', '16:22:00', 0, NULL, NULL),
(362, 23010002, '2023-05-10', 'Alpha', '08:01:00', '16:52:00', 0, NULL, NULL),
(363, 23010002, '2023-05-11', 'Hadir', '08:50:00', '16:58:00', 0, NULL, NULL),
(364, 23010002, '2023-05-12', 'Cuti', '08:23:00', '16:13:00', 0, NULL, NULL),
(365, 23010002, '2023-05-13', 'Cuti', '08:01:00', '16:45:00', 0, NULL, NULL),
(366, 23010002, '2023-05-14', 'Hadir', '08:32:00', '16:06:00', 0, NULL, NULL),
(367, 23010002, '2023-05-15', 'Alpha', '08:30:00', '16:40:00', 0, NULL, NULL),
(368, 23010002, '2023-05-16', 'Alpha', '08:39:00', '16:22:00', 0, NULL, NULL),
(369, 23010002, '2023-05-17', 'Cuti', '08:37:00', '16:41:00', 0, NULL, NULL),
(370, 23010002, '2023-05-18', 'Hadir', '08:31:00', '16:57:00', 0, NULL, NULL),
(371, 23010002, '2023-05-19', 'Alpha', '08:01:00', '16:33:00', 0, NULL, NULL),
(372, 23010002, '2023-05-20', 'Cuti', '08:00:00', '16:29:00', 0, NULL, NULL),
(373, 23010002, '2023-05-21', 'Alpha', '08:25:00', '16:08:00', 0, NULL, NULL),
(374, 23010002, '2023-05-22', 'Cuti', '08:43:00', '16:43:00', 0, NULL, NULL),
(375, 23010002, '2023-06-01', 'Alpha', '08:28:00', '16:51:00', 0, NULL, NULL),
(376, 23010002, '2023-06-02', 'Hadir', '08:32:00', '16:33:00', 0, NULL, NULL),
(377, 23010002, '2023-06-03', 'Hadir', '08:45:00', '16:37:00', 0, NULL, NULL),
(378, 23010002, '2023-06-04', 'Hadir', '08:01:00', '16:31:00', 0, NULL, NULL),
(379, 23010002, '2023-06-05', 'Alpha', '08:54:00', '16:35:00', 0, NULL, NULL),
(380, 23010002, '2023-06-06', 'Cuti', '08:15:00', '16:42:00', 0, NULL, NULL),
(381, 23010002, '2023-06-07', 'Hadir', '08:23:00', '16:20:00', 0, NULL, NULL),
(382, 23010002, '2023-06-08', 'Cuti', '08:17:00', '16:34:00', 0, NULL, NULL),
(383, 23010002, '2023-06-09', 'Hadir', '08:21:00', '16:13:00', 0, NULL, NULL),
(384, 23010002, '2023-06-10', 'Alpha', '08:13:00', '16:32:00', 0, NULL, NULL),
(385, 23010002, '2023-06-11', 'Cuti', '08:12:00', '16:59:00', 0, NULL, NULL),
(386, 23010002, '2023-06-12', 'Cuti', '08:52:00', '16:12:00', 0, NULL, NULL),
(387, 23010002, '2023-06-13', 'Hadir', '08:09:00', '16:05:00', 0, NULL, NULL),
(388, 23010002, '2023-06-14', 'Cuti', '08:58:00', '16:39:00', 0, NULL, NULL),
(389, 23010002, '2023-06-15', 'Alpha', '08:27:00', '16:43:00', 0, NULL, NULL),
(390, 23010002, '2023-06-16', 'Cuti', '08:08:00', '16:58:00', 0, NULL, NULL),
(391, 23010002, '2023-06-17', 'Hadir', '08:56:00', '16:16:00', 0, NULL, NULL),
(392, 23010002, '2023-06-18', 'Cuti', '08:43:00', '16:01:00', 0, NULL, NULL),
(393, 23010002, '2023-06-19', 'Hadir', '08:42:00', '16:49:00', 0, NULL, NULL),
(394, 23010002, '2023-06-20', 'Alpha', '08:16:00', '16:14:00', 0, NULL, NULL),
(395, 23010002, '2023-06-21', 'Hadir', '08:24:00', '16:51:00', 0, NULL, NULL),
(396, 23010002, '2023-06-22', 'Alpha', '08:49:00', '16:18:00', 0, NULL, NULL),
(397, 23010002, '2023-07-01', 'Alpha', '08:04:00', '16:01:00', 0, NULL, NULL),
(398, 23010002, '2023-07-02', 'Alpha', '08:46:00', '16:09:00', 0, NULL, NULL),
(399, 23010002, '2023-07-03', 'Cuti', '08:00:00', '16:04:00', 0, NULL, NULL),
(400, 23010002, '2023-07-04', 'Cuti', '08:36:00', '16:28:00', 0, NULL, NULL),
(401, 23010002, '2023-07-05', 'Cuti', '08:01:00', '16:00:00', 0, NULL, NULL),
(402, 23010002, '2023-07-06', 'Hadir', '08:56:00', '16:12:00', 0, NULL, NULL),
(403, 23010002, '2023-07-07', 'Cuti', '08:35:00', '16:54:00', 0, NULL, NULL),
(404, 23010002, '2023-07-08', 'Alpha', '08:28:00', '16:56:00', 0, NULL, NULL),
(405, 23010002, '2023-07-09', 'Cuti', '08:26:00', '16:54:00', 0, NULL, NULL),
(406, 23010002, '2023-07-10', 'Alpha', '08:30:00', '16:55:00', 0, NULL, NULL),
(407, 23010002, '2023-07-11', 'Alpha', '08:11:00', '16:08:00', 0, NULL, NULL),
(408, 23010002, '2023-07-12', 'Alpha', '08:38:00', '16:44:00', 0, NULL, NULL),
(409, 23010002, '2023-07-13', 'Hadir', '08:20:00', '16:26:00', 0, NULL, NULL),
(410, 23010002, '2023-07-14', 'Cuti', '08:40:00', '16:50:00', 0, NULL, NULL),
(411, 23010002, '2023-07-15', 'Alpha', '08:02:00', '16:46:00', 0, NULL, NULL),
(412, 23010002, '2023-07-16', 'Alpha', '08:47:00', '16:38:00', 0, NULL, NULL),
(413, 23010002, '2023-07-17', 'Hadir', '08:10:00', '16:59:00', 0, NULL, NULL),
(414, 23010002, '2023-07-18', 'Alpha', '08:25:00', '16:45:00', 0, NULL, NULL),
(415, 23010002, '2023-07-19', 'Hadir', '08:23:00', '16:10:00', 0, NULL, NULL),
(416, 23010002, '2023-07-20', 'Alpha', '08:08:00', '16:47:00', 0, NULL, NULL),
(417, 23010002, '2023-07-21', 'Cuti', '08:29:00', '16:29:00', 0, NULL, NULL),
(418, 23010002, '2023-07-22', 'Cuti', '08:09:00', '16:14:00', 0, NULL, NULL),
(419, 23010002, '2023-08-01', 'Alpha', '08:24:00', '16:58:00', 0, NULL, NULL),
(420, 23010002, '2023-08-02', 'Cuti', '08:36:00', '16:27:00', 0, NULL, NULL),
(421, 23010002, '2023-08-03', 'Cuti', '08:47:00', '16:58:00', 0, NULL, NULL),
(422, 23010002, '2023-08-04', 'Cuti', '08:06:00', '16:04:00', 0, NULL, NULL),
(423, 23010002, '2023-08-05', 'Cuti', '08:04:00', '16:17:00', 0, NULL, NULL),
(424, 23010002, '2023-08-06', 'Alpha', '08:23:00', '16:27:00', 0, NULL, NULL),
(425, 23010002, '2023-08-07', 'Alpha', '08:50:00', '16:42:00', 0, NULL, NULL),
(426, 23010002, '2023-08-08', 'Cuti', '08:52:00', '16:10:00', 0, NULL, NULL),
(427, 23010002, '2023-08-09', 'Hadir', '08:12:00', '16:44:00', 0, NULL, NULL),
(428, 23010002, '2023-08-10', 'Hadir', '08:15:00', '16:03:00', 0, NULL, NULL),
(429, 23010002, '2023-08-11', 'Hadir', '08:06:00', '16:43:00', 0, NULL, NULL),
(430, 23010002, '2023-08-12', 'Hadir', '08:52:00', '16:14:00', 0, NULL, NULL),
(431, 23010002, '2023-08-13', 'Alpha', '08:50:00', '16:18:00', 0, NULL, NULL),
(432, 23010002, '2023-08-14', 'Alpha', '08:31:00', '16:54:00', 0, NULL, NULL),
(433, 23010002, '2023-08-15', 'Alpha', '08:14:00', '16:09:00', 0, NULL, NULL),
(434, 23010002, '2023-08-16', 'Alpha', '08:32:00', '16:11:00', 0, NULL, NULL),
(435, 23010002, '2023-08-17', 'Alpha', '08:40:00', '16:06:00', 0, NULL, NULL),
(436, 23010002, '2023-08-18', 'Alpha', '08:26:00', '16:10:00', 0, NULL, NULL),
(437, 23010002, '2023-08-19', 'Cuti', '08:44:00', '16:30:00', 0, NULL, NULL),
(438, 23010002, '2023-08-20', 'Cuti', '08:12:00', '16:54:00', 0, NULL, NULL),
(439, 23010002, '2023-08-21', 'Hadir', '08:42:00', '16:20:00', 0, NULL, NULL),
(440, 23010002, '2023-08-22', 'Cuti', '08:46:00', '16:33:00', 0, NULL, NULL),
(441, 23010002, '2023-09-01', 'Hadir', '08:34:00', '16:39:00', 0, NULL, NULL),
(442, 23010002, '2023-09-02', 'Cuti', '08:02:00', '16:13:00', 0, NULL, NULL),
(443, 23010002, '2023-09-03', 'Alpha', '08:57:00', '16:13:00', 0, NULL, NULL),
(444, 23010002, '2023-09-04', 'Alpha', '08:44:00', '16:34:00', 0, NULL, NULL),
(445, 23010002, '2023-09-05', 'Cuti', '08:27:00', '16:35:00', 0, NULL, NULL),
(446, 23010002, '2023-09-06', 'Cuti', '08:16:00', '16:30:00', 0, NULL, NULL),
(447, 23010002, '2023-09-07', 'Alpha', '08:57:00', '16:41:00', 0, NULL, NULL),
(448, 23010002, '2023-09-08', 'Cuti', '08:51:00', '16:52:00', 0, NULL, NULL),
(449, 23010002, '2023-09-09', 'Alpha', '08:51:00', '16:33:00', 0, NULL, NULL),
(450, 23010002, '2023-09-10', 'Hadir', '08:56:00', '16:04:00', 0, NULL, NULL),
(451, 23010002, '2023-09-11', 'Cuti', '08:04:00', '16:34:00', 0, NULL, NULL),
(452, 23010002, '2023-09-12', 'Hadir', '08:41:00', '16:24:00', 0, NULL, NULL),
(453, 23010002, '2023-09-13', 'Cuti', '08:36:00', '16:33:00', 0, NULL, NULL),
(454, 23010002, '2023-09-14', 'Alpha', '08:32:00', '16:08:00', 0, NULL, NULL),
(455, 23010002, '2023-09-15', 'Cuti', '08:30:00', '16:14:00', 0, NULL, NULL),
(456, 23010002, '2023-09-16', 'Alpha', '08:20:00', '16:06:00', 0, NULL, NULL),
(457, 23010002, '2023-09-17', 'Cuti', '08:59:00', '16:48:00', 0, NULL, NULL),
(458, 23010002, '2023-09-18', 'Cuti', '08:01:00', '16:04:00', 0, NULL, NULL),
(459, 23010002, '2023-09-19', 'Cuti', '08:36:00', '16:45:00', 0, NULL, NULL),
(460, 23010002, '2023-09-20', 'Alpha', '08:54:00', '16:00:00', 0, NULL, NULL),
(461, 23010002, '2023-09-21', 'Cuti', '08:28:00', '16:40:00', 0, NULL, NULL),
(462, 23010002, '2023-09-22', 'Alpha', '08:20:00', '16:01:00', 0, NULL, NULL),
(463, 23010002, '2023-10-01', 'Hadir', '08:45:00', '16:56:00', 0, NULL, NULL),
(464, 23010002, '2023-10-02', 'Alpha', '08:51:00', '16:19:00', 0, NULL, NULL),
(465, 23010002, '2023-10-03', 'Alpha', '08:52:00', '16:32:00', 0, NULL, NULL),
(466, 23010002, '2023-10-04', 'Hadir', '08:30:00', '16:20:00', 0, NULL, NULL),
(467, 23010002, '2023-10-05', 'Hadir', '08:21:00', '16:41:00', 0, NULL, NULL),
(468, 23010002, '2023-10-06', 'Hadir', '08:35:00', '16:38:00', 0, NULL, NULL),
(469, 23010002, '2023-10-07', 'Cuti', '08:53:00', '16:04:00', 0, NULL, NULL),
(470, 23010002, '2023-10-08', 'Alpha', '08:46:00', '16:02:00', 0, NULL, NULL),
(471, 23010002, '2023-10-09', 'Alpha', '08:11:00', '16:08:00', 0, NULL, NULL),
(472, 23010002, '2023-10-10', 'Cuti', '08:02:00', '16:39:00', 0, NULL, NULL),
(473, 23010002, '2023-10-11', 'Cuti', '08:25:00', '16:36:00', 0, NULL, NULL),
(474, 23010002, '2023-10-12', 'Cuti', '08:04:00', '16:45:00', 0, NULL, NULL),
(475, 23010002, '2023-10-13', 'Alpha', '08:55:00', '16:25:00', 0, NULL, NULL),
(476, 23010002, '2023-10-14', 'Alpha', '08:38:00', '16:01:00', 0, NULL, NULL),
(477, 23010002, '2023-10-15', 'Hadir', '08:52:00', '16:36:00', 0, NULL, NULL),
(478, 23010002, '2023-10-16', 'Cuti', '08:07:00', '16:05:00', 0, NULL, NULL),
(479, 23010002, '2023-10-17', 'Alpha', '08:01:00', '16:22:00', 0, NULL, NULL),
(480, 23010002, '2023-10-18', 'Hadir', '08:32:00', '16:26:00', 0, NULL, NULL),
(481, 23010002, '2023-10-19', 'Hadir', '08:31:00', '16:53:00', 0, NULL, NULL),
(482, 23010002, '2023-10-20', 'Hadir', '08:44:00', '16:49:00', 0, NULL, NULL),
(483, 23010002, '2023-10-21', 'Cuti', '08:39:00', '16:07:00', 0, NULL, NULL),
(484, 23010002, '2023-10-22', 'Alpha', '08:17:00', '16:10:00', 0, NULL, NULL),
(485, 23010002, '2023-11-01', 'Alpha', '08:46:00', '16:34:00', 0, NULL, NULL),
(486, 23010002, '2023-11-02', 'Cuti', '08:14:00', '16:44:00', 0, NULL, NULL),
(487, 23010002, '2023-11-03', 'Cuti', '08:09:00', '16:51:00', 0, NULL, NULL),
(488, 23010002, '2023-11-04', 'Hadir', '08:07:00', '16:43:00', 0, NULL, NULL),
(489, 23010002, '2023-11-05', 'Alpha', '08:35:00', '16:54:00', 0, NULL, NULL),
(490, 23010002, '2023-11-06', 'Alpha', '08:01:00', '16:27:00', 0, NULL, NULL),
(491, 23010002, '2023-11-07', 'Hadir', '08:34:00', '16:50:00', 0, NULL, NULL),
(492, 23010002, '2023-11-08', 'Cuti', '08:17:00', '16:22:00', 0, NULL, NULL),
(493, 23010002, '2023-11-09', 'Hadir', '08:58:00', '16:22:00', 0, NULL, NULL),
(494, 23010002, '2023-11-10', 'Hadir', '08:13:00', '16:22:00', 0, NULL, NULL),
(495, 23010002, '2023-11-11', 'Cuti', '08:18:00', '16:16:00', 0, NULL, NULL),
(496, 23010002, '2023-11-12', 'Hadir', '08:54:00', '16:39:00', 0, NULL, NULL),
(497, 23010002, '2023-11-13', 'Hadir', '08:30:00', '16:37:00', 0, NULL, NULL),
(498, 23010002, '2023-11-14', 'Alpha', '08:43:00', '16:04:00', 0, NULL, NULL),
(499, 23010002, '2023-11-15', 'Hadir', '08:29:00', '16:10:00', 0, NULL, NULL),
(500, 23010002, '2023-11-16', 'Alpha', '08:02:00', '16:14:00', 0, NULL, NULL),
(501, 23010002, '2023-11-17', 'Alpha', '08:42:00', '16:28:00', 0, NULL, NULL),
(502, 23010002, '2023-11-18', 'Cuti', '08:49:00', '16:14:00', 0, NULL, NULL),
(503, 23010002, '2023-11-19', 'Alpha', '08:03:00', '16:21:00', 0, NULL, NULL),
(504, 23010002, '2023-11-20', 'Cuti', '08:23:00', '16:38:00', 0, NULL, NULL),
(505, 23010002, '2023-11-21', 'Cuti', '08:05:00', '16:30:00', 0, NULL, NULL),
(506, 23010002, '2023-11-22', 'Cuti', '08:38:00', '16:26:00', 0, NULL, NULL),
(507, 23010002, '2023-12-01', 'Alpha', '08:37:00', '16:29:00', 0, NULL, NULL),
(508, 23010002, '2023-12-02', 'Alpha', '08:02:00', '16:04:00', 0, NULL, NULL),
(509, 23010002, '2023-12-03', 'Hadir', '08:58:00', '16:19:00', 0, NULL, NULL),
(510, 23010002, '2023-12-04', 'Alpha', '08:42:00', '16:29:00', 0, NULL, NULL),
(511, 23010002, '2023-12-05', 'Cuti', '08:40:00', '16:13:00', 0, NULL, NULL),
(512, 23010002, '2023-12-06', 'Alpha', '08:32:00', '16:13:00', 0, NULL, NULL),
(513, 23010002, '2023-12-07', 'Alpha', '08:19:00', '16:45:00', 0, NULL, NULL),
(514, 23010002, '2023-12-08', 'Alpha', '08:30:00', '16:18:00', 0, NULL, NULL),
(515, 23010002, '2023-12-09', 'Cuti', '08:26:00', '16:41:00', 0, NULL, NULL),
(516, 23010002, '2023-12-10', 'Alpha', '08:09:00', '16:02:00', 0, NULL, NULL),
(517, 23010002, '2023-12-11', 'Alpha', '08:56:00', '16:11:00', 0, NULL, NULL),
(518, 23010002, '2023-12-12', 'Hadir', '08:53:00', '16:35:00', 0, NULL, NULL),
(519, 23010002, '2023-12-13', 'Hadir', '08:43:00', '16:28:00', 0, NULL, NULL),
(520, 23010002, '2023-12-14', 'Cuti', '08:16:00', '16:01:00', 0, NULL, NULL),
(521, 23010002, '2023-12-15', 'Hadir', '08:16:00', '16:28:00', 0, NULL, NULL),
(522, 23010002, '2023-12-16', 'Alpha', '08:33:00', '16:43:00', 0, NULL, NULL),
(523, 23010002, '2023-12-17', 'Hadir', '08:01:00', '16:42:00', 0, NULL, NULL),
(524, 23010002, '2023-12-18', 'Cuti', '08:10:00', '16:49:00', 0, NULL, NULL),
(525, 23010002, '2023-12-19', 'Hadir', '08:26:00', '16:01:00', 0, NULL, NULL),
(526, 23010002, '2023-12-20', 'Alpha', '08:11:00', '16:31:00', 0, NULL, NULL),
(527, 23010002, '2023-12-21', 'Hadir', '08:32:00', '16:50:00', 0, NULL, NULL),
(528, 23010002, '2023-12-22', 'Hadir', '08:39:00', '16:58:00', 0, NULL, NULL),
(529, 23010003, '2023-01-01', 'Alpha', '08:58:00', '16:40:00', 0, NULL, NULL),
(530, 23010003, '2023-01-02', 'Cuti', '08:02:00', '16:55:00', 0, NULL, NULL),
(531, 23010003, '2023-01-03', 'Hadir', '08:05:00', '16:07:00', 0, NULL, NULL),
(532, 23010003, '2023-01-04', 'Alpha', '08:26:00', '16:46:00', 0, NULL, NULL),
(533, 23010003, '2023-01-05', 'Cuti', '08:08:00', '16:06:00', 0, NULL, NULL),
(534, 23010003, '2023-01-06', 'Cuti', '08:06:00', '16:19:00', 0, NULL, NULL),
(535, 23010003, '2023-01-07', 'Hadir', '08:38:00', '16:33:00', 0, NULL, NULL),
(536, 23010003, '2023-01-08', 'Alpha', '08:59:00', '16:23:00', 0, NULL, NULL),
(537, 23010003, '2023-01-09', 'Cuti', '08:35:00', '16:31:00', 0, NULL, NULL),
(538, 23010003, '2023-01-10', 'Hadir', '08:57:00', '16:52:00', 0, NULL, NULL),
(539, 23010003, '2023-01-11', 'Alpha', '08:52:00', '16:28:00', 0, NULL, NULL),
(540, 23010003, '2023-01-12', 'Alpha', '08:15:00', '16:30:00', 0, NULL, NULL),
(541, 23010003, '2023-01-13', 'Hadir', '08:50:00', '16:59:00', 0, NULL, NULL),
(542, 23010003, '2023-01-14', 'Cuti', '08:38:00', '16:15:00', 0, NULL, NULL),
(543, 23010003, '2023-01-15', 'Cuti', '08:09:00', '16:49:00', 0, NULL, NULL),
(544, 23010003, '2023-01-16', 'Cuti', '08:16:00', '16:44:00', 0, NULL, NULL),
(545, 23010003, '2023-01-17', 'Cuti', '08:47:00', '16:21:00', 0, NULL, NULL),
(546, 23010003, '2023-01-18', 'Hadir', '08:47:00', '16:26:00', 0, NULL, NULL),
(547, 23010003, '2023-01-19', 'Cuti', '08:04:00', '16:53:00', 0, NULL, NULL),
(548, 23010003, '2023-01-20', 'Hadir', '08:01:00', '16:05:00', 0, NULL, NULL),
(549, 23010003, '2023-01-21', 'Cuti', '08:17:00', '16:58:00', 0, NULL, NULL),
(550, 23010003, '2023-01-22', 'Hadir', '08:00:00', '16:03:00', 0, NULL, NULL),
(551, 23010003, '2023-02-01', 'Cuti', '08:02:00', '16:14:00', 0, NULL, NULL),
(552, 23010003, '2023-02-02', 'Hadir', '08:52:00', '16:58:00', 0, NULL, NULL),
(553, 23010003, '2023-02-03', 'Cuti', '08:57:00', '16:36:00', 0, NULL, NULL),
(554, 23010003, '2023-02-04', 'Cuti', '08:57:00', '16:35:00', 0, NULL, NULL),
(555, 23010003, '2023-02-05', 'Hadir', '08:15:00', '16:06:00', 0, NULL, NULL),
(556, 23010003, '2023-02-06', 'Hadir', '08:44:00', '16:03:00', 0, NULL, NULL),
(557, 23010003, '2023-02-07', 'Cuti', '08:01:00', '16:57:00', 0, NULL, NULL),
(558, 23010003, '2023-02-08', 'Hadir', '08:55:00', '16:48:00', 0, NULL, NULL),
(559, 23010003, '2023-02-09', 'Alpha', '08:35:00', '16:10:00', 0, NULL, NULL),
(560, 23010003, '2023-02-10', 'Hadir', '08:34:00', '16:23:00', 0, NULL, NULL),
(561, 23010003, '2023-02-11', 'Alpha', '08:10:00', '16:10:00', 0, NULL, NULL),
(562, 23010003, '2023-02-12', 'Hadir', '08:26:00', '16:13:00', 0, NULL, NULL),
(563, 23010003, '2023-02-13', 'Cuti', '08:46:00', '16:34:00', 0, NULL, NULL),
(564, 23010003, '2023-02-14', 'Hadir', '08:58:00', '16:58:00', 0, NULL, NULL),
(565, 23010003, '2023-02-15', 'Alpha', '08:04:00', '16:52:00', 0, NULL, NULL),
(566, 23010003, '2023-02-16', 'Alpha', '08:59:00', '16:06:00', 0, NULL, NULL),
(567, 23010003, '2023-02-17', 'Alpha', '08:14:00', '16:54:00', 0, NULL, NULL),
(568, 23010003, '2023-02-18', 'Alpha', '08:44:00', '16:29:00', 0, NULL, NULL),
(569, 23010003, '2023-02-19', 'Alpha', '08:57:00', '16:43:00', 0, NULL, NULL),
(570, 23010003, '2023-02-20', 'Alpha', '08:30:00', '16:49:00', 0, NULL, NULL),
(571, 23010003, '2023-02-21', 'Alpha', '08:04:00', '16:25:00', 0, NULL, NULL),
(572, 23010003, '2023-02-22', 'Alpha', '08:33:00', '16:13:00', 0, NULL, NULL),
(573, 23010003, '2023-03-01', 'Hadir', '08:22:00', '16:00:00', 0, NULL, NULL),
(574, 23010003, '2023-03-02', 'Alpha', '08:57:00', '16:28:00', 0, NULL, NULL),
(575, 23010003, '2023-03-03', 'Alpha', '08:13:00', '16:08:00', 0, NULL, NULL),
(576, 23010003, '2023-03-04', 'Hadir', '08:48:00', '16:24:00', 0, NULL, NULL),
(577, 23010003, '2023-03-05', 'Hadir', '08:48:00', '16:52:00', 0, NULL, NULL),
(578, 23010003, '2023-03-06', 'Hadir', '08:22:00', '16:13:00', 0, NULL, NULL),
(579, 23010003, '2023-03-07', 'Cuti', '08:49:00', '16:43:00', 0, NULL, NULL),
(580, 23010003, '2023-03-08', 'Hadir', '08:26:00', '16:26:00', 0, NULL, NULL),
(581, 23010003, '2023-03-09', 'Hadir', '08:44:00', '16:20:00', 0, NULL, NULL),
(582, 23010003, '2023-03-10', 'Hadir', '08:47:00', '16:55:00', 0, NULL, NULL),
(583, 23010003, '2023-03-11', 'Cuti', '08:51:00', '16:31:00', 0, NULL, NULL),
(584, 23010003, '2023-03-12', 'Hadir', '08:17:00', '16:30:00', 0, NULL, NULL),
(585, 23010003, '2023-03-13', 'Cuti', '08:17:00', '16:34:00', 0, NULL, NULL),
(586, 23010003, '2023-03-14', 'Alpha', '08:19:00', '16:51:00', 0, NULL, NULL),
(587, 23010003, '2023-03-15', 'Hadir', '08:37:00', '16:31:00', 0, NULL, NULL),
(588, 23010003, '2023-03-16', 'Alpha', '08:55:00', '16:18:00', 0, NULL, NULL),
(589, 23010003, '2023-03-17', 'Alpha', '08:04:00', '16:59:00', 0, NULL, NULL),
(590, 23010003, '2023-03-18', 'Cuti', '08:24:00', '16:00:00', 0, NULL, NULL),
(591, 23010003, '2023-03-19', 'Alpha', '08:59:00', '16:26:00', 0, NULL, NULL),
(592, 23010003, '2023-03-20', 'Alpha', '08:09:00', '16:38:00', 0, NULL, NULL),
(593, 23010003, '2023-03-21', 'Cuti', '08:22:00', '16:51:00', 0, NULL, NULL),
(594, 23010003, '2023-03-22', 'Alpha', '08:01:00', '16:27:00', 0, NULL, NULL),
(595, 23010003, '2023-04-01', 'Alpha', '08:57:00', '16:56:00', 0, NULL, NULL),
(596, 23010003, '2023-04-02', 'Alpha', '08:11:00', '16:13:00', 0, NULL, NULL),
(597, 23010003, '2023-04-03', 'Hadir', '08:25:00', '16:17:00', 0, NULL, NULL),
(598, 23010003, '2023-04-04', 'Hadir', '08:42:00', '16:52:00', 0, NULL, NULL),
(599, 23010003, '2023-04-05', 'Hadir', '08:33:00', '16:31:00', 0, NULL, NULL),
(600, 23010003, '2023-04-06', 'Hadir', '08:37:00', '16:22:00', 0, NULL, NULL),
(601, 23010003, '2023-04-07', 'Hadir', '08:17:00', '16:07:00', 0, NULL, NULL),
(602, 23010003, '2023-04-08', 'Cuti', '08:42:00', '16:55:00', 0, NULL, NULL),
(603, 23010003, '2023-04-09', 'Hadir', '08:22:00', '16:13:00', 0, NULL, NULL),
(604, 23010003, '2023-04-10', 'Alpha', '08:40:00', '16:44:00', 0, NULL, NULL),
(605, 23010003, '2023-04-11', 'Cuti', '08:39:00', '16:38:00', 0, NULL, NULL),
(606, 23010003, '2023-04-12', 'Hadir', '08:55:00', '16:32:00', 0, NULL, NULL),
(607, 23010003, '2023-04-13', 'Hadir', '08:50:00', '16:36:00', 0, NULL, NULL),
(608, 23010003, '2023-04-14', 'Alpha', '08:27:00', '16:50:00', 0, NULL, NULL),
(609, 23010003, '2023-04-15', 'Hadir', '08:08:00', '16:20:00', 0, NULL, NULL),
(610, 23010003, '2023-04-16', 'Cuti', '08:00:00', '16:08:00', 0, NULL, NULL),
(611, 23010003, '2023-04-17', 'Hadir', '08:19:00', '16:17:00', 0, NULL, NULL),
(612, 23010003, '2023-04-18', 'Cuti', '08:11:00', '16:30:00', 0, NULL, NULL),
(613, 23010003, '2023-04-19', 'Alpha', '08:15:00', '16:21:00', 0, NULL, NULL),
(614, 23010003, '2023-04-20', 'Cuti', '08:20:00', '16:46:00', 0, NULL, NULL),
(615, 23010003, '2023-04-21', 'Hadir', '08:12:00', '16:03:00', 0, NULL, NULL),
(616, 23010003, '2023-04-22', 'Cuti', '08:30:00', '16:10:00', 0, NULL, NULL),
(617, 23010003, '2023-05-01', 'Alpha', '08:14:00', '16:15:00', 0, NULL, NULL),
(618, 23010003, '2023-05-02', 'Hadir', '08:35:00', '16:50:00', 0, NULL, NULL),
(619, 23010003, '2023-05-03', 'Cuti', '08:41:00', '16:27:00', 0, NULL, NULL),
(620, 23010003, '2023-05-04', 'Hadir', '08:24:00', '16:59:00', 0, NULL, NULL),
(621, 23010003, '2023-05-05', 'Alpha', '08:38:00', '16:46:00', 0, NULL, NULL),
(622, 23010003, '2023-05-06', 'Hadir', '08:11:00', '16:27:00', 0, NULL, NULL),
(623, 23010003, '2023-05-07', 'Cuti', '08:17:00', '16:49:00', 0, NULL, NULL),
(624, 23010003, '2023-05-08', 'Hadir', '08:06:00', '16:29:00', 0, NULL, NULL),
(625, 23010003, '2023-05-09', 'Cuti', '08:19:00', '16:56:00', 0, NULL, NULL),
(626, 23010003, '2023-05-10', 'Hadir', '08:41:00', '16:34:00', 0, NULL, NULL),
(627, 23010003, '2023-05-11', 'Alpha', '08:33:00', '16:25:00', 0, NULL, NULL),
(628, 23010003, '2023-05-12', 'Alpha', '08:47:00', '16:46:00', 0, NULL, NULL),
(629, 23010003, '2023-05-13', 'Hadir', '08:13:00', '16:05:00', 0, NULL, NULL),
(630, 23010003, '2023-05-14', 'Alpha', '08:31:00', '16:24:00', 0, NULL, NULL),
(631, 23010003, '2023-05-15', 'Alpha', '08:09:00', '16:55:00', 0, NULL, NULL),
(632, 23010003, '2023-05-16', 'Cuti', '08:16:00', '16:09:00', 0, NULL, NULL),
(633, 23010003, '2023-05-17', 'Cuti', '08:08:00', '16:02:00', 0, NULL, NULL),
(634, 23010003, '2023-05-18', 'Cuti', '08:51:00', '16:20:00', 0, NULL, NULL),
(635, 23010003, '2023-05-19', 'Hadir', '08:13:00', '16:11:00', 0, NULL, NULL),
(636, 23010003, '2023-05-20', 'Hadir', '08:54:00', '16:54:00', 0, NULL, NULL),
(637, 23010003, '2023-05-21', 'Hadir', '08:11:00', '16:06:00', 0, NULL, NULL),
(638, 23010003, '2023-05-22', 'Cuti', '08:46:00', '16:33:00', 0, NULL, NULL),
(639, 23010003, '2023-06-01', 'Hadir', '08:26:00', '16:55:00', 0, NULL, NULL),
(640, 23010003, '2023-06-02', 'Hadir', '08:21:00', '16:31:00', 0, NULL, NULL),
(641, 23010003, '2023-06-03', 'Cuti', '08:50:00', '16:37:00', 0, NULL, NULL),
(642, 23010003, '2023-06-04', 'Cuti', '08:06:00', '16:23:00', 0, NULL, NULL),
(643, 23010003, '2023-06-05', 'Alpha', '08:07:00', '16:47:00', 0, NULL, NULL),
(644, 23010003, '2023-06-06', 'Alpha', '08:50:00', '16:14:00', 0, NULL, NULL),
(645, 23010003, '2023-06-07', 'Alpha', '08:46:00', '16:36:00', 0, NULL, NULL),
(646, 23010003, '2023-06-08', 'Alpha', '08:10:00', '16:43:00', 0, NULL, NULL),
(647, 23010003, '2023-06-09', 'Hadir', '08:08:00', '16:35:00', 0, NULL, NULL),
(648, 23010003, '2023-06-10', 'Alpha', '08:16:00', '16:40:00', 0, NULL, NULL),
(649, 23010003, '2023-06-11', 'Alpha', '08:44:00', '16:05:00', 0, NULL, NULL),
(650, 23010003, '2023-06-12', 'Hadir', '08:42:00', '16:45:00', 0, NULL, NULL),
(651, 23010003, '2023-06-13', 'Hadir', '08:50:00', '16:49:00', 0, NULL, NULL);
INSERT INTO `presensi_harian` (`id`, `id_pegawai`, `tanggal`, `ket`, `jam_dtg`, `jam_plg`, `is_wfh`, `created_at`, `updated_at`) VALUES
(652, 23010003, '2023-06-14', 'Hadir', '08:54:00', '16:49:00', 0, NULL, NULL),
(653, 23010003, '2023-06-15', 'Cuti', '08:57:00', '16:10:00', 0, NULL, NULL),
(654, 23010003, '2023-06-16', 'Hadir', '08:41:00', '16:43:00', 0, NULL, NULL),
(655, 23010003, '2023-06-17', 'Alpha', '08:21:00', '16:10:00', 0, NULL, NULL),
(656, 23010003, '2023-06-18', 'Cuti', '08:28:00', '16:35:00', 0, NULL, NULL),
(657, 23010003, '2023-06-19', 'Alpha', '08:40:00', '16:41:00', 0, NULL, NULL),
(658, 23010003, '2023-06-20', 'Hadir', '08:40:00', '16:24:00', 0, NULL, NULL),
(659, 23010003, '2023-06-21', 'Cuti', '08:06:00', '16:16:00', 0, NULL, NULL),
(660, 23010003, '2023-06-22', 'Hadir', '08:56:00', '16:50:00', 0, NULL, NULL),
(661, 23010003, '2023-07-01', 'Hadir', '08:55:00', '16:23:00', 0, NULL, NULL),
(662, 23010003, '2023-07-02', 'Hadir', '08:16:00', '16:06:00', 0, NULL, NULL),
(663, 23010003, '2023-07-03', 'Hadir', '08:57:00', '16:39:00', 0, NULL, NULL),
(664, 23010003, '2023-07-04', 'Hadir', '08:40:00', '16:55:00', 0, NULL, NULL),
(665, 23010003, '2023-07-05', 'Cuti', '08:41:00', '16:09:00', 0, NULL, NULL),
(666, 23010003, '2023-07-06', 'Hadir', '08:52:00', '16:40:00', 0, NULL, NULL),
(667, 23010003, '2023-07-07', 'Cuti', '08:03:00', '16:34:00', 0, NULL, NULL),
(668, 23010003, '2023-07-08', 'Cuti', '08:09:00', '16:41:00', 0, NULL, NULL),
(669, 23010003, '2023-07-09', 'Alpha', '08:19:00', '16:44:00', 0, NULL, NULL),
(670, 23010003, '2023-07-10', 'Cuti', '08:19:00', '16:07:00', 0, NULL, NULL),
(671, 23010003, '2023-07-11', 'Alpha', '08:56:00', '16:36:00', 0, NULL, NULL),
(672, 23010003, '2023-07-12', 'Hadir', '08:05:00', '16:42:00', 0, NULL, NULL),
(673, 23010003, '2023-07-13', 'Cuti', '08:55:00', '16:57:00', 0, NULL, NULL),
(674, 23010003, '2023-07-14', 'Cuti', '08:19:00', '16:03:00', 0, NULL, NULL),
(675, 23010003, '2023-07-15', 'Alpha', '08:05:00', '16:34:00', 0, NULL, NULL),
(676, 23010003, '2023-07-16', 'Cuti', '08:00:00', '16:14:00', 0, NULL, NULL),
(677, 23010003, '2023-07-17', 'Hadir', '08:52:00', '16:32:00', 0, NULL, NULL),
(678, 23010003, '2023-07-18', 'Cuti', '08:43:00', '16:49:00', 0, NULL, NULL),
(679, 23010003, '2023-07-19', 'Alpha', '08:23:00', '16:07:00', 0, NULL, NULL),
(680, 23010003, '2023-07-20', 'Hadir', '08:28:00', '16:15:00', 0, NULL, NULL),
(681, 23010003, '2023-07-21', 'Cuti', '08:01:00', '16:54:00', 0, NULL, NULL),
(682, 23010003, '2023-07-22', 'Alpha', '08:55:00', '16:02:00', 0, NULL, NULL),
(683, 23010003, '2023-08-01', 'Alpha', '08:30:00', '16:22:00', 0, NULL, NULL),
(684, 23010003, '2023-08-02', 'Alpha', '08:18:00', '16:12:00', 0, NULL, NULL),
(685, 23010003, '2023-08-03', 'Alpha', '08:08:00', '16:25:00', 0, NULL, NULL),
(686, 23010003, '2023-08-04', 'Hadir', '08:34:00', '16:54:00', 0, NULL, NULL),
(687, 23010003, '2023-08-05', 'Cuti', '08:31:00', '16:04:00', 0, NULL, NULL),
(688, 23010003, '2023-08-06', 'Alpha', '08:11:00', '16:44:00', 0, NULL, NULL),
(689, 23010003, '2023-08-07', 'Alpha', '08:07:00', '16:36:00', 0, NULL, NULL),
(690, 23010003, '2023-08-08', 'Cuti', '08:17:00', '16:06:00', 0, NULL, NULL),
(691, 23010003, '2023-08-09', 'Alpha', '08:13:00', '16:47:00', 0, NULL, NULL),
(692, 23010003, '2023-08-10', 'Alpha', '08:18:00', '16:10:00', 0, NULL, NULL),
(693, 23010003, '2023-08-11', 'Alpha', '08:24:00', '16:13:00', 0, NULL, NULL),
(694, 23010003, '2023-08-12', 'Cuti', '08:26:00', '16:47:00', 0, NULL, NULL),
(695, 23010003, '2023-08-13', 'Hadir', '08:13:00', '16:04:00', 0, NULL, NULL),
(696, 23010003, '2023-08-14', 'Cuti', '08:29:00', '16:22:00', 0, NULL, NULL),
(697, 23010003, '2023-08-15', 'Cuti', '08:59:00', '16:05:00', 0, NULL, NULL),
(698, 23010003, '2023-08-16', 'Cuti', '08:08:00', '16:10:00', 0, NULL, NULL),
(699, 23010003, '2023-08-17', 'Cuti', '08:02:00', '16:39:00', 0, NULL, NULL),
(700, 23010003, '2023-08-18', 'Alpha', '08:19:00', '16:56:00', 0, NULL, NULL),
(701, 23010003, '2023-08-19', 'Cuti', '08:08:00', '16:50:00', 0, NULL, NULL),
(702, 23010003, '2023-08-20', 'Hadir', '08:56:00', '16:47:00', 0, NULL, NULL),
(703, 23010003, '2023-08-21', 'Hadir', '08:30:00', '16:58:00', 0, NULL, NULL),
(704, 23010003, '2023-08-22', 'Alpha', '08:41:00', '16:55:00', 0, NULL, NULL),
(705, 23010003, '2023-09-01', 'Alpha', '08:43:00', '16:38:00', 0, NULL, NULL),
(706, 23010003, '2023-09-02', 'Alpha', '08:49:00', '16:02:00', 0, NULL, NULL),
(707, 23010003, '2023-09-03', 'Hadir', '08:27:00', '16:44:00', 0, NULL, NULL),
(708, 23010003, '2023-09-04', 'Hadir', '08:33:00', '16:08:00', 0, NULL, NULL),
(709, 23010003, '2023-09-05', 'Hadir', '08:50:00', '16:14:00', 0, NULL, NULL),
(710, 23010003, '2023-09-06', 'Alpha', '08:46:00', '16:02:00', 0, NULL, NULL),
(711, 23010003, '2023-09-07', 'Hadir', '08:32:00', '16:39:00', 0, NULL, NULL),
(712, 23010003, '2023-09-08', 'Cuti', '08:19:00', '16:57:00', 0, NULL, NULL),
(713, 23010003, '2023-09-09', 'Cuti', '08:53:00', '16:53:00', 0, NULL, NULL),
(714, 23010003, '2023-09-10', 'Alpha', '08:40:00', '16:42:00', 0, NULL, NULL),
(715, 23010003, '2023-09-11', 'Cuti', '08:03:00', '16:53:00', 0, NULL, NULL),
(716, 23010003, '2023-09-12', 'Hadir', '08:12:00', '16:20:00', 0, NULL, NULL),
(717, 23010003, '2023-09-13', 'Alpha', '08:26:00', '16:50:00', 0, NULL, NULL),
(718, 23010003, '2023-09-14', 'Alpha', '08:53:00', '16:36:00', 0, NULL, NULL),
(719, 23010003, '2023-09-15', 'Hadir', '08:33:00', '16:06:00', 0, NULL, NULL),
(720, 23010003, '2023-09-16', 'Alpha', '08:58:00', '16:43:00', 0, NULL, NULL),
(721, 23010003, '2023-09-17', 'Hadir', '08:42:00', '16:25:00', 0, NULL, NULL),
(722, 23010003, '2023-09-18', 'Hadir', '08:34:00', '16:05:00', 0, NULL, NULL),
(723, 23010003, '2023-09-19', 'Alpha', '08:47:00', '16:46:00', 0, NULL, NULL),
(724, 23010003, '2023-09-20', 'Cuti', '08:56:00', '16:56:00', 0, NULL, NULL),
(725, 23010003, '2023-09-21', 'Alpha', '08:39:00', '16:12:00', 0, NULL, NULL),
(726, 23010003, '2023-09-22', 'Hadir', '08:50:00', '16:28:00', 0, NULL, NULL),
(727, 23010003, '2023-10-01', 'Alpha', '08:31:00', '16:56:00', 0, NULL, NULL),
(728, 23010003, '2023-10-02', 'Alpha', '08:51:00', '16:41:00', 0, NULL, NULL),
(729, 23010003, '2023-10-03', 'Hadir', '08:12:00', '16:45:00', 0, NULL, NULL),
(730, 23010003, '2023-10-04', 'Hadir', '08:22:00', '16:37:00', 0, NULL, NULL),
(731, 23010003, '2023-10-05', 'Hadir', '08:04:00', '16:59:00', 0, NULL, NULL),
(732, 23010003, '2023-10-06', 'Cuti', '08:06:00', '16:03:00', 0, NULL, NULL),
(733, 23010003, '2023-10-07', 'Cuti', '08:21:00', '16:03:00', 0, NULL, NULL),
(734, 23010003, '2023-10-08', 'Hadir', '08:15:00', '16:48:00', 0, NULL, NULL),
(735, 23010003, '2023-10-09', 'Cuti', '08:15:00', '16:30:00', 0, NULL, NULL),
(736, 23010003, '2023-10-10', 'Cuti', '08:15:00', '16:40:00', 0, NULL, NULL),
(737, 23010003, '2023-10-11', 'Cuti', '08:43:00', '16:28:00', 0, NULL, NULL),
(738, 23010003, '2023-10-12', 'Hadir', '08:24:00', '16:26:00', 0, NULL, NULL),
(739, 23010003, '2023-10-13', 'Hadir', '08:01:00', '16:51:00', 0, NULL, NULL),
(740, 23010003, '2023-10-14', 'Alpha', '08:27:00', '16:58:00', 0, NULL, NULL),
(741, 23010003, '2023-10-15', 'Cuti', '08:13:00', '16:40:00', 0, NULL, NULL),
(742, 23010003, '2023-10-16', 'Hadir', '08:35:00', '16:09:00', 0, NULL, NULL),
(743, 23010003, '2023-10-17', 'Hadir', '08:43:00', '16:25:00', 0, NULL, NULL),
(744, 23010003, '2023-10-18', 'Alpha', '08:13:00', '16:27:00', 0, NULL, NULL),
(745, 23010003, '2023-10-19', 'Cuti', '08:45:00', '16:58:00', 0, NULL, NULL),
(746, 23010003, '2023-10-20', 'Alpha', '08:36:00', '16:29:00', 0, NULL, NULL),
(747, 23010003, '2023-10-21', 'Hadir', '08:39:00', '16:53:00', 0, NULL, NULL),
(748, 23010003, '2023-10-22', 'Hadir', '08:28:00', '16:52:00', 0, NULL, NULL),
(749, 23010003, '2023-11-01', 'Alpha', '08:55:00', '16:02:00', 0, NULL, NULL),
(750, 23010003, '2023-11-02', 'Cuti', '08:03:00', '16:14:00', 0, NULL, NULL),
(751, 23010003, '2023-11-03', 'Alpha', '08:19:00', '16:44:00', 0, NULL, NULL),
(752, 23010003, '2023-11-04', 'Alpha', '08:32:00', '16:41:00', 0, NULL, NULL),
(753, 23010003, '2023-11-05', 'Cuti', '08:12:00', '16:38:00', 0, NULL, NULL),
(754, 23010003, '2023-11-06', 'Alpha', '08:18:00', '16:00:00', 0, NULL, NULL),
(755, 23010003, '2023-11-07', 'Alpha', '08:40:00', '16:00:00', 0, NULL, NULL),
(756, 23010003, '2023-11-08', 'Hadir', '08:04:00', '16:53:00', 0, NULL, NULL),
(757, 23010003, '2023-11-09', 'Cuti', '08:19:00', '16:52:00', 0, NULL, NULL),
(758, 23010003, '2023-11-10', 'Hadir', '08:10:00', '16:40:00', 0, NULL, NULL),
(759, 23010003, '2023-11-11', 'Alpha', '08:59:00', '16:36:00', 0, NULL, NULL),
(760, 23010003, '2023-11-12', 'Alpha', '08:59:00', '16:35:00', 0, NULL, NULL),
(761, 23010003, '2023-11-13', 'Alpha', '08:00:00', '16:53:00', 0, NULL, NULL),
(762, 23010003, '2023-11-14', 'Alpha', '08:10:00', '16:55:00', 0, NULL, NULL),
(763, 23010003, '2023-11-15', 'Cuti', '08:27:00', '16:13:00', 0, NULL, NULL),
(764, 23010003, '2023-11-16', 'Hadir', '08:16:00', '16:42:00', 0, NULL, NULL),
(765, 23010003, '2023-11-17', 'Alpha', '08:23:00', '16:55:00', 0, NULL, NULL),
(766, 23010003, '2023-11-18', 'Cuti', '08:02:00', '16:45:00', 0, NULL, NULL),
(767, 23010003, '2023-11-19', 'Cuti', '08:30:00', '16:43:00', 0, NULL, NULL),
(768, 23010003, '2023-11-20', 'Cuti', '08:46:00', '16:15:00', 0, NULL, NULL),
(769, 23010003, '2023-11-21', 'Hadir', '08:19:00', '16:41:00', 0, NULL, NULL),
(770, 23010003, '2023-11-22', 'Hadir', '08:52:00', '16:24:00', 0, NULL, NULL),
(771, 23010003, '2023-12-01', 'Hadir', '08:18:00', '16:10:00', 0, NULL, NULL),
(772, 23010003, '2023-12-02', 'Hadir', '08:21:00', '16:43:00', 0, NULL, NULL),
(773, 23010003, '2023-12-03', 'Alpha', '08:52:00', '16:15:00', 0, NULL, NULL),
(774, 23010003, '2023-12-04', 'Cuti', '08:37:00', '16:59:00', 0, NULL, NULL),
(775, 23010003, '2023-12-05', 'Alpha', '08:00:00', '16:25:00', 0, NULL, NULL),
(776, 23010003, '2023-12-06', 'Hadir', '08:01:00', '16:29:00', 0, NULL, NULL),
(777, 23010003, '2023-12-07', 'Cuti', '08:18:00', '16:25:00', 0, NULL, NULL),
(778, 23010003, '2023-12-08', 'Cuti', '08:45:00', '16:22:00', 0, NULL, NULL),
(779, 23010003, '2023-12-09', 'Hadir', '08:16:00', '16:34:00', 0, NULL, NULL),
(780, 23010003, '2023-12-10', 'Hadir', '08:57:00', '16:28:00', 0, NULL, NULL),
(781, 23010003, '2023-12-11', 'Alpha', '08:20:00', '16:11:00', 0, NULL, NULL),
(782, 23010003, '2023-12-12', 'Hadir', '08:19:00', '16:42:00', 0, NULL, NULL),
(783, 23010003, '2023-12-13', 'Cuti', '08:57:00', '16:36:00', 0, NULL, NULL),
(784, 23010003, '2023-12-14', 'Alpha', '08:53:00', '16:54:00', 0, NULL, NULL),
(785, 23010003, '2023-12-15', 'Hadir', '08:45:00', '16:49:00', 0, NULL, NULL),
(786, 23010003, '2023-12-16', 'Cuti', '08:08:00', '16:37:00', 0, NULL, NULL),
(787, 23010003, '2023-12-17', 'Hadir', '08:37:00', '16:56:00', 0, NULL, NULL),
(788, 23010003, '2023-12-18', 'Alpha', '08:43:00', '16:39:00', 0, NULL, NULL),
(789, 23010003, '2023-12-19', 'Cuti', '08:07:00', '16:56:00', 0, NULL, NULL),
(790, 23010003, '2023-12-20', 'Alpha', '08:41:00', '16:40:00', 0, NULL, NULL),
(791, 23010003, '2023-12-21', 'Hadir', '08:22:00', '16:23:00', 0, NULL, NULL),
(792, 23010003, '2023-12-22', 'Alpha', '08:12:00', '16:29:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_divisi`
--

CREATE TABLE `riwayat_divisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `id_divisi` bigint(20) UNSIGNED NOT NULL,
  `tgl_mulai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `id_jabatan` bigint(20) UNSIGNED NOT NULL,
  `tgl_mulai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_jabatan`
--

INSERT INTO `riwayat_jabatan` (`id`, `id_pegawai`, `id_jabatan`, `tgl_mulai`, `created_at`, `updated_at`) VALUES
(1, 23010002, 2, '1977-06-09', NULL, NULL),
(2, 23010002, 8, '2022-05-30', NULL, NULL),
(3, 23010002, 2, '2007-06-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(2, 'HRD', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09'),
(3, 'STAFF', 'web', '2023-01-30 20:10:09', '2023-01-30 20:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `surat_peringatan`
--

CREATE TABLE `surat_peringatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `tingkat` enum('I','II','III') DEFAULT NULL,
  `pelanggaran` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pelanggaran`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan`
--

CREATE TABLE `tunjangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_shown` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangan`
--

INSERT INTO `tunjangan` (`id`, `nama`, `jumlah`, `is_active`, `is_shown`, `created_at`, `updated_at`) VALUES
(1, 'Tunjangan Makan', 200000, 1, 1, NULL, NULL),
(2, 'Tunjangan Anak (Per Anak)', 2, 1, 0, NULL, NULL),
(3, 'Tunjangan Keluarga', 10, 1, 0, NULL, NULL),
(4, 'Tunjangan Kinerja', 300000, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ini akun Admin', 'superAdmin', 'admin@gmail.com', NULL, '$2y$10$4ifI618auVKxavoXkRia1OojhnqGo4QT8ZyKVZZz.Neb/3ilulw7K', 'admin', NULL, '2023-01-30 23:29:26', '2023-01-30 23:29:26'),
(2, 'ini akun User (non admin)', 'user', 'user@gmail.com', NULL, 'ynsguSbyI5/V/xw69uKzeWUNpl0aU52d618K', 'editor', NULL, '2023-01-30 23:29:27', '2023-01-30 23:29:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuti_id_pegawai_index` (`id_pegawai`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gaji_id_pegawai_index` (`id_pegawai`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_id_parent_index` (`id_parent`),
  ADD KEY `menus_id_hak_akses_index` (`id_hak_akses`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_nik_unique` (`nik`),
  ADD UNIQUE KEY `pegawai_email_unique` (`email`),
  ADD KEY `pegawai_id_jabatan_index` (`id_jabatan`),
  ADD KEY `pegawai_id_divisi_index` (`id_divisi`),
  ADD KEY `pegawai_id_role_index` (`id_role`),
  ADD KEY `pegawai_id_atasan_foreign` (`id_atasan`);

--
-- Indexes for table `pegawai_potongan`
--
ALTER TABLE `pegawai_potongan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_potongan_potongan_id_index` (`potongan_id`),
  ADD KEY `pegawai_potongan_pegawai_id_index` (`pegawai_id`);

--
-- Indexes for table `pegawai_tunjangan`
--
ALTER TABLE `pegawai_tunjangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_tunjangan_tunjangan_id_index` (`tunjangan_id`),
  ADD KEY `pegawai_tunjangan_pegawai_id_index` (`pegawai_id`);

--
-- Indexes for table `penilaian_pegawai`
--
ALTER TABLE `penilaian_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaian_pegawai_id_pegawai_index` (`id_pegawai`);

--
-- Indexes for table `peraturan`
--
ALTER TABLE `peraturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perusahaan_email_public_unique` (`email_public`),
  ADD UNIQUE KEY `perusahaan_email_private_unique` (`email_private`);

--
-- Indexes for table `potongan`
--
ALTER TABLE `potongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensi_harian`
--
ALTER TABLE `presensi_harian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presensi_harian_id_pegawai_index` (`id_pegawai`);

--
-- Indexes for table `riwayat_divisi`
--
ALTER TABLE `riwayat_divisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_divisi_id_pegawai_index` (`id_pegawai`),
  ADD KEY `riwayat_divisi_id_divisi_index` (`id_divisi`);

--
-- Indexes for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_jabatan_id_pegawai_index` (`id_pegawai`),
  ADD KEY `riwayat_jabatan_id_jabatan_index` (`id_jabatan`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_peringatan_id_pegawai_index` (`id_pegawai`);

--
-- Indexes for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1146;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23010004;

--
-- AUTO_INCREMENT for table `pegawai_potongan`
--
ALTER TABLE `pegawai_potongan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai_tunjangan`
--
ALTER TABLE `pegawai_tunjangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaian_pegawai`
--
ALTER TABLE `penilaian_pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peraturan`
--
ALTER TABLE `peraturan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `potongan`
--
ALTER TABLE `potongan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `presensi_harian`
--
ALTER TABLE `presensi_harian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;

--
-- AUTO_INCREMENT for table `riwayat_divisi`
--
ALTER TABLE `riwayat_divisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tunjangan`
--
ALTER TABLE `tunjangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuti`
--
ALTER TABLE `cuti`
  ADD CONSTRAINT `cuti_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_id_hak_akses_foreign` FOREIGN KEY (`id_hak_akses`) REFERENCES `permissions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `menus_id_parent_foreign` FOREIGN KEY (`id_parent`) REFERENCES `menus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_id_atasan_foreign` FOREIGN KEY (`id_atasan`) REFERENCES `pegawai` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_id_jabatan_foreign` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pegawai_potongan`
--
ALTER TABLE `pegawai_potongan`
  ADD CONSTRAINT `pegawai_potongan_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_potongan_potongan_id_foreign` FOREIGN KEY (`potongan_id`) REFERENCES `potongan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai_tunjangan`
--
ALTER TABLE `pegawai_tunjangan`
  ADD CONSTRAINT `pegawai_tunjangan_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_tunjangan_tunjangan_id_foreign` FOREIGN KEY (`tunjangan_id`) REFERENCES `tunjangan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian_pegawai`
--
ALTER TABLE `penilaian_pegawai`
  ADD CONSTRAINT `penilaian_pegawai_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_harian`
--
ALTER TABLE `presensi_harian`
  ADD CONSTRAINT `presensi_harian_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_divisi`
--
ALTER TABLE `riwayat_divisi`
  ADD CONSTRAINT `riwayat_divisi_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_divisi_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD CONSTRAINT `riwayat_jabatan_id_jabatan_foreign` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_jabatan_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  ADD CONSTRAINT `surat_peringatan_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
