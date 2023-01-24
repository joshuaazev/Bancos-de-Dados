use sistemadecompetição;

# Relação Das Equipes
select distinct d. Id_Equipe as Número_da_equipe, e.Nome_ModalidadeColetiva, c.Nome_Delegação ,a.Nome_Atleta as Nomes, a.Passaporte_Atleta
from atleta a, `atleta de equipe` b, delegação c, equipe d, `modalidade esportiva coletiva` e
where b.Atleta_Passaporte_Atleta = a.Passaporte_Atleta and 
b.Equipe_Id_Equipe = d.Id_Equipe and 
c.Id_Delegação = a.Delegação_Id_Delegação and
d.`Modalidade Esportiva_Nome_ModalidadeColetiva`= e.Nome_ModalidadeColetiva;

# Relação das Modalidades
select Nome_ModalidadeIndividual as Nome_das_Modalidades from `modalidade esportiva individual`
union
select Nome_ModalidadeColetiva as Nome_das_Modalidades from `modalidade esportiva coletiva`;

# Lista de Treinadores por Equipe
select distinct  d.Id_Equipe, e.Nome_ModalidadeColetiva, c.Nome_Delegação, f.Nome_Treinador, f.Passaporte_Treinador
from atleta a, `atleta de equipe` b, delegação c, equipe d, `modalidade esportiva coletiva` e, treinador f
where b.Atleta_Passaporte_Atleta = a.Passaporte_Atleta and 
b.Equipe_Id_Equipe = d.Id_Equipe and 
c.Id_Delegação = a.Delegação_Id_Delegação and
d.`Modalidade Esportiva_Nome_ModalidadeColetiva`= e.Nome_ModalidadeColetiva and 
f.Passaporte_Treinador = d.Treinador_Passaporte_Treinador;

# Lista de desempenho individual do atleta
select distinct a.Passaporte_Atleta, a.Nome_Atleta, b.`Modalidade Individual_Nome_ModalidadeIndividual`, b.Posição
from atleta a, `atleta de modalidade individual` b, `atleta de equipe` c, equipe d, `modalidade esportiva individual` e, `modalidade esportiva coletiva`f
where a.Passaporte_Atleta = b.Atleta_Passaporte_Atleta and b.`Modalidade Individual_Nome_ModalidadeIndividual` = e.Nome_ModalidadeIndividual
union
select distinct a.Passaporte_Atleta, a.Nome_Atleta, d.`Modalidade Esportiva_Nome_ModalidadeColetiva`, d.Posição_Equipe
from atleta a, `atleta de modalidade individual` b, `atleta de equipe` c, equipe d, `modalidade esportiva individual` e, `modalidade esportiva coletiva`f
where a.Passaporte_Atleta = c.Atleta_Passaporte_Atleta and c.Equipe_Id_Equipe = d.Id_Equipe;

# Desempenho das equipes na competição
select distinct d.Id_Equipe as Número_da_Equipe, e.Nome_ModalidadeColetiva, c.Nome_Delegação, d.Posição_Equipe
from atleta a, `atleta de equipe` b, delegação c, equipe d, `modalidade esportiva coletiva` e
where b.Atleta_Passaporte_Atleta = a.Passaporte_Atleta and 
b.Equipe_Id_Equipe = d.Id_Equipe and 
c.Id_Delegação = a.Delegação_Id_Delegação and
d.`Modalidade Esportiva_Nome_ModalidadeColetiva`= e.Nome_ModalidadeColetiva;





