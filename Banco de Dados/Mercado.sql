create database mercado;

use mercado;

create table cliente (
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
endereço varchar(45),
fkindicador int,
constraint fkIndicador foreign key (fkIndicador) references cliente (idCliente)
);
   
   insert into cliente values
   (null ,'Nath' , 'Nath@gmail.com' , 'Rua do Grajau - 405', 1),
   (null ,'Thalita' , 'Thalita@gmail.com' , 'Rua do Barueri - 98', 2),
   (null ,'Michelão' , 'Michelly@gmail.com' , 'Rua de Santo Andre - 877', 3);

create table venda (
idVenda int primary key auto_increment,
total decimal,
dataa date,
fkCliente int,
constraint fkCliente foreign key (fkCliente) references cliente (idcliente)
);

  insert into venda values
  (null ,'1200' , '2023-05-15' , 1),
  (null ,'80' , '2023-10-25' , 2),
  (null ,'545', '2023-08-02' , 3);
 

create table produto (
idproduto int primary key auto_increment,
nome varchar(45),
descriçao varchar(45),
preço decimal
);

insert into produto values
(null , 'Arroz' , 'Integral' , '25'),
(null ,'Feijão' , 'Preto' , '14'),
(null ,'Cachaça' , 'Velho Barreiro' , '9');

create table compra (
idCompra int auto_increment,
fkVenda int,
fkProduto int,
qtdCompra int,
desconto decimal,
constraint fkVenda foreign key (fkVenda) references venda (idvenda),
constraint fkProduto foreign key (fkProduto) references produto (idproduto),
primary key (idCompra , fkVenda , fkProduto) 
);

 insert into compra values
 (null , 1 , 2 , 6 , 80),
 (null , 2 , 1 , 8 , 50),
 (null , 3 , 3 , 15 , 90);


select * from cliente;

select * from venda;

select * from compra;

select * from produto;

select * from cliente join venda on idvenda = fkcliente;




