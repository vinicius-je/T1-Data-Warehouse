CREATE DATABASE  IF NOT EXISTS `datamart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `datamart`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: datamart
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `fatoitemvenda`
--

DROP TABLE IF EXISTS `fatoitemvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fatoitemvenda` (
  `_idDimData` int NOT NULL,
  `_idDimProduto` int NOT NULL,
  `_idDimLoja` int NOT NULL,
  `_idDimConvenio` int NOT NULL,
  `qtde` int NOT NULL,
  `valorProdutoVenda` decimal(4,2) NOT NULL,
  `custoProdutoVenda` decimal(4,2) NOT NULL,
  `custoProduto` decimal(4,2) NOT NULL,
  PRIMARY KEY (`_idDimData`,`_idDimProduto`,`_idDimLoja`,`_idDimConvenio`),
  KEY `_idDimProduto` (`_idDimProduto`),
  KEY `_idDimLoja` (`_idDimLoja`),
  KEY `_idDimConvenio` (`_idDimConvenio`),
  CONSTRAINT `fatoitemvenda_ibfk_1` FOREIGN KEY (`_idDimData`) REFERENCES `dimdata` (`date_key`),
  CONSTRAINT `fatoitemvenda_ibfk_2` FOREIGN KEY (`_idDimProduto`) REFERENCES `dimproduto` (`idProduto`),
  CONSTRAINT `fatoitemvenda_ibfk_3` FOREIGN KEY (`_idDimLoja`) REFERENCES `dimloja` (`idLoja`),
  CONSTRAINT `fatoitemvenda_ibfk_4` FOREIGN KEY (`_idDimConvenio`) REFERENCES `dimconvenio` (`idConvenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatoitemvenda`
--

LOCK TABLES `fatoitemvenda` WRITE;
/*!40000 ALTER TABLE `fatoitemvenda` DISABLE KEYS */;
INSERT INTO `fatoitemvenda` VALUES (20131024,1,1,3,1,85.00,70.00,20.00),(20131024,4,2,3,2,2.00,1.50,0.50),(20131024,5,2,3,1,65.89,45.87,5.48),(20131025,4,1,3,1,2.00,1.50,0.50),(20131025,4,2,3,2,2.00,1.50,0.50),(20131025,12,1,1,2,5.00,3.05,0.55),(20131025,14,1,3,2,20.00,15.80,5.80),(20131025,20,2,1,2,30.00,18.09,3.49),(20131026,7,2,3,2,3.00,1.30,0.30),(20131026,8,2,2,1,6.79,4.38,0.79),(20131026,13,2,2,1,77.59,65.00,5.00),(20131026,19,2,2,1,2.00,1.29,0.29),(20131027,6,3,2,2,8.99,6.49,0.50),(20131029,1,1,1,1,85.00,70.00,20.00),(20131029,2,1,1,1,5.45,4.00,0.50),(20131029,3,1,1,1,26.50,21.50,5.00),(20131029,4,1,2,1,2.00,1.50,0.50),(20131029,9,1,2,1,2.00,1.50,0.50),(20131029,10,3,2,2,25.00,17.00,5.00),(20131029,15,3,3,1,82.19,73.79,3.50);
/*!40000 ALTER TABLE `fatoitemvenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 10:19:23
