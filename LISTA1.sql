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
