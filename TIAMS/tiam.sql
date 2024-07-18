-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2024 lúc 07:53 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tiam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_phim` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `ngaybinhluan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_phim`, `id_user`, `noidung`, `ngaybinhluan`) VALUES
(10, 16, 17, 'Quá hay', '11:02:pm 26-05-2024'),
(11, 9, 17, 'Rất tuyệt vời', '11:03:pm 26-05-2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ngay_tt` datetime NOT NULL,
  `trang_thai` int(1) DEFAULT 0,
  `thanh_tien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ngay_tt`, `trang_thai`, `thanh_tien`) VALUES
(285, '2024-01-19 13:10:54', 0, 984000),
(286, '2024-01-19 13:16:06', 0, 599000),
(287, '2024-01-19 13:18:42', 0, 1059000),
(288, '2024-01-19 13:20:11', 0, 559000),
(289, '2024-01-19 13:25:59', 0, 200000),
(290, '2024-01-19 13:55:03', 0, 1259000),
(291, '2024-01-19 13:58:31', 0, 500000),
(292, '2024-01-19 14:01:09', 0, 859000),
(293, '2024-01-19 14:27:02', 0, 1584000),
(294, '2024-01-19 14:29:38', 0, 959000),
(295, '2024-01-19 16:29:29', 0, 1658000),
(296, '2024-01-19 16:36:18', 0, 1418000),
(297, '2024-01-19 17:11:43', 0, 500000),
(298, '2024-01-19 17:11:43', 0, 500000),
(299, '2024-01-19 17:14:02', 0, 200000),
(300, '2024-01-19 17:15:23', 0, 100000),
(301, '2024-01-19 17:18:36', 0, 400000),
(302, '2024-01-19 17:24:59', 0, 200000),
(303, '2024-01-19 17:25:00', 0, 200000),
(304, '2024-01-23 10:40:53', 0, 1259000),
(305, '2024-05-26 02:11:24', 0, 499000),
(306, '2024-05-26 02:13:08', 0, 499000),
(307, '2024-05-26 02:16:36', 0, 399000),
(308, '2024-05-26 02:17:28', 0, 399000),
(309, '2024-05-26 02:18:40', 0, 399000),
(310, '2024-05-26 02:19:16', 0, 399000),
(311, '2024-05-26 02:19:47', 0, 399000),
(312, '2024-05-26 02:22:12', 0, 399000),
(313, '2024-05-26 02:23:26', 0, 399000),
(314, '2024-05-26 10:46:50', 0, 200000),
(315, '2024-05-26 10:50:52', 0, 200000),
(316, '2024-05-26 10:54:25', 0, 200000),
(317, '2024-05-26 14:16:56', 0, 299000),
(318, '2024-05-26 14:43:59', 0, 200000),
(319, '2024-05-26 14:45:15', 0, 200000),
(320, '2024-05-26 14:45:32', 0, 200000),
(321, '2024-05-26 15:21:59', 0, 499000),
(322, '2024-05-26 15:23:38', 0, 399000),
(323, '2024-05-26 15:55:47', 0, 100000),
(324, '2024-05-26 16:02:24', 0, 419000),
(325, '2024-05-26 16:04:39', 0, 100000),
(326, '2024-05-26 16:06:06', 0, 300000),
(327, '2024-05-26 21:15:57', 0, 799000),
(328, '2024-05-26 21:21:30', 0, 100000),
(329, '2024-05-26 21:22:52', 0, 100000),
(330, '2024-05-26 21:26:06', 0, 499000),
(331, '2024-05-26 21:36:40', 0, 300000),
(332, '2024-05-26 21:40:43', 0, 300000),
(333, '2024-05-26 21:48:25', 0, 300000),
(334, '2024-05-26 21:59:12', 0, 200000),
(335, '2024-05-26 22:22:15', 0, 300000),
(336, '2024-05-26 22:24:15', 0, 300000),
(337, '2024-05-26 22:25:33', 0, 300000),
(338, '2024-05-26 22:33:05', 0, 300000),
(339, '2024-05-26 22:35:01', 0, 300000),
(340, '2024-05-26 22:35:34', 0, 300000),
(341, '2024-05-27 04:29:57', 0, 200000),
(342, '2024-05-27 04:32:28', 0, 200000),
(343, '2024-05-27 04:34:44', 0, 200000),
(344, '2024-05-27 04:36:15', 0, 200000),
(345, '2024-05-27 06:16:48', 0, 100000),
(346, '2024-05-27 06:45:56', 0, 300000),
(347, '2024-05-27 07:41:28', 0, 200000),
(348, '2024-05-27 14:15:39', 0, 200000),
(349, '2024-05-27 14:22:16', 0, 400000),
(350, '2024-05-27 15:39:28', 0, 200000),
(351, '2024-05-27 15:43:38', 0, 100000),
(352, '2024-05-27 16:45:42', 0, 399000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khung_gio_chieu`
--

CREATE TABLE `khung_gio_chieu` (
  `id` int(11) NOT NULL,
  `id_lich_chieu` int(11) NOT NULL,
  `id_phong` int(11) NOT NULL,
  `thoi_gian_chieu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khung_gio_chieu`
--

INSERT INTO `khung_gio_chieu` (`id`, `id_lich_chieu`, `id_phong`, `thoi_gian_chieu`) VALUES
(55, 53, 1, '06:25:00'),
(56, 53, 10, '08:30:00'),
(57, 53, 16, '14:30:00'),
(58, 52, 1, '11:30:00'),
(59, 52, 16, '21:30:00'),
(60, 51, 17, '07:50:00'),
(61, 51, 10, '10:30:00'),
(62, 50, 1, '08:30:00'),
(63, 50, 15, '17:30:00'),
(64, 49, 10, '19:30:00'),
(65, 48, 16, '20:30:00'),
(66, 47, 16, '18:00:00'),
(67, 46, 1, '15:00:00'),
(68, 70, 10, '19:00:00'),
(69, 70, 16, '00:00:00'),
(70, 68, 17, '14:00:00'),
(71, 67, 16, '15:00:00'),
(72, 65, 10, '12:00:00'),
(73, 64, 1, '13:00:00'),
(74, 63, 10, '11:00:00'),
(75, 62, 15, '09:00:00'),
(76, 61, 15, '14:00:00'),
(77, 60, 16, '15:00:00'),
(78, 60, 10, '16:30:00'),
(79, 58, 10, '19:00:00'),
(80, 57, 1, '11:00:00'),
(81, 56, 10, '14:00:00'),
(82, 55, 16, '16:00:00'),
(83, 54, 17, '20:00:00'),
(84, 60, 16, '20:30:00'),
(85, 72, 10, '20:30:00'),
(86, 71, 16, '16:00:00'),
(87, 73, 18, '20:39:00'),
(88, 73, 18, '20:39:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `id` int(11) NOT NULL,
  `id_phim` int(11) NOT NULL,
  `ngay_chieu` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`id`, `id_phim`, `ngay_chieu`) VALUES
(46, 11, '2024-05-29'),
(47, 10, '2024-05-29'),
(48, 9, '2024-06-01'),
(49, 8, '2024-05-29'),
(50, 7, '2024-06-04'),
(51, 6, '2024-05-29'),
(52, 5, '2024-06-06'),
(53, 4, '2024-06-07'),
(54, 16, '2024-05-26'),
(55, 16, '2024-05-27'),
(56, 16, '2024-05-29'),
(57, 15, '2024-05-30'),
(58, 15, '2024-05-31'),
(60, 15, '2024-05-31'),
(61, 15, '2024-05-31'),
(62, 14, '2024-05-31'),
(63, 14, '2024-06-01'),
(64, 13, '2024-06-08'),
(65, 13, '2024-05-29'),
(66, 13, '2024-06-09'),
(67, 12, '2024-05-27'),
(68, 12, '2024-06-05'),
(69, 11, '2024-06-12'),
(70, 11, '2024-06-13'),
(71, 12, '2024-05-30'),
(72, 12, '2024-05-29'),
(73, 16, '2024-05-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphim`
--

CREATE TABLE `loaiphim` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiphim`
--

INSERT INTO `loaiphim` (`id`, `name`) VALUES
(13, 'Kịch'),
(14, 'Cải lương'),
(15, 'Tuồng'),
(16, 'Chèo'),
(17, 'Múa rối'),
(18, 'Xiếc'),
(19, 'Thi đấu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id` int(11) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `daodien` varchar(255) NOT NULL,
  `dienvien` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `mo_ta` text NOT NULL,
  `date_phat_hanh` date NOT NULL,
  `thoi_luong_phim` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `quoc_gia` varchar(255) NOT NULL,
  `gia_han_tuoi` int(11) NOT NULL,
  `link_trailer` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id`, `tieu_de`, `daodien`, `dienvien`, `img`, `mo_ta`, `date_phat_hanh`, `thoi_luong_phim`, `id_loai`, `quoc_gia`, `gia_han_tuoi`, `link_trailer`) VALUES
(4, 'À Ố SHOW', 'Minh Hải', 'BB Trần ,Minh Tuyết,Hải Triều ,Xuân Bách,Tiến Thành', 'ao.jpg', 'À Ố Show – một cái tên được giới mộ điệu nhớ đến, trân trọng và ca tụng như một đại sứ giúp lan tỏa văn hóa Việt ra thế giới. Bắt đầu lưu diễn từ năm 2024, À Ố Show đã ghé thăm hơn 15 quốc gia, chinh phục khán giả tại khắp 4 châu lục.', '2024-05-01', 120, 18, 'Việt Nam', 12, '<iframe width=\"866\" height=\"487\" src=\"https://www.youtube.com/embed/bHKWy_7KGNw\" title=\"A O SHOW - LUNE PRODUCTION - OFFICIAL TRAILER\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(5, 'Tấm Cám đại chiến', 'Bảo Ngọc - Hùng Lâm', 'Đình Toàn, Đại Nghĩa, Tuyền Mập, Mỹ Duyên, Hòa Hiệp', 'tamcam.png', '\"Tấm Cám: Đại Chiến\" là một vở kịch được lấy cảm hứng từ câu chuyện cổ tích nổi tiếng \"Tấm Cám\" của Việt Nam, nhưng được sáng tạo và phát triển thêm để mang đến những yếu tố mới lạ và hấp dẫn cho khán giả', '2024-05-10', 175, 13, 'Việt Nam', 12, '<iframe width=\"710\" height=\"399\" src=\"https://www.youtube.com/embed/TTWIpiQdUhw\" title=\"TẤM CÁM ĐẠI CHIẾN | Huỳnh Lập, Diệu Nhi, Rhymastic [OFFICIAL]\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(6, 'Má ơi út dìa', ' Trung Dân', 'Thanh Thuỷ, Quang Thảo, Đình Toàn, Quốc Thịnh, Đại Nghĩa', 'maoiutdia.png', 'Vở kịch diễn ra trong bối cảnh nông thôn miền Tây Nam Bộ, nơi có những cánh đồng lúa bát ngát, những con sông chảy hiền hòa và những người dân chân chất, mộc mạc. Nội dung xoay quanh cuộc sống gia đình, những mâu thuẫn và tình cảm giữa các thành viên trong gia đình, đặc biệt là giữa mẹ và con.', '2024-04-24', 120, 14, 'Việt Nam', 10, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/qJ6yINM7fcs\" title=\"MÁ ƠI ÚT DÌA! |Thanh Thuỷ, Đình Toàn, Quốc Thịnh, Đại Nghĩa, Quang Thảo,... | Kịch IDECAF\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(7, 'Làm vua', 'Minh Quân', ' Đình Toàn, Trương Hạ, Đại Nghĩa,  Hoàng Trinh, Quang Thảo, Trà Ngọc, Phi Nga', 'lamvua.jpg', 'Vở Tuồng diễn ra trong bối cảnh triều đại phong kiến Việt Nam, tập trung vào cuộc sống và những thách thức của một vị vua trẻ vừa lên ngôi. Từ những âm mưu chính trị trong triều đình đến những mối quan hệ cá nhân và trách nhiệm với đất nước, \"Làm Vua\" là một bức tranh toàn diện về sự phức tạp và áp lực của việc trị vì.', '2024-05-16', 100, 15, 'Việt Nam', 16, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/2u9ZPWMP6-w\" title=\"Làm Vua  Nhà hát Tuồng VN\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(8, 'Đồng vọng rối ', 'Minh Ngọc - Hùng Lâm', 'Phạm Hùng, Phương Nguyễn,Phạm Hạnh, Công Tôn Nghĩa, Minh SangPhạm Hùng, Phương Nguyễn,Phạm Hạnh, Công Tôn Nghĩa, Minh Sang', 'trungthu.jpg', '\"Đồng Vọng Rối Nước\" diễn ra trên một sân khấu nước, nơi những con rối sống động được điều khiển dưới nước. Nội dunglà sự kết hợp giữa những câu chuyện dân gian Việt Nam và những tình tiết hiện đại, phản ánh đời sống, văn hóa và tinh thần của người Việt qua các thời kỳ.', '2024-04-29', 140, 17, 'Việt Nam', 12, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/uWaZao7kJ9w\" title=\"Nhà Hát Múa Rối Việt Nam - Đồng Vọng Rối Việt\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(9, 'Hòn Nam Bộ', 'Quang Thảo', 'Bạch Long, Thanh Thủy, Hoàng Trinh, Đình Toàn, Đại Nghĩa, Mỹ Duyên, Hồng Ánh, Quang Thảo, Mai Phượng', 'honnambos.jpg', '\"Chèo Hồn Nam Bộ\" là một vở kịch chèo đặc sắc, kết hợp những yếu tố văn hóa truyền thống của miền Bắc với chất liệu dân gian phong phú của vùng Nam Bộ. Vở kịch không chỉ là một tác phẩm nghệ thuật giải trí mà còn là một cầu nối văn hóa giữa hai miền đất nước, mang đến cho khán giả những trải nghiệm mới mẻ và đầy cảm xúc', '2024-05-02', 120, 16, 'Việt Nam', 10, '<iframe width=\"866\" height=\"487\" src=\"https://www.youtube.com/embed/TAYOEGPbong\" title=\"Trích đoạn cải lương &quot;Hòn vọng phu&quot; (NSƯT Vũ Luân - Hồng Thắm - Tấn Phúc) | Tài tử miệt vườn\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(10, 'Tiết giao đoạn ', 'Tạ Ôn Minh', ' Mỹ Duyên, Đình Toàn, Đại Nghĩa, Hoà Hiệp', 'gianthan.jpg', '\r\n\"Tuồng: Tiết Giao Đoạn Ngọc\" là một tác phẩm nghệ thuật kịch truyền thống của Việt Nam, được sáng tác và biểu diễn theo phong cách tuồng, một dòng nghệ thuật kịch cổ truyền có nguồn gốc từ Trung Quốc. Trong tuồng, \"Tiết Giao Đoạn Ngọc\" là một trong những tiết (đoạn) quan trọng, thường được biểu diễn với sự trang trọng và kịch tính.', '2024-05-08', 120, 15, 'Việt Nam', 16, '<iframe width=\"677\" height=\"495\" src=\"https://www.youtube.com/embed/4jJuZLWIkvE\" title=\"SÂN KHẤU TUỒNG - TIẾT GIAO ĐOẠT NGỌC\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(11, 'Tơ duyên', ' Hùng Lâm', ' Hồng Ánh, Mỹ Duyên, Đình Toàn, Đại Nghĩa', 'toduyen.png', ' \"Tơ Duyên\" là một tác phẩm nghệ thuật truyền thống của Việt Nam, thường được biểu diễn dưới hình thức cải lương, một dòng nghệ thuật truyền thống có nguồn gốc từ Trung Quốc. Trong \"Tơ Duyên\", câu chuyện thường xoay quanh những tình huống lãng mạn, đầy cảm xúc, thường kể về những mối tình đẹp và bi kịch.', '2024-05-09', 100, 14, 'Việt Nam', 16, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/_jpnqGJ-aik\" title=\"Tơ Duyên - Huỳnh Đông ft Vân Trang\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(12, 'Song Lang', ' Trung Dân', 'Thanh Thủy, Quang Thảo, Mai Phượng, Tuyết Thu, Bạch Long', 'songlang.jpg', 'Lấy bối cảnh Sài Gòn những năm 1980 giàu trí tưởng tượng, Song Lang là một thế giới ngầm nghiệt ngã ẩn giấu một trái tim dịu dàng, lãng mạn. ', '2024-05-28', 150, 13, 'Việt Nam', 12, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/bn0Iunw1oUc\" title=\"SONG LANG (2018) | Bloopers reel\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(13, 'Triều Nguyễn', 'Minh Lâm', ' Đình Toàn, Kan Lê, Quốc Tuấn, Quốc Thịnh, Bảo Cường', 'trieunguyen.jpg', '\r\nKịch Triều Nguyễn là một thể loại kịch truyền thống của Việt Nam, được tạo ra và phát triển trong thời kỳ Triều Nguyễn (1802-1945), khi triều đại này cai trị miền Trung và Nam Bộ. Kịch Triều Nguyễn mang trong mình nét đặc trưng của văn hóa cung đình và giai cấp quý tộc, thường tập trung vào những câu chuyện lịch sử, truyền thuyết và tâm linh liên quan đến triều đại Nguyễn.', '2024-05-30', 100, 13, 'Việt Nam', 16, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/opWSyimAo50\" title=\"Ca kịch triều châu\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(14, 'Quê em chống dịch', 'Việt ', 'Đình Toàn, Đại Nghĩa, Hoà Hiệp, Phi Nga, Đông Hải, Thiên Trang', 'quêm.jpg', 'Vở diễn \"Quê em chống dịch\" là một tác phẩm nghệ thuật độc đáo, sáng tạo, sử dụng nghệ thuật múa rối nước và rối cạn để kể về câu chuyện chống dịch Covid-19 của người dân một làng quê Việt Nam.', '2024-06-07', 120, 17, 'Việt Nam', 12, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/RfU93G3CZCo\" title=\"Kịch Rối: QUÊ EM CHỐNG DỊCH - Nhà hát Múa rối Thăng Long\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(15, 'Làng tôi', 'Ngọc Vân', 'Đông Hải, Thiên Trang, Mai Phượng, Bảo Cường.', 'langtoi.jpg', 'Vở diễn được thực hiện dưới ánh sáng và âm nhạc dân gian nhằm tái hiện cuộc sống nông thôn Việt Nam. Trên nền nhạc, kèm theo những tiếng tre gõ lách cách chúng ta sẽ được thấy một góc sinh hoạt làng xã của nông thôn Bắc Bộ. Đó là những nghệ sĩ xiếc biểu diễn các động tác uốn dẻo, nhảy cầu, thực hiện các vũ điệu xiếc với những thanh tre.', '2024-05-31', 100, 18, 'Việt Nam', 12, '<iframe width=\"703\" height=\"395\" src=\"https://www.youtube.com/embed/VJegCjvK8sU\" title=\"LANG TOI - MY VILLAGE | VIETNAMESE CULTURE SHOW | OFFICIAL TRAILER\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(16, 'Chàng lúa', 'Việt ', 'Đình Toàn, Đại Nghĩa, Hoà Hiệp, Phi Nga, Đông Hải, Thiên Trang', 'changlua.jpg', '\"Cải lương chàng lúa\" là một vở kịch dân gian truyền thống của Việt Nam, thường được biểu diễn bằng hình thức cải lương - một loại hình nghệ thuật kết hợp giữa hát cải lương và diễn kịch. Vở kịch này thường mô tả cuộc đời và tình yêu của người nông dân, thường xoay quanh những khó khăn, thử thách và niềm vui của cuộc sống nông thôn.', '2024-06-19', 150, 14, 'Việt Nam', 12, '<iframe width=\"866\" height=\"487\" src=\"https://www.youtube.com/embed/MbYZH6wgMus\" title=\"Cải Lương &quot; CHÀNG LÚA &quot; | Vũ Linh, Tài Linh, Thoại Mỹ | Cải Lương Xã Hội Xưa Hay Nhất\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongchieu`
--

CREATE TABLE `phongchieu` (
  `id` int(11) NOT NULL,
  `id_rap` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phongchieu`
--

INSERT INTO `phongchieu` (`id`, `id_rap`, `name`) VALUES
(1, 1, 'P01'),
(10, 0, 'P02'),
(15, 0, 'P03'),
(16, 0, 'P04'),
(17, 0, 'P05'),
(18, 0, 'PREMIUM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `vai_tro` int(1) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `name`, `user`, `pass`, `email`, `phone`, `dia_chi`, `vai_tro`, `img`) VALUES
(8, 'Van A', 'admin', '123456', 'vanvan@gmail.com', '0366508004', 'Phú Xuyên Hà Nội', 1, ''),
(10, 'Minh Tiến', 'admin2', '1234', 'tien@gmail.com', '1234567890', 'HCM', 2, ''),
(11, 'KUKA', 'kuka123', '1234', 'email.ra@gmail.com', '0123456789', 'juja2', 1, ''),
(14, 'nhanvien', 'nhanvien', '1234', 'nhanvien@gmail.com', '0987666642', 'nhanvien', 1, ''),
(17, 'van', 'van86', '123456', 'vansieunhan862002@gmail.com', '0705487340', 'HCM', 0, ''),
(19, 'Lê Ngọc vân', 'van11', '$2y$10$2C7IQHEzSoApFjfCJuw/0.DTvSV9BQm6vAjUGsTaY8F.ltmNGge6a', 'aa5@gmail.com', '0705487340', 'HCM', 0, ''),
(20, 'Minh Tiến', 'tien22', '$2y$10$gXdZBe8LjpmDRnT0UavVBOA2pJcKVPoku267jQBRDxsA.I6mvl.m6', 'ngocvan741@gmail.com', '1234567890', 'HCM', 0, ''),
(21, 'Minh Tiến', 'minhtien', '$2y$10$QX2O.MN2P1kHaJ09TKaB3uApmlByC.77gfeKZGrxRiQemjFLA2j1C', 'vominhtien10092002@gmail.com', '0328658917', 'HCM', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `id` int(11) NOT NULL,
  `id_phim` int(11) NOT NULL,
  `id_thoi_gian_chieu` int(11) NOT NULL,
  `id_ngay_chieu` int(11) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `ghe` varchar(255) NOT NULL,
  `combo` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 0,
  `ngay_dat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`id`, `id_phim`, `id_thoi_gian_chieu`, `id_ngay_chieu`, `id_tk`, `ghe`, `combo`, `price`, `id_hd`, `trang_thai`, `ngay_dat`) VALUES
(311, 11, 67, 46, 17, 'G3', 'Combo-Hủy-Diệt ', '499000', 305, 1, '2024-05-26 02:11:24'),
(312, 11, 67, 46, 17, 'G3', 'Combo-Hủy-Diệt ', '499000', 306, 1, '2024-05-26 02:13:08'),
(313, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 307, 1, '2024-05-26 02:16:36'),
(314, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 308, 1, '2024-05-26 02:17:28'),
(315, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 309, 1, '2024-05-26 02:18:40'),
(316, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 310, 1, '2024-05-26 02:19:16'),
(317, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 311, 1, '2024-05-26 02:19:47'),
(318, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 312, 1, '2024-05-26 02:22:12'),
(319, 11, 67, 46, 17, 'E4', 'Combo-Hủy-Diệt ', '399000', 313, 1, '2024-05-26 02:23:26'),
(320, 10, 66, 47, 17, 'F3', '', '200000', 314, 1, '2024-05-26 10:46:50'),
(321, 10, 66, 47, 17, 'F3', '', '200000', 315, 1, '2024-05-26 10:50:52'),
(322, 10, 66, 47, 17, 'F3', '', '200000', 316, 1, '2024-05-26 10:54:25'),
(323, 10, 66, 47, 17, 'B3', 'Combo-Hủy-Diệt ', '299000', 317, 1, '2024-05-26 14:16:56'),
(324, 9, 65, 48, 17, 'E4', '', '200000', 318, 1, '2024-05-26 14:43:59'),
(325, 9, 65, 48, 17, 'E4', '', '200000', 319, 1, '2024-05-26 14:45:15'),
(326, 9, 65, 48, 17, 'E4', '', '200000', 320, 1, '2024-05-26 14:45:32'),
(327, 9, 65, 48, 17, 'F6,A5', 'Combo-Hủy-Diệt ', '499000', 321, 1, '2024-05-26 15:21:59'),
(328, 10, 66, 47, 17, 'D3', 'Combo-Hủy-Diệt ', '399000', 322, 1, '2024-05-26 15:23:38'),
(329, 10, 66, 47, 17, 'C3', '', '100000', 323, 1, '2024-05-26 15:55:47'),
(330, 9, 65, 48, 17, 'E9,D9', 'Combo-Halo-2 ', '419000', 324, 1, '2024-05-26 16:02:24'),
(331, 11, 67, 46, 17, 'C4', '', '100000', 325, 1, '2024-05-26 16:04:39'),
(332, 10, 66, 47, 17, 'H6', '', '300000', 326, 1, '2024-05-26 16:06:06'),
(333, 4, 56, 53, 17, 'E4,E3,E2', 'Combo-Hủy-Diệt ', '799000', 327, 0, '2024-05-26 21:15:57'),
(334, 4, 56, 53, 17, 'B4', '', '100000', 328, 0, '2024-05-26 21:21:30'),
(335, 4, 56, 53, 17, 'B4', '', '100000', 329, 0, '2024-05-26 21:22:52'),
(336, 7, 62, 50, 18, 'G4', 'Combo-Hủy-Diệt ', '499000', 330, 0, '2024-05-26 21:26:06'),
(337, 7, 62, 50, 18, 'G7', '', '300000', 331, 0, '2024-05-26 21:36:40'),
(338, 7, 62, 50, 18, 'H3', '', '300000', 332, 0, '2024-05-26 21:40:43'),
(339, 7, 62, 50, 18, 'H5', '', '300000', 333, 0, '2024-05-26 21:48:25'),
(340, 11, 67, 46, 18, 'F8', '', '200000', 334, 0, '2024-05-26 21:59:12'),
(341, 11, 67, 46, 18, 'H2', '', '300000', 335, 0, '2024-05-26 22:22:15'),
(342, 11, 67, 46, 18, 'H2', '', '300000', 336, 0, '2024-05-26 22:24:15'),
(343, 11, 67, 46, 18, 'H2', '', '300000', 337, 0, '2024-05-26 22:25:33'),
(344, 11, 67, 46, 18, 'H3', '', '300000', 338, 0, '2024-05-26 22:33:05'),
(345, 11, 67, 46, 18, 'H3', '', '300000', 339, 0, '2024-05-26 22:35:01'),
(346, 11, 67, 46, 18, 'H3', '', '300000', 340, 1, '2024-05-26 22:35:34'),
(347, 15, 79, 58, 20, 'F2', '', '200000', 341, 0, '2024-05-27 04:29:57'),
(348, 15, 79, 58, 20, 'F2', '', '200000', 342, 2, '2024-05-27 04:32:28'),
(349, 15, 79, 58, 20, 'F2', '', '200000', 343, 1, '2024-05-27 04:34:44'),
(350, 15, 79, 58, 20, 'F2', '', '200000', 344, 1, '2024-05-27 04:36:15'),
(351, 15, 77, 60, 20, 'H1', '', '100000', 345, 1, '2024-05-27 06:16:48'),
(352, 15, 79, 58, 20, 'H4', '', '300000', 346, 2, '2024-05-27 06:45:56'),
(353, 16, 81, 56, 20, 'D3', '', '200000', 347, 2, '2024-05-27 07:41:28'),
(354, 12, 70, 68, 19, 'C2,C1', '', '200000', 348, 1, '2024-05-27 14:15:39'),
(355, 12, 85, 72, 19, 'G2,G1', '', '400000', 349, 1, '2024-05-27 14:22:16'),
(356, 12, 85, 72, 19, 'F2', '', '200000', 350, 0, '2024-05-27 15:39:28'),
(357, 15, 77, 60, 19, 'E1', '', '100000', 351, 1, '2024-05-27 15:43:38'),
(358, 15, 80, 57, 19, 'A2,A1', 'Combo-Hủy-Diệt ', '399000', 352, 1, '2024-05-27 16:45:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_phim` (`id_phim`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khung_gio_chieu`
--
ALTER TABLE `khung_gio_chieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lich_chieu` (`id_lich_chieu`),
  ADD KEY `id_phong` (`id_phong`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_phim` (`id_phim`);

--
-- Chỉ mục cho bảng `loaiphim`
--
ALTER TABLE `loaiphim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_loai` (`id_loai`);

--
-- Chỉ mục cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rap` (`id_rap`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tk` (`id_tk`),
  ADD KEY `ve_ibfk_2` (`id_thoi_gian_chieu`),
  ADD KEY `id_ngay_chieu` (`id_ngay_chieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT cho bảng `khung_gio_chieu`
--
ALTER TABLE `khung_gio_chieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `loaiphim`
--
ALTER TABLE `loaiphim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `ve`
--
ALTER TABLE `ve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`id_phim`) REFERENCES `phim` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `lichchieu_ibfk_1` FOREIGN KEY (`id_phim`) REFERENCES `phim` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
