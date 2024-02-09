CREATE database SistemaFamilia;
USE SistemaFamilia;

CREATE TABLE Pessoa (
idPessoa INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (50),
DtNasc DATE,
Profissão VARCHAR (30)
) AUTO_INCREMENT = 1;

CREATE TABLE Gasto (
idGasto INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (50),
Data DATE,
Valor FLOAT,
Descrição VARCHAR (30),
fkPessoa INT,
CONSTRAINT pessoaFk FOREIGN KEY (fkPessoa) REFERENCES Pessoa (idPessoa)
) AUTO_INCREMENT = 101;

INSERT INTO Pessoa VALUES 
(NULL, "Renan Alves", '2001-11-09', "Empresario"),
(NULL, "Nathalia Alves", '2004-03-12', "Jogadora"),
(NULL, "Micha Alves", '2008-05-20', "Designer");

INSERT INTO Gasto VALUES
(NULL, '2023-11-09', 650, "Academia", 2),
(NULL, '2023-04-21', 300, "Festa", 3),
(NULL, '2023-01-16', 3000, "Computador", 1);

SELECT * FROM Pessoa;
SELECT * FROM Gasto;

SELECT * FROM Pessoa WHERE Profissão = "Designer";
SELECT * FROM Gasto WHERE Descrição = "Computador";

SELECT * FROM Pessoa JOIN Gasto ON fkPessoa = idPessoa WHERE idPessoa = 2;

UPDATE Gasto SET Valor = 5700 WHERE idGasto = 3;

DELETE FROM Gasto WHERE idGasto = 2;
DELETE FROM Pessoa WHERE idPessoa = 1;
