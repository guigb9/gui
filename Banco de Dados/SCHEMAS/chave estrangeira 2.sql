-- Criar banco de dados aluno_adsa
create database aluno_adsa;

-- Seleciona o banco de dados aluno_adsa
use aluno_adsa;

-- Criar a tabela Aluno
create table Aluno (
  ra int primary key,  -- ra é a chave primária
  nome varchar(50),
  bairro varchar(40)
);  

-- Exibir os dados da tabela
select * from Aluno;

-- Inserir os dados de um aluno
insert into Aluno values 
   (1201008, 'Kaique Lucena', 'Pq Fongaro');

-- Inserir os dados de mais alunos
insert into Aluno values
   (1201123, 'Raphael de Oliveira', 'Pq Pinheiros'),
   (1201115, 'Wellington Pereira', 'Pq São Paulo'),
   (1201061, 'Milene Oliveira', 'Vila Conceição'),
   (1201117, 'Yuri de Jesus', 'Nova Gerty');

-- Exibir o RA e o nome dos alunos
select ra, nome from Aluno;

-- Exibir o RA dos alunos
select ra from Aluno;

-- Exibir o nome e o RA dos alunos
select nome, ra from Aluno;

-- Exibir o bairro, o nome e o RA dos alunos
select bairro, nome, ra from Aluno;

-- Exibir os dados do aluno de RA = 1201115
select * from Aluno where ra = 1201115;

-- Exibir os dados dos alunos de RA >= 1201115
select * from Aluno where ra >= 1201115;

-- Exibir os dados dos alunos do bairro 'Nova Gerty'
select * from Aluno where bairro = 'Nova Gerty';

-- Exibir os dados dos alunos de RA diferente de 1201115
-- O sinal de diferente padrão é <>
-- O MySQL Server também aceita != como sinal de diferente
select * from Aluno where ra <> 1201115;
select * from Aluno where ra != 1201115;

-- Exibir os dados dos alunos cujo nome começa com 'M'
select * from Aluno where nome like 'M%';

-- Exibir os dados dos alunos cujo bairro começa com 'Pq'
select * from Aluno where bairro like 'Pq%';

-- Exibir os dados dos alunos cujo nome contém 'a'
select * from Aluno where nome like '%a%';

-- Exibir os dados dos alunos cujo sobrenome é 'Oliveira'
select * from Aluno where nome like '% Oliveira';

-- Exibir os dados dos alunos cujo nome tenha a letra 'a' como 2a letra
select * from Aluno where nome like '_a%';

-- Exibir os dados dos alunos cujo bairro tenha a letra 'o' como penúltima letra
select * from Aluno where bairro like '%o_';

-- Exibir os dados dos alunos cujo final do RA esteja entre 061 e 117
select * from Aluno where ra between 1201061 and 1201117;
-- Ou:
select * from Aluno where ra >= 1201061 and
                          ra <= 1201117;

-- Exibir os dados da tabela
select * from Aluno;

-- Exibir os dados da tabela ordenados pelo nome
-- Quando não se especifica ASC, assume que é para ordenar em ordem crescente
select * from Aluno order by nome;

-- Exibir os dados da tabela ordenados pelo nome, em ordem decrescente
select * from Aluno order by nome desc;

-- Exibir a estrutura da tabela
desc Aluno;
describe Aluno;

-- Excluir a tabela Aluno
drop table Aluno;

-- Excluir o banco de dados aluno_adsa
drop database aluno_adsa; 

create table curso (
 idcurso int primary key auto_increment,
 nomecurso varchar(10),
 coordenador varchar (40)
 ) auto_increment = 100;
 select * from curso;
 
  insert into curso values
 (null, 'ADS', 'Gerson'),
 (null, 'CCO', 'Marise'),
 (null, 'Redes', 'Alex');
 
 select * from Aluno;
 select * from curso;
 
 alter table Aluno add fkcurso int; -- adicionando a coluna fkcurso na tabela Aluno
 alter table Aluno add foreign key(fkcurso) references curso(idcurso); -- configurando a coluna fkcurso da tabela aluno para ser chave estrangeira refenciando a chave primaria da tabela Curso idcurso
 
 update Aluno set fkcurso=100 where ra in (1201008, 1201115);
 update Aluno set fkcurso=101 where ra in (1201061, 1201123);
 update Aluno set fkcurso=102 where ra = 1201117;
 update Aluno set fkcurso=100 where ra = 1201008;
 
 insert into Aluno values
 (1201069, 'Ju Souza', 'Vila Rica', 101);
 
 select Aluno.*, Curso. nomecurso, coordenador from Aluno, Curso where fkcurso = idcurso; -- exibir os dados dos alunos e dos cursos correspondentes
 select Aluno.*, Curso. nomecurso as 'Nome do Curso', coordenador as 'Coordenador do Curso' from Aluno, Curso where fkcurso = idcurso; -- exibir os dados dos alunos e dos cursos correspondentes, mudando a forma como a culuna é exibida

 select Aluno.*, Curso. nomecurso as 'Nome do Curso', coordenador from Aluno, Curso where fkcurso = idcurso and fkcurso = 101; --  exibir os dados dos alunos que fazem o curso de CCO, mudando a forma como a culuna é exibida
 
 