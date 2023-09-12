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

select curso, nome 
from alunos 
right join matriculas on alunos.id = matriculas.aluno_id;

select alunos.nome, matriculas.curso
from alunos
inner join matriculas on alunos.id = matriculas.aluno_id;

with contagemlivros as (
    select autor_id, count(*) as quantidadelivros
    from livros
    group by autor_id
)

select autores.nome as autor, quantidadelivros as maiorquantidadelivros
from contagemlivros
join autores on contagemlivros.autor_id = autores.id
where quantidadelivros = (
    select max(quantidadelivros) 
    from contagemlivros
);

select produto, sum(receita) as receita_total 
from vendas 
group by produto 
order by receita_total asc limit 1;

select nome, count(curso) as número_de_matriculas 
from alunos 
inner join matriculas on alunos.id = matriculas.aluno_id 
group by nome;

with número_de_produtos as (
    select produto, count(*) as número from vendas group by produto
)
select produto, número from número_de_produtos where número = (select max(número) from número_de_produtos);