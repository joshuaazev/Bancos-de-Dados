-- MySQL Workbench Synchronization
-- Generated: 2021-10-15 11:00
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: gusta

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `sistemadecompetição`.`Atleta` 
DROP FOREIGN KEY `fk_Atleta_Delegação1`,
DROP FOREIGN KEY `fk_Atleta_Endereço1`;

ALTER TABLE `sistemadecompetição`.`País` 
DROP FOREIGN KEY `fk_País_Delegação1`;

ALTER TABLE `sistemadecompetição`.`UF` 
DROP FOREIGN KEY `fk_UF_País1`;

ALTER TABLE `sistemadecompetição`.`Cidade` 
DROP FOREIGN KEY `fk_Cidade_UF1`;

ALTER TABLE `sistemadecompetição`.`Bairro` 
DROP FOREIGN KEY `fk_Bairro_Cidade1`;

ALTER TABLE `sistemadecompetição`.`Endereço` 
DROP FOREIGN KEY `fk_Endereço_Bairro1`,
DROP FOREIGN KEY `fk_Endereço_Tipo Endereço1`;

ALTER TABLE `sistemadecompetição`.`Treinador` 
DROP FOREIGN KEY `fk_Treinador_Confederação Esportiva1`,
DROP FOREIGN KEY `fk_Treinador_Delegação1`,
DROP FOREIGN KEY `fk_Treinador_Endereço1`;

ALTER TABLE `sistemadecompetição`.`Equipe` 
DROP FOREIGN KEY `fk_Equipe_Modalidade Esportiva1`,
DROP FOREIGN KEY `fk_Equipe_Treinador1`;

ALTER TABLE `sistemadecompetição`.`Telefone` 
DROP FOREIGN KEY `fk_Telefone_Atleta1`,
DROP FOREIGN KEY `fk_Telefone_Tipo Telefone1`;

ALTER TABLE `sistemadecompetição`.`Atleta de Modalidade Individual` 
DROP FOREIGN KEY `fk_Atleta de Modalidade Individual_Modalidade Individual1`;

ALTER TABLE `sistemadecompetição`.`Atleta de Equipe` 
DROP FOREIGN KEY `fk_Atleta_has_Equipe_Atleta1`,
DROP FOREIGN KEY `fk_Atleta_has_Equipe_Equipe1`;

ALTER TABLE `sistemadecompetição`.`Atleta` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Delegação` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`País` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`UF` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Cidade` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Bairro` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Endereço` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Tipo Endereço` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Sexo` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Treinador` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Confederação Esportiva` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Equipe` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Modalidade Esportiva Coletiva` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Telefone` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Tipo Telefone` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Modalidade Esportiva Individual` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Atleta de Modalidade Individual` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Atleta de Equipe` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `sistemadecompetição`.`Atleta` 
DROP FOREIGN KEY `fk_Atleta_Treinador1`,
DROP FOREIGN KEY `fk_Atleta_Sexo1`;

ALTER TABLE `sistemadecompetição`.`Atleta` ADD CONSTRAINT `fk_Atleta_Delegação1`
  FOREIGN KEY (`Delegação_Id_Delegação`)
  REFERENCES `sistemadecompetição`.`Delegação` (`Id_Delegação`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Atleta_Treinador1`
  FOREIGN KEY (`Treinador_Passaporte_Treinador`)
  REFERENCES `sistemadecompetição`.`Treinador` (`Passaporte_Treinador`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Atleta_Sexo1`
  FOREIGN KEY (`Sexo_Id_Sexo`)
  REFERENCES `sistemadecompetição`.`Sexo` (`Id_Sexo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Atleta_Endereço1`
  FOREIGN KEY (`Endereço_Código_Endereço`)
  REFERENCES `sistemadecompetição`.`Endereço` (`Código_Endereço`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`País` 
ADD CONSTRAINT `fk_País_Delegação1`
  FOREIGN KEY (`Delegação_Id_Delegação`)
  REFERENCES `sistemadecompetição`.`Delegação` (`Id_Delegação`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`UF` 
ADD CONSTRAINT `fk_UF_País1`
  FOREIGN KEY (`País_Id_País`)
  REFERENCES `sistemadecompetição`.`País` (`Id_País`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Cidade` 
ADD CONSTRAINT `fk_Cidade_UF1`
  FOREIGN KEY (`UF_Id_UF`)
  REFERENCES `sistemadecompetição`.`UF` (`Id_UF`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Bairro` 
ADD CONSTRAINT `fk_Bairro_Cidade1`
  FOREIGN KEY (`Cidade_Código_Cidade`)
  REFERENCES `sistemadecompetição`.`Cidade` (`Código_Cidade`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Endereço` 
ADD CONSTRAINT `fk_Endereço_Bairro1`
  FOREIGN KEY (`Bairro_Código_Bairro`)
  REFERENCES `sistemadecompetição`.`Bairro` (`Código_Bairro`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Endereço_Tipo Endereço1`
  FOREIGN KEY (`Tipo Endereço_Código_TipoEndereço`)
  REFERENCES `sistemadecompetição`.`Tipo Endereço` (`Código_TipoEndereço`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Treinador` 
DROP FOREIGN KEY `fk_Treinador_Sexo1`;

ALTER TABLE `sistemadecompetição`.`Treinador` ADD CONSTRAINT `fk_Treinador_Confederação Esportiva1`
  FOREIGN KEY (`Confederação Esportiva_Id_ConfederaçãoEsportiva`)
  REFERENCES `sistemadecompetição`.`Confederação Esportiva` (`Id_ConfederaçãoEsportiva`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Treinador_Sexo1`
  FOREIGN KEY (`Sexo_Id_Sexo`)
  REFERENCES `sistemadecompetição`.`Sexo` (`Id_Sexo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Treinador_Delegação1`
  FOREIGN KEY (`Delegação_Id_Delegação`)
  REFERENCES `sistemadecompetição`.`Delegação` (`Id_Delegação`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Treinador_Endereço1`
  FOREIGN KEY (`Endereço_Código_Endereço`)
  REFERENCES `sistemadecompetição`.`Endereço` (`Código_Endereço`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Equipe` 
ADD CONSTRAINT `fk_Equipe_Modalidade Esportiva1`
  FOREIGN KEY (`Modalidade Esportiva_Nome_ModalidadeColetiva`)
  REFERENCES `sistemadecompetição`.`Modalidade Esportiva Coletiva` (`Nome_ModalidadeColetiva`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Equipe_Treinador1`
  FOREIGN KEY (`Treinador_Passaporte_Treinador`)
  REFERENCES `sistemadecompetição`.`Treinador` (`Passaporte_Treinador`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Telefone` 
DROP FOREIGN KEY `fk_Telefone_Treinador1`;

ALTER TABLE `sistemadecompetição`.`Telefone` ADD CONSTRAINT `fk_Telefone_Atleta1`
  FOREIGN KEY (`Atleta_Passaporte_Atleta` , `Atleta_Número de Licença_Atleta`)
  REFERENCES `sistemadecompetição`.`Atleta` (`Passaporte_Atleta` , `Número de Licença_Atleta`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Telefone_Treinador1`
  FOREIGN KEY (`Treinador_Passaporte_Treinador`)
  REFERENCES `sistemadecompetição`.`Treinador` (`Passaporte_Treinador`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Telefone_Tipo Telefone1`
  FOREIGN KEY (`Tipo Telefone_Código_TipoTelefone`)
  REFERENCES `sistemadecompetição`.`Tipo Telefone` (`Código_TipoTelefone`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Atleta de Modalidade Individual` 
DROP FOREIGN KEY `fk_Atleta_has_Modalidade Individual_Atleta1`;

ALTER TABLE `sistemadecompetição`.`Atleta de Modalidade Individual` ADD CONSTRAINT `fk_Atleta_has_Modalidade Individual_Atleta1`
  FOREIGN KEY (`Atleta_Passaporte_Atleta` , `Atleta_Número de Licença_Atleta`)
  REFERENCES `sistemadecompetição`.`Atleta` (`Passaporte_Atleta` , `Número de Licença_Atleta`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Atleta de Modalidade Individual_Modalidade Individual1`
  FOREIGN KEY (`Modalidade Individual_Nome_ModalidadeIndividual`)
  REFERENCES `sistemadecompetição`.`Modalidade Esportiva Individual` (`Nome_ModalidadeIndividual`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sistemadecompetição`.`Atleta de Equipe` 
ADD CONSTRAINT `fk_Atleta_has_Equipe_Atleta1`
  FOREIGN KEY (`Atleta_Passaporte_Atleta` , `Atleta_Número de Licença_Atleta`)
  REFERENCES `sistemadecompetição`.`Atleta` (`Passaporte_Atleta` , `Número de Licença_Atleta`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Atleta_has_Equipe_Equipe1`
  FOREIGN KEY (`Equipe_Id_Equipe`)
  REFERENCES `sistemadecompetição`.`Equipe` (`Id_Equipe`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
