USE db_situacao_problema1;

SELECT MAX(valor) FROM tb_acoes;

SELECT MIN(valor) FROM tb_acoes;

SELECT AVG(valor) FROM tb_acoes;

SELECT SUM(valor) FROM tb_acoes;

-- view
CREATE VIEW vw_estatisticas_acoes AS SELECT (SELECT max(valor) FROM tb_acoes) AS max_valor,(SELECT min(valor) FROM tb_acoes) AS valor_minimo,(SELECT avg(valor)FROM tb_acoes) 
AS media_valor,(SELECT sum(valor) FROM tb_acoes) AS soma_total;

SELECT * FROM vw_estatisticas_acoes;
 
 