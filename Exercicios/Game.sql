create database db_generation_game;
USE db_generation_game;

-- Primeira tabela;
create table tb_classe (
	id bigint auto_increment,
	descricao varchar(255) null,
	nome varchar (250) null,
	skill varchar(250) ,
	arma varchar (255),
	primary key(id)
);

insert into tb_classe(nome, skill, arma) values("Mago", "Bola de Fogo", "Cajado" );
insert into tb_classe(nome, skill, arma) values("Ladrão", "Passa Tudo Menó","38");
insert into tb_classe(nome, skill, arma) values("Arquerio", "Flechas", "Arco");
insert into tb_classe(nome, skill, arma) values("Velocista", "Incansavél", "Pernas");
insert into tb_classe(nome, skill, arma) values("Curandeiro","Ressurreição","Grimório");
 

-- Segunda tabela;

create table tb_personagens(
id bigint auto_increment,
nome varchar (300) not null,
nivel int,
ataque int,
defesa int, 
primary key (id), 
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Ladrão de Coração",1000,2000,900,2);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Relampago MC Queen", 450, 1100,500,4);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Ahri", 5000,8000,15000,5);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Deusa ", 10000, 20000, 100,5);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Lux", "10000", "15000","3000",2);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Morgana", "50","1500","100",3);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Yuumi", 2000,500,50,1);

select * from tb_classe;

select *from tb_personagens;

select *from tb_personagens where ataque > 2000;

select * from tb_personagens where nome like "%c%" ;

select *from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id
where tb_classes.id = 2;
