create database atleta_asda;

use atleta_asda;

create table Atleta (	
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into Atleta values
    (03, 'Leonardo da Silva', 'tenis de mesa', 3),
    (04, 'Rodrigo Gonzales', 'volei', 0),
    (05, 'Vitor Fernandes', 'basquete', 9),
    (06, 'Gabriel Henrique', 'Natação', 3),
    (07, 'Rosana Dalva', 'tenis de mesa', 5),
    (08, 'Juliana Costa', 'volei', 10),
    (09, 'Daniel Pontes', 'Futebol', 10),
    (10, 'Gustavo Douglas', 'basquete', 0),
    (11, 'Rafael de Oliveira', 'Natação', 3),
    (12, 'Carlos Barboza', 'tenis de mesa', 5),
    (13, 'Daniel Dantas', 'volei', 4),
    (14, 'Bruna Ferreira', 'basquete', 5),
    (15, 'Yasmin Camargo', 'Futebol', 6);
    insert into Atleta values
    (01, 'Guilherme Gomes', 'Natação', 1),
    (02, 'Wesley Ramos', 'volei', 3);
    
    select * from Atleta;
    
    select nome, qtdMedalha from Atleta;
    
    select * from Atleta where modalidade = 'Natação';
    
    select * from Atleta order by modalidade;
    
    select * from Atleta order by qtdMedalha desc;
    
    select * from Atleta where nome like '%s%';
    
    select * from Atleta where nome like 'G%';
    
    select * from Atleta where nome like '%o %';
    
    select * from Atleta where nome like 'G%';
    
    select * from Atleta where nome like '%R_';
    
    select nome, qtdMedalha from Atleta where qtdMedalha like 0;
    
    select nome, modalidade from Atleta where nome like '% G%';
    
    select nome, qtdMedalha from Atleta where modalidade = 'Natação';
    
    select * from Atleta where qtdMedalha >= 6;
    
    select nome, qtdMedalha from Atleta where modalidade <> 'Natação';
    
	drop table Atleta;
    
    drop database atleta_adsa; -- exclui o banco de dados Atleta
    
    update Atleta set qtdMedalha=2 where idAtleta = 01; -- atualiza os dados da tabela Atleta 
    
    delete from Atleta where idAtleta = '015';
    
    select * from Atleta;