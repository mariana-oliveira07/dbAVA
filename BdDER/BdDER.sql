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

CREATE TABLE instrutores (
    Cod_instrutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO Cod_instrutor (id, nome, tipo, preco, cod_instrutor)
values ("1","André Milano", "2", "170", "1");

INSERT INTO Cod_instrutor (id, nome, tipo, preco, cod_instrutor)
values ("1","André Milano", "2", "170", "1");

INSERT INTO Cod_instrutor (id, nome, tipo, preco, cod_instrutor)
values ("1","André Milano", "2", "170", "1");

INSERT INTO Cod_instrutor (id, nome, tipo, preco, cod_instrutor)
values ("1","André Milano", "2", "170", "1");

CREATE TABLE aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(200)
);

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (1, 'José', 'Rua XV de Novembro 72', 'jose@mail.com')

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (2, 'Wagner', 'Av. Paulista', 'wagner@mail.com')	

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (3, 'Emílio', 'Rua Lajes 103, ap: 701', 'emilio@mail.com')	

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (4, 'Cris', 'Rua Tauney 22', 'cris@mail.com')

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (5, 'Regina', 'Rua Salles 305', 'regina@mail.com')

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (6, 'Fernando', 'Av. Central 30', 'fernando@gmail.com')

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (7, 'Ana Clara', 'Rua das Flores 100', 'anaclara@mail.com')

INSERT INTO alunos (Cod_Aluno, Nome, Endereco, Email)
VALUES (8, 'Carlos Alberto', 'Av. Brasil 2500', 'carlalberto@mail.com')

CREATE TABLE tipos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO tipos (Cod, Tipo)
VALUES (1, 'Banco de Dados')

INSERT INTO tipos (Cod, Tipo)
VALUES (2, 'Programação')

INSERT INTO tipos (Cod, Tipo)
VALUES (3, 'Modelagem de Dados')

INSERT INTO tipos (Cod, Tipo)
VALUES (4, 'Desenvolvimento Web')

INSERT INTO tipos (Cod, Tipo)
VALUES (5, 'Data Science')

INSERT INTO tipos (Cod, Tipo)
VALUES (6, 'Machine Learning')

INSERT INTO tipos (Cod, Tipo)
VALUES (7, 'DevOps')

CREATE TABLE telefones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(15) NOT NULL,
    instrutor_id INT,
    FOREIGN KEY (instrutor_id) REFERENCES instrutores(id)
);

INSERT INTO telefones (cod_telefone, Cod_Instrutor, Telefone)
VALUES (1, 1, '6499063854')

INSERT INTO telefones (cod_telefone, Cod_Instrutor, Telefone)
VALUES (2, 1, '34428432')
	
INSERT INTO telefones (cod_telefone, Cod_Instrutor, Telefone)
VALUES (3, 2, '67676776')
	
INSERT INTO telefones (cod_telefone, Cod_Instrutor, Telefone)
VALUES (4, 2, '9898989')
	

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    curso_id INT,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

