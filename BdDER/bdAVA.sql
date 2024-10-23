CREATE DATABASE bdsql;
USE bdsql;

CREATE TABLE Cod_Curso (
	Cod_Curso int not null auto_increment,
    Nome varchar(120) not null,
	Tipo int,
	Preço decimal (10,2) not null,
    Cod_Instrutor int
);

SELECT * FROM Cod_curso;

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("1", "Java Fundamentos", "2", "270", "2");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("2", "Java Avançado", "2", "330", "2");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("3", "SQL Completo", "2", "170", "1");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("4", "Php Básico", "2", "270", "1");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("5", "HTML e CSS Básico", "4", "250", "3");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("6", "javaScript Avançado", "4", "300", "4");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("7", "Introdução à Data Science", "5", "450", "4");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("8", "Machine Learning com Python", "6", "450", "4");

INSERT INTO Cod_curso (Cod_curso, nome, tipo, preço, cod_instrutor)
values ("9", "Fundamentos de DevOps", "7", "350", "4");

CREATE TABLE Cod_Instrutor(
	Cod_Instrutor int primary key auto_increment,
    nome varchar(100) not null
);

select * from Cod_Instrutor;

INSERT INTO Cod_Instrutor (Cod_Instrutor, nome)
values ("1", "André Milani");

INSERT INTO Cod_Instrutor (Cod_Instrutor, nome)
values ("2", "Carlos Tosin");

INSERT INTO Cod_Instrutor (Cod_Instrutor, nome)
values ("3", "Luana Pereira");

INSERT INTO Cod_Instrutor (Cod_Instrutor, nome)
values ("4", "Roberto Silva");



