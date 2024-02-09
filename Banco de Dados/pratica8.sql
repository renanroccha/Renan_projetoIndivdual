

use faculdade;


CREATE TABLE Grupo (
    idGrupo INT AUTO_INCREMENT PRIMARY KEY,
    nomeGrupo VARCHAR(45),
    descricaoProjeto VARCHAR(45)
);

CREATE TABLE Aluno (
    RA INT PRIMARY KEY,
    nomeAluno VARCHAR(45),
    emailAluno VARCHAR(45),
    fkGrupo INT,
    FOREIGN KEY (fkGrupo) REFERENCES Grupo(idGrupo)
);

CREATE TABLE Professor (
    idProfessor INT AUTO_INCREMENT PRIMARY KEY,
    nomeProfessor VARCHAR(45),
    disciplina VARCHAR(45)
);

CREATE TABLE Avaliacao (
    idAvaliacao INT AUTO_INCREMENT PRIMARY KEY,
    fkGrupo INT,
    fkProfessor INT,
    dataInicio DATETIME NOT NULL,
	nota decimal(10.2),
    FOREIGN KEY (fkGrupo) REFERENCES Grupo(idGrupo),
    FOREIGN KEY (fkProfessor) REFERENCES Professor(idProfessor)
);


INSERT INTO Grupo (nomeGrupo, descricaoProjeto) VALUES
('Grupo A', 'Controle de temperatura em chocadeiras'),
('Grupo B', 'Sistema de automação residencial');

INSERT INTO Aluno (RA, nomeAluno, emailAluno, idGrupo) VALUES
(12345, 'João Silva', 'joao@email.com', 1),
(67890, 'Maria Souza', 'maria@email.com', 2);

INSERT INTO Professor (nomeProfessor, disciplina) VALUES
('Prof. Oliveira', 'Ciência da Computação'),
('Prof. Santos', 'Engenharia Elétrica');

INSERT INTO Avaliacao (fkGrupo, fkProfessor, dataInicio, nota) VALUES
(1, 1, '2023-11-12 10:00:00', 8.5),
(1, 2, '2023-11-13 14:30:00', 7.0),
(2, 1, '2023-11-14 09:45:00', 9.0),
(2, 2, '2023-11-15 11:20:00', 8.0);

SELECT * FROM Grupo;
SELECT * FROM Aluno;
SELECT * FROM Professor;
SELECT * FROM Avaliacao;

SELECT * FROM Grupo g
JOIN Aluno a ON g.fkGrupo = a.fkGrupo
WHERE g.fkGrupo = 1;

SELECT AVG(nota) AS media_notas
FROM Avaliacao;

SELECT MIN(nota) AS nota_minima, MAX(nota) AS nota_maxima
FROM Avaliacao;

SELECT SUM(nota) AS soma_notas
FROM Avaliacao;

SELECT p.*, g.*, a.dataInicio, a.nota
FROM Professor p
JOIN Avaliacao a ON p.fkProfessor = a.fkProfessor
JOIN Grupo g ON a.fkGrupo = g.fkGrupo;

SELECT COUNT(DISTINCT nota) AS quantidade_notas_distintas
FROM Avaliacao;






