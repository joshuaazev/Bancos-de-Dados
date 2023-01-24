use sistemadecompetição;


call alterar_delegação (2, 'Bélgica');
call alterar_delegação (3, 'Belarus');
call alterar_delegação (4, 'Colômbia');

call alterar_atleta (1, 'Mozer', '19/07/1964', 'CR', '188 cm', '87 kg', 1,13,1,1);
call alterar_atleta (2, 'Juninho Capixaba', '12/12/1989', 'CA', '168 cm', '57 kg', 1,13,1,1);
call alterar_atleta (3, 'Johnson', '12/12/1989', 'CC', '178 cm', '77 kg', 7,14,2,7);

call alterar_atleta_de_modalidade_individual (69, 'Tênis de mesa Masculino', 4);
call alterar_atleta_de_modalidade_individual (78, 'Tênis de mesa Masculino', 5);
call alterar_atleta_de_modalidade_individual (79, 'Tênis de mesa Masculino', 6);

call alterar_atleta_de_equipe (7,2);
call alterar_atleta_de_equipe (8,3);
call alterar_atleta_de_equipe (9,4);

call alterar_cidade(1, 'São Paulo');

