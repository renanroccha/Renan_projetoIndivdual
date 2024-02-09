create database Sprint2;

use Sprint2;

create table Atleta (
idAtleta  int primary key auto_increment,
Nome varchar(40),
Modalidade varchar (40),
qntdMedalha int
);

insert into Atleta values

   (null , 'Cristiano Ronaldo' , 'Futebol', '25'),
   (null , 'Lembron James' , 'Basquete' ,'12'),
   (null ,'Lionel Messi', 'Futebol' , '6'),
   (null ,'Jokic' , 'Basquete' , '30'),
   (null ,'Djokovic' , 'Tenis' , '19');
   
   select * from Atleta;
   
   create table Pais (
   idPais int primary key auto_increment,
   Nome varchar (30),
   Capital varchar (40)
   );
   
   insert into Pais values
      (null , 'Portugal' , 'Lisboa'),
      (null , 'Argentina' , 'Buenos Aires'),
      (null , 'Estados Unidos' , 'Washington'),
      (null , 'Servia' , 'Belgrado');
      
      select * from Pais;
      
      alter table Atleta add column idPais int;
      
      alter table atleta drop column idPais;
      
      Alter table Atleta add column fkPais int;
      
     Alter table Atleta add constraint fkPais foreign key (fkPais)
          references Pais(idPais);
          
          update Atleta set fkPais = 1 where idAtleta =1;
          
          
          select * from Atleta;
          
          
          update Atleta set fkPais = 2 where idAtleta =3;
          
           update Atleta set fkPais = 3 where idAtleta = 2;
           
           update Atleta set fkPais = 4 where idAtleta IN (4,5);
           
           select * from Pais join Atleta
             on fkPais = idPais;
             
	         select Atleta.nome, Pais.nome from pais join atleta on idPais = fkPais;
             
             
             
             select Atleta.*, Pais.nome, Pais.capital from Pais join Atleta on idPais = fkPais
             where Pais.nome = 'Servia';
             
             
     
create table Musica (
idMusica  int primary key auto_increment,
titulo varchar(40),
artista varchar (40),
genero varchar (40)
);

insert into Musica values

   (null , 'Solto' , 'Djonga', 'Trap'),
   (null , 'Dialogo' , 'Yunk Vino' ,'Trap'),
   (null ,'Jesus Chorou', 'Racionais' , 'Rap');
   
   select * from Musica;
   
   create table Album (
   idAlbum int primary key auto_increment,
   Nome varchar (40),
   Tipo varchar (40),
   dtLancamento date
   );
   
   insert into Album values
      (null , 'Nada como um Dia após o Outro Dia' , 'Fisico', '2002-04-25'),
      (null , 'Leal' , 'Digital' , '2021-12-01');
	
      
      select * from album;
      
      
      Alter table Musica add column fkalbum int;
      
     Alter table Musica add constraint fkalbum foreign key (fkalbum)
          references album(idAlbum);
          
          update Musica set fkalbum = 1 where idMusica =2;
          
          update musica set fkalbum = 2 where idMusica =3;
          
           update musica set fkalbum = 2 where idMusica = 1;
           
           select * from musica;
           
           select * from Album join Musica
             on fkalbum = idalbum;
             
	         select Musica.titulo, Album.nome from Album join musica on idalbum = fkalbum;
             
             
             select musica.*, album.nome, album.tipo from album join musica on idalbum = fkalbum
             where album.tipo = 'digital';
             
             
     
