create database petshop;

use petshop;

create table cliente (
idCliente int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
telefoneFixo char(12),
celular char (12),
EndereçoRua varchar(45),
cep char (9),
Bairro varchar (45)
);

insert into cliente values

(null, 'Maria' , 'Alves' , '11 39216486' , '11 954610168' , 'Rua Donato Alvarez' , '02879-130' , 'Jardim Damasceno'),
(null, 'Dani' , 'Anjos' , '11 40028922' , '11 976432349' , 'Rua Hilario Lagos' , '02879-100' , 'Cachoerinha');

create table pet (
idPet int primary key auto_increment,
tipo varchar(45),
nome varchar(45),
raça varchar(45),
dtNasc date,
fkcliente int,
constraint fkcli foreign key (fkcliente) references cliente (idCliente) 
)auto_increment = 101;

insert into pet values 
(null, 'Cachorro' , 'Marcelo' , 'Pastor Alemão' , '2020-10-25' , 1),
(null, 'Gato' , 'Renan' , 'Persa' , '2022-03-16' , 2) ,
(null , 'Passaro' , 'Nathalia', 'Cardial' , '2021-01-16',2),
(null , 'Cachorro' , 'Roberta' , 'Rotvaller' , '2019-12-09',1),
(null , 'Gato' , 'Thalita' , 'Siemens' , '2018-09-15',1),
(null , 'Gato', 'Michelly' , 'Manicun' , '2012-02-16', 2);

SELECT pet.nome, pet.dtNasc FROM pet;

 select * from pet join cliente on fkcliente = idcliente;
 
 

SELECT * FROM cliente;
SELECT * FROM pet;

ALTER TABLE cliente MODIFY COLUMN Nome VARCHAR (20);

SELECT * FROM pet WHERE Tipo = "Calopsita";

SELECT Nome, dtNasc FROM pet;

SELECT * FROM pet ORDER BY Nome;

SELECT * FROM cliente ORDER BY Endereço DESC;

SELECT * FROM pet WHERE Nome LIKE 'A%';

SELECT * FROM cliente WHERE Nome LIKE '% Dani';

UPDATE cliente SET TelefoneFixo = 49898765 WHERE idCliente = 1;

SELECT * FROM cliente WHERE idCliente = 1;

SELECT * FROM pet JOIN cliente ON fkCliente = idCliente WHERE idCliente = 1;

DELETE FROM pet WHERE idPet = 103;

SELECT * FROM pet;

DROP TABLE cliente;
DROP TABLE pet;
