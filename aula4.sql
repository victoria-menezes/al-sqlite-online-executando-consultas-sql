-- Checar se todos os campos de cpf estao corretamente preenchidos com 11 digitos, sabendo que temos 150 registros no total
select count(*), length(cpf) qtd
from Colaboradores
where qtd=11;

-- Criar um texto explicativo sobre cada colaborador utilizando concatenacao
select ('A pessoa colaboradora ' || nome || ' de CPF ' || cpf || ' possui o seguinte endereco: ' || endereco) as texto
from Colaboradores;

-- Ver periodo de inicio em um formato diferente (YYYY/MM)
select id_colaborador, STRFTIME('%Y/%M', datainicio) as data from Licencas;

-- Identificar o intervalo de tempo que cada colaborador passou em seu ultimo contrato
select id_colaborador, JULIANDAY(datatermino) - JULIANDAY(datacontratacao) as dias
from HistoricoEmprego
where datatermino IS NOT NULL;

-- Demonstracao da funcao round()
SELECT avg(faturamento_bruto), round(avg(faturamento_bruto),2) from faturamento;

-- Converter faturamento medio em um texto 
select ('O faturamento bruto medio foi '|| cast(round(avg(faturamento_bruto),2) AS TEXT)) as texto
FROM faturamento;