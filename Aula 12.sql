/*Aula 12 - SELECT(Parte 2)*/

select * from cursos
where nome like '%o%'; /*assim como o between o 'like' é um operador lógico*/
/*se a 'wild card'(coringa, vulgo símbolo da porcentagem), vier antes da palavra o select
vai me mostrar todas as linhas que aparentemente terminam com a palavra inserida.
Se vier depois, vai me mostrar o que se parece com o ínicio do que foi inserido.
Se vier antes e depois, vai me mostrar tudo o que aparece com o que foi inserido.*/

select * from cursos
where nome like 'ph%p_'; 
/*O underline exige que o select selecione as linhas que tenham um caractere a mais
a quantidade de underlines é a quantidade de caracteres a mais*/

select distinct carga from cursos
order by carga; /*Mostra um valor repetido apenas uma vez*/

select count(*) from cursos
where carga < 40; 
/*A funçaõ de agregamento 'count' vai contar quantas ocrrências eu tenho do que foi pedido*/

select max(carga) from cursos; 
/*diz pra mim o maior valor dentre as linhas selecionadas*/

select max(totaulas) from cursos
where ano = 2016;

select min(carga) from cursos;
/*Se o 'max' é o valor maximo encontrado nas linha, 'min' né....*/

select sum(carga) from cursos;
/*'Sum' soma os valores das linhas especificadas*/

select avg(carga) from cursos;
/*'Avg' tira a média dos valores das linhas selecionadas*/
