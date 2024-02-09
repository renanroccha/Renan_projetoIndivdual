-- modelo escolhido - Um banco possui várias contas 

CREATE DATABASE modelagemBanco;
USE modelagemBanco;
CREATE TABLE banco (
idBanco int primary key, 
codigodoBanco char (3),
nomeBanco varchar (30)
);
CREATE TABLE conta (
idConta int primary key,
numerodaconta varchar (10),
Agencia char (4),
situação char (3) constraint chkSit check (situação IN ('SIM', 'NÃO')),
fkBanco int, constraint fkBan foreign key (fkBanco) references banco (idBanco));

ALTER TABLE conta ADD COLUMN NomeCliente varchar (50);
UPDATE conta SET NomeCliente = 'JULIO CESAR DE ALMEIDA' WHERE idConta = 1;
UPDATE conta SET NomeCliente = 'MARIA FERNANDA DA SILVA' WHERE idConta = 2;


INSERT INTO banco VALUES 
(1, '001', 'Banco do Brasil'),
(2, '260', 'Nubank');

INSERT INTO conta VALUES 
(1, '003251-0', '3057', 'SIM', '1'),
(2, '224182-3', '0001', 'SIM', '2');
INSERT INTO conta VALUES
(3, '100123-5', '3088', 'SIM', '2', 'LARISSA DANTAS SOUTO');
INSERT INTO conta VALUES
(4, '223456-1', '0122', 'NÃO', '1', 'MARCIA GONÇALVES');
UPDATE CONTA SET Agencia = '0001' WHERE idconta = 3;

SELECT * FROM CONTA;
SELECT * FROM BANCO;
SELECT * FROM conta JOIN banco ON fkBanco = idBanco;
SELECT conta.nomeCliente AS 'nome', conta.numerodaconta AS 'conta', banco.nomeBanco AS 'banco' FROM conta JOIN banco ON fkBanco  = idBanco;
SELECT conta.nomeCliente, banco.nomeBanco FROM conta JOIN banco ON idBanco = fkBanco; 
SELECT conta.nomeCliente, banco.nomeBanco FROM conta JOIN banco ON idBanco = Fkbanco WHERE nomeBanco = 'Nubank'; 


