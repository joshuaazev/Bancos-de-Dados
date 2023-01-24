use sistemadecompetição;


create procedure recuperar_atleta(in a int)
	select * from atleta where Passaporte_Atleta = a;
    
create procedure recuperar_atleta_de_equipe(in a int)
	select * from `atleta de equipe` where Atleta_Passaporte_Atleta = a;
    
create procedure recuperar_atleta_de_modalidade_individual(in a int)
	select * from`atleta de modalidade individual`  where Atleta_Passaporte_Atleta = a;
    
    create procedure recuperar_bairro(in a int)
	select * from  bairro where Código_Bairro = a;
    
    create procedure recuperar_cidade(in a int)
	select * from cidade where Código_Cidade  = a;
    
    create procedure recuperar_confederação_esportiva(in a int)
	select * from `confederação esportiva` where Id_ConfederaçãoEsportiva = a;
    
    create procedure recuperar_delegação(in a int)
	select * from delegação where Id_Delegação = a;
    
    create procedure recuperar_endereço(in a int)
	select * from endereço where Código_Endereço = a;
    
    create procedure recuperar_equipe(in a int)
	select * from equipe where Id_Equipe  = a;
    
    create procedure recuperar_modalidade_esportiva_coletiva(in a int)
	select * from `modalidade esportiva coletiva`  where Nome_ModalidadeColetiva = a;
    
    create procedure recuperar_modalidade_esportiva_individual(in a int)
	select * from `modalidade esportiva individual` where Nome_ModalidadeIndividual  = a;
    
     create procedure recuperar_país(in a int)
	select * from país  where Id_País = a;
    
     create procedure recuperar_sexo(in a int)
	select * from  sexo where Id_Sexo = a;
    
     create procedure recuperar_telefone(in a int)
	select * from telefone  where Código_Telefone  = a;
    
     create procedure recuperar_tipo_telefone(in a int)
	select * from `tipo telefone`  where Código_TipoTelefone  = a;
    
     create procedure recuperar_tipo_endereço(in a int)
	select * from `tipo endereço` where  Código_TipoEndereço = a;
  
   create procedure recuperar_treinador(in a int)
	select * from treinador where Passaporte_Treinador = a;
    
     create procedure recuperar_uf(in a int)
	select * from uf where Id_UF = a;
    