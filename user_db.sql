-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 11:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `item_id`, `quantity`, `created_at`, `is_deleted`) VALUES
(74, 8, 64, 1, '2024-04-18 09:03:27', 0),
(75, 8, 41, 1, '2024-04-18 09:03:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `emoji` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `created_at`, `emoji`) VALUES
(51, 8, 'hgjgj', '2024-04-12 03:57:55', 'fa-smile'),
(52, 8, 'tan', '2024-04-13 07:37:48', 'fa-smile');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `price`, `image`, `deleted`, `description`) VALUES
(3, 'tân', 123.00, '16052015-029-15905554948191461671010.webp', 1, NULL),
(4, 'tân', 1543.00, '16052015-029-15905554948191461671010.webp', 1, NULL),
(5, 'sda', 123.00, '1642-2-15905559943062045617111-117-0-826-1355-crop-15905560320571622497371.webp', 1, NULL),
(6, 'ád', 23.00, '1642-2-15905559943062045617111-117-0-826-1355-crop-15905560320571622497371.webp', 1, NULL),
(7, 'tan', 127.00, '16052015-029-15905554948191461671010.webp', 1, NULL),
(8, 'dsad', 2.00, 'ảnh rắn.png', 1, NULL),
(9, 'tân', 123456.00, '16052015-029-15905554948191461671010.webp', 1, NULL),
(10, 'tan', 1234.00, 'ảnh rắn.png', 1, NULL),
(11, 'tan', 2321321.00, 'ảnh rắn.png', 1, NULL),
(12, 'tan', 2321321.00, 'ảnh rắn.png', 1, NULL),
(13, 'tan', 23312332.00, '1.jpg', 1, NULL),
(14, '22', 222.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(15, '11', 11.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(16, '222', 222.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(17, '4', 4.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(18, '2', 2.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(19, '2', 2.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(20, '3', 4.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(21, '4', 4.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(22, '6', 6.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(23, 'nướng', 32.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(24, 'nuong', 222.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(25, 'nat', 33.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(26, 'n', 33.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(27, 'NƯỚNG', 2334.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(28, 'gà nướng', 432.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, NULL),
(29, 'xào ớt', 222.00, 'z3909920515039_6aad8f99bee8e35add7655d03411c265.jpg', 1, 'cực kỳ thơm ngon'),
(30, 'Thịt ba chỉ nướng sa tế', 25000.00, 'thit-ba-chi-nuong-sate.jpg', 0, 'Món thịt ba chỉ nướng sa tế với màu sắc bắt mắt cùng mùi thơm nức mũi rất hấp dẫn, mời gọi bất cứ ai vừa nhìn thấy nó. Những miếng thịt mềm thơm được nướng vừa chín tới, thấm đều gia vị cùng vị cay cay của sa tế kích thích vị giác vô cùng. Bạn có thể ăn thịt ba chỉ nướng cùng với dưa leo, rau cải chấm muối ớt chanh để cảm nhận trọn vẹn hương vị của món ăn.'),
(31, 'Bạch tuộc nướng sa tế', 28000.00, 'bach-tuot-nuong-sate.jpg', 0, 'Bạch tuộc vốn dĩ đã có vị ngọt tự nhiên do vậy khi nướng bạn không cần phải chuẩn bị quá nhiều gia vị. Bạn chỉ cần làm sạch bạch tuộc rồi ướp cùng một chút hành tím, tỏi băm nhuyễn, sa tế cà gia vị. Để ướp khoảng 30-40 phút cho bạch tuộc thấm đều gia vị là có thể mang đi nướng. Những miếng bạch tuộc vàng ươm, dai dai cùng vị cay của sa tế rất hấp dẫn.'),
(32, 'Mực nướng sa tế', 30000.00, 'muc-nuong-sate.jpg', 0, 'Thêm một gợi ý cho các món nướng đơn giản tại nhà chính là mực nướng sa tế. Những miếng mực được nướng chín vàng đều 2 mặt thơm ngất ngây, phần thịt giòn giòn, dai dai xen lẫn vị cay nồng của sa tế và vị đậm đà của các loại gia vị tẩm ướp rất ngon.'),
(33, 'Sò lông nướng sa tế', 25000.00, 'so-long-nuong-sate.jpg', 0, 'Sò lông không chỉ chứa nhiều chất dinh dưỡng tốt cho cơ thể mà chúng còn được chế biến thành nhiều món ăn thơm ngon, lạ miệng và hấp dẫn. Từng chú sò lông béo ú được nướng trên bếp than hồng cùng với sa tế thơm lừng thật cuốn hút. Thịt sò khi nướng chín sẽ có vị ngọt thanh, giòn dai và không hề bị tanh mà ngược lại còn thơm mùi sa tế cùng nước sốt cay có hương vị đậm đà.'),
(34, 'Gà nướng mật ong', 30000.00, 'ga-nuong-mat-ong.jpg', 0, 'Gà nướng mật ong là một món ăn hấp dẫn mà bạn rất khó chối từ. Khi thưởng thức, bạn sẽ được cắn từng miếng thịt mềm mềm cùng hương vị đậm đà của nước sốt mật ong. Chấm với chút muối tiêu chanh ớt chua chua, cay cay thì càng tuyệt vời.'),
(35, 'Sườn heo nướng mật ong', 30000.00, 'suon-heo-nuong-mat-ong.jpg', 0, 'Sườn heo nướng mật ong là một trong các món nướng ngon không chỉ được các bạn nhỏ mà cả người lớn cũng rất yêu thích. Nguyên liệu để làm món ăn này đơn giản như sườn heo, mật ong, ớt, tỏi cùng nhiều loại gia vị khác'),
(36, 'Chân gà nướng mật ong', 25000.00, 'chan-ga-nuong-mat-ong.jpeg', 0, 'Nếu bạn là một tín đồ của các món nướng thì chắc chắn không thể bỏ qua được món chân gà nướng mật ong vàng ươm, thơm lừng này. Những chiếc chân gà với lớp da bên ngoài vàng giòn kết hợp cùng vị ngọt tự nhiên của mật ong khiến bạn cảm thấy vô cùng thích thú.'),
(37, 'Tôm nướng muối ớtTôm nướng muối ớt', 30000.00, 'tom-nuong-muoi-ot.jpg', 0, 'Vị ngọt thanh của thịt tôm quyện cùng vị cay nồng của muối ớt chắc chắn sẽ khiến bạn cảm thấy vô cùng thú vị. Món ăn này không cần phải chuẩn bị nguyên liệu cầu kì, chỉ cần tôm tươi sống, muối, tỏi, ớt bột và ớt băm nhuyễn là đủ. Để món tôm nướng muối ớt ngon và thêm phần hấp dẫn thì bạn nên chọn những con tôm sú tươi ngon, to và chắc thịt nhé!'),
(38, 'Gà nướng muối ớt', 45000.00, 'ga-nuong-muoi-ot.jpg', 0, 'Gà nướng muối ớt là một trong các món nướng ngon được rất nhiều người yêu thích. Lớp da gà vàng ươm, giòn thơm nức mũi, phần thịt gà thấm vị mặn của muối và vị cay của ớt sẽ chinh phục được những người khó tính'),
(39, 'Thịt bò cuộn nấm kim châm', 35000.00, 'bo-cuon-nam-kim-cham.jpg', 0, 'Thịt bò cuộn nấm kim châm là một trong các món nướng ngon tại nhà có cách chế biến cực đơn giản. Bạn chỉ cần chọn thịt ba chỉ bò Mỹ, sau đó cuộn chúng với một chút nấm kim châm tươi rồi cho lên bếp nướng.'),
(40, 'Món xào thập cẩm chay', 20000.00, '207455-mon-chay-xao-thap-cam.jpg', 0, 'Món ăn thành phẩm có màu sắc cực kỳ hấp dẫn và kích thích. Rau củ quả xào thập cẩm chay thanh đạm ít chất béo, tinh bột nhưng giàu vitamin, khoáng chất. Chất xơ trong rau củ cụng giúp bạn thanh lọc cơ thể, tốt cho tiêu hóa.'),
(41, 'Món xào chay ngũ sắc', 20000.00, '207456-mon-xao-ngu-sac.jpg', 0, 'Món xào chay ngũ sắc đậm đà hương vị giúp bạn và gia đình có bữa ăn ngon miệng. Món ăn vừa phải giòn giòn, ngọt tự nhiên mang đến sự thoải mái, kích thích ăn nhiều.'),
(42, 'Cải thìa xào dầu hào', 20000.00, '207457-cai-thia-xao-dau-hao.jpg', 0, 'Cuối cùng bạn đồ nước sốt dầu hào lên đĩa cải thìa. Rắc tỏi phi lên nữa là hoàn thành. Chắc chắn món ăn đậm đà sẽ khiến cả nhà mê đắm. Nếu bạn không ăn tỏi bạn có thể thay thế chúng bằng hành boa rô cũng rất thơm ngon.'),
(43, 'Bông bí xào tôm', 25000.00, '207458-bong-bi-xao-tom.jpg', 0, 'Bông bí giàu chất xơ cộng thêm tôm giàu canxi rất tốt cho sức khỏe. Món xào vừa dễ chế biến vừa lạ bổ dưỡng , ngọt tự nhiên giúp bạn ngon miệng, thanh lọc cơ thể.'),
(44, 'Mực xào cần tỏi', 25000.00, '207459-muc-xao-can-toi.jpg', 0, 'Món xào hấp dẫn giúp bạn làm dịu mát mùa hè nóng nực. Cách làm mực xào cần tỏi cũng khá đơn giản và không mất nhiều thời gian. Bạn cũng có thể kết hợp thêm thơm, cà chua... nếu thích.'),
(45, 'Khổ qua xào trứng', 25000.00, '207460-mon-xao-kho-qua-trung.jpg', 0, 'Khổ qua có tính mát nên sẽ giúp cơ thể thanh nhiệt, giải độc. Khổ qua xào trứng lại là món khoái khẩu của nhiều gia đình. Chính vì thế bạn có thể nhanh trí thực hiện ngay.'),
(46, 'Thịt dê xào lăn', 25000.00, '207461-thit-de-xao-lan.jpg', 0, 'Múc thịt dê xào lăn ra đĩa rắc lên đậu phộng rang giã nhỏ, ít ớt lát. Với món ăn này bạn có thể ăn cùng bánh mì, bún hoặc cơm đều cực hấp dẫn.'),
(47, ' Ếch xào lăn', 30000.00, '207462-ech-xao-lan.jpg', 0, 'Múc ếch xào lăn ra đĩa rắc thêm đậu phộng rang, rau ngò, tiêu xay. Món xào ngon nên tranh thủ thưởng thức nóng để trọn vẹn vị ngon. Chắn chắn cả nhà sẽ phải trầm trồ về độ ngon của món ếch xào lăn và khả năng nấu nướng của bạn.'),
(48, 'Gà xào lăn', 30000.00, '207463-ga-xao-lan.png', 0, 'Thịt gà xào lăn nóng hổi vừa thổi vừa ăn cùng cơm nóng cực ngon. Bạn có thể thực hiện món xào đơn giản này vào những ngày không biết ăn gì. Chắc chắn món ăn sẽ giúp cả nhà vui vẻ, ăn ngon.'),
(49, 'Sườn xào chua ngọt', 28000.00, '207464-mon-xao-suon-chua-ngot.jpg', 0, 'Món sườn xào chua ngọt đậm đà, lạ miệng cực hao cơm. Món xào thơm lừng dậy mùi kiến cả nhà không thể cầm lòng. Cách làm sườn xào chua ngọt cũng khá đơn giản ai cũng có thể thực hiện được.'),
(50, 'Cá hấp xì dầu', 125000.00, 'cac-mon-hap-2-1.jpg', 0, 'Cá hấp xì dầu là món hấp ngon, bổ dưỡng được nhiều người yêu thích. Bạn có thể áp dụng cho nhiều loại cá như: cá diêu hồng, các chép, cá lóc… tùy vào sở thích để làm món cá hấp xì dầu này.'),
(51, 'Cá lóc hấp sả chanh', 45000.00, 'cac-mon-hap-3.jpg', 0, 'Cá lóc hấp sả chanh là một trong số các món hấp ngon; nó không chỉ mang đến hương vị thơm ngon từ sả mà còn là vị ngọt mềm của thịt cá lóc và thêm 1 chút chua chưa từ chanh; tất cả hương vị hòa quyện vào nhau tạo thành món ăn cực kỳ hấp dẫn.'),
(52, 'Cải bẹ xanh cuộn cá thác lác hấp gừng', 45000.00, 'cac-mon-hap-4.jpg', 0, 'Sự kết hợp độc đáo giữa cải bẹ xanh và gừng làm cho món ăn tăng thêm hương vị, khi ăn vị ngọt của cá hòa quyện cùng vị cay của tương ớt và cải xanh rất tuyệt vời.\r\n\r\nCá thác lác hấp cải bẹ là món ăn ngon khi ăn có cảm giác thanh mát, rất dễ ăn. Món ăn rất đơn giản dễ làm để thay đổi thực đơn cho gia đình bạn, bổ dưỡng, tràn đầy năng lượng.'),
(53, 'Gà hấp muối sả', 75000.00, 'cac-mon-hap-5.jpg', 0, 'Gà hấp muối sả là món ăn là một món khá đặc biệt bởi mang đến hương vị đặc trưng mùi sả, vừa ngọt vừa dai, ngon đúng điệu.'),
(54, 'Gà hấp gia vị', 85000.00, 'cac-mon-hap-6.jpg', 0, 'Gà hấp gia vị đậm đà với thịt chín mềm thơm, dai ngon hấp dẫn. Gà ngấm đều gia vị ướp cay cay, béo béo. Khi ăn có thể chấm cùng tương ớt, muối ớt hay các loại thức chấm tùy thích.'),
(55, 'Gà cuộn trứng muối hấp', 100000.00, 'cac-mon-hap-7.jpg', 0, 'Bạn sẽ hoàn toàn ngạc nhiên vì hương vị thơm ngon độc đáo của món thịt đùi gà cuộn trứng muối này, với vị mằn mặn của trứng muối và vị ngọt của thịt gà tạo nên một hương vị mới lạ của món này.'),
(56, 'Trứng cuộn tôm hấp', 50000.00, 'cac-mon-hap-8.jpg', 0, 'Trứng cuộn tôm hấp là món ăn giàu chất dinh dưỡng và có mùi vị thơm ngon, phù hợp với khẩu vị của mọi người và dễ làm vô cùng. Từng miếng trứng cuộn tôm hình xoắn ốc rất đẹp mắt và thơm ngon sẽ chinh phục bạn cũng như bọn trẻ ngay từ cái nhìn đầu tiên.'),
(57, 'Đậu phụ hấp trứng', 30000.00, 'cac-mon-hap-9.jpg', 0, 'Món trứng hấp đậu phụ non là món ăn mới dựa trên những nguyên liệu thực phẩm quen thuộc. Món này ít chất béo, bổ dưỡng, ăn vào miệng mềm mại rất thích hợp cho trẻ em và người già hay người đang bị ốm yêu cầu thức ăn dễ tiêu, chống đầy bụng.'),
(58, 'Nghêu hấp sả', 30000.00, 'cac-mon-hap-10.jpg', 0, 'Nghêu hấp sả là món ăn khá phổ biến và được nhiều người yêu thích. Phương pháp chế biến món ăn này rất đơn giản, tuy nhiên để giữ được độ ngọt, dai, hương vị tươi mát và giá trị dinh dưỡng từ thịt nghêu.'),
(59, 'Đậu phụ nhồi tôm thịt hấp', 30000.00, 'cac-mon-hap-12.jpg', 0, 'Món đậu hũ nhồi tôm thịt hấp ngon miệng mà lại rất dễ làm. Rất thích hợp làm món khai vị tiệc hay đơn giản là để làm mới bữa cơm gia đình.'),
(60, 'MỰC CHIÊN MẮM', 40000.00, '20210121142711-340f362e.jpg', 0, 'Để cho món mực chiên nước mắm thêm thơm ngon độc đáo hơn thì các bạn hãy chuẩn bị thêm chút rau mùi trang trí lên đĩa mực chiên nước mắm và 1 đĩa tương ớt để chấm cùng với mực.\r\n\r\n'),
(61, 'NEM RÁN ĂN KÈM BÚN VÀ RAU SỐNG', 25000.00, '20210121142711-52a98d92.jpg', 0, 'Bắc chảo lên bếp cho dầu ăn vào chiên nhỏ lửa cho tới khi nem chín vàng đều các mặt là được. Khi ăn chấm với nước mắm tỏi ớt.'),
(62, 'CÁNH GÀ CHIÊN BƠ', 40000.00, '20210121142712-6db0b7c4.jpg', 0, 'Cho vào chảo một lượng dầu ăn vừa đủ, đun dầu sôi nóng già, vặn lửa nhỏ vừa rồi cho cánh gà đã được tẩm bột chiên giòn vào chiên, bạn nhớ để nhỏ lửa để cánh gà chín đều từ trong ra ngoài và giòn tan nhé, khi thấy cánh gà chín vàng đều các mặt, dậy mùi thơm hấp dẫn thì bạn vớt ra, cho vào đĩa có giấy thấm dầu.'),
(63, ' THỊT BA CHỈ QUAY GIÒN BÌ', 25000.00, '20210121142712-e3d47972.jpg', 0, 'Đun nóng dầu ăn trong một chảo thật lớn. Dầu ăn phải nhiều để làm chìm được miếng thịt. Để thịt không cháy hoặc dính dưới đáy chảo, bạn có thể cho một chiếc giá đỡ nhỏ dưới lòng chảo. Khi dầu nóng, cho miếng thịt vào chiên cho đến khi cả hai mặt vàng ươm, bì nổ giòn đều. Nhớ lật để cả hai mặt chín đều.'),
(64, 'TÔM TẨM BỘT CHIÊN XÙ', 40000.00, '20210121142713-a70585a1.jpg', 0, 'Đổ dầu vào chảo đun sôi dầu và thả tôm đã lăn vào rán vàng giòn. Khi con tôm chuyển màu vàng ươm thì bạn có thể vớt ra và khi vớt ra bạn hãy nhớ là thấm với giấy ăn cho bớt dầu đi nhé thì món tôm sẽ bớt ngấy hơn.'),
(65, 'NEM CUA BỂ', 50000.00, '20210121142713-a5a97802.jpg', 0, 'Pha nước chấm chua ngọt: Gồm đu đủ xanh, cà rốt đem gọt vỏ, rửa sạch rồi thái lát mỏng. Cho chút nước mắm, chanh, đường, hạt nêm, nước dùng vừa đủ lên đun, nước sôi cho đu đủ, cà rốt thái lát vào trần qua cho ngấm. Đổ nước chấm ra bát nhỏ. Băm ớt, tỏi vào bát nước chấm nếu thích.'),
(66, 'VỊT CHIÊN CAY', 35000.00, '20210121142714-06cab2f5.jpg', 0, 'Phi thơm hành, tỏi băm rồi đổ phần vịt chiên trở lại nồi, đảo đều rồi cho nước xốt vào. Ban đầu bật lửa lớn đến khi nước xốt sôi, tiếp tục đảo đều, nêm nếm rồi hạ nhỏ lửa, đun tới khi xốt sệt và bám đều vào miếng vịt.'),
(67, 'THỊT CHIÊN NƯỚC MẮM', 35000.00, '20210121142715-27926e10.jpg', 0, ' Lấy thịt ra, thấm cho ráo dầu rồi xắt thành miếng. Thịt rán vẫn sẽ rất mềm ở trong, lại có phần vỏ ngoài giòn tan, ăn thích cực luôn!'),
(68, 'CÁ CƠM CHIÊN TỎI ỚT', 45000.00, '20210121142716-1103d233.jpg', 0, 'Món ăn khi hoàn thành sẽ có màu vàng cánh gián rất hấp dẫn. Những con cá chín đều giòn cùng với vị đậm đà thơm ngọt của mật ong và cay cay của tỏi và ớt tạo ra một hương vị thơm ngon rất đặc trưng. Có thể ăn kèm cá cơm chiên tỏi ớt cay thơm với dưa leo và rau sống thì rất là đưa cơm luôn đấy nhé!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `email`, `phone`, `address`, `note`, `transaction_id`, `total_quantity`, `total_amount`, `created_at`) VALUES
(1, 8, 'user@gmail.com', '23213', 'sd', 'ds', '', 1, 100000.00, '2024-04-18 06:43:30'),
(2, 8, 'user@gmail.com', '0364273884', 'Đông Hòa Dĩ An', 'tÂn mua', '', 2, 128000.00, '2024-04-18 06:44:53'),
(3, 8, 'user@gmail.com', '22', 'dsd', '', '', 1, 35000.00, '2024-04-18 06:46:44'),
(4, 8, 'user@gmail.com', '0364273884', 'Đông hòa Dĩ An Bình Dương', 'fd', '', 4, 131000.00, '2024-04-18 09:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_favorites`
--

INSERT INTO `user_favorites` (`id`, `user_id`, `item_id`, `created_at`) VALUES
(2, 7, 8, '2024-03-28 12:59:39'),
(3, 7, 9, '2024-03-28 12:59:43'),
(16, 8, 41, '2024-04-05 14:56:06'),
(17, 8, 44, '2024-04-05 15:26:17'),
(18, 8, 62, '2024-04-12 09:07:34'),
(19, 8, 31, '2024-04-12 13:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'tann', 't@gmail.com', '38040d2bbad2296223c15c51fb7dcf8e', 'user'),
(2, 'tan', 'tan123@gmail.com', '38040d2bbad2296223c15c51fb7dcf8e', 'user'),
(3, 'tan123', 'tan@gmai.com', '68c68f0d769279f05a41e82b67c6e346', 'admin'),
(4, 'tan1234', 'tan1@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(5, 'tanax', 'tan1234@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(6, 'tan', '1@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(7, 'tan', '123@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(8, 'Lê Thanh Tân', 'user@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(9, 'tan123', 'lethanhtan123@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(10, 'dsad', 'tan@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'admin'),
(11, 'tan', '12@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'user'),
(12, 'tan', 'admin@gmail.com', '3d447fb349172851cbd46fa926d801a5', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_form` (`id`),
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_form` (`id`);

--
-- Constraints for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `user_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_form` (`id`),
  ADD CONSTRAINT `user_favorites_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
