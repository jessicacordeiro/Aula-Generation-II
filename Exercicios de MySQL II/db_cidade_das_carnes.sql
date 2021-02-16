-- MySQL Script generated by MySQL Workbench
-- Mon Feb 15 22:19:28 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_farmacia_do_bem
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_construindo_a_nossa_vida
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cidade_das_carnes` ;
USE `db_cidade_das_carnes` ;

-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipos_categorias` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE INDEX `id_categoria_UNIQUE` (`id_categoria` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `NomedoCorte_produto` VARCHAR(100) NOT NULL,
  `dataDeFabricacao_produto` DATE NOT NULL,
  `dataDeVal_produto` DATE NOT NULL,
  `preco_produto` DOUBLE NOT NULL,
  `marca_produto` VARCHAR(45) NOT NULL,
  `fk_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_produto`),
  UNIQUE INDEX `id_produto_UNIQUE` (`id_produto` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria_idx` (`fk_id_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk_id_categoria`)
    REFERENCES `db_cidade_das_carnes`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
