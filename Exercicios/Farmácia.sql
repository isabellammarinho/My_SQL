create database db_farmacia_do_bem;
USE db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(200),
categoria varchar (255),
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(60),
marca varchar (60),
preco decimal (8,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id) 

);

insert into tb_categoria(descricao, categoria) values ("Medicamento produzido em farmácias de manipulação ou hospitais com recursos para tal prática", " Manipulado " );
insert into tb_categoria(descricao, categoria) values ("Medicamento químico que não possui os testes de biodisponibilidade", "Genérico");
insert into tb_categoria(descricao, categoria) values ("Medicamento feito exclusivamente à base de plantas.", "Fitoterápico");
insert into tb_categoria(descricao, categoria) values ("Medicamentos que já passaram por um processo de extração, purificação e síntese", " Alopático");
insert into tb_categoria(descricao, categoria) values ("Medicamentos que utilizam as mesmas substância que provocam os sintomas para tratar doenças", "Homeopáticos");

insert into tb_produtos(nome, marca, preco, categoria_id) values ("Homeopax","Almeida Prado", 49.09,5);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Paracetamol","Tylenol", 2.00,4);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Valeriana","Pura",78.37,3);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Aspirina", "Durlaza",14.35,2);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Adenosina", "Adenocard",139.99,2);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Bupropiana", "Zetron",70.00,1);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Fluoxetina", "Prozac",37.00,1);
insert into tb_produtos(nome, marca, preco, categoria_id) values ("Benazeprila","Lotensin",81.80,2);

select *from tb_produtos where preco > 50;
select *from tb_produtos where preco between 3 and 60;
select *from tb_produtos where nome like "%b%" ;

select tb_produtos.marca, tb_produtos.preco, tb_categoria.categoria
from tb_produtos 
inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;
