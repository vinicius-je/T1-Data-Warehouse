CREATE DATABASE  IF NOT EXISTS `dbfarmifes` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbfarmifes`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: dbfarmifes
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
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `Produto_idProduto` int NOT NULL,
  `possui_generico` char(1) DEFAULT NULL,
  `generico` char(1) NOT NULL,
  `Laboratorio_idLaboratorio` int NOT NULL,
  `TipoTarja_idTipoTarja` int NOT NULL,
  PRIMARY KEY (`Produto_idProduto`),
  KEY `fk_Medicamento_Laboratorio1_idx` (`Laboratorio_idLaboratorio`),
  KEY `fk_Medicamento_TipoTarja1_idx` (`TipoTarja_idTipoTarja`),
  CONSTRAINT `fk_Medicamento_Laboratorio1` FOREIGN KEY (`Laboratorio_idLaboratorio`) REFERENCES `laboratorio` (`idLaboratorio`),
  CONSTRAINT `fk_Medicamento_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`),
  CONSTRAINT `fk_Medicamento_TipoTarja1` FOREIGN KEY (`TipoTarja_idTipoTarja`) REFERENCES `tipotarja` (`idTipoTarja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'S','S',1,1),(3,'S','S',1,1),(5,'S','S',2,2),(7,'N','N',3,3),(9,'S','S',3,3),(11,'N','N',3,3),(13,'N','S',2,1),(15,'S','S',2,1),(17,'N','S',1,2),(19,'S','S',1,4);
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 10:18:04
