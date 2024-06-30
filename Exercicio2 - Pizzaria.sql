create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment primary key,
tamanho varchar(50) not null,
tipo varchar(50) not null
);

create table tb_pizzas(
id bigint auto_increment primary key,
nome varchar (50) not null,
sabor varchar(50) not null,
pedaco int not null,
preco int not null,
categoriaid bigint not null,
foreign key (categoriaid) references tb_categorias (id)
);

insert into tb_categorias (tamanho, tipo) 
values ("pequena","doce"), ("média","doce"), ("grande","doce"), ("pequena","salgada"), ("média","salgada"), ("grande","salgada");

alter table tb_pizzas modify preco decimal(6,2);

select * from tb_categorias;
select * from tb_pizzas;

insert into tb_pizzas (nome, sabor, pedaco, preco, categoriaid) 
values ("California","Lombo, Bacon, mussarela e manjericão",4,35.00,4),("Romeu e Julieta","Queijo minas e goiabada",8,60.00,2),("Sensação","chocolate e morangos",16,100.00,3),
("Strogonoff","Carne desfiada, strogonoff e batata palha",16,120.00,6),("Churrasco","Linguiça Toscana, Carne, frango e queijo coalho",8,110.00,5),
("Carne Seca","carne seca, catupiry",16,100.00,6),("Frango com catupiry","frando, catupiry mussarela, tomate e cebola",4,49.00,4),("Paçoca","Creme de amendoin, paçoca e leite condensado",8,60.00,2);

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco >= 50 and preco <= 100;
select * from tb_pizzas where nome like "%M%";

select nome, sabor, pedaco, preco, tb_categorias.tamanho, tb_categorias.tipo
from tb_pizzas  INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

select nome, sabor, pedaco, preco, tb_categorias.tamanho, tb_categorias.tipo
from tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id where tipo ="doce";


