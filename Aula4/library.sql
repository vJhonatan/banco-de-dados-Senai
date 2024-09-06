CREATE DATABASE library;
USE library;

CREATE TABLE autor (
	id_autor INT PRIMARY KEY AUTO_INCREMENT ,
    nome VARCHAR(100)
);

CREATE TABLE livro (
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

INSERT INTO autor(nome) VALUE
('Bruno Guimaraes'),
('Vinicius Jr');

INSERT INTO livro(titulo,id_autor) VALUE
('Harry Potter', 1),
('Turma da Monica', 2),
('Homem Aranha', 2);

SELECT livro.titulo AS livro, autor.nome AS autor
FROM livro
JOIN autor ON livro.id_autor = autor.id_autor;


