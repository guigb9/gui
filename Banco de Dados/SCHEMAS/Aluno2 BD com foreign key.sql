create database Planilha;

use Planilha;

create table Aluno (
nome varchar(40),
RA int primary key,
telefone varchar(10),
email varchar(60),
Instituição_de_origem int,
Empresa_de_Interesse int,
hobby varchar(30)
);
 select * from Aluno;
 
 insert into Aluno values
 ('João Vitor', 1201012, '4457-0987', 'j.vct@bandtec.com.br', 1, 1, 'skate'),
('Gabriel Lázaro', 1201120, '3786-9278', 'glazar@bandtec.com.br', 2, 1, 'surf'),
('Yuri Vedovate', 1201088, '3782-8322', 'yvdv@bandtec.com.br', 3, 2, 'nado'),
('Pedro Arthur', 1201111, '4598-0234', 'part@bandtec.com.br', 3, 3, 'futebol'),
('Felipe Paiva', 1201099, '4786-0999', 'fepva@bandtec.com.br', 3, 1, 'pintura'),
('Kaique F. Lucena', 1201100, '4576-1298', 'kf.lcn@bandtec.com.br', 4, 1, 'futebol'),
('Natã Lino', 1201001, '4476-0991', 'nt_ln@bandtec.com.br', 1, 4, 'nado'),
('Taiza Marques', 1201005, '4723-0678', 'taizam.@bandtec.com.br', 1, 3, 'futebol'),
('João Baptista', 1201055, '4782-0932', 'jo_bap@bandtec.com.br', 5, 1, 'vôlei');

select * from Aluno;

use Planilha;

create table Empresas(
ID_empresa int primary key,
nome_empresa varchar(15),
representante varchar(40)
);

insert into Empresas values
(1, 'C6-PAYGO', 'Victor'),
(2, 'Accenture', 'Ana'),
(3, 'Outsystems', 'Leonardo'),
(4, 'VALID', 'Gisele');

select * from Empresas;

use Planilha;

create table Instituição(
ID_instituicao int primary key,
nome_instituicao varchar(20),
bairro varchar(40)
);

select * from Instituição;

insert into Instituição values
(1, 'Adventista', 'Baeta Neves'),
(2, 'Américo Brasiliense', 'Centro'),
(3, 'ETEC Jorge Street', 'Jardim São Caetano'),
(4, 'ETEC Heliópolis', 'Heliópolis'),
(5, 'FIEB', 'Alphaville');

select * from Instituição where bairro = 'Baeta Neves';
select * from Aluno where RA <> 1201001;
select * from Empresas where nome like 'o%';
select * from Instituição where nome like '% J%';
select * from Empresas order by representante desc;

alter table Aluno add foreign key(Empresa_de_Interesse) references Empresas(ID_empresa);
alter table Aluno add foreign key(Instituição_de_origem) references Instituição(ID_instituicao);


select Aluno.*, Empresas. nome_empresa, representante, instituição. nome_instituicao, bairro from Aluno, Empresas, instituição where Empresa_de_Interesse = ID_empresa and Instituição_de_origem = ID_instituicao and Empresa_de_Interesse = 1;

select Aluno.*, Empresas. nome_empresa, representante, instituição. nome_instituicao, bairro from Aluno, Empresas, instituição where Empresa_de_Interesse = ID_empresa and Instituição_de_origem = ID_instituicao;


select Aluno.*, Empresas. nome_empresa, representante, instituição. nome_instituicao, bairro from Aluno, Empresas, instituição where Empresa_de_Interesse = ID_empresa and Instituição_de_origem = ID_instituicao and Instituição_de_origem = 1;

 

 

