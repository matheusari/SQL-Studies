SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hospital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `hospital` ;

-- -----------------------------------------------------
-- Table `hospital`.`consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`consulta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `horario` TIME NOT NULL,
  `medico` VARCHAR(200) NOT NULL,
  `paciente` VARCHAR(200) NOT NULL,
  `valor` INT NOT NULL,
  `convenio` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`convenio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`convenio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_empresa` VARCHAR(200) NOT NULL,
  `cnpj_empresa` VARCHAR(14) NOT NULL,
  `tempo_carencia` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `cnpj_empresa_UNIQUE` (`cnpj_empresa` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`consulta_convenio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`consulta_convenio` (
  `id` INT NOT NULL,
  `consulta_id` INT NULL DEFAULT NULL,
  `convenio_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_consulta_idx` (`consulta_id` ASC) VISIBLE,
  INDEX `fk_convenio_idx` (`convenio_id` ASC) VISIBLE,
  CONSTRAINT `fk_consulta`
    FOREIGN KEY (`consulta_id`)
    REFERENCES `hospital`.`consulta` (`id`),
  CONSTRAINT `fk_convenio`
    FOREIGN KEY (`convenio_id`)
    REFERENCES `hospital`.`convenio` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`medico` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `data_nasc` DATE NULL DEFAULT NULL,
  `tel_com_dd` VARCHAR(11) NULL DEFAULT NULL,
  `crm` VARCHAR(15) NOT NULL,
  `especialidade` VARCHAR(200) NOT NULL,
  `formacao` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `crm_UNIQUE` (`crm` ASC) VISIBLE,
  UNIQUE INDEX `tel_com_dd_UNIQUE` (`tel_com_dd` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`consulta_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`consulta_medico` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `consulta_id` INT NULL DEFAULT NULL,
  `medico_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_consulta_idx` (`consulta_id` ASC) VISIBLE,
  INDEX `fk_medico_idx` (`medico_id` ASC) VISIBLE,
  CONSTRAINT `fk_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital`.`medico` (`id`),
  CONSTRAINT `fkk_consulta`
    FOREIGN KEY (`consulta_id`)
    REFERENCES `hospital`.`consulta` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `rg` VARCHAR(9) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `data_nasc` DATE NULL DEFAULT NULL,
  `tel_com_ddd` VARCHAR(11) NULL DEFAULT NULL,
  `email` VARCHAR(200) NULL DEFAULT NULL,
  `convenio` VARCHAR(200) NOT NULL,
  `num_convenio` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `num_convenio_UNIQUE` (`num_convenio` ASC) VISIBLE,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `rg_UNIQUE` (`rg` ASC) VISIBLE,
  UNIQUE INDEX `tel_com_ddd_UNIQUE` (`tel_com_ddd` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`consulta_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`consulta_paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `consulta_id` INT NULL DEFAULT NULL,
  `paciente_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkkk_consulta_idx` (`consulta_id` ASC) VISIBLE,
  INDEX `fk_paciente_idx` (`paciente_id` ASC) VISIBLE,
  CONSTRAINT `fk_paciente`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital`.`paciente` (`id`),
  CONSTRAINT `fkkk_consulta`
    FOREIGN KEY (`consulta_id`)
    REFERENCES `hospital`.`consulta` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`enfermeiro(a)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`enfermeiro(a)` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `cne` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `cne_UNIQUE` (`cne` ASC) VISIBLE,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`especialidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`especialidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_especialidade` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`formacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`formacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_formacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`internacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`internacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_entrada` DATE NOT NULL,
  `data_prev_alta` DATE NOT NULL,
  `data_alta` DATE NOT NULL,
  `procedimento` VARCHAR(200) NOT NULL,
  `medico` VARCHAR(200) NOT NULL,
  `paciente` VARCHAR(200) NOT NULL,
  `enfermeiro` VARCHAR(200) NOT NULL,
  `quarto` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`internacao_enfermeiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`internacao_enfermeiro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `internacao_Id` INT NULL DEFAULT NULL,
  `enfermeiro_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_internacao_idx` (`internacao_Id` ASC) VISIBLE,
  INDEX `fk_enfermeiro_idx` (`enfermeiro_id` ASC) VISIBLE,
  CONSTRAINT `fk_enfermeiro`
    FOREIGN KEY (`enfermeiro_id`)
    REFERENCES `hospital`.`enfermeiro(a)` (`id`),
  CONSTRAINT `fk_internacao`
    FOREIGN KEY (`internacao_Id`)
    REFERENCES `hospital`.`internacao` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`internacao_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`internacao_medico` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `internacao_id` INT NULL DEFAULT NULL,
  `medico_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_internacao_idx` (`internacao_id` ASC) VISIBLE,
  INDEX `fk_paciente_idx` (`medico_id` ASC) VISIBLE,
  CONSTRAINT `fkkkk_internacao`
    FOREIGN KEY (`internacao_id`)
    REFERENCES `hospital`.`internacao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkkkkkk_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital`.`medico` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`internacao_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`internacao_paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `internacao_id` INT NULL DEFAULT NULL,
  `paciente_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkkk_internacao_idx` (`internacao_id` ASC) VISIBLE,
  INDEX `fkk_paciente_idx` (`paciente_id` ASC) VISIBLE,
  CONSTRAINT `fkk_paciente`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital`.`paciente` (`id`),
  CONSTRAINT `fkkk_internacao`
    FOREIGN KEY (`internacao_id`)
    REFERENCES `hospital`.`internacao` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`quarto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`internacao_quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`internacao_quarto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `internacao_id` INT NULL DEFAULT NULL,
  `quarto_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkkkk_internacao_idx` (`internacao_id` ASC) VISIBLE,
  INDEX `fk_quarto_idx` (`quarto_id` ASC) VISIBLE,
  CONSTRAINT `fk_quarto`
    FOREIGN KEY (`quarto_id`)
    REFERENCES `hospital`.`quarto` (`id`),
  CONSTRAINT `fkkkk_internacao`
    FOREIGN KEY (`internacao_id`)
    REFERENCES `hospital`.`internacao` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`medico_especialidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`medico_especialidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `medico_id` INT NULL DEFAULT NULL,
  `especialidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkkk_medico_idx` (`medico_id` ASC) VISIBLE,
  INDEX `fk_especialidade_idx` (`especialidade` ASC) VISIBLE,
  CONSTRAINT `fk_especialidade`
    FOREIGN KEY (`especialidade`)
    REFERENCES `hospital`.`especialidade` (`id`),
  CONSTRAINT `fkkk_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital`.`medico` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`medico_formacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`medico_formacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `medico_id` INT NULL DEFAULT NULL,
  `formacao_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkkkk_medico_idx` (`medico_id` ASC) VISIBLE,
  INDEX `fk_formacao_idx` (`formacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_formacao`
    FOREIGN KEY (`formacao_id`)
    REFERENCES `hospital`.`formacao` (`id`),
  CONSTRAINT `fkkkk_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital`.`medico` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`paciente_convenio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`paciente_convenio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `paciente_id` INT NULL DEFAULT NULL,
  `convenio_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_convenio_idx` (`convenio_id` ASC) VISIBLE,
  INDEX `fkkk_paciente_idx` (`paciente_id` ASC) VISIBLE,
  CONSTRAINT `fkk_convenio`
    FOREIGN KEY (`convenio_id`)
    REFERENCES `hospital`.`convenio` (`id`),
  CONSTRAINT `fkkk_paciente`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital`.`paciente` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`receita` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `medicamento` VARCHAR(200) NOT NULL,
  `quantidade` VARCHAR(200) NOT NULL,
  `instrucoes` VARCHAR(200) NOT NULL,
  `medico` VARCHAR(200) NOT NULL,
  `paciente` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`receita_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`receita_medico` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `receita_id` INT NULL DEFAULT NULL,
  `medico_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkkkkk_medico_idx` (`medico_id` ASC) VISIBLE,
  INDEX `fk_receita_idx` (`receita_id` ASC) VISIBLE,
  CONSTRAINT `fk_receita`
    FOREIGN KEY (`receita_id`)
    REFERENCES `hospital`.`receita` (`id`),
  CONSTRAINT `fkkkkk_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital`.`medico` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`receita_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`receita_paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `receita_id` INT NULL DEFAULT NULL,
  `paciente_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fkk_receita_idx` (`receita_id` ASC) VISIBLE,
  INDEX `fkkkk_paciente_idx` (`paciente_id` ASC) VISIBLE,
  CONSTRAINT `fkk_receita`
    FOREIGN KEY (`receita_id`)
    REFERENCES `hospital`.`receita` (`id`),
  CONSTRAINT `fkkkk_paciente`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital`.`paciente` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`tipo_quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tipo_quarto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `valor_diaria` VARCHAR(45) NOT NULL,
  `quarto_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quarto_idx` (`quarto_id` ASC) VISIBLE,
  CONSTRAINT `fkk_quarto`
    FOREIGN KEY (`quarto_id`)
    REFERENCES `hospital`.`quarto` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
