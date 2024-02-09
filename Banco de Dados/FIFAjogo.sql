create database fifa;

use fifa;

create table usuario (
idUsuario int primary key auto_increment,
Nome varchar(45),
dataNasc date
);

insert into usuario values
  ('Ana Souza', '1988-03-21'),
  ('Roberto Lima', '1992-07-14'),
  ('Fernanda Oliveira', '1980-11-05'),
  ('Lucas Pereira', '1998-04-30'),
  ('Camila Santos', '1994-09-18'),
  ('Gustavo Silva', '1985-12-02'),
  ('Isabela Oliveira', '1996-06-25'),
  ('Ricardo Mendes', '1990-08-15'),
  ('Mariana Costa', '1987-02-08'),
  ('Pedro Rocha', '1993-10-12'),
  ('Juliana Alves', '1995-03-28'),
  ('Rodrigo Santos', '1989-09-08'),
  ('Carla Lima', '1991-12-20'),
  ('Felipe Pereira', '1997-06-02'),
  ('Amanda Silva', '1983-01-15'),
  ('Eduardo Oliveira', '1994-08-07'),
  ('Tatiane Souza', '1986-05-12'),
  ('Henrique Rocha', '1999-11-23'),
  ('Raquel Mendes', '1982-07-30'),
  ('Paulo Costa', '1998-04-18');

create table timee(
idTime int primary key auto_increment,
nomeTime varchar(45),
cidade varchar(45),
pais varchar(45)
);

insert into timee values
  ('Flamengo', 'Rio de Janeiro', 'Brasil'),
  ('Palmeiras', 'São Paulo', 'Brasil'),
  ('Santos', 'Santos', 'Brasil'),
  ('Corinthians', 'São Paulo', 'Brasil'),
  ('Internacional', 'Porto Alegre', 'Brasil'),
  ('Grêmio', 'Porto Alegre', 'Brasil'),
  ('Barcelona', 'Barcelona', 'Espanha'),
  ('Real Madrid', 'Madrid', 'Espanha'),
  ('Manchester United', 'Manchester', 'Reino Unido'),
  ('Bayern Munich', 'Munich', 'Alemanha'),
  ('Paris Saint-Germain', 'Paris', 'França'),
  ('Juventus', 'Turim', 'Itália'),
  ('Liverpool', 'Liverpool', 'Reino Unido'),
  ('Ajax', 'Amsterdã', 'Holanda'),
  ('AC Milan', 'Milão', 'Itália'),
  ('Borussia Dortmund', 'Dortmund', 'Alemanha'),
  ('Chelsea', 'Londres', 'Reino Unido'),
  ('Atletico Madrid', 'Madrid', 'Espanha'),
  ('Manchester City', 'Manchester', 'Reino Unido'),
  ('Napoli', 'Nápoles', 'Itália');


create table estadio(
idEstadio int primary key auto_increment,
nomeEstadio varchar(45),
fkTime int,
foreign key (fkTime) references timee (idTime)
);

insert into estadio values
  ('Maracanã', 1),
  ('Allianz Parque', 2),
  ('Vila Belmiro', 3),
  ('Arena Corinthians', 4),
  ('Beira-Rio', 5),
  ('Arena do Grêmio', 6),
  ('Camp Nou', 7),
  ('Santiago Bernabéu', 8),
  ('Old Trafford', 9),
  ('Allianz Arena', 10),
  ('Parc des Princes', 11),
  ('Allianz Stadium', 12),
  ('Anfield', 13),
  ('Johan Cruyff Arena', 14),
  ('San Siro', 15),
  ('Signal Iduna Park', 16),
  ('Stamford Bridge', 17),
  ('Wanda Metropolitano', 18),
  ('Etihad Stadium', 19),
  ('Stadio San Paolo', 20);


create table jogadores(
idJogadores int auto_increment,
nomeJogador varchar(45),
fkTime int,
foreign key (fkTime) references timee (idTime),
primary key (idJogadores , fkTime)
);

insert into jogadores values
  ('Gabriel Barbosa', 1),
  ('Dudu', 2),
  ('Marinho', 3),
  ('Fábio Santos', 4),
  ('Edenilson', 5),
  ('Diego Souza', 6),
  ('Lionel Messi', 7),
  ('Karim Benzema', 8),
  ('Bruno Fernandes', 9),
  ('Robert Lewandowski', 10),
  ('Neymar Jr.', 11),
  ('Cristiano Ronaldo', 12),
  ('Mohamed Salah', 13),
  ('Frenkie de Jong', 14),
  ('Zlatan Ibrahimović', 15),
  ('Erling Haaland', 16),
  ('Ngolo Kanté', 17),
  ('Luis Suárez', 18),
  ('Kevin De Bruyne', 19),
  ('Lorenzo Insigne', 20),
  ('Sadio Mané', 13),
  ('Matthijs de Ligt', 14),
  ('Romelu Lukaku', 15),
  ('Jadon Sancho', 16),
  ('Mason Mount', 17),
  ('João Félix', 18),
  ('Phil Foden', 19),
  ('Victor Osimhen', 20),
  ('Lautaro Martínez', 11),
  ('Eduardo Camavinga', 12);

create table fifaJogo(
fkUsuario int,
fkTime int,
fkJogadores int,
foreign key (fkUsuario) references usuario (idUsuario),
foreign key (fkTime) references timee (idTime),
foreign key (fkJogadores) references jogadores (idJogadores),
primary key (fkUsuario, fkTime, fkJogadores)
);

insert into fifaJogo values
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5),
  (6, 6, 6),
  (7, 7, 7),
  (8, 8, 8),
  (9, 9, 9),
  (10, 10, 10),
  (11, 11, 11),
  (12, 12, 12),
  (13, 13, 13),
  (14, 14, 14),
  (15, 15, 15),
  (16, 16, 16),
  (17, 17, 17),
  (18, 18, 18),
  (19, 19, 19),
  (20, 20, 20),
  (5, 7, 15),   
  (6, 8, 16),   
  (7, 9, 17),   
  (8, 10, 18), 
  (9, 11, 19),  
  (10, 12, 20);



