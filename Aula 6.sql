/*Aula 6 Alterando a tabela*/

alter table pessoas /* Seleciona a tabela pra mudar */
add column profissao varchar(10);  /*Adiciona um campo/coluna na última linha*/

alter table pessoas
drop column profissao; /*Elimina uma coluna*/

alter table pessoas
add column profissao varchar(10) after nome; /*Adiciona um campo depois de uma linha específica*/

alter table pessoas
add codigo int first; /*Adiciona uma coluna em primeiro*/

alter table pessoas
modify column profissao varchar(20); /*Modifica os tipos primitivos e as constraint de um campo*/

/*Não da pra adicionar uma coluna vazia se você escrever 'not null', mas tem como vc deixar ela 'vazia' assim:*/
alter table pessoas
add column profissao varchar(20) not null default ''; /*Aqui eu digo que o valor padrão é uma string vazia*/

alter table pessoas
change column profissao prof varchar(20) not null default ''; /*So usar se for mudar o nome da coluna*/

alter table gafanhotos 
rename to pessoas; /*Muda o nome da tabela*/

create table if not exists cursos( /*If not exists só funciona se não existir e if exists o contrário*/
	nome varchar(30) not null unique, /*Unique só da entrada a algo que só pode ter uma vez*/
    descricao text,
    carga int unsigned, /*Significa sem sinal*/
    totaulas int,
    ano year default '2021'
)default charset = utf8;

alter table cursos 
add column cursoid int first;

alter table cursos
add primary key(cursoid);

drop table nomedatable; /*Deleta uma tabela*/