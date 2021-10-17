/*Aula 5 inserindo dados na tabela*/
insert into /*Comando DML*/ pessoas values /*Como está na mesma ordem da tabela eu não preciso colocar (id, nome, nascimento etc)*/
(default, 'Vladimir', '1910-02-21','F','82.4','1.92','Rússia'), /*para adicionar mais de uma basta colocar vírgula*/
(default, 'Pedro', '1960-05-12', 'M', '60.7', '1.76', 'Grécia');

select * from pessoas;