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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL,
  `descProduto` varchar(45) NOT NULL,
  `vlrProduto` decimal(4,2) NOT NULL,
  `custoProduto` decimal(4,2) NOT NULL,
  `pesoProduto` int DEFAULT NULL,
  `Categoria_idCategoria` int NOT NULL,
  `Distribuidor_idDistribuidor` int NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `fk_Produto_Categoria_idx` (`Categoria_idCategoria`),
  KEY `fk_Produto_Distribuidor1_idx` (`Distribuidor_idDistribuidor`),
  CONSTRAINT `fk_Produto_Categoria` FOREIGN KEY (`Categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `fk_Produto_Distribuidor1` FOREIGN KEY (`Distribuidor_idDistribuidor`) REFERENCES `distribuidor` (`idDistribuidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Venvanse',50.00,20.00,10,1,3),(2,'Refrigerante',3.50,0.50,2000,2,2),(3,'Rivotril',16.50,5.00,10,1,3),(4,'Água',1.00,0.50,500,2,2),(5,'Desvenlafaxina',40.39,5.48,9,1,3),(6,'Energético',5.99,0.50,375,2,2),(7,'Paracetamol',1.00,0.30,500,1,3),(8,'Salgadinho',3.59,0.79,100,2,2),(9,'Dipirona',1.00,0.50,9,1,3),(10,'Sorvete',12.00,5.00,9,2,2),(11,'Fentanila',23.40,8.99,9,1,3),(12,'Barrinha de cereal',2.50,0.55,10,2,2),(13,'Ritalina',60.00,5.00,10,1,3),(14,'Máscara facial',10.00,5.80,10,3,1),(15,'Biomag',70.29,3.50,10,1,3),(16,'Hipoglós',25.00,10.79,10,3,1),(17,'Cloridrato Venlafaxina',30.59,13.99,75,1,3),(18,'Pomada Roche-Posay',25.00,12.50,90,3,1),(19,'Acetaminofeno ',1.00,0.29,9,1,3),(20,'Protetor Solar SolMax FPS 50',14.60,3.49,90,3,1);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 10:18:03
