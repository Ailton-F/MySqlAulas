/*Aula 11 - SELECT(Parte 1) - Select é uma linguagem DQL - data query language*/

select nome, carga, ano from cursos /*Ao ivés do asterisco eu uso os nome das colunas*/
order by ano, nome desc; /*desc como parametro é igual a descendente, se não colocar nada ele fica ascendente*/
/*também posso ordenar tanto por ano como por nome*/

select nome, carga, ano from cursos
where ano != 2016 /*Só mostra os campos com o ano igual a 2016, tem como usar símbolos lógicos como "<"(menor que) ">"(maior que)*/
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016 /*Mostra os registros entre dois valores*/
order by ano desc, nome;

select nome, ano from cursos
where ano in (2014, 2016) /*Mostra os registros a partir de valores especificos*/
order by ano desc, nome;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30
order by carga, nome; 