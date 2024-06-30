create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment primary key,
tipo varchar(50) not null,
setor varchar(50)
);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(50) not null,
medida varchar(50) not null,
embalagem varchar(50) not null,
preco decimal (6,2) not null,
categoriaid bigint,
foreign key (categoriaid)references tb_categorias(id)
);


insert into tb_categorias (tipo, setor)
values ("generico","medicamentos"),("não generico","cosméticos"),("não generico","higiene"),("não generico","medicamentos"),("não generico","bebidas"),("não generico","snacks");

select * from tb_categorias;

insert into tb_produtos (nome, medida, embalagem, preco, categoriaid)
values ("Dipirona","60g","cartela",10.00,1),("Shampoo Dercos","200ml","frasco",112.90,2),("Fralda Pampers","30 und","pacote",49.00,3),
("Naridin","60ml","frasco",15.00,4),("Água mineral","500ml","garrafa",4.00,5),("Twix","100g","barra",5.00,6),("Protetor Solar","150ml","Spray",80.00,2),
("Ozempic","1mg","caneta",850.00,4);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 5 and 60;
select * from tb_produtos where nome like "%C%";

select nome, medida, embalagem, preco, tb_categorias.tipo, tb_categorias.setor
from tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

select nome, medida, embalagem, preco, tb_categorias.tipo, tb_categorias.setor
from tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id where setor = "cosméticos";