-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bookmyshow
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `booking_status`
--

DROP TABLE IF EXISTS `booking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_status` (
  `bookid` int NOT NULL,
  `bookstatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status`
--

LOCK TABLES `booking_status` WRITE;
/*!40000 ALTER TABLE `booking_status` DISABLE KEYS */;
INSERT INTO `booking_status` VALUES (0,'cancelled'),(1,'booked');
/*!40000 ALTER TABLE `booking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_gen`
--

DROP TABLE IF EXISTS `movie_gen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_gen` (
  `gen_id` int NOT NULL,
  `gen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_gen`
--

LOCK TABLES `movie_gen` WRITE;
/*!40000 ALTER TABLE `movie_gen` DISABLE KEYS */;
INSERT INTO `movie_gen` VALUES (1,'action'),(2,'feelgood'),(3,'drama'),(4,'horror'),(5,'romance'),(6,'thriller');
/*!40000 ALTER TABLE `movie_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_language`
--

DROP TABLE IF EXISTS `movie_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_language` (
  `lang_id` int NOT NULL,
  `lang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_language`
--

LOCK TABLES `movie_language` WRITE;
/*!40000 ALTER TABLE `movie_language` DISABLE KEYS */;
INSERT INTO `movie_language` VALUES (1,'malayalam'),(2,'hindi'),(3,'telugu'),(4,'english'),(5,'tamil');
/*!40000 ALTER TABLE `movie_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_list`
--

DROP TABLE IF EXISTS `movie_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_list` (
  `movie_id` varchar(45) NOT NULL,
  `screen_num` int DEFAULT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `language` int DEFAULT NULL,
  `genere` int DEFAULT NULL,
  `movie_duration` varchar(45) DEFAULT NULL,
  `show_time` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `totalnumofseats` int DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_list`
--

LOCK TABLES `movie_list` WRITE;
/*!40000 ALTER TABLE `movie_list` DISABLE KEYS */;
INSERT INTO `movie_list` VALUES ('M01',1,'Minnal Murali',1,3,'3hrs',2,150,195),('M02',2,'Home',1,2,'2.5hrs',3,180,200),('M03',3,'Sunny',1,2,'2hrs',3,180,198),('M04',4,'Shersha',2,1,'3hrs',2,150,200),('M05',5,'Cindrella',4,3,'2hrs',1,100,150);
/*!40000 ALTER TABLE `movie_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `movie_id` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `reserv_id` int NOT NULL,
  `num_of_seats` int DEFAULT NULL,
  `movie_date` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`reserv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES ('M01',1,1,5,'2021-10-16',1),('M02',1,2,4,'2021-10-08',0),('M03',2,3,2,'2021-10-05',1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_movie`
--

DROP TABLE IF EXISTS `show_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_movie` (
  `show_id` int NOT NULL,
  `show_tim` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_movie`
--

LOCK TABLES `show_movie` WRITE;
/*!40000 ALTER TABLE `show_movie` DISABLE KEYS */;
INSERT INTO `show_movie` VALUES (1,'morning(10 am)'),(2,'noon(12 pm)'),(3,'evening(4 pm)'),(4,'night(9 pm)');
/*!40000 ALTER TABLE `show_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `userid` int NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `mobilenum` int DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'Sreelakshmi',345),(2,'Anju',678),(3,'Manjima',989),(4,'Amritha',568);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 20:32:22
