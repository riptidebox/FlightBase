CREATE DATABASE  IF NOT EXISTS `baseflights` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `baseflights`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: baseflights
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cashiers`
--

DROP TABLE IF EXISTS `cashiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashiers` (
  `id_cashier` int NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cashier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashiers`
--

LOCK TABLES `cashiers` WRITE;
/*!40000 ALTER TABLE `cashiers` DISABLE KEYS */;
INSERT INTO `cashiers` VALUES (1,'Кассир1','12345'),(2,'Кассир2','12345'),(3,'Кассир3','12345'),(4,'Кассир4','12345'),(5,'Кассир5','12345');
/*!40000 ALTER TABLE `cashiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id_city` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Уфа'),(2,'Москва'),(3,'Пермь'),(4,'Киров'),(5,'Санкт-Петербург'),(6,'Саратов'),(7,'Челябинск'),(8,'Сочи'),(9,'Екатеринбург'),(10,'Омск');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `id_flight` int NOT NULL,
  `number` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `places` int DEFAULT NULL,
  PRIMARY KEY (`id_flight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,1000,6000,25),(2,1001,2900,30),(3,1002,1921,30),(4,1003,871,26),(5,1004,2112,28),(6,1005,8820,28),(7,1006,9100,20),(8,1007,1899,30),(9,1008,2603,32),(10,1009,1222,40),(11,1010,1213,30),(12,1011,2132,19),(13,1012,1093,29),(14,1013,1871,19),(15,1014,2863,28);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightsend`
--

DROP TABLE IF EXISTS `flightsend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flightsend` (
  `id_flight` int NOT NULL,
  `day_week` int DEFAULT NULL,
  `id_city` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id_flight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightsend`
--

LOCK TABLES `flightsend` WRITE;
/*!40000 ALTER TABLE `flightsend` DISABLE KEYS */;
INSERT INTO `flightsend` VALUES (1,1,5,'00:00:01'),(3,1,2,'00:00:01'),(9,1,1,'00:00:01'),(10,1,2,'00:00:02'),(11,1,3,'00:00:03'),(12,1,4,'00:00:04'),(13,1,5,'00:00:04'),(14,1,12,'00:00:03'),(15,3,2,'00:00:04'),(16,1,4,NULL),(17,7,5,'00:00:06'),(18,NULL,5,'00:00:06'),(19,11,6,'00:00:06'),(20,22,4,'00:00:04');
/*!40000 ALTER TABLE `flightsend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightsstart`
--

DROP TABLE IF EXISTS `flightsstart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flightsstart` (
  `id_flight` int NOT NULL,
  `id_city` int DEFAULT NULL,
  `day_week` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id_flight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightsstart`
--

LOCK TABLES `flightsstart` WRITE;
/*!40000 ALTER TABLE `flightsstart` DISABLE KEYS */;
INSERT INTO `flightsstart` VALUES (1,1,26,'00:00:01'),(8,1,2,'00:00:01'),(9,1,2,'00:00:02'),(10,1,1,'00:00:03'),(11,1,3,'00:00:04'),(12,3,15,'00:00:02'),(13,9,3,'00:00:04'),(14,11,2,'00:00:04'),(15,2,3,'00:00:05');
/*!40000 ALTER TABLE `flightsstart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `serial_passport` varchar(45) DEFAULT NULL,
  `number_passport` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `index_address` varchar(45) DEFAULT NULL,
  `region_address` varchar(45) DEFAULT NULL,
  `city_address` varchar(45) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `number_home_address` varchar(45) DEFAULT NULL,
  `number_appartment_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'log1','pass','1234','6865','Bладимир','Александрович','Сергеев','459965','Советский','Киров','Ленина','12','21'),(2,'admin','admin','8017','58585256',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'user','1234','5756','54544',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'tamim','1234','5445','6565',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'root','root','1321','454545',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersflight`
--

DROP TABLE IF EXISTS `usersflight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersflight` (
  `id` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_flight` int DEFAULT NULL,
  `id_cashier` int DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `paid` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersflight`
--

LOCK TABLES `usersflight` WRITE;
/*!40000 ALTER TABLE `usersflight` DISABLE KEYS */;
INSERT INTO `usersflight` VALUES (1,1,9,1,'2022-11-25 00:00:00','2022-11-28 00:00:00',_binary ''),(2,1,9,1,NULL,NULL,NULL),(3,1,9,2,NULL,NULL,NULL),(4,1,12,2,NULL,NULL,NULL),(5,4,12,2,NULL,NULL,NULL),(6,4,12,3,NULL,NULL,NULL),(7,4,12,4,NULL,NULL,NULL),(8,4,4,4,NULL,NULL,NULL),(9,2,4,4,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usersflight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-25 22:57:43
