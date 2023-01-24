use sistemadecompetição;
SET SQL_SAFE_UPDATES = 0;


call adicionar_atleta (125, 'Leovegildo Lins da Gama Junior', '29/06/1954', 'CRF', '188 cm', '80 kg', 1,1,1,1);
call adicionar_atleta (126, 'Raul Plassmann', '29/06/1954', 'CRF', '188 cm', '80 kg', 3,3,1,1);
call adicionar_atleta (127, 'Leandro', '29/06/1954', 'CRF', '188 cm', '80 kg', 5,5,1,1);
call adicionar_atleta (128, 'Mozer', '29/06/1954', 'CRF', '188 cm', '80 kg', 1,4,1,1);
call adicionar_atleta (129, 'Marinho', '29/06/1954', 'CRF', '188 cm', '80 kg', 7,5,1,1);

call adicionar_atleta_de_equipe (125, 1);
call adicionar_atleta_de_equipe (126, 2);
call adicionar_atleta_de_equipe (127, 3);
call adicionar_atleta_de_equipe (128, 4);
call adicionar_atleta_de_equipe (129, 5);

call adicionar_atleta_de_modalidade_individual (125, 'Atletismo - 100m Masculino', 4);
call adicionar_atleta_de_modalidade_individual (126, 'Atletismo - 100m Masculino', 5);
call adicionar_atleta_de_modalidade_individual (127, 'Atletismo - 100m Masculino', 6);
call adicionar_atleta_de_modalidade_individual (128, 'Tênis de mesa Masculino', 4);
call adicionar_atleta_de_modalidade_individual (129, 'Tênis de mesa Masculino', 5);

call adicionar_delegação(15, 'Alemanha');
call adicionar_delegação(16, 'Venezuela');
call adicionar_delegação(17, 'Etiópia');
call adicionar_delegação(18, 'Malásia');
call adicionar_delegação(19, 'Nova Zelândia');

call adicionar_treinador(30, 'Cláudio Coutinho', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do SPFC', '7/7/2020', 2,1,15,1);
call adicionar_treinador(31, 'Carpegiani', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do SPFC', '7/7/2020', 2,1,16,1);
call adicionar_treinador(32, 'Juan', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do SPFC', '7/7/2020', 2,1,17,1);
call adicionar_treinador(33, 'Marcelo', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do SPFC', '7/7/2020', 2,1,18,1);
call adicionar_treinador(34, 'Moreno', '17/04/1970', 'AB', '178 cm', '80kg', 'Treinador do SPFC', '7/7/2020', 2,1,19,1);

call adicionar_equipe(20,4,'Futebol Masculino',30);
call adicionar_equipe(21,5,'Futebol Masculino',31);
call adicionar_equipe(22,6,'Futebol Masculino',32);
call adicionar_equipe(23,7,'Futebol Masculino',33);
call adicionar_equipe(24,8,'Futebol Masculino',34);

call  adicionar_modalidade_esportiva_individual ('Surf Masculino', 2021);
call  adicionar_modalidade_esportiva_individual ('Surf Feminino', 2021);
call  adicionar_modalidade_esportiva_individual ('Skate Park Feminino', 2021);
call  adicionar_modalidade_esportiva_individual ('Skate Park Masculino', 2021);
call  adicionar_modalidade_esportiva_individual ('Skate Street Feminino', 2021);

call adicionar_modalidade_esportiva_coletiva ('Futebol Feminino', 1988);
call adicionar_modalidade_esportiva_coletiva ('Tênis de Mesa por Equipes Masculino', 1988);
call adicionar_modalidade_esportiva_coletiva ('Tênis de Mesa por Equipes Feminino', 1988);
call adicionar_modalidade_esportiva_coletiva ('Tênis - Duplas Masculino', 1964);
call adicionar_modalidade_esportiva_coletiva ('Tênis - Duplas Feminino', 1964);




