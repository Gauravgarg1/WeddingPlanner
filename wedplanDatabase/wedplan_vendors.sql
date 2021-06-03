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
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `category` varchar(40) DEFAULT NULL,
  `vendor_name` varchar(40) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `Vendor_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES ('Venue','Jagat Resort',200000,1),('Venue','Samson Resort',300000,2),('Venue','Heklis Resort',400000,3),('Venue','Myamani Resort',500000,4),('Venue','Chhoolak Resort',230000,5),('Venue','Qasaka Resort',240000,6),('Venue','Minaja Resort',350000,7),('Venue','Lapii Resort',280000,8),('Venue','Pitaara Resort',390000,9),('Venue','Milara Resort',700000,10),('Venue','Qarety Resort',800000,11),('Venue','Zinkli Resort',330000,12),('Venue','JZ Resort',430000,13),('Venue','AZ Resort',450000,14),('Venue','Zues Resort',390000,15),('Venue','Kalimas Resort',260000,16),('Venue','Yun Resort',670000,17),('Venue','Daas Resort',330000,18),('Venue','Ferns Resort',260000,19),('Photo','Gulami Photos',70000,20),('Photo','Jistrazi Photos',200000,21),('Photo','Mistim Photos',130000,22),('Photo','Yaanis Photos',80000,23),('Photo','Jiglus Photos',80000,24),('Photo','Phoonkil Photos',95000,25),('Photo','zara Photos',130000,26),('Photo','Pliksa Photos',230000,27),('Photo','Cout Photos',330000,28),('Photo','Pq Photos',250000,29),('Photo','Tiara Photos',170000,30),('Photo','ZK Photos',760000,31),('Photo','QITA Photos',86000,32),('Photo','ZPP Photos',120000,33),('Photo','Liona Photos',160000,34),('Photo','Nakul Photos',210000,35),('Photo','Kastra Photos',95000,36),('Photo','Art Photos',70000,37),('Photo','Sara Photos',180000,38),('Photo','EYEON Photos',85000,39),('Jewel','Angrez Jewellery',200000,40),('Jewel','Shaadi Jewellery',270000,41),('Jewel','Kiara Jewellery',240000,42),('Jewel','Lapa Jewellery',500000,43),('Jewel','Francis Jewellery',540000,44),('Jewel','Tradii Jewellery',300000,45),('Jewel','Shingaar Jewellery',490000,46),('Jewel','Kalyan Jewellery',320000,47),('Jewel','Mehraz Jewellery',360000,48),('Jewel','Sikanta Jewellery',330000,49),('Jewel','Duolik Jewellery',490000,50),('Jewel','Manya Jewellery',370000,51),('Jewel','Preety Jewellery',430000,52),('Jewel','Sona Jewellery',330000,53),('Jewel','Deepika Jewellery',386000,54),('Jewel','Vivah Jewellery',270000,55),('Jewel','Laitri Jewellery',230000,56),('Jewel','MM Jewellery',240000,57),('Jewel','AK Jewellery',400000,58),('Decor','Vista Decorators',90000,59),('Decor','Glen Decorators',900000,60),('Decor','Syuzi Decorators',190000,61),('Decor','Kailash Decorators',390000,62),('Decor','Johni Decorators',290000,63),('Decor','Hyara Decorators',230000,64),('Decor','Lakmus Decorators',130000,65),('Decor','Great Decorators',95000,66),('Decor','Senorita Decorators',110000,67),('Decor','Dream Decorators',240000,68),('Decor','Procolor Decorators',140000,69),('Decor','Gudastsa Decorators',300000,70),('Decor','Phishi Decorators',400000,71),('Decor','Golden Decorators',500000,72),('Wear','Shaadi Wears',100000,73),('Wear','Khandani Wears',200000,74),('Wear','Sajo Wears',300000,75),('Wear','Shehnaz Wears',240000,76),('Wear','Malhotra Wears',260000,77),('Wear','Manyawar Wears',280000,78),('Wear','ZZ Wears',160000,79),('Wear','Poli Wears',130000,80),('Wear','Traksh Wears',180000,81),('Wear','Dissi Wears',110000,82),('Wear','Kyti Wears',120000,83),('Wear','MIlan Wears',400000,84),('Wear','PQT Wears',440000,85),('Wear','LAPO Wears',500000,86),('Catering','Shaadi Catering',300000,87),('Catering','Falfa Catering',340000,88),('Catering','Taster Catering',400000,89),('Catering','KH Catering',440000,90),('Catering','Kanozia Catering',500000,91),('Catering','Rajput Catering',560000,92),('Catering','Palia Catering',600000,93),('Catering','Paolo Catering',450000,94),('Catering','Singara Catering',430000,95),('Catering','WI Catering',320000,96),('Catering','Zilka Catering',360000,97),('Catering','Desi Catering',380000,98),('Catering','Shush Catering',485000,99),('Catering','Westriy Catering',440000,100),('Catering','Sweetinz Catering',520000,101),('Catering','Dhinzal Catering',510000,102),('Catering','Kulhandri Catering',610000,103);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
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
