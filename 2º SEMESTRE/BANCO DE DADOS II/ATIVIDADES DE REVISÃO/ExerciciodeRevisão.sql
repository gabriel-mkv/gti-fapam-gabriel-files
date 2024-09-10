-- 1º 
CREATE DATABASE Loja;

CREATE TABLE Cliente(
numero_cli SERIAL PRIMARY KEY,
nome_cli VARCHAR(15),
sobrenome VARCHAR (15),
CEP_cli CHAR(9)
);

CREATE TABLE Funcionario(
id_func SERIAL PRIMARY KEY,
nome_func VARCHAR(15),
sobrenome VARCHAR(15),
CEP_func CHAR(9)
);

CREATE TABLE Peca(
numero_peca INTEGER PRIMARY KEY,
nome_peca VARCHAR(15),
preco NUMERIC(7,2),
qtd_peca INTEGER
);

CREATE TABLE Pedido(
numero_ped SERIAL PRIMARY KEY,
qtd_ped INTEGER,
data_recebimento DATE,
data_entrega_real DATE,
data_entrega_esperada DATE,
id_func INTEGER,
numero_cli INTEGER,
FOREIGN KEY (id_func) REFERENCES Funcionario(id_func),
FOREIGN KEY (numero_cli) REFERENCES Cliente(numero_cli)
);

CREATE TABLE PedidoPeca(
numero_ped INTEGER,
numero_peca INTEGER,
FOREIGN KEY (numero_ped) REFERENCES Pedido(numero_ped),
FOREIGN KEY (numero_peca) REFERENCES Peca(numero_peca),
PRIMARY KEY (numero_ped, numero_peca)
);


-- 2º
ALTER TABLE Peca RENAME TO Produto;


-- 3º
ALTER TABLE Pedido RENAME COLUMN numero_ped TO codigo_ped;

ALTER TABLE Cliente RENAME COLUMN numero_cli TO codigo_cli;

ALTER TABLE Produto RENAME COLUMN numero_peca TO codigo_prod;


-- 4º
ALTER TABLE Cliente ALTER COLUMN nome_cli TYPE VARCHAR(125);


-- 5º
ALTER TABLE Cliente ADD COLUMN CPF CHAR(11);


-- 6º
ALTER TABLE Cliente ADD CONSTRAINT cpf_unico UNIQUE(CPF);


-- 7º
ALTER TABLE Cliente ALTER COLUMN CEP_cli SET DEFAULT ('35660000');


-- 9º
INSERT INTO Cliente 
(nome_cli, sobrenome, CEP_cli)
VALUES
('Pedro', 'Mendonza', '355001234'),
('José', 'Barbosa', '355001234'),
('Ricardo', 'Bonifacio', '355000000'),
('Paola', 'Oliveira', '351001234'),
('Marta', 'Fonseca', '350002000');

INSERT INTO Funcionario
(nome_func, sobrenome, CEP_func)
VALUES
('Pietro', 'Alberto', '350001000'),
('Joana', 'Ribeiro', '350002000'),
('Marcela', 'Izaltina', '355000000'),
('Bianca', 'Maria', '350003000'),
('Robson', 'Diniz', '350001234')
RETURNING id_func;

INSERT INTO Produto
(codigo_prod, nome_peca, preco, qtd_peca)
VALUES
(100, 'Colar', 139.50, 71),
(105, 'Relógio', 249.98, 34),
(110, 'Pulseira', 79.23, 197),
(115, 'Anel', 59.10, 350),
(120, 'Brincos', 99.99, 15);

INSERT INTO Pedido
(codigo_ped, qtd_ped, data_recebimento, data_entrega_real, data_entrega_esperada, id_func, numero_cli)
VALUES
(1, 1, '01/05/2023', '23/05/2023', '20/05/2023', 2, 3),
(2, 3, '30/05/2023', '13/06/2023', '12/06/2023', 1, 5),
(3, 2, '14/08/2023', '01/09/2023', '01/09/2023', 4, 2),
(4, 2, '19/10/2023', '07/11/2023', '03/11/2023', 5, 4),
(5, 1, '01/12/2023', '27/12/2023', '29/12/2023', 3, 1);

INSERT INTO PedidoPeca
(numero_ped, numero_peca)
VALUES
(1, 105),
(1, 115),
(2, 115),
(3, 120),
(3, 100),
(3, 105),
(4, 110),
(4, 120),
(5, 105);


-- 10º
SELECT codigo_cli FROM Cliente
ORDER BY codigo_cli DESC
LIMIT 2;


-- 11º
SELECT codigo_prod FROM Produto
ORDER BY codigo_prod DESC
OFFSET 2
LIMIT 1;


-- 12º
SELECT * FROM Pedido
WHERE id_func != 1


-- 13º
SELECT nome_func, sobrenome FROM Funcionario
WHERE nome_func LIKE 'Diniz' OR sobrenome LIKE 'Diniz';


-- 14º
SELECT nome_peca FROM Produto
WHERE nome_peca NOT LIKE 'Caixa';


-- 15º
SELECT codigo_prod,
	CASE 
		WHEN preco > 200 THEN 'CARO'
		WHEN preco < 100 THEN 'BARATO'
		ELSE 'MEDIO' END
		AS valor
FROM Produto


-- 16º
SELECT codigo_prod, ROUND(preco) FROM Produto;


-- 17º
SELECT codigo_prod, TRUNC(preco) FROM Produto;


-- 18º
SELECT CONCAT(nome_cli, ' ', sobrenome) AS nome_completo FROM Cliente;


-- 19º
SELECT AGE(data_entrega_esperada, data_entrega_real) AS diferenca FROM Pedido


-- 20º
SELECT nome_peca, preco FROM Produto
WHERE preco > 200;


-- 21º
SELECT codigo_ped, qtd_ped FROM Pedido
WHERE qtd_ped < 5;


-- 22º
SELECT codigo_ped, data_entrega_esperada FROM Pedido
WHERE data_entrega_esperada BETWEEN '01/05/2023' AND '31/05/2023';


-- 23º
SELECT nome_func FROM Funcionario
ORDER BY nome_func;


-- 24º
SELECT CONCAT(nome_cli, ' ', sobrenome) AS nome_completo FROM Cliente
ORDER BY nome_completo;


-- 25º
SELECT it.numero_ped, COUNT(1) AS qtd_itens FROM PedidoPeca it
INNER JOIN Pedido ped ON ped.codigo_ped = it.numero_ped
GROUP BY it.numero_ped
ORDER BY qtd_itens DESC
LIMIT 1;


-- 26º
SELECT * FROM Pedido;


-- 27º
SELECT DISTINCT nome_cli FROM Cliente;


-- 28º
SELECT CEP_cli, COUNT(1) AS qtd_cliente FROM Cliente
GROUP BY CEP_cli;


-- 29º
SELECT numero_ped, codigo_prod, nome_peca FROM Produto, PedidoPeca
WHERE codigo_prod = numero_peca


-- 30º
SELECT cli.nome_cli, ped.codigo_ped FROM Cliente cli
INNER JOIN Pedido ped ON cli.codigo_cli = ped.numero_cli;


-- 31º
SELECT fun.nome_func, ped.data_entrega_esperada, ped.data_entrega_real FROM Funcionario fun
NATURAL JOIN Pedido ped;


-- 32º
DELETE FROM PedidoPeca;

DELETE FROM Pedido;

DELETE FROM Produto;

DELETE FROM Funcionario;

DELETE FROM Cliente;


-- 33º
DROP TABLE PedidoPeca;

DROP TABLE Pedido;

DROP TABLE Produto;

DROP TABLE Funcionario;

DROP TABLE Cliente;