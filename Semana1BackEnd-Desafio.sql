CREATE DATABASE livraria;

USE livraria;

CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(100),
    data_nascimento DATE,
    endereco VARCHAR(100)
);

CREATE TABLE livros (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_lancamento DATE
);

CREATE TABLE emprestimo (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_emprestimo DATE,
    prazo DATE,
    cliente_id INT NOT NULL,
    livro_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO clientes (nome, data_nascimento, endereco)
VALUES 
("Felipe", "2000-05-26", "Rio De Janeiro"),
("Luis", "2003-04-11", "Guapimirim"),
("Victor", "1999-05-30", "São Paulo");

INSERT INTO livros (nome, data_lancamento)
VALUES 
("Heartstopper", "2021-07-14"),
("Me Chame Pelo Seu Nome", "2007-01-23"),
("Jogos Vorazes", "2021-07-14");

INSERT INTO emprestimo (data_emprestimo, prazo, cliente_id, livro_id)
VALUES
("2025-01-05", "2025-03-10", 1, 2),
("2023-02-20", "2024-07-23", 2, 3),
("2014-04-21", "2018-04-21", 3, 1);

SELECT * FROM usuarios;
SELECT * FROM livros;
SELECT * FROM emprestimo;
