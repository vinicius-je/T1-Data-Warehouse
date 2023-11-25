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
-- Table structure for table `itemvenda`
--

DROP TABLE IF EXISTS `itemvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemvenda` (
  `Produto_idProduto` int NOT NULL,
  `Venda_idVenda` int NOT NULL,
  `qtde` int DEFAULT NULL,
  `vlrProdutoVenda` decimal(4,2) NOT NULL,
  `custoProdutoVenda` decimal(4,2) NOT NULL,
  `Convenio_idConvenio` int DEFAULT NULL,
  PRIMARY KEY (`Produto_idProduto`,`Venda_idVenda`),
  KEY `fk_ItemVenda_Venda1_idx` (`Venda_idVenda`),
  KEY `fk_ItemVenda_Convenio1_idx` (`Convenio_idConvenio`),
  CONSTRAINT `fk_ItemVenda_Convenio1` FOREIGN KEY (`Convenio_idConvenio`) REFERENCES `convenio` (`idConvenio`),
  CONSTRAINT `fk_ItemVenda_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`),
  CONSTRAINT `fk_ItemVenda_Venda1` FOREIGN KEY (`Venda_idVenda`) REFERENCES `venda` (`idVenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemvenda`
--

LOCK TABLES `itemvenda` WRITE;
/*!40000 ALTER TABLE `itemvenda` DISABLE KEYS */;
INSERT INTO `itemvenda` VALUES (1,1,1,85.00,70.00,1),(1,3,1,85.00,70.00,3),(2,1,1,5.45,4.00,1),(3,2,1,26.50,21.50,1),(4,2,1,2.00,1.50,2),(4,4,1,2.00,1.50,3),(4,8,2,2.00,1.50,3),(4,9,2,2.00,1.50,3),(5,8,1,65.89,45.87,3),(6,12,2,8.99,6.49,2),(7,7,2,3.00,1.30,3),(8,7,1,6.79,4.38,2),(9,1,1,2.00,1.50,2),(10,11,2,25.00,17.00,2),(12,4,2,5.00,3.05,1),(13,6,1,77.59,65.00,2),(14,5,2,20.00,15.80,3),(15,10,1,82.19,73.79,3),(19,6,1,2.00,1.29,2),(20,9,2,30.00,18.09,1);
/*!40000 ALTER TABLE `itemvenda` ENABLE KEYS */;
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
