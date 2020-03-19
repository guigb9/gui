create database escola;

use escola;

create table Programa(
idPrograma int primary key,
nome varchar(40),
genero varchar(30),
emissora varchar(20)
);

insert into Programa values
(001, 'domingao do faustao', 'entretenimento', 'globo'),
(002, 'fantastico', 'jornal', 'globo'),
(003, 'jornal da record', 'jornal' ,'record'),
(004, 'domingo espetacular', 'entretenimento', 'record'),
(005, 'silvio santos', 'entretenimento', 'SBT'),
(006, 'a praca e nossa', 'entretenimento', 'SBT'),
(007, 'caldeirao do hulk', 'entretenimento', 'globo'),
(008, 'jornal da band', 'jornal', 'band'),
(009, 'pesadelo na cozinha', 'entretenimento', 'band');

select * from Programa;

select nome, emissora from Programa;

select * from Programa where emissora = 'globo';

select * from Programa where emissora = 'globo';

select * from Programa where genero = 'jornal';

select * from Programa order by genero;

select * from Programa order by nome desc;

select * from  Programa where nome like '%s';

select * from  Programa where genero like 'e%';

select * from Programa where emissora like '_l%';

select * from Programa where nome like '%l_';

update Programa set emissora='globo' where idPrograma = 9;

select * from Programa;

delete from Programa where idPrograma = 7;

select * from Programa;

drop table Programa;
