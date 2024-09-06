CREATE DATABASE library;
USE library;

CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100)
);

CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    id_autor INT,
    id_categoria INT,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

INSERT INTO autor(nome) VALUES
('Bruno Guimaraes'),
('Vinicius Jr');

INSERT INTO categoria(categoria) VALUES
('Ficção'),
('Animação'),
('Comedia');

INSERT INTO livro(titulo, id_autor, id_categoria) VALUES
('Harry Potter', 1, 1),
('Turma da Monica', 2, 2),
('Homem Aranha', 2, 1);

SELECT livro.titulo AS livro, autor.nome AS autor, categoria.categoria AS categoria
FROM livro
JOIN autor ON livro.id_autor = autor.id_autor
JOIN categoria ON livro.id_categoria = categoria.id_categoria;
