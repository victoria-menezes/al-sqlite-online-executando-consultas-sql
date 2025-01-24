-- Descobrir mes de maior faturamento
select mes, max(faturamento_bruto) from faturamento;

-- Descobrir mes de menor faturamento
select mes, min(faturamento_bruto) from faturamento;

-- Descobrir a soma de todos os novos clientes de 2023
select sum(numero_novos_clientes) as 'Novos clientes 2023' from faturamento
where mes like '%2023';

-- Descobrir a media de despesas da empresa
select avg(despesas) from faturamento;

-- Descobrir a media de lucro da empresa
select avg(lucro_liquido) from faturamento;

-- Descobrir quantos colaboradores estao desempregados
select count(*) from HistoricoEmprego where datatermino NOTNULL;

-- Contar quantas licensas de ferias foram tiradas
select count(*) from Licencas where lower(tipolicenca) = 'férias';

-- Identificar quais tipos de parentesco os colaboradores tem com os dependentes e a quantia desses dependentes
select parentesco, COUNT(*) from Dependentes group by parentesco;

-- Qual a instituicao que oferece cursos que e mais procurada 
select instituicao, count(curso) FROM Treinamento group by instituicao 
order by COUNT(curso) desc;

-- Mostrando como utilizar condicoes em conjunto a formulas de agregacao (COUNT)
-- WHERE só cria condicoes para registros unicos, para condicoes de registros agrupados, se usa HAVING
select instituicao, count(curso) FROM Treinamento group by instituicao 
HAVING count(curso) > 2
order by instituicao desc;

-- Saber as profissoes mais cadastradas
-- count(*) qtd = contando, e nomeando esse resultado como 'qtd'
select cargo, count(*) qtd
from HistoricoEmprego
group by cargo
having qtd>=2
order by qtd desc;