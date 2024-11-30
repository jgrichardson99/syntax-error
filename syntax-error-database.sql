CREATE DATABASE  IF NOT EXISTS `syntax-error` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `syntax-error`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: syntax-error
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Username` varchar(32) NOT NULL,
  `FName` varchar(32) NOT NULL,
  `LName` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` varchar(32) NOT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `account` (`Username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_updates_band_members`
--

DROP TABLE IF EXISTS `admin_updates_band_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_updates_band_members` (
  `Username` varchar(32) NOT NULL,
  `Member_Name` varchar(64) NOT NULL,
  PRIMARY KEY (`Username`,`Member_Name`),
  KEY `Member_Name` (`Member_Name`),
  CONSTRAINT `admin_updates_band_members_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `admin` (`Username`) ON UPDATE CASCADE,
  CONSTRAINT `admin_updates_band_members_ibfk_2` FOREIGN KEY (`Member_Name`) REFERENCES `band_members` (`Name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_updates_band_members`
--

LOCK TABLES `admin_updates_band_members` WRITE;
/*!40000 ALTER TABLE `admin_updates_band_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_updates_band_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_updates_merchandise`
--

DROP TABLE IF EXISTS `admin_updates_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_updates_merchandise` (
  `Username` varchar(32) NOT NULL,
  `Item_ID` int NOT NULL,
  PRIMARY KEY (`Username`,`Item_ID`),
  KEY `Item_ID` (`Item_ID`),
  CONSTRAINT `admin_updates_merchandise_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `admin` (`Username`) ON UPDATE CASCADE,
  CONSTRAINT `admin_updates_merchandise_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `merchandise` (`Item_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_updates_merchandise`
--

LOCK TABLES `admin_updates_merchandise` WRITE;
/*!40000 ALTER TABLE `admin_updates_merchandise` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_updates_merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_updates_releases`
--

DROP TABLE IF EXISTS `admin_updates_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_updates_releases` (
  `Username` varchar(32) NOT NULL,
  `Release_Name` varchar(32) NOT NULL,
  PRIMARY KEY (`Username`,`Release_Name`),
  KEY `Release_Name` (`Release_Name`),
  CONSTRAINT `admin_updates_releases_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `admin` (`Username`) ON UPDATE CASCADE,
  CONSTRAINT `admin_updates_releases_ibfk_2` FOREIGN KEY (`Release_Name`) REFERENCES `releases` (`Name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_updates_releases`
--

LOCK TABLES `admin_updates_releases` WRITE;
/*!40000 ALTER TABLE `admin_updates_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_updates_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_updates_tour`
--

DROP TABLE IF EXISTS `admin_updates_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_updates_tour` (
  `Name` varchar(32) NOT NULL,
  `Username` varchar(32) NOT NULL,
  PRIMARY KEY (`Name`,`Username`),
  KEY `Username` (`Username`),
  CONSTRAINT `admin_updates_tour_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `tour` (`Name`) ON UPDATE CASCADE,
  CONSTRAINT `admin_updates_tour_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `admin` (`Username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_updates_tour`
--

LOCK TABLES `admin_updates_tour` WRITE;
/*!40000 ALTER TABLE `admin_updates_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_updates_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `Name` varchar(32) NOT NULL,
  PRIMARY KEY (`Name`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `releases` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band_members`
--

DROP TABLE IF EXISTS `band_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `band_members` (
  `Name` varchar(64) NOT NULL,
  `Role` varchar(32) DEFAULT NULL,
  `Biography` text,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band_members`
--

LOCK TABLES `band_members` WRITE;
/*!40000 ALTER TABLE `band_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `band_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `Company_name` varchar(64) NOT NULL,
  PRIMARY KEY (`Company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_ships_merchandise`
--

DROP TABLE IF EXISTS `distributor_ships_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor_ships_merchandise` (
  `Company_name` varchar(64) NOT NULL,
  `Item_ID` int NOT NULL,
  PRIMARY KEY (`Company_name`,`Item_ID`),
  KEY `Item_ID` (`Item_ID`),
  CONSTRAINT `distributor_ships_merchandise_ibfk_1` FOREIGN KEY (`Company_name`) REFERENCES `distributor` (`Company_name`) ON UPDATE CASCADE,
  CONSTRAINT `distributor_ships_merchandise_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `merchandise` (`Item_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_ships_merchandise`
--

LOCK TABLES `distributor_ships_merchandise` WRITE;
/*!40000 ALTER TABLE `distributor_ships_merchandise` DISABLE KEYS */;
/*!40000 ALTER TABLE `distributor_ships_merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_ships_to_user`
--

DROP TABLE IF EXISTS `distributor_ships_to_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor_ships_to_user` (
  `Company_name` varchar(64) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Shipping_address` varchar(64) NOT NULL,
  PRIMARY KEY (`Company_name`,`Username`),
  KEY `Username` (`Username`),
  CONSTRAINT `distributor_ships_to_user_ibfk_1` FOREIGN KEY (`Company_name`) REFERENCES `distributor` (`Company_name`) ON UPDATE CASCADE,
  CONSTRAINT `distributor_ships_to_user_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_ships_to_user`
--

LOCK TABLES `distributor_ships_to_user` WRITE;
/*!40000 ALTER TABLE `distributor_ships_to_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `distributor_ships_to_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `Name` varchar(32) NOT NULL,
  `Genre` varchar(32) NOT NULL,
  PRIMARY KEY (`Name`,`Genre`),
  CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `releases` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `Company_name` varchar(64) NOT NULL,
  `Manufacturing_cost` decimal(4,2) NOT NULL,
  PRIMARY KEY (`Company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandise`
--

DROP TABLE IF EXISTS `merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchandise` (
  `Item_ID` int NOT NULL,
  `Price` decimal(4,2) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `Type` varchar(16) NOT NULL,
  `Name` varchar(32) DEFAULT NULL,
  `Manufacturer_name` varchar(64) DEFAULT NULL,
  `Release_name` varchar(32) NOT NULL,
  `Distributor_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `Manufacturer_name` (`Manufacturer_name`),
  KEY `Release_name` (`Release_name`),
  KEY `Distributor_name` (`Distributor_name`),
  CONSTRAINT `merchandise_ibfk_1` FOREIGN KEY (`Manufacturer_name`) REFERENCES `manufacturer` (`Company_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `merchandise_ibfk_2` FOREIGN KEY (`Release_name`) REFERENCES `releases` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchandise_ibfk_3` FOREIGN KEY (`Distributor_name`) REFERENCES `distributor` (`Company_name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandise`
--

LOCK TABLES `merchandise` WRITE;
/*!40000 ALTER TABLE `merchandise` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `releases` (
  `Name` varchar(32) NOT NULL,
  `Length` time NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_fee`
--

DROP TABLE IF EXISTS `shipping_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_fee` (
  `Company_name` varchar(64) NOT NULL,
  `Cost_per_kg` decimal(4,2) NOT NULL,
  `Destination` varchar(64) NOT NULL,
  PRIMARY KEY (`Company_name`,`Cost_per_kg`,`Destination`),
  CONSTRAINT `shipping_fee_ibfk_1` FOREIGN KEY (`Company_name`) REFERENCES `distributor` (`Company_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_fee`
--

LOCK TABLES `shipping_fee` WRITE;
/*!40000 ALTER TABLE `shipping_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single`
--

DROP TABLE IF EXISTS `single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `single` (
  `Name` varchar(32) NOT NULL,
  PRIMARY KEY (`Name`),
  CONSTRAINT `single_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `releases` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single`
--

LOCK TABLES `single` WRITE;
/*!40000 ALTER TABLE `single` DISABLE KEYS */;
/*!40000 ALTER TABLE `single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `Name` varchar(32) NOT NULL,
  `Length` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_dates`
--

DROP TABLE IF EXISTS `tour_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_dates` (
  `Name` varchar(32) NOT NULL,
  `Date` date NOT NULL,
  `Location` varchar(32) NOT NULL,
  PRIMARY KEY (`Name`,`Date`),
  CONSTRAINT `tour_dates_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `tour` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_dates`
--

LOCK TABLES `tour_dates` WRITE;
/*!40000 ALTER TABLE `tour_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_guests`
--

DROP TABLE IF EXISTS `tour_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_guests` (
  `Name` varchar(32) NOT NULL,
  `Special_guests` varchar(255) NOT NULL,
  PRIMARY KEY (`Name`,`Special_guests`),
  CONSTRAINT `tour_guests_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `tour` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_guests`
--

LOCK TABLES `tour_guests` WRITE;
/*!40000 ALTER TABLE `tour_guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracklist`
--

DROP TABLE IF EXISTS `tracklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracklist` (
  `Name` varchar(32) NOT NULL,
  `Tracklist` varchar(255) NOT NULL,
  PRIMARY KEY (`Name`,`Tracklist`),
  CONSTRAINT `tracklist_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `album` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracklist`
--

LOCK TABLES `tracklist` WRITE;
/*!40000 ALTER TABLE `tracklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Username` varchar(32) NOT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `account` (`Username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_buys_merchandise`
--

DROP TABLE IF EXISTS `user_buys_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_buys_merchandise` (
  `Username` varchar(32) NOT NULL,
  `Item_ID` int NOT NULL,
  PRIMARY KEY (`Username`,`Item_ID`),
  KEY `Item_ID` (`Item_ID`),
  CONSTRAINT `user_buys_merchandise_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON UPDATE CASCADE,
  CONSTRAINT `user_buys_merchandise_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `merchandise` (`Item_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_buys_merchandise`
--

LOCK TABLES `user_buys_merchandise` WRITE;
/*!40000 ALTER TABLE `user_buys_merchandise` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_buys_merchandise` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29 21:55:45
