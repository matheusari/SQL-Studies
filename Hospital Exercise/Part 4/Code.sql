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

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('1', '2016-02-04', '10:10', 'Anny Quintanilha ', 'Amanda Jesus', '180', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('2', '2016-04-11', '10:10', 'Gisela Espinosa', 'Laís Oliveira', '200', 'NOTRE DAME INTERMEDICA SAUDE S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('3', '2016-08-01', '10:10', 'Gael Milheiro Lemes', 'Benjamin Cardoso', '300', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('4', '2016-09-23', '10:10', 'Anny Quintanilha ', 'Nicolas Viana', '80', 'NOTRE DAME INTERMEDICA SAUDE S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('5', '2017-01-24', '10:10', 'Ezequiel Pestana Henriques', 'Nicolas Viana', '130', 'NOTRE DAME INTERMEDICA SAUDE S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('6', '2017-01-30', '10:10', 'Suéli Simão Pegado', 'Maria Alice Jesus', '240', 'SOBAM CENTRO MEDICO HOSPITALAR');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('7', '2017-04-04', '10:10', 'Nelson Anjos Palmeira', 'Laura Lopes', '550', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('8', '2017-05-15', '10:10', 'Nelson Anjos Palmeira', 'Gabriela Vieira', '490', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('9', '2017-09-14', '10:10', 'Tito Carqueijeiro', 'Lucas Fogaça', '310', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('10', '2017-12-22', '10:10', 'Ezequiel Pestana Henriques', 'Paulo Moreira', '190', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('11', '2018-03-03', '10:10', 'Alisson Sacramento ', 'Gabriela Vieira', '100', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('12', '2018-06-01', '10:10', 'Gisela Espinosa', 'Amanda Jesus', '200', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('13', '2018-07-01', '10:10', 'Tito Carqueijeiro', 'Marcelo Novaes', '60', 'NOTRE DAME INTERMEDICA SAUDE S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('14', '2018-07-05', '10:10', 'Gisela Espinosa', 'Agatha Moura', '300', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('15', '2018-12-03', '10:10', 'Gael Milheiro Lemes', 'Bruno da Mota', '120', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('16', '2019-05-09', '10:10', 'Anny Quintanilha ', 'Agatha Moura', '450', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('17', '2019-08-18', '10:10', 'Fabiano Gomide', 'Ryan Araújo', '300', 'SOBAM CENTRO MEDICO HOSPITALAR');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('18', '2019-09-02', '10:10', 'Tito Carqueijeiro', 'Amanda Jesus', '220', 'UNIMED');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('19', '2019-12-27', '10:10', 'Lívia Veloso', 'Milena Duarte', '120', 'SOBAM CENTRO MEDICO HOSPITALAR');

INSERT INTO `hospital`.`consulta` (`id`, `data`, `horario`, `medico`, `paciente`, `valor`, `convenio`) VALUES ('20', '2019-12-28', '10:10', 'Alisson Sacramento ', 'Maria Vitória Moraes', '670', 'UNIMED');

DELETE FROM `hospital`.`consulta` WHERE (`id` = '15');

DELETE FROM `hospital`.`consulta` WHERE (`id` = '7');

DELETE FROM `hospital`.`consulta` WHERE (`id` = '3');

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

INSERT INTO `hospital`.`convenio` (`id`, `nome_empresa`, `cnpj_empresa`, `tempo_carencia`) VALUES ('1', 'UNIMED', '02812468000106', '15');

INSERT INTO `hospital`.`convenio` (`id`, `nome_empresa`, `cnpj_empresa`, `tempo_carencia`) VALUES ('2', 'SOBAM CENTRO MEDICO HOSPITALAR', '50739135000141', '20');

INSERT INTO `hospital`.`convenio` (`id`, `nome_empresa`, `cnpj_empresa`, `tempo_carencia`) VALUES ('3', 'NOTRE DAME INTERMEDICA SAUDE S.A', '44649812000138', '60');

INSERT INTO `hospital`.`convenio` (`id`, `nome_empresa`, `cnpj_empresa`, `tempo_carencia`) VALUES ('4', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A', '29309127000179', '30');

DELETE FROM `hospital`.`convenio` WHERE (`id` = '4');

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

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('2', '2', '3');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('3', '3', '4');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('4', '4', '3');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('5', '5', '3');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('6', '6', '2');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('7', '7', '4');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('8', '8', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('9', '9', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('10', '10', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('11', '11', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('12', '12', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('13', '13', '3');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('14', '14', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('15', '15', '4');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('16', '16', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('17', '17', '2');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('18', '18', '1');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('19', '19', '2');

INSERT INTO `hospital`.`consulta_convenio` (`id`, `consulta_id`, `convenio_id`) VALUES ('20', '20', '1');

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

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('1', 'Anny Quintanilha ', '86132473009', 'Rua Flores 10 apto 101', '1970-11-10', '69 37525488', '120935', 'pediatria', 'especialista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('2', 'Suéli Simão Pegado', '62876978067', 'Avenida Japão 50', '1990-08-27', '97 28102734', '15891', 'clínica geral', 'residente');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('3', 'Alisson Sacramento ', '80814279023', 'Rua Albieri 480', '1981-01-15', '79 27180264', '178105', 'gastroenterologia', 'especialista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('4', 'Lívia Veloso', '20924987030', 'Travessa A 89', '1972-03-22', '61 30191483', '17897', 'pediatria', 'especialista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('5', 'Gael Milheiro Lemes', '38603737061', 'Rua das Rosas 80 apto 200', '1964-02-13', '82 24337762', '9826', 'dermatologista', 'dermatologista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('6', 'Gisela Espinosa', '23529091049', 'Avenida Santos 90', '1980-09-12', '86 33684812', '34548', 'clínica geral', 'generalista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('7', 'Nelson Anjos Palmeira', '03626639045', 'Rua Álamo, 180 ap 90', '1980-10-14', '54 39414795', '344789', 'pediatria', 'especialista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('8', 'Ezequiel Pestana Henriques', '67297959057', 'Avenida Chateaubriand 150', '1979-06-30', '69 25376076', '9756', 'pediatria', 'especialista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('9', 'Tito Carqueijeiro', '74588651056', 'Rua Flores 670', '1973-05-19', '83 32728326', '14777', 'clínica geral', 'generalista');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`) VALUES ('10', 'Fabiano Gomide', '32972518080', 'Avenida das Águas 600', '1989-08-31', '63 32305071', '65765', 'clínica geral', 'residente');

ALTER TABLE `hospital`.`medico` 
ADD COLUMN `atividade` VARCHAR(200) NOT NULL AFTER `formacao`;

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`, `atividade`) VALUES ('11', 'Elaine Faelis', '32972514444', 'Avenida São Roque 567', '1955-2-12', '11 97505455', '47389', 'clínica geral', 'generalista', 'inativo');

INSERT INTO `hospital`.`medico` (`id`, `nome`, `cpf`, `endereco`, `data_nasc`, `tel_com_dd`, `crm`, `especialidade`, `formacao`, `atividade`) VALUES ('12', 'José Ari Ferreira', '32972515676', 'Rua das Pétalas 444', '1961-10-10', '11 97543243', '29736', 'dermatologista', 'especialista', 'inativo');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '10');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '9');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '8');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '7');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '6');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '5');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '4');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '2');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '3');

UPDATE `hospital`.`medico` SET `atividade` = 'ativo' WHERE (`id` = '1');

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

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('2', '2', '6');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('3', '3', '5');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('4', '4', '1');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('5', '5', '8');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('6', '6', '2');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('7', '7', '7');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('8', '8', '7');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('9', '9', '9');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('10', '10', '8');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('11', '11', '3');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('12', '12', '6');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('13', '13', '9');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('14', '14', '6');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('15', '15', '5');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('16', '16', '1');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('17', '17', '10');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('18', '18', '9');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('19', '19', '4');

INSERT INTO `hospital`.`consulta_medico` (`id`, `consulta_id`, `medico_id`) VALUES ('20', '20', '3');

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

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('1', 'Amanda Jesus', '56921281019', '251211514', 'Av Santa Rita 1865', '2002-12-05', '55 22229557', 'mawefe5289@yasiok.com', 'UNIMED', '84763');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('2', 'Nicolas Viana', '69364132009', '138419140', 'Rua Santa Maria 42', '2001-10-05', '53 21757561', 'mawefe5290@yasiok.com', 'NOTRE DAME INTERMEDICA SAUDE S.A', '90927');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('3', 'Lucas Fogaça', '98197120099', '156767995', 'Travessia Sergipe 9502', '1971-02-03', '62 32587556', 'mawefe5288@yasiok.com', 'UNIMED', '76543');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('4', 'Laura Lopes', '01234172011', '488449856', 'Rua São Pedro 2670', '1996-02-09', '63 38864621', 'mawefe52@yasiok.com', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A', '09156');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('5', 'Bruno da Mota', '28597021055', '322834727', 'Rua Congo 200', '2008-10-10', '61 39733237', 'mawefe589@yasiok.com', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A', '46924');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('6', 'Paulo Moreira', '41333114001', '308744652', 'Rua Onze 11', '2002-03-11', '66 36011362', 'mawefe52899@yasiok.com', 'UNIMED', '09876');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('7', 'Laís Oliveira', '88926838021', '367854351', 'Avenida Projetada 6987', '1997-04-4', '73 24687172', 'mawefe528889@yasiok.com', 'NOTRE DAME INTERMEDICA SAUDE S.A', '12345');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('8', 'Maria Vitória Moraes', '48671334007', '474962180', 'Rua José Rabello Portella 1929', '2004-04-09', '68 34440582', 'mawefe5290489@yasiok.com', 'UNIMED', '23456');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('9', 'Milena Duarte', '34971494030', '274352576', 'Av 9 de Julho 32', '2000-01-12', '88 34210901', 'mawefe5294589@yasiok.com', 'SOBAM CENTRO MEDICO HOSPITALAR', '34566');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('10', 'Ryan Araújo', '56533631039', '363887787', 'Av Castro Alves 9337', '2002-12-10', '88 34932618', 'mawefe5123289@yasiok.com', 'SOBAM CENTRO MEDICO HOSPITALAR', '56789');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('11', 'Benjamin Cardoso', '55909051091', '480234437', 'Av Fernão Dias Paes Leme 4000', '1980-11-10', '32 36835602', 'mawefe52095089@yasiok.com', 'AMIL ASSISTÊNCIA MÉDICA INTERNACIONAL S.A', '56745');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('12', 'Maria Alice Jesus', '00278596061', '418451485', 'Rua da Paz 2834', '1979-09-06', '27 23717052', 'mawefe522938989@yasiok.com', 'SOBAM CENTRO MEDICO HOSPITALAR', '17648');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('13', 'Gabriela Vieira', '61453188053', '461363632', 'Rua São José 9516', '1973-10-05', '92 24686678', 'mawefe509765289@yasiok.com', 'UNIMED', '19844');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('14', 'Marcelo Novaes', '12591508011', '342548785', 'Rua Itália 4026', '2000-04-02', '79 21394447', 'mawefe5209876389@yasiok.com', 'NOTRE DAME INTERMEDICA SAUDE S.A', '11234');

INSERT INTO `hospital`.`paciente` (`id`, `nome`, `cpf`, `rg`, `endereco`, `data_nasc`, `tel_com_ddd`, `email`, `convenio`, `num_convenio`) VALUES ('15', 'Agatha Moura', '19288182004', '236331322', 'Av São Jorge 5077', '2006-04-02', '68 23555535', 'mawefe5280987649@yasiok.com', 'UNIMED', '44446');

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

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('2', '2', '7');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('3', '3', '11');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('4', '4', '2');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('5', '5', '2');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('6', '6', '12');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('7', '7', '4');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('8', '8', '13');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('9', '9', '3');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('10', '10', '6');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('11', '11', '13');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('12', '12', '1');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('13', '13', '14');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('14', '14', '15');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('15', '15', '5');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('16', '16', '15');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('17', '17', '10');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('18', '18', '1');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('19', '19', '9');

INSERT INTO `hospital`.`consulta_paciente` (`id`, `consulta_id`, `paciente_id`) VALUES ('20', '20', '8');

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


INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('1', 'Ana Carolina Monteiro', '56921281035', '48738');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('2', 'Bruno Fernando dos Reis', '69364132456', '29871');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('3', 'Pedro Henrique Dias', '98197120075', '99829');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('4', 'Larissa Lima', '01234172123', '29817');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('5', 'Meire Anne Fagundes', '28597021021', '98176');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('6', 'Rose Meire Felippe', '41333114033', '18871');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('7', 'Custódio Tazava da Silva', '88926838047', '11187');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('8', 'Maria Eduarda Faelis', '48671334088', '29733');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('9', 'Gabriela da Silva Ferreira', '34971494023', '30983');

INSERT INTO `hospital`.`enfermeiro(a)` (`id`, `nome`, `cpf`, `cne`) VALUES ('10', 'Tereza Floriano de Andrade', '56533631030', '33827');

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

INSERT INTO `hospital`.`especialidade` (`id`, `nome_especialidade`) VALUES ('1', 'pediatria');

INSERT INTO `hospital`.`especialidade` (`id`, `nome_especialidade`) VALUES ('2', 'clínica geral');

INSERT INTO `hospital`.`especialidade` (`id`, `nome_especialidade`) VALUES ('3', 'gastroenterologia');

INSERT INTO `hospital`.`especialidade` (`id`, `nome_especialidade`) VALUES ('4', 'dermatologista');

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

INSERT INTO `hospital`.`formacao` (`id`, `nome_formacao`) VALUES ('1', 'especialista');

INSERT INTO `hospital`.`formacao` (`id`, `nome_formacao`) VALUES ('2', 'generalista');

INSERT INTO `hospital`.`formacao` (`id`, `nome_formacao`) VALUES ('3', 'residente');

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

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('1', '2016-05-10', '2016-05-25', '2016-05-23', 'Entubado', 'Anny Quintanilha ', 'Amanda Jesus', 'Ana Carolina Monteiro', '202');

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('2', '2016-08-03', '2016-09-15', '2016-09-20', 'Entubado', 'Suéli Simão Pegado', 'Nicolas Viana', 'Bruno Fenando dos Reis', '14');

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('3', '2017-02-15', '2017-02-20', '2017-02-22', 'Entubado', 'Alisson Sacramento ', 'Lucas Fogaça', 'Pedro Henrique Dias', '202');

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('4', '2017-12-09', '2017-12-28', '2017-12-24', 'Entubado', 'Lívia Veloso', 'Laura Lopes', 'Larissa Lima', '202');

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('5', '2018-01-02', '2018-01-22', '2018-01-22', 'Entubado', 'Gael Milheiro Lemes', 'Bruno da Mota', 'Meire Anne Fagundes', '14');

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('6', '2018-03-30', '2018-04-15', '2018-04-10', 'Entubado', 'Gisela Espinosa', 'Nicolas Viana', 'Rose Meire Felippe', '213');

INSERT INTO `hospital`.`internacao` (`id`, `data_entrada`, `data_prev_alta`, `data_alta`, `procedimento`, `medico`, `paciente`, `enfermeiro`, `quarto`) VALUES ('7', '2019-06-22', '2019-07-07', '2019-07-10', 'Entubado', 'Nelson Anjos Palmeira', 'Amanda Jesus', 'Custódio Tazava da Silva', '213');

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

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('2', '2', '2');

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('3', '3', '3');

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('4', '4', '4');

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('5', '5', '5');

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('6', '6', '6');

INSERT INTO `hospital`.`internacao_enfermeiro` (`id`, `internacao_Id`, `enfermeiro_id`) VALUES ('7', '7', '7');

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

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('2', '2', '2');

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('3', '3', '3');

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('4', '4', '4');

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('5', '5', '5');

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('6', '6', '6');

INSERT INTO `hospital`.`internacao_medico` (`id`, `internacao_id`, `paciente_id`) VALUES ('7', '7', '7');

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

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('2', '2', '2');

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('3', '3', '3');

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('4', '4', '4');

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('5', '5', '5');

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('6', '6', '2');

INSERT INTO `hospital`.`internacao_paciente` (`id`, `internacao_id`, `paciente_id`) VALUES ('7', '7', '1');

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

INSERT INTO `hospital`.`quarto` (`id`, `numero`, `tipo`) VALUES ('1', '14', 'Apartamento');

INSERT INTO `hospital`.`quarto` (`id`, `numero`, `tipo`) VALUES ('2', '202', 'Quarto Duplo');

INSERT INTO `hospital`.`quarto` (`id`, `numero`, `tipo`) VALUES ('3', '213', 'Enfermaria');

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

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('1', '1', '2');

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('2', '2', '1');

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('3', '3', '2');

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('4', '4', '2');

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('5', '5', '1');

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('6', '6', '3');

INSERT INTO `hospital`.`internacao_quarto` (`id`, `internacao_id`, `quarto_id`) VALUES ('7', '7', '3');

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


INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('2', '2', '2');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('3', '3', '3');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('4', '4', '1');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('5', '5', '4');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('6', '6', '2');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('7', '7', '1');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('8', '8', '1');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('9', '9', '2');

INSERT INTO `hospital`.`medico_especialidade` (`id`, `medico_id`, `especialidade`) VALUES ('10', '10', '2');

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

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('2', '2', '3');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('3', '3', '1');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('4', '4', '1');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('5', '5', '1');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('6', '6', '2');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('7', '7', '1');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('8', '8', '1');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('9', '9', '2');

INSERT INTO `hospital`.`medico_formacao` (`id`, `medico_id`, `formacao_id`) VALUES ('10', '10', '3');

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

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('1', '1', '1');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('2', '2', '3');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('3', '3', '1');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('4', '4', '4');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('5', '5', '4');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('6', '6', '1');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('7', '7', '3');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('8', '8', '1');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('9', '9', '2');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('10', '10', '2');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('11', '11', '4');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('12', '12', '2');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('13', '13', '1');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('14', '14', '3');

INSERT INTO `hospital`.`paciente_convenio` (`id`, `paciente_id`, `convenio_id`) VALUES ('15', '15', '1');

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

INSERT INTO `hospital`.`tipo_quarto` (`id`, `descricao`, `valor_diaria`, `quarto_id`) VALUES ('1', 'Apartamento com 56 metros quadrados.', '80', '1');

INSERT INTO `hospital`.`tipo_quarto` (`id`, `descricao`, `valor_diaria`, `quarto_id`) VALUES ('2', 'Quarto duplo com 100 metros quadrados.', '150', '2');

INSERT INTO `hospital`.`tipo_quarto` (`id`, `descricao`, `valor_diaria`, `quarto_id`) VALUES ('3', 'Enfermaria com 35 metros quadrados.', '30', '3');


-- 1. Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.
SELECT * FROM consulta WHERE data between 
TO_DATE('01/01/2020','DD/MM/YYYY') and 
TO_DATE('31/12/2020' ,'DD/MM/YYYY');

SELECT AVG(valor) FROM consulta;

--  Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.
SELECT data_prev_alta, data_alta FROM internacao WHERE data_alta > data_prev_alta;

--  Receituário completo da primeira consulta registrada com receituário associado.
SELECT instrucoes FROM receita WHERE instrucoes is NOT NULL;

--  Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).
SELECT * FROM consulta WHERE valor = (SELECT MIN(valor) FROM consulta WHERE convenio is NULL);
SELECT * FROM consulta WHERE valor = (SELECT MAX(valor) FROM consulta WHERE convenio is NULL);

--  Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.
SELECT * FROM internacao WHERE quarto = '202';
SELECT * FROM internacao WHERE quarto = '14';
SELECT * FROM internacao WHERE quarto = '213';

--  Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.
SELECT data_entrada, data_alta, procedimento, quarto FROM internacao WHERE quarto = 'apartamento';

-- Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.
SELECT nome, crm FROM medico

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
