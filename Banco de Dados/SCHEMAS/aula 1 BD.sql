create database filme;
use filme;
create table Filme(
idFilme int primary key,
titulo varchar(50),
genero varchar(20),
diretor varchar(40)
);
insert into Filme values
(1, 'Alien vs predador', 'ação', 'Paul W. Anderson');

select * from Filme;
insert into Filme (idFilme, titulo) values
(2, 'Velozes e Furiosos 9'),
(3, 'Interestelar'),
(4, 'Sempre ao Seu lado');

insert into Filme (titulo, idFilme) values
('Ratattouille', 5),
('Resident Evil', 6);

update Filme set titulo = 'Sempre ao seu lado' where idFilme=4;

select * from Filme;

update Filme set genero = 'terror', diretor = 'Paul W. Anderson' where idFilme=6;

select * from Filme;

update Filme set genero = 'drama' where idFilme in (3, 4);

select * from Filme;

update Filme set genero= 'ação', diretor= 'Justin Lin' where idFilme=2;

select * from Filme;

update Filme set diretor = 'Christopher Nollan' where idFilme=3;


select * from Filme;

update Filme set diretor = 'Lasse Hallsrom' where idFilme=4;

update Filme set genero = 'animação', diretor  = 'Brad Bird' where idFilme=5;

select * from Filme;

desc Filme; -- ver tamanho das colunas
alter table Filme modify genero varchar(30); -- alterando a coluna genero para ter no max 30 caracteres

alter table Filme add column ano int; --  insere uma coluna chamada ano na tabela filma
alter table Filme add ano int; -- palavra column é opcional

select * from Filme;

alter table Filme drop ano; -- excluindo a coluna ano da tabela Filme
