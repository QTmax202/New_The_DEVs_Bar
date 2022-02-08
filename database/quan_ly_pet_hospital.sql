-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_ly_pet_shop
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `acc_id` int NOT NULL AUTO_INCREMENT,
  `acc_username` varchar(20) NOT NULL,
  `acc_password` varchar(10) NOT NULL,
  `acc_phan_cap` varchar(2) NOT NULL,
  `acc_kh_id` int DEFAULT NULL,
  `acc_nv_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`acc_id`),
  UNIQUE KEY `acc_username` (`acc_username`),
  UNIQUE KEY `acc_kh_id` (`acc_kh_id`),
  UNIQUE KEY `acc_nv_id` (`acc_nv_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`acc_kh_id`) REFERENCES `khach_hang` (`kh_id`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`acc_nv_id`) REFERENCES `nhan_vien` (`nv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','admin','AD',NULL,NULL),(2,'hongnam','12345678','NV',NULL,'NV001'),(3,'tronghieu','12345678','NV',NULL,'NV002'),(4,'minhtien','12345678','NV',NULL,'NV003'),(5,'thanhlong','12345678','NV',NULL,'NV004'),(6,'tanhuan','12345678','KH',1,NULL),(7,'lililio0o','2472002','KH',2,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca`
--

DROP TABLE IF EXISTS `ca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca` (
  `ca_id` varchar(10) NOT NULL,
  `ca_ten` varchar(100) NOT NULL,
  `ca_bat_dau` int NOT NULL,
  `ca_ket_thuc` int NOT NULL,
  PRIMARY KEY (`ca_id`),
  UNIQUE KEY `ca_id` (`ca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca`
--

LOCK TABLES `ca` WRITE;
/*!40000 ALTER TABLE `ca` DISABLE KEYS */;
INSERT INTO `ca` VALUES ('0h-6h','ca từ 0h-6h',0,6),('12h-18h','ca từ 12h-18h',12,18),('18h-24h','ca từ 18h-24h',18,24),('6h-12h','ca từ 6h-12h',6,12);
/*!40000 ALTER TABLE `ca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_dv`
--

DROP TABLE IF EXISTS `chi_tiet_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_dv` (
  `ctdv_id` varchar(10) NOT NULL,
  `ctdv_anh` mediumtext,
  `ctdv_ten` varchar(100) NOT NULL,
  `ctdv_gia` int DEFAULT NULL,
  `ctdv_mo_ta` mediumtext,
  `ctdv_trang_thai` bit(1) DEFAULT NULL,
  `ctdv_dv_id` varchar(5) NOT NULL,
  PRIMARY KEY (`ctdv_id`),
  UNIQUE KEY `ctdv_id` (`ctdv_id`),
  KEY `ctdv_dv_id` (`ctdv_dv_id`),
  CONSTRAINT `chi_tiet_dv_ibfk_1` FOREIGN KEY (`ctdv_dv_id`) REFERENCES `dich_vu` (`dv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_dv`
--

LOCK TABLES `chi_tiet_dv` WRITE;
/*!40000 ALTER TABLE `chi_tiet_dv` DISABLE KEYS */;
INSERT INTO `chi_tiet_dv` VALUES ('HT001','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Hotel cao cấp',200000,'Kèm spa',_binary '','HT'),('HT002','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Hotel thường',150000,'Không dịch vụ',_binary '','HT'),('SP001','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Vệ sinh tai mắt',30000,'',_binary '','SPA'),('SP002','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Cắt móng + dũa móng',30000,'',_binary '','SPA'),('SP003','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Tắm spa',200000,'',_binary '','SPA'),('SP004','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Cắt tỉa tạo kiểu',400000,'',_binary '','SPA'),('SP005','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Cạo lông',220000,'',_binary '','SPA'),('TC001','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Vaccin phòng bệnh dại',300000,'Chích định kỳ 1 năm 1 lần',_binary '','TC'),('TC002','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Vaccin phòng bệnh leuco',300000,'Chích định kỳ 1 năm 1 lần',_binary '','TC'),('TC003','https://matpetfamily.com/wp-content/uploads/2020/06/kiotviet_abd62632321f9035cc7bca7e05e0ca1e.jpg','Vaccin phòng bệnh lepto',300000,'Chích định kỳ 1 năm 1 lần',_binary '','TC');
/*!40000 ALTER TABLE `chi_tiet_dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu` (
  `dv_id` varchar(5) NOT NULL,
  `dv_ten` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dv_id`),
  UNIQUE KEY `dv_id` (`dv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu`
--

LOCK TABLES `dich_vu` WRITE;
/*!40000 ALTER TABLE `dich_vu` DISABLE KEYS */;
INSERT INTO `dich_vu` VALUES ('HT','Hotel'),('SPA','Spa'),('TC','Tiêm chủng');
/*!40000 ALTER TABLE `dich_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giong_pet`
--

DROP TABLE IF EXISTS `giong_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giong_pet` (
  `gp_id` varchar(10) NOT NULL,
  `gp_ten` varchar(50) DEFAULT NULL,
  `gp_mo_ta` mediumtext,
  `gp_lp_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`gp_id`),
  UNIQUE KEY `gp_id` (`gp_id`),
  KEY `gp_lp_id` (`gp_lp_id`),
  CONSTRAINT `giong_pet_ibfk_1` FOREIGN KEY (`gp_lp_id`) REFERENCES `loai_pet` (`lp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giong_pet`
--

LOCK TABLES `giong_pet` WRITE;
/*!40000 ALTER TABLE `giong_pet` DISABLE KEYS */;
INSERT INTO `giong_pet` VALUES ('BEAGLE','Chó Beagle','Thuộc vào loài chó săn thỏ cỡ nhỏ, Beagle là giống chó \nđược rất nhiều người yêu thích và lựa chọn để nuôi. Beagle là loài chó rất đáng \nyêu và còn thân thiện với mọi người, chúng có thể trông nhà và cũng có thể chơi \nđùa với trẻ em mà không gây nguy hiểm như những loài chó họ bull. Bạn hoàn toàn \ncó thể yên tâm khi lựa chọn chó Beagle làm người bạn cùng đồng hành. ','DOG'),('BRITISH','Mèo Anh (Ngắn + Dài)','Là một giống mèo cảnh có nguồn gốc từ Anh.\nChúng sở hữu một thân hình vô cùng mập mạp đáng yêu, nổi bật với khuôn mặt tròn \nvà bộ lông màu xám xanh cổ điển và một cái đuôi to.\nTính cách của chúng tuy khá lười biếng tuy nhiên lại phù hợp với những người bận \nrộn không có quá nhiều thời gian và không đòi hỏi chủ nhân của chúng phải chải \nchuốt vệ sinh thường xuyên.','CAT'),('CORGI','Chó CORGI','Chó Corgi là một giống chó nhỏ, chân ngắn nhưng \nthân dài, đuôi cụt và một đôi tai lớn.\nCorgi có vẻ ngoài đáng yêu, cặp mông hình trái tim tạo nên nét quyến rũ và đã \ntạo nên cơn sốt ngắm mông Corgi.  \nLà giống chó rất thông minh, biết vâng lời, có bản năng bảo vệ, rất tận tâm \nvới chủ và thân thiện với trẻ em. \nChúng rất điềm tĩnh, trung thành và đáng yêu, song rất cảnh giác trước người lạ.','DOG'),('GOLDEN','Chó Golden Retriever','Chó Golden Retriever là một giống \nchó săn thượng hạng đến từ Scotland.\nGolden có bộ lông vàng mượt khá sang trọng, khuôn mặt thường xuyên cười vui vẻ, \ntuy nhiên, lúc buồn lại tỏ vẻ đáng thương rõ ràng.\nLà giống chó rất thông minh, dễ huấn luyện, luôn biết cách làm hài lòng chủ nhân \nvà thích vui chơi cùng mọi người.\nGolden rất điềm tĩnh, hiền lành và tình cảm, lại rất nhanh nhẹn và năng động.','DOG'),('HUSKY','Chó Husky','Chó Husky là một giống chó tuyết có nguồn gốc từ Sibir, Nga.\nHusky có vẻ đẹp quyến rũ, thân hình dũng mãnh, sức khỏe dẻo dai phi thường.\nLà giống chó hiền lành, rất tình cảm, hay tò mò, ưa vận động, rất thích người \nvà đặc biệt thân thiện với trẻ em.Ở Việt Nam, chó Husky rất được yêu thích và được săn đón bởi đông đảo những người yêu chó.','DOG'),('MUNCHKIN','Mèo chân ngắn','Những chú mèo Munchkin nổi tiếng với những chiếc chân \nngắn cũn và thường đứng khúm khúm lại với nhau. Chiều dài thân của chúng dài khoảng \n2,5 lần so với chiều cao. Chúng có dáng người tròn trịa, đôi má bầu bĩnh và đôi mắt \ntròn xoe, long lanh.\nKhông chỉ có một vẻ ngoài đáng yêu và ưa nhìn, những chú mèo Munchkin cũng có tính \ncách rất dễ chịu và thân thiện. Những chú mèo Munchkin rất tinh nghịch, lém lỉnh và \nvui tươi như vẻ ngoài của chúng. Tuy nhiên, chúng cũng rất ngọt ngào, đặc biệt \nlà rất quấn chủ.\n','CAT'),('POODLE','Chó Poodle','Đặc điểm loài này là tính thông minh và linh tính. Hầu hết \ndòng chó này có lớp lông xoăn tít, êm xốp, không rụng lông khi cưng nựng nên an toàn \ncho những ai bị dị ứng. Màu sắc lông đa dạng gồm: nâu đỏ, kem, trắng, đen, sôcôla, \nxám, .... Màu da theo quy định sắc tố màu lông như lông màu trắng thì da sẽ có màu \nbạc chẳng hạn và đây là màu mà nhiều người yêu thích khi nuôi Poodle.','DOG'),('PUG','Chó Pug','Chó Pug (hay có tên gọi khác là Bug, chó mặt xệ,...) là giống \ncảnh khuyển sở hữu vẻ ngoài ngộ nghĩnh, đáng yêu, được nhiều người yêu thích. Giống \ncảnh khuyển chân lùn mặt xệ này sở hữu bộ lông siêu ngắn, mềm mượt và ôm sát cơ thể. \nLông chúng rụng quanh năm, do đó không đòi hỏi bạn phải cắt tỉa, chăm sóc thường \nxuyên. Việc chọn nuôi bé cún Pug sẽ tạo nhiều điều kiện thuận lợi với những ai có công \nviệc bận rộn, ít có thời gian tắm cho cún cưng.','DOG'),('SAMOYED','Chó Samoyed','Chó Samoyed (hay còn được gọi là chó tuyết trắng) được mọi \nngười yêu thích nhờ bộ lông trắng tinh cùng với vẻ ngoài dễ thương, đáng yêu. Samoyed \nlà giống chó rất thông minh, tinh tế. Chúng có khả năng thấu hiểu được cảm xúc của con \nngười thông qua nét mặt, cử chỉ hành động.','DOG');
/*!40000 ALTER TABLE `giong_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `kh_id` int NOT NULL AUTO_INCREMENT,
  `kh_anh` mediumtext,
  `kh_ten` varchar(100) NOT NULL,
  `kh_gioi_tinh` varchar(10) NOT NULL,
  `kh_email` varchar(100) DEFAULT NULL,
  `kh_phone_number` varchar(20) NOT NULL,
  `kh_ngay_sinh` date DEFAULT NULL,
  `kh_dia_chi` mediumtext,
  PRIMARY KEY (`kh_id`),
  UNIQUE KEY `kh_phone_number` (`kh_phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
INSERT INTO `khach_hang` VALUES (1,'','Trần Tấn Huấn','Nam','tr.huan.8098@gmail.com','0779534817','1998-09-18','Nam Từ Liêm - Hà Nội'),(2,'','Trần Quang Tuyén','Nam','tuyenksnb202@gmail.com','0964431051','2002-07-24','Ninh Bình');
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_pet`
--

DROP TABLE IF EXISTS `loai_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_pet` (
  `lp_id` varchar(5) NOT NULL,
  `lp_ten` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lp_id`),
  UNIQUE KEY `lp_id` (`lp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_pet`
--

LOCK TABLES `loai_pet` WRITE;
/*!40000 ALTER TABLE `loai_pet` DISABLE KEYS */;
INSERT INTO `loai_pet` VALUES ('CAT','Mèo'),('DOG','Chó');
/*!40000 ALTER TABLE `loai_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_phu_kien`
--

DROP TABLE IF EXISTS `loai_phu_kien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_phu_kien` (
  `lpk_id` varchar(5) NOT NULL,
  `lpk_ten` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lpk_id`),
  UNIQUE KEY `lpk_id` (`lpk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_phu_kien`
--

LOCK TABLES `loai_phu_kien` WRITE;
/*!40000 ALTER TABLE `loai_phu_kien` DISABLE KEYS */;
INSERT INTO `loai_phu_kien` VALUES ('AO','Áo'),('BALO','BALO'),('CH','Chuồng'),('DC','Đồ chơi'),('TP','Thực phẩm'),('VC','Vòng cổ');
/*!40000 ALTER TABLE `loai_phu_kien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `nv_id` varchar(5) NOT NULL,
  `nv_anh` mediumtext,
  `nv_ten` varchar(100) NOT NULL,
  `nv_gioi_tinh` varchar(10) NOT NULL,
  `nv_email` varchar(100) NOT NULL,
  `nv_phone_number` varchar(20) NOT NULL,
  `nv_ngay_sinh` date DEFAULT NULL,
  `nv_dia_chi` mediumtext NOT NULL,
  `nv_ca_id` varchar(10) NOT NULL,
  PRIMARY KEY (`nv_id`),
  UNIQUE KEY `nv_id` (`nv_id`),
  KEY `nhan_vien_ibfk_1` (`nv_ca_id`),
  CONSTRAINT `nhan_vien_ibfk_1` FOREIGN KEY (`nv_ca_id`) REFERENCES `ca` (`ca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
INSERT INTO `nhan_vien` VALUES ('NV001','','Nguyễn Hồng Nam','Nam','hongnamz1211@gmail.com','0868886855','2000-11-12','Hà Nội','18h-24h'),('NV002','','Nguyễn Trọng Hiếu','Nam','tronghieu@gmail.com','0359625905','1999-10-04','Thái Bình','12h-18h'),('NV003','','Hoàng Minh Tiến','Nam','hmt971998@gmail.com','0961579256','1998-07-09','Hải Dương','6h-12h'),('NV004','','Hà Thanh Long','Nam','loloringo9999@gmail.com','0966512119','1996-09-14','Hà Nội','0h-6h');
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_kh`
--

DROP TABLE IF EXISTS `pet_kh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_kh` (
  `pkh_id` int NOT NULL AUTO_INCREMENT,
  `pkh_anh` mediumtext,
  `pkh_ten` varchar(100) DEFAULT NULL,
  `pkh_ngay_sinh` date DEFAULT NULL,
  `pkh_mo_ta` mediumtext,
  `pkh_kh_id` int NOT NULL,
  `pkh_gp_id` varchar(10) NOT NULL,
  PRIMARY KEY (`pkh_id`),
  KEY `pkh_kh_id` (`pkh_kh_id`),
  KEY `pkh_gp_id` (`pkh_gp_id`),
  CONSTRAINT `pet_kh_ibfk_1` FOREIGN KEY (`pkh_kh_id`) REFERENCES `khach_hang` (`kh_id`),
  CONSTRAINT `pet_kh_ibfk_2` FOREIGN KEY (`pkh_gp_id`) REFERENCES `giong_pet` (`gp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_kh`
--

LOCK TABLES `pet_kh` WRITE;
/*!40000 ALTER TABLE `pet_kh` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_kh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_shop`
--

DROP TABLE IF EXISTS `pet_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_shop` (
  `ps_id` int NOT NULL AUTO_INCREMENT,
  `ps_ten` varchar(50) DEFAULT NULL,
  `ps_anh` varchar(200) DEFAULT NULL,
  `ps_gia` int DEFAULT NULL,
  `ps_ngay_sinh` date DEFAULT NULL,
  `ps_mota` varchar(200) DEFAULT NULL,
  `ps_trang_thai` bit(1) DEFAULT NULL,
  `ps_gp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ps_id`),
  KEY `pet_shop_ibfk_1` (`ps_gp_id`),
  CONSTRAINT `pet_shop_ibfk_1` FOREIGN KEY (`ps_gp_id`) REFERENCES `giong_pet` (`gp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_shop`
--

LOCK TABLES `pet_shop` WRITE;
/*!40000 ALTER TABLE `pet_shop` DISABLE KEYS */;
INSERT INTO `pet_shop` VALUES (112,'Husky đen','https://matpetfamily.com/wp-content/uploads/2021/02/140575124_1882521691895906_2911909454894282558_o.jpg',13000000,'2021-03-12','Đẹp',_binary '','HUSKY'),(113,'Husky nâu đỏ','https://matpetfamily.com/wp-content/uploads/2019/12/72835561_1437995923015154_7605397220103290880_n.jpg',15000000,'2021-06-02','Đẹp',_binary '','HUSKY'),(114,'Husky ngáo ngơ','https://matpetfamily.com/wp-content/uploads/2020/03/5.3b.jpg',10000000,'2021-05-21','Đẹp',_binary '','HUSKY'),(115,'Husky mắt hai màu','https://matpetfamily.com/wp-content/uploads/2020/12/130244144_1851004625047613_8652446909424911367_o-1.jpg',12000000,'2021-11-28','Đẹp',_binary '','HUSKY'),(116,'Husky hồng phấn','https://matpetfamily.com/wp-content/uploads/2020/12/129724210_1844740812340661_8582517711520321364_o.jpg',11000000,'2021-12-12','Đẹp',_binary '','HUSKY'),(117,'Corgi ú nù siêu xinh','https://matpetfamily.com/wp-content/uploads/2022/01/271543555_2146263045521768_8862251087935126451_n.jpg',35000000,'2021-12-12','Đẹp',_binary '','CORGI'),(118,'Corgi đực lông dài','https://matpetfamily.com/wp-content/uploads/2021/12/12AAFD4C-D8DD-47C4-8375-27AF542F97F2.jpeg',30000000,'2021-12-12','Đẹp',_binary '','CORGI'),(119,'Corgi vàng siêu đáng yêu','https://matpetfamily.com/wp-content/uploads/2021/08/B51ACD1F-7BB7-4C26-B1EB-3E5AE97D55EE.jpeg',30000000,'2021-12-12','Đẹp',_binary '','CORGI'),(120,'Corgi ú nu siêu đáng yêu','https://matpetfamily.com/wp-content/uploads/2019/12/75462468_1446520615496018_4012590135639015424_n201.jpg',25000000,'2021-12-12','Đẹp',_binary '','CORGI'),(121,'Corgi quấn tai siêu xinh','https://matpetfamily.com/wp-content/uploads/2020/12/125294770_1830620010419408_604014806922630964_o-1.jpg',25000000,'2021-12-12','Đẹp',_binary '','CORGI'),(122,'Golden béo ú nu','https://matpetfamily.com/wp-content/uploads/2020/04/A8D46AD5-8553-4AC0-A09B-4ADDC5218D07.jpeg',13000000,'2021-12-12','Đẹp',_binary '','GOLDEN'),(123,'Golden sinh đôi cute','https://matpetfamily.com/wp-content/uploads/2020/04/7F9793A2-F45D-441C-AFAA-C11F2D918914.jpeg',18000000,'2021-12-12','Đẹp',_binary '','GOLDEN'),(124,'Golden xinh yêu','https://matpetfamily.com/wp-content/uploads/2021/12/269847632_273782274746007_4016311206853535872_n.jpg',15000000,'2021-12-12','Đẹp',_binary '','GOLDEN'),(125,'Golden vàng cháy','https://matpetfamily.com/wp-content/uploads/2022/01/269696588_292771092816417_7745811382241541016_n.jpg',15000000,'2021-12-12','Đẹp',_binary '','GOLDEN'),(126,'Golden bạch kim ','https://matpetfamily.com/wp-content/uploads/2021/12/388568B6-17BD-47E8-8559-CAE133103BDF.jpeg',20000000,'2021-12-12','Đẹp',_binary '','GOLDEN'),(127,'Beagle đực siêu xinh','https://matpetfamily.com/wp-content/uploads/2019/12/71813973_1420145338133546_8266992848507764736_n.jpg',9500000,'2021-12-12','Đẹp',_binary '','BEAGLE'),(128,'Beagle săn thỏ','https://matpetfamily.com/wp-content/uploads/2019/12/a2_727x958.jpg',9500000,'2021-12-12','Đẹp',_binary '','BEAGLE'),(129,'Beagle siêu sịn','https://sieupet.com/sites/default/files/beagle2.jpg',18000000,'2021-12-12','Đẹp',_binary '','BEAGLE'),(130,'Beagle bé xinh','https://matpetfamily.com/wp-content/uploads/2019/12/b1_720x960.jpg',9500000,'2021-12-12','Đẹp',_binary '','BEAGLE'),(131,'Poodle vàng mơ','https://matpetfamily.com/wp-content/uploads/2019/12/53325241_1253249824823099_4624950999151280128_n_720x960.jpg',10000000,'2021-12-12','Đẹp',_binary '','POODLE'),(132,'Poodle vàng mơ xinh xinh','https://matpetfamily.com/wp-content/uploads/2019/12/71760386_1415090075305739_3323543043373531136_n.jpg',8500000,'2021-12-12','Đẹp',_binary '','POODLE'),(133,'Poodle xám cute','https://matpetfamily.com/wp-content/uploads/2021/12/266347677_600611444333639_903611932124438194_n.jpg',20000000,'2021-12-12','Đẹp',_binary '','POODLE'),(134,'Poodle trắng lông xù','https://matpetfamily.com/wp-content/uploads/2020/09/119211666_1772104086271001_2043173142450946394_o.jpg',12000000,'2021-12-12','Đẹp',_binary '','POODLE'),(135,'Poodle nâu ù nu','https://matpetfamily.com/wp-content/uploads/2022/01/269634380_617891129423529_6480680869836863609_n.jpg',15000000,'2021-12-12','Đẹp',_binary '','POODLE'),(136,'Pug siêu cute','https://matpetfamily.com/wp-content/uploads/2020/08/116791757_1725293660952044_1108601392815779091_o.jpg',9800000,'2021-12-12','Đẹp',_binary '','PUG'),(137,'Pug béo ú nu','https://matpetfamily.com/wp-content/uploads/2019/12/60634147_1302412309906850_288819598420082688_n.jpg',8800000,'2021-12-12','Đẹp',_binary '','PUG'),(138,'Pug đực','https://matpetfamily.com/wp-content/uploads/2021/12/557259CB-8400-421C-864B-63321D3B65B8.jpeg',15000000,'2021-12-12','Đẹp',_binary '','PUG'),(139,'Samoyed siêu cute','https://matpetfamily.com/wp-content/uploads/2021/02/154711553_1906562179491857_5104632868418091991_o.jpg',12000000,'2021-12-12','Đẹp',_binary '','SAMOYED'),(140,'Samoyed siêu yêu','https://matpetfamily.com/wp-content/uploads/2020/09/119938206_1778786142269462_8175390836072092712_o.jpg',13000000,'2021-12-12','Đẹp',_binary '','SAMOYED'),(141,'Samoyed trắng','https://matpetfamily.com/wp-content/uploads/2021/08/E108C762-8859-4BFC-A960-158AA0244009.jpeg',12500000,'2021-12-12','Đẹp',_binary '','SAMOYED'),(142,'Samoyed gấu bông','https://matpetfamily.com/wp-content/uploads/2021/11/261847321_2115882895226450_5717874721804664258_n.jpg',15000000,'2021-12-12','Đẹp',_binary '','SAMOYED'),(143,'Samoyed bạch tuyết','https://matpetfamily.com/wp-content/uploads/2020/02/26.2b.jpg',12000000,'2021-12-12','Đẹp',_binary '','SAMOYED'),(144,'British Đàn mèo anh lông ngắn','https://matpetfamily.com/wp-content/uploads/2020/05/96412481_1628147887333289_7452454675938279424_o.jpg',15000000,'2021-12-12','Đẹp',_binary '','BRITISH'),(145,'British Mèo anh lông ngắn','https://matpetfamily.com/wp-content/uploads/2021/08/41B229EC-90FF-40E2-9C2A-DDA7B3060CA5.jpeg',14000000,'2021-12-12','Đẹp',_binary '','BRITISH'),(146,'Mèo chân ngắn tai cụp','https://matpetfamily.com/wp-content/uploads/2021/11/A7B34F15-550A-4A0F-ACF5-7C7440F04FD1.jpeg',30000000,'2021-12-12','Đẹp',_binary '','MUNCHKIN'),(147,'Mèo tai cụp xinh xinh','https://matpetfamily.com/wp-content/uploads/2020/02/b1.jpg',18000000,'2021-12-12','Đẹp',_binary '','MUNCHKIN'),(148,'Mèo Munchkin xám cute','https://matpetfamily.com/wp-content/uploads/2020/12/129815790_1845524822262260_1393144393556835176_o.jpg',28000000,'2021-12-12','Đẹp',_binary '','MUNCHKIN');
/*!40000 ALTER TABLE `pet_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phu_kien`
--

DROP TABLE IF EXISTS `phu_kien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phu_kien` (
  `pk_id` varchar(5) NOT NULL,
  `pk_ten` varchar(50) DEFAULT NULL,
  `pk_anh` varchar(200) DEFAULT NULL,
  `pk_gia` int DEFAULT NULL,
  `pk_so_luong` int DEFAULT NULL,
  `pk_mo_ta` mediumtext,
  `pk_lpk_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  UNIQUE KEY `pk_id` (`pk_id`),
  KEY `pk_lpk_id` (`pk_lpk_id`),
  CONSTRAINT `phu_kien_ibfk_1` FOREIGN KEY (`pk_lpk_id`) REFERENCES `loai_phu_kien` (`lpk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phu_kien`
--

LOCK TABLES `phu_kien` WRITE;
/*!40000 ALTER TABLE `phu_kien` DISABLE KEYS */;
INSERT INTO `phu_kien` VALUES ('AO001','ÁO THUN SONGUKU','mod3imgaoao-thun-songuku',80000,6,'Áo thun full size cho các Boss','AO'),('AO002','ÁO AMBABY 4 CHÂN','mod3imgaoao-ambaby-4-chan.jpg',120000,3,'Áo Ambaby','AO'),('AO003','QUẦN ÁO TẾT','mod3imgaoquan-ao-tet',180000,21,'Bộ chơi tết','AO'),('AO004','ÁO MƯA KHỦNG LONG','mod3imgaoao-mua-khung-long',220000,6,'Áo mưa chống nước','AO'),('AO005','ÁO TRÁI BẮP','mod3imgaoao-trai-bap',50000,8,'Áo lót','AO'),('BL001','BALO NẮP TRONG HỌA TIẾT MÈO','mod3imgaloalo-nap-trong-hoa-tiet-meo.jpg',380000,10,'Siêu cute','BALO'),('BL002','BALO KÈM VALI','mod3imgaloalo-kem-vali.jpg',1894000,10,'Tiện ích','BALO'),('BL003','BALO BỌ DỪA','mod3imgaloalo-bo-dua.jpg',512000,10,'Cứng cáp','BALO'),('BL004','BALO FAN-DI','mod3imgaloalo-fan-di.jpg',1190000,10,'Sịn sịn','BALO'),('BL005','BALO DA NẮP TRONG','mod3imgaloalo-da-nap-trong.jpg',520000,10,'Màu hồng nam tính','BALO'),('BL006','BALO PHI THUỀN MINIONS','mod3imgaloalo-phi-thuyen.jpg',350000,10,'Đầy đủ màu sắc','BALO'),('CH001','LỒNG TĨNH ĐIỆN','mod3imgchuonglong-tinh-dien.jpg',490000,3,'Lồng tĩnh điện được thiết kế với chiều cao và dài rộng hợp lý tùy theo kích thước của mỗi thú cưng.','CH'),('CH002','NỆM GIƯỜNG 3D','mod3img\nem-giuong-3d.jpg',350000,2,'Nệm Giường 3D sẽ giúp boss tránh được các bệnh vặt. Vì thế, ổ nằm cho chó mèo sẽ là lựa chọn sáng suốt dành cho các Boss nhà mình','CH'),('CH003','LỒNG NHỰA LẮP RÁP','mod3imgchuonglong-nhua-lap-rap.jpg',1040000,3,'Chuồng Nhựa Láp Ráp cho chó mèo phù hợp với tất cả các giống chó nhỏ và mèo.','CH'),('CH004','LỒNG HÀNG KHÔNG PD58','mod3imgchuonglong-hang-khong.jpg',512000,4,'Lồng hàng không có thể mang Boss theo trong các chuyến du lịch','CH'),('CH005','NHÀ GỖ VÕNG CỬA VUÔNG','mod3imgchuong\nha-go-vong-cua-vuong.jpg',778000,1,'Ngôi nhà mini của Boss','CH'),('DC001','ĐỒ CHƠI THỊT NƯỚNG','mod3imgdochoido-choi-thit-nuong.jpg',25000,20,'Đồ chơi không phải thức ăn','DC'),('DC002','ĐỒ CHƠI GÀ QUAY','mod3imgdochoido-choi-ga-quay.jpg',30000,18,'Gà quay rút xương','DC'),('DC003','ĐỒ CHƠI BÓNG','mod3imgdochoido-choi-bong.jpg',20000,15,'Chất liệu nhựa','DC'),('DC004','BÓNG CHUÔNG','mod3imgdochoiong-chuong.jpg',35000,22,'Bóng chuông','DC'),('DC005','XƯƠNG MẶT CHÓ','mod3imgdochoixuong-mat-cho.jpg',22000,28,'Bóng xương mặt chó','DC'),('TP001','BIO MILK','mod3img	hucphamsua-bot-goi.jpg',50000,8,'Sữa cao cấp chuyên dùng cho chó mèo','TP'),('TP002','PATE CIAO','mod3img	hucphampate-ciao.jpg',20000,30,'Pate siêu ngon, có đầy đủ vị cho các Boss','TP'),('TP003','GANADOR ADULT','mod3img	hucphamganador-adult.jpg',35000,20,'Thực phẩm dinh dưỡng - 400G','TP'),('TP004','CỎ MÈO ỐNG','mod3img	hucphamco-meo-ong.jpg',35000,7,'Đồ ăn gây nghiện','TP'),('TP005','BÁNH YAHO','mod3img	hucphamanh-yaho.jpg',48000,15,'Bánh thưởng cho thú cưng','TP'),('VC001','VÒNG CỔ NƠ KÈM CHUÔNG','mod3imgvongcovong-co-no.jpg',60000,12,'','VC'),('VC002','VÒNG CỔ DA XỊN','mod3imgvongcovong-co-da.jpg',95000,21,'','VC'),('VC003','VÒNG CHỐNG LIẾM','mod3imgvongcovong-chong-liem.jpg',70000,16,'','VC'),('VC004','VÒNG CỔ KHĂN YẾM','mod3imgvongcovong-co-khan-yem.jpg',42000,22,'','VC'),('VC005','VÒNG CỔ KHÓA HÌNH MÈO','mod3imgvongcovong-co-khoa.jpg',28000,18,'','VC');
/*!40000 ALTER TABLE `phu_kien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-08 10:32:52
