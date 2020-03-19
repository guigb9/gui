
create database aluno_adsa;-- Criar banco de dados aluno_adsa

use aluno_adsa;-- Seleciona o banco de dados aluno_adsa

-- Criar a tabela Aluno
create table Aluno (
  ra int primary key,  -- ra é a chave primária
  nome varchar(50),
  bairro varchar(40)
);  

select * from Aluno; -- Exibir os dados da tabela

insert into Aluno values -- Inserir os dados de um aluno
   (1201008, 'Kaique Lucena', 'Pq Fongaro');
-- Inserir os dados de mais alunos
insert into Aluno values
   (1201123, 'Raphael de Oliveira', 'Pq Pinheiros'),
   (1201115, 'Wellington Pereira', 'Pq São Paulo'),
   (1201061, 'Milene Oliveira', 'Vila Conceição'),
   (1201117, 'Yuri de Jesus', 'Nova Gerty');

select ra, nome from Aluno;-- Exibir o RA e o nome dos alunos
select * from Aluno where bairro = 'Nova Gerty'; -- exibir dados dos alunos do bairro 'Nova Gerty'
select * from Aluno where ra <> 1201115; -- exibir os dados dos alunos de RA diferente de 1201115
select * from Aluno where ra != 1201115;
select * from Aluno where nome like 'M%'; -- exibir os dados dos alunos cujo nome começa com 'M'
select * from Aluno where bairro like 'PQ%'; -- exibir os dados dos alunos cujo bairro começa com 'Pq'
select * from Aluno where nome like '%a%'; -- exibir os dados dos alunos cujo nome contém 'a'
select * from Aluno where nome like '% Oliveira'; -- exibir os dados dos alunos cujo o sobrenome -e 'Oliveira'
select * from Aluno where nome like '_a%'; -- exibir os dados dos alunos cujo nome tenha a letra 'a' na segunda letra
select * from Aluno where bairro like '%o_'; -- exibir os dados dos alunos cuja penultima letra 'o'
select * from Aluno where ra between 1201061 and 1201117; -- exibir os dados dos alunos cujo o final do RA esteja entre os valores
select * from Aluno where ra >=1201061 and
						  ra <=1201117;
                          
select * from Aluno; -- Exibir os dados da Tabela
select * from Aluno order by nome; -- exibir os dados da tabela ordenados pelo nome
select * from Aluno order by nome desc; -- exibir os dados da tabela ordenados pelo nome, em ordem decrescente
desc Aluno; -- exibir a estrutura da tabela

drop table Aluno; -- excluir a tabela Aluno 
drop database aluno_adsa; -- excluir o banco de dados aluno_adsa
delete from Aluno where ra=1201115; -- excluir somente o aluno de ra 1201115

