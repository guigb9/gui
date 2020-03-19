create database digitalSchool;
use digitalSchool;

create table curso (
 idcurso int primary key auto_increment,
 nomecurso varchar(10),
 coordenador varchar (40)
 ) auto_increment = 100;
 select * from curso;
 
 create table aluno (
 ra int primary key auto_increment,
 nome varchar (40),
 bairro varchar (30),
 fkcurso int,
 foreign key(fkcurso) references curso(idcurso) -- criação de chave estrangeira, curso.
 ) auto_increment = 500001;
 
 insert into curso values
 (null, 'ADS', 'Gerson'),
 (null, 'CCO', 'Marise'),
 (null, 'Redes', 'Alex');
 
 select * from curso;
 
 insert into aluno values
 (null, 'Maria', 'Mooca', 100),
 (null, 'José', 'Saúde', 102),
 (null, 'Mickey', 'Disney', 101),
 (null,'Pateta', 'Orlando', 100),
 (null, 'Pluto', 'Consolação', 101);
 
 select * from aluno;
 select * from aluno, curso where fkcurso = idcurso; -- mostrar os dados das 2 tabelas com a chave estrangeira
 
 select Aluno.*,nomecurso,coordenador from Aluno, Curso where fkcurso = idcurso;
 
 -- exibir os dados dos alunos e dos cursos, mas somente dos alunos de 'ADS'
 
 select Aluno.*,Curso. nomecurso, coordenador from Aluno, Curso where fkcurso = idcurso and nomecurso = 'ADS';
-- exibir os dados dos alunos e dos cursos cujo o curso cujo nome termina com s 
 select Aluno.*,Curso. nomecurso, coordenador from Aluno, Curso where fkcurso = idcurso and nomecurso like '%s';
 
 
 
 