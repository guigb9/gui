create database Revista;
use Revista;

create table revista (
idrevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);
select * from revista;

insert into revista values
(null, 'Veja', null),
(null, 'IstoÉ', null),
(null, 'Época', null),
(null, 'TITITI', null);
select * from revista;

update revista set categoria='informação' where idrevista in (2,3);

update revista set categoria='jornalismo' where idrevista = 1;

update revista set categoria='fofoca' where idrevista = 4;

select * from revista;

insert into revista values
(null, 'AutoEsporte', 'Informação'),
(null, 'minhanovela', 'fofoca'),
(null, 'jornalismo', 'jornalismo');

desc revista;


alter table revista modify categoria varchar(40);
alter table revista add column periodicidade varchar(15);

alter table revista drop periodicidade;


create table Editora(
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date
) auto_increment = 1000;

insert into Editora values
(null, 'Época', '2001-09-01'),
(null, 'Capricho', '1998-09-23'),
(null, 'Corvo', '1997-09-22'),
(null, 'saraiva', '1992-08-30');
select * from Editora;

alter table revista add FkEditora int;

alter table revista add foreign key(FkEditora) references Editora(idEditora);
select * from revista;
update revista set FkEditora=1000 where idrevista in(3, 5, 6);
update revista set FkEditora=1001 where idRevista in(6, 4);
update revista set FkEditora=1002 where idRevista in(7);
update revista set FkEditora=1003 where idRevista in(1);
update revista set FkEditora=1003 where idRevista in(2);

select revista.*, Editora. nomeEditora as 'nome da editora', dataFund as 'data de fundação' from revista, Editora where FkEditora = idEditora;
select revista.*, Editora. nomeEditora as 'nome da editora', dataFund as 'data de fundação' from revista, Editora where FkEditora = idEditora and FkEditora=1003;








