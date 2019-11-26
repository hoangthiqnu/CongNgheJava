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
  `idSize` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `TrangThaiMon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MucDuong` int(11) DEFAULT NULL,
  `MucDa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idHoaDon`,`idMon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethd`
--

LOCK TABLES `chitiethd` WRITE;
/*!40000 ALTER TABLE `chitiethd` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitiethd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmmon`
--

DROP TABLE IF EXISTS `dmmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmmon` (
  `idDMMon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenDMMon` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDMMon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmmon`
--

LOCK TABLES `dmmon` WRITE;
/*!40000 ALTER TABLE `dmmon` DISABLE KEYS */;
INSERT INTO `dmmon` VALUES ('BT','TRÀ NGUYÊN CHẤT'),('CM','THỨC UỐNG SÁNG TẠO'),('ISS','THỨC UỐNG ĐÁ XAY'),('LS','LATTE'),('MT','TRÀ SỮA');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
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
  `idDMMon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `DonGiaMon` int(11) NOT NULL,
  `HinhAnh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` longtext COLLATE utf8_unicode_ci,
  `ChiDa` tinyint(4) NOT NULL,
  PRIMARY KEY (`idMon`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon`
--

LOCK TABLES `mon` WRITE;
/*!40000 ALTER TABLE `mon` DISABLE KEYS */;
INSERT INTO `mon` VALUES (1,'BT','Trà Đen',30000,'traden.png','Vị trà Đen (Hồng Trà) đặc trưng, đậm trà và thơm nồng nàn.',0),(2,'BT','Trà Xanh',30000,'traxanh.png','Vị trà Xanh (Lục Trà) thơm nhẹ và thanh mát',0),(3,'BT','Trà Oolong',33000,'traolong.png','Vị trà đậm và có mùi thơm đặc trưng.',0),(4,'BT','Trà Bí Đao',30000,'trabidao.png','Trà bí đao ngọt ngào, thanh mát, giúp giải nhiệt tốt.',1),(5,'MT','Trà Sữa Trà Xanh',38000,'tstraxanh.png','Trà Xanh nguyên chất (Lục Trà) được pha với sữa làm nên món trà sữa thanh mát thơm nhẹ.',0),(6,'MT','Trà Sữa Trà Đen',38000,'tstraden.png','Vị trà Đen (Hồng Trà) đậm đà quen thuộc pha chung với sữa tạo nên mùi vị thơm ngon.',0),(7,'MT','Trà Sữa Oolong',40000,'tsolong.png','Vị trà Oolong đậm đà cùng hương thơm đặc trưng được hòa chung với sữa đem lại hương vị nồng nàn.',0),(8,'MT','Trà Sữa Khoai Môn',43000,'tskhoaimon.png','Hương vị Khoai Môn được hòa cùng với sữa tạo nên thức uống thơm béo.',1),(9,'MT','Trà Sữa Cà Phê',40000,'tscaphe.png','Trà Sữa Trà Đen tuyệt hảo kết hợp cùng cà phê, tạo nên sự hài hòa thơm ngon.',0),(10,'MT','Trà Sữa Chocolate',40000,'tschocolate.png','Hương vị Chocolate đậm đà hòa tan sâu trong vị sữa hảo hạng.',0),(11,'MT','Trà Sữa Hokkaido',43000,'tshokkaido.png','Vị kẹo bơ cứng (Toffee) hòa quyện với trà sữa Earl Grey tạo nên mùi thơm đặc trưng của Hokkaido.',0),(12,'MT','Trà Sữa Trân Châu Đen',47000,'tstranchauden.png','Là sự kết hợp truyền thống giữa trân châu đen dai cùng vị trà sữa trà đen. Thức uống quen thuộc với mọi lứa tuổi.',0),(13,'MT','Trà Sữa Okinawa',43000,'tsokinawa.png','Thức uống béo ngậy cùng lớp trân châu dẻo dai, cộng hưởng cùng vị đường nâu thay vì đường thông thường. Trà sữa sẽ thơm và ngậy hơn nhiều nhưng vẫn có vị ngọt dịu, thanh mát.',1),(14,'MT','Trà Sữa Xoài Trân Châu Đen',47000,'tsxoaitranchau.png','Sự hòa quyện giữa trà sữa trà xanh cùng syrup xoài thơm ngọt, thêm chút dai dai từ trân châu đen, giúp sản phẩm có màu sắc và hương vị tươi mới.',1),(15,'LS','Strawberry Earl Grey Latte',47000,'lattestra.png','Lớp sữa tươi thanh mát được kết hợp với dòng trà bá tước có chiết xuất từ tinh dầu cây bergamot (cây thuộc họ cam). Ngoài ra, Strawberry earl grey latte được bao bọc bởi lớp mứt dâu óng ánh quanh ly.',1),(16,'LS','Okinawa Latte',43000,'latteoki.png','Okinawa Latte dành cho những thực khách vừa muốn thưởng thức trà sữa, vừa muốn giữ dáng, đẹp da. Sữa tươi và trà đen được kết hợp với vị thơm của đường mật mang lại vị giác mới lạ, là lựa chọn cho khách hàng yêu thích sự tươi mát, nhẹ nhàng lại không quá đậm đà của trà.',1),(17,'LS','Mango Matcha Latte',43000,'latteman.png','Mứt sệt vị xoài ngọt ngào, sữa tươi thanh dịu cùng bột trà xanh matcha với vị đắng dịu nhẹ.',1),(18,'ISS','Xoài Đá Xay',48000,'xoaidaxay.png','Vị xoài ngọt ngào dùng kèm với Thạch Dừa dai và thơm.',1),(19,'ISS','Yakult Đào Đá Xay',48000,'daodaxay.png','Sữa Yakult xay cùng với hương Đào thơm ngọt, cho ra ly đá xay ngon miệng vừa có chua, có ngọt, vừa tốt cho sức khỏe, dùng kèm với Thạch Trái cây.',1),(20,'ISS','Matcha Đá Xay',45000,'matdaxay.png','Matcha xay cùng với sữa, kết hợp với lớp Kem (Whipping Cream) phía trên.',1),(21,'ISS','Khoai Môn Đá Xay',45000,'khoaidaxay.png','Khoai môn ngọt ngào được xay chung với sữa, có thể dùng kèm với Kem (Whipping Cream) hoặc Trân Châu Đen.',1),(22,'ISS','Chocolate Đá Xay',45000,'socodaxay.png','Vị Socola thơm ngon được xay chung với sữa cho ra ly đá xay Socola ngọt ngào.',1),(23,'ISS','Strawberry Oreo Smoothie',50000,'straoreo.png','Strawberry oreo smoothie mang lại 3 tầng cảm xúc cho người thưởng thức với lớp mứt dâu chua ngọt phủ lên chiếc ly xinh xắn, hoà quyện cùng đá xay mịn màng từ trà bá tước và sữa.',1),(24,'CM','Trà Oolong Vải',38000,'olongvai.png','Trà Oolong thơm ngon hòa cùng với vị Vải thanh mát.',1),(25,'CM','Trà Xanh Chanh Dây',38000,'xanhchanhday.png','Trà xanh dịu dàng, thanh mát hòa cùng vị Chanh Dây chua ngọt.',0),(26,'CM','Trà Xanh Đào',38000,'xanhdao.png','Trà xanh thanh mát, hòa cùng hương vị Đào ngọt ngào.',0),(27,'CM','Trà Đen Đào',38000,'dendao.png','Trà đen thơm đặc trưng hòa cùng hương vị Đào ngọt ngào.',0),(28,'CM','Đào Hồng Mận Hạt É',40000,'daohong.png','Vị thanh mát, chua ngọt thơm ngon, dùng với hạt é.',1),(29,'CM','QQ Chanh Dây Trà Xanh',40000,'chanhdayxanh.png','Trà Xanh Chanh Dây chua ngọt uống cùng topping trân châu đen dai và thạch dừa tươi mát.',1);
/*!40000 ALTER TABLE `mon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `idSize` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenSize` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES ('L','Lớn'),('M','Vừa');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizekem`
--

DROP TABLE IF EXISTS `sizekem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizekem` (
  `idDMMon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idSize` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `GiaThem` int(11) NOT NULL,
  PRIMARY KEY (`idDMMon`,`idSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizekem`
--

LOCK TABLES `sizekem` WRITE;
/*!40000 ALTER TABLE `sizekem` DISABLE KEYS */;
INSERT INTO `sizekem` VALUES ('BT','L',6000),('BT','M',0),('CM','L',6000),('CM','M',0),('ISS','M',0),('LS','L',6000),('LS','M',0),('MT','L',6000),('MT','M',0);
/*!40000 ALTER TABLE `sizekem` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
INSERT INTO `topping` VALUES (1,'Kem Sữa',12000),(2,'Pudding',8000),(3,'Thạch Dừa',8000),(4,'Thạch Đen',8000),(5,'Thạch Trái Cây',8000),(6,'Trân Châu Trắng',8000),(7,'Trân Châu Đen',8000),(8,'Nha Đam',8000);
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppingmon`
--

DROP TABLE IF EXISTS `toppingmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppingmon` (
  `idHoaDon` int(11) NOT NULL,
  `idMon` int(11) NOT NULL,
  `idTopping` int(11) NOT NULL,
  PRIMARY KEY (`idHoaDon`,`idMon`,`idTopping`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppingmon`
--

LOCK TABLES `toppingmon` WRITE;
/*!40000 ALTER TABLE `toppingmon` DISABLE KEYS */;
/*!40000 ALTER TABLE `toppingmon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26 14:26:53