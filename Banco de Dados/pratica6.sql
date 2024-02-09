CREATE DATABASE alunoProjeto;
USE alunoProjeto;


CREATE TABLE alunos (
ra char(8) primary key,
nome varchar (45),
telefone varchar (15),
fkRepresentante char(8),
fkProjeto int,
constraint fkRepresentante foreign key (fkRepresentante) references alunos (ra),
constraint fkProjeto foreign key (fkProjeto) references projeto (idProjeto)
);

INSERT INTO Alunos VALUES 
('01238585', 'Renan', '11926545654', null, 1),
('01239696', 'Michelly', '11952526363', '01238585', 2),
('01239587', 'Neide', '11988876676', '01238585', 3); 


CREATE TABLE Projeto (
idProjeto int primary key auto_increment,
nome varchar(45),
descrição varchar(45)
);

INSERT INTO Projeto VALUES
(null, 'bicold', 'monitoramento de datacenter'),
(null, 'techsolutions', 'monitoramento de armazens de café'),
(null, 'callter', 'monitoramento de leite');

CREATE TABLE acompanhante (
idAcompanhante int auto_increment,
fkAluno int ,
constraint fkAluno foreign key (fkAluno) references acompanhante (idAcompanhante),
nome varchar(45),
relação varchar(45),
primary key (idAcompanhante, fkAluno));

INSERT INTO acompanhante VALUES 
(null, 1, 'Fernanda', 'filha'),
(null, 2, 'Jose', 'pai'),
(null, 3, 'Larissa', 'prima');

select * from alunos;
select * from projeto;
select * from acompanhante;

select * from alunos join projeto on idProjeto = fkProjeto;

select * from alunos join acompanhante on fkRa = ra;

select * from alunos as a join alunos as r on a.fkRepresentante = r.ra;

select * from alunos as a join projeto as p on fkProjeto = idProjeto
	where p.nome = 'bicold';
    
select * from alunos  join projeto  on fkProjeto = idProjeto 
join acompanhante  on fkAluno = ra; 

-- EXERCÍCIO 2 

create database Campanha;
use Campanha;

create table organizador (
idOrganizador int primary key auto_increment, 
nome varchar (40),
rua varchar (45),
bairro varchar (40),
email varchar (45),
fkExperiente int,
foreign key (fkExperiente) references organizador (idOrganizador)
)auto_increment = 30;

insert into organizador values
	(null, 'Nathalia', 'Constelação', 'Casa Grande', 'nath@nath.com', null),
    (null, 'Eva', 'Cory Gomes', 'Pq. América', 'eva@eva.com', 30),
    (null, 'Valdemar', 'Rua 14', 'ciro salomão', 'valder@valder.com', 30);

create table campanha (
idCampanha int auto_increment,
categoria varchar (45),
instituicao1 varchar (45),
instituicao2 varchar (45), 
dtFinal date,
fkOrganizador int,
foreign key (fkOrganizador) references organizador (idOrganizador),
primary key (idCampanha, fkOrganizador)
)auto_increment = 500;

insert into campanha values 
	(null, 'alimento', 'ong grajaú', null, '2023-09-01', 30),
    (null, 'máscaras', 'ong varginha', null, '2023-01-23', 31),
    (null, 'produto higiênico', 'ong do macedônia', null, '2023-11-05', 32);


select * from organizador;

    
select * from organizador;
select * from campanha;

select * from organizador join campanha on fkOrganizador = idOrganizador;

select * from organizador join campanha on fkOrganizador = idOrganizador
	where organizador.nome = 'Nathalia';

select * from organizador as n join organizador as e on e.idOrganizador = n.fkExperiente;

select * from organizador as n join organizador as e on e.idOrganizador = n.fkExperiente
	where e.nome = 'Nathalia';

select * from organizador as n join organizador as e on e.idOrganizador = n.fkExperiente join campanha on fkOrganizador = n.idOrganizador;

select * from organizador as n join organizador as e on e.idOrganizador = n.fkExperiente join campanha on fkOrganizador = n.idOrganizador
	where n.nome = 'Valdemar';


