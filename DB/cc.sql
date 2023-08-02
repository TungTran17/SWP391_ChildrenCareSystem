-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cc
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Eyes','bi bi-binoculars color-cyan'),(2,'Mouth','bi bi-map color-orange'),(3,'Foot','bi bi-easel color-blue'),(4,'Nose','bi bi-command color-red'),(5,'Lung','bi bi-brightness-high color-teal'),(6,'Body','bi bi-box-seam color-indigo');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `children` (
  `children_id` int NOT NULL AUTO_INCREMENT,
  `children_age` int DEFAULT NULL,
  `children_gender` int DEFAULT NULL,
  `children_name` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`children_id`),
  KEY `FK2wiygjldfu4pdqi53puwd5rvt` (`user_id`),
  CONSTRAINT `FK2wiygjldfu4pdqi53puwd5rvt` FOREIGN KEY (`user_id`) REFERENCES `usertb` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_detail_tb`
--

DROP TABLE IF EXISTS `reservation_detail_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_detail_tb` (
  `reservation_detailid` int NOT NULL AUTO_INCREMENT,
  `begin_time` datetime(6) DEFAULT NULL,
  `docterid` int NOT NULL,
  `num_of_person` int NOT NULL,
  `nurseid` int NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `slot` int NOT NULL,
  `reservation_id` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`reservation_detailid`),
  KEY `FKmyoyqo66h5ls90t8lq2on46yp` (`reservation_id`),
  KEY `FKcq9aflblbgb356x0ep3w2o8c` (`userid`),
  CONSTRAINT `FKcq9aflblbgb356x0ep3w2o8c` FOREIGN KEY (`userid`) REFERENCES `usertb` (`userid`),
  CONSTRAINT `FKmyoyqo66h5ls90t8lq2on46yp` FOREIGN KEY (`reservation_id`) REFERENCES `reservation_tb` (`reservationid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_detail_tb`
--

LOCK TABLES `reservation_detail_tb` WRITE;
/*!40000 ALTER TABLE `reservation_detail_tb` DISABLE KEYS */;
INSERT INTO `reservation_detail_tb` VALUES (1,'2023-07-27 07:00:00.000000',2,1,3,2131432,1,1,1,1),(2,'2023-07-28 07:00:00.000000',2,2,3,1000000,1,1,2,4);
/*!40000 ALTER TABLE `reservation_detail_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_tb`
--

DROP TABLE IF EXISTS `reservation_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_tb` (
  `reservationid` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `reservation_status` int NOT NULL,
  `total_price` double NOT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`reservationid`),
  KEY `FKi0tll0ug92ec2ul3dbppkcvcx` (`userid`),
  CONSTRAINT `FKi0tll0ug92ec2ul3dbppkcvcx` FOREIGN KEY (`userid`) REFERENCES `usertb` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_tb`
--

LOCK TABLES `reservation_tb` WRITE;
/*!40000 ALTER TABLE `reservation_tb` DISABLE KEYS */;
INSERT INTO `reservation_tb` VALUES (1,'2023-07-26 07:25:23.088000','',0,2131432,1),(2,'2023-07-26 08:21:10.071000','',0,1000000,4);
/*!40000 ALTER TABLE `reservation_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_tb`
--

DROP TABLE IF EXISTS `role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tb` (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tb`
--

LOCK TABLES `role_tb` WRITE;
/*!40000 ALTER TABLE `role_tb` DISABLE KEYS */;
INSERT INTO `role_tb` VALUES (1,'Admin'),(2,'Doctor'),(3,'Nurse'),(4,'Customer'),(5,'Manager');
/*!40000 ALTER TABLE `role_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `service_bi` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `service_created_date` varchar(255) DEFAULT NULL,
  `service_detail` varchar(255) DEFAULT NULL,
  `service_discount` varchar(255) DEFAULT NULL,
  `service_price` varchar(255) DEFAULT NULL,
  `service_rate_star` varchar(255) DEFAULT NULL,
  `service_title` varchar(255) DEFAULT NULL,
  `service_vote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  KEY `FK34cq08yegp653556yhfv601rc` (`category_id`),
  CONSTRAINT `FK34cq08yegp653556yhfv601rc` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'fdghgfdjhghgkjhhgjkhk',2,'2023-07-27','fdsgd','21','2131432',NULL,'efdgfd','5'),(2,'kham mat cho tre',1,'2023-07-27','iyusayuidusifdsgfdsgfdfsgf','123','123',NULL,'kham mat','5'),(3,'kham chan dau ',3,'2023-07-27','kham chan','15','1000000',NULL,'kham chan','3'),(4,'Khám Lung',1,'2023-07-27','hihihihihihihinifdsgfdhgfjhgktrytydtdfy','12','123',NULL,'Khám Lung',NULL);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_image`
--

DROP TABLE IF EXISTS `service_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_image` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `image_link` text,
  `service_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `UK_7hpj6d0ou8fkjwdffgdou4o5x` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_image`
--

LOCK TABLES `service_image` WRITE;
/*!40000 ALTER TABLE `service_image` DISABLE KEYS */;
INSERT INTO `service_image` VALUES (1,'fdsfghderwrteetetrdsggdfghdfhg','1'),(2,'udjhfjfjhdgfdhgfhgfjhfgfdsgf','2'),(3,'uiahiushasiuagsaiguuagsausiu','3'),(4,'dsfdsfgfdsgfsdgfdshgfdhgfhgfd','4');
/*!40000 ALTER TABLE `service_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_status`
--

DROP TABLE IF EXISTS `service_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `service_id` int DEFAULT NULL,
  `service_status` int DEFAULT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `UK_s4svbucwq3fikouflinw1wx7h` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_status`
--

LOCK TABLES `service_status` WRITE;
/*!40000 ALTER TABLE `service_status` DISABLE KEYS */;
INSERT INTO `service_status` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1);
/*!40000 ALTER TABLE `service_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `userid` int NOT NULL,
  `roleid` int NOT NULL,
  KEY `FK8a64us4rmovnc57sjcnt2c0t9` (`roleid`),
  KEY `FK890kiuv2l8r96me7n7wswpr4g` (`userid`),
  CONSTRAINT `FK890kiuv2l8r96me7n7wswpr4g` FOREIGN KEY (`userid`) REFERENCES `usertb` (`userid`),
  CONSTRAINT `FK8a64us4rmovnc57sjcnt2c0t9` FOREIGN KEY (`roleid`) REFERENCES `role_tb` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertb`
--

DROP TABLE IF EXISTS `usertb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertb` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roleid` int NOT NULL,
  `status` int NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `UK_444g2wdp8hu4sb6w7hywt1750` (`email`),
  UNIQUE KEY `UK_ceawp1w3pesw7fqc8a9jjgrbk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertb`
--

LOCK TABLES `usertb` WRITE;
/*!40000 ALTER TABLE `usertb` DISABLE KEYS */;
INSERT INTO `usertb` VALUES (1,'thanh hoa','trantungmr11@gmail.com',1,'tung','$2a$10$JKi.MxtiTiqij6zJS1ubZ.tIZb/Hzud3GN8jTf66iI.7ho7nqTa8m','0337472684',0,1,NULL),(2,'thanh hoa','tung1@gmail.com',1,'hoang','$2a$10$QOJrYYqnc9RA3JPL2Rv4Q.YHj1PC36hhOhkI6J7HqBTRb2V.SzeeK','435436554667665',0,1,NULL),(3,'thanh hoa','hieu@gmail.com',1,'Hieu','$2a$10$DyCPMP2rEgh5BMjJbAB4KuWDlbIYZHyXcGNQMwG2uO45ZUCF10Fta','435436554667665',0,1,NULL),(4,'tung@gmail.com','tung@gmail.com',1,'tiung','$2a$10$4jB.pi6gI5ytL3bVF/YIgeyYXcYsO7GZAZUmjILc.fzQ5Io/Ews12','0337472684',0,0,NULL);
/*!40000 ALTER TABLE `usertb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 19:11:05
