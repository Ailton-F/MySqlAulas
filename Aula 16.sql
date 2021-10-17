create table gafanhoto_assiste_curso (
	id int auto_increment not null,
	data date,
    idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

insert into gafanhoto_assiste_curso values  
(default, '2014-03-1', 1, 2);

select * from gafanhoto_assiste_curso;

select g.nome, c.nome, a.idcurso from gafanhotos as g
join gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto 
join cursos as c
on c.idcurso = a.idcurso
order by g.nome; 