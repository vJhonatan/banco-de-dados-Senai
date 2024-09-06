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

CREATE TABLE empregado (
    id_empregado INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_supervisor INT,
    FOREIGN KEY (id_supervisor) REFERENCES empregado(id_empregado)
);

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE nota (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    nota DECIMAL(3,1) NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
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

INSERT INTO empregado (nome, id_supervisor) VALUES
('Carlos Silva', NULL),  
('Ana Souza', 1),        
('Pedro Santos', 1),   
('Maria Oliveira', 2),    
('João Pereira', NULL);    

INSERT INTO aluno (nome) VALUES
('Ana Silva'),
('Bruno Oliveira'),
('Carla Souza'),
('Diego Costa'),
('Elaine Santos'),
('Fábio Lima'),
('Gustavo Mendes'),
('Helena Ribeiro'),
('Igor Almeida'),
('Julia Ferreira');

INSERT INTO nota (nota, id_aluno) VALUES
(8.5, 1), (7.2, 1), (9.1, 1), (6.8, 2), (5.4, 2), (7.9, 2), (10.0, 3), (9.5, 3), (8.7, 3),
(5.5, 4), (6.5, 4), (8.0, 5), (7.5, 5), (8.5, 5), (9.2, 6), (8.4, 6), (7.8, 6),
(6.5, 7), (7.2, 7), (9.0, 7), (8.5, 7), (7.5, 8), (6.8, 8), (5.4, 8), (9.5, 9),
(7.6, 9), (6.4, 9), (5.8, 9), (8.3, 10), (7.7, 10), (9.1, 10), (6.2, 1), (8.6, 2),
(9.7, 3), (4.5, 4), (7.8, 5), (5.5, 6), (8.3, 7), (6.2, 8), (9.0, 9), (6.8, 10),
(7.2, 1), (6.9, 2), (9.3, 3), (5.5, 4), (7.8, 5), (9.9, 6), (8.2, 7), (6.1, 8),
(5.4, 9), (8.5, 10), (6.7, 1), (7.5, 2), (8.3, 3), (6.8, 4), (9.4, 5), (7.1, 6),
(5.9, 7), (6.4, 8), (8.9, 9), (7.8, 10), (6.5, 1), (8.0, 2), (5.5, 3), (9.8, 4),
(6.3, 5), (8.1, 6), (9.0, 7), (7.4, 8), (6.6, 9), (5.2, 10), (8.4, 1), (9.1, 2),
(6.0, 3), (7.9, 4), (9.5, 5), (7.3, 6), (6.8, 7), (8.6, 8), (9.2, 9), (5.6, 10);

SELECT livro.titulo AS livro, autor.nome AS autor, categoria.categoria AS categoria
FROM livro
JOIN autor ON livro.id_autor = autor.id_autor
JOIN categoria ON livro.id_categoria = categoria.id_categoria;
SELECT empregado.nome AS empregado, 
       IFNULL(supervisor.nome, 'Sem Supervisor') AS supervisor
FROM empregado
LEFT JOIN empregado AS supervisor ON empregado.id_supervisor = supervisor.id_empregado;
SELECT aluno.nome, AVG(nota.nota) AS media_notas
FROM aluno
JOIN nota ON aluno.id_aluno = nota.id_aluno
GROUP BY aluno.id_aluno, aluno.nome;





