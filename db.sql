-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(25) NOT NULL,
  `client_mobile_no` varchar(15) NOT NULL,
  `client_shop_no` varchar(25) NOT NULL,
  `client_street` tinytext,
  `client_city` varchar(25) NOT NULL,
  `client_state` varchar(25) NOT NULL,
  `client_GST_no` varchar(25) NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `client_GST_no` (`client_GST_no`),
  UNIQUE KEY `client_shop_no` (`client_shop_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'sam pillai','9876543280','plot-392','vasco road','vasco da gama','goa','gstinxxxxx10'),(2,'ravindra dhanaji','9876543281','c-148','sv road','pune','maharashtra','gstinxxxxx11'),(3,'mohanlal singh','9876543282','p-62','naidu road','kochi','kerala','gstinxxxxx12'),(4,'pravin patil','9876543283','12/144','sv road','andheri','maharashtra','gstinxxxxx13'),(5,'sushant makhani','9876543284','34/karol bhagh','gandhi road','gurugram','delhi','gstinxxxxx14'),(6,'harpreet kaur','9876543285','p-212','km road','ludhiana','punjab','gstinxxxxx15'),(7,'diljit dosanjh','9876543286','34/441','pv road','jalandhar','punjab','gstinxxxxx16'),(8,'anil jangra','9876543287','52/313','baba road','rohtak','haryana','gstinxxxxx17'),(9,'ankit chavhan','9876543288','75/811','sv road','mumbai','maharashtra','gstinxxxxx18'),(10,'parmish verma','9876543289','c-111','plaza road','faridabad','delhi','gstinxxxxx19');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clients_sales`
--

DROP TABLE IF EXISTS `clients_sales`;
/*!50001 DROP VIEW IF EXISTS `clients_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clients_sales` AS SELECT 
 1 AS `order_id`,
 1 AS `client_name`,
 1 AS `order_item`,
 1 AS `selling_price`,
 1 AS `discount`,
 1 AS `quantity`,
 1 AS `order_amount`,
 1 AS `cust_name`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(25) NOT NULL,
  `cust_mobile_no` varchar(15) NOT NULL,
  `cust_building` tinytext NOT NULL,
  `cust_street` tinytext,
  `cust_city` varchar(25) NOT NULL,
  `cust_state` varchar(25) NOT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_mobile_no` (`cust_mobile_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'abhinit davane','9876543210','11/204','lane 221','mumbai','maharashtra'),(2,'laakhan bhopali','9876543211','09/431','nehru chowk','bhopal','madhya pradesh'),(3,'dhaval joshi','9876543212','c-91','sardar road','vadodara','gujarat'),(4,'durgesh rathore','9876543213','m-199','gandhi road','kota','rajasthan'),(5,'manish pandey','9876543214','12/331','buddha lane','patna','bihar'),(6,'bharat verma','9876543215','c4/10','palghar road','boisar','maharashtra'),(7,'saurabh rai','9876543216','d2/3','palghar road','boisar','maharashtra'),(8,'tony jaiswal','9876543217','c-11/10','palghar road','boisar','maharashtra'),(9,'sachin divine','9876543218','c-14/99','palghar road','boisar','maharashtra'),(11,'amogh sapre','9876543219','v-56/21','palghar road','dahanu','maharashtra'),(12,'akshay rajput','9876543220','v-56/23','mahalaxmi road','dahanu','maharashtra'),(13,'sameer singh','9876543221','12/22','buddha road','bodhgaya','bihar'),(14,'vikas tiwari','9876543222','11/226','kaman road','gaya','bihar'),(15,'karan bhatia','9876543223','k-11','lama road','shillong','meghalaya'),(16,'vijay malya','9876543224','21/41','lp road','indore','madhya pradesh'),(17,'rahim shaikh','9876543225','21/41','nawabi road','lucknow','uttar pradesh'),(18,'satyam singhania','9876543226','kl-41','chowk nabiha','kanpur','uttar pradesh'),(19,'ankush tewari','9876543227','pr-34','meena chowk','delhi','delhi'),(20,'bikram ghosh','9876543228','v-47','durga road','kolkata','west bengal'),(21,'karan patel','9876543229','ah-48','sabarmati road','ahmedabad','gujarat'),(22,'ahmed khan','9876543230','pv-29','kotir road','faridabad','delhi'),(23,'karim tharuwala','9876543231','89/771','hg road','ahmedabad','gujarat'),(24,'venugopala iyer','9876543232','kn-221','tram road','chennai','tamil nadu'),(25,'muzammil sati','9876543233','d-34','kr road','chennai','tamil nadu'),(26,'abhishek pandey','9876543234','d4/92','tn road','bangalore','karnataka'),(27,'ashish tiwari','9876543235','c-231','mv road','godhra','gujarat'),(28,'kamal chaudhary','9876543236','m-26/08','sai road','kolhapur','maharashtra'),(29,'iyengar kaushik','9876543237','d-11/07','clean road','bangalore','karnataka'),(30,'john phillips','9876543238','k-21/02','st.xaviour road','panaji','goa'),(31,'vijay das','9876543239','p-52','main road','kolkata','west bengal');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customers_purchase`
--

DROP TABLE IF EXISTS `customers_purchase`;
/*!50001 DROP VIEW IF EXISTS `customers_purchase`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customers_purchase` AS SELECT 
 1 AS `order_id`,
 1 AS `cust_name`,
 1 AS `client_name`,
 1 AS `order_item`,
 1 AS `order_amount`,
 1 AS `order_date`,
 1 AS `client_GST_no`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_item` tinytext,
  `selling_price` float(8,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_amount` float(8,2) DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `cust_id` (`cust_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'sofa_1',500.00,10,1,450.00,'2019-12-10 20:11:51'),(2,1,2,'sofa_2',400.00,10,2,720.00,'2019-12-10 20:15:53'),(3,1,3,'sofa_3',1000.00,15,1,850.00,'2019-12-10 20:15:53'),(4,1,4,'sofa_4',2000.00,12,4,7040.00,'2019-12-10 20:15:53'),(5,1,5,'sofa_5',10000.00,12,2,17600.00,'2019-12-10 20:15:53'),(6,2,3,'sofa_3',600.00,10,2,1080.00,'2019-12-10 20:30:20'),(7,2,4,'sofa_4',300.00,17,1,249.00,'2019-12-10 20:30:20'),(8,2,5,'sofa_5',2000.00,9,2,3640.00,'2019-12-10 20:30:20'),(9,2,6,'sofa_6',700.00,14,2,1204.00,'2019-12-10 20:30:20'),(10,2,7,'sofa_7',50000.00,5,1,47500.00,'2019-12-10 20:30:20'),(11,3,5,'sofa_5',3000.00,7,2,5580.00,'2019-12-10 20:33:56'),(12,3,6,'sofa_6',1320.00,10,1,1188.00,'2019-12-10 20:33:56'),(13,3,7,'sofa_7',4561.00,4,3,13135.68,'2019-12-10 20:33:56'),(14,3,8,'sofa_8',416.00,3,5,2017.60,'2019-12-10 20:33:56'),(15,3,9,'sofa_9',8099.00,19,3,19680.57,'2019-12-10 20:33:56'),(16,4,4,'sofa_4',2000.00,12,2,3520.00,'2019-12-10 20:38:12'),(17,4,5,'sofa_5',3120.00,0,2,6240.00,'2019-12-10 20:38:12'),(18,4,6,'sofa_6',4449.00,14,1,3826.14,'2019-12-10 20:38:12'),(19,4,7,'sofa_7',999.00,10,5,4495.50,'2019-12-10 20:38:12'),(20,4,8,'sofa_8',8999.00,10,2,16198.20,'2019-12-10 20:38:12'),(21,5,1,'sofa_1',1000.00,0,2,2000.00,'2019-12-10 21:06:22'),(22,5,2,'sofa_2',2099.00,2,2,4114.04,'2019-12-10 21:08:45'),(23,5,3,'sofa_3',599.00,16,8,4025.28,'2019-12-10 21:08:45'),(24,5,4,'sofa_4',80999.00,4,2,155518.08,'2019-12-10 21:08:45'),(25,5,5,'sofa_5',6999.00,9,3,19107.27,'2019-12-10 21:08:45'),(26,6,7,'sofa_7',199.00,0,2,398.00,'2019-12-10 21:18:42'),(27,6,8,'sofa_8',999.00,18,10,8191.80,'2019-12-10 21:18:42'),(28,6,9,'sofa_9',1399.00,11,2,2490.22,'2019-12-10 21:18:42'),(29,6,10,'sofa_10',5087.00,7,5,23654.55,'2019-12-10 21:18:42'),(30,6,3,'sofa_3',5670.00,3,5,27499.50,'2019-12-10 21:18:42'),(31,7,8,'sofa_8',999.00,11,4,3556.44,'2019-12-10 21:24:01'),(32,7,9,'sofa_9',1399.00,8,2,2574.16,'2019-12-10 21:24:01'),(33,7,10,'sofa_10',5499.00,9,4,20016.36,'2019-12-10 21:24:01'),(34,7,1,'sofa_1',399.00,0,2,798.00,'2019-12-10 21:24:01'),(35,7,3,'sofa_3',500.00,0,5,2500.00,'2019-12-10 21:24:01'),(36,8,5,'sofa_5',500.00,0,5,2500.00,'2019-12-10 21:24:01'),(37,8,3,'sofa_3',29990.00,2,4,117560.80,'2019-12-10 21:24:55'),(38,8,4,'sofa_4',4450.00,10,2,8010.00,'2019-12-10 21:27:09'),(39,8,6,'sofa_6',5087.00,9,2,9258.34,'2019-12-10 21:27:09'),(40,8,7,'sofa_7',9049.00,13,3,23617.89,'2019-12-10 21:27:09'),(41,9,1,'sofa_1',499.00,12,2,878.24,'2019-12-11 15:56:22'),(42,9,2,'sofa_2',699.00,5,2,1328.10,'2019-12-11 16:05:07'),(43,9,4,'sofa_4',13000.00,0,2,26000.00,'2019-12-11 16:05:07'),(44,9,7,'sofa_7',9990.00,6,5,46953.00,'2019-12-11 16:05:07'),(45,9,5,'sofa_5',399.00,2,3,1173.06,'2019-12-11 16:05:07'),(56,11,6,'sofa_1',2030.00,3,2,3938.20,'2019-12-11 16:35:29'),(57,11,7,'sofa_7',4000.00,12,1,3520.00,'2019-12-11 16:35:29'),(58,11,8,'sofa_8',3399.00,2,3,9993.06,'2019-12-11 16:35:29'),(59,11,9,'sofa_9',3399.00,15,19,54893.85,'2019-12-11 16:35:29'),(60,11,10,'sofa_10',2212.00,2,1,2167.76,'2019-12-11 16:35:29'),(61,12,3,'sofa_3',2991.00,3,2,5802.54,'2019-12-11 16:38:19'),(62,12,2,'sofa_2',4000.00,2,2,7840.00,'2019-12-11 16:38:19'),(63,12,4,'sofa_4',4000.00,4,2,7680.00,'2019-12-11 16:38:19'),(64,12,5,'sofa_5',4000.00,5,2,7600.00,'2019-12-11 16:38:19'),(65,12,8,'sofa_8',4000.00,8,2,7360.00,'2019-12-11 16:38:19'),(66,13,7,'sofa_7',2991.00,4,2,5742.72,'2019-12-11 16:41:23'),(67,13,8,'sofa_8',2991.00,5,2,5682.90,'2019-12-11 16:41:23'),(68,13,9,'sofa_9',2991.00,8,2,5503.44,'2019-12-11 16:41:23'),(69,13,10,'sofa_10',2991.00,10,2,5383.80,'2019-12-11 16:41:23'),(70,13,1,'sofa_1',2991.00,15,2,5084.70,'2019-12-11 16:41:23'),(71,14,1,'sofa_1',5999.00,2,1,5879.02,'2019-12-11 16:48:10'),(72,14,2,'sofa_2',5999.00,4,1,5759.04,'2019-12-11 16:48:10'),(73,14,3,'sofa_3',5999.00,6,1,5639.06,'2019-12-11 16:48:10'),(74,14,4,'sofa_4',5999.00,16,1,5039.16,'2019-12-11 16:48:10'),(75,14,5,'sofa_5',5999.00,9,4,21836.36,'2019-12-11 16:48:10'),(76,15,4,'sofa_4',2999.00,3,1,2909.03,'2019-12-11 16:51:58'),(77,15,5,'sofa_5',2999.00,4,2,5758.08,'2019-12-11 16:51:58'),(78,15,6,'sofa_6',2999.00,5,1,2849.05,'2019-12-11 16:51:58'),(79,15,7,'sofa_7',2999.00,6,1,2819.06,'2019-12-11 16:51:58'),(80,15,8,'sofa_8',2999.00,12,4,10556.48,'2019-12-11 16:51:58'),(81,16,9,'sofa_9',10000.00,10,1,9000.00,'2019-12-11 16:52:46'),(82,16,10,'sofa_10',10000.00,12,1,8800.00,'2019-12-11 16:55:49'),(83,16,1,'sofa_1',10000.00,14,1,8600.00,'2019-12-11 16:55:49'),(84,16,2,'sofa_2',10000.00,18,1,8200.00,'2019-12-11 16:55:49'),(85,16,3,'sofa_3',10000.00,7,1,9300.00,'2019-12-11 16:55:49'),(86,17,4,'sofa_4',90010.00,7,1,83709.30,'2019-12-11 16:57:53'),(87,17,5,'sofa_5',90010.00,2,1,88209.80,'2019-12-11 16:57:53'),(88,17,7,'sofa_7',90010.00,6,1,84609.40,'2019-12-11 16:57:53'),(89,17,9,'sofa_9',90010.00,12,1,79208.80,'2019-12-11 16:57:53'),(90,17,1,'sofa_1',90010.00,1,3,267329.69,'2019-12-11 16:57:53'),(91,17,3,'sofa_3',4047.00,2,1,3966.06,'2019-12-11 16:59:44'),(92,17,4,'sofa_4',4047.00,5,1,3844.65,'2019-12-11 16:59:44'),(93,17,5,'sofa_5',4047.00,6,4,15216.72,'2019-12-11 16:59:44'),(94,17,8,'sofa_8',4047.00,12,2,7122.72,'2019-12-11 16:59:44'),(95,17,10,'sofa_10',4047.00,15,9,30959.55,'2019-12-11 16:59:44'),(96,18,8,'sofa_8',2100.00,14,2,3612.00,'2019-12-11 17:01:55'),(97,18,9,'sofa_9',2100.00,3,2,4074.00,'2019-12-11 17:01:55'),(98,18,10,'sofa_10',2100.00,3,7,14259.00,'2019-12-11 17:01:55'),(99,18,2,'sofa_2',2100.00,18,7,12054.00,'2019-12-11 17:01:55'),(100,18,4,'sofa_4',2100.00,9,2,3822.00,'2019-12-11 17:01:55'),(101,19,2,'sofa_2',7209.00,1,7,49958.37,'2019-12-11 17:03:36'),(102,19,3,'sofa_3',7209.00,12,1,6343.92,'2019-12-11 17:03:36'),(103,19,4,'sofa_4',7209.00,8,2,13264.56,'2019-12-11 17:03:36'),(104,19,5,'sofa_5',7209.00,17,4,23933.88,'2019-12-11 17:03:36'),(105,19,6,'sofa_6',7209.00,3,3,20978.19,'2019-12-11 17:03:36'),(106,20,4,'sofa_4',3210.00,1,4,12711.60,'2019-12-11 17:05:23'),(107,20,3,'sofa_3',3210.00,2,4,12583.20,'2019-12-11 17:05:23'),(108,20,5,'sofa_5',3210.00,5,1,3049.50,'2019-12-11 17:05:23'),(109,20,7,'sofa_7',3210.00,3,3,9341.10,'2019-12-11 17:05:23'),(110,20,9,'sofa_9',3210.00,3,1,3113.70,'2019-12-11 17:05:23'),(111,21,1,'sofa_1',4645.00,3,1,4505.65,'2019-12-11 17:07:07'),(112,21,4,'sofa_4',4645.00,4,1,4459.20,'2019-12-11 17:07:07'),(113,21,6,'sofa_6',4645.00,6,1,4366.30,'2019-12-11 17:07:07'),(114,21,2,'sofa_2',4645.00,10,2,8361.00,'2019-12-11 17:07:07'),(115,21,9,'sofa_9',4645.00,12,2,8175.20,'2019-12-11 17:07:07'),(116,22,10,'sofa_10',5000.00,12,2,8800.00,'2019-12-11 17:14:15'),(117,22,1,'sofa_1',5000.00,1,2,9900.00,'2019-12-11 17:14:15'),(118,22,2,'sofa_2',5000.00,2,2,9800.00,'2019-12-11 17:14:15'),(119,22,3,'sofa_3',5000.00,3,2,9700.00,'2019-12-11 17:14:15'),(120,22,4,'sofa_4',5000.00,34,2,6600.00,'2019-12-11 17:14:15'),(121,23,1,'sofa_1',400.00,5,2,760.00,'2019-12-11 17:18:10'),(122,23,2,'sofa_2',400.00,6,2,752.00,'2019-12-11 17:18:10'),(123,23,3,'sofa_3',400.00,6,3,1128.00,'2019-12-11 17:18:10'),(124,23,4,'sofa_4',400.00,4,3,1152.00,'2019-12-11 17:18:10'),(125,23,5,'sofa_5',400.00,5,3,1140.00,'2019-12-11 17:18:10'),(126,24,5,'sofa_5',700.00,4,3,2016.00,'2019-12-11 17:19:39'),(127,24,6,'sofa_6',700.00,6,3,1974.00,'2019-12-11 17:19:39'),(128,24,7,'sofa_7',700.00,6,7,4606.00,'2019-12-11 17:19:39'),(129,24,8,'sofa_8',700.00,8,1,644.00,'2019-12-11 17:19:39'),(130,24,9,'sofa_9',700.00,3,1,679.00,'2019-12-11 17:19:39'),(131,25,6,'sofa_6',399.00,3,1,387.03,'2019-12-11 17:22:22'),(132,25,7,'sofa_7',399.00,10,1,359.10,'2019-12-11 17:22:22'),(133,25,8,'sofa_8',499.00,5,5,2370.25,'2019-12-11 17:22:22'),(134,25,9,'sofa_9',499.00,12,1,439.12,'2019-12-11 17:22:22'),(135,25,10,'sofa_10',499.00,0,1,499.00,'2019-12-11 17:22:22'),(136,26,9,'sofa_9',7990.00,2,5,39151.00,'2019-12-11 17:24:36'),(137,26,3,'sofa_3',7990.00,3,5,38751.50,'2019-12-11 17:24:36'),(138,26,5,'sofa_5',7990.00,3,1,7750.30,'2019-12-11 17:24:36'),(139,26,6,'sofa_6',7990.00,6,4,30042.40,'2019-12-11 17:24:36'),(140,26,7,'sofa_7',7990.00,2,3,23490.60,'2019-12-11 17:24:36'),(141,27,8,'sofa_8',5467.00,2,3,16072.98,'2019-12-11 17:24:36'),(142,27,9,'sofa_9',5467.00,4,3,15744.96,'2019-12-11 17:24:54'),(143,27,1,'sofa_1',5467.00,1,3,16236.99,'2019-12-11 17:25:40'),(144,27,2,'sofa_2',5467.00,2,3,16072.98,'2019-12-11 17:25:40'),(145,27,3,'sofa_3',5467.00,3,1,5302.99,'2019-12-11 17:25:40'),(146,28,5,'sofa_5',100.00,2,3,294.00,'2019-12-11 17:30:27'),(147,28,6,'sofa_6',100.00,5,5,475.00,'2019-12-11 17:30:27'),(148,28,7,'sofa_7',100.00,1,2,198.00,'2019-12-11 17:30:27'),(149,28,8,'sofa_8',100.00,11,2,178.00,'2019-12-11 17:30:27'),(150,28,9,'sofa_9',100.00,3,2,194.00,'2019-12-11 17:30:27'),(151,29,1,'sofa_1',300.00,1,2,594.00,'2019-12-11 17:31:38'),(152,29,2,'sofa_2',300.00,2,2,588.00,'2019-12-11 17:31:38'),(153,29,3,'sofa_3',300.00,3,2,582.00,'2019-12-11 17:31:38'),(154,29,4,'sofa_4',300.00,4,2,576.00,'2019-12-11 17:31:38'),(155,29,5,'sofa_5',300.00,5,2,570.00,'2019-12-11 17:31:38'),(156,30,4,'sofa_4',5099.00,4,2,9790.08,'2019-12-11 17:33:12'),(157,30,5,'sofa_5',5099.00,9,2,9280.18,'2019-12-11 17:33:12'),(158,30,6,'sofa_6',5099.00,7,2,9484.14,'2019-12-11 17:33:12'),(159,30,7,'sofa_7',5099.00,19,3,12390.57,'2019-12-11 17:33:12'),(160,30,8,'sofa_8',5099.00,1,3,15144.03,'2019-12-11 17:33:12'),(161,31,3,'sofa_3',5099.00,3,3,14838.09,'2019-12-11 17:34:22'),(162,31,4,'sofa_4',5099.00,4,3,14685.12,'2019-12-11 17:34:22'),(163,31,5,'sofa_5',5099.00,5,3,14532.15,'2019-12-11 17:34:22'),(164,31,6,'sofa_6',5099.00,6,3,14379.18,'2019-12-11 17:34:22'),(165,31,7,'sofa_7',5099.00,7,3,14226.21,'2019-12-11 17:34:22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `clients_sales`
--

/*!50001 DROP VIEW IF EXISTS `clients_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clients_sales` AS select `orders`.`order_id` AS `order_id`,`clients`.`client_name` AS `client_name`,`orders`.`order_item` AS `order_item`,`orders`.`selling_price` AS `selling_price`,`orders`.`discount` AS `discount`,`orders`.`quantity` AS `quantity`,`orders`.`order_amount` AS `order_amount`,`customers`.`cust_name` AS `cust_name`,`orders`.`order_date` AS `order_date` from ((`orders` join `clients` on((`orders`.`client_id` = `clients`.`client_id`))) join `customers` on((`orders`.`cust_id` = `customers`.`cust_id`))) order by `orders`.`order_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customers_purchase`
--

/*!50001 DROP VIEW IF EXISTS `customers_purchase`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customers_purchase` AS select `orders`.`order_id` AS `order_id`,`customers`.`cust_name` AS `cust_name`,`clients`.`client_name` AS `client_name`,`orders`.`order_item` AS `order_item`,`orders`.`order_amount` AS `order_amount`,`orders`.`order_date` AS `order_date`,`clients`.`client_GST_no` AS `client_GST_no` from ((`orders` join `clients` on((`orders`.`client_id` = `clients`.`client_id`))) join `customers` on((`orders`.`cust_id` = `customers`.`cust_id`))) order by `orders`.`order_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11 17:46:30
