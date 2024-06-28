use db_rh;
create table tb_dados(
id bigint auto_increment,
matricula int, 
nome varchar(100),
data_adminissao date,
cargo varchar(50),
salario decimal(7,2),
primary key(id)
);
select * from tb_dados;

alter table tb_dados change data_adminissao data_admissao date;

insert into tb_dados(matricula, nome, data_admissao, cargo, salario) 
values(987654,"João Santos","2023-01-10","Engenheiro de Software",800.00),
(456123,"Maria Oliveira", "2022-04-05", "Analista Financeiro",6200.00),
(789012,"Pedro Almeida","2023-02-20","Gerente de Vendas",9500.00),
(234567,"Juliana Costa","2022-05-15","Designer Gráfico",5800.00),
(890123,"André Souza","2023-03-05","Auxiliar de Recursos Humanos",1950.00),
(345678,"Camila Pereira","2022-08-02","Assistente Administrativo",1900.00),
(567890,"Lucas Carvalho","2023-04-12","Programador",7000.00);

update tb_dados set salario = 8000.00 where id = 1;

select * from tb_dados where salario > 2000.00;
select * from tb_dados where salario < 2000.00;