USE biblioteca;

CREATE TABLE usuarios(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(100),
    endereco VARCHAR(100),
    data_nascimento DATE
);
CREATE TABLE livros(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome_livro VARCHAR(100),
    autor VARCHAR(100),
    data_lancamento DATE
);
CREATE TABLE emprestimos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    usuario_id INT NOT NULL,
    livro_id INT NOT NULL,
	data_emprestimo DATE,
    prazo DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO usuarios(nome, endereco, data_nascimento)
VALUES("Victor Hugo", "Rua General Osório", "1999-05-30");

INSERT INTO usuarios(nome, endereco, data_nascimento)
VALUES("Felipe Carrancho", "Rua Juscelino Kubitschesk", "2000-05-26");

INSERT INTO usuarios(nome, endereco, data_nascimento)
VALUES("Gustavo Curty", "Rua Souza Cardoso", "2001-10-27");

INSERT INTO livros(nome_livro, autor, data_lancamento)
VALUES("Arsene Lupin: O ladrão de casaca", "Maurice Leblanc", "1907-06-10");

INSERT INTO livros(nome_livro, autor, data_lancamento)
VALUES("Harry Potter e o Prisioneiro de Azkaban", "Maurice Leblanc", "2004-06-04");

INSERT INTO livros(nome_livro, autor, data_lancamento)
VALUES("Diário de um Banana", "Jeff Kinney", "2007-04-01");

INSERT INTO emprestimos(data_emprestimo, prazo, usuario_id, livro_id)
VALUES("2024-12-07", "2025-06-10", 1, 1),
("2025-03-18", "2025-04-11", 2, 3),
("2018-02-18", "2020-07-13", 3, 2);

SELECT * FROM usuarios;
SELECT * FROM livros;
SELECT * FROM emprestimos;
