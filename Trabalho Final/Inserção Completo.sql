use sistemadecompetição;
SET SQL_SAFE_UPDATES = 0;


SET FOREIGN_KEY_CHECKS=0;
delete from delegação;
SET FOREIGN_KEY_CHECKS=1;

insert into delegação (Id_Delegação, Nome_Delegação)
values(1, 'Brasil'), 
(2, 'Rússia'), 
(3, 'Argentina'), 
(4, 'China'), 
(5, 'Inglaterra'), 
(6, 'Quênia'),
(7, 'Jamaica'),
(8, 'Austrália'),
(9, 'Itália');

SET FOREIGN_KEY_CHECKS=0;
delete from país;
SET FOREIGN_KEY_CHECKS=1;
insert into país (Id_País, Nome_País, Delegação_Id_Delegação)
values(1, 'Brasil',1), 
(2, 'Rússia',2), 
(3, 'Argentina',3), 
(4, 'China',4), 
(5, 'Inglaterra',5), 
(6, 'Quênia',6),
(7, 'Jamaica',7),
(8, 'Austrália', 8),
(9, 'Itália',9);

SET FOREIGN_KEY_CHECKS=0;
delete from uf;
SET FOREIGN_KEY_CHECKS=1;
insert into uf (Id_UF,Nome_UF,País_Id_País)
values(1, 'DF',1), 
(2, 'RU',2), 
(3, 'AR',3), 
(4, 'CH',4), 
(5, 'IG',5), 
(6, 'KEN',6),
(7, 'JAM',7),
(8, 'AUS', 8),
(9, 'ITA',9);

SET FOREIGN_KEY_CHECKS=0;
delete from cidade;
SET FOREIGN_KEY_CHECKS=1;
insert into cidade (Código_Cidade,Nome_Cidade,UF_Id_UF)
values(1, 'Brasília',1), 
(2, 'Moscou',2), 
(3, 'Buenos Aires',3), 
(4, 'Pequim',4), 
(5, 'Londres',5), 
(6, 'Nairóbi',6),
(7, 'Kingston',7),
(8, 'Canberra', 8),
(9, 'Roma',9);

SET FOREIGN_KEY_CHECKS=0;
delete from bairro;
SET FOREIGN_KEY_CHECKS=1;
insert into bairro (Código_Bairro,Nome_Bairro,Cidade_Código_Cidade)
values(1, 'Asa Sul',1), 
(2, 'Arbat',2), 
(3, 'La Boca',3), 
(4, 'Solana',4), 
(5, 'Greenwich',5), 
(6, 'Mathare',6),
(7, 'Central',7),
(8, 'Forrest', 8),
(9, 'Aventino',9);


SET FOREIGN_KEY_CHECKS=0;
delete from `tipo endereço`;
SET FOREIGN_KEY_CHECKS=1;
insert into `tipo endereço`(Código_TipoEndereço,Descrição_TipoEndereço)
values (1,'Residencial'),(2,'Comercial');

SET FOREIGN_KEY_CHECKS=0;
delete from endereço;
SET FOREIGN_KEY_CHECKS=1;
insert into endereço (Código_Endereço,CEP_Endereço,`Nome da Rua_Endereço`,Complemento_Endereço,Número_Endereço,Bairro_Código_Bairro, `Tipo Endereço_Código_TipoEndereço`)
values(1, '70333-245', 'W3', 'Não possui', '210',1,1), 
(2, '343245', 'A1', 'Não possui', '210',2,1), 
(3, '3113345', 'A2', 'Não possui', '210',3,1), 
(4, '9933245', 'A3', 'Não possui', '210',4,1), 
(5, '3324566', 'A4', 'Não possui', '210',5,1), 
(6, '57748383', 'A5', 'Não possui', '210',6,1), 
(7, '133993', 'A6', 'Não possui', '210',7,1), 
(8, '103949', 'A7', 'Não possui', '210',8,1), 
(9, '3494904', 'A8', 'Não possui', '210',9,1); 


SET FOREIGN_KEY_CHECKS=0;
delete from sexo where Id_Sexo;
SET FOREIGN_KEY_CHECKS=1;

insert into sexo (Id_Sexo,Descrição_Sexo)
values (1, 'Masculino'), (2, 'Feminino');

SET FOREIGN_KEY_CHECKS=0;
delete from `confederação esportiva` where Id_ConfederaçãoEsportiva;
SET FOREIGN_KEY_CHECKS=1;
insert into `confederação esportiva` (Id_ConfederaçãoEsportiva,Nome_ConfederaçãoEsportiva)
values (1, 'CBF'), (2, 'CBA'), (3, 'CBN'), (4, 'CBV'), (5, 'CA'), (6, 'CI');

SET FOREIGN_KEY_CHECKS=0;
delete from `modalidade esportiva coletiva`;
SET FOREIGN_KEY_CHECKS=0;
insert into `modalidade esportiva coletiva` (Nome_ModalidadeColetiva, `Ano de Inclusão_ModalidadeColetiva`)
values ('Futebol Masculino', 1908), 
('Atletismo - Revezamento 4x100m- Masculino', 1896), 
('Vôlei Feminino', 1964) ,
('Natação - Revezamento 4x100 medley Misto', 2021);

SET FOREIGN_KEY_CHECKS=0;
delete from `modalidade esportiva individual`;
SET FOREIGN_KEY_CHECKS=1;
insert into `modalidade esportiva individual` (Nome_ModalidadeIndividual,`Ano de Inclusão_ModalidadeIndividual`)
values ('Atletismo - 100m Masculino',1896), 
('Atletismo - 5000m  rasos Masculino', 1896), 
('Natação - 100m livre Feminino', 1896), 
('Tênis de mesa Masculino', 1988);


SET FOREIGN_KEY_CHECKS=0;
delete from treinador;
SET FOREIGN_KEY_CHECKS=1;
insert into treinador (Passaporte_Treinador,Nome_Treinador,`Data de Nascimento_Treinador`,Filiação_Treinador,Altura_Treinador,Peso_Treinador,TrabalhosAnteriores_Treinador,`Data de Nomeação_Treinador`,`Confederação Esportiva_Id_ConfederaçãoEsportiva`,Sexo_Id_Sexo,Delegação_Id_Delegação, Endereço_Código_Endereço)
values (1, 'Jorge Jesus', '24/07/1954', 'Cincum', '178 cm', '80kg', 'Treinador do Flamengo', '7/7/2020', 1,1,1,1),
(2, 'Jorge Sampaoli', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Santos', '7/7/2020', 5,1,3,3),
(3, 'Eric Clapton', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Cream', '7/7/2020', 6,1,5,5),
(4, 'Marquinhos', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do SPFC', '7/7/2020', 2,1,1,1),
(5, 'Phillips', '17/04/1970', 'AB', '178 cm', '80kg', 'Professor de Educação Física', '7/7/2020', 6,1,7,7),
(6, 'Gianluigi Buffon', '28/01/1978', 'AB', '178 cm', '80kg', 'Treinador do English Team', '7/7/2020', 6,1,9,9),
(7, 'Bernardinho', '25/08/1959', 'AB', '178 cm', '80kg', 'Treinador do Osasco', '7/7/2020', 4,1,1,1),
(8, 'Maria Sharapova', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador de Tênis', '7/7/2020', 6,2,2,2),
(9, 'Xi', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Zhang', '7/7/2020', 6,2,4,4),
(10, 'Daniel Dias', '17/04/1970', 'AB', '177 cm', '80kg', 'Treinador do Cielo', '7/7/2020', 3,1,1,1),
(11, 'Tim Cahill', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Vasco', '7/7/2020', 6,1,8,8),
(12, 'Ginger Baker', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Cream', '7/7/2020', 6,1,5,5),
(13, 'Ronaldinho Gaúcho', '17/04/1970', 'AB', '178 cm', '80kg', 'Bruxo', '7/7/2020', 2,1,1,1),
(14, 'Joshua Cheptegei', '17/04/1970', 'AB', '178 cm', '80kg', 'Atleta', '7/7/2020', 6,1,6,6),
(15, 'Xu', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Corinthians', '7/7/2020', 6,1,4,4),
(16, 'Jack Bruce', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do Cream', '7/7/2020', 6,1,5,5);


SET FOREIGN_KEY_CHECKS=0;
delete from equipe;
SET FOREIGN_KEY_CHECKS=1;
insert into equipe (Id_Equipe,Posição_Equipe,`Modalidade Esportiva_Nome_ModalidadeColetiva`,Treinador_Passaporte_Treinador)
values (1,1,'Futebol Masculino',1), (2,2,'Futebol Masculino',2), (3,3,'Futebol Masculino',3),
(4,1,'Atletismo - Revezamento 4x100m- Masculino',4), (5,2,'Atletismo - Revezamento 4x100m- Masculino',5), (6,3,'Atletismo - Revezamento 4x100m- Masculino',6),
(7,1,'Vôlei Feminino',7), (8,2,'Vôlei Feminino',8), (9,3,'Vôlei Feminino',9),
(10,1,'Natação - Revezamento 4x100 medley Misto',10), (11,2,'Natação - Revezamento 4x100 medley Misto',11), (12,3,'Natação - Revezamento 4x100 medley Misto',12);

SET FOREIGN_KEY_CHECKS=0;
delete from atleta;
SET FOREIGN_KEY_CHECKS=1;

insert into atleta (Passaporte_Atleta,`Número de Licença_Atleta`,Nome_Atleta,`Data de Nascimento_Atleta`,Filiação_Atleta,Altura_Atleta,Peso_Atleta,Delegação_Id_Delegação,Treinador_Passaporte_Treinador,Sexo_Id_Sexo, Endereço_Código_Endereço)
values (1,1, 'Diego Alves', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(2,2, 'Rafinha', '7/09/1985', 'CRF', '172 cm', '70 kg', 1,1,1,1),(3,3, 'Rodrigo Caio', '17/08/1993', 'CRF', '182 cm', '80 kg', 1,1,1,1),(4,4, 'Pablo Mário', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(6,6, 'Filipe Luís', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(5,5, 'Willian Arão', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(8,8, 'Gerson', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(7,7, 'Éverton Ribeiro', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(9,9, 'Gabigol', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(10,10, 'Jorge de Arrascaeta', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),(11,11, 'Bruno Henrique', '24/06/1985', 'CRF', '188 cm', '80 kg', 1,1,1,1),
(12,12, 'Martinez', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(13,13, 'Montiel', '7/09/1985', 'AB', '172 cm', '70 kg', 3,2,1,3),(14,14, 'Pinola', '17/08/1993', 'AB', '182 cm', '80 kg', 3,2,1,3),(15,15, 'Martínez Quarta', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(16,16, 'Casco', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(17,17, 'De Paul', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(18,18, 'Lo Celso', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(19,19, 'Paredes', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(20,20, 'Di María', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(21,21, 'Lionel Messi', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),(22,22, 'Lautaro Martínez', '24/06/1985', 'AB', '188 cm', '80 kg', 3,2,1,3),
(23,23, 'John Lennon', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(24,24, 'Ringo Starr', '7/09/1985', 'AB', '172 cm', '70 kg', 5,3,1,5),(25,25, 'George Harrison', '17/08/1993', 'AB', '182 cm', '80 kg', 5,3,1,5),(26,26, 'Paul McCartney', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(27,27, 'Freddie Mercury', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(28,28, 'Brian May', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(29,29, 'John Deacon', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(30,30, 'Roger Taylor', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(31,31, 'Robert Plant', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(32,32, 'Jimmy Page', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(33,33, 'John Paul Jones', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),(34,34, 'John Bonham', '24/06/1985', 'AB', '188 cm', '80 kg', 5,3,1,5),
(35,35, 'Fabizinha', '12/12/1990', 'AB', '172 cm', '65 kg', 1,7,2,1), (36,36, 'Thaisa', '12/12/1990', 'AB', '180 cm', '69 kg', 1,7,2,1), (37,37, 'Sheilla', '12/12/1990', 'AB', '172 cm', '65 kg', 1,7,2,1), (38,38, 'Gabi', '12/12/1990', 'AB', '172 cm', '65 kg', 1,7,2,1), (39,39, 'Macris', '12/12/1990', 'AB', '172 cm', '65 kg', 1,7,2,1), (40,40, 'Jaqueline', '12/12/1990', 'AB', '172 cm', '65 kg', 1,7,2,1),
(41,41, 'Sidorova', '12/12/1990', 'AB', '172 cm', '65 kg', 2,8,2,2), (42,42, 'Isinbayeva', '12/12/1990', 'AB', '172 cm', '65 kg', 2,8,2,2),(43,43, 'Maria', '12/12/1990', 'AB', '172 cm', '65 kg', 2,8,2,2),(44,44, 'Luana', '12/12/1990', 'AB', '172 cm', '65 kg', 2,8,2,2),(45,45, 'Lisitska', '12/12/1990', 'AB', '172 cm', '65 kg', 2,8,2,2),(46,46, 'Irina', '12/12/1990', 'AB', '172 cm', '65 kg', 2,8,2,2),
(47,47, 'Xu', '12/12/1990', 'AB', '182 cm', '65 kg', 4,9,2,4),(48,48, 'Xi', '12/12/1990', 'AB', '182 cm', '65 kg', 4,9,2,4),(49,49, 'Zhang', '12/12/1990', 'AB', '182 cm', '65 kg', 4,9,2,4),(50,50, 'Long', '12/12/1990', 'AB', '182 cm', '65 kg', 4,9,2,4),(51,51, 'Park', '12/12/1990', 'AB', '182 cm', '65 kg', 4,9,2,4),(52,52, 'Liu', '12/12/1990', 'AB', '182 cm', '65 kg', 4,9,2,4),
(53,53, 'Cláudinei Quirino', '12/12/1977', 'AB', '182 cm', '80 kg', 1,4,1,1),(54,54, 'Vicente Lenilson',' 12/12/1977', 'AB', '182 cm', '80 kg', 1,4,1,1),(55,55, 'Edson Luciano Ribeiro', '12/12/1990', 'AB', '182 cm', '80 kg', 1,4,1,1),(56,56, 'André Domingos', '12/12/1990', 'AB', '182 cm', '80 kg', 1,4,1,1),
(57,57, 'Usain Bolt', '21/08/1986', 'AB', '195 cm', '80 kg', 7,5,1,7),(58,58, 'Yohan Blake', '21/08/1986', 'AB', '195 cm', '80 kg', 7,5,1,7),(59,59, 'Michael Frater', '21/08/1986', 'AB', '195 cm', '80 kg', 7,5,1,7),(60,60, 'Nesta Carter', '21/08/1986', 'AB', '195 cm', '80 kg', 7,5,1,7),
(61,61, 'Jacobs', '21/08/1986', 'AB', '195 cm', '80 kg', 9,6,1,9),(62,62, 'Andrea Bocceli', '21/08/1986', 'AB', '195 cm', '80 kg', 9,6,1,9),(63,63, 'El Shaarawy', '21/08/1986', 'AB', '195 cm', '80 kg', 9,6,1,9),(64,64, 'Lorenzetti', '21/08/1986', 'AB', '195 cm', '80 kg', 9,6,1,9),
(65,65, 'Laura Pigossi', '21/08/1986', 'AB', '175 cm', '70 kg', 1,10,2,1), (66,66, 'Luisa Stefani', '21/08/1986', 'AB', '175 cm', '70 kg', 1,10,2,1),(67,67, 'Bruno Fratus', '21/08/1986', 'AB', '175 cm', '70 kg', 1,10,1,1),(68,68, 'Fernando Scheffer', '21/08/1986', 'AB', '175 cm', '70 kg', 1,10,1,1),
(69,69, 'Emma McKeon', '21/08/1986', 'AB', '175 cm', '70 kg', 8,11,2,8), (70,70, 'Cate Campbell', '21/08/1986', 'AB', '175 cm', '70 kg', 8,11,2,8),(71,71, 'Matthew Wilson', '21/08/1986', 'AB', '175 cm', '70 kg', 8,11,1,8),(72,72, 'Mitchell Larkin', '21/08/1986', 'AB', '175 cm', '70 kg', 8,11,1,8),
(73,73, 'Adam Peaty', '21/08/1986', 'AB', '175 cm', '70 kg', 5,12,1,5),(74,74, 'James Guy', '21/08/1986', 'AB', '175 cm', '70 kg', 5,12,1,5),(75,75, 'Anna Hopkin', '21/08/1986', 'AB', '175 cm', '70 kg', 5,12,2,5),(76,76, 'Kathleen Dawson',' 21/08/1986', 'AB', '175 cm', '70 kg', 5,12,2,5),
(77,77, 'Arthur Antunes Coimbra', '03/03/1953', 'CRF', '178 cm', '79 kg', 1,13,1,1),(78,78, 'Kipchoge', '03/03/1980', 'AB', '178 cm', '79 kg', 6,14,1,6),(79,79, 'Mo Farah', '03/03/1990', 'AB', '178 cm', '79 kg', 5,16,1,5),
(80,80, 'Maria Lenk', '15/02/1925', 'AB', '178 cm', '79 kg', 1,13,2,1), (81,81, 'Laura Kenny', '15/02/1995', 'AB', '178 cm', '79 kg', 5,16,2,5),
(82,82, 'Hugo Calderano', '22/06/1996', 'AB', '178 cm', '79 kg', 1,13,1,1),(83,83, 'Ma Long', '22/06/1996', 'AB', '178 cm', '79 kg', 4,15,1,4), (84,84,'Fan Zhendong', '22/06/1996', 'AB', '178 cm', '79 kg', 4,15,1,4);

SET FOREIGN_KEY_CHECKS=0;
delete from `atleta de equipe`;
SET FOREIGN_KEY_CHECKS=1;

insert into `atleta de equipe` (Atleta_Passaporte_Atleta,`Atleta_Número de Licença_Atleta`,Equipe_Id_Equipe)
values (1,1,1), (2,2,1), (3,3,1), (4,4,1), (5,5,1), (6,6,1), (7,7,1), (8,8,1), (9,9,1), (10,10,1), (11,11,1),
(12,12,2), (13,13,2), (14,14,2), (15,15,2), (16,16,2), (17,17,2), (18,18,2), (19,19,2), (20,20,2), (21,21,2), (22,22,2),
(23,23,3), (24,24,3), (25,25,3), (26,26,3), (27,27,3), (28,28,3), (29,29,3), (30,30,3), (31,31,3), (32,32,3), (33,33,3), (34,34,3), 
(35,35,7), (36,36,7), (37,37,7), (38,38,7), (39,39,7), (40,40,7),
(41,41,8), (42,42,8), (43,43,8), (44,44,8), (45,45,8), (46,46,8),
(47,47,9), (48,48,9), (49,49,9), (50,50,9), (51,51,9), (52,52,9),
(53,53,4), (54,54,4), (55,55,4), (56,56,4),
(57,57,5), (58,58,5), (59,59,5), (60,60,5),
(61,61,6), (62,62,6), (63,63,6), (64,64,6),
(65,65,10), (66,66,10), (67,67,10), (68,68,10), 
(69,69,11), (70,70,11), (71,71,11), (72,72,11), 
(73,73,12), (74,74,12), (75,75,12), (76,76,12);


SET FOREIGN_KEY_CHECKS=0;
delete from `atleta de modalidade individual`;
SET FOREIGN_KEY_CHECKS=1;
insert into `atleta de modalidade individual` (Atleta_Passaporte_Atleta,`Atleta_Número de Licença_Atleta`,`Modalidade Individual_Nome_ModalidadeIndividual`,Posição)
values (53,53,'Atletismo - 100m Masculino',1), (57,57,'Atletismo - 100m Masculino',2), (77,77,'Atletismo - 100m Masculino',3),
(77,77, 'Atletismo - 5000m  rasos Masculino',1), (78,78, 'Atletismo - 5000m  rasos Masculino',2), (79,79, 'Atletismo - 5000m  rasos Masculino',3),
(80,80, 'Natação - 100m livre Feminino', 1), (69,69, 'Natação - 100m livre Feminino', 2), (81,81, 'Natação - 100m livre Feminino', 3),
(82,82, 'Tênis de mesa Masculino', 1), (83,83, 'Tênis de mesa Masculino', 2), (84,84, 'Tênis de mesa Masculino', 3);

SET FOREIGN_KEY_CHECKS=0;
delete from `tipo telefone`;
SET FOREIGN_KEY_CHECKS=1;
insert into `tipo telefone` (Código_TipoTelefone,Descrição_TipoTelefone)
values (1, 'Residencial'),(2, 'Celular'),(3, 'Comercial');

SET FOREIGN_KEY_CHECKS=0;
delete from telefone;
SET FOREIGN_KEY_CHECKS=1;
insert into telefone (Código_Telefone,DDD_Telefone,Número_Telefone,Atleta_Passaporte_Atleta,`Atleta_Número de Licença_Atleta`,Treinador_Passaporte_Treinador,`Tipo Telefone_Código_TipoTelefone`)
values (1,'61', '999000342', 77, 77,1, 2)

 
