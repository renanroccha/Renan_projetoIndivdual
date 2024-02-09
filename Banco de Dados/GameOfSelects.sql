create database fifa;

use fifa;

create table usuario (
idUsuario int primary key,
Nome varchar(45),
dataNasc date
);

insert into usuario values
(1, 'João Silva', '1990-01-01'),
(2, 'Maria Souza', '1995-02-02'),
(3, 'Pedro Santos', '2000-03-03'),
(4, 'Ana Oliveira', '2005-04-04'),
(5, 'Lucas Pereira', '2010-05-05'),
(6, 'David Araújo', '1985-06-06'),
(7, 'Camila Nunes', '1990-07-07'),
(8, 'Bruno Costa', '1995-08-08'),
(9, 'Mariana Silva', '2000-09-09'),
(10, 'Eduardo Santos', '2005-10-10'),
(11, 'Clara Fernanda', '1995-06-06'),
(12, 'Felipe Lucas', '1996-07-07'),
(13, 'Isabela Cristina', '1997-08-08'),
(14, 'Gustavo Henrique', '1998-09-09'),
(15, 'Letícia Beatriz', '1999-10-10'),
(16, 'Rafaela Carolina', '2000-11-11'),
(17, 'Pedro Henrique', '2001-12-12'),
(18, 'Gabriela Souza', '2002-01-13'),
(19, 'Luiza Fernandes', '2003-02-14'),
(20, 'Guilherme Santos', '2004-03-15');



  
  create table tecnico(
  idTecnico int primary key,
  nomeTecnico varchar(45),
  nacionalidade varchar(45)
  );
  
  insert into tecnico values
(1, 'Tite', 'Brasil'),
(2, 'Abel Ferreira', 'Portugal'),
(3, 'Paulo', 'Brasil'),
(4, 'Mano Menezes', 'Brasil'),
(5, 'Dorival Júnior', 'Brasil'),
(6, 'Renato Gaúcho', 'Brasil'),
(7, 'Coudet', 'Argentina'),
(8, 'Wesley', 'Brasil'),
(9, 'Rogerio Ceni', 'Brasil'),
(10, 'Marcelo Fernandes', 'Brasil'),
(11, 'Xavi', 'Espanha'),
(12, 'Carlos Ancelloti', 'Itália'),
(13, 'Simeone', 'Argentina'),
(14, 'Allegri', 'Itália'),
(15, 'Klopp', 'Alemanha'),
(16, 'Tuchel', 'Alemanha'),
(17, 'Terzic', 'Alemanha'),
(18, 'Marco Rose', 'Alemanha'),
(19, 'Xabi Alonso', 'Espanha'),
(20, 'Sergio', 'Portugal'),
(21, 'Ten Hag', 'Holanda'),
(22, 'Postecoglou', 'Grécia'),
(23, 'Pep Guardiola', 'Espanha'),
(24, 'Roger Schmidt', 'Alemanha'),
(25, 'Inzaghi', 'Itália'),
(26, 'Pioli', 'Itália'),
(27, 'Luis Henrique', 'Espanha'),
(28, 'Mikel Arteta', 'Espanha'),
(29, 'Schip', 'Holanda'),
(30, 'Pochettino', 'Argentina');

create table timee(
idTime int,
nomeTime varchar(45),
cidade varchar(45),
pais varchar(45),
fkUsuario int,
constraint fkUsu foreign key (fkUsuario) references usuario (idUsuario),
fkTecnico int,
constraint fkTec foreign key (fkTecnico) references tecnico (idTecnico),
primary key (idTime , fkTecnico)
);

insert into timee values
(1, 'Flamengo', 'Rio de Janeiro', 'Brasil', 1, 1),
(2, 'Palmeiras', 'São Paulo', 'Brasil', 2, 2),
(3, 'Cruzeiro', 'Belo Horizonte', 'Brasil', 3, 3),
(4, 'Corinthians', 'São Paulo', 'Brasil', 4, 4),
(5, 'São Paulo', 'São Paulo', 'Brasil', 5, 5),
(6, 'Grêmio', 'Porto Alegre', 'Brasil', 6, 6),
(7, 'Internacional', 'Porto Alegre', 'Brasil', 7, 7),
(8, 'Athletico Paranaense', 'Curitiba', 'Brasil', 8, 8),
(9, 'Bahia', 'Salvador', 'Brasil', 9, 9),
(10, 'Santos', 'Santos', 'Brasil', 10, 10),
(11, 'Barcelona', 'Barcelona', 'Espanha', 11, 11),
(12, 'Real Madrid', 'Madrid', 'Espanha', 12, 12),
(13, 'Atlético de Madrid', 'Madrid', 'Espanha', 13, 13),
(14, 'Juventus', 'Turim', 'Itália', 14, 14),
(15, 'Liverpool', 'Liverpool', 'Inglaterra', 15, 15),
(16, 'Bayern de Munique', 'Munique', 'Alemanha', 16, 16),
(17, 'Borussia Dortmund', 'Dortmund', 'Alemanha', 17, 17),
(18, 'RB Leipzig', 'Leipzig', 'Alemanha', 18, 18),
(19, 'Bayer Leverkusen', 'Leverkusen', 'Alemanha', 19, 19),
(20, 'Porto FC', 'Porto', 'Portugal', 20, 20),
(21, 'Manchester United', 'Manchester', 'Inglaterra', 3, 21),
(22, 'Tottenham', 'Londres', 'Inglaterra', 12, 22),
(23, 'Manchester City', 'Manchester', 'Inglaterra', 7, 23),
(24, 'Benfica SC', 'Lisboa', 'Portugal', 2, 24),
(25, 'Inter de Milão', 'Milão', 'Itália', 16, 25),
(26, 'Milan', 'Milão', 'Itália', 20, 26),
(27, 'PSG', 'Paris', 'França', 1, 27),
(28, 'Arsenal', 'Londres', 'Inglaterra', 9, 28),
(29, 'Ajax', 'Amsterdã', 'Holanda', 19, 29),
(30, 'Chelsea', 'Londres', 'Inglaterra', 8, 30);


create table estadio(
idEstadio int primary key,
nomeEstadio varchar(45),
fkTime int,
foreign key (fkTime) references timee (idTime)
);

insert into estadio values
(1, 'Maracanã', 1),
(2, 'Allianz Parque', 2),
(3, 'Mineirão', 3),
(4, 'Neo Química Arena', 4),
(5, 'Estádio do Morumbi', 5),
(6, 'Arena do Grêmio', 6),
(7, 'Estádio do Beira-Rio', 7),
(8, 'Arena da Baixada', 8),
(9, 'Arena Fonte Nova', 9),
(10, 'Vila Belmiro', 10),
(11, 'Camp Nou', 11),
(12, 'Santiago Bernabéu', 12),
(13, 'Wanda Metropolitano', 13),
(14, 'Juventus Stadium', 14),
(15, 'Anfield', 15),
(16, 'Allianz Arena', 16),
(17, 'Signal Iduna Park', 17),
(18, 'RB Leipzig Stadium', 18),
(19, 'BayArena', 19),
(20, 'Estádio do Dragão', 20),
(21, 'Old Trafford', 21),
(22, 'Tottenham Hotspur Stadium', 22),
(23, 'Etihad Stadium', 23),
(24, 'Estádio da Luz', 24),
(25, 'Giuseppe Meazza', 25),
(26, 'San Siro', 26),
(27, 'Park dos princípes', 27),
(28, 'Wembley Stadium', 28),
(29, 'Cruyff Arena', 29),
(30, 'Stamford Bridge', 30);


create table overall (
idOverall int primary key,
Overall int);

INSERT INTO overall VALUES
(1, 94),
(2, 93),
(3, 92),
(4, 91),
(5, 90),
(6, 89),
(7, 88),
(8, 87),
(9, 86),
(10, 85),
(11, 84),
(12, 83),
(13, 82),
(14, 81),
(15, 80),
(16, 79),
(17, 78);

create table jogadores(
idJogadores int,
nomeJogador varchar(45),
nacionalidade varchar(45),
fkTime int,
fkOverall int,
constraint fkTim foreign key (fkTime) references timee (idTime),
constraint fkOver foreign key (fkOverall) references overall (idOverall),
primary key (idJogadores , fkTime, fkOverall)
);

insert into jogadores values
(1, 'Luis Suarez', 'Uruguay', 6, 10),
(2, 'Cristiano Ronaldo', 'Portugal', 21, 1),
(3, 'Neymar Jr.', 'Brasil', 27, 5),
(4, 'Robert Lewandowski', 'Polônia', 11, 4),
(5, 'Kevin De Bruyne', 'Bélgica', 21, 3),
(6, 'Karim Benzema', 'França', 12, 4),
(7, 'Mohamed Salah', 'Egito', 15, 5),
(8, 'Virgil van Dijk', 'Holanda', 15, 5),
(9, 'Kylian Mbappé', 'França', 27, 3),
(10, 'Erling Haaland', 'Noruega', 23, 3),
(11, 'Ruben Dias', 'Portugal', 23, 15),
(12, 'Jorginho', 'Itália', 28, 15),
(13, 'Tchouaméni', 'França', 12, 10),
(14, 'Luciano', 'Espanha', 5, 15),
(15, 'Bernardo Silva', 'Portugal', 23, 6),
(16, 'Son Heung-min', 'Coreia do Sul', 22, 7),
(17, 'Harry Kane', 'Inglaterra', 16, 4),
(18, 'Luis Díaz', 'Colômbia', 15, 10),
(19, 'Jude Bellingham', 'Inglaterra', 12, 7),
(20, 'Enner Valencia', 'Equador', 7, 14),
(21, 'Trent Alexander-Arnold', 'Inglaterra', 15, 8),
(22, 'Gianluigi Donnarumma', 'Itália', 27, 7),
(23, 'Alisson Becker', 'Brasil', 15, 5),
(24, 'Hulk', 'Brasil', 20, 13),
(25, 'Matthijs de Ligt', 'Holanda', 16, 8),
(26, 'Aurélien Tchouaméni', 'França', 12, 10),
(27, 'Cássio', 'Brasil', 4, 17),
(28, 'Marcos Leonardo', 'Brasil', 10, 16),
(29, 'Gavi', 'Espanha', 11, 13),
(30, 'Rodrygo Goes', 'Brasil', 12, 9),
(31, 'Frenkie de Jong', 'Holanda', 11, 7),
(32, 'Declan Rice', 'Inglaterra', 28, 9),
(33, 'Renato Sanches', 'Portugal', 27, 14),
(34, 'Dayot Upamecano', 'Alemanha', 16, 12),
(35, 'João Paulo', 'Brasil', 10, 15),
(36, 'João Félix', 'Portugal', 11, 12),
(37, 'Mason Mount', 'Inglaterra', 21, 12),
(38, 'Federico Chiesa', 'Itália', 14, 10),
(39, 'Paulinho', 'Brasil', 4, 16),
(40, 'Endrick', 'Brasil', 2, 15),
(39, 'Vinicius Júnior', 'Brasil', 12, 5),
(40, 'Lautaro Martínez', 'Argentina', 25, 7),
(41, 'Luka Modric', 'Croácia', 12, 7),
(42, 'Marco Verratti', 'Itália', 27, 8),
(43, 'Marcus Rashford', 'Inglaterra', 21, 10),
(44, 'Ansu Fati', 'Espanha', 11, 14),
(45, 'Rafael Leão', 'Portugal', 26, 8),
(46, 'Dembélé', 'França', 27, 8),
(47, 'Lukaku', 'Bélgica', 25, 10),
(48, 'Neuer', 'Alemanha', 16, 7),
(49, 'Lloris', 'França', 22 , 13),
(50, 'Richarlison', 'Brasil', 22, 13);


 


create table plataforma (
idPlataforma int primary key,
tipo varchar(30),
constraint chkTipo check (tipo in ('Playstation' , 'Xbox' , 'PC' , 'Nintendo Switch'))
);

insert into plataforma values
(1, 'Playstation'),
(2, 'Xbox'),
(3, 'PC'),
(4, 'Nintendo Switch');


create table FIFAjogo (
nomeFIFA varchar(45),
fkUsuario int,
fkPlataforma int,
constraint fkUsua foreign key (fkUsuario) references usuario (idUsuario),
constraint fkPlat foreign key (fkPlataforma) references plataforma (idPlataforma),
primary key (fkUsuario , fkPlataforma) 
);

insert into FIFAjogo values
('FIFA 24', 1, 1),
('FIFA 23', 2, 2),
('FIFA 24', 3, 3),
('FIFA 22', 4, 4),
('FIFA 23', 5, 1),
('FIFA 21', 6, 3),
('FIFA 22', 7, 2),
('FIFA 23', 8, 4),
('FIFA 24', 9, 2),
('FIFA 22', 10, 1),
('FIFA 23', 11, 2),
('FIFA 22', 12, 3),
('FIFA 23', 13, 4),
('FIFA 23', 14, 2),
('FIFA 21', 15, 1),
('FIFA 22', 16, 2),
('FIFA 23', 17, 1),
('FIFA 24', 18, 1),
('FIFA 22', 19, 3),
('FIFA 21', 20, 1);


