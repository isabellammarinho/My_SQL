create database BlogPessoal;
USE BlogPessoal;

CREATE TABLE Blog (
	 id bigint  AUTO_INCREMENT,
	descricao varchar(150),
	PRIMARY KEY(id)
);

CREATE TABLE Inicio (
	 id bigint AUTO_INCREMENT,
	 nome varchar(70),
	 senha varchar(150),
	usuario_id  bigint,
	PRIMARY KEY (`id`,`nome`,`senha`)
);

CREATE TABLE Usuario (
	id bigint auto_increment,
	login varchar(150),
	cadastro varchar(150),
	descricao_id varchar(200),
	PRIMARY KEY (`id`,`login`,`descricao_id`)
);

ALTER TABLE Inicio ADD CONSTRAINT Inicio_fk0 FOREIGN KEY (`usuario_id`) REFERENCES Usuario(`id`);

ALTER TABLE Usuario ADD CONSTRAINT Usuario_fk0 FOREIGN KEY (`descricao_id`) REFERENCES Blog (`id`);






