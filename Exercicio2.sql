CREATE database db_ecommerce;

use db_ecommerce;

create table tb_produto(
id bigint auto_increment,
nome varchar(100) not null,
categoria varchar (50) not null,
marca varchar(50) not null,
descricao varchar(50) not null,
preco decimal(6,2) not null,
primary key(id)
);

insert into tb_produto(nome, categoria, marca, descricao, preco)
values ("Liquidificador","eletrodoméstico","Mondial","700W - 220V", 120.00),
("Forno Elétrico","eletrodoméstico","Brastemp","45 litros - 110V", 350.00),
("Máquina de Lavar Roupa","eletrodoméstico","Consul","12kg - 220V", 900.00),
("Aspirador de Pó","eletrodoméstico","Philco","1400W - 110V", 180.00),
("Batedeira","eletrodoméstico","Arno","250W - 220V", 80.00),
("Geladeira","eletrodoméstico","Electrolux","Frost Free - 300L - 110V", 1200.00),
("Fritadeira Elétrica","eletrodoméstico","Cadence","3 litros - 220V", 150.00),
("Cafeteira","eletrodoméstico","Oster","Jarra de Vidro - 800W - 110V", 70.00);

select * from tb_produto;

select * from tb_produto where preco > 500.00;
select * from tb_produto where preco < 500.00;

update tb_produto set marca = "Philco" where id = 8;

select * from tb_produto;
