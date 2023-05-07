-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: parser
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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `factura_id` int NOT NULL,
  `producto_id` varchar(20) NOT NULL,
  `antiguedad` int NOT NULL,
  `cantidad` int NOT NULL,
  `valor_neto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `factura_id` (`factura_id`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'CONE019',300,5,24.74),(2,1,'TRFO004',900,1,54.89),(3,2,'HOBE016',1,0,1199.89),(4,2,'DOMI022',600,1,39.99),(5,2,'RORE0201',200,10,139.99),(6,2,'CONE019',305,0,199.59),(7,3,'ART001 2',0,4,32.99),(8,3,'ART002 1',0,2,15.99),(9,3,'ART003 1',0,3,49.59),(10,4,'ART002 1',0,2,15.99),(11,4,'ART003 2',0,4,29.59),(12,5,'ART001 5',0,5,45.59),(13,5,'ART002 3',0,2,15.99),(14,6,'ART001 2',0,3,32.99),(15,6,'ART003 1',0,1,49.59),(16,7,'ART001 3',0,3,45.59),(17,7,'ART002 2',0,1,15.99),(18,7,'ART003 1',0,2,29.59),(19,8,'ART001 2',0,3,32.99),(20,8,'ART004 1',0,1,29.99),(21,9,'ART003 3',0,2,29.59),(22,9,'ART004 1',0,2,19.99),(23,10,'ART001 3',0,4,45.59),(24,10,'ART002 2',0,2,15.99),(25,10,'ART005 1',0,1,59.99),(26,11,'ART001 2',0,2,45.59),(27,11,'ART003 3',0,2,29.59),(28,12,'ART006 1',0,2,39.99),(29,12,'ART007 2',0,1,25.99);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 15:04:31