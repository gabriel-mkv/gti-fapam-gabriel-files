-- ATIVIDADE 1 --

-- LETRA A

CREATE OR REPLACE FUNCTION functionRemoverReservaTrigger()
	RETURNS TRIGGER
	LANGUAGE plpgsql
AS $$
BEGIN
	DELETE FROM Reserva
	WHERE codCopia = NEW.codCopia
		AND codCliente = NEW.codCliente;
	RETURN NEW;
END;
$$


CREATE TRIGGER removerReserva
	AFTER INSERT ON Aluguel
	FOR EACH ROW
	EXECUTE FUNCTION functionRemoverReservaTrigger();

-- LETRA B

CREATE OR REPLACE FUNCTION functionMudaAtributoTrigger()
	RETURNS TRIGGER
	LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE Copia
	SET estaAlugada = 'sim'
	WHERE codCopia = NEW.codCopia;
	RETURN NEW;
END;
$$

CREATE TRIGGER mudaAtributo
	AFTER INSERT ON Aluguel
	FOR EACH ROW
	EXECUTE FUNCTION functionMudaAtributoTrigger();

-- LETRA C

CREATE OR REPLACE FUNCTION functionAdicionaLinhaTrigger()
	RETURNS TRIGGER
	LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO Pontos
	(codCliente)
	VALUES
	(NEW.codCliente);
	RETURN NEW;
END;
$$

CREATE TRIGGER adicionaLinha
	AFTER INSERT ON Cliente
	FOR EACH ROW
	EXECUTE FUNCTION functionAdicionaLinhaTrigger();