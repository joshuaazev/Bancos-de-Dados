use sistemadecompetição;

SET FOREIGN_KEY_CHECKS=0;
call excluir_atleta(1);
call excluir_atleta(4);

call excluir_cidade(7);
call excluir_cidade(4);

call excluir_país(3);
call excluir_país(2);

call excluir_treinador(14);
call excluir_treinador(15);

call excluir_equipe(4);
call excluir_equipe(1);

call excluir_atleta_de_equipe(23);
call excluir_atleta_de_equipe(24);
SET FOREIGN_KEY_CHECKS=1;