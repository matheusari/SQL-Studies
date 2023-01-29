CREATE SCHEMA `fotografia` ;

CREATE TABLE `fotografia`.`fotografo` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  `RG` VARCHAR(15) NOT NULL,
  `Data de Nascimento` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `E-Mail` VARCHAR(200) NOT NULL,
  `Cachê por dia` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE,
  UNIQUE INDEX `E-Mail_UNIQUE` (`E-Mail` ASC) VISIBLE,
  UNIQUE INDEX `Telefone_UNIQUE` (`Telefone` ASC) VISIBLE,
  UNIQUE INDEX `Cachê por dia_UNIQUE` (`Cachê por dia` ASC) VISIBLE);

INSERT INTO `fotografia`.`fotografo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê por dia`) VALUES ('1', 'Tomás Cunha Ferreira', '12451048450', '174512727', '1971-02-03', '11 978963789', 'TomasCunhaFerreira@rhyta.com', '470');
INSERT INTO `fotografia`.`fotografo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê por dia`) VALUES ('2', 'Mateus Correa Fernandes', '7146520080', '230329275', '1996-09-15', '11 955156658', 'MateusCorreiaFernandes@rhyta.com', '320');
INSERT INTO `fotografia`.`fotografo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê por dia`) VALUES ('3', 'Júlio Alves Barros', '74477697031', '228071501', '1982-10-10', '11 965624540', 'JulioAlvesBarros@rhyta.com', '599');
INSERT INTO `fotografia`.`fotografo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê por dia`) VALUES ('4', 'Clara Dias Souza', '6821344060', '127029850', '1987-05-29', '13 976395763', 'ClaraDiasSouza@jourrapide.com', '499');
INSERT INTO `fotografia`.`fotografo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê por dia`) VALUES ('5', 'Manuela Costa Barros', '1367860067', '424383330', '2000-11-23', '11 999622449', 'ManuelaCostaBarros@rhyta.com', '250');

CREATE TABLE `fotografia`.`Assistente` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  `RG` VARCHAR(15) NOT NULL,
  `Data de Nascimento` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `E-mail` VARCHAR(200) NOT NULL,
  `Cachê por dia` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE);

INSERT INTO `fotografia`.`Assistente` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-mail`, `Cachê por dia`) VALUES ('1', 'Danilo Pereira Melo', '13265884007', '243298894', '1999-08-13', '11 951214925', 'DaniloPereiraMelo@rhyta.com', '150');
INSERT INTO `fotografia`.`Assistente` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-mail`, `Cachê por dia`) VALUES ('2', 'Thaís Barbosa Cardoso', '43663185123', '200837667', '1996-12-04', '11 975425349', 'ThaisBarbosaCardoso@armyspy.com', '200');
INSERT INTO `fotografia`.`Assistente` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-mail`, `Cachê por dia`, `*Observações`) VALUES ('3', 'Rafael Vitor Gomes', '34401409035', '183602195', '2003-01-18', '11 994650249', 'RafaelVitorGomes@armyspy.com', '80', 'Apenas pela manhã');

CREATE TABLE `fotografia`.`Modelo` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  `RG` VARCHAR(15) NOT NULL,
  `Data de Nascimento` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `E-Mail` VARCHAR(200) NOT NULL,
  `Tamanho Calça` VARCHAR(15) NOT NULL,
  `Tamanho Manequim` VARCHAR(15) NOT NULL,
  `Tamanho Pé` VARCHAR(15) NOT NULL,
  `Cachê p/ Dia` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE,
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE);

INSERT INTO `fotografia`.`Modelo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Tamanho Calça`, `Tamanho Manequim`, `Tamanho Pé`, `Cachê p/ Dia`) VALUES ('1', 'Maria Eduarda Faelis', '34019088047', '152684864', '2001.05.18', '11 996576645', 'DudaFaelis@gmail.com', '36', 'PP', '35', '950');
INSERT INTO `fotografia`.`Modelo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Tamanho Calça`, `Tamanho Manequim`, `Tamanho Pé`, `Cachê p/ Dia`, `*Observações`) VALUES ('2', 'Isabela Almeida Oliveira', '43206463041', '395569801', '1999.03.16', '11 998529138', 'IsabelaAlmeidaOliveira@dayrep.com', '38', 'P', '37', '670', 'Não pode a noite');
INSERT INTO `fotografia`.`Modelo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Tamanho Calça`, `Tamanho Manequim`, `Tamanho Pé`, `Cachê p/ Dia`) VALUES ('3', 'Anna Martins Ferreira', '18603260052', '541671464', '2002.05.15', '11 985268252', 'AnnaMartinsFerreira@teleworm.us', '42', 'M', '39', '890');
INSERT INTO `fotografia`.`Modelo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Tamanho Calça`, `Tamanho Manequim`, `Tamanho Pé`, `Cachê p/ Dia`) VALUES ('4', 'Luana Dias Rodrigues', '47228388011', '316798605', '1992.09.19', '13 943118752', 'LuDiasRo@gmail.com', '36', 'P', '34', '699');
INSERT INTO `fotografia`.`Modelo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Tamanho Calça`, `Tamanho Manequim`, `Tamanho Pé`, `Cachê p/ Dia`) VALUES ('5', 'Carla Araujo Almeida', '11062700023', '356832533', '1996.11.03', '11 937185090', 'CarlaAA@outlook.com', '44', 'G', '38', '920');
INSERT INTO `fotografia`.`Modelo` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Tamanho Calça`, `Tamanho Manequim`, `Tamanho Pé`, `Cachê p/ Dia`) VALUES ('6', 'Gustavo Azevedo Oliveira', '59412943016', '330465466', '1990.08.27', '11 952864990', 'GustavoAzevedoOliveira@rhyta.com', '46', 'GG', '38', '900');

CREATE TABLE `fotografia`.`Maquiador` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  `RG` VARCHAR(15) NOT NULL,
  `Data de Nascimento` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `E-Mail` VARCHAR(200) NOT NULL,
  `Cachê p/ Dia` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL, 
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE,
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE);

INSERT INTO `fotografia`.`Maquiador` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê p/ Dia`, `*Observações`) VALUES ('1', 'Camila Cavalcanti Pereira', '85708084022', '146129039', '1996-09-15', '16 997696614', 'CamilaCavalcantiPereira@jourrapide.com	', '200', ' ');
INSERT INTO `fotografia`.`Maquiador` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê p/ Dia`, `*Observações`) VALUES ('2', 'Fernanda Silva Rodrigues', '59412943016', '334824606', '1982-10-10', '11 999706077', 'FernandaSilvaRodrigues@armyspy.com', '190', ' ');
INSERT INTO `fotografia`.`Maquiador` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê p/ Dia`, `*Observações`) VALUES ('3', 'Guilherme Cardoso Barros', '27593316017', '502871520', '1987-05-29', '11 998084819	', 'GuilhermeCardosoBarros@dayrep.com	', '230', 'Periodo integral');
INSERT INTO `fotografia`.`Maquiador` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê p/ Dia`, `*Observações`) VALUES ('4', 'Nicole Sousa Martins', '98822374010', '168834406', '2000-11-23', '15 996411563	', 'NicoleSousaMartins@jourrapide.com	', '120', 'Não pode pela manhã');

CREATE TABLE `fotografia`.`Stylist` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  `RG` VARCHAR(15) NOT NULL,
  `Data de Nascimento` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `E-mail` VARCHAR(200) NOT NULL,
  `Cachê p/ Dia` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE);

INSERT INTO `fotografia`.`Stylist` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-mail`, `Cachê p/ Dia`) VALUES ('1', 'Ágatha Goncalves Pinto	', '48913546078	', '380225694	', '1996-12-04	', '19 999725988	', 'AgathaGoncalvesPinto@rhyta.com	', '300');
INSERT INTO `fotografia`.`Stylist` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-mail`, `Cachê p/ Dia`) VALUES ('2', 'Beatriz Gomes Melo	', '22136625098	', '125258434	', '2003-01-18	', '11 997930398	', 'BeatrizGomesMelo@rhyta.com	', '230');

CREATE TABLE `fotografia`.`Figurante` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  `RG` VARCHAR(15) NOT NULL,
  `Data de Nascimento` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `E-Mail` VARCHAR(200) NOT NULL,
  `Cachê p/ Dia` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE);

INSERT INTO `fotografia`.`Figurante` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê p/ Dia`, `*Observações`) VALUES ('1', 'Beatrice Araujo Martins	', '70200485016	', '282491211	', '1996.03.05	', '15 971064060	', 'BeatriceAraujoMartins@armyspy.com	', '90', 'Só atua com mulheres	');
INSERT INTO `fotografia`.`Figurante` (`ID`, `Nome`, `CPF`, `RG`, `Data de Nascimento`, `Telefone`, `E-Mail`, `Cachê p/ Dia`) VALUES ('2', 'Rodrigo Gomes Ribeiro	', '5719464026	', '179457950	', '2000.12.12	', '11 997503543	', 'RodrigoGomesRibeiro@teleworm.us	', '90');

CREATE TABLE `fotografia`.`Cliente` (
  `ID` INT NOT NULL,
  `Nome` VARCHAR(200) NOT NULL,
  `CPF/CNPJ` VARCHAR(20) NOT NULL,
  `E-Mail` VARCHAR(200) NOT NULL,
  `Data de Contratação` DATE NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `Valor total pago` VARCHAR(15) NOT NULL,
  `*Observações` VARCHAR(200) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `CPF/CNPJ_UNIQUE` (`CPF/CNPJ` ASC) VISIBLE);

INSERT INTO `fotografia`.`Cliente` (`ID`, `Nome`, `CPF/CNPJ`, `E-Mail`, `Data de Contratação`, `Telefone`, `Valor total pago`) VALUES ('1', 'Rodrigo Passadare	', '54837075088	', 'Digo@contato.com	', '2022-03-20	', '15 996872336	', '5000	');
INSERT INTO `fotografia`.`Cliente` (`ID`, `Nome`, `CPF/CNPJ`, `E-Mail`, `Data de Contratação`, `Telefone`, `Valor total pago`) VALUES ('2', 'Nike Brasil	', '3806607 000151	', 'projetos@nike.com.br	', '2021-11-14', '12 32826637	', '12000	');
INSERT INTO `fotografia`.`Cliente` (`ID`, `Nome`, `CPF/CNPJ`, `E-Mail`, `Data de Contratação`, `Telefone`, `Valor total pago`) VALUES ('3', 'Vogue Brasil	', '9266817 000180	', 'voguebrasil@atendimento.com	', '2022-05-16', '11 31186162	', '9500	');
INSERT INTO `fotografia`.`Cliente` (`ID`, `Nome`, `CPF/CNPJ`, `E-Mail`, `Data de Contratação`, `Telefone`, `Valor total pago`) VALUES ('4', 'Gustavo Azevedo Oliveira	', '59412943016	', 'GustavoAzevedoOliveira@rhyta.com	', '2022-09-02', '11 952864990	', '3400	');
INSERT INTO `fotografia`.`Cliente` (`ID`, `Nome`, `CPF/CNPJ`, `E-Mail`, `Data de Contratação`, `Telefone`, `Valor total pago`) VALUES ('5', 'Aurora	', '63487875 000180	', 'aurora@contato.com	', '2022-05-16', '17 37833239	', '17880	');

CREATE TABLE `fotografia`.`Job` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Fotógrafo` VARCHAR(200) NOT NULL,
  `Assistente` VARCHAR(200) NULL,
  `Modelo` VARCHAR(200) NULL,
  `Maquiador` VARCHAR(200) NULL,
  `Stylist` VARCHAR(200) NULL,
  `Figurante` VARCHAR(200) NULL,
  `Cliente` VARCHAR(200) NULL,
  `Data prevista de início` DATE NOT NULL,
  `Data prevista de término` DATE NOT NULL,
  `Valor gasto` VARCHAR(15) NOT NULL,
  `Valor Recebido` VARCHAR(15) NOT NULL,
  `Nota Fiscal Eletônica` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Nota Fiscal Eletônica_UNIQUE` (`Nota Fiscal Eletônica` ASC) VISIBLE);

INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Assistente`, `Modelo`, `Maquiador`, `Stylist`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('1', 'Tomás Cunha Ferreira	', 'Danilo Pereira Melo	', 'Anna Martins Ferreira	', 'Camila Cavalcanti Pereira	', 'Ágatha Goncalves Pinto	', 'Nike Brasil	', '2022-10-04	', '2022-10-08	', '6700	', '8000	', '1963428171	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Assistente`, `Modelo`, `Maquiador`, `Stylist`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('2', 'Tomás Cunha Ferreira	', 'Rafael Vitor Gomes	', 'Anna Martins Ferreira	', 'Camila Cavalcanti Pereira	', 'Ágatha Goncalves Pinto	', 'Nike Brasil	', '2022-10-10	', '2022-10-12	', '6700	', '4000	', '1982655367	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Modelo`, `Maquiador`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('3', 'Mateus Correa Fernandes	', 'Luana Dias Rodrigues	', 'Guilherme Cardoso Barros	', 'Rodrigo Passadare	', '2022-10-01	', '2022-10-05	', '1000	', '2500	', '9887761088	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Assistente`, `Modelo`, `Maquiador`, `Stylist`, `Figurante`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('4', 'Júlio Alves Barros	', 'Thaís Barbosa Cardoso	', 'Maria Eduarda Faelis	', 'Fernanda Silva Rodrigues	', 'Beatriz Gomes Melo	', 'Beatrice Araujo Martins	', 'Aurora	', '2022-10-15	', '2022-10-22	', '3800	', '5000	', '3827465477	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Modelo`, `Maquiador`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('5', 'Clara Dias Souza	', 'Carla Araujo Almeida	', 'Nicole Sousa Martins	', 'Vogue Brasil	', '2022-10-14	', '2022-10-24	', '4500	', '5000	', '3637465727	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Assistente`, `Modelo`, `Maquiador`, `Stylist`, `Figurante`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('6', 'Júlio Alves Barros	', 'Thaís Barbosa Cardoso	', 'Maria Eduarda Faelis	', 'Fernanda Silva Rodrigues	', 'Beatriz Gomes Melo	', 'Beatrice Araujo Martins	', 'Aurora	', '2022-10-25	', '2022-10-30	', '5000	', '6500	', '4576743000	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Modelo`, `Maquiador`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('7', 'Clara Dias Souza	', 'Carla Araujo Almeida	', 'Nicole Sousa Martins	', 'Vogue Brasil	', '2022-11-06	', '2022-11-16	', '2300	', '4500	', '8765433376	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Assistente`, `Modelo`, `Maquiador`, `Stylist`, `Figurante`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('8', 'Júlio Alves Barros	', 'Thaís Barbosa Cardoso	', 'Isabela Almeida Oliveira	', 'Fernanda Silva Rodrigues	', 'Beatriz Gomes Melo	', 'Beatrice Araujo Martins	', 'Aurora	', '2022-11-07	', '2022-11-14	', '5900	', '6380	', '3156277452	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Modelo`, `Maquiador`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('9', 'Mateus Correa Fernandes	', 'Luana Dias Rodrigues	', 'Guilherme Cardoso Barros	', 'Rodrigo Passadare	', '2022-11-01	', '2022-10-05	', '1000	', '2500	', '3862718811	');
INSERT INTO `fotografia`.`Job` (`ID`, `Fotógrafo`, `Modelo`, `Cliente`, `Data prevista de início`, `Data prevista de término`, `Valor gasto`, `Valor Recebido`, `Nota Fiscal Eletônica`) VALUES ('10', 'Manuela Costa Barros	', 'Gustavo Azevedo Oliveira	', '\"Gustavo Azevedo Oliveira	\"	', '2022-10-01	', '2022-10-07	', '2000	', '3900	', '2997379109	');

CREATE TABLE `fotografia`.`Job_Fotografo` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Fotografo_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_fotografo_idx` (`Fotografo_ID` ASC) VISIBLE,
  CONSTRAINT `fk_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fotografo`
    FOREIGN KEY (`Fotografo_ID`)
    REFERENCES `fotografia`.`fotografo` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('1', '1', '1');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('2', '2', '1');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('3', '3', '2');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('4', '4', '3');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('5', '5', '4');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('6', '6', '3');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('7', '7', '4');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('8', '8', '3');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('9', '9', '2');
INSERT INTO `fotografia`.`Job_Fotografo` (`ID`, `Job_ID`, `Fotografo_ID`) VALUES ('10', '10', '5');

CREATE TABLE `fotografia`.`Job_Assistente` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Assistente_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk1_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_assistente_idx` (`Assistente_ID` ASC) VISIBLE,
  CONSTRAINT `fk1_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_assistente`
    FOREIGN KEY (`Assistente_ID`)
    REFERENCES `fotografia`.`Assistente` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`, `Assistente_ID`) VALUES ('1', '1', '1');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`, `Assistente_ID`) VALUES ('2', '2', '2');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`) VALUES ('3', '3');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`, `Assistente_ID`) VALUES ('4', '4', '3');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`) VALUES ('5', '5');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`, `Assistente_ID`) VALUES ('6', '6', '3');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`) VALUES ('7', '7');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`, `Assistente_ID`) VALUES ('8', '8', '3');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`) VALUES ('9', '9');
INSERT INTO `fotografia`.`Job_Assistente` (`ID`, `Job_ID`) VALUES ('10', '10');

CREATE TABLE `fotografia`.`Job_Modelo` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Modelo_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk2_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_modelo_idx` (`Modelo_ID` ASC) VISIBLE,
  CONSTRAINT `fk2_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_modelo`
    FOREIGN KEY (`Modelo_ID`)
    REFERENCES `fotografia`.`Modelo` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('1', '1', '3');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('2', '2', '3');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('3', '3', '4');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('4', '4', '1');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('5', '5', '5');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('6', '6', '1');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('7', '7', '5');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('8', '8', '2');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('9', '9', '4');
INSERT INTO `fotografia`.`Job_Modelo` (`ID`, `Job_ID`, `Modelo_ID`) VALUES ('10', '10', '6');

CREATE TABLE `fotografia`.`Job_Stylist` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Stylist_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk3_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_stylist_idx` (`Stylist_ID` ASC) VISIBLE,
  CONSTRAINT `fk3_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_stylist`
    FOREIGN KEY (`Stylist_ID`)
    REFERENCES `fotografia`.`Stylist` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`, `Stylist_ID`) VALUES ('1', '1', '1');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`, `Stylist_ID`) VALUES ('2', '2', '1');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`) VALUES ('3', '3');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`, `Stylist_ID`) VALUES ('4', '4', '2');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`) VALUES ('5', '5');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`, `Stylist_ID`) VALUES ('6', '6', '2');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`) VALUES ('7', '7');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`, `Stylist_ID`) VALUES ('8', '8', '2');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`) VALUES ('9', '9');
INSERT INTO `fotografia`.`Job_Stylist` (`ID`, `Job_ID`) VALUES ('10', '10');

CREATE TABLE `fotografia`.`Job_Figurante` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Figurante_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk4_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_figurante_idx` (`Figurante_ID` ASC) VISIBLE,
  CONSTRAINT `fk4_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_figurante`
    FOREIGN KEY (`Figurante_ID`)
    REFERENCES `fotografia`.`Figurante` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('1', '1');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('2', '2');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('3', '3');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`, `Figurante_ID`) VALUES ('4', '4', '1');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('5', '5');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`, `Figurante_ID`) VALUES ('6', '6', '1');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('7', '7');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`, `Figurante_ID`) VALUES ('8', '8', '2');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('9', '9');
INSERT INTO `fotografia`.`Job_Figurante` (`ID`, `Job_ID`) VALUES ('10', '10');

CREATE TABLE `fotografia`.`Job_Cliente` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Cliente_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk5_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_cliente_idx` (`Cliente_ID` ASC) VISIBLE,
  CONSTRAINT `fk5_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente`
    FOREIGN KEY (`Cliente_ID`)
    REFERENCES `fotografia`.`Cliente` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('1', '1', '2');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('2', '2', '2');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('3', '3', '1');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('4', '4', '5');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('5', '5', '3');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('6', '6', '5');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('7', '7', '3');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('8', '8', '5');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('9', '9', '1');
INSERT INTO `fotografia`.`Job_Cliente` (`ID`, `Job_ID`, `Cliente_ID`) VALUES ('10', '10', '4');

CREATE TABLE `fotografia`.`Job_Maquiador` (
  `ID` INT NOT NULL,
  `Job_ID` INT NULL,
  `Maquiador_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk6_job_idx` (`Job_ID` ASC) VISIBLE,
  INDEX `fk_maquiador_idx` (`Maquiador_ID` ASC) VISIBLE,
  CONSTRAINT `fk6_job`
    FOREIGN KEY (`Job_ID`)
    REFERENCES `fotografia`.`Job` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_maquiador`
    FOREIGN KEY (`Maquiador_ID`)
    REFERENCES `fotografia`.`Maquiador` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('1', '1', '1');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('2', '2', '1');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('3', '3', '3');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('4', '4', '2');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('5', '5', '4');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('6', '6', '2');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('7', '7', '4');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('8', '8', '2');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`, `Maquiador_ID`) VALUES ('9', '9', '3');
INSERT INTO `fotografia`.`Job_Maquiador` (`ID`, `Job_ID`) VALUES ('10', '10');

-- Action 1
CREATE ROLE 'app_leitura';
GRANT SELECT ON fotografia.* TO 'app_leitura';
CREATE USER 'jobs'@'localhost' IDENTIFIED BY 'senha123';
GRANT 'app_leitura' TO 'job'@'localhost';

CREATE ROLE 'app_manipular';
GRANT INSERT, UPDATE, DELETE ON fotografia. assistente TO 'app_manipular';
GRANT INSERT, UPDATE, DELETE ON fotografia. cliente TO 'app_manipular';
GRANT INSERT, UPDATE, DELETE ON fotografia. figurante TO 'app_manipular';
GRANT INSERT, UPDATE, DELETE ON fotografia. fotografo TO 'app_manipular';
CREATE USER 'funcionários'@'localhost' IDENTIFIED BY 'senha456';
GRANT 'app_manipular' TO 'funcionarios'@'localhost';

INSERT INTO usuario (senha) VALUES ('Usuário SHA-2', sha2('SenacEAD_2022', 224));

-- Action 2
CREATE VIEW view_jobs AS SELECT * FROM Job;

CREATE VIEW view_jobs2 AS SELECT fotografo, modelo FROM Job;

-- Action 3
DELIMITER //
CREATE TRIGGER fotografo_md5 AFTER INSERT
ON fotografo
FOR EACH ROW
BEGIN
    SET NEW.`senha` = MD5( NEW.`senha` );
END//

-- Action 4
CREATE INDEX idx_job ON job(modelo ASC);