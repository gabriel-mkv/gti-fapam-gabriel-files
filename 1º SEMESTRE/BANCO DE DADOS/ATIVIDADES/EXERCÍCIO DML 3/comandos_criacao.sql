CREATE TABLE cliente(
	codigo SERIAL PRIMARY KEY,
	cpf VARCHAR(11),
	nome VARCHAR(80),
	rua VARCHAR(80) NOT NULL,
	numero INTEGER,
	bairro VARCHAR(50) DEFAULT 'SEM BAIRRO',
	cidade VARCHAR(80)
);

CREATE TABLE celular_cliente(
	celular VARCHAR(11),
	cpf VARCHAR(11),
	PRIMARY KEY (celular, cpf)
);

CREATE TABLE fabricante(
	codigo INTEGER PRIMARY KEY,
	cnpj VARCHAR(14),
	razao_social VARCHAR(80),
	nome_fantasia VARCHAR(80) NOT NULL
);

CREATE TABLE carro(
	placa VARCHAR(7) PRIMARY KEY,
	codigo_fabricante INTEGER,
	ano INTEGER,
	modelo VARCHAR(50),
	chassi VARCHAR(30),
	valor NUMERIC(10,2),
	FOREIGN KEY (codigo_fabricante) REFERENCES fabricante (codigo)
);

CREATE TABLE registro(
	numero_boletim INTEGER PRIMARY KEY,
	data_registro DATE,
	descricao TEXT
);

CREATE TABLE carro_boletim(
	numero_boletim INTEGER,
	placa_carro VARCHAR(7),
	FOREIGN KEY (numero_boletim) REFERENCES registro (numero_boletim),
	FOREIGN KEY (placa_carro) REFERENCES carro (placa)
);


INSERT INTO cliente (cpf, nome, rua, numero, bairro, cidade)
VALUES
('11111111111', 'Gabriel Diniz', 'Rua um', 10, 'Centro', 'Pará de Minas'),
('22222222222', 'Henrique Ribeiro', 'Rua dois', 20, 'Belvedere', 'Belo Horizonte'),
('33333333333', 'Bruno Ribeiro', 'Rua três', 30, 'São Francisco', NULL),
('44444444444', 'Nilton Júnior', 'Rua quatro', 40, 'São José', 'Belo Horizonte'),
('55555555555', 'Pedro Alves', 'Rua cinco', 50, 'Centro', 'Itaúna'),
('66666666666', 'Conrado Mendonça', 'Rua seis', 60, 'Jardim América', 'Maravilhas'),
('77777777777', 'Miguel Diniz', 'Rua sete', 70, 'Alphaville', 'Nova Lima'),
('88888888888', 'Thiago Oliveira', 'Rua oito', 80, 'Novo Horizonte', NULL);


INSERT INTO celular_cliente (cpf, celular)
VALUEs 
('11111111111', '37999999999'),
('22222222222', '37888888888'),
('33333333333', '37777777777'),
('44444444444', '37666666666'),
('55555555555', '37555555555'),
('66666666666', '37444444444'),
('77777777777', '37333333333'),
('88888888888', '37222222222');

INSERT INTO fabricante
(codigo, cnpj, razao_social, nome_fantasia)
VALUES
(1, '11111111111111', 'FIAT Automóveis LTDA', 'FIAT'),
(2, '22222222222222', 'GM Motors', 'Chevrolet'),
(3, '33333333333333', 'Volkswagen Comércio Ltda', 'Volkswagen'),
(4, '44444444444444', 'Toyota do Brasil LTDA', 'Toyota'),
(5, '55555555555555', 'FERRARI AGROINDUSTRIA S/A', 'Ferrari');

INSERT INTO carro
(placa, codigo_fabricante, ano, modelo, chassi, valor)
VALUES
('AAA1111', 1, 2015, 'Palio 1.4 Attractive', 'SVdf56s1d513x21', 38890.57),
('BBB2222', 2, 2021, 'Onix 1.4', 'vs56d45vc1x3c2v123xc123vvx5c5v', 75389.27),
('CCC3333', 3, 2007, 'Hilux 3.0 Turbo', 'x5vcv312x3c2v1x23c1v23x123c', 150321.65),
('DDD4444', 4, NULL, 'Monza 1.6', 'v15x3c2v1x3c21v23xc1v3x', 12789.23),
('EEE5555', 5, 2020, 'Ferrari 812 GTS', '1s65df11xc231d561sc6', 890123.66),
('FFF6666', 4, 2002, 'Monza 1.6', 'cv15x3c1v3x23cv1x32', 11560.23),
('GGG8888', 3, NULL, 'Corola 2.0', '1x3c2v13x2c1v32x1cv23', 11111.11),
('HHH9999', 2, 2008, 'Astra 2.0', 'vx1c3213vx1c32v12x', 32236.98),
('III0000', 1, 2005, 'Palio 1.0 EVO', 'sdcvdf456sd3f1232x1vxcv1x', 19236.22),
('JJJ1111', 2, 2019, 'Novo Astra 2.3', 'v1x23c2v31x3c2v13x21c23v', 23323.31),
('KKK2222', 1, 2011, 'Palio 1.0 EVO', 'vx13c21v3x2c1v231xc3v2x', 23659.23),
('LLL3333', 2, 2020, 'Novo Onix 1.0', '1vx23c1v23x1c23v1x32', 23132.98);