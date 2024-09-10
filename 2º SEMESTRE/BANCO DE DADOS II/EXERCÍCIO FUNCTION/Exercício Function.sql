-- ATIVIDADE 1 --

CREATE FUNCTION contagem_conta (codigo CHAR(5))
RETURNS INTEGER
LANGUAGE plpgsql AS
$$
	DECLARE
		contadorContas INTEGER;
	BEGIN
		SELECT COUNT(*) INTO contadorContas FROM Conta
		WHERE codCliente = codigo;
		RETURN contadorContas;
	END;
$$

-- LETRA A

SELECT 
	nomeCliente, cidadeCliente, 
	estadoCliente, contagem_conta(Cliente.codCliente) 
FROM 
	Cliente
WHERE codCliente = '0113';



-- ATIVIDADE 2 --

CREATE FUNCTION total_contas(codigoAgencia CHAR(5))
RETURNS INTEGER
LANGUAGE plpgsql AS
$$
	DECLARE
		qtd_contas_agencia INTEGER;
	BEGIN
		SELECT COUNT(*) INTO qtd_contas_agencia FROM Conta
		WHERE codAgencia = codigoAgencia;
		RETURN qtd_contas_agencia;
	END;
$$

-- LETRA A

SELECT nomeAgencia, cidadeAgencia FROM Agencia
WHERE total_contas(Agencia.codAgencia) >= 2;



-- ATIVIDADE 3 --

CREATE FUNCTION saldo_total_cliente(codigo CHAR(5))
RETURNS NUMERIC(10, 2)
LANGUAGE plpgsql AS
$$
	DECLARE
		valor NUMERIC(10, 2);
	BEGIN
		SELECT SUM(saldo) INTO valor FROM CONTA
		WHERE codCliente = codigo;
		RETURN valor;
	END;
$$


-- LETRA A

SELECT 
	nomeCliente, cidadeCliente, 
	estadoCliente, saldo_total_cliente(Cliente.codCliente) 
FROM 
	Cliente;

-- LETRA B

SELECT 
	nomeCliente, cidadeCliente, 
	estadoCliente, saldo_total_cliente(Cliente.codCliente) 
FROM 
	Cliente
WHERE codCliente = '0111';

-- LETRA C

SELECT 
	nomeCliente, cidadeCliente, 
	estadoCliente, saldo_total_cliente(Cliente.codCliente) 
FROM 
	Cliente
WHERE saldo_total_cliente(Cliente.codCliente) > 100000;



-- ATIVIDADE 4

CREATE FUNCTION maximo_saldo(codigo CHAR(5))
RETURNS NUMERIC(10, 2)
LANGUAGE plpgsql AS
$$
	DECLARE
		valor NUMERIC(10, 2);
	BEGIN
		SELECT MAX(saldo) INTO valor FROM Conta
		WHERE codAgencia = codigo;
		RETURN valor;
	END;
$$


-- LETRA A

SELECT 
	ag.nomeAgencia, ag.cidadeAgencia, maximo_saldo(ag.codAgencia),
	(SELECT nomeCliente FROM cliente
	NATURAL JOIN Conta
	WHERE saldo = maximo_saldo(ag.codAgencia))
FROM 
    Agencia ag
NATURAL JOIN Conta
NATURAL JOIN Cliente 
GROUP BY ag.nomeAgencia, ag.cidadeAgencia, ag.codAgencia
ORDER BY maximo_saldo DESC;



-- ATIVADADE 5 --

CREATE FUNCTION minimo_saldo(codigo CHAR(5))
RETURNS NUMERIC(10, 2)
LANGUAGE plpgsql AS
$$
	DECLARE
		valor_min NUMERIC(10, 2);
	BEGIN
		SELECT MIN(saldo) INTO valor_min FROM Conta
		WHERE codAgencia = codigo;
		RETURN valor_min;
	END;
$$


-- LETRA A

SELECT 
	ag.nomeAgencia, ag.cidadeAgencia, minimo_saldo(ag.codAgencia),
	(SELECT nomeCliente FROM Cliente
	NATURAL JOIN Conta
	WHERE saldo = minimo_saldo(ag.codAgencia))
FROM
	Agencia ag
NATURAL JOIN Conta
NATURAL JOIN Cliente
GROUP BY ag.nomeAgencia, ag.cidadeAgencia, ag.codAgencia
ORDER BY minimo_saldo ASC;