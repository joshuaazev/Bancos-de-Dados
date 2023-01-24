use sistemadecompetição;


create procedure excluir_atleta(in a int)
	delete from atleta where Passaporte_Atleta = a;
    
create procedure excluir_atleta_de_equipe(in a int)
	delete from `atleta de equipe` where Atleta_Passaporte_Atleta = a;
    
create procedure excluir_atleta_de_modalidade_individual(in a int, in b varchar(45))
	delete from`atleta de modalidade individual`  where Atleta_Passaporte_Atleta = a and `Modalidade Individual_Nome_ModalidadeIndividual` = b ;
    
    create procedure excluir_bairro(in a int)
	delete from  bairro where Código_Bairro = a;
    
    create procedure excluir_cidade(in a int)
	delete from cidade where Código_Cidade  = a;
    
    create procedure excluir_confederação_esportiva(in a int)
	delete from `confederação esportiva` where Id_ConfederaçãoEsportiva = a;
    
    create procedure excluir_delegação(in a int)
	delete from delegação where Id_Delegação = a;
    
    create procedure excluir_endereço(in a int)
	delete from endereço where Código_Endereço = a;
    
    create procedure excluir_equipe(in a int)
	delete from equipe where Id_Equipe  = a;
    
    create procedure excluir_modalidade_esportiva_coletiva(in a int)
	delete from `modalidade esportiva coletiva`  where Nome_ModalidadeColetiva = a;
    
    create procedure excluir_modalidade_esportiva_individual(in a int)
	delete from `modalidade esportiva individual` where Nome_ModalidadeIndividual  = a;
    
     create procedure excluir_país(in a int)
	delete from país  where Id_País = a;
    
     create procedure excluir_sexo(in a int)
	delete from  sexo where Id_Sexo = a;
    
     create procedure excluir_telefone(in a int)
	delete from telefone  where Código_Telefone  = a;
    
     create procedure excluir_tipo_telefone(in a int)
	delete from `tipo telefone`  where Código_TipoTelefone  = a;
    
     create procedure excluir_tipo_endereço(in a int)
	delete from `tipo endereço` where  Código_TipoEndereço = a;
  
   create procedure excluir_treinador(in a int)
	delete from treinador where Passaporte_Treinador = a;
    
     create procedure excluir_uf(in a int)
	delete from uf where Id_UF = a;
    