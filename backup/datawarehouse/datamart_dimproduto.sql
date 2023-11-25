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
-- Table structure for table `dimproduto`
--

DROP TABLE IF EXISTS `dimproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimproduto` (
  `idProduto` int NOT NULL,
  `nomeProduto` varchar(45) NOT NULL,
  `pesoProduto` int NOT NULL,
  `medicamento` char(1) NOT NULL,
  `conveniencia` char(1) NOT NULL,
  `nomeDistribuidor` varchar(30) NOT NULL,
  `nomeCategoria` varchar(30) NOT NULL,
  `nomeMarcaConveniencia` varchar(30) NOT NULL,
  `possuiGenerico` varchar(15) NOT NULL,
  `generico` varchar(15) NOT NULL,
  `nomeLaboratorio` varchar(20) NOT NULL,
  `nomeTipoTarja` varchar(45) NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimproduto`
--

LOCK TABLES `dimproduto` WRITE;
/*!40000 ALTER TABLE `dimproduto` DISABLE KEYS */;
INSERT INTO `dimproduto` VALUES (1,'Venvanse',10,'1','0','Sigma','Saúde','NAO SE APLICA','S','S','Alfa','Preta'),(2,'Refrigerante',2000,'0','1','Delta','Alimento','Bebidas Vix','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(3,'Rivotril',10,'1','0','Sigma','Saúde','NAO SE APLICA','S','S','Alfa','Preta'),(4,'Água',500,'0','1','Delta','Alimento','Bebidas Vix','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(5,'Desvenlafaxina',9,'1','0','Sigma','Saúde','NAO SE APLICA','S','S','Beta','Vermelha'),(6,'Energético',375,'0','1','Delta','Alimento','Bebidas Vix','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(7,'Paracetamol',500,'1','0','Sigma','Saúde','NAO SE APLICA','N','N','Gama','Amarela'),(8,'Salgadinho',100,'0','1','Delta','Alimento','Alimentos Vix','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(9,'Dipirona',9,'1','0','Sigma','Saúde','NAO SE APLICA','S','S','Gama','Amarela'),(10,'Sorvete',9,'0','1','Delta','Alimento','Alimentos Vix','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(11,'Fentanila',9,'1','0','Sigma','Saúde','NAO SE APLICA','N','N','Gama','Amarela'),(12,'Barrinha de cereal',10,'0','1','Delta','Alimento','Alimentos Vix','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(13,'Ritalina',10,'1','0','Sigma','Saúde','NAO SE APLICA','N','S','Beta','Preta'),(14,'Máscara facial',10,'0','1','Ômega','Estética','Health & Care','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(15,'Biomag',10,'1','0','Sigma','Saúde','NAO SE APLICA','S','S','Beta','Preta'),(16,'Hipoglós',10,'0','1','Ômega','Estética','Health & Care','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(17,'Cloridrato Venlafaxina',75,'1','0','Sigma','Saúde','NAO SE APLICA','N','S','Alfa','Vermelha'),(18,'Pomada Roche-Posay',90,'0','1','Ômega','Estética','Health & Care','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA'),(19,'Acetaminofeno ',9,'1','0','Sigma','Saúde','NAO SE APLICA','S','S','Alfa','Sem tarja'),(20,'Protetor Solar SolMax FPS 50',90,'0','1','Ômega','Estética','Health & Care','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA','NAO SE APLICA');
/*!40000 ALTER TABLE `dimproduto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 10:19:22
