CREATE DATABASE dbcartao;
USE dbcartao;


CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL
);

CREATE TABLE cartaoCliente (
	codigoAgencia VARCHAR(4) NOT NULL,
    numeroConta VARCHAR(8) NOT NULL,
    codigoCliente INT NOT NULL,
    numeroCartao VARCHAR(19) NOT NULL PRIMARY KEY,
    limiteCartao decimal (10,2) NOT NULL,
    dataExpira DATE NOT NULL,
    codigoSeguranca INT NOT NULL
);

INSERT INTO clientes (nomeCliente) VALUES
('Diego'),
('Douglas'),
('Carlos'),
('João'),
('Paulo');

INSERT INTO cartaoCliente (codigoAgencia, numeroConta, codigoCliente, numeroCartao, limiteCartao, dataExpira, codigoSeguranca) VALUES
('0001', '738192-2', 1, '5108-9080-4287-6981', 500.00, '2026-03-13', '123'),
('0001', '592341-2', 2, '4024-0071-1786-2143', 3400.00, '2025-09-19', '320'),
('0001', '192034-2', 3, '4556-2016-2012-8250', 900.00, '2028-02-07', '416'),
('0001', '823483-2', 4, '4539-8472-7837-7334', 50.00, '2027-06-25', '954'),
('0001', '541920-2', 5, '4539-9706-4520-0086', 5700.00, '2025-07-16', '411');


SELECT * FROM clientes;
SELECT * FROM cartaoCliente;