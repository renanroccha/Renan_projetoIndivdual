create database santos;

use santos;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
regiao varchar(45),
senha char(16)
);


create table foto (
idFoto int primary key,
caminho varchar(45),
fkUsuario int,
constraint fkUsu foreign key (fkUsuario) references usuario (idUsuario)
);


create table pontuacao (
idPontuacao int,
pontuacao int,
fkUsuario int,
constraint fkUsu foreign key (fkUsuario) references usuario (idUsuario),
primary key (idPontuacao , fkUsuario)
);



select * from usuario;
select * from foto;
select * from pontuacao;

