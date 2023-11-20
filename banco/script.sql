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


create table quiz (
idQuiz int primary key,
descricao varchar (45)
);

create table pontuacao (
idPontuacao int,
pontuacao int,
fkUsuario int,
fkQuiz int,
constraint fkUsu foreign key (fkUsuario) references usuario (idUsuario),
constraint fkQui foreign key (fkQuiz) references quiz (idQuiz),
primary key (idPontuacao , fkUsuario , fkQuiz)
);


create table questoes (
idQuestoes int,
nomeQuestao varchar(45),
alternativa1 varchar(45),
alternativa2 varchar(45),
alternativa3 varchar(45),
resposta varchar(45),
fkQuix int,
constraint fkQui foreign key (fkQuiz) references quiz (idQuiz),
primary key (idQuestoes , fkQuiz)
);





select * from usuario;
select * from foto;
select * from quiz;
select * from pontuacao;
select * from questoes;
