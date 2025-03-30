CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE usuarios(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(100),
    data_nascimento DATE,
    endereco VARCHAR(200),
    profissao VARCHAR(200)
);
CREATE TABLE livros(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(100),
    data_publicacao DATE,
    edicao INT
);
CREATE TABLE emprestimos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	data_emprestimo DATE,
    prazo DATE,
    usuario_id INT,
    livro_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);


INSERT INTO usuarios(nome,data_nascimento, endereco, profissao)
VALUES("Gabriel", "2005-07-07", "Nova Friburgo", "Engenheiro");

INSERT INTO usuarios(nome,data_nascimento, endereco, profissao)
VALUES("Lucas", "2003-12-09", "Rio das Ostras", "Padeiro");

INSERT INTO usuarios(nome,data_nascimento, endereco, profissao)
VALUES("Luisa", "1993-05-23", "Sao Paulo", "Artista");

INSERT INTO usuarios(nome,data_nascimento, endereco, profissao)
VALUES("Maria", "2008-09-07", "Belo Horizonte", "Enfermeira");


INSERT INTO livros(nome, data_publicacao, edicao)
VALUES("A REVOLUCAO DOS BICHOS", "2007-01-01", 1);

INSERT INTO livros(nome, data_publicacao, edicao)
VALUES("O SOL E PARA TODOS", "2006-02-02", 2);

INSERT INTO livros(nome, data_publicacao, edicao)
VALUES("SENHOR DAS MOSCAS", "2002-04-04", 3);

INSERT INTO livros(nome, data_publicacao, edicao)
VALUES("O PEQUENO PRINCIPE", "2008-05-05", 4);


INSERT INTO emprestimos(data_emprestimo, prazo, usuario_id, livro_id)
VALUES("2025-03-20", "2025-03-30", 1,2);

INSERT INTO emprestimos(data_emprestimo, prazo, usuario_id, livro_id)
VALUES("2025-02-20", "2025-03-01", 2,1);

INSERT INTO emprestimos(data_emprestimo, prazo, usuario_id, livro_id)
VALUES("2025-03-20", "2025-03-30", 3,3);

INSERT INTO emprestimos(data_emprestimo, prazo, usuario_id, livro_id)
VALUES("2025-04-20", "2025-04-30", 4,4);

SELECT usuarios.nome, livros.nome, emprestimos.*
FROM emprestimos
JOIN usuarios ON usuarios.id = emprestimos.usuario_id
JOIN livros ON livros.id = emprestimos.livro_id; 
