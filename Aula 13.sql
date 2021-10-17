/*Aula 13 - Select(Parte 3)*/

select carga, totaulas, count(*) from cursos 
group by totaulas /*Aqui eu agrupo pela coluna selecionada*/
order by count(*);

select carga, count(*) from cursos
where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having ano > 2015; /*Eu digo para mostrar todos os que TÊM mais que 3 ocrrências*/

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);