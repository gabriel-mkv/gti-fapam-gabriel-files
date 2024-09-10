-- 1º
CREATE PROCEDURE inserir_produto
(codigo_produto INTEGER, descricao_produto VARCHAR(30), preco_produto NUMERIC(6,2), estoque_produto INTEGER, tipo_produto VARCHAR(8))
LANGUAGE SQL
AS $$
INSERT INTO Produto
VALUES
((SELECT MAX(codigo_produto) + 1 FROM Produto), descricao_produto, preco_produto, estoque_produto, tipo_produto);
$$


CALL inserir_produto (1, 'Petit Gateu', 20.00, 50, 'DOCE')


-- 2º
CREATE PROCEDURE aumento_valor
(porcentagem NUMERIC (3,2), nome_produto VARCHAR(8))
LANGUAGE SQL
AS $$
UPDATE Produto
SET preco_produto = preco_produto * (1 + (porcentagem / 100))
WHERE tipo_produto = nome_produto
$$


CALL aumento_valor(20 ,'BEBIDA');


-- 3º
CREATE PROCEDURE excluir_produto
(item INTEGER)
LANGUAGE SQL
AS $$
DELETE FROM Produto
WHERE codigo_produto = item
$$


CALL excluir_produto(7);


-- 4º
CREATE PROCEDURE atualizacao_valor
(codigo INTEGER)
LANGUAGE SQL
AS $$
UPDATE Venda
SET valor_total = (SELECT SUM(valor_total) FROM ProdutoVenda
WHERE codigo_venda = codigo)
WHERE cod_venda = codigo
$$


CALL atualizacao_valor(1)


-- 5º
CREATE OR REPLACE PROCEDURE atualizacao_total_valor()
LANGUAGE SQL
AS $$
UPDATE Venda
SET valor_total = (SELECT SUM(valor_total) FROM ProdutoVenda
WHERE ProdutoVenda.codigo_venda = Venda.cod_venda)
$$


CALL atualizacao_total_valor()


-- 6º
CREATE PROCEDURE inserir_prodVenda
(codigo_venda INTEGER, codigo_produto INTEGER, quantidade_vendida INTEGER, valor_total NUMERIC(5,2))
LANGUAGE SQL
AS $$
INSERT INTO ProdutoVenda
(id_produtovenda, codigo_venda,codigo_produto, quantidade_vendida, valor_total)
VALUES
((SELECT MAX(id_produtovenda) + 1 FROM ProdutoVenda), codigo_venda, codigo_produto, quantidade_vendida, valor_total);
CALL atualizacao_total_valor()
$$


CALL inserir_prodVenda (3, 2, 5, 100.00)


-- 7º
CREATE PROCEDURE deletar_prodVenda
(codigo INTEGER)
LANGUAGE SQL
AS $$
DELETE FROM ProdutoVenda
WHERE id_produtovenda = codigo;
CALL atualizacao_total_valor()
$$


CALL deletar_prodVenda(9)