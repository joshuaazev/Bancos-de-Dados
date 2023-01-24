use sistemadecompetição;

call adicionar_modalidade_esportiva_individual ('Atletismo - 200m rasos Masculino', 1900);

select distinct  b.`Modalidade Individual_Nome_ModalidadeIndividual`, a.Passaporte_Atleta, a.Nome_Atleta, b.Posição
from atleta a, `atleta de modalidade individual` b
where b.`Modalidade Individual_Nome_ModalidadeIndividual` = 'Atletismo - 200m rasos Masculino' and a.Passaporte_Atleta = b.Atleta_Passaporte_Atleta;

call adicionar_atleta (125, 'Diego Maradona', '30/10/1960', 'AFA', '165 cm', '80 kg', 3,2,1,3);

call adicionar_atleta_de_modalidade_individual (77, 'Atletismo - 200m rasos Masculino', 1);
call adicionar_atleta_de_modalidade_individual (125, 'Atletismo - 200m rasos Masculino', 2);
call adicionar_atleta_de_modalidade_individual (57, 'Atletismo - 200m rasos Masculino', 3);
call adicionar_atleta_de_modalidade_individual (24, 'Atletismo - 200m rasos Masculino', 4);
call adicionar_atleta_de_modalidade_individual (82, 'Atletismo - 200m rasos Masculino', 5);
call adicionar_atleta_de_modalidade_individual (27, 'Atletismo - 200m rasos Masculino', 6);
call adicionar_atleta_de_modalidade_individual (61, 'Atletismo - 200m rasos Masculino', 7);
call adicionar_atleta_de_modalidade_individual (21, 'Atletismo - 200m rasos Masculino', 8);

select distinct  b.`Modalidade Individual_Nome_ModalidadeIndividual`,d.Nome_Delegação, a.Passaporte_Atleta, a.Nome_Atleta, b.Posição
from atleta a, `atleta de modalidade individual` b, delegação d
where b.`Modalidade Individual_Nome_ModalidadeIndividual` = 'Atletismo - 200m rasos Masculino' and a.Passaporte_Atleta = b.Atleta_Passaporte_Atleta and d.Id_Delegação = a.Delegação_Id_Delegação;

# Diego Maradona foi Pego no Doping

call excluir_atleta_de_modalidade_individual(125, 'Atletismo - 200m rasos Masculino');

select distinct  b.`Modalidade Individual_Nome_ModalidadeIndividual`,d.Nome_Delegação, a.Passaporte_Atleta, a.Nome_Atleta, b.Posição
from atleta a, `atleta de modalidade individual` b, delegação d
where b.`Modalidade Individual_Nome_ModalidadeIndividual` = 'Atletismo - 200m rasos Masculino' and a.Passaporte_Atleta = b.Atleta_Passaporte_Atleta and d.Id_Delegação = a.Delegação_Id_Delegação;

call alterar_atleta_de_modalidade_individual(57, 'Atletismo - 200m rasos Masculino', 2);
call alterar_atleta_de_modalidade_individual(24, 'Atletismo - 200m rasos Masculino', 3);
call alterar_atleta_de_modalidade_individual(82, 'Atletismo - 200m rasos Masculino', 4);
call alterar_atleta_de_modalidade_individual(27, 'Atletismo - 200m rasos Masculino', 5);
call alterar_atleta_de_modalidade_individual(61, 'Atletismo - 200m rasos Masculino', 6);
call alterar_atleta_de_modalidade_individual(21, 'Atletismo - 200m rasos Masculino', 7);

select distinct  b.`Modalidade Individual_Nome_ModalidadeIndividual`,d.Nome_Delegação, a.Passaporte_Atleta, a.Nome_Atleta, b.Posição
from atleta a, `atleta de modalidade individual` b, delegação d
where b.`Modalidade Individual_Nome_ModalidadeIndividual` = 'Atletismo - 200m rasos Masculino' and a.Passaporte_Atleta = b.Atleta_Passaporte_Atleta and d.Id_Delegação = a.Delegação_Id_Delegação;