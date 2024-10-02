CREATE TABLE animal(
		codigo INTEGER PRIMARY KEY,
		nome VARCHAR(30) NOT NULL,
		peso NUMERIC(5,3),
		altura_centimetros INTEGER,
		idade INTEGER DEFAULT 0,
		data_cadastro DATE,
		hora_cadastro TIME
);

CREATE TABLE cliente(
		codigo INTEGER,
		nome VARCHAR(60) NOT NULL,
		CPF CHAR(11) UNIQUE,
		celular CHAR(11) NOT NULL,
		PRIMARY KEY (codigo)
);

CREATE TABLE dono(
		codigo_animal INTEGER,
		codigo_cliente INTEGER,
		PRIMARY KEY (codigo_animal, codigo_cliente),
		FOREIGN KEY (codigo_animal) REFERENCES animal(codigo),
		FOREIGN KEY (codigo_cliente) REFERENCES	cliente(codigo)
);

CREATE TABLE consulta(
		codigo_consulta INTEGER PRIMARY KEY,
		data_consulta DATE,
		hora_consulta TIME,
		valor_consulta NUMERIC (5,2) DEFAULT 100.00,
		codigo_animal INTEGER,
		FOREIGN KEY (codigo_animal) REFERENCES animal(codigo)
);


-- ATIVIDADE 1 --

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, idade, data_cadastro, hora_cadastro)
VALUES 
(1, 'CAVALO', NULL, 147, 7, '2024-08-12', CURRENT_TIME);

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, data_cadastro, hora_cadastro)
VALUES 
(2, 'ZEBRA', NULL, 150, CURRENT_DATE, '13:45:59');

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, idade, data_cadastro, hora_cadastro)
VALUES 
(3, 'ORANGOTANGO', 40, 100, 8, CURRENT_DATE, CURRENT_TIME);

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, data_cadastro, hora_cadastro)
VALUES 
(4, 'RATEL', NULL, 77, CURRENT_DATE, CURRENT_TIME);

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, data_cadastro, hora_cadastro)
VALUES 
(5, 'BODE', 80, 20, CURRENT_DATE, CURRENT_TIME);


-- ATIVIDADE 2 --

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, data_cadastro, hora_cadastro)
VALUES 
(6, 'PASSARINHO CANARINHO DAS PENAS AMARELAS', NULL, 20, CURRENT_DATE, CURRENT_TIME);

-- ERROR: value too long for type character varying(30)
-- O número de caracteres excedeu o limite (30)


-- ATIVIDADE 3 --

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, data_cadastro, hora_cadastro)
VALUES 
(1,'ESCORPIÃO', NULL, 5, CURRENT_DATE, CURRENT_TIME);

-- ERROR: duplicate key value violates unique constraint "animal_pkey"
-- Erro de chave primária duplicada


-- ATIVIDADE 4 --

INSERT INTO animal 
(codigo, nome, peso, altura_centimetros, data_cadastro, hora_cadastro)
VALUES 
(7, NULL, NULL, 20, CURRENT_DATE, CURRENT_TIME);

-- ERROR: null value in column "nome" of relation "animal" violates not-null constraint
-- Coluna nome não pode ser vazia pois possui a restrição not null


-- ATIVIDADE 5 -- 

INSERT INTO cliente 
(codigo, nome, cpf, celular)
VALUES
(1,'PEDRO', '22222222222', '44444444444'),
(2,'JOÃO', '33333333333', '55555555555');


-- ATIVIDADE 6 --

INSERT INTO cliente
VALUES
(3, 'ROBERTO', '44444444444', '11111111111'),
(4, 'JULIO', '55555555555', '99999999999'),
(5, 'MARCOS', '66666666666', '88888888888');


-- ATIVIDADE 7 --

-- FEITO


-- ATIVIDADE 8 --

INSERT INTO dono 
(codigo_animal,codigo_cliente)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 5);


-- ATIVIDADE 9 --

INSERT INTO consulta 
(codigo_consulta, data_consulta, hora_consulta, valor_consulta, codigo_animal)
VALUES
(1, CURRENT_DATE, CURRENT_TIME, 120, 4),
(2, CURRENT_DATE, CURRENT_TIME, 230, 1);


-- ATIVIDADE 10 --

UPDATE consulta
SET valor_consulta = 200
WHERE codigo_consulta = 1;


-- ATIVIDADE 11 --

UPDATE animal
SET peso = 10.900
WHERE codigo = (SELECT MAX(codigo) FROM animal);


-- ATIVIDADE 12 --

UPDATE cliente
SET celular = '37999999999'
WHERE codigo = (SELECT MIN(codigo) FROM cliente);


-- ATIVIDADE 13 --

UPDATE consulta
SET valor_consulta = valor_consulta * 1.15;


-- ATIVIDADE 14 --

UPDATE animal
SET altura_centimetros = altura_centimetros + 0.20;


-- ATIVIDADE 15 --

SELECT * FROM animal;


-- ATIVIDADE 16 --

SELECT nome FROM animal;


-- ATIVIDADE 17 --

SELECT AVG(altura_centimetros) AS media_altura,
       MAX(peso) AS maior_peso,
       MIN(altura_centimetros) AS menor_altura
FROM animal;


-- ATIVIDADE 18 --

SELECT SUM(valor_consulta) FROM consulta;


-- ATIVIDADE 19 --

SELECT * FROM cliente
ORDER BY nome DESC


-- ATIVIDADE 20 --

ALTER TABLE animal ADD COLUMN tipo_animal VARCHAR(7);

UPDATE animal
SET tipo_animal = 'GRANDE'
WHERE codigo = 1;

UPDATE animal
SET tipo_animal = 'GRANDE'
WHERE codigo = 2;

UPDATE animal
SET tipo_animal = 'GRANDE'
WHERE codigo = 3;

UPDATE animal
SET tipo_animal = 'PEQUENO'
WHERE codigo = 4;

UPDATE animal
SET tipo_animal = 'PEQUENO'
WHERE codigo = 5;


-- ATIVIDADE 21 --

SELECT tipo_animal, COUNT(tipo_animal) FROM animal
GROUP BY tipo_animal;


-- ATIVIDADE 22 --

SELECT tipo_animal, COUNT(tipo_animal) FROM animal
WHERE altura_centimetros > 50
GROUP BY tipo_animal;


-- ATIVIDADE 23 --

SELECT * FROM animal
ORDER BY peso IS NOT NULL DESC
LIMIT 1
OFFSET 1;