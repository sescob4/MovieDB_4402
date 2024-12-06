-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: moviedb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `ActorID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Nationality` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ActorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Margot Robbie','Australian'),(2,'Ryan Gosling','Canadian'),(3,'Timothée Chalamet','American'),(4,'Zendaya','American'),(5,'Robert Pattinson','British'),(6,'Zoë Kravitz','American'),(7,'Keanu Reeves','Canadian'),(8,'Carrie-Anne Moss','Canadian'),(9,'Eddie Redmayne','British'),(10,'Katherine Waterston','American'),(11,'Ryan Reynolds','Canadian'),(12,'Hugh Jackman','Australian'),(13,'Sam Worthington','Australian'),(14,'Zoe Saldana','American'),(15,'Chris Evans','American'),(16,'Scarlett Johansson','American'),(17,'Kristen Bell','American'),(18,'Idina Menzel','American'),(19,'Stephanie Beatriz','American'),(20,'Jessica Darrow','American'),(21,'Chris Pratt','American'),(22,'Bryce Dallas Howard','American'),(23,'Jay Baruchel','Canadian'),(24,'America Ferrera','American'),(25,'Pierre Coffin','French'),(26,'Sandra Bullock','American'),(27,'Anya Taylor-Joy','British-American'),(28,'Louis C.K.','American'),(29,'Jenny Slate','American'),(30,'Tom Cruise','American'),(31,'Miles Teller','American'),(32,'Hayley Atwell','British'),(33,'Emily Blunt','British'),(34,'John Krasinski','American'),(35,'Ben Schwartz','American'),(36,'Jim Carrey','Canadian'),(37,'Anthony Ramos','American'),(38,'Dominique Fishback','American'),(39,'Tom Holland','British'),(40,'Mark Wahlberg','American'),(41,'Finn Wolfhard','Canadian'),(42,'Mckenna Grace','American'),(43,'Tom Hardy','British'),(44,'Woody Harrelson','American'),(45,'Jared Leto','American'),(46,'Adria Arjona','Colombian');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `CompanyID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `FoundedYear` int DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Warner Bros.',1923),(2,'The Walt Disney Company',1923),(3,'Universal Pictures',1912),(4,'Paramount Pictures',1912),(5,'Sony Pictures',1987);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earnings` (
  `EarningsID` int NOT NULL,
  `MovieID` int DEFAULT NULL,
  `BoxOfficeGross` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`EarningsID`),
  KEY `MovieID` (`MovieID`),
  CONSTRAINT `earnings_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings`
--

LOCK TABLES `earnings` WRITE;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
INSERT INTO `earnings` VALUES (1,1,1400000000.00),(2,2,850000000.00),(3,3,770000000.00),(4,4,427000000.00),(5,5,403000000.00),(6,6,600000000.00),(7,7,2300000000.00),(8,8,2798000000.00),(9,9,1280000000.00),(10,10,256000000.00),(11,11,1670000000.00),(12,12,494000000.00),(13,13,1159000000.00),(14,14,1360000000.00),(15,15,875000000.00),(16,16,1488000000.00),(17,17,573000000.00),(18,18,340000000.00),(19,19,569000000.00),(20,20,1100000000.00),(21,21,1910000000.00),(22,22,400000000.00),(23,23,160000000.00),(24,24,502000000.00),(25,25,167000000.00);
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieactors`
--

DROP TABLE IF EXISTS `movieactors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movieactors` (
  `MovieID` int NOT NULL,
  `ActorID` int NOT NULL,
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MovieID`,`ActorID`),
  KEY `ActorID` (`ActorID`),
  CONSTRAINT `movieactors_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`),
  CONSTRAINT `movieactors_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `actors` (`ActorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieactors`
--

LOCK TABLES `movieactors` WRITE;
/*!40000 ALTER TABLE `movieactors` DISABLE KEYS */;
INSERT INTO `movieactors` VALUES (1,1,'Barbie'),(1,2,'Ken'),(2,3,'Paul Atreides'),(2,4,'Chani'),(3,5,'Bruce Wayne / Batman'),(3,6,'Selina Kyle / Catwoman'),(4,7,'Neo'),(4,8,'Trinity'),(5,9,'Newt Scamander'),(5,10,'Tina Goldstein'),(6,11,'Deadpool'),(6,12,'Wolverine'),(7,13,'Jake Sully'),(7,14,'Neytiri'),(8,15,'Steve Rogers / Captain America'),(8,16,'Natasha Romanoff / Black Widow'),(9,17,'Anna (voice)'),(9,18,'Elsa (voice)'),(10,19,'Mirabel Madrigal (voice)'),(10,20,'Luisa Madrigal (voice)'),(11,21,'Owen Grady'),(11,22,'Claire Dearing'),(12,23,'Hiccup (voice)'),(12,24,'Astrid (voice)'),(13,25,'Kevin, Stuart, Bob (voices)'),(13,26,'Scarlet Overkill (voice)'),(14,21,'Mario (voice)'),(14,27,'Princess Peach (voice)'),(15,28,'Max (voice)'),(15,29,'Gidget (voice)'),(16,30,'Capt. Pete \'Maverick\' Mitchell'),(16,31,'Lt. Bradley \'Rooster\' Bradshaw'),(17,30,'Ethan Hunt'),(17,32,'Grace'),(18,33,'Evelyn Abbott'),(18,34,'Lee Abbott'),(19,35,'Sonic (voice)'),(19,36,'Dr. Robotnik'),(20,37,'Noah Diaz'),(20,38,'Elena Wallace'),(21,4,'MJ'),(21,39,'Peter Parker / Spider-Man'),(22,39,'Nathan Drake'),(22,40,'Victor \'Sully\' Sullivan'),(23,41,'Trevor'),(23,42,'Phoebe'),(24,43,'Eddie Brock / Venom'),(24,44,'Cletus Kasady / Carnage'),(25,45,'Dr. Michael Morbius'),(25,46,'Martine Bancroft');
/*!40000 ALTER TABLE `movieactors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `MovieID` int NOT NULL,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `AgeRating` varchar(10) DEFAULT NULL,
  `CompanyID` int DEFAULT NULL,
  `AverageScore` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`MovieID`),
  KEY `CompanyID` (`CompanyID`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Barbie','2023-07-21','Fantasy/Comedy',114,'PG-13',1,8.2),(2,'Dune: Part Two','2024-11-03','Sci-Fi/Adventure',155,'PG-13',1,8.5),(3,'The Batman','2022-03-04','Superhero/Action',176,'PG-13',1,8.3),(4,'The Matrix Resurrections','2021-12-22','Sci-Fi/Action',148,'R',1,7.9),(5,'Fantastic Beasts: The Secrets of Dumbledore','2022-04-06','Fantasy',142,'PG-13',1,7.9),(6,'Deadpool & Wolverine','2024-05-15','Superhero/Action',120,'R',2,8.2),(7,'Avatar: The Way of Water','2022-12-16','Sci-Fi/Adventure',192,'PG-13',2,8.6),(8,'Avengers: Endgame','2019-04-26','Superhero/Action',181,'PG-13',2,9.1),(9,'Frozen','2013-11-27','Animation/Family',102,'PG',2,8.4),(10,'Encanto','2021-11-24','Animation/Family',102,'PG',2,8.0),(11,'Jurassic World','2015-06-12','Sci-Fi/Adventure',124,'PG-13',3,8.1),(12,'How to Train Your Dragon','2010-03-26','Animation/Adventure',98,'PG',3,8.0),(13,'Minions','2015-07-10','Animation/Comedy',91,'PG',3,8.0),(14,'The Super Mario Bros. Movie','2023-04-07','Animation/Adventure',92,'PG',3,8.5),(15,'The Secret Life of Pets','2016-06-17','Animation/Comedy',87,'PG',3,8.0),(16,'Top Gun: Maverick','2022-05-27','Action/Drama',130,'PG-13',4,8.6),(17,'Mission: Impossible – Dead Reckoning Part One','2023-07-12','Action/Thriller',150,'PG-13',4,8.1),(18,'A Quiet Place','2018-04-06','Horror/Thriller',90,'PG-13',4,8.0),(19,'Sonic the Hedgehog 2','2022-04-08','Family/Adventure',122,'PG',4,8.0),(20,'Transformers: Rise of the Beasts','2023-06-09','Action/Sci-Fi',135,'PG-13',4,8.3),(21,'Spider-Man: No Way Home','2021-12-17','Superhero/Action',148,'PG-13',5,8.9),(22,'Uncharted','2022-02-18','Action/Adventure',116,'PG-13',5,7.9),(23,'Ghostbusters: Afterlife','2021-11-19','Comedy/Fantasy',124,'PG-13',5,7.8),(24,'Venom: Let There Be Carnage','2021-10-01','Superhero/Horror',97,'PG-13',5,8.1),(25,'Morbius','2022-03-31','Superhero/Horror',104,'PG-13',5,7.9);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` int NOT NULL,
  `MovieID` int DEFAULT NULL,
  `ReviewerName` varchar(255) DEFAULT NULL,
  `ReviewScore` decimal(3,1) DEFAULT NULL,
  `ReviewDate` date DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `MovieID` (`MovieID`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,'Alice Johnson',8.2,'2023-07-25'),(2,1,'Bob Smith',7.5,'2023-07-30'),(3,1,'Cathy Brown',9.0,'2023-08-01'),(4,1,'David Lee',8.0,'2023-08-05'),(5,2,'Eve Adams',8.5,'2024-11-10'),(6,2,'Frank Harris',7.8,'2024-11-15'),(7,2,'Grace Kim',9.1,'2024-11-20'),(8,3,'Henry Martinez',7.9,'2022-03-10'),(9,3,'Irene Clark',8.3,'2022-03-15'),(10,3,'Jack Lewis',8.7,'2022-03-20'),(11,4,'Karen Walker',7.6,'2021-12-25'),(12,4,'Larry Young',8.1,'2021-12-28'),(13,4,'Mona King',7.9,'2022-01-05'),(14,5,'Nate Scott',8.0,'2022-04-10'),(15,5,'Olivia Green',7.7,'2022-04-15'),(16,5,'Paul Hall',8.4,'2022-04-20'),(17,5,'Quincy Baker',7.5,'2022-04-25'),(18,6,'Rachel Turner',8.3,'2024-05-20'),(19,6,'Sam Phillips',7.9,'2024-05-25'),(20,6,'Tina Collins',8.6,'2024-05-30'),(21,6,'Uma Murphy',7.8,'2024-06-05'),(22,7,'Victor Rivera',8.5,'2022-12-20'),(23,7,'Wendy Cooper',8.2,'2022-12-25'),(24,7,'Xander Peterson',9.0,'2023-01-05'),(25,8,'Yara Reed',9.1,'2019-05-01'),(26,8,'Zack Simmons',8.8,'2019-05-05'),(27,8,'Aaron Foster',9.3,'2019-05-10'),(28,9,'Bella Gray',8.7,'2013-12-05'),(29,9,'Caleb Hughes',8.0,'2013-12-10'),(30,9,'Diana Russell',8.5,'2013-12-15'),(31,10,'Ethan Barnes',7.9,'2021-12-01'),(32,10,'Fiona Long',8.2,'2021-12-05'),(33,10,'George Bell',8.0,'2021-12-10'),(34,11,'Hannah Kelly',8.3,'2015-06-20'),(35,11,'Ian Nelson',7.7,'2015-06-25'),(36,11,'Jasmine Carter',8.5,'2015-07-01'),(37,11,'Kevin Brooks',7.9,'2015-07-05'),(38,12,'Lily Jenkins',8.1,'2010-04-01'),(39,12,'Marcus Powell',7.6,'2010-04-05'),(40,12,'Nora Ramirez',8.4,'2010-04-10'),(41,13,'Oscar Flores',7.8,'2015-07-15'),(42,13,'Paula Simmons',8.2,'2015-07-20'),(43,13,'Quentin Hayes',8.0,'2015-07-25'),(44,13,'Rita Barnes',7.9,'2015-07-30'),(45,14,'Steve Carter',8.6,'2023-04-15'),(46,14,'Tara Edwards',8.3,'2023-04-20'),(47,14,'Ulysses Foster',8.9,'2023-04-25'),(48,14,'Violet Garcia',8.1,'2023-04-30'),(49,15,'Walter Hughes',8.0,'2016-06-20'),(50,15,'Ximena Brooks',7.8,'2016-06-25'),(51,15,'Yvonne Powell',8.2,'2016-07-01'),(52,16,'Zane Foster',9.0,'2022-06-01'),(53,16,'Amy Russell',8.7,'2022-06-05'),(54,16,'Brian Kelly',8.5,'2022-06-10'),(55,16,'Carmen Torres',8.3,'2022-06-15'),(56,17,'Derek Simmons',8.4,'2023-07-20'),(57,17,'Ella Hayes',8.0,'2023-07-25'),(58,17,'Felix Ramirez',7.9,'2023-07-30'),(59,18,'Gabriella Edwards',8.1,'2018-04-10'),(60,18,'Harry Powell',7.7,'2018-04-15'),(61,18,'Isabella Hughes',8.3,'2018-04-20'),(62,19,'Jacob Carter',7.9,'2022-04-15'),(63,19,'Kylie Brooks',8.2,'2022-04-20'),(64,19,'Landon Kelly',8.0,'2022-04-25'),(65,20,'Mia Torres',8.5,'2023-06-15'),(66,20,'Noah Foster',8.1,'2023-06-20'),(67,20,'Olivia Ramirez',8.4,'2023-06-25'),(68,20,'Parker Hughes',8.2,'2023-06-30'),(69,21,'Quinn Brown',9.2,'2021-12-20'),(70,21,'Ryan Edwards',8.8,'2021-12-25'),(71,21,'Sophia Collins',9.0,'2021-12-30'),(72,21,'Tyler Lewis',8.7,'2022-01-05'),(73,22,'Uma Martinez',7.8,'2022-02-20'),(74,22,'Victor Simmons',8.1,'2022-02-25'),(75,22,'Wendy Garcia',7.9,'2022-03-01'),(76,23,'Xavier Kelly',7.6,'2021-11-25'),(77,23,'Yasmine Powell',8.0,'2021-11-30'),(78,23,'Zoe Brooks',7.8,'2021-12-05'),(79,24,'Aiden Ramirez',8.3,'2021-10-10'),(80,24,'Bella Martinez',8.0,'2021-10-15'),(81,24,'Caleb Edwards',8.2,'2021-10-20'),(82,24,'Daisy Kelly',7.9,'2021-10-25'),(83,25,'Eli Turner',7.7,'2022-04-01'),(84,25,'Fiona Clark',8.1,'2022-04-05'),(85,25,'Gavin Lewis',7.9,'2022-04-10'),(86,25,'Holly Davis',8.0,'2022-04-15');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 23:09:29
