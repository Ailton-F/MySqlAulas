use cadastro;
select * from gafanhotos
where sexo = 'F' and altura > 1.90;

/*1 - Selecionar todas as mulheres da lista de gafanhotos*/
select nome from gafanhotos
where sexo = 'F'; 

/*2 - Uma lista com dados de todos aqueles que nasceram entre 01/jan/2000 - 31/dez/2015*/
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

/*3 - Uma lista dos homens programadores*/
select * from gafanhotos
where sexo = 'M' and profissao = 'Programador';

/*4 - Uma lista com todos os dados de todas as mulheres que nasceram no brasil e que tem seu nome iniciado com a letra 'J'*/
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/*5 - Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg*/
select nome, nacionalidade from gafanhotos 
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100;

/*6 - Qual é a maior altura entre gafanhotos homens que moram no Brasil*/
select max(altura) from gafanhotos
where sexo = 'M';

/*7 - Qual a média de peso dos gafanhotos cadastrados*/
select avg(peso) from gafanhotos;

/*8 - Qual o menor peso entre os gafanhotos mulheres que nasceram fora do Brasil, entre 01/jan/1999 e 31/dez/2000*/
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1999-01-01' and '2000-12-31';

/*9 - Quantas gafanhotas mulheres tem mais de 1.90m de altura*/
select count(*) from gafanhotos
where sexo = 'F' and altura > 1.90;