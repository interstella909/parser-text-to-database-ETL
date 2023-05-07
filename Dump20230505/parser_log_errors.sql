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
-- Table structure for table `log_errors`
--

DROP TABLE IF EXISTS `log_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_errors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `error` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_errors`
--

LOCK TABLES `log_errors` WRITE;
/*!40000 ALTER TABLE `log_errors` DISABLE KEYS */;
INSERT INTO `log_errors` VALUES (1,'2023-05-05 20:31:30','Error en sumarizado para factura INV02359 R. Total items: 6 vs 2. Total neto: 79.63 vs 81.7.','T 2      8 1 . 7 3         \n'),(2,'2023-05-05 20:34:17','Error en sumarizado para factura INV02359 R. Total items: 6 vs 2. Total neto: 79.63 vs 81.7.','T 2      8 1 . 7 3         \n'),(3,'2023-05-05 20:35:25','Error en sumarizado para factura INV02359 R. Total items: 6 vs 2. Total neto: 79.63 vs 81.7.','T 2      8 1 . 7 3         \n'),(4,'2023-05-05 20:37:11','Error en sumarizado para factura INV02359 R. Total items: 6 vs 2. Total neto: 79.63 vs 81.7.','T 2      8 1 . 7 3         \n'),(5,'2023-05-05 20:40:34','Error en sumarizado para factura INV02359 R. Total items: 6 vs 2. Total neto: 79.63 vs 81.73.','T 2      8 1 . 7 3         \n'),(6,'2023-05-05 20:40:34','Error en sumarizado para factura INV02629 X. Total items: 11 vs 4. Total neto: 1579.46 vs 1579.46.','T  4    1579.46'),(7,'2023-05-05 20:42:19','Error en sumarizado para factura INV02359 R. Total items: 6 vs 2. Total neto: 79.63 vs 81.73.','T 2      8 1 . 7 3         \n'),(8,'2023-05-05 20:42:19','Error en sumarizado para factura INV02629 X. Total items: 11 vs 4. Total neto: 1579.46 vs 1579.46.','T  4    1579.46'),(9,'2023-05-05 20:42:29','Error en sumarizado para factura INV02359. Total items: 6 vs 2. Total neto: 79.63 vs 81.73.','T 2      8 1 . 7 3         \n'),(10,'2023-05-05 20:42:29','Error en sumarizado para factura INV02629. Total items: 11 vs 4. Total neto: 1579.46 vs 1579.46.','T  4    1579.46'),(11,'2023-05-05 20:45:58','Error en sumarizado para factura INV02359. Total items: 6 vs 2. Total neto: 79.63 vs 81.73.','T 2      8 1 . 7 3         \n'),(12,'2023-05-05 20:45:58','Error en sumarizado para factura INV02629. Total items: 11 vs 4. Total neto: 1579.46 vs 1579.46.','T  4    1579.46');
/*!40000 ALTER TABLE `log_errors` ENABLE KEYS */;
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
