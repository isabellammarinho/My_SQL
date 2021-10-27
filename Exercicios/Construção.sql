create database db_construcao;
USE db_construcao;

create table tb_categoria(
id bigint auto_increment,
nome varchar(250),
ativo boolean not null,
primary key(id)

);

create table tb_produtos(
id bigint auto_increment,
descricao varchar(250),
valor decimal(8,2),
qtproduto int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria( nome, ativo) values ("Tijolo", true);
insert into tb_categoria( nome, ativo) values ("Telhas", true);
insert into tb_categoria( nome, ativo) values ("Materiais elétricos",true);
insert into tb_categoria( nome, ativo) values ("Material Hidráulico",true);
insert into tb_categoria( nome, ativo) values ("Tintas", true);

insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values("Tijolo ecológico é resultado da mistura de argila, cimento e água", 15.00,1,1);
insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values("Telha de Fibrocimento Ondulada", 49.50,1,2);
insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values("Kit Lâmpadas Led Bulbo 15/16w E27 Branco Frio", 157.90, 15,3);
insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values("Tubo Soldável 85mm Barra 6m Amanco", 286.90,1, 4);
insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values("Tinta Coral Coralar Econômica Acrílica Fosca Branco 18 Litros", 175.00, 1,5);
insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values(" Tinta Suvinil para parede acrilico fosco completo 18L - Camurça", 574.00, 1,5);
insert into tb_produtos(descricao, valor, qtproduto, categoria_id) values("Tijolo de Vidro",195.00, 1,1);


select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where Produtos like "C%";

select tb_produtos.Produtos, tb_produtos.valor, tb_categoria.Nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;