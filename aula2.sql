-- Achar um treinamento cujo nome completo nao conhecemos
select * from Treinamento
where lower(curso) LIKE '%realizar%';

-- Achar um funcionario cujo nome completo nao conhecemos
select * from Colaboradores
where lower(nome) LIKE 'isadora%';

-- Buscar colaboradoes em cargos específicos que não estão trabalhando no momento
select * from HistoricoEmprego
where lower(cargo) = 'professor' and
datatermino notnull;

-- Buscar colaboradoes em cargos específicos, com mais de uma opcao de cargo
select * from HistoricoEmprego
where lower(cargo) = 'oftalmologista' OR
lower(cargo) = 'dermatologista'; 

-- Outra maneira de oferecer varias opcoes na consulta
select * from HistoricoEmprego
where lower(cargo) IN ('oftalmologista', 'dermatologista', 'professor');

-- Buscar dois cursos especificos da tabela de treinamento ao mesmo tempo
select * from Treinamento
where (lower(curso) like 'o direito%' and lower(instituicao) = 'da rocha')
OR (lower(curso) like 'o conforto%' and lower(instituicao) = 'das neves');