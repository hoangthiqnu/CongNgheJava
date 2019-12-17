-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: trasua
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitiethd`
--

DROP TABLE IF EXISTS `chitiethd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiethd` (
  `idHoaDon` int(11) NOT NULL,
  `idMon` int(11) NOT NULL,
  `LoaiSize` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GhiChuMon` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DSTopping` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL,
  PRIMARY KEY (`idHoaDon`,`idMon`,`LoaiSize`,`GhiChuMon`,`DSTopping`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethd`
--

LOCK TABLES `chitiethd` WRITE;
/*!40000 ALTER TABLE `chitiethd` DISABLE KEYS */;
INSERT INTO `chitiethd` VALUES (4,1,'Lớn','Nóng,100% Đường,50% Đá','Không',1,36000),(4,29,'Lớn','Lạnh,100% Đường,100% Đá','Thạch Dừa, Thạch Đen, ',2,124000),(4,29,'Vừa','Lạnh,100% Đường,100% Đá','Không',1,40000),(6,28,'Vừa','Lạnh,100% Đường,100% Đá','Không',2,80000),(6,28,'Vừa','Lạnh,100% Đường,100% Đá','Pudding, Thạch Dừa, ',1,56000),(6,28,'Vừa','Lạnh,100% Đường,100% Đá','Trân Châu Trắng, Trân Châu Đen, ',1,56000),(6,28,'Vừa','Lạnh,100% Đường,50% Đá','Không',1,40000),(7,17,'Lớn','Lạnh,70% Đường,100% Đá','Nha Đam, ',3,171000),(7,17,'Vừa','Lạnh,100% Đường,100% Đá','Không',2,86000),(8,15,'Lớn','Lạnh,100% Đường,100% Đá','Không',5,265000),(9,10,'Lớn','Nóng,70% Đường,0% Đá','Kem Sữa, Pudding, ',6,396000),(10,24,'Vừa','Lạnh,100% Đường,100% Đá','Không',1,38000);
/*!40000 ALTER TABLE `chitiethd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmmon`
--

DROP TABLE IF EXISTS `dmmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmmon` (
  `idDMMon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenDMMon` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDMMon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmmon`
--

LOCK TABLES `dmmon` WRITE;
/*!40000 ALTER TABLE `dmmon` DISABLE KEYS */;
INSERT INTO `dmmon` VALUES ('latte','LATTE'),('thucuongdaxay','THỨC UỐNG ĐÁ XAY'),('thucuongsangtao','THỨC UỐNG SÁNG TẠO'),('tranguyenchat','TRÀ NGUYÊN CHẤT'),('trasua','TRÀ SỮA');
/*!40000 ALTER TABLE `dmmon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `idHoaDon` int(11) NOT NULL AUTO_INCREMENT,
  `ThoiGianTao` datetime DEFAULT NULL,
  `TenKH` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiGiao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` longtext COLLATE utf8_unicode_ci,
  `idTinhTrangHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`idHoaDon`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (4,'2019-12-14 13:18:31','Hoàng Thi','0353488887','Quy Nhơn','Giao nhanh',0),(6,'2019-12-16 09:41:26','Hoàng Thi','0353488887','Quy Nhơn','Giao nhanh nha',0),(7,'2019-12-16 10:44:06','Thúc Tùng','0353488888','386 Nguyễn Thái Học','Giao nhanh nha',0),(8,'2019-12-16 10:46:07','Văn Sướng','0353488089','Quy Nhơn','',0),(9,'2019-12-16 10:47:13','Văn Sướng','0353488806','Quy Nhơn','Giao nhanh',0),(10,'2019-12-16 10:56:34','Hoàng Thi','0353488887','Quy Nhơn','Giao nhanh',0);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mon`
--

DROP TABLE IF EXISTS `mon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mon` (
  `idMon` int(11) NOT NULL AUTO_INCREMENT,
  `idDMMon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `DonGiaMon` int(11) NOT NULL,
  `HinhAnh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` longtext COLLATE utf8_unicode_ci,
  `ChiDa` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMon`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon`
--

LOCK TABLES `mon` WRITE;
/*!40000 ALTER TABLE `mon` DISABLE KEYS */;
INSERT INTO `mon` VALUES (1,'tranguyenchat','Trà Đen',30000,'traden.png','Vị trà Đen (Hồng Trà) đặc trưng, đậm trà và thơm nồng nàn.',0),(2,'tranguyenchat','Trà Xanh',30000,'traxanh.png','Vị trà Xanh (Lục Trà) thơm nhẹ và thanh mát',0),(3,'tranguyenchat','Trà Oolong',33000,'traolong.png','Vị trà đậm và có mùi thơm đặc trưng.',0),(4,'tranguyenchat','Trà Bí Đao',30000,'trabidao.png','Trà bí đao ngọt ngào, thanh mát, giúp giải nhiệt tốt.',1),(5,'trasua','Trà Sữa Trà Xanh',38000,'tstraxanh.png','Trà Xanh nguyên chất (Lục Trà) được pha với sữa làm nên món trà sữa thanh mát thơm nhẹ.',0),(6,'trasua','Trà Sữa Trà Đen',38000,'tstraden.png','Vị trà Đen (Hồng Trà) đậm đà quen thuộc pha chung với sữa tạo nên mùi vị thơm ngon.',0),(7,'trasua','Trà Sữa Oolong',40000,'tsolong.png','Vị trà Oolong đậm đà cùng hương thơm đặc trưng được hòa chung với sữa đem lại hương vị nồng nàn.',0),(8,'trasua','Trà Sữa Khoai Môn',43000,'tskhoaimon.png','Hương vị Khoai Môn được hòa cùng với sữa tạo nên thức uống thơm béo.',1),(9,'trasua','Trà Sữa Cà Phê',40000,'tscaphe.png','Trà Sữa Trà Đen tuyệt hảo kết hợp cùng cà phê, tạo nên sự hài hòa thơm ngon.',0),(10,'trasua','Trà Sữa Chocolate',40000,'tschocolate.png','Hương vị Chocolate đậm đà hòa tan sâu trong vị sữa hảo hạng.',0),(11,'trasua','Trà Sữa Hokkaido',43000,'tshokkaido.png','Vị kẹo bơ cứng (Toffee) hòa quyện với trà sữa Earl Grey tạo nên mùi thơm đặc trưng của Hokkaido.',0),(12,'trasua','Trà Sữa Trân Châu Đen',47000,'tstranchauden.png','Là sự kết hợp truyền thống giữa trân châu đen dai cùng vị trà sữa trà đen. Thức uống quen thuộc với mọi lứa tuổi.',0),(13,'trasua','Trà Sữa Okinawa',43000,'tsokinawa.png','Thức uống béo ngậy cùng lớp trân châu dẻo dai, cộng hưởng cùng vị đường nâu thay vì đường thông thường. Trà sữa sẽ thơm và ngậy hơn nhiều nhưng vẫn có vị ngọt dịu, thanh mát.',1),(14,'trasua','Trà Sữa Xoài Trân Châu Đen',47000,'tsxoaitranchau.png','Sự hòa quyện giữa trà sữa trà xanh cùng syrup xoài thơm ngọt, thêm chút dai dai từ trân châu đen, giúp sản phẩm có màu sắc và hương vị tươi mới.',1),(15,'latte','Strawberry Earl Grey Latte',47000,'lattestra.png','Lớp sữa tươi thanh mát được kết hợp với dòng trà bá tước có chiết xuất từ tinh dầu cây bergamot (cây thuộc họ cam). Ngoài ra, Strawberry earl grey latte được bao bọc bởi lớp mứt dâu óng ánh quanh ly.',1),(16,'latte','Okinawa Latte',43000,'latteoki.png','Okinawa Latte dành cho những thực khách vừa muốn thưởng thức trà sữa, vừa muốn giữ dáng, đẹp da. Sữa tươi và trà đen được kết hợp với vị thơm của đường mật mang lại vị giác mới lạ, là lựa chọn cho khách hàng yêu thích sự tươi mát, nhẹ nhàng lại không quá đậm đà của trà.',1),(17,'latte','Mango Matcha Latte',43000,'latteman.png','Mứt sệt vị xoài ngọt ngào, sữa tươi thanh dịu cùng bột trà xanh matcha với vị đắng dịu nhẹ.',1),(18,'thucuongdaxay','Xoài Đá Xay',48000,'xoaidaxay.png','Vị xoài ngọt ngào dùng kèm với Thạch Dừa dai và thơm.',1),(19,'thucuongdaxay','Yakult Đào Đá Xay',48000,'daodaxay.png','Sữa Yakult xay cùng với hương Đào thơm ngọt, cho ra ly đá xay ngon miệng vừa có chua, có ngọt, vừa tốt cho sức khỏe, dùng kèm với Thạch Trái cây.',1),(20,'thucuongdaxay','Matcha Đá Xay',45000,'matdaxay.png','Matcha xay cùng với sữa, kết hợp với lớp Kem (Whipping Cream) phía trên.',1),(21,'thucuongdaxay','Khoai Môn Đá Xay',45000,'khoaidaxay.png','Khoai môn ngọt ngào được xay chung với sữa, có thể dùng kèm với Kem (Whipping Cream) hoặc Trân Châu Đen.',1),(22,'thucuongdaxay','Chocolate Đá Xay',45000,'socodaxay.png','Vị Socola thơm ngon được xay chung với sữa cho ra ly đá xay Socola ngọt ngào.',1),(23,'thucuongdaxay','Strawberry Oreo Smoothie',50000,'straoreo.png','Strawberry oreo smoothie mang lại 3 tầng cảm xúc cho người thưởng thức với lớp mứt dâu chua ngọt phủ lên chiếc ly xinh xắn, hoà quyện cùng đá xay mịn màng từ trà bá tước và sữa.',1),(24,'thucuongsangtao','Trà Oolong Vải',38000,'olongvai.png','Trà Oolong thơm ngon hòa cùng với vị Vải thanh mát.',1),(25,'thucuongsangtao','Trà Xanh Chanh Dây',38000,'xanhchanhday.png','Trà xanh dịu dàng, thanh mát hòa cùng vị Chanh Dây chua ngọt.',0),(26,'thucuongsangtao','Trà Xanh Đào',38000,'xanhdao.png','Trà xanh thanh mát, hòa cùng hương vị Đào ngọt ngào.',0),(27,'thucuongsangtao','Trà Đen Đào',38000,'dendao.png','Trà đen thơm đặc trưng hòa cùng hương vị Đào ngọt ngào.',0),(28,'thucuongsangtao','Đào Hồng Mận Hạt É',40000,'daohong.png','Vị thanh mát, chua ngọt thơm ngon, dùng với hạt é.',1),(29,'thucuongsangtao','QQ Chanh Dây Trà Xanh',40000,'chanhdayxanh.png','Trà Xanh Chanh Dây chua ngọt uống cùng topping trân châu đen dai và thạch dừa tươi mát.',1),(30,'trasua','Trà Sữa Matcha Đậu Đỏ',45000,'matchadaudo.png','Vị chát của trà xanh Nhật Bản (Matcha) pha chút ngọt ngào của sữa dùng kèm Đậu Đỏ bùi và béo sẽ làm bạn bất ngờ.',0),(31,'trasua','Trà Sữa Pudding Đậu Đỏ',43000,'puddingdaudo.png','Trà Sữa Trà Đen kết hợp cùng Topping Đậu đỏ ngọt ngào cùng Pudding trứng mềm mại.',1),(32,'tranguyenchat','Trà Bí Đao Alisan',35000,'bidaoalisan.png','Trà bí đao ngọt ngào kết hợp với trà Alisan, cho ra ly trà thơm, ngọt dịu dễ uống.',1),(33,'tranguyenchat','Trà Alisan',30000,'traalisan.png','Loại trà đặc trưng của vùng đồi núi A Lý ở Đài Loan, vị trà thanh nhẹ, hơi chát.',0),(34,'tranguyenchat','Trà Earl Grey',30000,'traearlgrey.png','Trà Bá Tước chiết xuất từ hương thảo mộc của quả Bergamot (loại quả lai giữa Cam và Chanh), có vị thơm nồng.',0),(35,'thucuongsangtao','Trà Chanh Ai-yu',47000,'chanhaiyu.png','Vị chanh muối dùng kèm với thạch Ai-yu thanh mát và hạt trân châu trắng.',1),(36,'trasua','Trà Sữa Earl Grey',45000,'trasuaearlgrey.png','Sự kết hợp độc đáo giữa trà Bá Tước (Earl Grey) thơm nồng trứ danh cùng với sữa.',0),(37,'latte','Matcha Latte',41000,'matchalatte.png','Matcha Latte mang trong mình vị thơm đậm của matcha hòa quyện cùng vị thanh nhẹ từ sữa tươi. Điểm nhấn của sản phẩm nằm ở loại topping mới – thạch matcha. Thạch mềm, vị thanh mát ắt hẳn sẽ mang đến cho các Fan một trải nghiệm hoàn toàn mới lạ ngay từ những ngụm đầu tiên.',1),(38,'trasua','Trà Sữa Gạo Rang',45000,'trasuagaorang.png','Trà Sữa Gạo Rang sở hữu mùi vị như một chiếc bánh mì nướng thơm ngon, các hạt gạo được rang thơm thơm mang đến cảm giác thanh nhẹ nhưng tròn vị.',0),(39,'trasua','Trà Sữa Matcha Strawberry',45000,'matchadau.png','Sự kết hợp khéo léo giữa matcha, sữa vị dâu và kem sữa matcha sẽ là một lựa chọn mới mẻ cho các Fan khi đã quá quen thuộc với trà sữa. Vị dâu ngọt ngào pha chút đắng nhẹ của matcha và béo ngậy của milkfoam tạo nên một loại thức uống tuy lạ miệng nhưng khó mà cưỡng lại được.',1),(40,'thucuongsangtao','Trà Xanh Long Nhãn Táo Đỏ',47000,'traxanhlongnhan.png','Nhãn là trái cây phổ biến của mùa hè ở một số quốc gia châu Á, có thể ăn tươi hoặc sấy khô. Long nhãn khô là phần cùi nhãn (sau khi đã tách ra khỏi vỏ và hạt) sấy khô ở nhiệt độ cao trong khoảng thời gian dài mà vẫn được mùi vị thơm ngon cùng thành phần dinh dưỡng cao. Táo đỏ Hàn Quốc được mệnh danh là thần dược của sắc đẹp, là bí quyết sống khỏe của dân gian. Táo đỏ có vị chua ngọt, thơm đặc trưng và giàu chất dinh dưỡng. Trong long nhãn giàu Vitamin C nhưng lại có thể sinh nhiệt khi dùng quá nhiều, ngược lại, táo đỏ lại có tính hàn, giúp bổ sung khí huyết. Hai nguyên liệu này khi nấu chung sẽ có vị thanh ngọt cùng hàm lượng dinh dưỡng cao, vô cùng thích hợp để uống vào ngày hè.',1),(41,'thucuongdaxay','Caramel Oolong Smoothie',53000,'caramelolong.png','Kem sữa béo mịn, trân châu dẻo dai, Oolong đậm vị lại còn được “xoáy” trong cơn lốc Caramel đá xay mát lạnh!',1),(42,'thucuongdaxay','Caramel Coffee Smoothie',53000,'caramelcoffee.png','Thức uống với lớp đá xay mịn màng, cà phê thơm lừng, topping whipping cream béo ngậy được “xoáy” trong cơn lốc Caramel.',1),(43,'thucuongsangtao','Trà Oolong Long Nhãn ',47000,'olonglongnhan.png','Nhãn là trái cây phổ biến của mùa hè ở một số quốc gia châu Á, có thể ăn tươi hoặc sấy khô. Long nhãn khô là phần cùi nhãn (sau khi đã tách ra khỏi vỏ và hạt) sấy khô ở nhiệt độ cao trong khoảng thời gian dài mà vẫn được mùi vị thơm ngon cùng thành phần dinh dưỡng cao.',1);
/*!40000 ALTER TABLE `mon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `idDMMon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiSize` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaThem` int(11) NOT NULL,
  PRIMARY KEY (`idDMMon`,`LoaiSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES ('latte','Lớn',6000),('latte','Vừa',0),('thucuongdaxay','Vừa',0),('thucuongsangtao','Lớn',6000),('thucuongsangtao','Vừa',0),('tranguyenchat','Lớn',6000),('tranguyenchat','Vừa',0),('trasua','Lớn',6000),('trasua','Vừa',0);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `idTaiKhoan` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `VaiTro` tinyint(4) NOT NULL,
  PRIMARY KEY (`idTaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tinhtranghd`
--

DROP TABLE IF EXISTS `tinhtranghd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tinhtranghd` (
  `idTinhTrangHD` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idTinhTrangHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinhtranghd`
--

LOCK TABLES `tinhtranghd` WRITE;
/*!40000 ALTER TABLE `tinhtranghd` DISABLE KEYS */;
INSERT INTO `tinhtranghd` VALUES (0,'Chờ xác nhận'),(1,'Đã xác nhận'),(2,'Đã thanh toán'),(3,'Đã hủy');
/*!40000 ALTER TABLE `tinhtranghd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topping` (
  `idTopping` int(11) NOT NULL AUTO_INCREMENT,
  `TenTopping` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `DonGiaTopping` int(11) NOT NULL,
  PRIMARY KEY (`idTopping`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
INSERT INTO `topping` VALUES (1,'Kem Sữa',12000),(2,'Pudding',8000),(3,'Thạch Dừa',8000),(4,'Thạch Đen',8000),(5,'Thạch Trái Cây',8000),(6,'Trân Châu Trắng',8000),(7,'Trân Châu Đen',8000),(8,'Nha Đam',8000),(11,'Thạch Matcha',8000),(12,'Đậu Đỏ',8000);
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-17 21:00:56
