-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2021 lúc 07:34 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sachtruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `truyen_id` int(11) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` int(11) NOT NULL,
  `slug_chapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `truyen_id`, `tieude`, `tomtat`, `noidung`, `kichhoat`, `slug_chapter`) VALUES
(3, 8, 'Chương 1: Hội Ðào Viên Anh Hùng Kết Nghĩa', 'Chương 1: Hội Ðào Viên Anh Hùng Kết Nghĩa', 'Phàm thế cuộc trong thiên hạ (1), chia rồi lại hợp, hợp rồi lại chia. Tỷ như nhà Châu mất vận, bảy nước phân tranh, sau đó nhà Tần lại gồm thâu về một mối. Rồi khi nhà Tần bị diệt vong, để cho Hán, Sở tranh hùng, và cuối cùng Hán đã diệt Sở để thu về một mối.  Nhà Hán kể từ vua Cao Tổ là Lưu Bang trảm xà khởi nghĩa thống nhất được thiên hạ, giữ lấy ngai vàng cho Ðến khi vua Quang Vũ là Lưu Tú quật khởi, giết loạn thần là Vương Mãng, phục hưng cho nhà Hậu Hán (2), rồi truyền Ðến đời vua Hiến Ðế thì bị chia làm ba nước. Cái nguyên do rối loạn sau này là do tới hai ông vua Hoàn Ðế và Linh Ðế.  Vua Hoàn Ðế giam cầm các bề tôi trung trực, lại tin dùng bọn hoạn quan, làm cho thế nước bị suy vi. Khi vua Hoàn Ðế băng hà, vua Linh Ðế lên nối ngôi, có quan Ðại Tướng Quân Ðậu Vũ và quan Thái Phó Trần Phồn cùng giúp việc trị nước. Hai vị tôi thần nầy vốn một lòng trung nghĩa, nhưng bên cạnh lại có bè lũ hoạn quan Tào Tiết chuyên quyền làm bậy. Ðậu Vũ và Trần Phồn lập mưu tru diệt bọn này để trừ tai họa cho nước, chẳng may cơ mưu bị bại lộ, hai vị tôi thần nầy đều bị chúng hãm hại.  Từ đó, bọn hoạn quan càng lộng quyền, chúng liên kết với loạn thần tác yêu, tác quái.  Năm Kiến Ninh thứ hai (niên hiệu của vua Linh Ðế), tháng tư ngày rằm, nhà vua ngự ra điện Ôn Ðức, vừa ngồi xuống ngự ỷ, bỗng có một trận cuồng phong rất lớn nổi lên, rồi một con rắn xanh to tướng từ trên sà ngang cung điện rơi xuống nằm ngang trên ngự ỷ. Vua thất kinh ngã lăn ra bất tỉnh, các quan hầu cận phải đưa vua vào nội cung cứu cấp.  Nhưng chỉ trong giây lát, con rắn biến đi đâu mất, trời lại nổi lên một trận cuồng phong dữ dội, mưa tuôn như trút nước. Kế đó, mưa đá lại rơi theo tới hơn nửa ngày, nhà cửa bị hư sập vô số.  Vào tháng hai, năm Kiến Ninh thứ tư, kinh đô Lộc Dương lại bị động đất, rồi nước biển dâng lên tràn ngập cả một miền duyên hải. Dân cư, làng mạc, của cải bị sóng cuốn ra khơi mất tích.  Cũng vào đời vua Linh Ðế, vào năm Quang Hòa thứ nhất, tại một vùng thôn dã, có một con gà mái hóa gà trống, rồi đến ngày mồng một tháng sáu, một luồng hắc khí dài hơn mười trượng bay thẳng vào điện Ôn Ðức.  Cũng vào mùa thu năm đó, trước nhà Ngọc Ðường bỗng hiện lên một cầu vồng sáng chói. Sườn núi Ngữ Nguyên bị sụp lở, đất đá đè chết người.  Chỉ trong thời gian mấy năm mà không biết bao nhiêu sự việc ly kỳ xảy ra. Vua buồn bã hạ chiếu hỏi các quan triều thần tới sao có những hiện tượng quái gở như vậy?  Quan Nghị Lang Thái Ung dâng sớ tâu, đại ý nói: \"Rắn sa, gà mái hóa gà trống là điềm đàn bà và hoạn quan làm loạn nước...\"  Lời tâu rất thống thiết, khiến nhà vua xem xong cũng phải não lòng. Vua chỉ thở dài rồi quay vào thay áo.  Bấy giờ Tào Tiết đứng núp đằng sau vua, xem trộm được tờ biểu, thấy thế tức giận vô cùng, liền bàn mưu với bè đảng của hắn, lập kế gieo tội cho Thái Ung, và cách chức đuổi Thái Ung về làm thứ dân nơi điền lý.  Sau đó bọn Trương Nhượng, Triệu Trung, Phong Tư, Tào Tiết, Hầu Lãm, Kiển Thạc, Trình Khoáng, Hạ Huy, Quách Thắng, tất cả mười người họp nhau xưng là \"Thập Thường Thị\" chuyên làm điều gian ác.  Vua Linh Ðế lại nhu nhược, tin dùng Trương Nhượng như một kẻ tôi trung, việc triều chính đều giao cho Trương Nhượng quyết đoán, Ðến nỗi kêu Trương Nhượng bằng \"Á phụ\".  Triều đình càng bê tha thối nát, lòng người muốn nổi loạn, giặc giã khắp nơi dấy loạn lên như ong vỡ tổ.  Bấy giờ, tại quận Cự Lộc có ba anh em họ Trương là Trương Giác, Trương Bảo, và Trương Lương. Trương Giác thi hỏng Tú Tài, không quản đèn sách nữa, ngày ngày vào núi hái thuốc. Bỗng một hôm, Trương Giác gặp một ông lão mặt đỏ như hài đồng, mắt xanh như nước biếc, tay chống gậy lê, kêu Trương Giác vào một hang núi, rồi trao cho ba quyển \"thiên thư\" và dặn:  - Ðây là bộ \"Thái bình yêu thuật\" ta ban cho con để học. Học được sách này, con phải thay trời mà tuyên hóa, cứu dân độ thế. Còn nếu manh tâm đổi dạ thì sẽ gặt lấy quả báo không nhỏ.  Trương Giác tiếp lấy Thiên thư, bái tạ rồi yêu cầu xin được biết tên ông lão. Ông lão nói:  - Ta chính là Nam Hoa Lão Tiên đây.  Dứt lời hóa thành luồng gió mát bay đi mất.  Trương Giác được bộ sách ấy, ngày đêm tập luyện, chẳng bao lâu đã biết cách kêu mưa gọi gió, và tự xưng hiệu là \"Thái Bình đạo nhân\".  Vào tháng giêng năm Trung Bình thứ nhất (cũng đời vua Linh Ðế), có bệnh thời khí nổi lên, lan rộng khắp vùng. Trương Giác đem bùa phép đi trị bệnh cho dâng gian, lấy hiệu là \"Ðại Hiền lương sư\". Lúc đó Trương Giác lại có dạy thêm được hơn năm trăm đồ đệ, cũng học rành phép bùa chú, nên cả thầy trò chia nhau vân du khắp nơi.  Thấy việc chữa bệnh của Trương Giác có hiệu quả, thiên hạ đồn ầm lên, và rủ nhau theo làm đồ đệ của Trương Giác mỗi ngày một đông thêm.  Trương Giác đem tất cả tín đồ trong thiên hạ chia ra làm ba mươi sáu phường, mỗi phường có hơn một vạn người, và có cử một viên Cừ Soái để cai quản. Rồi Trương Giác lại tự xưng mình là Tướng Quân, coi cả ba mươi sáu phường đó.  Chưa hết, Giác còn phao ngôn để mê hoặc dân chúng rằng: \"Trời xanh đã chết, trời vàng nên lên thay. Ðến năm Giáp Tý, thiên hạ đại cát\".  Giác lại truyền cho các tín đồ dùng đất sét trắng viết lên nơi cửa lớn hai chữ \"Giáp Tý\", và dân cư khắp tám châu: Thanh, U, Từ, Ký, Kinh, Dương, Duyện, Dự, ai muốn được hưởng phước phải viết danh vị \"Ðại Hiền lương sư Trương Giác\" mà thờ.  Trương Giác đã có ý làm phản, nên mật sai đồ đệ là Mã Nguyên Nghĩa đem vàng bạc gấm vóc vào triều lo lót với tên hoạn quan Phong Tư, để nhờ tên này làm nội ứng.  Trương Giác lại bàn với hai người em rằng:  - Cái khó đạt nhất là lòng dân. Nay dân đã thuận theo mình rồi, nếu không thừa cơ đoạt thiên hạ thì đáng tiếc lắm.  Rồi Trương Giác vội vã sắm cờ vàng, khăn vàng để hẹn ngày khởi sự. Giác sai một tên đệ tử là ựường Châu mang mật thư đưa cho Phong Tư, nhưng chẳng may Ðường Châu không thích hành động của Giác cho nên chạy thẳng vào tòa Thượng Thư cáo biến.  Thế là việc làm của Trương Giác bị bại lộ. Vua hay tin phản loạn liền triệu Ðại Tướng Quân Hà Tiến vào triều, truyền bắt Mã Nguyên Nghĩa đem chém, và hạ ngục cả gia quyến Phong Tư hơn ngàn người.  Trương Giác thấy vậy liền gấp rút khởi binh, tự xưng là Thiên Công Tướng Quân, phong cho Trương Bảo làm Ðịa Công Tướng Quân, Trương Lương làm Nhân Công Tướng Quân.  Giác lại rêu rao với bá tánh rằng: \"Nay vận Hán đã hết, có đại thánh nhân xuất thế, ai nấy thuận trời theo chính, để hưởng thái bình an lộc.\"  Thế là khắp bốn phương có hơn bốn, năm mươi vạn người đội khăn Vàng hưởng ứng theo Trương Giác làm phản. Thế giặc rất mạnh, quan quân nghe gió đã chạy dài.  Hà Tiến liền tâu với vua cấp tốc sai sứ đến các Châu, Quận truyền lệnh phòng ngự, ngăn địch lập công. Ðồng thời sai Trung Lang Tướng Lư Thực, Hoàng Phủ Tung, và Châu Tuấn dẫn ba đội tinh binh chia ra làm ba đường dẹp giặc.  Loading...   Bấy giờ, giặc Khăn Vàng một đạo do Trương Giác cầm đầu, kéo thẳng đến U Châu xâm lấn. Quan Thái Thú châu này là Lưu Yên vốn dòng tôn thất ở đất Cảnh Lăng, vùng Giang Hạ, là con cháu Lỗ Cung Vương nhà Hán.  Lưu Yên thấy tình thế khẩn trương vội triệu quan Hiệu Úy Châu Tĩnh vào bàn kế.  Châu Tĩnh nói:  - Quân giặc đông như nước lũ, quân ta ít không thể nào ngăn nổi. Minh công nên gấp rút chiêu mộ nghĩa binh mới giữ nổi Châu này.  Lưu Yên nghe lời liền treo bảng khắp nơi chiêu mộ nghĩa binh.  Ngày kia, bản văn đưa đến Trác Huyện, dân chúng ra xem đông nghịt. Trong số dân chúng ấy có một vị anh hùng tánh tình khoan hòa, ít nói, mừng giận không lộ ra sắc mặt, nhưng lại có chí lớn, thường kết giao với các anh hùng, hào kiệt trong thiên hạ. Người này mình cao tám thước, hai tai lớn như chày, môi đỏ như thoa son, họ Lưu tên Bị, tự là Huyền Ðức, vốn cháu chắt Trung Sơn Tĩnh Vương Lưu Thắng, tức dòng dõi vua Hiếu Cảnh Hoàng Ðế nhà Hán.  Nguyên trước kia, thời Hán Vũ Ðế, con trai Lưu Thắng là Lưu Trinh được phong tước Trác Lộc Ðình Hầu. Về sau, nhân một buổi tế tông miếu, Lưu Trinh vào dâng vàng hành lễ, chẳng may vàng sắc xấu, bị mất tước Hầu (3), và từ đấy con cháu mới có một chi dời về Trác Quận lập nghiệp.  Lưu Huyền Ðức tức là cháu Lưu Hùng, con Lưu Hoằng. Lưu Hoằng có thi đậu Hiếu Liêm, rồi làm chức Lại, nhưng mất sớm.  Huyền Ðức mồ côi cha, thờ mẹ rất có hiếu. Tánh ham đọc sách, nhưng nhà nghèo, Huyền Ðức phải làm nghề đóng dép, dệt chiếu để sinh sống. Nhà ông ở tới thôn Lâu Tang, phía Ðông Nam có một cây dâu rất lớn, cao hơn năm trượng, đứng xa trông như một chiếc lọng vậy.  Ðã có nhiều người đi qua trông thấy câu dâu kỳ dị ấy, từng nói:  - Nhà này ắt sanh quý tử.  Lúc còn nhỏ, Huyền Ðức thường chơi đùa với trẻ con trong làng, và thường đứng dưới gốc cây dâu mà nói:  - Tao làm Thiên tử, nên ngự cỗ xe có lọng nầy!  Người chú là Lưu Nguyên Khởi nghe nói thường mắng:  - Cháu chỉ nói bậy.  Tuy vậy, Nguyên Khởi cũng nói rằng:  - Thằng bé này phải là một người phi thường mai sau.  Nhân thấy nhà Huyền Ðức nghèo, Lưu Nguyên Khởi tìm cách giúp đỡ để Huyền Ðức ăn học. Năm Huyền Ðức mười lăm tuổi, được mẹ cho đi du học, thụ giáo Trịnh Huyền và Lư Thực, lại kết bạn với Công Tôn Toản.  Ðến nay, Huyền Ðức đã được hai mươi tám tuổi, và ngày hôm ấy, khi đọc bản chiêu quân của Lưu Yên, Huyền Ðức cảm khái thở dài một tiếng.  Bỗng nghe đằng sau có tiếng người nói lớn:  - Ðại trượng phu phải vì quốc gia mà ra sức, chứ than thở có ích gì?  Huyền Ðức quay đầu lại, thấy người vừa nói mình cao tám thước, mặt dữ như cọp, mắt ốc tròn xoe, hàm én râu hùm, tiếng nói rền như sấm. Biết không phải là người thường, Huyền Ðức liền hỏi thăm tên họ.  Người ấy đáp:  - Tôi họ Trương tên Phi, tự là Dực Ðức, ông cha mấy đời ở nơi Trác Quận nầy làm nghề bán rượu, mổ thịt, vì vậy tôi cũng có chú ít ruộng vườn, thích kết giao những anh hùng hào kiệt trong thiên hạ, nay thấy ông xem bảng chiêu quân mà than thở nên hỏi thử một lời.  Huyền Ðức nói:  - Tôi vốn là người trong thân tộc nhà Hán, họ Lưu tên Bị, đáng lẽ trong lúc giặc \"Khăn Vàng\" dấy loạn cũng phải góp một phần cứu nước an dân, nhưng vì sức chưa làm được nên đau lòng than thở.  Trương Phi nói:  - Nhà tôi cũng có chút ít của cải, tôi muốn bỏ ra để tuyển mộ một đoàn hương dũng, rồi cùng ông cử đại sự, ông thấy có nên chăng?  Huyền Ðức rất mừng, nắm tay Trương Phi dắt vào trong quán rượu đàm đạo. Trong lúc hai người đang đối ẩm bàn thế sự thì bỗng thấy một đại hảo hán đẩy một chiếc xe để ngoài cửa rồi bước vào thét tửu bảo, nói:  - Ðem rượu thịt ra đây! Hôm nay ta uống say sưa cho một bữa để ngày mai đầu quân giết giặc.  Huyền Ðức liếc nhìn ra cửa thấy người này mình cao lớn chín thước, mặt đỏ như thoa son, mắt phượng mày ngài, tướng mạo đường đường, oai phong lẫm liệt.  Biết người ấy cũng là một cái thế kỳ nhân, nên Huyền Ðức vội đứng dậy tiếp mời vào ngồi chung bàn và hỏi thăm danh tánh.  Người ấy đáp:  - Tôi họ Quan tên Vũ, tự là Thọ Trường, sau đổi là Vân Trường, người đất Giải Lương, tỉnh Hà Ðông. Nhân vì vùng tôi ở có một tên thổ hào ỷ thế hiếp đáp dân lành, tôi nổi giận giết chết nó rồi bỏ đi lánh nạn. Tôi phiêu bạt trong giang hồ đã hơn năm năm, nay nghe có giặc \"Khăn Vàng\" nổi lên khấy nhiễu, nên muốn đầu quân trừ giặc, cứu an bá tánh.  Huyền Ðức cũng đem chí nguyện của mình tỏ bày. Vân Trường mừng rỡ uống ba chung rượu rồi theo Huyền Ðức và Trương Phi dắt nhau về trang trại để bàn bạc.  Trương Phi nói:  - Muốn làm nên việc lớn, cốt nhất phải hiệp sức đồng tâm mới được. Sau nhà tôi có một vườn đào đang tiết hoa nở rất nhiều, ngày mai chúng ta đến đó tế cáo trời đất, kết làm anh em.  Huyền Ðức và Vân Trường đồng thanh khen phải.  Ngày hôm sau, Trương Phi sai gia nhân mổ trâu đen, ngựa trắng bày đủ lễ trong vườn đào. Ba người đứng trước hương án, vái mỗi người hai cái rồi cùng thề rằng:  \"Ba chúng tôi là Lưu Bị, Quan Vũ, Trương Phi, tuy khác họ nhưng kết làm anh em, quyết đồng tâm hiệp lực, cứu khổn phò nguy, trên báo đáp quốc gia, dưới giúp yên bá tánh. Chúng tôi không mong được sanh cùng năm cùng tháng cùng ngày, chỉ nguyện được chết cùng ngày cùng tháng cùng năm. Hoàng thiên, hậu thổ chứng giám lời này. Ai bội nghĩa bị trời tru đất diệt.\"  Thề xong, ba người đem so tuổi nhau thì Huyền Ðức được làm anh cả, Vân Trường làm thứ, Trương Phi làm em út.  Trương Phi lại sai gia nhân bắt trâu dê trong chuồng đem mổ làm tiệc tới vườn đào, tập trung tất cả dũng sĩ trong vùng đến ăn uống. Dũng sĩ tề tựu có tới hơn ba trăm người, vui say một bữa thật no nê.  Hôm sau, mọi người chia nhau đi thu thập khí giới, mọi việc tạm yên, chỉ hiềm một nỗi còn thiếu ngựa để cỡi.  Trong lúc đang lo tính, bỗng có một người chạy vào báo:  - Có hai người khách thương, cùng đoàn tùy tùng dẫn bầy ngựa khá đông, đang đi về hướng trang trại này.  Huyền Ðức nói:  - Ðây là trời giúp ta!  Ba anh em vội ra khỏi trại đón tiếp hai người khách thương mời vào trang trại.  Hai người này chính là hai thương gia lớn ở đất Trung Sơn, một người là Trương Thế Bình, một người là Tô Song, hàng năm thường lên mạn Bắc mua giống ngựa khỏe đem về Tràng An bán. Nay vì miền này có giặc nên không thể đem ngựa đi qua được.  Sau khi đã mời được hai vị khách thương vào trại, Huyền Ðức hối dọn tiệc đãi đằng, rồi đem ý muốn cứu dân độ thế của mình ra bày tỏ. Hai người khách thương vui lòng hiến cho năm mươi con ngựa khỏe, lại tặng thêm năm trăm lượng vàng bạc, một ngàn cân thép tốt để rèn binh khí và giáp trụ.  Khách cáo từ, Huyền Ðức tạ ơn tiễn chân vài dặm rồi trở về cậy thợ giỏi chế một đôi song cổ kiếm. Vân Trường cũng đánh một cây đại đao \"Thanh long yểm nguyệt\", gọi là \"Lãnh diễm cứ\" nặng tám mươi hai cân. Trương Phi rèn một cây trượng \"Bát điểm cương mâu\".  Ai nấy đều trang bị cương giáp, rồi kéo năm trăm quân hương dũng đến ra mắt quan Thái Thú Lưu Yên.  Lưu Yên hỏi đến danh tánh, ba anh em đều xưng rõ tên họ, riêng Huyền Ðức còn nói cho Lưu Yên biết mình là tông phái Hoàng Gia. Lưu Yên mừng rỡ nhận Huyền Ðức làm cháu (So theo vai vế thì Lưu Yên thuộc vai chú bác).  Vào thành chưa được vài hôm thì đã có tin quân thám thính về báo:  - Tướng giặc Khăn Vàng là Trình Viễn Chí thống lãnh năm vớn quân kéo đến quấy nhiễu Trác Quận.  Lưu Yên liền sai Châu Tĩnh dẫn ba anh em Huyền Ðức cùng năm trăm quân hương dũng đi trước phá giặc. Anh em Huyền Ðức không hề ngần ngại, lãnh quân tiền đạo trực chỉ đến chân núi Ðại Hưng, và trông thấy quân giặc cũng vừa kéo đến đó.  Huyền Ðức thúc ngựa ra trước trận, bên tả có Vân Trường, bên hữu có Trương Phi yểm hộ.  Huyền Ðức giơ roi thét mắng quân giặc:  - Phản loạn, đừng hòng múa rối, hãy xuống ngựa đầu hàng cho sớm.  Trình Viễn Chí nổi giận sai Phó Tướng Ðặng Mậu ra đánh. Ðặng Mậu vừa nhảy ra đã bị Trương Phi xông đến đâm một xà mâu trúng ngay giữa ngực, ngã lăn xuống ngựa.  Thấy Phó Tướng mình chưa ra tay đã bị hại rồi, Trình Viễn Chí liền múa đao đến đánh Trương Phi, nhưng Vân Trường đã vung Thanh Long Ðao cản lại. Uy lực của Vân Trường rất mạnh, Trình Viễn Chí kinh hãi run sợ, trở tay không kịp bị Vân Trường chém một đao đứt làm hai đoạn.  Người sau có thơ khen Vân Trường và Trương Phi như sau:  Anh hùng xuất trận buổi đầu tay,  Một thử xà mâu, một thử đao.  Khí tiết rạng ngời oai lực khét,  Chia ba thiên hạ rạng anh hào.  Quân giặc bị mất chủ tướng hoảng hốt chạy dài. Huyền Ðức xua quân đuổi đánh, chúng đầu hàng vô số.  Ðoàn quân đắc thắng kéo về thành được Lưu Yên thân hành ra tận bên ngoài tiếp đón và ủy lạo quân sĩ.  Sáng hôm sau, lại có tin giặc \"Khăn Vàng\" Ðến vây phá Thanh Châu, và quan Thái Thú Thanh châu là Cung Cảnh cho người sang cầu cứu. Lưu Yên liền cho mời Huyền Ðức đến thương lượng.  Huyền Ðức nói:  - Giặc cậy thế đông chia quân khuấy rối, nay U châu đã tạm yên, Bị này xin tình nguyện đem quân để cứu Thanh Châu.  Lưu Yên liền sai Châu Tĩnh đem năm ngàn quân cùng ba anh em Huyền Ðức kéo đi.  Giặc thấy cứu binh tới liền chia làm ba đạo, bao vây rất ngặt. Huyền Ðức thấy mình ít quân quá, không thể nào cự nổi liền cho lệnh rút quân ngoài ba mươi dặm hạ trại. Ðoạn nói với Quan, Trương:  - Muốn phá giặc phải thi hành kỳ binh mới được.  Rồi chia cho Vân Trường một ngàn quân dọn ra phục bên tả nơi chân núi, Trương Phi cũng lãnh một ngàn quân phục bên hữu nơi chân núi.  Sáng hôm sau, Huyền Ðức cùng Châu Tĩnh dẫn quân gióng trống tiến đến trới địch. Quân giặc ra nghênh chiến, Huyền Ðức giả thua kéo quân chạy về.  Tưởng mình đắc thế, quân giặc ồ ạt đuổi theo. Khi đuổi đến chân núi, bỗng nghe mấy tiếng chiêng báo hiệu, hai toán quân phục của Vân Trường và Trương Phi đồng kéo ra một lượt đánh bộc hậu. Ðạo quân của Huyền Ðức quay lại tác chiến. Ba mặt đánh dồn, quân giặc đại bại, chết không biết bao nhiêu mà kể. Chúng bỏ kết cờ xí, mạnh ai nấy chạy. Huyền Ðức xua quân truy kích, đuổi đến thành Thanh Châu thì quan Thái Thú Cung Cảnh hay được tin thắng trận vội mở cửa thành thúc quân tràn ra tiếp ứng.  Nhờ đó mà Thanh Châu được giải vây, quân giặc tản mác hết. Người sau có thơ khen Huyền Ðức:  Mưu hay tỏ rõ sức thần công,  Hai cọp suy ra kém một rồng.  Gặp lúc cô cùng, người mới rõ,  Tam phân thiên hạ, xứng anh hùng  Cung Cảnh đón tiếp ba anh em Huyền Ðức và Châu Tĩnh vào thành bày tiệc khao thưởng ba quân. Tiệc xong, Châu Tĩnh muốn trở về U Châu, Huyền Ðức nói:  - Gần đây, nghe quan Trung Lang Tướng Lư Thực đánh nhau với Trương Giác, chúa giặc Khăn Vàng tới Quảng Tôn. Bị tôi xưa đã từng theo học Lư tiên sinh, nay muốn đến đó giúp ân sư một phen.  Châu Tĩnh bằng lòng, dẫn quân trở về một mình. Ba anh em Huyền Ðức đem năm trăm quân bản bộ thẳng đến Quảng Tôn, vào dinh ra mắt Lư Thực, và nói rõ ý kiến mình tình nguyện phá giặc. Lư Thực mừng lắm, lưu ba anh em Huyền Ðức dưới trướng để đợi lệnh.  Bấy giờ, Trương Giác có hơn mười lăm vạn quân, chia ra quấy nhiễu nhiều chỗ. Phần Trương Giác thì giữ năm vạn, đang cầm cự tới Quảng Tôn, chưa phân thắng bại.  Lư Thực bảo Huyền Ðức:  - Nay Trương Giác bị ta vây ở đây chưa thể làm gì được, nhưng hai người em của nó là Trương Lương, Trương Bảo đang quấy rối ở Dĩnh Xuyên, đối trận với Hoàng Phủ Tung và Châu Tuấn. Nếu quân giặc ở Dĩnh Xuyên mà thắng thế được thì nơi đây ắt bị nguy hiểm. Vậy ngươi hãy dẫn binh mã bản bộ, và thêm một ngàn quân ta cấp, đến Dĩnh Xuyên dò thám tình hình, sau sẽ hẹn ngày cùng đánh.  Huyền Ðức lĩnh mệnh, kéo quân đi suốt ngày đêm mới đến Dĩnh Xuyên.  Bấy giờ Hoàng Phủ Tung và Châu Tuấn đang đánh nhau với quân giặc. Giặc núng thế phải rút lui vào Trường Xã, dựa thế một rừng lau rậm rạp để lập doanh trại.  Hoàng phủ Tung bàn với Châu Tuấn:  - Giặc tuy đông, nhưng khờ khạo. Chúng lập doanh trại trong rừng lau, vậy ta nên dùng hỏa công mà đốt.  Liền đó Hoàng Phủ Tung ra lệnh cho quân sĩ mỗi người đem theo một bó cỏ khô kéo đi mai phục. Ðêm ấy gặp gió lớn, quân Hán nhất tề phóng hỏa đốt trại. Giữa lúc đó Hoàng phủ Tung và Châu Tuấn dẫn hai ngàn kỵ binh xông vào chém giết. Trại giặc lửa cháy ngợp trời, quân giặc hoảng hốt không kịp mặt giáp lên yên, bỏ chạy tứ tán.  Quân Hán chém giết cho đến lúc trời mờ sáng thì mới thấy Trương Lương, Trương Bảo thu thập tàn quân cướp đường chạy thoát chết.  Quân giặc chạy chưa đầy ba mươi dặm thì lại gặp một tướng mắt nhỏ, râu dài, mình cao bảy thước, đang cầm đầu một đạo quân cắm toàn cờ đỏ, đổ ra chận đánh. Bị trận phục kích thứ hai này, quân giặc bạt vía kinh hồn, lớp thì chết, lớp ôm đầu chạy trốn không còn một manh giáp.  Vị tướng nhỏ vừa xuất hiện chính là quan Kỵ Ðô Úy, người Tiêu Quận, nước Bái, họ Tào tên Tháo, tự là Mạnh Ðức.  Trước kia, cha Tào Tháo vốn họ Hạ Hầu tên là Hạ Hầu Tung, nhưng sau làm con nuôi quan Trung Thường Thị Tào Ðằng nên Hạ Hầu Tung mới đổi ra là Tào Tung. Tào Tung sanh ra Tào Tháo có đặt cho Tháo tiểu tự là A Man, lại có thêm một tên nữa là Cát Lợi.  Lúc thiếu thời, Tào Tháo thích chơi bời, săn bắn, hát xướng, nhưng bản lãnh lại rất mưu mô xảo quyệt. Người chú của Tào Tháo thấy cháu mình du đãng, ham chơi bỏ học nên có nhiều lần phiền trách nói cho Tào Tung biết.  Mỗi lần như vậy, Tào Tung kêu con vào quở mắng, Tào Tháo đem lòng giận chú, mới nghĩ ra một kế.  Một hôm, thấy chú đến chơi, Tào Tháo giã vờ ngã lăn xuống đất, ngất lịm như trúng gió. Người chú thấy vậy thất kinh vội chạy đi tìm Tào Tung báo lại. Lúc Tào Tung chạy ra xem, thì thấy Tháo vẫn đứng chơi không có việc chi cả. Tào Tung ngạc nhiên hỏi:  - Kìa, sao chú con bảo là con trúng gió?  Tào Tháo thản nhiên thưa:  - Từ trước đến nay con có bệnh tật gì đâu? Có lẽ con đã làm điều gì mất lòng chú, nên chú giận rủa con như vậy.  Tào Tung nghe lời con, nên về sau Tào Tháo có lỗi gì người chú phiền trách, Tào Tung đều bỏ qua, không trách mắng Tháo nữa.  Tháo được thế càng chơi bời phóng đãng hơn. Thời ấy, có người tên là Kiêu Huyền bảo Tháo rằng:  - Thiên hạ loạn to đến nơi rồi, nếu không phải là người có tài tái thế, không ai xoay loạn ra an được. Người tài ấy có lẽ là ông đấy.  Lại có một người nữa ở Nam Dương, tên Hà Ngung, có dịp gặp Tào Tháo về nhà, tỏ ý nói:  - Nhà Hán sắp mất, Tào Tháo sẽ là người an định thiên hạ vậy.  Tào Tháo thấy có nhiều người nói đến mình, nhưng chưa vừa ý. Tháo lại nghe ở vùng miền Nam có Hứa Thiệu nổi danh là xem tướng biết người, liền tìm đến yết kiến và hỏi:  - Ông thấy tôi là người như thế nào?  Hứa Thiệu nhìn Tháo một lúc rồi lặng thinh không đáp. Tào Tháo gặn hỏi đôi ba lần, Hứa Thiệu mới nói:  - Ðời trị, ông là bầy tôi giỏi. Thời loạn, ông là kẻ gian hùng.  Nghe nói thế, Tào Tháo mừng vô cùng. Năm hai mươi tuổi, Tào Tháo đã đỗ Hiếu Liêm, làm quan Lang rồi được thăng Ðô úy Lộc Dương. Lúc vừa Ðến nhậm chức, Tháo đã sai treo mười cây roi ngũ sắc ở bốn cửa thành. Ai phạm đến luật cấm tức thì sai quân nọc cổ ra đánh liền, bất kể kẻ có thế lực, hay quyền quí.  Có một lần người chú ruột của quan Trung Thường Thị Kiển Thạc cầm dao đi đêm, Tháo đi tuần bắt gặp, lập tức truyền lệnh bắt đem đến trước nha môn mà đánh, chẳng kiêng nể gì hết. Bởi vậy, trong ngoài đều sợ Tháo, không ai dám phạm luật nữa.  Uy danh của Tháo nhờ đó lừng lẫy, nên được thăng làm Quan Lệnh ở Ðốn Khâu. Nay giặc Khăn Vàng nổi lên, Tháo lại được thăng chức Trị Ðô Úy, dẫn năm ngàn quân mã kéo đến Dĩnh Xuyên trợ chiến.  Vừa đến nơi, gặp lúc Trương Lương, Trương Bảo bị trận hỏa công, thua chạy xiểng liểng, Tháo nhân cơ hội chặn đường giết giặc, chém hơn một vạớn đầu giặc, đoạt được người ngựa, khí giới vô số. Trương Lương và Trương Bảo gặp thế cùng, mở đường máu chạy thoát. Tháo liền kéo quân vào thành ra mắt Hoàng Phủ Tung và Châu Tuấn, rồi lại dẫn binh truy kích Trương Lương và Trương Bảo.  Bấy giờ, Huyền Ðức cùng Quan, Trương cũng vừa tới Dĩnh Xuyên, nghe xa xa có tiếng hò reo đánh giặc, lại thấy lửa cháy rực trời vội dẫn binh tới thì giặc đã tan rồi. Huyền Ðức vào yết kiến Hoàng Phủ Tung, Châu Tuấn, và nói rõ ý kiến của Lư Thực.  Hoàng Phủ Tung nói:  - Hai thằng giặc Trương Lương, Trương Bảo bị một trận hỏa công, thế cùng lực tận, chắc là chúng chạy sang Quảng Tôn hợp lực với Trương Giác. Các ngươi hãy tức tốc trở về đó mà giúp Lư tướng quân dẹp giặc.  Huyền Ðức lĩnh mệnh, lại dẫn quân trở về. Khi đến nửa đường, bỗng thấy một toán quân mã áp giải một chiếc tù xa, người ngồi bên trong lại là Lư Thực.  Thất kinh, Huyền Ðức vội tụt khỏi yên ngựa, chạy đến hỏi duyên cớ.  Lư Thực nói:  - Tôi vây Trương Giác sắp phá được binh giặc, thì bỗng triều đình có sai một viên Huỳnh Môn quan là Tả Phong ra mặt trận thám thính tình hình. Tả Phong đòi ăn hối lộ, tôi nói với hắn: \"Ðến như quân lương hiện còn chưa đủ, lấy đâu ra tiền dư mà đãi sứ nhà vua?\". Tả Phong tức giận về triều vu tấu rằng tôi không chịu tiến quân, cứ đắp lũy đào hào cố thủ, khiến lòng quân trễ nãi. Triều đình nổi giận, sai quan Trung Lang Tướng Ðổng Trác đến thay tôi cầm quân, và bắt tôi giải về kinh trị tội.  Trương Phi nghe dứt lời, máu giận sục sôi, toan rút gươm chém mấy tên quân hộ tống tù xa để cứu Lư Thực, nhưng Huyền Ðức đã kịp ngăn lại và nói:  - Việc của Lư tướng quân ngay gian sẽ có công luận xét đoán, chúng ta không nên bạo sát người của triều đình mà mang tội.  Trương Phi trợn mắt, nhìn chiếc tù xa cho đến khi mất hút. Vân Trường nói:  - Lư Trung Lang bị bắt, người khác cầm quân, chúng ta trông cậy vào ai mà trở lại Quảng Tôn? Chi bằng trở về Trác Quận là hơn.  Huyền Ðức nghe lời, cùng với hai em dẫn quân về phía Bắc. Ði chưa được hai ngày, bỗng nghe sau núi có tiếng quân reo tở mở, ba anh em Huyền Ðức liền trèo lên một đỉnh núi cao, xem thấy quân Hán bị thua cuốn cờ chạy trốn, còn đằng sau giặc Khăn Vàng đông đặc, đang đuổi theo rất hăng. Trên cây đại kỳ của giặc có đề bốn chữ: \"Thiên Công Tướng Quân\".  Huyền Ðức đưa tay chỉ bọn giặc, nói với Quan, Trương:  - Chính thằng này là Trương Giác, kẻ cầm đầu giặc Khăn Vàng gây rối. Chúng ta tham chiến ngay.  Ba anh em Huyền Ðức đồng phi ngựa dẫn quân lướt tới. Bấy giờ Trương Giác đã đánh bại Ðổng Trác, nên kéo binh truy kích rất ngặt. Ðang lúc hăng thế, bỗng gặp toán quân của ba anh em Huyền Ðức chặn lại, chúng rối loạn người ngựa đạp nhào lên nhau, mất cả hàng ngũ, bị quân Huyền Ðức chém giết một trận, làm cho chúng quay đầu bỏ chạy hơn năm mươi dặm.  Ba người cứu được Ðổng Trác về trại. Sau khi hỏi thăm, biết được ba anh em Huyền Ðức chưa có chức vụ gì, hiện còn là chân trắng, Ðổng Trác làm mặt khinh khỉnh, không thèm thi lễ và tiếp đãi.  Huyền Ðức bước ra ngoài, không nói gì, nhưng Trương Phi thì hầm hầm nét mặt, tỏ ý bất mãn:  - Hừ! Chúng ta lăn mình vào địch quân để cứu hắn, mà hắn lại dám vô lễ như thế! Phải giết hắn đi mới đã giận.  Mắng rồi, Trương Phi cầm xà mâu quay vào trướng định giết Ðổng Trác.  Ðó chính là:  Nhân tình thế thái đáng buồn than,  Ai biết anh hùng lúc trắng chân!  Nếu được muôn người như Dực Ðức,  Trên đời đã hết giống vong ân  Chú thích:  (1) Thiên hạ tức là Ðế quốc Trung Hoa cổ gồm chín châu: Thanh, U, Từ, Ký, Kinh, Dương, Duyện, Dự, và Ích. Dưới mỗi Châu có Quận và Huyện  (2) Vua Hán Cao Tổ đóng đô ở Tràng An (phía Tây) cho nên gọi là nhà Tây Hán. Nhà Tây Hán truyền đến đời vua Bình Ðế thì bị Vương Mãng giết và cướp ngôi. Lưu Tú giết được Vương Mãng, khôi phục lại cơ đồ nhà Hán, nhưng lại dời đô về Lộc Dương (phía Ðông) cho nên từ vua Quang Vũ về sau gọi là nhà Ðông Hán.  (3) Ðời vua Hán Vũ Ðế mỗi khi có cuộc tế Tông Miếu, các vị có tước Hầu trong họ Lưu đều phải vào dâng vàng làm lễ. Nếu vàng của ai có sắc xấu, không được sáng đẹp thì người đó bị mất tước Hầu', 1, 'hoi-dao-vien-anh-hung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(100) NOT NULL,
  `tendanhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` int(100) NOT NULL,
  `slug_danhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `mota`, `kichhoat`, `slug_danhmuc`) VALUES
(16, 'Truyện tranh', 'Truyện tranh', 1, 'truyen-tranh'),
(20, 'Truyện cổ tích', 'Truyện cổ tích', 1, 'truyen-co-tich'),
(21, 'Văn học nước ngoài', 'Văn học nước ngoài', 1, 'van-hoc-nuoc-ngoai'),
(22, 'Truyện tiên giới', 'Truyện tiên giới', 1, 'truyen-tien-gioi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_12_175822_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit', 'web', '2021-10-13 01:18:50', '2021-10-13 01:18:50'),
(2, 'delete', 'web', '2021-10-13 01:21:06', '2021-10-13 01:21:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin2', 'web', '2021-10-13 01:16:52', '2021-10-13 01:16:52'),
(2, 'admin3', 'web', '2021-10-13 01:18:10', '2021-10-13 01:18:10'),
(3, 'admin', 'web', '2021-10-13 01:21:52', '2021-10-13 01:21:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` int(10) NOT NULL,
  `tentruyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug_truyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` int(11) NOT NULL,
  `tacgia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `mota`, `danhmuc_id`, `hinhanh`, `slug_truyen`, `kichhoat`, `tacgia`) VALUES
(3, 'Thần đồng Đất Việt', 'Thần đồng Đất Việt', 16, 'Than_dong_dat_viet8617,jpg', 'tthan-dong-dat-viet', 1, 'Đang cập nhật'),
(4, 'Truyện tranh Dragon ball – 7 viên ngọc rồng', 'Truyện tranh Dragon ball – 7 viên ngọc rồng', 16, 'kc2-162088389053473358010499,jpg', 'truyen-tranh-dragon-ball', 1, 'Đang cập nhật'),
(5, 'Tổng hợp truyện cổ tích Việt Nam', 'Tổng hợp truyện cổ tích Việt Nam', 20, 'chu-cuoi24,jpg', 'truyen-chu-cuoi', 1, 'Đang cập nhật'),
(6, 'Truyện cổ tích về các nàng công chúa xinh đẹp', 'Truyện cổ tích về các nàng công chúa xinh đẹp', 20, 'cong-chua-thoi-gian-co-han3378,jpg', 'truyen-nang-tien-ca', 1, 'Đang cập nhật'),
(7, 'Trò Chơi Vương Quyền', 'Trò Chơi Vương Quyền', 21, 'game-of-thrones-character-poster-15554676683592144519197240,jpg', 'tro-choi-vuong-quyen', 1, 'Đang cập nhật'),
(8, 'TAM QUỐC DIỄN NGHĨA', 'TAM QUỐC DIỄN NGHĨA', 21, 'tam-quoc-dien-nghia-700x36677 (1)90,jpg', 'tam-quoc-dien-nghia', 1, 'Đang cập nhật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$9zBJfh15jDqpWH82cDK7Tu1JkxhvBDD32wm.2p0/vDLtZh02UeOeO', NULL, '2021-09-27 05:05:41', '2021-09-27 05:05:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
