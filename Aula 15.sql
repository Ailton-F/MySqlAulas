alter table gafanhotos
add foreign key (cursopreferido) /*Digo qual vai ser a chave estrangeira*/
references cursos(idcurso); /*Digo a referência da tabela e da tupla para a chave*/

desc gafanhotos;
SELECT * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = 6	
where id = 1;

delete from cursos 
where idcurso = 28;

/*-------------------------------------------------------------------------------*/

select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;
select * from gafanhotos;

select g.nome, c.nome, c.ano 
from gafanhotos as g join cursos as c/*Mostras duas tabelas 'O'*/
on c.idcurso = g.cursopreferido /*Relaciono a chave primaria à chave estrangeira*/
order by c.nome; 

select g.nome, c.nome, c.ano 
from gafanhotos as g left join cursos as c /*Da preferência a uma tabela mostrando todas as tuplas
'Right' da preferência à tabela da direita e 'Left' à da esquerda*/
on c.idcurso = g.cursopreferido;

