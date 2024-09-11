CREATE DATABASE dbLoja;
USE dbLoja;

CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Empregado (
    id_empregado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    id_supervisor INT,
    FOREIGN KEY (id_supervisor) REFERENCES Empregado(id_empregado)
);

INSERT INTO Categoria (nome) VALUES 
('Eletrônicos'),
('Acessórios'),
('Informática'),
('Áudio e Vídeo'),
('Casa e Cozinha'),
('Esportes'),
('Brinquedos'),
('Moda'),
('Beleza'),
('Automotivo');

INSERT INTO Fornecedor (nome) VALUES 
('TechCorp'),
('Gadgets Inc.'),
('ElectroHouse'),
('DigitalWorld'),
('SmartTech'),
('UltraGadgets'),
('MegaEletrônicos'),
('BestTech'),
('PowerDevices'),
('MaxiSupplies');

INSERT INTO Produto (nome, preco, id_categoria, id_fornecedor) VALUES 
('Smartphone', 549.99, 1, 1),
('Tablet', 699.99, 1, 2),
('Smartwatch', 299.99, 1, 3),
('Laptop', 1299.99, 1, 4),
('Monitor 24"', 399.99, 1, 5),
('Câmera Digital', 799.99, 1, 6),
('Headphone Bluetooth', 149.99, 1, 7),
('Smart TV 50"', 1999.99, 1, 8),
('Console de Jogos', 1599.99, 1, 9),
('Drone', 999.99, 1, 10),
('Carregador', 49.99, 2, 1),
('Fone de Ouvido', 29.99, 2, 2),
('Cabo HDMI', 19.99, 2, 3),
('Teclado sem Fio', 79.99, 2, 4),
('Mouse Bluetooth', 59.99, 2, 5),
('Capa de Smartphone', 39.99, 2, 6),
('Suporte de Celular', 24.99, 2, 7),
('Carregador Portátil', 89.99, 2, 8),
('Protetor de Tela', 14.99, 2, 9),
('Adaptador USB-C', 19.99, 2, 10),
('Impressora', 399.99, 3, 1),
('Scanner', 249.99, 3, 2),
('Roteador Wi-Fi', 199.99, 3, 3),
('HD Externo 1TB', 399.99, 3, 4),
('SSD 500GB', 299.99, 3, 5),
('Placa de Vídeo', 999.99, 3, 6),
('Fonte de Alimentação', 249.99, 3, 7),
('Memória RAM 16GB', 349.99, 3, 8),
('Processador', 799.99, 3, 9),
('Placa Mãe', 599.99, 3, 10),
('Soundbar', 299.99, 4, 1),
('Microfone USB', 99.99, 4, 2),
('Caixa de Som Bluetooth', 129.99, 4, 3),
('Amplificador de Som', 499.99, 4, 4),
('Projetor', 899.99, 4, 5),
('Fone de Ouvido Profissional', 249.99, 4, 6),
('Mixer de Áudio', 799.99, 4, 7),
('Câmera de Vídeo', 1099.99, 4, 8),
('Controle Remoto Universal', 59.99, 4, 9),
('Gravador de Voz', 79.99, 4, 10),
('Geladeira', 2999.99, 5, 1),
('Micro-ondas', 499.99, 5, 2),
('Liquidificador', 199.99, 5, 3),
('Aspirador de Pó', 299.99, 5, 4),
('Purificador de Água', 799.99, 5, 5),
('Fogão', 1599.99, 5, 6),
('Lava-louças', 2299.99, 5, 7),
('Panela Elétrica', 249.99, 5, 8),
('Ventilador', 199.99, 5, 9),
('Cafeteira', 399.99, 5, 10),
('Esteira Elétrica', 2499.99, 6, 1),
('Bicicleta Ergométrica', 999.99, 6, 2),
('Smartwatch Esportivo', 399.99, 6, 3),
('Bola de Futebol', 49.99, 6, 4),
('Raquete de Tênis', 299.99, 6, 5),
('Luvas de Boxe', 149.99, 6, 6),
('Kit de Musculação', 499.99, 6, 7),
('Skate', 199.99, 6, 8),
('Patins', 249.99, 6, 9),
('Saco de Pancadas', 299.99, 6, 10),
('Carrinho de Controle Remoto', 129.99, 7, 1),
('Boneca', 79.99, 7, 2),
('Blocos de Montar', 99.99, 7, 3),
('Jogo de Tabuleiro', 59.99, 7, 4),
('Video Game Portátil', 349.99, 7, 5),
('Action Figure', 79.99, 7, 6),
('Pista de Carrinhos', 149.99, 7, 7),
('Quebra-cabeça 1000 Peças', 89.99, 7, 8),
('Boneco Super-herói', 49.99, 7, 9),
('Patinete', 199.99, 7, 10),
('Relógio de Pulso', 199.99, 8, 1),
('Óculos de Sol', 149.99, 8, 2),
('Tênis Esportivo', 249.99, 8, 3),
('Jaqueta de Couro', 399.99, 8, 4),
('Camiseta de Algodão', 59.99, 8, 5),
('Bolsa de Couro', 299.99, 8, 6),
('Cinto de Couro', 79.99, 8, 7),
('Carteira', 49.99, 8, 8),
('Chapéu de Palha', 29.99, 8, 9),
('Relógio Smart', 499.99, 8, 10),
('Secador de Cabelo', 199.99, 9, 1),
('Prancha de Cabelo', 149.99, 9, 2),
('Aparador de Barba', 99.99, 9, 3),
('Escova Rotativa', 129.99, 9, 4),
('Depilador Elétrico', 199.99, 9, 5),
('Máquina de Cortar Cabelo', 89.99, 9, 6),
('Escova Alisadora', 159.99, 9, 7),
('Chapinha', 119.99, 9, 8),
('Kit Manicure', 49.99, 9, 9),
('Aparelho de Limpeza Facial', 99.99, 9, 10),
('Rádio Automotivo', 299.99, 10, 1),
('GPS', 199.99, 10, 2),
('Suporte para Celular', 39.99, 10, 3),
('Carregador Veicular', 29.99, 10, 4),
('Bateria Automotiva', 499.99, 10, 5),
('Kit de Som Automotivo', 999.99, 10, 6),
('Tapete de Carro', 89.99, 10, 7),
('Capa de Banco', 159.99, 10, 8),
('Alarme Automotivo', 199.99, 10, 9),
('Kit de Ferramentas', 99.99, 10, 10);

INSERT INTO Empregado (nome, id_supervisor) VALUES 
('João Pedro', NULL),
('Mariana Alves', NULL),
('Carlos Souza', NULL),
('Fernanda Lima', NULL),
('Ricardo Pereira', NULL),
('Paulo Oliveira', 1),
('Ana Beatriz', 1),
('Roberto Martins', 2),
('Luísa Silva', 2),
('Gabriel Costa', 3),
('Cláudia Ferreira', 3),
('Mateus Santos', 4),
('Sofia Fernandes', 4),
('Lucas Nascimento', 5),
('Bruna Rocha', 5),
('Juliana Monteiro', 1),
('Felipe Almeida', 2),
('Isabela Moura', 3),
('Eduardo Moreira', 4),
('Camila Souza', 5);

# CONSULTAS

SELECT p.nome AS Produto, c.nome AS Categoria, f.nome AS Fornecedor
FROM Produto p
JOIN Categoria c ON p.id_categoria = c.id_categoria
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor;

SET SQL_SAFE_UPDATES = 0;

UPDATE Produto 
SET preco = 549.99 
WHERE nome = 'Smartphone';

DELETE FROM Produto 
WHERE nome = 'Carregador';

SET SQL_SAFE_UPDATES = 1;

SELECT c.nome AS Categoria, AVG(p.preco) AS Preco_Medio
FROM Produto p
JOIN Categoria c ON p.id_categoria = c.id_categoria
GROUP BY c.nome;

SELECT nome, preco
FROM Produto
WHERE preco > (SELECT AVG(preco) FROM Produto);

SELECT e.nome AS Empregado, s.nome AS Supervisor
FROM Empregado e
LEFT JOIN Empregado s ON e.id_supervisor = s.id_empregado;

SELECT p.nome, p.preco
FROM Produto p
JOIN Categoria c ON p.id_categoria = c.id_categoria
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor
WHERE f.nome = 'TechCorp' AND c.nome = 'Eletrônicos';

SELECT f.nome AS Fornecedor, COUNT(p.id_produto) AS Total_Produtos
FROM Produto p
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor
GROUP BY f.nome;










