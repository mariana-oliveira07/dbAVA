CREATE DATABASE BdDER;
USE BdDER;

drop database BdDER;

DROP TABLE Cod_Curso;

SELECT * FROM Cod_curso;

CREATE TABLE Cod_Curso (
	id int not null auto_increment,
    Nome varchar(120) not null,
	Tipo int,
	Preco decimal (10,2) not null,
    Cod_Instrutor int
);

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("Java Fundamentos", "2", "270", "2");

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("Java Avançado", "2", "330", "2");

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("SQL Completo", "2", "170", "1");

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("Php Básico", "2", "270", "1");

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("HTML e CSS Básico", "4", "250", "3");

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("javaScript Avançado", "4", "300", "4");

INSERT INTO Cod_curso (nome, tipo, preco, cod_instrutor)
values ("Introdução à Data Science", "5", "450", "4");