-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tb_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_usuario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_usuario` (
  `idt_usuario` INT NOT NULL AUTO_INCREMENT,
  `usr_usuario` VARCHAR(30) NOT NULL,
  `eml_usuario` VARCHAR(50) NOT NULL,
  `pwd_usuario` VARCHAR(128) NOT NULL,
  `nme_usuario` VARCHAR(45) NOT NULL,
  `dta_usuario` DATE NOT NULL,
  `cel_usuario` VARCHAR(20) NOT NULL,
  `cpf_usuario` CHAR(11) NOT NULL,
  `rg_usuario` VARCHAR(7) NOT NULL,
  PRIMARY KEY (`idt_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_unidade_federativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_unidade_federativa` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_unidade_federativa` (
  `idt_estado` INT NOT NULL AUTO_INCREMENT,
  `nme_estado` VARCHAR(50) NOT NULL,
  `sgl_estado` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idt_estado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_cidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_cidade` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_cidade` (
  `idt_cidade` INT NOT NULL AUTO_INCREMENT,
  `nme_cidade` VARCHAR(50) NOT NULL,
  `sts_capital_cidade` CHAR(1) NOT NULL,
  `cod_unidade_federativa` INT NOT NULL,
  PRIMARY KEY (`idt_cidade`),
  INDEX `fk_tb_cidade_tb_unidadeFederativa1_idx` (`cod_unidade_federativa` ASC),
  CONSTRAINT `fk_tb_cidade_tb_unidadeFederativa1`
    FOREIGN KEY (`cod_unidade_federativa`)
    REFERENCES `mydb`.`td_unidade_federativa` (`idt_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_tipo_espaco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_tipo_espaco` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_tipo_espaco` (
  `idt_tipo_imovel` INT NOT NULL AUTO_INCREMENT,
  `nme_tipo_imovel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idt_tipo_imovel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_espaco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_espaco` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_espaco` (
  `idt_area` INT NOT NULL AUTO_INCREMENT,
  `area_espaco` FLOAT NOT NULL,
  `cep_espaco` CHAR(9) NOT NULL COMMENT '70,372-090',
  `qtd_hospedes_espaco` INT NOT NULL,
  `end_espaco` TEXT NOT NULL,
  `cod_tipo_espaco` INT NOT NULL,
  `cod_cidade` INT NOT NULL,
  PRIMARY KEY (`idt_area`),
  INDEX `fk_tb_espaco_td_tipo_espaco1_idx` (`cod_tipo_espaco` ASC),
  INDEX `fk_tb_espaco_td_cidade1_idx` (`cod_cidade` ASC),
  CONSTRAINT `fk_tb_espaco_td_tipo_espaco1`
    FOREIGN KEY (`cod_tipo_espaco`)
    REFERENCES `mydb`.`td_tipo_espaco` (`idt_tipo_imovel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_espaco_td_cidade1`
    FOREIGN KEY (`cod_cidade`)
    REFERENCES `mydb`.`td_cidade` (`idt_cidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_reserva`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_reserva` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_reserva` (
  `idt_reserva` INT NOT NULL AUTO_INCREMENT,
  `dta_inicio_reserva` DATE NOT NULL,
  `dta_fim_reserva` DATE NOT NULL,
  `vlr_reserva` DECIMAL(12,2) NOT NULL,
  `qtd_pessoa_reserva` INT NOT NULL,
  `cod_usuario` INT NOT NULL,
  `cod_espaco` INT NOT NULL,
  PRIMARY KEY (`idt_reserva`),
  INDEX `fk_tb_reserva_tb_usuario1_idx` (`cod_usuario` ASC),
  INDEX `fk_tb_reserva_tb_espaco1_idx` (`cod_espaco` ASC),
  CONSTRAINT `fk_tb_reserva_tb_usuario1`
    FOREIGN KEY (`cod_usuario`)
    REFERENCES `mydb`.`tb_usuario` (`idt_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_reserva_tb_espaco1`
    FOREIGN KEY (`cod_espaco`)
    REFERENCES `mydb`.`tb_espaco` (`idt_area`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_forma_pagamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_forma_pagamento` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_forma_pagamento` (
  `idt_forma_pagamento` INT NOT NULL AUTO_INCREMENT,
  `nme_forma_pagamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idt_forma_pagamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_anuncio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_anuncio` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_anuncio` (
  `idt_anuncio` INT NOT NULL AUTO_INCREMENT,
  `nme_anuncio` VARCHAR(50) NOT NULL,
  `dta_criacao_anuncio` DATE NOT NULL,
  `dsc_anuncio` VARCHAR(200) NULL,
  `cod_usuario` INT NOT NULL,
  `cod_imovel` INT NOT NULL,
  PRIMARY KEY (`idt_anuncio`),
  INDEX `fk_ta_anuncio_tb_usuario1_idx` (`cod_usuario` ASC),
  INDEX `fk_ta_anuncio_tb_imovel1_idx` (`cod_imovel` ASC),
  CONSTRAINT `fk_ta_anuncio_tb_usuario1`
    FOREIGN KEY (`cod_usuario`)
    REFERENCES `mydb`.`tb_usuario` (`idt_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_anuncio_tb_imovel1`
    FOREIGN KEY (`cod_imovel`)
    REFERENCES `mydb`.`td_tipo_espaco` (`idt_tipo_imovel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ta_pagamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ta_pagamento` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ta_pagamento` (
  `idt_pagamento` INT NOT NULL AUTO_INCREMENT,
  `dta_pagamento` DATE NOT NULL,
  `num_cartao_cred_pagamento` VARCHAR(16) NULL,
  `num_boleto_pagamento` VARCHAR(45) NULL,
  `id_transacao_pagamento` VARCHAR(45) NULL,
  `cod_forma_pagamento` INT NOT NULL,
  `cod_reserva` INT NOT NULL,
  `cod_usuario` INT NOT NULL,
  PRIMARY KEY (`idt_pagamento`),
  INDEX `fk_ta_pagamento_tb_forma_pagamento1_idx` (`cod_forma_pagamento` ASC),
  INDEX `fk_ta_pagamento_tb_reserva1_idx` (`cod_reserva` ASC),
  INDEX `fk_ta_pagamento_tb_usuario1_idx` (`cod_usuario` ASC),
  CONSTRAINT `fk_ta_pagamento_tb_forma_pagamento1`
    FOREIGN KEY (`cod_forma_pagamento`)
    REFERENCES `mydb`.`td_forma_pagamento` (`idt_forma_pagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_pagamento_tb_reserva1`
    FOREIGN KEY (`cod_reserva`)
    REFERENCES `mydb`.`tb_reserva` (`idt_reserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_pagamento_tb_usuario1`
    FOREIGN KEY (`cod_usuario`)
    REFERENCES `mydb`.`tb_usuario` (`idt_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_tipo_subespaco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_tipo_subespaco` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_tipo_subespaco` (
  `idt_tipo_subespaco` INT NOT NULL AUTO_INCREMENT,
  `nme_tipo_subespaco` VARCHAR(45) NOT NULL,
  `cod_tipo_espaco` INT NOT NULL,
  PRIMARY KEY (`idt_tipo_subespaco`),
  INDEX `fk_td_tipo_subespaco_td_tipo_espaco1_idx` (`cod_tipo_espaco` ASC),
  CONSTRAINT `fk_td_tipo_subespaco_td_tipo_espaco1`
    FOREIGN KEY (`cod_tipo_espaco`)
    REFERENCES `mydb`.`td_tipo_espaco` (`idt_tipo_imovel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_sub_espaco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_sub_espaco` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_sub_espaco` (
  `idt_sub_espaco` INT NOT NULL AUTO_INCREMENT,
  `dsc_sub_espaco` VARCHAR(200) NOT NULL,
  `cod_tipo_subespaco` INT NOT NULL,
  `cod_espaco` INT NOT NULL,
  PRIMARY KEY (`idt_sub_espaco`),
  INDEX `fk_tb_sub_espaco_td_tipo_subespaco1_idx` (`cod_tipo_subespaco` ASC),
  INDEX `fk_tb_sub_espaco_tb_espaco1_idx` (`cod_espaco` ASC),
  CONSTRAINT `fk_tb_sub_espaco_td_tipo_subespaco1`
    FOREIGN KEY (`cod_tipo_subespaco`)
    REFERENCES `mydb`.`td_tipo_subespaco` (`idt_tipo_subespaco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_sub_espaco_tb_espaco1`
    FOREIGN KEY (`cod_espaco`)
    REFERENCES `mydb`.`tb_espaco` (`idt_area`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_imagem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_imagem` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_imagem` (
  `idt_imagem` INT NOT NULL AUTO_INCREMENT,
  `img_imagem` BLOB NOT NULL,
  `cod_espaco` INT NULL,
  `cod_sub_espaco` INT NULL,
  PRIMARY KEY (`idt_imagem`),
  INDEX `fk_td_imagem_tb_espaco1_idx` (`cod_espaco` ASC),
  INDEX `fk_tb_imagem_tb_sub_espaco1_idx` (`cod_sub_espaco` ASC),
  CONSTRAINT `fk_td_imagem_tb_espaco1`
    FOREIGN KEY (`cod_espaco`)
    REFERENCES `mydb`.`tb_espaco` (`idt_area`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_imagem_tb_sub_espaco1`
    FOREIGN KEY (`cod_sub_espaco`)
    REFERENCES `mydb`.`tb_sub_espaco` (`idt_sub_espaco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ta_comentarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ta_comentarios` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ta_comentarios` (
  `idt_comentarios` INT NOT NULL AUTO_INCREMENT,
  `cmt_comentarios` TEXT NOT NULL,
  `cod_usuario` INT NOT NULL,
  `cod_anuncio` INT NOT NULL,
  PRIMARY KEY (`idt_comentarios`),
  INDEX `fk_tb_comentarios_tb_usuario1_idx` (`cod_usuario` ASC),
  INDEX `fk_tb_comentarios_tb_anuncio1_idx` (`cod_anuncio` ASC),
  CONSTRAINT `fk_tb_comentarios_tb_usuario1`
    FOREIGN KEY (`cod_usuario`)
    REFERENCES `mydb`.`tb_usuario` (`idt_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_comentarios_tb_anuncio1`
    FOREIGN KEY (`cod_anuncio`)
    REFERENCES `mydb`.`tb_anuncio` (`idt_anuncio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_avaliacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_avaliacao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_avaliacao` (
  `idt_avaliacao` INT NOT NULL AUTO_INCREMENT,
  `vlr_nota_avaliacao` INT NOT NULL,
  `cmt_avaliacao` TEXT NULL,
  `cod_usuario` INT NOT NULL,
  `cod_reserva` INT NOT NULL,
  PRIMARY KEY (`idt_avaliacao`),
  INDEX `fk_tb_avaliacao_tb_usuario1_idx` (`cod_usuario` ASC),
  INDEX `fk_tb_avaliacao_tb_reserva1_idx` (`cod_reserva` ASC),
  CONSTRAINT `fk_tb_avaliacao_tb_usuario1`
    FOREIGN KEY (`cod_usuario`)
    REFERENCES `mydb`.`tb_usuario` (`idt_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_avaliacao_tb_reserva1`
    FOREIGN KEY (`cod_reserva`)
    REFERENCES `mydb`.`tb_reserva` (`idt_reserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_comodidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_comodidades` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_comodidades` (
  `idt_comodidades` INT NOT NULL AUTO_INCREMENT,
  `nme_comodidades` VARCHAR(45) NOT NULL,
  `cod_espaco` INT NOT NULL,
  PRIMARY KEY (`idt_comodidades`),
  INDEX `fk_td_comodidades_tb_espaco1_idx` (`cod_espaco` ASC),
  CONSTRAINT `fk_td_comodidades_tb_espaco1`
    FOREIGN KEY (`cod_espaco`)
    REFERENCES `mydb`.`tb_espaco` (`idt_area`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_periodo_disponibilidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_periodo_disponibilidade` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_periodo_disponibilidade` (
  `idt_disponibilidade` INT NOT NULL AUTO_INCREMENT,
  `dta_inicio_disponibilidade` DATE NOT NULL,
  `dta_fim_disponibilidade` DATE NOT NULL,
  `cod_espaco` INT NOT NULL,
  PRIMARY KEY (`idt_disponibilidade`),
  INDEX `fk_tb_disponibilidade_tb_espaco1_idx` (`cod_espaco` ASC),
  CONSTRAINT `fk_tb_disponibilidade_tb_espaco1`
    FOREIGN KEY (`cod_espaco`)
    REFERENCES `mydb`.`tb_espaco` (`idt_area`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_bairro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_bairro` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_bairro` (
  `idt_bairro` INT NOT NULL AUTO_INCREMENT,
  `nme_bairro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idt_bairro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_rua`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_rua` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_rua` (
  `idt_rua_quadra` INT NOT NULL AUTO_INCREMENT,
  `nme_rua` VARCHAR(45) NOT NULL,
  `ref_rua` VARCHAR(60) NULL,
  `cod_bairro` INT NOT NULL,
  PRIMARY KEY (`idt_rua_quadra`),
  INDEX `fk_td_rua_quadra_td_bairro1_idx` (`cod_bairro` ASC),
  CONSTRAINT `fk_td_rua_quadra_td_bairro1`
    FOREIGN KEY (`cod_bairro`)
    REFERENCES `mydb`.`td_bairro` (`idt_bairro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`td_num_casa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`td_num_casa` ;

CREATE TABLE IF NOT EXISTS `mydb`.`td_num_casa` (
  `idt_casa` INT NOT NULL AUTO_INCREMENT,
  `id_casa` VARCHAR(5) NOT NULL,
  `ref_casa` VARCHAR(50) NULL,
  `cod_rua` INT NOT NULL,
  PRIMARY KEY (`idt_casa`),
  INDEX `fk_td_casa_td_rua1_idx` (`cod_rua` ASC),
  CONSTRAINT `fk_td_casa_td_rua1`
    FOREIGN KEY (`cod_rua`)
    REFERENCES `mydb`.`td_rua` (`idt_rua_quadra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
