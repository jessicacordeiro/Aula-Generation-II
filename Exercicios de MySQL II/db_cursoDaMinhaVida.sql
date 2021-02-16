-- MySQL Script generated by MySQL Workbench
-- Tue Feb 16 00:23:52 2021
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
-- Schema db_cursoDaMinhaVida
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cursoDaMinhaVida
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cursoDaMinhaVida` ;
USE `db_cursoDaMinhaVida` ;

-- -----------------------------------------------------
-- Table `db_cursoDaMinhaVida`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cursoDaMinhaVida`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `categoria_cursosOn` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE INDEX `id_categoria_UNIQUE` (`id_categoria` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cursoDaMinhaVida`.`tb_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cursoDaMinhaVida`.`tb_curso` (
  `id_curso` INT NOT NULL AUTO_INCREMENT,
  `nomeDoCurso` VARCHAR(100) NOT NULL,
  `modulos` INT NOT NULL,
  `duracao` TIME NOT NULL,
  `preco` DOUBLE NOT NULL,
  `fk_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_curso`),
  UNIQUE INDEX `id_curso_UNIQUE` (`id_curso` ASC) VISIBLE,
  INDEX `fk_tb_curso_tb_categoria_idx` (`fk_id_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_curso_tb_categoria`
    FOREIGN KEY (`fk_id_categoria`)
    REFERENCES `db_cursoDaMinhaVida`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;