create database pratica2;

use pratica2;

create table Atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalhas int
);

insert into Atleta values
  (1, 'Bolt' , 'Atletismo' , 22),
  (2, 'Cristiano Ronaldo' , 'Futebol' , 7),
  (3, 'Jokic' , 'Baquete' , 5),
  (4, 'Messi' , 'Futebol' , 10),
  (5, 'Lebron James' , 'Basquete' , 37),
  (6, 'Cido' , 'Atletismo' , 4);
  
  select * from atleta;
  
  update atleta set qtdMedalhas = 56 where idAtleta = 1;
  
  update atleta set qtdMedalhas = 21
     where idAtleta in(2,3);
     
     update atleta set nome = 'Modric' where idAtleta = 4;
     
     alter table atleta add column dtNasc date;
     
     update atleta set dtnasc = '1988-10-04' where idAtleta = 1;
     
     update atleta set dtnasc = '1995-04-25' where idAtleta = 2;
     
     update atleta set dtnasc = '1977-01-16' where idAtleta = 3;
     
     update atleta set dtnasc = '2002-12-20' where idAtleta = 4;
     
     update atleta set dtnasc = '1999-08-02' where idAtleta = 5;
     
     update atleta set dtnasc = '1983-10-13' where idAtleta = 6;
  
  delete from atleta where idAtleta = 5;
  
  select * from atleta where idAtleta !='natação';
  
  select * from atleta where idAtleta >= 3;
  
  alter table atleta modify column modalidade varchar (60);
  
  describe atleta;
  
  truncate table atleta;
  
  
  
  CREATE TABLE Musica (
    idMusica INT PRIMARY KEY,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

-- Inserção de dados
INSERT INTO Musica (idMusica, titulo, artista, genero) VALUES
    (1, 'Leal', 'Djonga', 'Trap'),
    (2, 'Te amo disgraça', 'Baco', 'Funk'),
    (3, 'Sinto Muito', 'Dfideliz', 'Pop'),
    (4, 'Jesus Chorou', 'Racionais', 'Rap'),
    (5, 'Mulher', 'Dfideliz', 'Pop'),
    (6, 'Vida loka pt2', 'Racionais', 'Rap'),
    (7, 'Solto', 'Djonga', 'Trap');


SELECT * FROM Musica;


ALTER TABLE Musica ADD curtidas INT;


UPDATE Musica SET curtidas = 5
       where idMusica = 3;

alter table musica modify column artista varchar(80);

UPDATE Musica SET curtidas = 10 WHERE idMusica = 1;

UPDATE Musica SET curtidas = 15 WHERE idMusica IN (2, 3);

UPDATE Musica SET titulo = 'Progresso' WHERE idMusica = 5;

DELETE FROM Musica WHERE idMusica = 4;

SELECT * FROM Musica WHERE genero <> 'Trap';

SELECT * FROM Musica WHERE curtidas >= 20;

DESCRIBE Musica;

DELETE FROM Musica;

SELECT * FROM Musica;


create table Filme (
idFilme int primary key,
titulo varchar (50),
genero varchar (40),
diretor varchar (40)
);

insert into filme values

	  (1, 'Amigos para sempre' , 'Drama' , 'Neil Burger'),
      (2, 'Alemão' , 'Ação' , 'José Eduardo'),
      (3, 'Django Livre' , 'Ação' , 'Tarantino'),
      (4, 'À Procura Da Felicidade' , 'Drama' , 'Gabriele Muccino'),
      (5, 'Click' , 'Comédia' , 'Franck Coraci'),
      (6, 'Bastardos Inglórios' , 'Ação' , 'Tarantino'),
      (7, 'The Ridiculous Six' , 'Comédia' , 'Franck Coraci'),
      (8, 'Oslo' ,'Drama' , 'Bartlett Sher');
      
      select * from filme;
      
      alter table filme add column protagonista varchar(50);
      
      update filme set

  
  
  
  