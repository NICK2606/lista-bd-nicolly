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

select curso, count(nome) as número_de_alunos 
from matriculas 
inner join alunos on matriculas.aluno_id=alunos.id 
group by curso;

select produto, AVG(receita) as receita_media 
from vendas 
group by produto;

select produto, SUM(receita) as receita_total 
from vendas 
group by produto having receita_total >'10.000';

select nome, count(titulo) as número_de_livros 
from autores 
inner join livros 
where autores.id = livros.autor_id 
group by nome having número_de_livros >2;

select titulo, nome 
from livros 
inner join autores on livros.autor_id=autores.id;

select nome, curso 
from alunos 
inner join matriculas on alunos.id = matriculas.aluno_id; 

select nome, titulo 
from autores 
left join livros on autores.id = livros.autor_id;

