create database Solutions;

use Solutions;

create table Empresa (
idEmpresa int primary key auto_increment,
CNPJ char(14),
Empresa varchar(50),
CEP char(8),
Email varchar (40),
Senha char(12),
Confirmar_Senha char(12)
);

select * from Empresa;

 insert into Empresa (CNPJ,Empresa,CEP,Email,Senha,Confirmar_senha) values
	 ('01262217000132' , 'Pilão' , '02879130' , 'pilão.alimentos@outlook.com' , '123456' , '123456'),
	 ('04157755000155' , 'Pelé' , '03256743' , 'pele.ltda@outlook.com' , '246810' , '246810'),
	 ('62000278000116' , 'Melitta' , '02965432' , 'melitta.industria@outlook.com' , '113579' , '113579');
     
     
     create table faleConosco(
	idfaleConosco int primary key auto_increment,
    Assunto varchar (50),
    Descrição varchar (50)
    );
    
    insert into faleConosco (Assunto,Descrição) values
	 ('Preciso dos seu serviço' , 'Café secou'),
     ('Precisamos de recurso' , 'Monitoramento de umidade'),
     ('Urgente' , 'perdemos 30% por conta da umidade');
     
     
     select *  from faleconosco;
     
     create table registro (
     idRegistro int primary key auto_increment,
     valorUmidade varchar(8),
     dataRegistro date,
     horaRegistro time
     );
     
      insert into registro (valorUmidade, dataRegistro, horaRegistro) values
           
	 ('20%' , '2023-07-16' , '12:30' ),
	 ('15%' , '2023-07-08' , '15:00'),
	 ('10%' , '2023-07-20' , '13:00');
     
     select * from registro;
     
     
        
       
     
