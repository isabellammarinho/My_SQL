create database db_pizzaria_legal;
USE db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Pizza Média ", true);
insert into tb_categoria (descricao, ativo) values ("Pizza Grande ", true);
insert into tb_categoria (descricao, ativo) values ("Pizza broto",true);
insert into tb_categoria (descricao, ativo) values("Pizza Pequena",true);
insert into tb_categoria (descricao, ativo) values("Pizza Familia",true);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nomeSabor varchar (255) not null,
preco decimal(6,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values ("Pizza de Mussarela", 27.00,1,1);
insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values(" Pizza de Quatro Queijos",40.00,1,2);
insert into tb_pizaa( nomeSabor, preco, qtproduto, categoria_id) values("Pizza de Pepperoni",65.00,1,5);
insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values("Pizza de Chocolate",20.00,1,3);
insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values("Pizza de Frango com catupiry",41.00,1,4);
insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values("Pizza de Calabresa", 40.00,1,4);
insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values("Pizza de Nutella",38.90,1,2);
insert into tb_pizza( nomeSabor, preco, qtproduto, categoria_id) values("Pizza de Romeu e Julieta",28.00,1,5);


select * from tb_pizza where preco < 40;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nomeSabor like ("%c%");
select * from tb_pizza where categoria_id = 3;


select *from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id
where tb_classes.id = 2;