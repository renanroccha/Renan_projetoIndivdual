-- atividade 1

create database sprint1;

use sprint1;

create table Atleta (
idAtleta int primary key,
Nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into atleta values
     (1,'Renan' , 'Basquete' , 5),
     (2,'Roberta' , 'Tênis' , 3),
     (3,'Michelly' , 'Formula 1' , 3),
     (4,'Thalita' , 'Basquete' , 8),
     (5,'Nathalia' , 'Formula 1' , 23);
     
insert into atleta values 
(6, 'Cristiano Ronaldo' , 'Tênis' , 14);

select * from atleta;

select Nome ,qtdmedalha from atleta;

select * from atleta where modalidade like 'Formula 1';

select * from atleta order by modalidade;

select * from atleta order by qtdmedalha desc;

select * from atleta where Nome like '%l%';

select * from atleta where Nome like 'M%';

select * from atleta where Nome like '%o';

select * from atleta where Nome like '%t_';

drop table atleta;


-- atividade 2

create table Musica (
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica values
     (1, 'Leans, Pt. 2' , 'Yunk Vino' , 'Trap'),
     (2, 'Engana Dizendo Que Ama' , 'Veigh' , 'Trap'),
     (3, 'Jesus Chorou' , 'Racionais' , 'Rap'),
     (4, 'Dialogo' , 'Yunk Vino' ,  'Trap'),
     (5, 'Mina do condominio' , 'Seu jorge' , 'Pagode'),
     (6, 'Solto' , 'Djonga' , 'Rap');
     
     select * from Musica;

select titulo, artista from musica;

select * from musica where genero like 'trap';

select * from musica order by titulo;

select * from musica order by artista desc;

select * from musica where titulo like 'd%';

select * from musica where artista like '%e';

select * from musica where genero like '_r%';

select * from musica where titulo like '%o_';

drop table musica;

-- atividade 3 

create table Filme (
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

insert into Filme values
      (1, 'Amigos para sempre' , 'Drama' , 'Neil Burger'),
      (2, 'Alemão' , 'Ação' , 'José Eduardo'),
      (3, 'Django Livre' , 'Ação' , 'Tarantino'),
      (4, 'À Procura Da Felicidade' , 'Drama' , 'Gabriele Muccino'),
      (5, 'Click' , 'Comédia' , 'Franck Coraci'),
      (6, 'Bastardos Inglórios' , 'Ação' , 'Tarantino'),
      (7, 'The Ridiculous Six' , 'Comédia' , 'Franck Coraci'),
      (8, 'Oslo' ,'Drama' , 'Bartlett Sher');
      
      select * from filme;
      
      select titulo, diretor from filme;
      
      select * from filme where genero like 'comédia';
      
      select * from filme where diretor like 'Tarantino';
      
      select * from filme order by titulo;
      
      select * from filme order by diretor desc;
      
      select * from filme where titulo like 'a%';
      
      select * from filme where diretor like '%i';
      
      select * from filme where genero like '_c%';
      
      select * from filme where titulo like '%l_';
      
      drop table filme;
      
      
      
      -- Atividade 4
      
      create table Professor (
      idProfessor int primary key,
      nome varchar(50),
      especialidade varchar(40),
      dtNasc date
      );
      
      insert into Professor values
              (1, 'Naldo' , 'Algoritmo' , '1978-07-25'),
              (2, 'Vivian' , 'Banco de Dados' , '1983-10-13'),
              (3, 'Marcela' , 'Matemática' , '1997-01-16'),
              (4, 'Betina' , 'Banco de Dados' , '1995-04-09'),
              (5, 'João Paulo' , 'Algoritmo' , '2001-02-22'),
			  (6, 'Rafael' , 'Psicologo' , '1962-11-27');
			 
              
              drop table professor;
              
              
    -- Tive que fazer de novo porque essa estava dando erro de duplicação no insert entáo dei um drop e fiz novamente.
    
	  create table Professor (
      idProfessor int primary key,
      nome varchar(50),
      especialidade varchar(40),
      dtNasc date
      );
      
       insert into Professor values
              (1, 'Naldo' , 'Algoritmo' , '1978-07-25'),
              (2, 'Vivian' , 'Banco de Dados' , '1983-10-13'),
              (3, 'Marcela' , 'Matemática' , '1997-01-16'),
              (4, 'Betina' , 'Banco de Dados' , '1995-04-09'),
              (5, 'João Paulo' , 'Algoritmo' , '2001-02-22'),
			  (6, 'Rafael' , 'Psicologo' , '1962-11-27');
              
	   select * from professor;
       
       select especialidade from professor;
       
       select * from professor where especialidade like 'Algoritmo';
       
       select * from professor order by nome;
       
       select * from professor order by dtnasc desc;
       
       select * from professor where nome like 'B%';
       
       select * from professor where nome like '%A';
       
       select * from professor where nome like '_O%';
       
       select * from professor where nome like '%A_';
       
       drop table Professor;
       
       
       
       -- Atividade 5
       
       create table Curso (
       idCurso int primary key,
       nome varchar(50),
       sigla varchar (3),
       coordenador varchar (40)
       );
       
       insert into Curso values
              (1,'Sistema de Informação' , 'SIS' , 'Fernando'),
              (2,'Analise e Desenvolvimento de Sistemas' , 'ADS' , 'Gerson'),
              (3,'Ciência da Computação' , 'CCO' , 'Marise');
              
              select * from curso;
              
              select coordenador from curso;
              
              select * from curso where sigla like 'ADS';
              
              select * from curso order by nome;
              
              select * from curso order by coordenador desc;
              
              select * from curso where nome like 'A%';
              
              select * from curso where nome like '%O';
              
              select * from curso where nome like '_N%';
              
              select * from curso where nome like '%A_';
              
              drop table curso;
              
              
              -- Atividade 6
              
	create table Revista (
	idRevista int primary key,
	nome varchar (40),
    categoria varchar (30)
    );
                 
		      insert into Revista values 
              
					(1,'Veja' , '.'),
                    (2,'Isto é' , '.'),
                    (3,'Epoca' , '.'),
                    (4,'Placar' , '.');
                    
		select * from Revista;
        
        update Revista set categoria = 'Política' where idRevista = '1';
        
        update Revista set categoria = 'Notícias' where idRevista = '2';
        
        update Revista set categoria = 'Notícias' where idRevista = '3';
        
        update Revista set categoria = 'Esportes' where idRevista = '4';
        
        select * from revista;
        
        insert into revista values
              (5, 'Exame' , 'Política'),
              (6, 'Caras' , 'Fofoca'),
              (7, 'Quatro Rodas' , 'Esportes');
              
              select * from revista;
              
              describe revista;
              
              alter table revista modify column categoria varchar (40);
              
              describe revista;
              
              alter table revista add column periodicidade varchar (15);
              
              select * from revista;
              
              alter table revista drop column periodicidade;
              
              drop database sprint1;
              
              