------------------------------------------------------------------------------------------
CREATE DATABASE Treinador;
USE Treinador;

CREATE TABLE Treinador (
idTreinador INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (40),
Telefone CHAR (9),
Email VARCHAR (30),
fkTreinador INT,
CONSTRAINT orientadorFk FOREIGN KEY (fkTreinador) REFERENCES Treinador (idTreinador)
) AUTO_INCREMENT = 10;

CREATE TABLE Nadador (
idNadador INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (40),
Estado VARCHAR (20),
dtNasc DATE,
fkTreinador INT,
CONSTRAINT treinadorFk FOREIGN KEY (fkTreinador) REFERENCES Treinador (idTreinador)
) AUTO_INCREMENT = 100;

INSERT INTO Treinador VALUES
(NULL, "José", 123456789, "jose@natacao.treinador", NULL),
(NULL, "Kaleb", 987654321, "kaleb@sptech.treinador", 10),
(NULL, "Vinicius", 123459876, "vini@nadaMuito.com", 10),
(NULL, "Beatriz", 987612345, "bea@triz.natacao", 12);

-- Caso não funcione o insert acima por causa da chave estrangeira, remover os comentários abaixo

-- UPDATE Treinador SET fkTreinador = 10 WHERE idTreinador = 11;
-- UPDATE Treinador SET fkTreinador = 10 WHERE idTreinador = 12;
-- UPDATE Treinador SET fkTreinador = 12 WHERE idTreinador = 13;


INSERT INTO Nadador VALUES 
(NULL, "Thiago", "Minas Gerais", '2001-09-29', 11),
(NULL, "João", "Rio Grande do Sul", '2004-09-30', 11),
(NULL, "Robson", "Rio de Janeiro", '2004-09-28', 12),
(NULL, "Matheus", "São Paulo", '2003-11-08', 10),
(NULL, "Emmily", "Amazonas", '2002-09-23', 13);

SELECT * FROM Treinador;
SELECT * FROM Nadador;

SELECT * FROM Treinador JOIN Nadador ON Treinador.idTreinador = Nadador.fkTreinador;

SELECT * FROM Treinador AS T JOIN Nadador AS N ON T.idTreinador = N.fkTreinador WHERE T.Nome = "José";

SELECT * FROM Treinador AS Novato JOIN Treinador AS Profissional ON Novato.idTreinador = Profissional.fkTreinador;

SELECT * FROM Treinador AS Novato JOIN Treinador AS Profissional ON Novato.idTreinador = Profissional.fkTreinador WHERE Profissional.Nome = "José";

SELECT * FROM Nadador AS Estudante JOIN Treinador AS Novato ON Estudante.fkTreinador = Novato.idTreinador JOIN Treinador AS Profissional ON Profissional.fkTreinador = Novato.idTreinador;

SELECT * FROM Nadador AS N JOIN Treinador AS Ta ON N.fkTreinador = Ta.idTreinador JOIN Treinador AS Tb ON Ta.idTreinador = Tb.fkTreinador WHERE Ta.Nome = "Kaleb";
