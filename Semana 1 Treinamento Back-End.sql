USE livraria;

CREATE TABLE livros(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(25),
	autor VARCHAR(25),
	data_lancamento DATE
);

CREATE TABLE usuarios(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    endereco VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE emprestimos(

	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_emprestimo DATE,
    prazo DATE,
    livro_id INT NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (livro_id) REFERENCES livros(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO livros(nome, autor, data_lancamento)
VALUES("Diário de Anne Frank", "Anne Frank", "1947-06-25"),
("Ladrão de Casaca", "Maurice Leblanc", "1907-06-10"),
("Ainda Estou Aqui", "Marcelo Rubens Paiva", "2005-08-04"),
("Diário de um Banana", "Jeff Kinney", "2007-03-01");



INSERT INTO usuarios(nome, endereco, data_nascimento)
VALUES("Luis Felipe Braido", "Rua Souza Cardozo", "2003-04-11"),
("Felipe Carrancho", "Rua Comandante Rubens Silva", "2000-05-26"),
("Victoria Faria", "Rua Antonio Lopes Sertã", "1998-03-27");

INSERT INTO emprestimos (data_emprestimo, prazo, livro_id, usuario_id)
VALUES("2025-03-31", "2025-05-31", 1, 1),
("2025-03-01", "2025-03-31", 2, 2),
("2025-04-01", "2025-06-25", 3, 3),
("2025-03-28", "2025-04-28", 4, 2);

SELECT * FROM usuarios;
SELECT * FROM livros;
SELECT * FROM emprestimos;





