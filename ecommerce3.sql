-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 08:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Đỏ'),
(2, 'Đen'),
(3, 'Xanh dương'),
(4, 'Vàng'),
(5, 'Xanh lá'),
(6, 'Trắng'),
(7, 'Cam'),
(8, 'Nâu'),
(9, 'Nâu vàng'),
(10, 'Hồng'),
(11, 'Pha trộn'),
(12, 'Xanh lam nhạt'),
(13, 'Tím'),
(14, 'Tím nhạt'),
(15, 'Cam hồng'),
(16, 'Hoàng kim'),
(17, 'Xám'),
(18, 'Tro'),
(19, 'Hạt dẻ'),
(20, 'Bạc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(2, 'An Giang'),
(3, 'Bà Rịa – Vũng Tàu'),
(4, 'Bắc Giang'),
(5, 'Bắc Kạn'),
(6, 'Bạc Liêu'),
(7, 'Bắc Ninh'),
(8, 'Bến Tre'),
(9, 'Bình Định'),
(10, 'Bình Dương'),
(11, 'Bình Phước'),
(12, 'Bình Thuận'),
(13, 'Cà Mau'),
(14, 'Cần Thơ'),
(15, 'Cao Bằng'),
(16, 'Đà Nẵng'),
(17, 'Đắk Lắk'),
(18, 'Đắk Nông'),
(19, 'Điện Biên'),
(20, 'Đồng Nai'),
(21, 'Đồng Tháp'),
(22, 'Gia Lai'),
(23, 'Hà Giang'),
(24, 'Hà Nam'),
(25, 'Hà Nội'),
(26, 'Hà Tĩnh'),
(27, 'Hải Dương'),
(28, 'Hải Phòng'),
(29, 'Hậu Giang'),
(30, 'Hòa Bình'),
(31, 'Hưng Yên'),
(32, 'Khánh Hòa'),
(33, 'Kiên Giang'),
(34, 'Kon Tum'),
(35, 'Lai Châu'),
(36, 'Lâm Đồng'),
(37, 'Lạng Sơn'),
(38, 'Lào Cai'),
(39, 'Long An'),
(40, 'Nam Định'),
(41, 'Nghệ An'),
(42, 'Ninh Bình'),
(43, 'Ninh Thuận'),
(44, 'Phú Thọ'),
(45, 'Phú Yên'),
(46, 'Quảng Bình'),
(47, 'Quảng Nam'),
(48, 'Quảng Ngãi'),
(49, 'Quảng Ninh'),
(50, 'Quảng Trị'),
(51, 'Sóc Trăng'),
(52, 'Sơn La'),
(53, 'Tây Ninh'),
(54, 'Thái Bình'),
(55, 'Thái Nguyên'),
(56, 'Thanh Hóa'),
(57, 'Thừa Thiên Huế'),
(58, 'Tiền Giang'),
(59, 'TP Hồ Chí Minh'),
(60, 'Trà Vinh'),
(61, 'Tuyên Quang'),
(62, 'Vĩnh Long'),
(63, 'Vĩnh Phúc'),
(64, 'Yên Bái');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(14, 'nguyen bang', 'nguyen bang', 'bang1122@gmail.com', '0969350123', 25, 'ha noi', 'ha noi', 'ha noi', '84', 'nguyen bang', 'nguyen bang', '0969350123', 25, 'ha noi', 'ha noi', 'ha noi', '84', 'nguyen bang', 'nguyen bang', '0969350123', 25, 'ha noi', 'ha noi', 'ha noi', '84', '21232f297a57a5a743894a0e4a801fc3', 'c516cee7d1f72f8ea363e2459cc3e9b8', '2022-08-23 03:54:47', '1662573155', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Mũ nón ', 1),
(2, 'Kính râm', 1),
(3, 'Đồng hồ', 1),
(4, 'Dép quai hậu', 2),
(5, 'Bốt', 2),
(6, 'Tops', 3),
(7, 'T-Shirt', 3),
(8, 'Đồng hồ', 4),
(9, 'Kính râm', 4),
(11, 'Giày thể thao', 2),
(12, 'Dép quai hậu', 6),
(13, 'Giày phẳng', 6),
(14, 'Hoodies', 7),
(15, 'Áo khoác', 7),
(16, 'Quần dài', 8),
(17, 'Jeans', 8),
(18, 'Joggers', 8),
(19, 'Shorts', 8),
(20, 'T-shirts', 9),
(21, 'Áo sơ mi thông thường', 9),
(22, 'Áo sơ mi cao cấp', 9),
(23, 'Áo sơ mi Polo', 9),
(24, 'Vests', 9),
(25, 'Giày kiểu đơn giản', 2),
(26, 'Bé Trai', 10),
(27, 'Bé Gái', 10),
(28, 'Bé Trai', 11),
(29, 'Bé Gái', 11),
(30, 'Bé Trai', 12),
(31, 'Bé Gái', 12),
(32, 'Váy đầm', 7),
(33, 'Tops', 7),
(34, 'T-Shirts & Vests', 7),
(35, 'Quần dài & Leggings', 7),
(36, 'Quần áo thể thao', 7),
(37, 'Quần áo ngoại cỡ', 7),
(38, 'Tất & hàng dệt kim', 7),
(39, 'Xịt phun sương', 3),
(40, 'Chăm sóc da', 3),
(41, 'Chăm sóc tóc', 3),
(42, 'Đồ nữ trang', 4),
(43, 'Chăm sóc mắt', 3),
(44, 'Môi', 3),
(45, 'Chăm sóc mặt', 3),
(46, 'Bộ quà tặng', 3),
(47, 'Khăn quàng cổ & mũ nón', 4),
(48, 'Nhiều gói', 4),
(49, 'Các phụ kiện khác', 4),
(50, 'Giày cao gót', 6),
(51, 'Sneakers', 6),
(52, 'Sports Shoes', 6),
(53, 'Boots', 6),
(54, 'Giày thoải mái', 6),
(55, 'Dép & giày thường', 6),
(56, 'Giày trang trọng', 2),
(59, 'Các phụ kiện khác', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Cách tìm một mặt hàng trên ECOMMERCE7.COM?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Chúng tôi có một loạt các sản phẩm tuyệt vời để lựa chọn.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif;\">Mẹo 1: Nếu bạn đang tìm kiếm một sản phẩm cụ thể, hãy sử dụng hộp tìm kiếm từ khóa nằm ở đầu trang web. Chỉ cần nhập những gì bạn đang tìm kiếm và chuẩn bị để ngạc nhiên!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 2: Nếu bạn muốn khám phá một danh mục sản phẩm, hãy sử dụng Danh mục cửa hàng ở menu phía trên và điều hướng qua các danh mục yêu thích của bạn, nơi chúng tôi sẽ giới thiệu các sản phẩm tốt nhất trong mỗi danh mục.</span></font><br><br></h3>\r\n'),
(2, 'Chính sách hoàn trả của bạn là gì?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">Bạn có 15 ngày để yêu cầu hoàn lại tiền sau khi đơn hàng của bạn đã được giao.</span><br></p>\r\n'),
(3, ' Tôi đã nhận được một mặt hàng bị lỗi / hư hỏng, tôi có thể được hoàn lại tiền không?', '<p>Trong trường hợp mặt hàng bạn nhận được bị hư hỏng hoặc bị lỗi, bạn có thể trả lại một mặt hàng trong tình trạng như bạn đã nhận với hộp và / hoặc bao bì còn nguyên vẹn. Khi chúng tôi nhận được hàng trả lại, chúng tôi sẽ kiểm tra và nếu hàng bị lỗi hoặc bị hư hỏng, chúng tôi sẽ xử lý hoàn lại tiền cùng với mọi phí vận chuyển phát sinh.<br></p>\r\n'),
(4, 'Khi nào thì không thể \"Trả lại\"?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">Có một số trường hợp nhất định mà chúng tôi khó hỗ trợ trả hàng:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Yêu cầu trả lại được thực hiện ngoài khung thời gian quy định, trong 15 ngày kể từ ngày giao hàng.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm đã qua sử dụng, bị hư hỏng hoặc không ở trong tình trạng như bạn nhận được.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các danh mục cụ thể như quần áo bên trong, nội y, tất và quần áo miễn phí, v.v..</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các sản phẩm bị lỗi được bảo hành theo bảo hành của nhà sản xuất.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Bất kỳ vật phẩm tiêu hao nào đã được sử dụng hoặc lắp đặt.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm có số sê-ri bị giả mạo hoặc bị thiếu.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Bất kỳ thứ gì còn thiếu trong gói hàng bạn đã nhận bao gồm thẻ giá, nhãn, bao bì gốc, quà tặng và phụ kiện.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Đồ dễ vỡ, đồ liên quan đến vệ sinh.</li></ol>\r\n'),
(5, 'Những mặt hàng không thể trả lại là gì?', '<p>Các mặt hàng không thể trả lại là:</p><p>Các mặt hàng thông quan được đánh dấu rõ ràng như vậy và hiển thị Chính sách Không hoàn trả<br></p><p>Khi phiếu mua hàng ghi chú quá cụ thể là các mặt hàng không thể trả lại.</p><p>Các mặt hàng thuộc các loại sản phẩm dưới đây:</p><ul><li>Đồ lót</li><li>Nội y</li><li>Tất</li><li>Phần mềm</li><li>Album nhạc</li><li>Sách</li><li>Đồ bơi</li><li>Làm đẹp; Nước hoa</li><li>Hàng dệt kim</li></ul><p>Ngoài ra, bất kỳ vật phẩm tiêu hao nào đã được sử dụng hoặc đã lắp đặt đều không thể trả lại. Như đã nêu trong Quyền bảo vệ người tiêu dùng và phần liên quan đến các mặt hàng không thể trả lại.<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Tiền tệ', ' VND '),
(2, 'Tìm kiếm sản phẩm', 'Tìm kiếm sản phẩm'),
(3, 'Tìm kiếm', 'Tìm kiếm'),
(4, 'Gửi thông tin', 'Gửi thông tin'),
(5, 'Cập nhật', 'Cập nhật'),
(6, 'Tìm hiểu thêm', 'Tìm hiểu thêm'),
(7, 'Serial', 'Serial'),
(8, 'Ảnh', 'Ảnh'),
(9, 'Đăng nhập', 'Đăng nhập'),
(10, 'Khách hàng đăng nhập', 'Khách hàng đăng nhập'),
(11, 'Nhấn vào đây để đăng nhập', 'Nhấn vào đây để đăng nhập'),
(12, 'Quay lại Trang đăng nhập', 'Quay lại Trang đăng nhập'),
(13, 'Đăng nhập với tư cách', 'Đăng nhập với tư cách'),
(14, 'Đăng xuất', 'Đăng xuất'),
(15, 'Đăng ký', 'Đăng ký'),
(16, 'Khách hàng đăng ký', 'Khách hàng đăng ký'),
(17, 'Đăng ký thành công', 'Đăng ký thành công'),
(18, 'Giỏ hàng', 'Giỏ hàng'),
(19, 'Xem giỏ hàng', 'Xem giỏ hàng'),
(20, 'Cập nhật giỏ hàng', 'Cập nhật giỏ hàng'),
(21, 'Quay trở lại giỏ hàng', 'Quay trở lại giỏ hàng'),
(22, 'Thanh toán', 'Thanh toán'),
(23, 'Tiến hành thanh toán', 'Tiến hành thanh toán'),
(24, 'Đơn hàng', 'Đơn hàng'),
(25, 'Lịch sử đơn hàng', 'Lịch sử đơn hàng'),
(26, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(27, 'Ngày và giờ thanh toán', 'Ngày và giờ thanh toán'),
(28, 'ID giao dịch', 'ID giao dịch'),
(29, 'Số tiền thanh toán', 'Số tiền thanh toán'),
(30, 'Tình trạng thanh toán', 'Tình trạng thanh toán'),
(31, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(32, 'ID thanh toán', 'ID thanh toán'),
(33, 'Phần thanh toán', 'Phần thanh toán'),
(34, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(35, 'Chọn một phương thức thanh toán', 'Chọn một phương thức thanh toán'),
(36, 'PayPal', 'PayPal'),
(37, 'Tiền mặt', 'Tiền mặt'),
(38, 'Chuyển khoản', 'Chuyển khoản'),
(39, 'Số thẻ', 'Số thẻ'),
(40, 'CVV', 'CVV'),
(41, 'Tháng', 'Tháng'),
(42, 'Năm', 'Năm'),
(43, 'Gửi theo thông tin này', 'Gửi theo thông tin này'),
(44, 'Thông tin giao dịch', 'Thông tin giao dịch'),
(45, 'Bao gồm id giao dịch và các thông tin khác một cách chính xác', 'Bao gồm id giao dịch và các thông tin khác một cách chính xác'),
(46, 'Thanh toán ngay', 'Thanh toán ngay'),
(47, 'Tên sản phẩm', 'Tên sản phẩm'),
(48, 'Thông tin chi tiết sản phẩm', 'Thông tin chi tiết sản phẩm'),
(49, 'Các danh mục', 'Các danh mục'),
(50, 'Danh mục:', 'Danh mục:'),
(51, 'Tất cả các sản phẩm', 'Tất cả các sản phẩm'),
(52, 'Chọn kích cỡ', 'Chọn kích cỡ'),
(53, 'Chọn màu', 'Chọn màu'),
(54, 'Giá sản phẩm', 'Giá sản phẩm'),
(55, 'Số lượng', 'Số lượng'),
(56, 'Hết hàng', 'Hết hàng'),
(57, 'Chia sẻ', 'Chia sẻ'),
(58, 'Chia sẻ sản phẩm này', 'Chia sẻ sản phẩm này'),
(59, 'Mô tả Sản phẩm', 'Mô tả Sản phẩm'),
(60, 'Đặc trưng', 'Đặc trưng'),
(61, 'Các điều kiện', 'Các điều kiện'),
(62, 'Chính sách hoàn trả', 'Chính sách hoàn trả'),
(63, 'Đánh giá', 'Đánh giá'),
(64, 'Đánh giá', 'Đánh giá'),
(65, 'Đưa ra đánh giá', 'Đưa ra đánh giá'),
(66, 'Viết bình luận của bạn (Tùy chọn)', 'Viết bình luận của bạn (Tùy chọn)'),
(67, 'Gửi đánh giá', 'Gửi đánh giá'),
(68, 'Bạn đã đưa ra một đánh giá!', 'Bạn đã đưa ra một đánh giá!!'),
(69, 'Bạn phải đăng nhập để đưa ra đánh giá', 'Bạn phải đăng nhập để đưa ra đánh giá'),
(70, 'Không tìm thấy mô tả', 'Không tìm thấy mô tả'),
(71, 'Không tìm thấy đặc trưng', 'Không tìm thấy đặc trưng'),
(72, 'Không tìm thấy điều kiện', 'Không tìm thấy điều kiện'),
(73, 'Không tìm thấy chính sách hoàn trả', 'Không tìm thấy chính sách hoàn trả'),
(74, 'Không tìm thấy đánh giá', 'Không tìm thấy đánh giá'),
(75, 'Tên khách hàng', 'Tên khách hàng'),
(76, 'Bình luận', 'Bình luận'),
(77, 'Bình luận', 'Bình luận'),
(78, 'Xếp hạng', 'Xếp hạng'),
(79, 'Trước', 'Trước'),
(80, 'Sau', 'Sau'),
(81, 'Tổng', 'Tổng'),
(82, 'Tổng cộng', 'Tổng cộng'),
(83, 'Hành động', 'Hành động'),
(84, 'Giá vận chuyển', 'Giá vận chuyển'),
(85, 'Tiếp tục mua hàng', 'Tiếp tục mua hàng'),
(86, 'Cập nhật địa chỉ thanh toán', 'Cập nhật địa chỉ thanh toán'),
(87, 'Cập nhật địa chỉ giao hàng', 'Cập nhật địa chỉ giao hàng'),
(88, 'Cập nhật thông tin thanh toán và giao hàng', 'Cập nhật thông tin thanh toán và giao hàng'),
(89, 'Bảng điều khiển', 'Bảng điều khiển'),
(90, 'Chào mừng bạn đến với ECOMMERCE3', 'Chào mừng bạn đến với ECOMMERCE3.COM'),
(91, 'Quay lại trang tổng quan', 'Quay lại trang tổng quan'),
(92, 'Theo dõi', 'Theo dõi'),
(93, 'Theo dõi bản tin của chúng tôi', 'Theo dõi bản tin của chúng tôi'),
(94, 'Địa chỉ email', 'Địa chỉ email'),
(95, 'Nhập địa chỉ email của bạn', 'Nhập địa chỉ email của bạn'),
(96, 'Mật khẩu', 'Mật khẩu'),
(97, 'Quên mật khẩu', 'Quên mật khẩu'),
(98, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(99, 'Cập nhật mật khẩu', 'Cập nhật mật khẩu'),
(100, 'Mật khẩu mới', 'Mật khẩu mới'),
(101, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(102, 'Họ và tên', 'Họ và tên'),
(103, 'Tên công ty', 'Tên công ty'),
(104, 'Số điện thoại', 'Số điện thoại'),
(105, 'Địa chỉ', 'Địa chỉ'),
(106, 'Tỉnh thành', 'Tỉnh thành'),
(107, 'Quận huyện', 'Quận huyện'),
(108, 'Xã phường', 'Xã phường'),
(109, 'Mã Bưu Chính', 'Mã Bưu Chính'),
(110, 'Về chúng tôi', 'Về chúng tôi'),
(111, 'Các bài viết', 'Các bài viết'),
(112, 'Bài viết phổ biến', 'Bài viết phổ biến'),
(113, 'Bài đăng gần đây', 'Bài đăng gần đây'),
(114, 'Thông tin liên lạc', 'Thông tin liên lạc'),
(115, 'Liên hệ', 'Liên hệ'),
(116, 'Văn phòng của chúng tôi', 'Văn phòng của chúng tôi'),
(117, 'Cập nhật hồ sơ', 'Cập nhật hồ sơ'),
(118, 'Gửi tin nhắn', 'Gửi tin nhắn'),
(119, 'Tin nhắn', 'Tin nhắn'),
(120, 'Tìm chúng tôi trên bản đồ', 'Tìm chúng tôi trên bản đồ'),
(121, 'Xin chúc mừng! Thanh toán thành công.', 'Xin chúc mừng! Thanh toán thành công.'),
(122, 'Thông tin Thanh toán và Giao hàng được cập nhật thành công.', 'Thông tin Thanh toán và Giao hàng được cập nhật thành công.'),
(123, 'Tên khách hàng không được để trống.', 'Tên khách hàng không được để trống.'),
(124, 'Số điện thoại không được để trống.', 'Số điện thoại không được để trống.'),
(125, 'Địa chỉ không được để trống.', 'Địa chỉ không được để trống.'),
(126, 'Bạn phải chọn một tỉnh thành.', 'Bạn phải chọn một tỉnh thành.'),
(127, 'Quận huyện không được để trống.', 'Quận huyện không được để trống.'),
(128, 'Xã phường không được để trống.', 'Xã phường không được để trống.'),
(129, 'Mã bưu chính không được để trống.', 'Mã bưu chính không được để trống.'),
(130, 'Thông tin hồ sơ được cập nhật thành công.', 'Thông tin hồ sơ được cập nhật thành công.'),
(131, 'Địa chỉ Email không được để trống', 'Địa chỉ Email không được để trống'),
(132, 'Email/Mật khẩu không được để trống.', 'Email/Mật khẩu không được để trống.'),
(133, 'Địa chỉ email không trùng khớp.', 'Địa chỉ email không trùng khớp.'),
(134, 'Địa chỉ email phải hợp lệ.', 'Địa chỉ email phải hợp lệ.'),
(135, 'Địa chỉ email của bạn không tồn tại.', 'Địa chỉ email của bạn không tồn tại.'),
(136, 'Vui lòng kiểm tra email của bạn và xác nhận đăng ký của bạn.', 'Vui lòng kiểm tra email của bạn và xác nhận đăng ký của bạn.'),
(137, 'Email đã được xác minh thành công. Bây giờ bạn có thể đăng nhập.', 'Email đã được xác minh thành công. Bây giờ bạn có thể đăng nhập.'),
(138, 'Mật khẩu không được để trống.', 'Mật khẩu không được để trống.'),
(139, 'Mật khẩu không khớp.', 'Mật khẩu không khớp.'),
(140, 'Vui lòng nhập mật khẩu mới và nhập lại.', 'Vui lòng nhập mật khẩu mới và nhập lại.'),
(141, 'Mật khẩu được cập nhật thành công.', 'Mật khẩu được cập nhật thành công.'),
(142, 'Để đặt lại mật khẩu của bạn, vui lòng nhấp vào liên kết bên dưới.', 'Để đặt lại mật khẩu của bạn, vui lòng nhấp vào liên kết bên dưới.'),
(143, 'YÊU CẦU ĐẶT LẠI MẬT KHẨU - ECOMMERCE3.COM', 'YÊU CẦU ĐẶT LẠI MẬT KHẨU - ECOMMERCE3.COM'),
(144, 'Thời gian đặt lại mật khẩu email (24 giờ) đã hết hẹn. Vui lòng thử đặt lại mật khẩu của bạn một lần nữa.', 'Thời gian đặt lại mật khẩu email (24 giờ) đã hết hẹn. Vui lòng thử đặt lại mật khẩu của bạn một lần nữa.'),
(145, 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.', 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.'),
(146, 'Mật khẩu được đặt lại thành công. Bây giờ bạn có thể đăng nhập.', 'Mật khẩu được đặt lại thành công. Bây giờ bạn có thể đăng nhập.'),
(147, 'Địa chỉ email đã tồn tại.', 'Địa chỉ email đã tồn tại.'),
(148, 'Xin lỗi! Tài khoản của bạn không hoạt động. Vui lòng liên hệ với quản trị viên.', 'Xin lỗi! Tài khoản của bạn không hoạt động. Vui lòng liên hệ với quản trị viên.'),
(149, 'Đổi mật khẩu', 'Đổi mật khẩu'),
(150, 'Xác nhận Email Đăng ký cho ECOMMERCE3.COM', 'Xác nhận Email Đăng ký cho ECOMMERCE3.COM.'),
(151, 'Cám ơn bạn đã đăng ký! Tài khoản của bạn đã được tạo. Để kích hoạt tài khoản của bạn, hãy nhấp vào liên kết bên dưới:', 'Cám ơn bạn đã đăng ký! Tài khoản của bạn đã được tạo. Để kích hoạt tài khoản của bạn, hãy nhấp vào liên kết bên dưới:'),
(152, 'Đăng ký của bạn đã hoàn tất. Vui lòng kiểm tra địa chỉ email của bạn để làm theo quy trình xác nhận đăng ký của bạn.', 'Đăng ký của bạn đã hoàn tất. Vui lòng kiểm tra địa chỉ email của bạn để làm theo quy trình xác nhận đăng ký của bạn.'),
(153, 'Không tìm thấy sản phẩm', 'Không tìm thấy sản phẩm'),
(154, 'Thêm vào giỏ hàng', 'Thêm vào giỏ hàng'),
(155, 'Sản phẩm liên quan', 'Sản phẩm liên quan'),
(156, 'Xem tất cả các sản phẩm liên quan ', 'Xem tất cả các sản phẩm liên quan '),
(157, 'Kích thước', 'Kích thước'),
(158, 'Màu sắc', 'Màu sắc'),
(159, 'Giá bán', 'Giá bán'),
(160, 'Vui lòng đăng nhập với tư cách khách hàng để thanh toán', 'Vui lòng đăng nhập với tư cách khách hàng để thanh toán'),
(161, 'Địa chỉ thanh toán', 'Địa chỉ thanh toán'),
(162, 'Địa chỉ giao hàng', 'Địa chỉ giao hàng'),
(163, 'Xếp hạng được gửi thành công!', 'Xếp hạng được gửi thành công!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Phụ kiện nam', 1),
(2, 'Giày nam', 1),
(3, 'Mỹ phẩm', 2),
(4, 'Phụ kiện', 2),
(6, 'Giày', 2),
(7, 'Quần áo', 2),
(8, 'Quần', 1),
(9, 'Áo phông & áo sơ mi', 1),
(10, 'Quần áo', 3),
(11, 'Giày', 3),
(12, 'Phụ kiện', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Về chúng tôi', '<p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>ECOMMERCE3.COM</b> làm cho bạn tỏa sáng trong những ngày đặc biệt của bạn, đặc biệt dành cho những người phụ nữ xinh đẹp. Mục tiêu của chúng tôi là luôn tôn vinh BẠN! Để có được điều tốt nhất ở bạn, chúng tôi đã mang đến một bộ sưu tập khổng lồ cho dù bạn đang tham dự một bữa tiệc, đám cưới và tất cả những sự kiện yêu cầu váy.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Về chúng tôi</b></span></font></p><p style=\"text-align: justify; \"><span style=\"font-family: apercu, Arial, sans-serif; font-size: 14px; font-weight: 700;\">ECOMMERCE3.COM</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;là một trang web mua sắm thời trang mới mang đến những sản phẩm thời trang hợp thời trang với mức giá hấp dẫn. Chúng tôi cảm thấy thời trang không phải là thứ bạn mặc mà là cảm nhận của bạn, vì vậy, hãy ghi nhớ điều này, chúng tôi đã mang đến cho bạn những bộ quần áo được thiết kế riêng bao gồm nhiều mẫu thiết kế, kiểu dáng và hình in để đáp ứng mọi tâm trạng, ý thích và sở thích của bạn..</span></font></p><p style=\"text-align: justify; \"><span style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\"><b>Tầm nhìn của chúng tôi</b></span><br></p><p style=\"text-align: justify; \"><span style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\">Tầm nhìn của chúng tôi là Giới thiệu vẻ đẹp trong bạn với nụ cười xinh đẹp của bạn với thế giới bằng trải nghiệm mua sắm trực tuyến tốt nhất. Chúng tôi có bộ sưu tập quần áo được lựa chọn cẩn thận dành cho phụ nữ để phù hợp với họ dựa trên loại cơ thể, màu da, ngân sách và sở thích phong cách của họ. Chúng tôi mong muốn mang đến cho khách hàng trải nghiệm mua sắm hợp thời trang lành mạnh trong thời gian thực, cung cấp cho họ tất cả thông tin họ cần về sự vừa vặn, thoải mái, chất liệu vải và mọi thứ khác trong tâm trí của họ đối với từng sản phẩm trong bộ sưu tập của chúng tôi, thông qua biểu đồ kích thước. Ngoài ra, bao gồm việc giới thiệu các thiết kế, phong cách và danh mục mới cùng với tất cả thời trang đang diễn ra.</span><br></p><p style=\"text-align: justify; \"><span style=\"font-weight: 700; font-family: apercu, Arial, sans-serif; font-size: 14px;\">Lý do chọn ECOMMERCE3.COM</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">?</span></font></p><p style=\"text-align: justify; \"><span style=\"font-family: apercu, Arial, sans-serif; font-size: 14px; font-weight: 700;\">ECOMMERCE3.COM</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;có một bộ sưu tập lớn gồm sarees, kurta kurtis, chất liệu trang phục, váy, áo, xà cạp và hơn thế nữa. Tất cả các bộ sưu tập trên trang web của chúng tôi hoàn toàn là trang phục của nhà thiết kế nâng cấp theo xu hướng mới và tìm kiếm trên thị trường với danh mục thời trang phụ nữ lớn nhất. Chúng tôi tiếp tục nâng cao công nghệ và chủng loại sản phẩm của mình để đảm bảo rằng mọi phụ nữ sẽ có được trải nghiệm mua sắm thú vị nhất.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Chúng tôi đảm bảo bạn sẽ có được những bộ trang phục chất lượng nhất với chính sách đổi trả hàng miễn phí. Chúng tôi đảm bảo những gì bạn thấy chính xác là những gì bạn nhận được!</span></font></p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Đảm bảo giá thấp</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Nếu bạn tìm thấy giá thấp hơn trên bất kỳ trang phục nào chúng tôi bán trực tuyến, chúng tôi sẽ khớp với giá đó!</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Hỗ trợ khách hàng 24/7</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Email, Nhắn tin, Cuộc gọi</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Chúng tôi luôn sẵn sàng phục vụ bạn 24/7 trực tuyến và qua điện thoại.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Định kích thước; Màu sắc</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Chúng tôi có một mảng các màu sắc và kích thước cho bạn chọn lựa.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Giao hàng trên toàn thế giới</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Rất tiếc, Không. Chúng tôi chỉ cung cấp dịch vụ của mình trên toàn lãnh thổ Việt Nam.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Chúng tôi sẽ sớm mở rộng kinh doanh ra quốc tế..</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Trả hàng dễ dàng</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Đã mua một bộ trang phục nhưng muốn trả lại? Chúng tôi có một chính sách hoàn trả dễ dàng trong 3 ngày. Vui lòng gửi mail cho chúng tôi theo địa chỉ maiquyen@gmail.com để biết thêm chi tiết.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Những chiếc váy trong mơ cho mọi dịp</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">ECOMMERCE3.COM mang tất cả những gì được các nhà tạo mẫu của chúng tôi lựa chọn cẩn thận. Nếu bạn quan tâm đến một mẫu cụ thể, vui lòng gửi thư cho chúng tôi, chúng tôi sẽ cố gắng hết sức để cung cấp cho bạn chiếc váy yêu thích.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Bảo mật đã xác minh</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Tất cả các giao dịch của chúng tôi đều được Norton xác minh và với các tiêu chuẩn bảo mật cao nhất. Thêm vào đó, có rất nhiều thứ để tham gia thông qua các ưu đãi và quà tặng thú vị thường xuyên, vì vậy hãy quảng bá và giới thiệu chúng tôi đến tất cả mọi người từ gia đình, bạn bè và đồng nghiệp của bạn và nhận phần thưởng cho nó. Và trên hết, bạn có thể chia sẻ trải nghiệm người dùng của mình bằng cách đăng các bài đánh giá. Đừng chờ đợi lâu nữa Đăng ký với chúng tôi ngay bây giờ! bắt đầu theo dõi, bắt đầu mua và bắt đầu yêu và bắt đầu Giới thiệu vẻ đẹp trong bạn.</span></font></p>\r\n', 'about-banner.jpg', 'ECOMMERCE3 - Về chúng tôi', 'about, về chúng tôi, about fashion, about company', 'ECOMMERCE3 sẽ khiến bạn tỏa sáng trong những ngày đặc biệt dành riêng cho những người phụ nữ xinh đẹp. Mục tiêu của chúng tôi là luôn tôn vinh BẠN! Để có được điều tốt nhất ở bạn, chúng tôi đã mang đến một bộ sưu tập khổng lồ cho dù bạn đang tham dự một bữa tiệc, đám cưới và tất cả những sự kiện yêu cầu váy.', 'FAQ', 'faq-banner.jpg', 'ecommerce3.com - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Liên hệ chúng tôi', 'contact-banner.jpg', 'ECOMMERCE3.COM - Liên hệ', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(84, 'Áo sơ mi', '100000', '95000', 100, 'product-featured-84.png', '<p>Very good</p>', '<p>Very good<br></p>', '<p>Very good<br></p>', '<p>Very good<br></p>', '<p>Very good<br></p>', 12, 1, 1, 21),
(85, 'Quần dài', '120000', '110000', 120, 'product-featured-85.png', '<p>Quần dài<br></p>', '<p>Quần dài<br></p>', '<p>Quần dài<br></p>', '<p>Quần dài<br></p>', '<p>Very good</p>', 18, 1, 1, 16),
(86, 'Mũ cao bồi', '120000', '110000', 100, 'product-featured-86.png', '<p>Very good</p>', '<p>Very good<br></p>', '<p>Very good<br></p>', '<p>Very good<br></p>', '<p>Very good<br></p>', 28, 1, 1, 1),
(87, 'Áo nữ', '150000', '120000', 100, 'product-featured-87.png', '<p>tops</p>', '<p>tops<br></p>', '<p>tops<br></p>', '<p>tops<br></p>', '<p>tops<br></p>', 4, 1, 1, 33),
(88, 'Đồng hồ nam', '600000', '500000', 120, 'product-featured-88.png', '<p>watch</p>', '<p>watch<br></p>', '<p>watch<br></p>', '<p>watch<br></p>', '<p>watch<br></p>', 13, 1, 1, 3),
(89, 'Suit', '1000000', '950000', 120, 'product-featured-89.png', '<p>Very good</p>', '<p>Very good<br></p>', '<p>Very good<br></p>', '<p>Very good<br></p>', '<p>Very good<br></p>', 8, 1, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(175, 4, 83),
(176, 5, 83),
(177, 3, 82),
(190, 4, 86),
(191, 7, 86),
(192, 8, 86),
(193, 9, 86),
(194, 6, 87),
(195, 17, 87),
(196, 18, 87),
(219, 2, 89),
(220, 3, 89),
(221, 6, 89),
(222, 8, 89),
(223, 9, 89),
(224, 16, 89),
(225, 2, 88),
(226, 4, 88),
(227, 5, 88),
(228, 6, 88),
(229, 2, 85),
(230, 9, 85),
(231, 18, 85),
(232, 6, 84),
(233, 12, 84),
(234, 17, 84);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(107, '107.png', 84),
(108, '108.png', 85),
(109, '109.png', 86),
(110, '110.png', 87),
(111, '111.png', 88),
(112, '112.png', 89);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(272, 2, 83),
(273, 3, 83),
(274, 5, 83),
(275, 2, 82),
(276, 3, 82),
(277, 7, 82),
(298, 3, 86),
(299, 4, 86),
(300, 5, 86),
(301, 2, 87),
(302, 3, 87),
(303, 4, 87),
(304, 5, 87),
(305, 6, 87),
(318, 4, 89),
(319, 5, 89),
(320, 6, 89),
(321, 4, 88),
(322, 5, 88),
(323, 6, 88),
(324, 2, 85),
(325, 3, 85),
(326, 4, 85),
(327, 5, 85),
(328, 6, 85),
(329, 2, 84),
(330, 3, 84),
(331, 4, 84),
(332, 5, 84),
(333, 6, 84);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Trả hàng dễ dàng', 'Trả lại bất kỳ mặt hàng nào trước 12 ngày không cần lý do.', 'service-5.png'),
(6, 'Miễn phí vận chuyển', 'Tận hưởng giao hàng miễn phí trên toàn quốc. Giao hàng quốc tế sẽ sớm được hỗ trợ.', 'service-6.png'),
(7, 'Chuyển phát nhanh', 'Các mặt hàng được vận chuyển trong 24 giờ.', 'service-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '', 'Copyright © 2022. All Rights Reserved.', '207 Giải Phóng, Đồng Tâm, Hai Bà Trưng, Hà Nội', 'maiquyen@gmail.com', '+84969350123', '', '<iframe src=\"https://www.google.com/maps/embed/v1/place?q=place_id:ChIJeY8tdXGsNTER-noBAVxX7NI&key=AIzaSyB2uVJg6jAwjRTfQLntETeSj5vePFtmHEg\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'maiquyen@gmail.com', 'Tin nhắn Email của khách truy cập', 'Cảm ơn bạn đã gửi email. Chúng tôi sẽ sớm liên lạc lại với bạn.', 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.', 4, 4, 5, 5, 4, 4, 4, 'ECOMMERCE3.COM', 'thời trang, cửa hàng may mặc, hàng may mặc trực tuyến, hàng may mặc', 'ECOMMERCE3.COM là một cửa hàng may mặc trực tuyến.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Chào mừng bạn đến với trang web thương mại điện tử của chúng tôi', '', 'Tìm hiểu thêm', '#', 'cta.jpg', 'Sản phẩm nổi bật', 'Xem tất cả các sản phẩm nổi bật của chúng tôi từ đây', 'Sản phẩm mới nhất', 'Xem tất cả các sản phẩm mới nhất của chúng tôi từ đây', 'Sản phẩm phổ biến', 'Xem tất cả các sản phẩm phổ biến của chúng tôi từ đây', 'Lời chứng thực', 'Xem những gì khách hàng của chúng tôi nói về chúng tôi', 'testimonial.jpg', 'Blog mới nhất', 'Xem tất cả các bài báo và tin tức mới nhất của chúng tôi từ bên dưới', 'Đăng ký nhận bản tin của chúng tôi để biết các chương trình khuyến mãi và giảm giá mới nhất.', 'maiquyen@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Tên ngân hàng: ACB Bank\r\nSố tài khoản: 13430666\r\n', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Chào mừng bạn đến với ECOMMERCE3.COM', 'Mua sắm trực tuyến các phụ kiện mới nhất cho phụ nữ', 'Mua sắm phụ kiện nữ', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', '50% Discount trên tất cả các sản phẩm', 'Điều rất quan trọng là phải có một khách hàng để giải thích cho mọi nỗ lực của mọi người, trên thực tế, đó là phương châm phong phú của chúng tôi.', 'Tìm hiểu thêm', '#', 'Center'),
(3, 'slider-3.jpg', 'Hỗ trợ khách hàng 24 giờ', 'Điều rất quan trọng là phải có một khách hàng để giải thích cho mọi nỗ lực của mọi người, trên thực tế, đó là phương châm phong phú của chúng tôi.', 'Tìm hiểu thêm', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/ecommerce3', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/ecommerce3', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Pinterest', '', 'fa fa-pinterest'),
(5, 'YouTube', '', 'fa fa-youtube'),
(6, 'Instagram', '', 'fa fa-instagram'),
(7, 'Tumblr', '', 'fa fa-tumblr'),
(8, 'Flickr', '', 'fa fa-flickr'),
(9, 'Reddit', '', 'fa fa-reddit'),
(10, 'Snapchat', '', 'fa fa-snapchat'),
(11, 'WhatsApp', '', 'fa fa-whatsapp'),
(12, 'Quora', '', 'fa fa-quora');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Nam', 1),
(2, 'Nữ', 1),
(3, 'Trẻ em', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Nguyen bang', 'bang@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'user-1.jpg', 'Super Admin', 'Active'),
(2, 'bang', 'bang01@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Super Admin', 'Active'),
(3, 'Nguyen bang', 'bang1122@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Admin', 'Active'),
(4, 'bang', 'bang01@outlook.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', ''),
(2, 'Video 2', ''),
(4, 'Video 3', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
