CREATE VIEW vw_acoes_formatadas AS SELECT id, concat('R$', FORMAT(valor, 2, 'ptBR')) AS valor_formato FROM tb_acoes;

SELECT * FROM vw_acoes_formatadas;

SELECT a_atual.id, FORMAT (CASE WHEN a_anterior IS NULL OR a_anterior.valor = 0 THEN NULL ELSE (a_atual.valor - a_anterior.valor)/ a_anterior.valor END, 8) AS returno_oito_casas 
FROM acoes a_atual
LEFT JOIN 
	acoes a_anterior ON a_atual.id - a_anterior.id + 1
ORDER BY
	a_atual.id;
    
-- UM scrit comentario o ia d cdigo acima.crie uma view para armazenat o codigo. exortar para o excel (use o maritaca)

SELECT 
    a_atual.id, -- Seleciona o ID da ação atual
    FORMAT(
        CASE 
            WHEN a_anterior IS NULL OR a_anterior.valor = 0 THEN NULL -- Se não houver ação anterior ou se o valor da ação anterior for zero, retorna NULL
            ELSE 
                -- Caso contrário, calcula o retorno percentual:
                (a_atual.valor - a_anterior.valor) / a_anterior.valor -- Faz a subtração dos valores e divide pelo valor da ação anterior
        END, 
        8 -- Formata o resultado para ter oito casas decimais
    ) AS retorno_oito_casas -- Nomeia a coluna resultante
FROM 
    acoes a_atual -- Seleciona a tabela de ações e a apelida de 'a_atual'
LEFT JOIN 
    acoes a_anterior ON a_atual.id - a_anterior.id = 1 -- Junta com a mesma tabela para obter a ação anterior, assumindo que 'id' é sequencial
ORDER BY 
    a_atual.id; -- Ordena os resultados pelo ID da ação atual







