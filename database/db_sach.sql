-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2022 lúc 08:16 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'SÁCH PHÁT TRIỂN BẢN THÂN'),
(2, 'SÁCH KINH TẾ'),
(13, 'SÁCH HAY');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `subject_name`, `note`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Đức', 'Nguyễn', 'ducreal1501@gmail.com', '0972251830', 'Sách hay quá', 'Sách quá hay', '2022-12-21 18:37:56', '2022-12-21 18:37:56', 0),
(7, 'Đức', 'Nguyễn', 'ducreal1501@gmail.com', '0972251830', 'Sách hay quá', 'Sách quá hay', '2022-12-21 18:45:13', '2022-12-21 18:45:13', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(4, 5, 'Nguyễn Văn Đức', 'ducreal1501@gmail.com', '0972251830', 'Khoái Châu, Hưng Yên', '', '2022-12-21 18:37:12', 0, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(7, 4, 3, 500000, 1, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'DẦU MỎ, TIỀN BẠC VÀ QUYỀN LỰC', 650000, 600000, 'assets/photos/dau mo tien bac va quyen luc.png', '<p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Các cuộc khủng hoảng kinh tế</strong>&nbsp;lớn nhỏ trong lịch sử, đa phần đều liên quan đến cuộc chiến&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Dầu mỏ - Tiền bạc - Quyền lực</strong>. Trong quyển sách này&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Daniel Yergin</strong>&nbsp;đã đưa ra quan điểm của mình trước những vấn đề trên dưới góc nhìn của một nhà kinh tế học.</p><p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Nội dung tựa sách này đã mô tả bức tranh toàn cảnh toàn cảnh lịch sử ngành&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">công nghiệp dầu mỏ</strong>&nbsp;cùng với đó là sự tranh giành quyền lực và cuộc chiến xoay quanh sự giàu có tạo nên từ thứ&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">“vàng đen\"</strong>&nbsp;này.&nbsp;</p><p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Hậu quả để lại là một mớ hỗn độn cho nền&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">kinh tế toàn cầu</strong>. Đây cũng là hồi chuông thức tỉnh cho con người trước những nhân tố có thể thay đổi vận mệnh nhân loại nói chung và các quốc gia nói riêng.</p><p> </p>', '2021-10-22 14:03:21', '2022-12-21 18:07:19', 0),
(3, 1, 'ĐỜI THAY ĐỔI KHI CHÚNG TA THAY ĐỔI', 550000, 500000, 'assets/photos/doi thay doi khi chung ta thay doi.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 4px 0px 16px; overflow: hidden; font-size: 16.5px; line-height: 29px; color: rgb(17, 17, 17); font-family: Roboto; background-color: rgb(245, 245, 245);\">Nếu bạn vẫn chưa tìm được cách để đối diện với các vấn đề tiêu cực này như thế nào, bạn có thể tìm được những phương pháp hay ở Đời thay đổi khi chúng ta thay đổi. Và khi bạn đã học được cách làm chủ cảm xúc của mình, đồng nghĩa là bạn cũng làm chủ được vận mệnh của chính mình. Bạn sẽ tìm được lời động viên ngay trong những bài học giá trị từ quyển sách.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 4px 0px 16px; overflow: hidden; font-size: 16.5px; line-height: 29px; color: rgb(17, 17, 17); font-family: Roboto; background-color: rgb(245, 245, 245);\">Quyển sách này được chia thanh 6 quyển sách nhỏ khác nhau. Trong đó mỗi phiên bản là một bài học khác nhau. Khi bạn đọc xong cả  quyển sách này, bạn sẽ biết cách chấp nhận và bỏ qua những điều tiêu cực. Hãy biết thay đổi cuộc sống để thay đổi cuộc sống của mình theo cách tốt hơn. Đó là tất cả những gì mà quyển sách muốn truyền tải.</p>', '2021-10-22 09:14:29', '2022-12-21 18:58:34', 0),
(5, 2, 'CHIẾN TRANH TIỀN TỆ- SONG HONGBING', 650000, 600000, 'assets/photos/cac cuoc chien tranh tien te.jpg', '<p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Cuộc khủng hoảng kinh tế có thể dễ dàng nhận thấy nhất với mối quan hệ cùng tiền tệ, khi mà đồng tiền trở nên mất giá, các quốc gia đối diện với nhiều nguy cơ sụp đổ. Quyển sách <strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">“Chiến tranh tiền tệ”</strong> được viết bởi một <strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">chuyên gia nghiên cứu</strong> kinh tế người Hoa tại Mỹ.</p><p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Xoanh quanh cuốn sách là sự ra đời của <a href=\"https://vi.wikipedia.org/wiki/Ch%E1%BB%A7_ngh%C4%A9a_t%C6%B0_b%E1%BA%A3n\" target=\"_blank\" rel=\"nofollow\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); word-break: break-word;\">chủ nghĩa tư bản</a> thế giới và quá trình bành trướng ra toàn cầu. Chính những thứ ấy đã thao túng và ảnh hưởng đến tất cả các nền kinh tế. Khái niệm <strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">chiến tranh tiền tệ</strong> cùng những hệ quả khôn lường của nó được nêu ra một cách khách quan, mang tính tham khảo và đưa ra những đánh giá, kinh nghiệm bài học được rút ra qua các cuộc khủng hoảng trong quá khứ. Dự báo sự lũng loạn mà chiến tranh tiền tệ có thể gây ra.</p>', '2021-10-22 14:03:21', '2022-12-21 18:41:22', 0),
(6, 1, 'ĐÁNH THỨC CON NGƯỜI TIỀM NĂNG TRONG BẠN', 650000, 550000, 'assets/photos/danh thuc con nguoi tiem nang trong ban.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 4px 0px 16px; overflow: hidden; font-size: 16.5px; line-height: 29px; color: rgb(17, 17, 17); font-family: Roboto; background-color: rgb(245, 245, 245);\">Không chỉ là những lý thuyết đơn thuần, tác giả còn đưa ra một số nguyên tắc trong cuộc sống như: nguyên tắc nỗi đau và niềm vui hay nguyên tắc để vượt qua nỗi hoài nghi một cách hợp lý. Cuộc sống chắc chắn phải có sự xen kẻ giữa niềm vui và nỗi buồn. Thay vì để những điều đó kiểm soát chính mình, tác giả đưa ra những phương pháp giúp bạn biến niềm đau thành động lực. Và từ đó biết cách kiểm soát và định hình cuộc sống tốt hơn.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 4px 0px 16px; overflow: hidden; font-size: 16.5px; line-height: 29px; color: rgb(17, 17, 17); font-family: Roboto; background-color: rgb(245, 245, 245);\">Còn đối với cách thức để vượt qua sự hoài nghi, Robbins mong muốn mỗi người phải vượt qua được sự hoài nghi mà người khác áp đặt cho mình. Bạn không nên làm một người an phận và chấp nhận suy nghĩ rằng ý kiến của mình là vô lý. Bạn hãy vượt lên sự hoài nghi để đạt đến thành công cuối cùng.</p>', '2021-10-22 09:53:21', '2022-12-21 18:38:23', 0),
(9, 2, 'CÚ HÍCH - RICHARD H.THALER & CASS R.SUNSTEIN', 650000, 600000, 'assets/photos/cu hich.jpg', '<p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Được viết bởi&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Richard H. Thaler &amp; Cass R. Sunstein,</strong>&nbsp;người đã được giải thưởng&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Nobel Kinh tế 2017, “Cú hích\"</strong>&nbsp;thể hiện được tầm nhìn, quan điểm mang tính triết lý.&nbsp;<strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Nguyên lý Cú hích</strong>&nbsp;giờ đây không chỉ nằm trên lý thuyết khô khan mà được dẫn dắt áp dụng vào thực tế một cách sáng tạo và linh hoạt.</p><p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Con người luôn đứng trước những sự lựa chọn, các quốc gia, các nền kinh tế cũng như vậy. Đâu là giải pháp tốt nhất, đâu sẽ là động lực để bạn có thể đưa ra được những quyết định đúng đắn và sáng suốt nhất. Cùng tìm hiểu và có câu trả lời cho riêng mình qua tựa sách trên.&nbsp;</p>', '2021-10-22 14:03:21', '2022-12-21 18:10:27', 0),
(11, 1, 'TẠI SAO CÁC QUỐC GIA THẤT BẠI', 550000, 500000, 'assets/photos/tai sao cac quoc gia that bai.png', '<p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">\"Tại sao các quốc gia thất bại\"</strong> là một nỗ lực sâu rộng nhằm giải thích tình trạng đói nghèo thấu xương khiến 1,29 tỷ người ở thế giới đang phát triển phải vật lộn với cuộc sống dưới 1,25 đô la mỗi ngày.  Mặc dù thế nó không là một bài đọc ảm đạm, nhàm chán mà mang tinh thần của một nhà kinh tế nhiều kinh nghiệm, vô cùng tham vọng và cuối cùng là hy vọng.</p><p style=\"margin: auto; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; word-break: break-word; overflow: hidden; font-size: 18px; line-height: 27.9px; width: 750px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; word-break: break-word;\">Daron Acemoglu & James A. Robinson</strong> dẫn dắt người đọc từ câu hỏi tại sao lại có sự chênh lệch quá lớn giữa các quốc gia trên thế giới và đi tìm câu trả lời cho thắc mắc của tất cả mọi người về vấn đề đó. </p>', '2021-10-22 09:14:29', '2022-12-21 18:11:35', 0),
(12, 1, 'KẾ HOẠCH CUỘC ĐỜI - ROBERT ASHTON', 250000, 200000, 'assets/photos/ke hoanh thay doi ban than.jpg', '<p><span style=\"color: rgb(17, 17, 17); font-family: Roboto; font-size: 16.5px; background-color: rgb(245, 245, 245);\">Để mỗi ngày mới là phiên bản tốt hơn của hôm qua, bạn cần có một kế hoạch chi tiết cho cuộc đời. Nếu bạn vẫn đang bế tắc về những gì xảy ra xung quanh mình, bạn có thể tìm đến quyển sách Kế hoạch cuộc đời để lấy lại cân bằng cho chính mình. Quyển sách cung cấp những giải pháp giúp bạn trả lời câu hỏi làm thế nào để bạn giải quyết được những tình huống xảy ra trong cuộc sống của mình. Cụ thể đó là những tình huống với đồng nghiệp, tình huống ở công sở hay thậm chí là tình cảm giữa nam nữ, … Bạn sẽ có được những bài học về thái độ, về hướng giải quyết sao cho mọi việc tốt đẹp nhất.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 4px 0px 16px; overflow: hidden; font-size: 16.5px; line-height: 29px; color: rgb(17, 17, 17); font-family: Roboto; background-color: rgb(245, 245, 245);\">Bạn sẽ biết cách để tự tin hơn khi giao tiếp, hay biết cách thể hiện cảm xúc bằng những cử chỉ, ánh mắt của mình. Bạn còn khám phá được những hành vi từ người khác giới khi đắm chìm trong nội dung của quyển sách “Kế hoạch cuộc đời”.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 4px 0px 16px; overflow: hidden; font-size: 16.5px; line-height: 29px; color: rgb(17, 17, 17); font-family: Roboto; background-color: rgb(245, 245, 245);\">Cách để phát triển bản thân tốt nhất là không ngừng trao dồi. Sách là một nguồn kiến thức vô tận mà những ai đang gặp khó khăn có thể tìm đến như cách để xoa dịu tâm hồn và có được giải pháp để đối diện với vấn đề. Top 5 quyển sách đã được nêu trên đều là những nội dung đã được đọc giả trên khắp thế giới săn đón. Nhanh chóng có riêng những kho tàng để bắt đầu rèn luyện bản thân mỗi ngày. Ngày mai bạn sẽ là một phiên bản tốt hơn nếu làm đúng cách.</p>', '2021-10-22 09:19:49', '2022-12-21 18:54:31', 0),
(13, 2, '13 NGUYÊN TẮC NGHĨ GIÀU, LÀM GIÀU', 650000, 600000, 'assets/photos/13 nguyen tac.jpg', '<p><span style=\"color: rgb(17, 17, 17); font-family: Roboto; font-size: 16.5px; background-color: rgb(245, 245, 245);\">Giống như con ếch, muốn làm giàu và thành công thì bạn cần phải thoát khỏi luồng tư duy hạn hẹp của mình. Cách thức bạn suy nghĩ về vấn đề như thế nào sẽ quyết định quá trình bạn làm điều đó có khó hay không. Nếu bạn đơn giản hóa mọi suy nghĩ về làm giàu, bạn sẽ tiến đến thành công nhanh hơn.</span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Roboto; font-size: 16.5px; background-color: rgb(245, 245, 245);\">Napoleon Hill đã đề ra 13 nguyên tắc giúp những người muốn nghĩ giàu, làm giàu sẽ thấy quá trình này đơn giản hơn. Những gì tác giả cung cấp có thể cho bạn một cách nhìn hoàn toàn mới. Bởi để có được cuộc sống đầy đủ và hạnh phúc, Napoleon không đánh giá cao việc bạn tập trung cao độ để làm việc. Thay vào đó, bạn nên có được mục tiêu rõ ràng và đặt niềm tin vào bản thân. Đồng thời, bạn phải biết cách Tự kỷ ám thị. Ngay lúc này, bạn cần đề cao sức mạnh của trí tuệ, biết linh hoạt thay đổi trước những tác động của cuộc sống để trở thành người thành công. Người thành công luôn không hài lòng với hiện tại và càng khao khát nhiều hơn những gì đã có ở hiện tại.</span><span style=\"color: rgb(17, 17, 17); font-family: Roboto; font-size: 16.5px; background-color: rgb(245, 245, 245);\"><br></span></p>', '2021-10-22 14:03:21', '2022-12-21 18:35:33', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '7b887b1e751b6839105033c9f7bdf48c', '2021-10-19 17:03:55'),
(5, '2f65f1401a51d7680b9a70edfe376902', '2022-12-21 08:00:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(5, 'Nguyễn Văn Đức', 'ducreal1501@gmail.com', NULL, NULL, 'b4cbd48886a5331c5eb2fedadabe311c', 2, '2022-12-21 08:00:13', '2022-12-21 08:00:13', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
