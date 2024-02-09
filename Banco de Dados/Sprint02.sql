 create database sprint02;
 use sprint02;
 
 create table curso (
    idCurso int primary key,
    Nome varchar(50),
    sigla char(3),
    coordenador varchar (50)
    );
    
    insert into curso values
    (1 ,'Analise e Desenvolvimento De Sistemas', 'ADS' , 'Nathalia'),
    (2 , ' Sistemas da Informação' , 'SIS' , 'Thalita'),
    (3 , ' Ciência da Computação' , 'CCO' , 'Michelly');
    
    
    create table professor (
    idProfessor int primary key,
    Nome varchar(50),
    idade int,
    fkCurso int, constraint fkCur foreign key (fkCurso) references Curso (idcurso)
    );
    
    insert into professor values
    (1, 'Marise' , '40' , 3),
    (2, 'Ronaldo' , '34' ,1 ),
    (3, 'Jordana' , '28' , 2);
    
    
    SELECT * FROM professor JOIN curso ON fkCurso = idcurso;
	SELECT professor.nome, curso.nome FROM professor JOIN curso ON idcurso = fkcurso WHERE coordenador = 'Michelly'; 
    