/* Chegou a hora de se desafiar a desenvolver ainda mais todo o conhecimento aprendido durante nossa jornada!

Abaixo estão 10 exercícios de SQL que abrangem uma variedade de tópicos, desde funções de agregação e string até operadores lógicos e cláusulas de filtragem. Esses exercícios são projetados para serem aplicados em um banco de dados genérico e podem precisar de ajustes para se adequarem a esquemas específicos.
*/

-- CRIACAO DAS TABELAS ---
create table clientes (
  id int primary key,
  nome text,
  sobrenome text
);

create table produtos(
  id int primary key,
  nome text,
  descricao text
);

create table funcionarios(
  id int primary key,
  nome text,
  sobrenome text,
  data_nasc date,
  departamento text,
  salario decimal (15,2)
);

create table vendas(
  id int primary key,
  data_venda date
);

create table pedidos(
  id int primary key,
  total decimal(10,2)
);

create table eventos(
  id int primary key,
  data_string text
);

create table avaliacoes(
  id int primary key,
  nota decimal(2,1)
);






-- INSERINDO VALORES  ---
INSERT INTO clientes (id,nome,sobrenome) VALUES
(0, 'Juliana', 'Rodrigues'),
(1, 'Pedro', 'Pereira'),
(2, 'Camila', 'Souza'),
(3, 'Maria', 'Costa'),
(4, 'Carlos', 'Carvalho'),
(5, 'Roberto', 'Silveira'),
(6, 'Larissa', 'Barros'),
(7, 'Rafael', 'Nunes'),
(8, 'Gabriel', 'Lima'),
(9, 'Vitor', 'Cavalcanti'),
(10, 'Tiago', 'Martins'),
(11, 'Isabela', 'Melo'),
(12, 'Paula', 'Vieira'),
(13, 'Fernanda', 'Almeida'),
(14, 'Juliana', 'Oliveira'),
(15, 'Lucas', 'Silva'),
(16, 'Renato', 'Mendes'),
(17, 'Tatiane', 'Azevedo'),
(18, 'Sofia', 'Cardoso'),
(19, 'Paulo', 'Farias'),
(20, 'Carlos', 'Martins'),
(21, 'Marcos', 'Cavalcanti'),
(22, 'Letícia', 'Carvalho'),
(23, 'Cláudia', 'Machado'),
(24, 'Larissa', 'Ferreira'),
(25, 'Lucas', 'Oliveira'),
(26, 'Mariana', 'Santos'),
(27, 'Thiago', 'Santos'),
(28, 'Juliana', 'Oliveira'),
(29, 'Camila', 'Vieira'),
(30, 'Maurício', 'Cunha'),
(31, 'Gabriela', 'Almeida'),
(32, 'Ricardo', 'Rocha'),
(33, 'Eduardo', 'Ribeiro'),
(34, 'João', 'Santos'),
(35, 'Leonardo', 'Rocha'),
(36, 'Carlos', 'Martins'),
(37, 'Marcos', 'Nunes'),
(38, 'Ricardo', 'Lima'),
(39, 'Mariana', 'Ferreira'),
(40, 'Lucas', 'Oliveira'),
(41, 'Felipe', 'Gomes'),
(42, 'Fernanda', 'Rodrigues'),
(43, 'Eduardo', 'Barros'),
(44, 'Eduardo', 'Lima'),
(45, 'Eduardo', 'Nunes');

INSERT INTO produtos (id, nome, descricao) VALUES
(43, 'Espátula', 'Utensílio utilizado para virar ou mover alimentos durante o preparo, especialmente em frigideiras e panelas.'),
(12, 'Panela', 'Recipiente utilizado para cozinhar alimentos com líquidos ou calor.'),
(57, 'Faca', 'Afiada e usada para cortar, picar e fatiar alimentos.'),
(68, 'Colher de Pau', 'Ideal para mexer alimentos em panelas quentes, sem danificar o revestimento.'),
(34, 'Ralador', 'Usado para ralar alimentos como queijos, legumes e frutas.'),
(18, 'Tábua de Corte', 'Superfície plana para cortar e preparar alimentos.'),
(26, 'Peneira', 'Usada para separar sólidos de líquidos ou peneirar ingredientes secos.'),
(45, 'Batedeira', 'Equipamento elétrico usado para bater massas e outros ingredientes.'),
(9, 'Escumadeira', 'Utilizada para retirar alimentos fritos ou cozidos da gordura ou do líquido.'),
(51, 'Liquidificador', 'Aparelho para triturar, misturar e bater ingredientes em líquidos.'),
(62, 'Frigideira', 'Panela rasa com superfície plana usada para fritar ou grelhar alimentos.'),
(37, 'Coador', 'Utilizado para filtrar líquidos ou coar ingredientes.'),
(23, 'Tesoura de Cozinha', 'Ferramenta multifuncional para cortar alimentos e outros materiais na cozinha.'),
(71, 'Abridor de Latas', 'Utensílio usado para abrir latas de alimentos enlatados.'),
(56, 'Caçarola', 'Panela com borda alta e tampa, ideal para assados e cozidos.'),
(33, 'Centrífuga',NULL),
(24, 'Panquequeira',NULL),
(15, 'Cacho de Frutas',NULL),
(72, 'Torre de Temperos',NULL),
(48, 'Manteigueira',NULL);

INSERT INTO funcionarios (id, nome, sobrenome, data_nasc, departamento, salario) VALUES
(3, 'João', 'Silva', '1984-06-15', 'Financeiro', 2500),
(12, 'Maria', 'Oliveira', '1992-03-08', 'Marketing', 22000),
(24, 'Pedro', 'Souza', '1980-12-01', 'TI', 25000),
(7, 'Amas', 'Costa', '1975-11-22', 'RH', 9500),
(56, 'Carlos', 'Pereira', '1990-02-18', 'Jurídico', 23000),
(98, 'Beatriz', 'Almeida', '1988-07-30', 'Vendas', 1500),
(13, 'Alexis', 'Santos', '1995-05-11', 'Operações', 7500),
(31, 'Gabriela', 'Rocha', '1977-09-20', 'Logística', 9200),
(47, 'Felipe', 'Carvalho', '1982-04-09', 'Contabilidade', 24000),
(21, 'Mariana', 'Lima', '1990-01-25', 'TI', 23000),
(66, 'Diego', 'Martins', '1984-10-14', 'Comercial', 26000),
(8, 'Camila', 'Fernandes', '1983-06-05', 'Jurídico', 10500),
(34, 'Thiago', 'Gomes', '1991-08-19', 'Marketing', 22000),
(52, 'Juliana', 'Pires', '1976-04-03', 'RH', 3800),
(19, 'Renan', 'Costa', '1987-12-12', 'Financeiro', 9200),
(40, 'Larissa', 'Azevedo', '1980-03-17', 'Vendas', 2500),
(75, 'Rafael', 'Silva', '1994-10-23', 'Operações', 4500),
(27, 'Patrícia', 'Santos', '1978-01-30', 'Logística', 8700),
(61, 'Jorge', 'Oliveira', '1986-11-05', 'Comercial', 25000),
(84, 'Letícia', 'Souza', '1992-07-29', 'Contabilidade', 9800);

INSERT INTO vendas (id, data_venda) VALUES
(3, '2020-05-14'),
(12, '2019-08-22'),
(24, '2021-03-09'),
(7, '2022-06-30'),
(56, '2023-01-18'),
(98, '2020-11-05'),
(13, '2021-07-23'),
(31, '2024-02-11'),
(47, '2019-12-15'),
(21, '2020-04-02'),
(66, '2022-09-19'),
(8, '2023-05-25'),
(34, '2021-01-10'),
(52, '2022-07-14'),
(19, '2024-01-28'),
(40, '2018-10-03'),
(75, '2023-03-16'),
(27, '2019-09-29'),
(61, '2020-07-17'),
(84, '2021-11-12');


INSERT INTO pedidos(id, total) VALUES
(34, 56.72),
(92, 77.15),
(12, 22.34),
(55, 89.90),
(61, 45.67),
(18, 67.89),
(2, 33.22),
(77, 59.43),
(99, 14.78),
(45, 80.01),
(63, 91.35),
(8, 27.56),
(30, 72.84),
(56, 63.47),
(41, 95.62),
(20, 11.23),
(78, 50.29),
(50, 64.11),
(9, 82.66),
(23, 38.47);

INSERT INTO eventos (id, data_string) VALUES
(12, '2015-05-14'),
(56, '2017-08-22'),
(7, '2020-03-09'),
(31, '2019-06-30'),
(66, '2021-01-18'),
(84, '2022-11-05'),
(3, '2018-07-23'),
(47, '2024-02-11'),
(19, '2016-12-15'),
(21, '2013-04-02'),
(75, '2020-09-19'),
(13, '2014-05-25'),
(24, '2021-01-10'),
(40, '2023-07-14'),
(52, '2024-03-28'),
(98, '2012-10-03'),
(8, '2021-03-16'),
(27, '2019-09-29'),
(61, '2016-07-17'),
(34, '2020-11-12');

INSERT INTO avaliacoes(id, nota) VALUES
(97, 3.4),
(99, 2.3),
(3, 7.58),
(12, 9.12),
(24, 6.45),
(7, 8.74),
(56, 5.39),
(98, 7.91),
(13, 6.88),
(31, 8.02),
(47, 9.56),
(21, 4.33),
(66, 8.67),
(8, 7.40),
(34, 9.01),
(52, 6.27),
(19, 8.11),
(40, 5.78),
(75, 6.94),
(27, 7.26),
(61, 9.47),
(84, 8.15);

-- FILTROS

-- Selecione os primeiros 5 registros da tabela clientes, ordenando-os pelo nome em ordem crescente.
select *
from clientes
order by nome asc
limit 10;

-- Encontre todos os produtos na tabela produtos que não têm uma descrição associada (suponha que a coluna de descrição possa ser nula).
select *
from produtos
where descricao ISNULL

-- Liste os funcionários cujo nome começa com 'A' e termina com 's' na tabela funcionarios.
select *
from funcionarios
where lower(nome)
LIKE 'a%' and
lower(nome) like '%s'

-- Exiba o departamento e a média salarial dos funcionários em cada departamento na tabela funcionarios, agrupando por departamento, 
-- apenas para os departamentos cuja média salarial é superior a $5000.
select departamento,  avg(salario) from funcionarios
group by departamento
HAVING avg(salario) > 5000;

-- Selecione todos os clientes da tabela clientes e concatene o primeiro e o último nome, além de calcular o comprimento total do nome completo.
select (nome || ' ' || sobrenome) as nome_completo, length(nome || ' ' || sobrenome) as comprimento
from clientes

-- Para cada venda na tabela vendas, exiba o ID da venda, a data da venda e a diferença em dias entre a data da venda e a data atual.
select id, data_venda, (julianday('now') - julianday(data_venda)) as dias_desde_venda from vendas

-- Selecione todos os itens da tabela pedidos e arredonde o preço total para o número inteiro mais próximo.
select id, round(total) from pedidos

-- Converta a coluna data_string da tabela eventos, que está em formato de texto (YYYY-MM-DD), para o tipo de data e selecione todos os eventos após '2023-01-01'.
select * from eventos
where cast(data_string as date) > '2023-01-01';

-- Na tabela avaliacoes, classifique cada avaliação como 'Boa', 'Média', ou 'Ruim' com base na pontuação: 1-3 para 'Ruim', 4-7 para 'Média', e 8-10 para 'Boa'.
select id, nota,
	CASE
		when nota <= 4 then 'Ruim'
		when nota > 4 and nota <= 7 then 'Média'
		else 'Boa'
    END AS 'avaliacao'
FROM avaliacoes

-- Altere o nome da coluna data_nasc para data_nascimento na tabela funcionarios e selecione todos os funcionários que nasceram após '1990-01-01'.
ALTER TABLE funcionarios RENAME COLUMN data_nasc to data_nascimento;
select * from funcionarios
where data_nascimento > '1990-01-01';



