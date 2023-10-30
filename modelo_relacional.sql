-- MySQL Script generated by MySQL Workbench
-- Sun Oct 29 16:31:32 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbFarmifes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbFarmifes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbFarmifes` DEFAULT CHARACTER SET utf8 ;
USE `dbFarmifes` ;

-- -----------------------------------------------------
-- Table `dbFarmifes`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Categoria` (
  `idCategoria` INT NOT NULL,
  `descCategoria` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Distribuidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Distribuidor` (
  `idDistribuidor` INT NOT NULL,
  `nmDistribuidor` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idDistribuidor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Produto` (
  `idProduto` INT NOT NULL,
  `descProduto` VARCHAR(45) NOT NULL,
  `vlrProduto` DECIMAL(4,2) NOT NULL,
  `custoProduto` DECIMAL(4,2) NOT NULL,
  `pesoProduto` INT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  `Distribuidor_idDistribuidor` INT NOT NULL,
  PRIMARY KEY (`idProduto`),
  INDEX `fk_Produto_Categoria_idx` (`Categoria_idCategoria` ASC) VISIBLE,
  INDEX `fk_Produto_Distribuidor1_idx` (`Distribuidor_idDistribuidor` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Categoria`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `dbFarmifes`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_Distribuidor1`
    FOREIGN KEY (`Distribuidor_idDistribuidor`)
    REFERENCES `dbFarmifes`.`Distribuidor` (`idDistribuidor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Laboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Laboratorio` (
  `idLaboratorio` INT NOT NULL,
  `nmLaboratorio` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idLaboratorio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`TipoTarja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`TipoTarja` (
  `idTipoTarja` INT NOT NULL,
  `descTipoTarja` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipoTarja`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Medicamento` (
  `Produto_idProduto` INT NOT NULL,
  `possui_generico` CHAR(1) NULL,
  `generico` CHAR(1) NOT NULL,
  `Laboratorio_idLaboratorio` INT NOT NULL,
  `TipoTarja_idTipoTarja` INT NOT NULL,
  PRIMARY KEY (`Produto_idProduto`),
  INDEX `fk_Medicamento_Laboratorio1_idx` (`Laboratorio_idLaboratorio` ASC) VISIBLE,
  INDEX `fk_Medicamento_TipoTarja1_idx` (`TipoTarja_idTipoTarja` ASC) VISIBLE,
  CONSTRAINT `fk_Medicamento_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `dbFarmifes`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Medicamento_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idLaboratorio`)
    REFERENCES `dbFarmifes`.`Laboratorio` (`idLaboratorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Medicamento_TipoTarja1`
    FOREIGN KEY (`TipoTarja_idTipoTarja`)
    REFERENCES `dbFarmifes`.`TipoTarja` (`idTipoTarja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Marca` (
  `idMarca` INT NOT NULL,
  `nmMarca` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Conveniência`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Conveniência` (
  `Produto_idProduto` INT NOT NULL,
  `Marca_idMarca` INT NOT NULL,
  PRIMARY KEY (`Produto_idProduto`),
  INDEX `fk_Conveniência_Marca1_idx` (`Marca_idMarca` ASC) VISIBLE,
  CONSTRAINT `fk_Conveniência_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `dbFarmifes`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conveniência_Marca1`
    FOREIGN KEY (`Marca_idMarca`)
    REFERENCES `dbFarmifes`.`Marca` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Loja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Loja` (
  `idLoja` INT NOT NULL,
  `nmLoja` VARCHAR(30) NOT NULL,
  `nmGerente` VARCHAR(45) NULL,
  PRIMARY KEY (`idLoja`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Convenio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Convenio` (
  `idConvenio` INT NOT NULL,
  `nmConvenio` VARCHAR(25) NOT NULL,
  `porcentagemDesconto` DECIMAL(2,1) NULL,
  PRIMARY KEY (`idConvenio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`Venda` (
  `idVenda` INT NOT NULL,
  `dtVenda` DATETIME NOT NULL,
  `vlrTotal` DECIMAL(4,2) NOT NULL,
  `Loja_idLoja` INT NOT NULL,
  PRIMARY KEY (`idVenda`),
  INDEX `fk_Venda_Loja1_idx` (`Loja_idLoja` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_Loja1`
    FOREIGN KEY (`Loja_idLoja`)
    REFERENCES `dbFarmifes`.`Loja` (`idLoja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFarmifes`.`ItemVenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFarmifes`.`ItemVenda` (
  `Produto_idProduto` INT NOT NULL,
  `Venda_idVenda` INT NOT NULL,
  `qtde` INT NULL,
  `vlrProdutoVenda` DECIMAL(4,2) NOT NULL,
  `custoProdutoVenda` DECIMAL(4,2) NOT NULL,
  `Convenio_idConvenio` INT NULL,
  PRIMARY KEY (`Produto_idProduto`, `Venda_idVenda`),
  INDEX `fk_ItemVenda_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  INDEX `fk_ItemVenda_Convenio1_idx` (`Convenio_idConvenio` ASC) VISIBLE,
  CONSTRAINT `fk_ItemVenda_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `dbFarmifes`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ItemVenda_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `dbFarmifes`.`Venda` (`idVenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ItemVenda_Convenio1`
    FOREIGN KEY (`Convenio_idConvenio`)
    REFERENCES `dbFarmifes`.`Convenio` (`idConvenio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
