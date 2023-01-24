use sistemadecompetição;

create procedure alterar_delegação(in a int, in b varchar(45))
update delegação set Nome_Delegação = b where Id_Delegação = a;

create procedure alterar_atleta(in a int,in c varchar(45), in d varchar(45), in e varchar(45), in f varchar(45), in g varchar(45), in h int, in i int, in j int, in k int)
update atleta set Nome_Atleta = c, `Data de Nascimento_Atleta` = d, Filiação_Atleta = e, Altura_Atleta = f, Peso_Atleta = g, Delegação_Id_Delegação = h, Treinador_Passaporte_Treinador = i, Sexo_Id_Sexo = j, Endereço_Código_Endereço =k  where Passaporte_Atleta = a; 

create procedure alterar_atleta_de_modalidade_individual(in a int, in b varchar(45), in c int)
update `atleta de modalidade individual` set Posição = c where Atleta_Passaporte_Atleta =a and `Modalidade Individual_Nome_ModalidadeIndividual` = b;

create procedure alterar_atleta_de_equipe (in a int, in b int)
update `atleta de equipe` set Equipe_Id_Equipe = b where Atleta_Passaporte_Atleta = a;

create procedure alterar_cidade (in a int, in b varchar(45))
update cidade set Nome_Cidade = b where Código_Cidade = a;



