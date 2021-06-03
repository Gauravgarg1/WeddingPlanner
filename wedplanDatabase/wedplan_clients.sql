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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `Client_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Client_Name` varchar(40) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `Wed_Date` varchar(10) DEFAULT NULL,
  `Contact_Number` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Client_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Ayush',12000000,'23/11/1111','9915854369','ayushgoyal'),(2,'Ayush',2000000,'23/11/2020','95','cc'),(3,'ayush',23000000,'23/56/4444','33','3'),(4,'a',232333333,'33','3','3'),(5,'Ayush Goyal',1800000,'23/11/2020','9915854369','ayushgoyal785@gmail.com'),(6,'Ayush',1800000,'23/11/2020','9915854369','hello@hotmail.com'),(7,'Parveen Goyal',1820000,'10/04/2020','9417540151','goyaltahlian@gmail.com'),(8,'aaa',1820000,'23/04/2020','6','6'),(9,'aaa',80000000,'23/11/2222','9922','ss'),(10,'ayush',9915711,'23/11/2020','33','cc'),(11,'ayush',2000000,'23/12/2020','',''),(12,'Aysuh',3000000,'24/12/2020','9915854369','ayushgoyal1318@gamilc.om'),(13,'Aysuh',3000000,'25/12/2020','9915854369','ayushgoyal1318@gamilc.om'),(14,'Ayush',1600000,'21/09/2020','75646a','ayush@gmail.com'),(15,'Tushar Tayal',2000000,'21-11-2025','9915854369','tushu@tushy'),(16,'Tushr',2100000,'27/11/2020','9460234345','aa@gm.com'),(17,'Ayush',2100000,'25/11/2020','44','c'),(18,'Gaurav Garg',2400000,'14/02/2021','9915854369','ss@g.com');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
