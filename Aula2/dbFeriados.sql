CREATE DATABASE db_feriados;
USE db_feriados;

CREATE TABLE feriados (
	idFeriado INT AUTO_INCREMENT PRIMARY KEY,
	nomeFeriado VARCHAR(50),
	dataFeriado DATE
);

INSERT INTO feriados (nomeFeriado, dataFeriado) VALUES
	('Confraternização Universal','2024-01-01'),
	('Carnaval','2024-02-12'),
	('Paixão de Cristo','2024-03-29'),
	('Tiradentes','2024-04-21'),
	('Dia do Trabalhador','2024-05-01'),
	('Corpus Christi','2024-05-30'),
	('Dia da Independência','2024-09-07'),
	('Nossa Senhora Aparecida','2024-10-12'),
	('Finados','2024-11-02'),
	('Proclamação da República','2024-11-15'),
	('Dia Nacional da Consciência Negra','2024-11-24'),
	('Natal','2024-12-25');

SELECT 
	idFeriado,
	nomeFeriado,
	DATE_FORMAT(dataFeriado, '%d-%m-%Y') AS dataFeriado
FROM 
	feriados;