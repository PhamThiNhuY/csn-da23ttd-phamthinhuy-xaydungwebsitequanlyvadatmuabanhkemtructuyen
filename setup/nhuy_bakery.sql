-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2026 lúc 02:32 AM
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
-- Cơ sở dữ liệu: `nhuy_bakery`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `MaCTDH` int(11) NOT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `MaBanh` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `DonGia` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`MaCTDH`, `MaDH`, `MaBanh`, `SoLuong`, `DonGia`) VALUES
(1, 1, 1, 1, 450000.00),
(2, 6, 14, 1, 300000.00),
(3, 7, 1, 1, 450000.00),
(4, 8, 20, 1, 300000.00),
(5, 9, 11, 1, 100000.00),
(6, 10, 11, 1, 100000.00),
(7, 11, 2, 1, 120000.00),
(8, 12, 28, 1, 300000.00),
(9, 13, 30, 1, 100000.00),
(10, 14, 1, 1, 300000.00),
(11, 14, 50, 1, 400000.00),
(12, 15, 50, 1, 400000.00),
(13, 16, 28, 1, 200000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`MaDM`, `TenDM`) VALUES
(1, 'Bánh Sinh Nhật Hoa'),
(2, 'Bánh Bông Lan Trứng Muối'),
(3, 'Bánh Kem Trái Cây Tươi'),
(4, 'Bánh Kem Bento'),
(5, 'Bánh Kem Sự Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `MaDH` int(11) NOT NULL,
  `TenKhachHang` varchar(255) DEFAULT NULL,
  `SDT` varchar(255) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `NgayDat` datetime DEFAULT NULL,
  `TrangThai` varchar(255) DEFAULT NULL,
  `NgayNhan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`MaDH`, `TenKhachHang`, `SDT`, `DiaChi`, `GhiChu`, `NgayDat`, `TrangThai`, `NgayNhan`) VALUES
(1, 'ny', '090909009', 'vinh long', '', '2025-12-13 10:51:29', 'Chờ xử lý', NULL),
(2, 'bê', '090103999', 'ấp 11 ', '', '2025-12-26 14:09:33', 'Đã hủy', NULL),
(4, 'vi', '0332333333', 'càng long', '', '2025-12-26 14:21:34', 'Đã hủy', NULL),
(5, 'vi', '0332333333', 'an trường a', '', '2025-12-26 14:23:42', 'Đã hủy', NULL),
(6, 'vi', '0332333333', 'an trường a', '', '2025-12-26 14:24:44', 'Chờ xác nhận', NULL),
(7, 'son le', '9999999', 'càng long', '', '2025-12-26 14:28:21', 'Chờ xác nhận', NULL),
(8, 'bê', '0332333333', 'ấp 11 ', '', '2025-12-26 14:42:07', 'Chờ xác nhận', NULL),
(9, 'bê', '0332333333', 'ấp 11 ', '', '2025-12-26 14:43:49', 'Chờ xác nhận', NULL),
(10, 'bê', '0332333333', 'ấp 11 ', '', '2025-12-26 14:48:32', 'Đã xác nhận', NULL),
(11, 'bê', '0332333333', 'ấp 11 ', '', '2025-12-26 14:50:18', 'Đã xác nhận', NULL),
(12, 'chau', '090909090', 'aấp 12 long huu', 'Ít kem, Nhiều cốt', '2025-12-30 10:47:19', 'Đang giao', NULL),
(13, 'lpv', '0999999999', 'aấp 12 long huu', 'ít kem', '2026-01-01 16:03:09', 'Chờ xác nhận', '2026-01-05'),
(14, 'Phát Tài', '090909099', 'Duyên Hải', 'Giao lúc 1 giờ chiều, Ghi chữ Chúc mừng sinh nhật trên bánh', '2026-01-03 11:22:44', 'Chờ xác nhận', '2026-01-05'),
(15, 'Cát Tường', '99999999999', 'ấp 16', 'Giao lúc 5 giờ chiều', '2026-01-03 13:26:54', 'Đã xác nhận', '2026-01-05'),
(16, 'Vi', '99999999999', 'ấp 16', 'giao 1 giờ', '2026-01-07 05:01:38', 'Đã xác nhận', '2026-01-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `MaQuanTri` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhauMaHoa` varchar(255) NOT NULL,
  `HoTen` varchar(255) DEFAULT NULL,
  `VaiTro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri`
--

INSERT INTO `quan_tri` (`MaQuanTri`, `TenDangNhap`, `MatKhauMaHoa`, `HoTen`, `VaiTro`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Quản trị hệ thống', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `MaBanh` int(11) NOT NULL,
  `TenBanh` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `GiaBanh` decimal(15,2) DEFAULT NULL,
  `DuongDanAnh` varchar(255) DEFAULT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `NoiBat` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`MaBanh`, `TenBanh`, `MoTa`, `GiaBanh`, `DuongDanAnh`, `MaDM`, `NoiBat`) VALUES
(1, 'Bánh kem hoa hồng pastel', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 300000.00, '1 (19).jpg', 1, 1),
(2, 'BenTo Cake Hoa Hồng Màu Kem', '<p>\r\nBánh bento 10cm là dòng bánh mini nhỏ gọn, được thiết kế đơn giản nhưng tinh tế, phù hợp cho những buổi\r\nchúc mừng sinh nhật, kỷ niệm hoặc những dịp đặc biệt mang tính riêng tư. Bánh có kích thước vừa phải,\r\ndễ thưởng thức, kết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, tạo cảm giác ngon miệng\r\nmà không gây ngấy. Đây là lựa chọn lý tưởng cho các buổi tiệc nhỏ hoặc làm quà tặng ý nghĩa.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, có thể thay đổi theo yêu cầu.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, kích thước nhỏ gọn 10cm, phù hợp 1–2 người dùng.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Thiết kế tối giản, trang trí dễ thương, phù hợp phong cách trẻ trung.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật nhỏ, kỷ niệm, tặng bạn bè hoặc người thân.</li>\r\n</ul>\r\n', 100000.00, 'z7365504633614_9b5a29ff9f92b884fd110ee37e4c999a.jpg', 4, 0),
(9, 'Bánh Kem Trái Cây Việt Quốc & Dưa Lưới', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n\r\n', 300000.00, 'z7365501921940_694f9a82c54746d455a70c9f43be84ad.jpg', 3, 0),
(10, 'Bánh Trái Cây Mix Nhiều Loại', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n', 300000.00, 'z7375983405684_21351ae8d03a9d7e3cca230de115841d.jpg', 3, 0),
(11, 'Bánh Kem Hoa Be Mix Màu', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 200000.00, 'z7375983364378_fa57d99ac3c935f4c2d45d4eb7adcc33.jpg', 1, 0),
(12, 'Bánh Bông Lan Trứng Muối Mix Dâu Tây', '<p>\r\nBánh bông lan trứng muối là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị đậm đà, béo mặn hài hòa\r\nvà dễ ăn. Bánh là sự kết hợp giữa cốt bông lan mềm mịn, chà bông thơm, trứng muối béo bùi cùng các loại sốt\r\nđặc trưng, tạo nên hương vị hấp dẫn và khác biệt. Đây là lựa chọn phù hợp cho những buổi xế, tiệc nhẹ\r\nhoặc làm quà tặng cho người thân, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Béo mặn hài hòa, kết hợp giữa trứng muối, chà bông và các loại sốt đặc trưng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bông lan mềm xốp, ẩm mịn, không khô.</li>\r\n  <li><strong>Nguyên liệu:</strong> Trứng muối chất lượng, chà bông, sốt béo và cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí đơn giản, tập trung vào topping trứng muối và chà bông.</li>\r\n  <li><strong>Phù hợp:</strong> Ăn vặt, tiệc nhẹ, họp mặt bạn bè hoặc làm quà tặng.</li>\r\n</ul>\r\n', 250000.00, '7.jpg', 2, 0),
(14, 'Bánh Kem Hoa Hướng dương', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 300000.00, 'z7365502134107_57bc93c30ade9a882808afc400579dc6.jpg', 1, 0),
(18, 'Bánh Bông Lan Trứng Muối Hình Hoa', '<p>\r\nBánh bông lan trứng muối là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị đậm đà, béo mặn hài hòa\r\nvà dễ ăn. Bánh là sự kết hợp giữa cốt bông lan mềm mịn, chà bông thơm, trứng muối béo bùi cùng các loại sốt\r\nđặc trưng, tạo nên hương vị hấp dẫn và khác biệt. Đây là lựa chọn phù hợp cho những buổi xế, tiệc nhẹ\r\nhoặc làm quà tặng cho người thân, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Béo mặn hài hòa, kết hợp giữa trứng muối, chà bông và các loại sốt đặc trưng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bông lan mềm xốp, ẩm mịn, không khô.</li>\r\n  <li><strong>Nguyên liệu:</strong> Trứng muối chất lượng, chà bông, sốt béo và cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí đơn giản, tập trung vào topping trứng muối và chà bông.</li>\r\n  <li><strong>Phù hợp:</strong> Ăn vặt, tiệc nhẹ, họp mặt bạn bè hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, '8.jpg', 2, 0),
(19, 'Bánh Kem Trái Việt Quốc & Dâu Tây', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n', 300000.00, 'z7375983420165_49eab85cb1e762b9b7bd0cf84bc4041a.jpg', 3, 0),
(20, 'Bánh Kem Hoa Hồng Mix Đủ Loại', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 250000.00, '999.jpg', 1, 0),
(21, 'Bánh Kem Hoa Vàng', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 250000.00, 'hoavang.jpg', 1, 0),
(22, 'Bánh Kem Hoa Hồng ', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 250000.00, 'z7375983372759_63decf26195bbe9cdb8547e9c6c473e7.jpg', 1, 0),
(23, 'Bông Lan Trứng Muối', '<p>\r\nBánh bông lan trứng muối là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị đậm đà, béo mặn hài hòa\r\nvà dễ ăn. Bánh là sự kết hợp giữa cốt bông lan mềm mịn, chà bông thơm, trứng muối béo bùi cùng các loại sốt\r\nđặc trưng, tạo nên hương vị hấp dẫn và khác biệt. Đây là lựa chọn phù hợp cho những buổi xế, tiệc nhẹ\r\nhoặc làm quà tặng cho người thân, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Béo mặn hài hòa, kết hợp giữa trứng muối, chà bông và các loại sốt đặc trưng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bông lan mềm xốp, ẩm mịn, không khô.</li>\r\n  <li><strong>Nguyên liệu:</strong> Trứng muối chất lượng, chà bông, sốt béo và cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí đơn giản, tập trung vào topping trứng muối và chà bông.</li>\r\n  <li><strong>Phù hợp:</strong> Ăn vặt, tiệc nhẹ, họp mặt bạn bè hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, 'hrhrur.jpg', 2, 0),
(24, 'Bông Lan Trứng Muối Tròn', '<p>\r\nBánh bông lan trứng muối là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị đậm đà, béo mặn hài hòa\r\nvà dễ ăn. Bánh là sự kết hợp giữa cốt bông lan mềm mịn, chà bông thơm, trứng muối béo bùi cùng các loại sốt\r\nđặc trưng, tạo nên hương vị hấp dẫn và khác biệt. Đây là lựa chọn phù hợp cho những buổi xế, tiệc nhẹ\r\nhoặc làm quà tặng cho người thân, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Béo mặn hài hòa, kết hợp giữa trứng muối, chà bông và các loại sốt đặc trưng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bông lan mềm xốp, ẩm mịn, không khô.</li>\r\n  <li><strong>Nguyên liệu:</strong> Trứng muối chất lượng, chà bông, sốt béo và cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí đơn giản, tập trung vào topping trứng muối và chà bông.</li>\r\n  <li><strong>Phù hợp:</strong> Ăn vặt, tiệc nhẹ, họp mặt bạn bè hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, 'hêògikodoe.jpg', 2, 0),
(25, 'Bánh Bông Lan Trứng Muối Hai Mặt', '<p>\r\nBánh bông lan trứng muối là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị đậm đà, béo mặn hài hòa\r\nvà dễ ăn. Bánh là sự kết hợp giữa cốt bông lan mềm mịn, chà bông thơm, trứng muối béo bùi cùng các loại sốt\r\nđặc trưng, tạo nên hương vị hấp dẫn và khác biệt. Đây là lựa chọn phù hợp cho những buổi xế, tiệc nhẹ\r\nhoặc làm quà tặng cho người thân, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Béo mặn hài hòa, kết hợp giữa trứng muối, chà bông và các loại sốt đặc trưng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bông lan mềm xốp, ẩm mịn, không khô.</li>\r\n  <li><strong>Nguyên liệu:</strong> Trứng muối chất lượng, chà bông, sốt béo và cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí đơn giản, tập trung vào topping trứng muối và chà bông.</li>\r\n  <li><strong>Phù hợp:</strong> Ăn vặt, tiệc nhẹ, họp mặt bạn bè hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, '10.jpg', 2, 1),
(26, 'Bông Lan Trứng Muối  Hình Trái Tim', '<p>\r\nBánh bông lan trứng muối là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị đậm đà, béo mặn hài hòa\r\nvà dễ ăn. Bánh là sự kết hợp giữa cốt bông lan mềm mịn, chà bông thơm, trứng muối béo bùi cùng các loại sốt\r\nđặc trưng, tạo nên hương vị hấp dẫn và khác biệt. Đây là lựa chọn phù hợp cho những buổi xế, tiệc nhẹ\r\nhoặc làm quà tặng cho người thân, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Béo mặn hài hòa, kết hợp giữa trứng muối, chà bông và các loại sốt đặc trưng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bông lan mềm xốp, ẩm mịn, không khô.</li>\r\n  <li><strong>Nguyên liệu:</strong> Trứng muối chất lượng, chà bông, sốt béo và cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí đơn giản, tập trung vào topping trứng muối và chà bông.</li>\r\n  <li><strong>Phù hợp:</strong> Ăn vặt, tiệc nhẹ, họp mặt bạn bè hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, 'z7365504608091_eae3a00356974546e363c43a8fa8c9a7.jpg', 2, 0),
(27, 'Bánh Kem Trái Dâu Tây mix Bánh Orio', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n', 250000.00, 'z7365501906227_b4350ab091704825d687685338b7a769.jpg', 3, 0),
(28, 'Bánh Kem Trái Dâu Tây Xanh Mint', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng yêu thích nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nSự kết hợp hài hòa giữa cốt bánh mềm mịn, kem tươi béo nhẹ và trái cây tươi theo mùa giúp bánh vừa ngon miệng \r\nvừa mang lại cảm giác tươi mát khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, kỷ niệm \r\nhay những buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Trà xanh thanh mát, dâu tây tươi chua nhẹ, không ngấy.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt.</li>\r\n  <li><strong> Nguyên liệu:</strong> Dâu tây tươi, kem tươi chất lượng cao.</li>\r\n  <li><strong> Hình thức:</strong> Tông xanh mint hiện đại, trang trí thủ công.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, tiệc nhỏ, quà tặng.</li>\r\n</ul>\r\n', 200000.00, 'z7365502049999_718cdce1119e46d2e09a327b53f307a0.jpg', 3, 1),
(29, 'Bánh Kem Trái Dâu Tây Mặt Cười', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, 'z7365502099136_32ad38ab6ad4313e1dc31f88d1d2aa44.jpg', 3, 0),
(30, 'Bento Cake Xanh Lá', '<p>\r\nBánh bento 10cm là dòng bánh mini nhỏ gọn, được thiết kế đơn giản nhưng tinh tế, phù hợp cho những buổi\r\nchúc mừng sinh nhật, kỷ niệm hoặc những dịp đặc biệt mang tính riêng tư. Bánh có kích thước vừa phải,\r\ndễ thưởng thức, kết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, tạo cảm giác ngon miệng\r\nmà không gây ngấy. Đây là lựa chọn lý tưởng cho các buổi tiệc nhỏ hoặc làm quà tặng ý nghĩa.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, có thể thay đổi theo yêu cầu.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, kích thước nhỏ gọn 10cm, phù hợp 1–2 người dùng.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Thiết kế tối giản, trang trí dễ thương, phù hợp phong cách trẻ trung.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật nhỏ, kỷ niệm, tặng bạn bè hoặc người thân.</li>\r\n</ul>\r\n', 100000.00, 'z7365501988161_def32f6df8201d5a2fccfdb62e5639fd.jpg', 4, 1),
(31, 'Bento Cake Hình Trái Tim', '<p>\r\nBánh bento 10cm là dòng bánh mini nhỏ gọn, được thiết kế đơn giản nhưng tinh tế, phù hợp cho những buổi\r\nchúc mừng sinh nhật, kỷ niệm hoặc những dịp đặc biệt mang tính riêng tư. Bánh có kích thước vừa phải,\r\ndễ thưởng thức, kết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, tạo cảm giác ngon miệng\r\nmà không gây ngấy. Đây là lựa chọn lý tưởng cho các buổi tiệc nhỏ hoặc làm quà tặng ý nghĩa.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, có thể thay đổi theo yêu cầu.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, kích thước nhỏ gọn 10cm, phù hợp 1–2 người dùng.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Thiết kế tối giản, trang trí dễ thương, phù hợp phong cách trẻ trung.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật nhỏ, kỷ niệm, tặng bạn bè hoặc người thân.</li>\r\n</ul>\r\n', 100000.00, 'z7365504623561_06c1e26a03df9bea371d191848423543.jpg', 4, 0),
(32, 'Bento Cake Màu Hồng', '<p>\r\nBánh bento 10cm là dòng bánh mini nhỏ gọn, được thiết kế đơn giản nhưng tinh tế, phù hợp cho những buổi\r\nchúc mừng sinh nhật, kỷ niệm hoặc những dịp đặc biệt mang tính riêng tư. Bánh có kích thước vừa phải,\r\ndễ thưởng thức, kết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, tạo cảm giác ngon miệng\r\nmà không gây ngấy. Đây là lựa chọn lý tưởng cho các buổi tiệc nhỏ hoặc làm quà tặng ý nghĩa.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, có thể thay đổi theo yêu cầu.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, kích thước nhỏ gọn 10cm, phù hợp 1–2 người dùng.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Thiết kế tối giản, trang trí dễ thương, phù hợp phong cách trẻ trung.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật nhỏ, kỷ niệm, tặng bạn bè hoặc người thân.</li>\r\n</ul>\r\n', 100000.00, 'z7365504737184_d11e469fea1b7253c2ed227b06dc7338.jpg', 4, 0),
(33, 'Bento Cake Xanh Dương', '<p>\r\nBánh bento 10cm là dòng bánh mini nhỏ gọn, được thiết kế đơn giản nhưng tinh tế, phù hợp cho những buổi\r\nchúc mừng sinh nhật, kỷ niệm hoặc những dịp đặc biệt mang tính riêng tư. Bánh có kích thước vừa phải,\r\ndễ thưởng thức, kết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, tạo cảm giác ngon miệng\r\nmà không gây ngấy. Đây là lựa chọn lý tưởng cho các buổi tiệc nhỏ hoặc làm quà tặng ý nghĩa.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, có thể thay đổi theo yêu cầu.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, kích thước nhỏ gọn 10cm, phù hợp 1–2 người dùng.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Thiết kế tối giản, trang trí dễ thương, phù hợp phong cách trẻ trung.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật nhỏ, kỷ niệm, tặng bạn bè hoặc người thân.</li>\r\n</ul>\r\n', 100000.00, 'z7365504709626_7a02f1d0c330e61fcdf60beb6ad3a855.jpg', 4, 0),
(34, 'BenTo Cake Màu Tím', '<p>\r\nBánh bento 10cm là dòng bánh mini nhỏ gọn, được thiết kế đơn giản nhưng tinh tế, phù hợp cho những buổi\r\nchúc mừng sinh nhật, kỷ niệm hoặc những dịp đặc biệt mang tính riêng tư. Bánh có kích thước vừa phải,\r\ndễ thưởng thức, kết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, tạo cảm giác ngon miệng\r\nmà không gây ngấy. Đây là lựa chọn lý tưởng cho các buổi tiệc nhỏ hoặc làm quà tặng ý nghĩa.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, có thể thay đổi theo yêu cầu.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, kích thước nhỏ gọn 10cm, phù hợp 1–2 người dùng.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày.</li>\r\n  <li><strong>Hình thức:</strong> Thiết kế tối giản, trang trí dễ thương, phù hợp phong cách trẻ trung.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật nhỏ, kỷ niệm, tặng bạn bè hoặc người thân.</li>\r\n</ul>\r\n', 100000.00, 'z7365504759747_1deb393e3e3809bfe33cd317d5fb959a.jpg', 4, 0),
(35, 'Bánh Kem Ngày 8/3', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Quốc tế Phụ nữ 8/3 và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 280000.00, 'z7375983394705_3ab1d44f1453c29070c001c4d8a81930.jpg', 5, 0),
(36, 'Bánh Kem Ngày Quốc Tế Thiếu Nhi', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Quốc tế Thiếu nhi và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 280000.00, 'gnkml;kj.jpg', 5, 0),
(37, 'Bánh Kem Giáng Sinh', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Giáng Sinh và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 250000.00, 'z7376096728006_ba0bbfeba69752ce1e73c1c05dc8a1d3.jpg', 5, 0),
(38, 'Bánh Kem 2 Tầng  Đơn Giản', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Quốc tế Thiếu nhi, 8/3, Giáng Sinh, tiệc cưới và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 400000.00, 'z7365502007762_80745e32c56d69aaafed36f9bd141586.jpg', 5, 0),
(39, 'Bánh Kem 2 Tầng Mix Hoa Vàng', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Tiệc cưới và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 400000.00, 'z7392821619594_4e9462bfaa2e5a0cf7dc9f80900bda80.jpg', 5, 0),
(40, 'Bánh Kem Túi Vàng Ngày Tết', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Ngày Tết, khai trương và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 250000.00, 'z7390800813209_827fa68f7398d266e7e755d46b46aaed.jpg', 5, 0),
(42, 'Bánh Kem Hoa Hồng Màu Cam', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 300000.00, '1 (22).jpg', 1, 0),
(43, 'Bánh Kem Mix Nhiều Hoa Hồng Đủ Màu ', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 300000.00, '1 (9).jpg', 1, 0),
(44, 'Bánh Kem Hình Bó Hoa Tulip Hồng', '<p>\r\nBánh kem sinh nhật hoa là dòng bánh được thiết kế dành riêng cho các dịp sinh nhật, mang ý nghĩa chúc mừng,\r\nyêu thương và sự tinh tế trong từng chi tiết. Bánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ\r\nvà các họa tiết hoa trang trí được tạo hình thủ công, giúp chiếc bánh vừa ngon miệng vừa đẹp mắt.\r\nĐây là lựa chọn lý tưởng để dành tặng người thân, bạn bè trong những dịp đặc biệt.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Ngọt dịu, béo nhẹ, dễ ăn, phù hợp với nhiều độ tuổi.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, kết hợp hài hòa với lớp kem mịn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh được làm mới mỗi ngày, đảm bảo độ tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí hoa kem tạo hình thủ công, màu sắc trang nhã, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Sinh nhật, kỷ niệm, tặng người thân, bạn bè hoặc những dịp cần chiếc bánh ý nghĩa.</li>\r\n</ul>\r\n', 300000.00, 'z7365502036518_ec48844510a05018930494755ccfe040.jpg', 1, 0),
(45, 'Bánh Kem Trái Dâu Tây Màu Vàng', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, 'z7365502051885_8a17a735162b8c39a1f170f3190e9dce.jpg', 3, 0),
(46, 'Bánh Kem Trái Cây Mix Bánh Ốc Quế', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n\r\n', 200000.00, 'z7365501890655_21a20d79108a1b0d2e717ead8bc1dbf4.jpg', 3, 0),
(47, 'Bánh Kem Trái Cây Mix Bánh Ngọt', '<p>\r\nBánh kem trái cây là dòng bánh được nhiều khách hàng ưa chuộng nhờ hương vị thanh nhẹ, dễ ăn và không gây ngấy. \r\nBánh là sự kết hợp hài hòa giữa cốt bánh mềm mịn, lớp kem tươi béo nhẹ và các loại trái cây tươi theo mùa, \r\ngiúp mang lại cảm giác tươi mát và dễ chịu khi thưởng thức. Đây là lựa chọn phù hợp cho nhiều dịp như sinh nhật, \r\nkỷ niệm hoặc các buổi họp mặt gia đình, bạn bè.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong> Hương vị:</strong> Thanh nhẹ, cân bằng giữa vị ngọt của kem và vị chua tự nhiên của trái cây tươi.</li>\r\n  <li><strong> Cấu trúc bánh:</strong> Cốt bánh mềm xốp, giữ ẩm tốt, các lớp bánh và kem được phân bố đều.</li>\r\n  <li><strong> Nguyên liệu:</strong> Trái cây tươi theo mùa, kem tươi chất lượng cao, đảm bảo độ tươi ngon.</li>\r\n  <li><strong> Hình thức:</strong> Trang trí bằng trái cây tươi, màu sắc hài hòa, phù hợp nhiều phong cách tiệc.</li>\r\n  <li><strong> Phù hợp:</strong> Sinh nhật, kỷ niệm, tiệc nhỏ, họp mặt gia đình hoặc làm quà tặng.</li>\r\n</ul>\r\n', 200000.00, '1 (3).jpg', 3, 0),
(48, 'Bánh Kem 2 Tầng Mix Hoa Hồng Kem', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Tiệc cưới và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 400000.00, 'z7392821606815_b1ed669a718c1a51151c131981d3de69.jpg', 5, 0),
(49, 'Bánh Kem 2 Tầng Mix Hoa Hồng Đỏ', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Tiệc cưới và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 400000.00, 'z7392821628768_89d47742bfba9a311265d0470fc3b7a3.jpg', 5, 0),
(50, 'Bánh Kem 2 Tầng Mix Hoa Hồng', '<p>\r\nBánh kem sự kiện là dòng bánh được thiết kế dành riêng cho các dịp lễ và sự kiện đặc biệt như Quốc tế Thiếu nhi,\r\nNgày Quốc tế Phụ nữ 8/3, Giáng Sinh hoặc tiệc cưới. Bánh được đầu tư kỹ lưỡng từ hương vị đến hình thức,\r\nkết hợp giữa cốt bánh mềm mịn và lớp kem tươi béo nhẹ, mang lại trải nghiệm vừa ngon miệng vừa ấn tượng.\r\nĐây là lựa chọn phù hợp cho các buổi tiệc, sự kiện đông người và những khoảnh khắc đáng nhớ.\r\n</p>\r\n\r\n<ul class=\"cake-desc\">\r\n  <li><strong>Hương vị:</strong> Đa dạng, dễ ăn, có thể tùy chỉnh theo từng sự kiện và nhu cầu khách hàng.</li>\r\n  <li><strong>Cấu trúc bánh:</strong> Cốt bánh mềm xốp, có thể thiết kế nhiều tầng, phù hợp cho tiệc lớn.</li>\r\n  <li><strong>Nguyên liệu:</strong> Kem tươi chất lượng cao, cốt bánh làm mới mỗi ngày, đảm bảo an toàn và tươi ngon.</li>\r\n  <li><strong>Hình thức:</strong> Trang trí theo chủ đề sự kiện, từ đơn giản đến cầu kỳ, sang trọng.</li>\r\n  <li><strong>Phù hợp:</strong> Tiệc cưới và các sự kiện đặc biệt khác.</li>\r\n</ul>\r\n', 400000.00, 'z7392821599088_1dcffbc82156415561264d20b8c2c5f6.jpg', 5, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`MaCTDH`),
  ADD KEY `MaDH` (`MaDH`),
  ADD KEY `MaBanh` (`MaBanh`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`MaDH`);

--
-- Chỉ mục cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`MaQuanTri`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`MaBanh`),
  ADD KEY `MaDM` (`MaDM`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `MaCTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  MODIFY `MaQuanTri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `MaBanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `don_hang` (`MaDH`),
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_2` FOREIGN KEY (`MaBanh`) REFERENCES `san_pham` (`MaBanh`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`MaDM`) REFERENCES `danh_muc` (`MaDM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
