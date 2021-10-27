create database db_cidade_das_frutas;
USE db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment,
    descricao varchar (250),
	categoria varchar (255),
    primary key(id)
    
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar (60) not null,
    preco decimal (8,2) not null,
    qtproduto int not null,
	categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    
);

insert into tb_categoria (descricao, categoria) values(" Naturalmente Doces com varios nutrientes", "Doce");
insert into tb_categoria (descricao, categoria) values("São frutas que tem uma quantidade menor de ácido cítrico em sua composição","Semi-Ácidas");
insert into tb_categoria (descricao, categoria) values("São frutas ricas em vitamina C, fibras e potássio, conhecidas como frutas cítricas.","Ácidas");
insert into tb_categoria (descricao, categoria) values("São frutas que possuem grande quantidade de água","Hiper-hídricas ");
insert into tb_categoria (descricao, categoria) values("São frutos secos e sementes, ricos em gorduras monoinsaturadas e poli-insaturadas, lipídios, fibras e nutrientes.","Oleaginosas");

insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Banana",5.75,8,1);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Mamão", 3.73,1,1);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Ameixa", 4.00,1,2);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Kiwi",3.89,1,2);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Limão",2.79,7,3);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Melancia", 16.91,1,4); 
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Melão",7.99,1,4);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values("Abacate", 10.27,1,5);

select *from tb_produtos where preco < 50;
select *from tb_produtos where preco between 3 and 60;

select tb_produtos.nome, tb_produtos.preco, tb_categoria.categoria
from tb_produtos 
inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;