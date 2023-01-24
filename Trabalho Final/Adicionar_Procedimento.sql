use sistemadecompetição;


create procedure adicionar_atleta (in a int,in c varchar(45), in d varchar(45), in e varchar(45), in f varchar(45), in g varchar(45), in h int, in i int, in j int, in k int)
insert into atleta (Passaporte_Atleta,`Número de Licença_Atleta`,Nome_Atleta,`Data de Nascimento_Atleta`,Filiação_Atleta,Altura_Atleta,Peso_Atleta,Delegação_Id_Delegação,Treinador_Passaporte_Treinador,Sexo_Id_Sexo, Endereço_Código_Endereço)
values(a,a,c,d,e,f,g,h,i,j,k);

create procedure adicionar_atleta_de_equipe (in a int, in c int)
insert into `atleta de equipe` (Atleta_Passaporte_Atleta,`Atleta_Número de Licença_Atleta`,Equipe_Id_Equipe)
values(a,a,c);

create procedure adicionar_atleta_de_modalidade_individual (in a int, in b varchar(45), in c int)
insert into `atleta de modalidade individual` (Atleta_Passaporte_Atleta,`Atleta_Número de Licença_Atleta`,`Modalidade Individual_Nome_ModalidadeIndividual`,Posição)
values (a,a,b,c);

create procedure adicionar_delegação(in a int, in b varchar(45))
insert into delegação (Id_Delegação, Nome_Delegação) values (a,b);

create procedure adicionar_equipe(in a int, in b int, in c varchar(45), in d int)
insert into equipe (Id_Equipe,Posição_Equipe,`Modalidade Esportiva_Nome_ModalidadeColetiva`,Treinador_Passaporte_Treinador)
values(a,b,c,d);

create procedure adicionar_treinador (in a int, in b varchar(45), in c varchar(45), in d varchar(45), in e varchar(45), in f varchar(45), in g varchar(45), in h varchar(45), in i varchar(45), in j int, in k int, in l int)
insert into treinador (Passaporte_Treinador,Nome_Treinador,`Data de Nascimento_Treinador`,Filiação_Treinador,Altura_Treinador,Peso_Treinador,TrabalhosAnteriores_Treinador,`Data de Nomeação_Treinador`,`Confederação Esportiva_Id_ConfederaçãoEsportiva`,Sexo_Id_Sexo,Delegação_Id_Delegação, Endereço_Código_Endereço)
values(a,b,c,d,e,f,g,h,i,j,k,l);

create procedure adicionar_modalidade_esportiva_individual (in a varchar(45), in b int)
insert into `modalidade esportiva individual` (Nome_ModalidadeIndividual,`Ano de Inclusão_ModalidadeIndividual`)
values(a,b);

create procedure adicionar_modalidade_esportiva_coletiva (in a varchar(45), in b int)
insert into `modalidade esportiva coletiva` (Nome_ModalidadeColetiva, `Ano de Inclusão_ModalidadeColetiva`)
values(a,b);

