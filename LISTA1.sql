select livros.titulo 
from aula_db_exemplos.livros;

select autores.nome 
from aula_db_exemplos.autores 
where autores.nascimento < '1901-01-01';

select livros.titulo 
from aula_db_exemplos.livros
where livros.autor_id = 1;

select alunos.nome 
from alunos 
inner join matriculas on alunos.id = matriculas.aluno_id 
where curso = 'Engenharia de Software';

select produto, SUM(receita) as Receita_total 
from vendas 
group by produto;

select nome, COUNT(titulo) as n°_de_livros 
from autores 
inner join livros 
where autores.id = livros.autor_id 
group by nome;

