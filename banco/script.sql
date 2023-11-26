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
ALTER TABLE foto modify column caminho VARCHAR(255);

create table pontuacao (
idPontuacao int auto_increment,
pontuacao int,
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
primary key (idPontuacao , fkUsuario)
);


select * from usuario;
select * from foto;
select * from pontuacao;

SELECT usuario.nome, usuario.regiao, pontuacao.pontuacao
FROM usuario
JOIN pontuacao ON usuario.idUsuario = pontuacao.fkUsuario;

SELECT regiao, SUM(pontuacao.pontuacao) AS soma_pontuacao
FROM usuario
JOIN pontuacao ON usuario.idUsuario = pontuacao.fkUsuario
GROUP BY regiao;




SELECT regiao, SUM(pontuacao.pontuacao) AS soma_pontuacao
FROM usuario
JOIN pontuacao ON usuario.idUsuario = pontuacao.fkUsuario
WHERE usuario.regiao = 'Sudeste'
GROUP BY regiao;


