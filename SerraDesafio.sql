CREATE DATABASE SistemaEmprestimos;
USE SistemaEmprestimos;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL
);

CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    livro_id INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO usuarios (nome) VALUES ('Antônio ');


INSERT INTO livros (titulo) VALUES ('O Pequeno Príncipe');

INSERT INTO emprestimos (usuario_id, livro_id, data_emprestimo, data_devolucao) 
VALUES (1, 1, '2025-03-31', '2025-04-07');