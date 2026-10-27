CREATE DATABASE Banco;

USE Banco;

CREATE TABLE Banco(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT NOT NULL,
    cidade VARCHAR(30)
);

SELECT * FROM banco;

-- SELECT COUNT = 5
SELECT COUNT(*) FROM banco;

-- Apelidos que começam com M
SELECT nome FROM banco
WHERE nome LIKE 'A%';

-- Sugestões que têm a palavra "mais"
SELECT cidade FROM banco
WHERE cidade LIKE '%gama%';

-- Quem NÃO deixou sugestão?
SELECT idade FROM banco
WHERE idade IS NULL;

-- Quem deixou sugestão?
SELECT idade FROM banco
WHERE idade IS NOT NULL;

-- Do menor gasto para o maior (ASC é o padrão)
SELECT nome
FROM banco
ORDER BY nome;

-- As 4 maiores idades
SELECT idade
FROM banco
ORDER BY idade DESC
LIMIT 4;
