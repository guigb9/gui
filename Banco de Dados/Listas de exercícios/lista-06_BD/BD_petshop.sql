create database petshop;
use petshop;

create table pet(
id_pet int primary key auto_increment,
nome_pet varchar(40),
especie_pet varchar(40),
data_nasc_pet date,
raca_pet varchar(20),
fk_cliente int,
foreign key(fk_cliente) references cliente(id_cliente)
)auto_increment = 101;

create table cliente(
id_cliente int primary key auto_increment,
nome varchar(40),
rua varchar(20),
bairro varchar(30),
cidade varchar(40),
numero int,
telefone_fixo int,
telefone_movel int
);

insert into cliente values
(null, 'José da Silva', 'Rua das Flores', 'Jardim cores', 'Rio Claro', 109, 48932382, 987674532),
(null, 'Samuel da Silva', 'Rua Pinheiros', 'Vila Holanda', 'São Paulo', 1092, 48937281, 952721547),
(null, 'Juliana Golveia', 'Rua Palácio', 'Vila joana', 'Santo André', 28, 48296732, 967236915),
(null, 'Guilherme Gomes', 'Rua dos Cocais', 'Jardim Guarará', 'Santo André', 1019, 46783546, 946728915);


insert into pet values
(null, 'Paçoca', 'cachorro', '2019-09-11', 'Vira Lata', 1),
(null, 'Tornado', 'gato', '2013-07-01', 'Vira Lata', 1),
(null, 'Preto', 'cachorro', '2011-09-11', 'shih-tzu', 2),
(null, 'Lua', 'gato', '2015-08-17', 'Ragdoll', 3),
(null, 'Hung', 'cachorro', '2017-09-25', 'Golden', 3),
(null, 'Nina', 'cachorro', '2007-01-18', 'Vira Lata', 4);
select*from cliente;
select*from pet;
alter table cliente modify nome varchar(20);
select * from pet where especie_pet = 'gato';
select nome_pet, data_nasc_pet from pet;
select * from pet order by nome_pet;
select * from cliente order by bairro desc;
select * from pet where nome_pet like 'P%';
select * from cliente where nome like '% da Silva';
update cliente set telefone_fixo = 44550011 where id_cliente = 4;
select*from cliente;
select pet.*, cliente. nome, rua, bairro, cidade, numero, telefone_fixo as 'tel:', telefone_movel as 'cel:' from pet, cliente where id_cliente = fk_cliente;
select pet.*, cliente. nome, rua, bairro, cidade, numero, telefone_fixo as 'tel:', telefone_movel as 'cel:' from pet, cliente where id_cliente = fk_cliente and id_cliente = 1;
delete from pet where id_pet = 102;
select*from pet;


