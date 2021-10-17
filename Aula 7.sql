SELECT * FROM cursos;
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2','Algoritmos', 'Lógica da programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à linguagem java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de dados MySql', '30', '15', '2016'),
('7', 'Word', 'Curso completo de word', '40', '30', '2016'),
('8', 'sapateado', 'Danças Ritmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

update cursos /*Comando atualiza registros*/
set nome = 'HTML5' /*Aqui eu digo o que eu quero mudar*/
where cursoid = '1'; /*E aqui eu dou o referencial*/

update cursos
set nome = 'PHP', ano = '2015' /*Para modificar mais de uma linha separo as mudanças com vírgula*/
where cursoid = '4';

update cursos 
set nome = 'Java', carga = '40', ano = '2015'
where cursoid = '5'
limit 1; /*Limita quantas linhas vão ser modificadas*/

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

delete from cursos /*Deleta uma linha*/
where ano = '2018'
limit 2;

truncate cursos; /*Deleta os dados de uma tabela*/
