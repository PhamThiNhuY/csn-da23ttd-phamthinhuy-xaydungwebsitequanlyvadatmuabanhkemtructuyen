-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2026 lúc 06:28 AM
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
(12, 15, 50, 1, 400000.00);

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
(15, 'Cát Tường', '99999999999', 'ấp 16', 'Giao lúc 5 giờ chiều', '2026-01-03 13:26:54', 'Đã xác nhận', '2026-01-05');

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
(1, 'Bánh kem hoa hồng pastel', '                                                                                                                Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                                                                                                                                                                                                            ', 300000.00, '1 (19).jpg', 1, 1),
(2, 'BenTo Cake Hoa Hồng Màu Kem', '                                                                                   Bánh bento có kích thước nhỏ xinh, thiết kế đơn giản nhưng cực kỳ dễ thương. Phù hợp cho sinh nhật nhỏ, kỷ niệm riêng tư hoặc làm quà tặng bất ngờ. Bánh gọn nhẹ, tiện mang theo và vẫn đảm bảo hương vị thơm ngon.                                                                                      ', 100000.00, 'z7365504633614_9b5a29ff9f92b884fd110ee37e4c999a.jpg', 4, 0),
(9, 'Bánh Kem Trái Cây Việt Quốc & Dưa Lưới', '                             Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                                                                                               ', 300000.00, 'z7365501921940_694f9a82c54746d455a70c9f43be84ad.jpg', 3, 0),
(10, 'Bánh Trái Cây Mix Nhiều Loại', '                            Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                                                                                                                                                                                                                                                                                                                                                                    ', 300000.00, 'z7375983405684_21351ae8d03a9d7e3cca230de115841d.jpg', 3, 0),
(11, 'Bánh Kem Hoa Be Mix Màu', '                                              Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                                                                  ', 200000.00, 'z7375983364378_fa57d99ac3c935f4c2d45d4eb7adcc33.jpg', 1, 0),
(12, 'Bánh Bông Lan Trứng Muối Mix Dâu Tây', '                                                                                                                            Bánh bông lan trứng muối có cốt bánh mềm xốp, kết hợp cùng sốt béo mặn hài hòa và trứng muối đậm vị. Hương vị quen thuộc, dễ ăn, phù hợp với nhiều độ tuổi và được nhiều khách hàng yêu thích.                                                                                    ', 250000.00, '7.jpg', 2, 0),
(14, 'Bánh Kem Hoa Hướng dương', '                                                                                                                                             Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                                                             ', 300000.00, 'z7365502134107_57bc93c30ade9a882808afc400579dc6.jpg', 1, 0),
(18, 'Bánh Bông Lan Trứng Muối Hình Hoa', '                                                                                                                            Bánh bông lan trứng muối có cốt bánh mềm xốp, kết hợp cùng sốt béo mặn hài hòa và trứng muối đậm vị. Hương vị quen thuộc, dễ ăn, phù hợp với nhiều độ tuổi và được nhiều khách hàng yêu thích.                                                                                                                          ', 200000.00, '8.jpg', 2, 0),
(19, 'Bánh Kem Trái Việt Quốc & Dâu Tây', '                            Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                        ', 300000.00, 'z7375983420165_49eab85cb1e762b9b7bd0cf84bc4041a.jpg', 3, 0),
(20, 'Bánh Kem Hoa Hồng Mix Đủ Loại', '                                                                                                                                                  Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                                                                                                                                                                                                                                  ', 250000.00, '999.jpg', 1, 0),
(21, 'Bánh Kem Hoa Vàng', '                                                       Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.<br />\r\n                                                                                                                                                         ', 250000.00, 'hoavang.jpg', 1, 0),
(22, 'Bánh Kem Hoa Hồng ', '                                                          Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                                                                                                           ', 250000.00, 'z7375983372759_63decf26195bbe9cdb8547e9c6c473e7.jpg', 1, 0),
(23, 'Bông Lan Trứng Muối', '                                Bánh bông lan trứng muối có cốt bánh mềm xốp, kết hợp cùng sốt béo mặn hài hòa và trứng muối đậm vị. Hương vị quen thuộc, dễ ăn, phù hợp với nhiều độ tuổi và được nhiều khách hàng yêu thích.                                                                        ', 200000.00, 'hrhrur.jpg', 2, 0),
(24, 'Bông Lan Trứng Muối Tròn', '                                                                                                        Bánh bông lan trứng muối có cốt bánh mềm xốp, kết hợp cùng sốt béo mặn hài hòa và trứng muối đậm vị. Hương vị quen thuộc, dễ ăn, phù hợp với nhiều độ tuổi và được nhiều khách hàng yêu thích.                                                    ', 200000.00, 'hêògikodoe.jpg', 2, 0),
(25, 'Bánh Bông Lan Trứng Muối Hai Mặt', '                                                                                                                      Bánh bông lan trứng muối có cốt bánh mềm xốp, kết hợp cùng sốt béo mặn hài hòa và trứng muối đậm vị. Hương vị quen thuộc, dễ ăn, phù hợp với nhiều độ tuổi và được nhiều khách hàng yêu thích.                                                                                          ', 200000.00, '10.jpg', 2, 1),
(26, 'Bông Lan Trứng Muối  Hình Trái Tim', '                                                                                                                 Bánh bông lan trứng muối có cốt bánh mềm xốp, kết hợp cùng sốt béo mặn hài hòa và trứng muối đậm vị. Hương vị quen thuộc, dễ ăn, phù hợp với nhiều độ tuổi và được nhiều khách hàng yêu thích.                                                                                                                                                   ', 200000.00, 'z7365504608091_eae3a00356974546e363c43a8fa8c9a7.jpg', 2, 0),
(27, 'Bánh Kem Trái Dâu Tây mix Bánh Orio', '                                                                                      Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                                                                                          ', 250000.00, 'z7365501906227_b4350ab091704825d687685338b7a769.jpg', 3, 0),
(28, 'Bánh Kem Trái Dâu Tây Xanh Mint', '                                                                                     Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                                                                                                                                                                                                                                                       ', 200000.00, 'z7365502049999_718cdce1119e46d2e09a327b53f307a0.jpg', 3, 1),
(29, 'Bánh Kem Trái Dâu Tây Mặt Cười', '                                                        Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                                                                    ', 200000.00, 'z7365502099136_32ad38ab6ad4313e1dc31f88d1d2aa44.jpg', 3, 0),
(30, 'Bento Cake Xanh Lá', '                                                                                Bánh bento có kích thước nhỏ xinh, thiết kế đơn giản nhưng cực kỳ dễ thương. Phù hợp cho sinh nhật nhỏ, kỷ niệm riêng tư hoặc làm quà tặng bất ngờ. Bánh gọn nhẹ, tiện mang theo và vẫn đảm bảo hương vị thơm ngon.                                                                                                                                                                                    ', 100000.00, 'z7365501988161_def32f6df8201d5a2fccfdb62e5639fd.jpg', 4, 1),
(31, 'Bento Cake Hình Trái Tim', '                                                                 Bánh bento có kích thước nhỏ xinh, thiết kế đơn giản nhưng cực kỳ dễ thương. Phù hợp cho sinh nhật nhỏ, kỷ niệm riêng tư hoặc làm quà tặng bất ngờ. Bánh gọn nhẹ, tiện mang theo và vẫn đảm bảo hương vị thơm ngon.                                       ', 100000.00, 'z7365504623561_06c1e26a03df9bea371d191848423543.jpg', 4, 0),
(32, 'Bento Cake Màu Hồng', '                                    Bánh bento có kích thước nhỏ xinh, thiết kế đơn giản nhưng cực kỳ dễ thương. Phù hợp cho sinh nhật nhỏ, kỷ niệm riêng tư hoặc làm quà tặng bất ngờ. Bánh gọn nhẹ, tiện mang theo và vẫn đảm bảo hương vị thơm ngon.                                                                    ', 100000.00, 'z7365504737184_d11e469fea1b7253c2ed227b06dc7338.jpg', 4, 0),
(33, 'Bento Cake Xanh Dương', '                                                                                                                                      Bánh bento có kích thước nhỏ xinh, thiết kế đơn giản nhưng cực kỳ dễ thương. Phù hợp cho sinh nhật nhỏ, kỷ niệm riêng tư hoặc làm quà tặng bất ngờ. Bánh gọn nhẹ, tiện mang theo và vẫn đảm bảo hương vị thơm ngon.                                                                                                                              ', 100000.00, 'z7365504709626_7a02f1d0c330e61fcdf60beb6ad3a855.jpg', 4, 0),
(34, 'BenTo Cake Màu Tím', '                                                Bánh bento có kích thước nhỏ xinh, thiết kế đơn giản nhưng cực kỳ dễ thương. Phù hợp cho sinh nhật nhỏ, kỷ niệm riêng tư hoặc làm quà tặng bất ngờ. Bánh gọn nhẹ, tiện mang theo và vẫn đảm bảo hương vị thơm ngon.                                                        ', 100000.00, 'z7365504759747_1deb393e3e3809bfe33cd317d5fb959a.jpg', 4, 0),
(35, 'Bánh Kem Ngày 8/3', '                                                        Bánh kem sự kiện được thiết kế theo yêu cầu, phù hợp cho các buổi lễ, tiệc công ty, khai trương hoặc kỷ niệm quan trọng. Kiểu dáng sang trọng, trang trí chỉn chu, góp phần làm nổi bật không gian và ý nghĩa của sự kiện.                                                                                                                                                        ', 280000.00, 'z7375983394705_3ab1d44f1453c29070c001c4d8a81930.jpg', 5, 0),
(36, 'Bánh Kem Ngày Quốc Tế Thiếu Nhi', '                                                                                                                 Bánh kem sự kiện được thiết kế theo yêu cầu, phù hợp cho các buổi lễ, tiệc công ty, khai trương hoặc kỷ niệm quan trọng. Kiểu dáng sang trọng, trang trí chỉn chu, góp phần làm nổi bật không gian và ý nghĩa của sự kiện.                                                                                                                                                                                                       ', 280000.00, 'gnkml;kj.jpg', 5, 0),
(37, 'Bánh Kem Giáng Sinh', '                                                                                  Bánh kem Giáng Sinh được thiết kế với gam màu đặc trưng của Noel như đỏ – xanh – trắng, kết hợp các họa tiết quen thuộc như ông già Noel, cây thông, bông tuyết, mang đến không khí lễ hội ấm áp và rộn ràng.<br /><br />\r\nChiếc bánh là lựa chọn hoàn hảo cho đêm Giáng Sinh, tiệc cuối năm, họp mặt gia đình và bạn bè                                                                                                                                                                           ', 250000.00, 'z7376096728006_ba0bbfeba69752ce1e73c1c05dc8a1d3.jpg', 5, 0),
(38, 'Bánh Kem 2 Tầng  Đơn Giản', '                                                        Bánh kem 2 tầng được thiết kế tinh tế, sang trọng, là lựa chọn hoàn hảo cho tiệc cưới, lễ ăn hỏi, lễ đính hôn hoặc các sự kiện trọng đại.<br /><br />\r\nBánh mang phong cách thanh lịch, dễ tùy chỉnh theo màu sắc – hoa trang trí – topper cô dâu chú rể, giúp không gian tiệc thêm phần ấn tượng và ý nghĩa.                                                                                                                                                                                       ', 400000.00, 'z7365502007762_80745e32c56d69aaafed36f9bd141586.jpg', 5, 0),
(39, 'Bánh Kem 2 Tầng Mix Hoa Vàng', '                                                                                                         Bánh kem 2 tầng được thiết kế tinh tế, sang trọng, là lựa chọn hoàn hảo cho tiệc cưới, lễ ăn hỏi, lễ đính hôn hoặc các sự kiện trọng đại.<br /><br />\r\nBánh mang phong cách thanh lịch, dễ tùy chỉnh theo màu sắc – hoa trang trí – topper cô dâu chú rể, giúp không gian tiệc thêm phần ấn tượng và ý nghĩa.                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 400000.00, 'z7392821619594_4e9462bfaa2e5a0cf7dc9f80900bda80.jpg', 5, 0),
(40, 'Bánh Kem Túi Vàng Ngày Tết', '                                                        Bánh kẹo đồng tiền mang ý nghĩa chiêu tài – hút lộc, tượng trưng cho sự sung túc và thịnh vượng trong dịp Tết Nguyên Đán.<br /><br />\r\nThiết kế đồng tiền vàng nổi bật, kết hợp sắc màu Tết rực rỡ, rất phù hợp để biếu tặng, trưng bàn tiệc hoặc mâm bánh ngày xuân.                                                                                                                                                                                                            ', 250000.00, 'z7390800813209_827fa68f7398d266e7e755d46b46aaed.jpg', 5, 0),
(42, 'Bánh Kem Hoa Hồng Màu Cam', '                            Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                                ', 300000.00, '1 (22).jpg', 1, 0),
(43, 'Bánh Kem Mix Nhiều Hoa Hồng Đủ Màu ', '                             Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                               ', 300000.00, '1 (9).jpg', 1, 0),
(44, 'Bánh Kem Hình Bó Hoa Tulip Hồng', '                                                                                    Bánh kem sinh nhật hoa mang phong cách nhẹ nhàng, tinh tế với các mẫu hoa kem trang trí thủ công tỉ mỉ. Cốt bánh mềm, kem béo nhẹ, ít ngọt, phù hợp làm quà tặng sinh nhật cho người thân, bạn bè hoặc những ai yêu thích sự thanh lịch.                                                                                                                            ', 300000.00, 'z7365502036518_ec48844510a05018930494755ccfe040.jpg', 1, 0),
(45, 'Bánh Kem Trái Dâu Tây Màu Vàng', '                                                                                    Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                                        ', 200000.00, 'z7365502051885_8a17a735162b8c39a1f170f3190e9dce.jpg', 3, 0),
(46, 'Bánh Kem Trái Cây Mix Bánh Ốc Quế', '                            Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                        ', 200000.00, 'z7365501890655_21a20d79108a1b0d2e717ead8bc1dbf4.jpg', 3, 0),
(47, 'Bánh Kem Trái Cây Mix Bánh Ngọt', '                                                        Bánh kem trái cây tươi được trang trí bằng các loại trái cây theo mùa, mang đến hương vị thanh mát, nhẹ ngọt và không ngấy. Phù hợp cho những ai yêu thích sự tươi mới và các buổi tiệc gia đình, họp mặt bạn bè.                                                ', 200000.00, '1 (3).jpg', 3, 0),
(48, 'Bánh Kem 2 Tầng Mix Hoa Hồng Kem', '                            Bánh kem 2 tầng được thiết kế tinh tế, sang trọng, là lựa chọn hoàn hảo cho tiệc cưới, lễ ăn hỏi, lễ đính hôn hoặc các sự kiện trọng đại.<br />\r\nBánh mang phong cách thanh lịch, dễ tùy chỉnh theo màu sắc – hoa trang trí – topper cô dâu chú rể, giúp không gian tiệc thêm phần ấn tượng và ý nghĩa.                        ', 400000.00, 'z7392821606815_b1ed669a718c1a51151c131981d3de69.jpg', 5, 0),
(49, 'Bánh Kem 2 Tầng Mix Hoa Hồng Đỏ', '                            Bánh kem 2 tầng được thiết kế tinh tế, sang trọng, là lựa chọn hoàn hảo cho tiệc cưới, lễ ăn hỏi, lễ đính hôn hoặc các sự kiện trọng đại.<br />\r\nBánh mang phong cách thanh lịch, dễ tùy chỉnh theo màu sắc – hoa trang trí – topper cô dâu chú rể, giúp không gian tiệc thêm phần ấn tượng và ý nghĩa.                        ', 400000.00, 'z7392821628768_89d47742bfba9a311265d0470fc3b7a3.jpg', 5, 0),
(50, 'Bánh Kem 2 Tầng Mix Hoa Hồng', ' Bánh kem 2 tầng được thiết kế tinh tế, sang trọng, là lựa chọn hoàn hảo cho tiệc cưới, lễ ăn hỏi, lễ đính hôn hoặc các sự kiện trọng đại.<br /><br />\r\nBánh mang phong cách thanh lịch, dễ tùy chỉnh theo màu sắc – hoa trang trí – topper cô dâu chú rể, giúp không gian tiệc thêm phần ấn tượng và ý nghĩa.                                                ', 400000.00, 'z7392821599088_1dcffbc82156415561264d20b8c2c5f6.jpg', 5, 0);

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
  MODIFY `MaCTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
