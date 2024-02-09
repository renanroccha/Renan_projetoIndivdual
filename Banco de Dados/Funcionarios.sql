CREATE DATABASE PraticaFuncionario;
USE PraticaFuncionario;

CREATE TABLE Setor (
idSetor INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (30),
Andar INT
) AUTO_INCREMENT = 1;

CREATE TABLE Funcionário (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (50),
Telefone CHAR (9),
Salário FLOAT NOT NULL,
fkSetor INT,
CONSTRAINT setorFk FOREIGN KEY (fkSetor) REFERENCES Setor (idSetor)
) AUTO_INCREMENT = 101;

CREATE TABLE Acompanhantes (
idAcompanhante INT AUTO_INCREMENT,
fkFuncionario INT,
CONSTRAINT funcionarioFk FOREIGN KEY (fkFuncionario) REFERENCES Funcionario (idFuncionario),
Nome VARCHAR (50),
Relação VARCHAR (20),
dtNasc DATE,
PRIMARY KEY (idAcompanhante, fkFuncionario)
) AUTO_INCREMENT = 1001;

INSERT INTO Setor VALUES 
(NULL, "Administração", 10),
(NULL, "Marketing", 7);

INSERT INTO Funcionario VALUES
(NULL, "Renan", 987654321, 15000, 2),
(NULL, "Dani", 123456789, 7000, 1),
(NULL, "Marcelo", 543216789, 9800, 1),
(NULL, "Claudia", 987612345, 13400, 2);

INSERT INTO Acompanhante VALUES
(NULL, 2, "Roberta", "Amiga", '2004-07-03'),
(NULL, 1, "Thalita", "Prima", '2002-11-13'),
(NULL, 3, "Ana", "Irmã", '2001-05-09'),
(NULL, 4, "Neide", "Mãe", '2004-09-12');

SELECT * FROM Setor;
SELECT * FROM Funcionario;
SELECT * FROM Acompanhante;

SELECT * FROM Setor JOIN Funcionario ON fkSetor = idSetor;

SELECT * FROM Setor AS s JOIN Funcionario AS f ON fkSetor = idSetor WHERE s.Nome = "Administração";

SELECT * FROM Funcionario JOIN Acompanhante ON fkFuncionario = idFuncionario;

SELECT * FROM Funcionario AS f JOIN Acompanhante AS a ON fkFuncionario = idFuncionario WHERE f.Nome = "Thalita";

SELECT * FROM Funcionario AS f JOIN Setor AS s ON fkSetor = idSetor JOIN Acompanhante AS a ON fkFuncionario = idFuncionario;

