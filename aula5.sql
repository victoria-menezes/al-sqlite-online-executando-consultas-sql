-- Separar as pessoas colaboradoras pela faixa salarial
select id_colaborador, cargo, salario, 
case
when salario < 3000 then 'Baixo'
when salario between 3000 and 6000 then 'Medio'
else 'Alto'
end as categoria_salario
from HistoricoEmprego;

-- Mudar o nome de uma  tabela
alter table HistoricoEmprego rename to CargosColaboradores;