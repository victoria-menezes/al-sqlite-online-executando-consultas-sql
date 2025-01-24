/* Vamos considerar algumas consultas típicas que podem ser realizadas em um sistema de gerenciamento escolar. */

-- Consulta 1: Retornar a média de Notas dos Alunos em história.
select avg(nota) from Notas
WHERE id_disciplina =  2;

-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.
select * from Alunos
where lower(nome_aluno) like 'a%';

-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.
select * from Alunos
where data_nascimento like '%-02-%';
-- OU:
select * from Alunos
where strftime('%m', data_nascimento) = '02'

-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.
select id_aluno, nome_aluno, data_nascimento,
  CASE 
  when strftime('%Y', date('now')) || '-' || strftime('%m-%d',  date(data_nascimento)) < date('now') then strftime('%Y', date('now')) - strftime('%Y',  date(data_nascimento))
  else strftime('%Y', date('now')) - strftime('%Y',  date(data_nascimento)) - 1
  END AS idade
from  Alunos
-- OU:
SELECT id_aluno, nome_aluno, data_nascimento,
      (strftime('%Y', CURRENT_DATE) - strftime('%Y', data_nascimento)) - 
      ((strftime('%m-%d', CURRENT_DATE) < strftime('%m-%d', data_nascimento))) AS idade
FROM Alunos;

-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado se a sua nota foi igual ou maior que 6. 
select alunos.id_aluno as id, alunos.nome_aluno as nome, notas.nota as nota,
case
  when nota >= 6 then 'Aprovado'
  else 'Reprovado'
  end as resultado
from alunos join notas
on alunos.ID_Aluno = notas.ID_Aluno;
-- OU:
SELECT 
ID_Aluno As aluno, nota,
CASE
  WHEN nota >= 6 THEN 'APROVADO' 
  ELSE 'REPROVADO' END 
  AS Resultado
FROM Notas;
