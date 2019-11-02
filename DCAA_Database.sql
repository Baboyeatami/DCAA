-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: dcaa_databse
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity_log` (
  `idActivity_log` int(11) NOT NULL AUTO_INCREMENT,
  `Activity_name` varchar(25) DEFAULT NULL,
  `Description` mediumtext,
  `Date` datetime DEFAULT NULL,
  `UseAccounts_idUseAccounts` int(11) NOT NULL,
  PRIMARY KEY (`idActivity_log`,`UseAccounts_idUseAccounts`),
  KEY `fk_Activity_log_UseAccounts1_idx` (`UseAccounts_idUseAccounts`),
  CONSTRAINT `fk_Activity_log_UseAccounts1` FOREIGN KEY (`UseAccounts_idUseAccounts`) REFERENCES `useaccounts` (`iduseaccounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `billing` (
  `idBilling` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Info_idStudent_Info` varchar(11) NOT NULL,
  `School_Year_idSchool_Year` int(11) NOT NULL,
  `Fee_Charges_idFee_Charges` int(11) NOT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Discounts_idDiscounts` int(11) NOT NULL,
  `Particulars` varchar(55) DEFAULT NULL,
  `Amount` double(15,2) DEFAULT NULL,
  `ReferenceNo` varchar(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `UseAccounts_idUseAccounts` int(11) NOT NULL,
  PRIMARY KEY (`idBilling`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (205,'20180000002',4,32,'2018-10-20',-1,'SHS tuition',1995.00,'10000000001','2018-10-20 14:23:01',2),(206,'20180000002',4,34,'2018-10-20',-1,'Books Math',550.00,'10000000002','2018-10-20 14:23:01',2),(207,'20180000002',4,36,'2018-10-20',-1,'Books Math',550.00,'10000000003','2018-10-20 14:23:01',2),(208,'20180000001',4,37,'2018-10-21',-1,'Grading sheet',50.00,'10000000004','2018-10-21 08:01:18',2),(209,'20180000001',4,34,'2018-10-21',1,'Books filipino',603.21,'10000000005','2018-10-21 11:11:21',2),(210,'20180000001',4,36,'2018-10-21',-1,'Books History Grade 7',330.00,'10000000006','2018-10-21 11:11:21',2),(211,'20180000001',4,32,'2018-10-22',2,'Tuition SHS',995.00,'10000000007','2018-10-22 13:56:11',2),(212,'20180000002',4,36,'2018-11-03',-1,'Books History Grade 7',330.00,'10000000008','2018-11-03 18:46:13',2),(213,'20180000002',4,37,'2018-11-03',-1,'Books filipino grade 8',300.20,'10000000009','2018-11-03 18:46:13',2),(214,'20180000002',4,38,'2018-11-03',-1,'Form 138 Request',100.00,'10000000010','2018-11-03 18:46:13',2),(215,'20180000001',4,36,'2018-11-03',-1,'Books History Grade 7',330.00,'10000000011','2018-11-03 18:46:13',2),(216,'20180000001',4,37,'2018-11-03',-1,'Books filipino grade 8',300.20,'10000000012','2018-11-03 18:46:13',2),(217,'20180000001',4,38,'2018-11-03',-1,'Form 138 Request',100.00,'10000000013','2018-11-03 18:46:13',2),(218,'20180000002',4,33,'2018-11-04',-1,'Tuition for JHS',1220.00,'10000000014','2018-11-04 14:57:08',2),(219,'20180000002',4,37,'2018-11-04',-1,'Books filipino grade 8',300.20,'10000000015','2018-11-04 14:57:08',2),(220,'20180000001',4,33,'2018-11-04',-1,'Tuition for JHS',1220.00,'10000000016','2018-11-04 14:57:08',2),(221,'20180000001',4,37,'2018-11-04',-1,'Books filipino grade 8',300.20,'10000000017','2018-11-04 14:57:08',2),(222,'20180000004',4,32,'2018-11-05',-1,'Tuition SHS',1995.00,'10000000018','2018-11-05 15:38:53',2),(223,'20180000004',4,33,'2018-11-05',-1,'Tuition for JHS',1220.00,'10000000019','2018-11-05 15:38:53',2),(224,'20180000004',4,37,'2018-11-05',-1,'Books filipino grade 8',300.20,'10000000020','2018-11-05 15:38:53',2),(225,'20180000005',5,37,'2018-11-05',-1,'Books filipino grade 8',300.20,'10000000021','2018-11-05 15:40:21',2),(226,'20180000005',5,38,'2018-11-05',-1,'Form 138 Request',100.00,'10000000022','2018-11-05 15:40:21',2),(227,'0',4,32,'2018-11-06',-1,'Tuition SHS',0.00,'10000000023','2018-11-06 12:07:31',2),(228,'0',4,33,'2018-11-06',-1,'Tuition for JHS',0.00,'10000000024','2018-11-06 12:07:31',2),(229,'20180000006',4,36,'2018-11-06',-1,'Books History Grade 7',330.00,'10000000025','2018-11-06 12:17:18',2),(230,'20180000006',4,37,'2018-11-06',-1,'Books filipino grade 8',300.20,'10000000026','2018-11-06 12:17:18',2),(231,'0',4,38,'2018-11-06',-1,'Form 138 Request',0.00,'10000000027','2018-11-06 12:17:18',2),(232,'20180000001',5,35,'2018-11-07',-1,'Books Math Grade 12',808.89,'10000000028','2018-11-07 18:33:21',2),(233,'0',5,36,'2018-11-07',-1,'Books History Grade 7',0.00,'10000000029','2018-11-07 18:33:21',2),(234,'20180000001',5,37,'2018-11-07',-1,'Books filipino grade 8',300.20,'10000000030','2018-11-07 18:33:21',2),(235,'20180000001',6,33,'2018-11-07',-1,'Tuition for JHS',1220.00,'10000000031','2018-11-07 18:33:38',2),(236,'20180000001',6,34,'2018-11-07',-1,'Books filipino',670.23,'10000000032','2018-11-07 18:33:38',2),(237,'20180000001',6,35,'2018-11-07',-1,'Books Math Grade 12',808.89,'10000000033','2018-11-07 19:28:20',2),(238,'20180000001',6,36,'2018-11-07',-1,'Books History Grade 7',330.00,'10000000034','2018-11-07 19:28:20',2),(239,'0',5,32,'2018-11-07',1,'Tuition SHS',0.00,'10000000035','2018-11-07 19:33:14',2),(240,'20180000006',5,38,'2018-11-09',-1,'Form 138 Request',100.00,'10000000036','2018-11-09 13:46:26',2),(241,'20180000003',4,32,'2018-11-18',2,'Tuition SHS',995.00,'10000000037','2018-11-18 19:16:00',2),(242,'20180000006',6,35,'2018-11-26',-1,'Books Math Grade 12',808.89,'10000000038','2018-11-26 18:27:20',2),(243,'20180000006',6,34,'2018-11-26',-1,'Books filipino',670.23,'10000000039','2018-11-26 18:27:36',2),(244,'20180000006',6,37,'2018-11-26',-1,'Books filipino grade 8',300.20,'10000000040','2018-11-26 18:27:36',2),(245,'20180000007',5,32,'2018-11-27',-1,'Tuition SHS',1995.00,'10000000041','2018-11-27 14:02:42',2),(246,'20180000007',5,35,'2018-11-27',-1,'Books Math Grade 12',808.89,'10000000042','2018-11-27 14:02:42',2),(247,'20180000007',5,37,'2018-11-27',-1,'Books filipino grade 8',300.20,'10000000043','2018-11-27 14:02:42',2),(248,'20180000007',5,38,'2018-11-27',-1,'Form 138 Request',100.00,'10000000044','2018-11-27 14:02:42',2),(249,'20180000007',4,32,'2018-11-27',-1,'Tuition SHS',1995.00,'10000000045','2018-11-27 14:22:48',2),(250,'20180000007',4,33,'2018-11-27',-1,'Tuition for JHS',1220.00,'10000000046','2018-11-27 14:22:48',2),(251,'20180000007',4,34,'2018-11-27',-1,'Books filipino',670.23,'10000000047','2018-11-27 14:22:48',2),(252,'20180000007',4,35,'2018-11-27',-1,'Books Math Grade 12',808.89,'10000000048','2018-11-27 14:22:48',2),(253,'20180000007',4,36,'2018-11-27',-1,'Books History Grade 7',330.00,'10000000049','2018-11-27 14:22:48',2),(254,'20180000007',4,37,'2018-11-27',-1,'Books filipino grade 8',300.20,'10000000050','2018-11-27 14:22:48',2),(255,'20180000007',4,38,'2018-11-27',-1,'Form 138 Request',100.00,'10000000051','2018-11-27 14:22:48',2),(256,'20180000007',6,32,'2018-11-27',1,'Tuition SHS',1795.50,'10000000052','2018-11-27 14:23:53',2),(257,'20180000007',6,33,'2018-11-27',0,'Tuition for JHS',220.00,'10000000053','2018-11-27 14:23:53',2),(258,'20180000007',6,35,'2018-11-27',-1,'Books Math Grade 12',808.89,'10000000054','2018-11-27 14:23:53',2),(259,'20180000007',6,36,'2018-11-27',-1,'Books History Grade 7',330.00,'10000000055','2018-11-27 14:23:53',2),(260,'20180000007',6,38,'2018-11-27',-1,'Form 138 Request',100.00,'10000000056','2018-11-27 14:23:53',2),(261,'20180000009',4,32,'2018-12-05',-1,'Tuition SHS',1995.00,'10000000057','2018-12-05 20:36:31',2),(262,'20180000009',4,33,'2018-12-05',-1,'Tuition for JHS',1220.00,'10000000058','2018-12-05 20:36:31',2),(263,'20180000009',4,34,'2018-12-05',-1,'Books filipino',670.23,'10000000059','2018-12-05 20:36:31',2),(264,'20180000009',4,35,'2018-12-05',-1,'Books Math Grade 12',808.89,'10000000060','2018-12-05 20:36:31',2),(265,'20180000009',4,36,'2018-12-05',-1,'Books History Grade 7',351.34,'10000000061','2018-12-05 20:36:31',2),(266,'20180000009',4,37,'2018-12-05',-1,'Books filipino grade 8',300.20,'10000000062','2018-12-05 20:36:31',2),(267,'20180000009',4,38,'2018-12-05',-1,'Form 138 Request',100.00,'10000000063','2018-12-05 20:36:31',2),(268,'20180000009',4,39,'2018-12-05',-1,'Aircon Fee',757.39,'10000000064','2018-12-05 20:36:31',2),(269,'20180000009',4,40,'2018-12-05',-1,'Calculus Book -Grade 12',757.00,'10000000065','2018-12-05 20:36:31',2),(270,'20180000009',4,41,'2018-12-05',-1,'History Book-grade 8',345.67,'10000000066','2018-12-05 20:36:31',2),(271,'20180000009',4,42,'2018-12-05',-1,'Piano Lessons',1000.00,'10000000067','2018-12-05 20:36:31',2),(272,'20180000015',4,32,'2018-12-12',1,'Tuition SHS',1795.50,'10000000068','2018-12-12 16:35:11',2),(273,'20180000015',4,33,'2018-12-12',-1,'Tuition for JHS',1220.00,'10000000069','2018-12-12 16:35:11',2),(274,'20180000015',4,34,'2018-12-12',-1,'Books filipino',670.23,'10000000070','2018-12-12 16:35:11',2),(275,'20180000015',4,35,'2018-12-12',-1,'Books Math Grade 12',808.89,'10000000071','2018-12-12 16:35:11',2),(276,'20180000015',4,36,'2018-12-12',-1,'Books History Grade 7',351.34,'10000000072','2018-12-12 16:35:11',2),(277,'20180000015',4,37,'2018-12-12',-1,'Books filipino grade 8',300.20,'10000000073','2018-12-12 16:35:11',2),(278,'20180000015',4,38,'2018-12-12',-1,'Form 138 Request',100.00,'10000000074','2018-12-12 16:35:11',2),(279,'20180000015',4,39,'2018-12-12',-1,'Aircon Fee',757.39,'10000000075','2018-12-12 16:35:11',2),(280,'20180000015',4,40,'2018-12-12',-1,'Calculus Book -Grade 12',757.00,'10000000076','2018-12-12 16:35:11',2),(281,'20180000015',4,41,'2018-12-12',-1,'History Book-grade 8',345.67,'10000000077','2018-12-12 16:35:11',2),(282,'20180000015',4,42,'2018-12-12',-1,'Piano Lessons',1000.00,'10000000078','2018-12-12 16:35:11',2),(283,'20180000015',5,32,'2018-12-12',-1,'Tuition SHS',1995.00,'10000000079','2018-12-12 16:46:17',2),(284,'20180000015',5,34,'2018-12-12',-1,'Books filipino',670.23,'10000000080','2018-12-12 16:46:17',2),(285,'20180000015',5,36,'2018-12-12',-1,'Books History Grade 7',351.34,'10000000081','2018-12-12 16:46:17',2),(286,'20180000015',5,37,'2018-12-12',-1,'Books filipino grade 8',300.20,'10000000082','2018-12-12 16:46:17',2),(287,'20180000015',5,39,'2018-12-12',-1,'Aircon Fee',757.39,'10000000083','2018-12-12 16:46:17',2),(288,'20180000015',5,40,'2018-12-12',-1,'Calculus Book -Grade 12',757.00,'10000000084','2018-12-12 16:46:17',2),(289,'20180000015',5,41,'2018-12-12',-1,'History Book-grade 8',345.67,'10000000085','2018-12-12 16:46:17',2),(290,'20180000015',6,32,'2018-12-12',-1,'Tuition SHS',1995.00,'10000000086','2018-12-12 16:46:58',2),(291,'20180000015',6,34,'2018-12-12',-1,'Books filipino',670.23,'10000000087','2018-12-12 16:46:58',2),(292,'20180000015',6,37,'2018-12-12',-1,'Books filipino grade 8',300.20,'10000000088','2018-12-12 16:46:58',2),(293,'20180000015',4,42,'2018-12-12',-1,'Piano Lessons',1000.00,'10000000089','2018-12-12 16:52:06',2),(294,'20180000001',4,42,'2018-12-12',-1,'Piano Lessons',1000.00,'10000000090','2018-12-12 16:52:06',2);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_department`
--

DROP TABLE IF EXISTS `category_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_department` (
  `idCategory_Department` int(11) NOT NULL AUTO_INCREMENT,
  `Department_Name` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCategory_Department`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_department`
--

LOCK TABLES `category_department` WRITE;
/*!40000 ALTER TABLE `category_department` DISABLE KEYS */;
INSERT INTO `category_department` VALUES (4,'JHS','Juniur HS departmennt	','2018-10-20 14:14:54',100),(5,'SHS','Seniour HS','2018-10-20 14:15:55',100);
/*!40000 ALTER TABLE `category_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_of_charges`
--

DROP TABLE IF EXISTS `category_of_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_of_charges` (
  `idCategory_of_charges` int(11) NOT NULL AUTO_INCREMENT,
  `Charge_Name` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Category_Department` int(11) DEFAULT NULL,
  `School_Year` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCategory_of_charges`),
  KEY `fk_Category_of_charges_Category_Department1_idx` (`Category_Department`),
  KEY `fk_Category_of_charges_School_Year1_idx` (`School_Year`),
  CONSTRAINT `fk_Category_of_charges_Category_Department1` FOREIGN KEY (`Category_Department`) REFERENCES `category_department` (`idcategory_department`),
  CONSTRAINT `fk_Category_of_charges_School_Year1` FOREIGN KEY (`School_Year`) REFERENCES `school_year` (`idschool_year`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_of_charges`
--

LOCK TABLES `category_of_charges` WRITE;
/*!40000 ALTER TABLE `category_of_charges` DISABLE KEYS */;
INSERT INTO `category_of_charges` VALUES (11,'BookStore','Book Store of the Scholl',5,6,'2018-10-20 14:16:28',100),(12,'Finance JHS','Tuition fee Collection',4,4,'2018-10-20 14:19:56',100),(13,'Finance SHS','Tuition fee Collection',5,4,'2018-10-20 14:20:00',100),(14,'Registrar','Registrars Office',4,4,'2018-10-21 11:10:27',100),(15,'Special Class','jalskdjlaksdjlaksjdlkasjdlkaj',5,4,'2018-12-12 16:58:11',100);
/*!40000 ALTER TABLE `category_of_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discounts` (
  `idDiscounts` int(11) NOT NULL,
  `Discount_Name` varchar(45) DEFAULT NULL,
  `Value` double(10,2) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDiscounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (0,'Earcly Bird',900.00,'1000 pesos on early bird','1','2018-10-20 14:17:12',2),(1,'10% discount ',10.00,'10% discount ','0','2018-10-20 14:17:35',2),(2,'Discount 1',800.00,'1000 pesos discount ','1','2018-10-20 14:17:50',2),(3,'50% discount',50.00,'50% discount ','1','2018-10-22 13:33:21',2);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_charges`
--

DROP TABLE IF EXISTS `fee_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fee_charges` (
  `idFee_Charges` int(11) NOT NULL AUTO_INCREMENT,
  `Fee_Name` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Value` double(15,2) DEFAULT NULL,
  `Category_of_charges` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFee_Charges`),
  KEY `fk_Fee_Charges_Category_of_charges1_idx` (`Category_of_charges`),
  CONSTRAINT `fk_Fee_Charges_Category_of_charges1` FOREIGN KEY (`Category_of_charges`) REFERENCES `category_of_charges` (`idcategory_of_charges`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_charges`
--

LOCK TABLES `fee_charges` WRITE;
/*!40000 ALTER TABLE `fee_charges` DISABLE KEYS */;
INSERT INTO `fee_charges` VALUES (32,'Tuition SHS','tuition SHS 		',1995.00,12,'2018-10-20 14:20:52',100),(33,'Tuition for JHS','Tuition for JSH	',1220.00,12,'2018-10-20 14:21:18',100),(34,'Books filipino','filipino for grade 11',670.23,11,'2018-10-20 14:21:28',100),(35,'Books Math Grade 12','Math book for grade 12	\nAuthor-Ymbong',808.89,11,'2018-10-20 14:21:31',100),(36,'Books History Grade 7','history book forr grade 7	',351.34,11,'2018-10-20 14:21:34',100),(37,'Books filipino grade 8','filipino for grade 8',300.20,11,'2018-10-21 08:00:50',100),(38,'Form 138 Request','Request for form 138 fee',100.00,12,'2018-10-21 11:09:08',100),(39,'Aircon Fee','Aircon Fee	',757.39,12,'2018-11-27 14:26:56',100),(40,'Calculus Book -Grade 12','Calculos book		',757.00,11,'2018-11-29 11:04:17',100),(41,'History Book-grade 8','history	',345.67,11,'2018-11-29 11:22:05',100),(42,'Piano Lessons','Ymbong Piano 	',1000.00,13,'2018-11-29 11:26:01',100),(43,'Violine','jjjj',900.00,15,'2018-12-12 17:00:32',100);
/*!40000 ALTER TABLE `fee_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice` (
  `idINVOICE` int(11) NOT NULL AUTO_INCREMENT,
  `Value` double(15,2) DEFAULT NULL,
  `Particulars` varchar(45) DEFAULT NULL,
  `Category_of_charges_idCategory_of_charges` int(11) NOT NULL,
  `Student_Info_idStudent_Info` varchar(11) NOT NULL,
  `OrNum` varchar(10) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `School_Year_idSchool_Year` int(11) NOT NULL,
  `UseAccounts_idUseAccounts` int(11) NOT NULL,
  PRIMARY KEY (`idINVOICE`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (207,600.00,'10000000001',32,'20180000002','0000000000','2018-10-20 14:44:18',4,2),(208,40.00,'10000000004',37,'20180000001','0000000001','2018-10-21 08:01:42',4,2),(209,808.89,'10000000028',35,'20180000001','0000000002','2018-11-07 18:34:41',5,2),(210,330.00,'10000000029',36,'20180000001','0000000002','2018-11-07 18:34:41',5,2),(211,300.20,'10000000030',37,'20180000001','0000000002','2018-11-07 18:34:41',5,2),(212,200.00,'10000000017',37,'20180000001','0000000003','2018-11-12 11:42:37',4,2),(213,200.00,'10000000005',34,'20180000001','0000000004','2018-11-12 12:09:13',4,2),(214,500.00,'10000000007',32,'20180000001','0000000005','2018-11-12 12:09:19',4,2),(215,200.00,'10000000016',33,'20180000001','0000000006','2018-11-12 12:09:29',4,2),(216,1020.00,'10000000016',33,'20180000001','0000000007','2018-11-12 12:09:51',4,2),(217,603.21,'10000000005',34,'20180000001','0000000008','2018-11-13 20:44:24',4,2),(218,330.00,'10000000006',36,'20180000001','0000000009','2018-11-13 20:55:13',4,2),(219,100.00,'10000000013',38,'20180000001','0000000010','2018-11-14 09:59:01',4,2),(220,300.20,'10000000017',37,'20180000001','0000000011','2018-11-14 09:59:10',4,2),(221,995.00,'10000000007',32,'20180000001','0000000012','2018-11-18 19:15:13',4,2),(222,995.00,'10000000037',32,'20180000003','0000000013','2018-11-18 19:16:51',4,2),(223,300.20,'10000000012',37,'20180000001','0000000014','2018-11-18 20:21:24',4,2),(224,300.20,'10000000026',37,'20180000006','0000000015','2018-11-18 20:24:26',4,2),(225,330.00,'10000000025',36,'20180000006','0000000016','2018-11-18 20:24:41',4,2),(226,100.00,'10000000036',38,'20180000006','0000000017','2018-11-18 20:24:55',5,2),(227,1395.00,'10000000001',32,'20180000002','0000000018','2018-11-19 11:49:56',4,2),(228,550.00,'10000000002',34,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(229,550.00,'10000000003',36,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(230,330.00,'10000000008',36,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(231,300.20,'10000000009',37,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(232,100.00,'10000000010',38,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(233,1220.00,'10000000014',33,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(234,300.20,'10000000015',37,'20180000002','0000000019','2018-11-19 11:53:55',4,2),(235,10.00,'10000000004',37,'20180000001','0000000020','2018-11-19 12:07:05',4,2),(236,10.00,'10000000011',36,'20180000001','0000000021','2018-11-19 12:10:16',4,4),(237,808.89,'10000000038',35,'20180000006','0000000022','2018-11-26 18:28:22',6,4),(238,300.00,'10000000039',34,'20180000006','0000000023','2018-11-26 18:29:14',6,4),(239,20.00,'10000000040',37,'20180000006','0000000024','2018-11-26 18:29:30',6,4),(240,20.00,'10000000040',37,'20180000006','0000000025','2018-11-26 18:29:36',6,4),(241,20.00,'10000000040',37,'20180000006','0000000026','2018-11-26 18:29:40',6,4),(242,20.00,'10000000040',37,'20180000006','0000000027','2018-11-26 18:29:45',6,4),(243,30.00,'10000000039',34,'20180000006','0000000028','2018-11-26 18:29:52',6,4),(244,1795.50,'10000000068',32,'20180000015','0000000029','2018-12-12 16:39:18',4,4),(245,500.00,'10000000069',33,'20180000015','0000000030','2018-12-12 16:39:42',4,4),(246,670.23,'10000000070',34,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(247,808.89,'10000000071',35,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(248,351.34,'10000000072',36,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(249,300.20,'10000000073',37,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(250,100.00,'10000000074',38,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(251,757.39,'10000000075',39,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(252,757.00,'10000000076',40,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(253,345.67,'10000000077',41,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(254,1000.00,'10000000078',42,'20180000015','0000000031','2018-12-12 16:41:48',4,4),(255,720.00,'10000000069',33,'20180000015','0000000032','2018-12-12 16:42:13',4,4);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_year`
--

DROP TABLE IF EXISTS `school_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school_year` (
  `idSchool_Year` int(11) NOT NULL AUTO_INCREMENT,
  `School_Year` varchar(11) DEFAULT NULL,
  `Semester` varchar(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSchool_Year`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_year`
--

LOCK TABLES `school_year` WRITE;
/*!40000 ALTER TABLE `school_year` DISABLE KEYS */;
INSERT INTO `school_year` VALUES (4,'2018-2019','1','2018-10-20 14:13:04',100),(5,'2018-2019','2','2018-10-23 04:36:01',100),(6,'2018-2019','3','2018-10-23 05:06:19',100);
/*!40000 ALTER TABLE `school_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `section` (
  `idsection` int(11) NOT NULL AUTO_INCREMENT,
  `SectionName` varchar(45) DEFAULT NULL,
  `Adviser` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `SY` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsection`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Section 13 grade 11','Ymbong','grade 11 ymbong 11',5,'2018-12-10 10:05:09',1),(2,'Section 1 grade 11','JAriol','grade 11 jariol1122',NULL,'2018-12-05 20:32:57',1),(3,'section 1 olive11','adviser 1','section 1 adviser 122',6,'2018-12-10 09:58:17',1),(4,'section 1 olive','adviser 1','section 1 adviser 1',NULL,'2018-12-05 15:55:06',1),(5,'Section 13','13 ','13 for section	',4,'2018-10-26 10:46:42',1),(6,'Olive','Ymbong','ahsdhakjshdkjahsdkjhaskdhka',4,'2018-12-05 15:32:13',1),(7,'Loyalty','rosal','jhdfkjhkshfk	',4,'2018-12-05 15:58:40',1);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectioning`
--

DROP TABLE IF EXISTS `sectioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sectioning` (
  `idSectioning` int(11) NOT NULL AUTO_INCREMENT,
  `SectionGradelevel` varchar(45) DEFAULT NULL,
  `studentid` varchar(45) DEFAULT NULL,
  `section_id` varchar(45) DEFAULT NULL,
  `Sy_id` varchar(45) DEFAULT NULL,
  `crearetime` datetime DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSectioning`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectioning`
--

LOCK TABLES `sectioning` WRITE;
/*!40000 ALTER TABLE `sectioning` DISABLE KEYS */;
INSERT INTO `sectioning` VALUES (1,'1','20180000002','5','4',NULL,NULL),(2,'1','20180000001','5','4',NULL,NULL),(3,'1','20180000001','null','null',NULL,NULL),(4,'1','20180000002','null','null',NULL,NULL),(5,'1','20180000001','null','null',NULL,NULL),(6,'1','20180000002','null','null',NULL,NULL),(7,'1','20180000001','4','null',NULL,NULL),(8,'1','20180000002','4','null',NULL,NULL),(9,'1','20180000007','1','null',NULL,NULL),(10,'1','20180000008','1','null',NULL,NULL),(11,'1','20180000001','3','null',NULL,NULL),(12,'1','20180000008','3','null',NULL,NULL),(13,'1','20180000007','3','null',NULL,NULL),(14,'1','null','null','null',NULL,NULL),(15,'1','20180000009','1','5',NULL,NULL),(16,'1','20180000008','5','4',NULL,NULL),(17,'1','20180000009','5','4',NULL,NULL),(18,'1','20180000007','5','4',NULL,NULL),(19,'1','20180000015','7','4',NULL,NULL),(20,'1','20180000001','7','4',NULL,NULL);
/*!40000 ALTER TABLE `sectioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_info` (
  `idStudent_Info` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(11) DEFAULT NULL,
  `F_name` varchar(45) DEFAULT NULL,
  `M_name` varchar(45) DEFAULT NULL,
  `L_name` varchar(45) DEFAULT NULL,
  `Name_extention` varchar(45) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `BirthPlace` varchar(45) DEFAULT NULL,
  `Sex` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `GradeLevel` varchar(45) DEFAULT NULL,
  `Religion` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `created_by_user` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStudent_Info`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (174,'20180000001','Jamie ','Eduardo ','Rosal','','2018-04-10','RC','Male','Single','11','RC','2018-10-19 11:57:08','2018-12-11 13:09:38','Jamie','Digos','mama','papa','0909090911111111'),(175,'20180000002','Jamie','C','Rosal','','2018-08-10','11','Male','11','11','11','2018-10-20 14:22:30','2018-10-20 14:22:30','jamie',NULL,NULL,NULL,NULL),(176,'20180000003','Juan','D','Dele Cruz','','2018-11-16','1','Female','1','Single','1','2018-11-05 15:05:49','2018-11-05 15:05:49','jamie',NULL,NULL,NULL,NULL),(177,'20180000004','Juan','D','Dele Cruz','','2022-05-11','1','Male','1','Female','','2018-11-05 15:18:03','2018-11-05 15:18:03','jamie',NULL,NULL,NULL,NULL),(178,'20180000005','Juan','D','Dele Cruz','','2022-05-11','1','Male','1','Female','','2018-11-05 15:22:15','2018-11-05 15:22:15','jamie',NULL,NULL,NULL,NULL),(179,'20180000006','Juan','D','Dele Cruz','','2017-05-08','','Male','Male','11','Male','2018-11-05 15:22:31','2018-11-06 11:20:17','Jamie',NULL,NULL,NULL,NULL),(180,'20180000007','Andrew','M','Espiritu','','2018-11-21','Digos','Male','','Single','100','2018-11-27 14:01:16','2018-11-27 14:01:16','jamie',NULL,NULL,NULL,NULL),(181,'20180000008','Luffy','D.','Monkey','','2018-11-01','Bplace','Male','','12','','2018-11-27 14:03:46','2018-11-27 14:03:46','jamie',NULL,NULL,NULL,NULL),(182,'20180000009','Fresh','Pacana','Silvosa','','2018-12-21','1','Male','1','11','1','2018-12-05 20:35:28','2018-12-05 20:35:28','jamie',NULL,NULL,NULL,NULL),(183,'20180000010','Anthony ','Edward','Stark','','2018-12-20','Birthplace','Male','1','single','RC','2018-12-10 14:21:55','2018-12-10 14:21:55','jamie','Address','MAMA','PAPA','090909'),(184,'20180000011','Anthony 1','11Edward','Stark11','','2018-12-20','Birthplace','Male','1','single','RC','2018-12-10 14:24:09','2018-12-10 14:24:09','jamie','Address','MAMA1','PAPAq','090909'),(185,'20180000012','test','test','test','','2020-06-09','RC','Male','Male','11','singlr','2018-12-10 14:25:55','2018-12-11 13:07:03','Jamie','birth','birth','add','mama'),(186,'20180000013','t','as','asd','as','2018-12-07','asd','Male','11','23','123','2018-12-10 14:30:47','2018-12-10 14:30:47','jamie','add','mama','100','200'),(187,'20180000014','kkk','kk','kk','kk','2018-12-06','123','Female','11','123','RC','2018-12-10 14:32:31','2018-12-10 14:32:31','jamie','add','mama','papa','0909123'),(188,'20180000015','Philip','N','Ymbongss','','2019-06-10','Digos','Male','11','single','090090','2018-12-12 16:26:01','2018-12-12 16:26:59','Jamie','Hagonoy','MAMa','MAMA','0909');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useaccounts`
--

DROP TABLE IF EXISTS `useaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useaccounts` (
  `idUseAccounts` int(11) NOT NULL AUTO_INCREMENT,
  `Accountnumber` varchar(5) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Mname` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Level` varchar(10) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUseAccounts`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useaccounts`
--

LOCK TABLES `useaccounts` WRITE;
/*!40000 ALTER TABLE `useaccounts` DISABLE KEYS */;
INSERT INTO `useaccounts` VALUES (4,'00000','Jamie','Rosal','C','jamie','jamie','user','2018-11-18 17:29:20','2018-11-18 17:29:20',2);
/*!40000 ALTER TABLE `useaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_accounts` (
  `idUseAccounts` int(11) NOT NULL AUTO_INCREMENT,
  `Accountnumber` varchar(5) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Mname` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Level` varchar(10) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`idUseAccounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13 10:46:14
