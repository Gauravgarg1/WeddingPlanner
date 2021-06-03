CREATE DATABASE  IF NOT EXISTS `wedplan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wedplan`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: wedplan
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
-- Table structure for table `finalizedvendors`
--

DROP TABLE IF EXISTS `finalizedvendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finalizedvendors` (
  `Client_ID` int(11) DEFAULT NULL,
  `Category` varchar(40) DEFAULT NULL,
  `Vendor_Name` varchar(40) DEFAULT NULL,
  `Fee` int(11) DEFAULT NULL,
  `Vendor_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finalizedvendors`
--

LOCK TABLES `finalizedvendors` WRITE;
/*!40000 ALTER TABLE `finalizedvendors` DISABLE KEYS */;
INSERT INTO `finalizedvendors` VALUES (2,'Venue','Qasaka Resort',240000,6),(2,'Photo','ZPP Photos',120000,33),(2,'Jewel','Sona Jewellery',330000,53),(2,'Decor','Senorita Decorators',110000,67),(2,'Wear','ZZ Wears',160000,79),(2,'Catering','Shush Catering',485000,99),(7,'Venue','Kalimas Resort',260000,16),(7,'Photo','QITA Photos',86000,32),(7,'Jewel','Kalyan Jewellery',320000,47),(7,'Decor','Vista Decorators',90000,59),(7,'Wear','Dissi Wears',110000,82),(7,'Catering','Paolo Catering',450000,94),(16,'Venue','Qasaka Resort',240000,6),(16,'Photo','EYEON Photos',85000,39),(16,'Jewel','Sona Jewellery',330000,53),(16,'Decor','Senorita Decorators',110000,67),(16,'Wear','Kyti Wears',120000,83),(16,'Catering','Paolo Catering',450000,94),(18,'Venue','Zinkli Resort',330000,12),(18,'Photo','zara Photos',130000,26),(18,'Jewel','AK Jewellery',400000,58),(18,'Decor','Procolor Decorators',140000,69),(18,'Wear','ZZ Wears',160000,79),(18,'Catering','Rajput Catering',560000,92);
/*!40000 ALTER TABLE `finalizedvendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 15:44:43
