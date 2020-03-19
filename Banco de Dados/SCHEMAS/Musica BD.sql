create database Musica;

use Musica;

create table Musica(
idMusica int primary key,
título varchar(40),
artista varchar(40),
gênero varchar(40)
);

select * from Musica;

insert into Musica values
(001, 'Sweet child O mine', 'Guns N Roses', 'Rock'),
(002, 'Cheia de Manias', 'Raça Negra', 'Samba'),
(003, 'Paradise City', 'Guns N Roses', 'Rock'),
(004, 'Senhor do Tempo', 'Charlie Brown Junior', 'Rock Nacional'),
(005, '011 é o DDD', 'DJ Henrique de Ferraz', 'funk'),
(006, 'Slippery', 'Migus', 'Trap'),
(007, 'Vida Loka parte 1', 'Racionais', 'Rap'),
(008, 'Zoio de Lula', 'Charlie Brown Junior', 'Rock Nacional'),
(009, 'Nothing Else Matters', 'Mettallica', 'Rock'),
(010, 'Pais e Filhos', 'Legião Urbana', 'Rock Nacional');

select * from Musica;

select título, artista from Musica;

select * from Musica where gênero = 'Rock Nacional';

select * from Musica where artista = 'Charlie Brown Junior';

select * from Musica order by título;

select * from Musica order by artista desc;

select * from Musica where título like 'p%';

select * from Musica where artista like '% %r';

select * from Musica where gênero like '_o%';

select * from Musica where título like '% %o_';

drop table Musica;

create table Album(
idAlbum int primary key auto_increment,
nome varchar(40),
gravadora varchar(40)
);

insert into Album values
(null, 'Rock', 'Rockeiro'),
(null, 'funk', 'GR6'),
(null, 'Camisa 10', 'Brasil'),
(null, 'Legiao 1', 'Record'),
(null, 'Raça negra', 'Samba10'),
(null, 'Vida Loka', 'rap nacional'),
(null, 'guccimane', 'rapintern');

alter table Musica add FkAlbum int;
alter table Musica add foreign key(FkAlbum) references Album(idAlbum);


select * from musica;

update Musica set FkAlbum=1 where idMusica in(1, 3, 9);

