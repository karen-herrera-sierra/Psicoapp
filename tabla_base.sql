-- MySQL Script generated by MySQL Workbench
-- Thu Oct  5 21:39:09 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PsicoAPP
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `PsicoAPP` ;

-- -----------------------------------------------------
-- Schema PsicoAPP
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PsicoAPP` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `PsicoAPP` ;

-- -----------------------------------------------------
-- Table `ASIGNACION`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ASIGNACION` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ASIGNACION` (
  `idASIGNACION` INT NOT NULL,
  `idTIPO_EXAMENES` INT NOT NULL,
  `fecha_inicial` DATE NOT NULL,
  `fecha_final` DATE NOT NULL,
  PRIMARY KEY (`idASIGNACION`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `INFORMES`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `INFORMES` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `INFORMES` (
  `idINFORMES` INT NOT NULL,
  `idpsicologo` INT NOT NULL,
  `idaspirante` INT NOT NULL,
  `calificacion` VARCHAR(45) NULL,
  `idTIPO_EXAMENES` VARCHAR(45) NULL,
  PRIMARY KEY (`idINFORMES`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `PREGUNTAS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PREGUNTAS` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `PREGUNTAS` (
  `idPREGUNTAS` INT NOT NULL,
  `descrption` VARCHAR(45) NOT NULL,
  `idTIPOS_EXAMENES` INT NOT NULL,
  `idRESPUESTAS` INT NOT NULL,
  PRIMARY KEY (`idPREGUNTAS`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `RESPUESTAS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RESPUESTAS` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `RESPUESTAS` (
  `idRESPUESTAS` INT NOT NULL,
  `idASIGNACION` INT NOT NULL,
  `idPREGUNTAS` INT NOT NULL,
  `RESPUESTAS` VARCHAR(45) NULL,
  PRIMARY KEY (`idRESPUESTAS`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `RESPUESTAS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RESPUESTAS` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `RESPUESTAS` (
  `idRESPUESTAS` INT NOT NULL,
  `idASIGNACION` INT NOT NULL,
  `idPREGUNTAS` INT NOT NULL,
  `RESPUESTAS` VARCHAR(45) NULL,
  PRIMARY KEY (`idRESPUESTAS`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ROLES`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ROLES` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ROLES` (
  `idROLES` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idROLES`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Respuesta_correcta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Respuesta_correcta` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Respuesta_correcta` (
  `idRespuesta_correcta` INT NOT NULL,
  `Idpregunta` VARCHAR(45) NULL,
  PRIMARY KEY (`idRespuesta_correcta`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `SECCION`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SECCION` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `SECCION` (
  `idseccion` INT NOT NULL,
  `idUSUARIOS` INT NOT NULL,
  `idROLES` INT NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idseccion`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `TIPOS_EXAMENES`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `TIPOS_EXAMENES` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `TIPOS_EXAMENES` (
  `idTIPOS_EXAMENES` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTIPOS_EXAMENES`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Telefono`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Telefono` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Telefono` (
  `idtelefono` INT NOT NULL,
  `idUSUARIOS` INT NOT NULL,
  `celular` INT NOT NULL,
  PRIMARY KEY (`idtelefono`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `UNION`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UNION` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `UNION` (
  `idUNION` INT NOT NULL,
  `idUSUARIOS` INT NOT NULL,
  `idROLES` INT NOT NULL,
  `fecha_inicio` INT NOT NULL,
  `descrption` VARCHAR(45) NOT NULL,
  `UNIONcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUNION`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `USUARIOS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `USUARIOS` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `USUARIOS` (
  `idUSUARIOS` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `phone` INT NOT NULL,
  `primer_apellido` VARCHAR(45) NOT NULL,
  `segundo_apellido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUSUARIOS`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `correos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `correos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `correos` (
  `idcorreos` INT NOT NULL,
  `idUSUARIOS` INT NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcorreos`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;