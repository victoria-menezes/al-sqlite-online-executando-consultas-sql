-- Selecionar os funcionários com os 5 maiores salários, que ainda estão empregados
select * from HistoricoEmprego
WHERE datatermino ISNULL
ORDER BY salario desc
LIMIT 5;