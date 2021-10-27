create database db_empresa;
USE db_empresa;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar (250) not null,
idade int not null,
cargo varchar(250) not null,
salario decimal(8,2) not null,
primary key(id)
);

-- Inserindo dados na tabela;

insert into tb_funcionarios (nome,idade,cargo,salario) values("Isabella", "20", "CIO","7.022,00 ");
insert into tb_funcionarios (nome,idade,cargo,salario) values("César","25", "Dev Jr", "3.000.00");
insert into tb_funcionarios (nome,idade,cargo,salario) values("Carol","21", "Web Designer","2.404.00");
insert into tb_funcionarios (nome,idade,cargo,salario) values("Lilian", "26", "DBA", "7.090.00");
insert into tb_funcionarios (nome,idade,cargo,salario) values("Gustavo", "23", "CEO","2.150.00");

-- Para poder visualizar na tabela;

select * from tb_funcionarios;

-- fazendo safe upadate;

SET SQL_SAFE_UPDATES=0; 
    
-- Atualizando dados;
UPDATE tb_funcionarios SET salario = 2500.00 where nome like "Carol";

-- Salarios menores que 2000 reais;
select * from tb_funcionarios where salario<2000; 

-- Salarios maiores que 2000 reais;
select *from tb_funcionarios where salario>2000;

select *from tb_funcionarios;





