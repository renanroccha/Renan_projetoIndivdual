create database sprint01;

use sprint01;


create table Professor (
idProfessor int primary key,
Nome varchar(50),
Sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40) 
);

Insert Into Professor values
  (1, 'Rafael' , 'Santos' , 'Java' , 'Kotlin'),
  (2, 'Fernanda' , 'Ribeiro' , 'Banco De Dados' , 'HTML'),
  (3, 'Roberto' , 'Ferreira' , 'Java' , 'HTML'),
  (4, 'Nathalia' , 'Florêncio' , 'Banco De Dados' , 'Kotlin'), 
  (5, 'Thalita' , 'Breda' , 'CSS' , 'HTML'),
  (6, 'Michelly' , 'Mendes' , 'Kotlin' , 'Java');
  
  create table Disciplina (
  idDisc int primary key,
  nomeDisc varchar (50) ,
  fkProfessor int, constraint fkPro foreign key (fkProfessor) references Professor (idProfessor)
  );
  
  insert into Disciplina values
    (1, 'Banco de Dados', 2),
    (2, 'Pesquisa e Inovação', 3),
    (3, 'Socioemocional', 1),
    (4, 'Análise de Sistemas' , 3);
    
    select * from Disciplina join Professor on fkProfessor = idProfessor;
    
    insert into Disciplina values
    (5, 'Arquitetura Computacional' , '6'),
    (6, 'Algoritmo', '5');
    
    select disciplina.nomedisc , professor.nome  from disciplina join professor on idProfessor = fkProfessor;
    
    select disciplina.nomedisc , professor.sobrenome from disciplina join professor on idProfessor = fkProfessor where sobrenome = 'Ribeiro';
    
    select professor.especialidade1 , disciplina.nomedisc from disciplina join professor on idProfessor = fkProfessor order by especialidade1;
    
    
    
   
    
    
    
    
    
