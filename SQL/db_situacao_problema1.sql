CREATE DATABASE IF NOT EXISTS db_situacao_Problema1 COLLATE utf8mb4_general_ci CHARSET utf8mb4;

USE db_situacao_problema1;

CREATE TABLE IF NOT EXISTS tb_acoes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	valor DECIMAL(10, 2) NOT NULL
)AUTO_INCREMENT = 1;

describe tb_acoes;

ALTER TABLE tb_acoes MODIFY COLUMN valor DECIMAL(10, 2);

INSERT INTO tb_acoes (valor) VALUES (1.31),
									(1.64),
                                    (1.42),
                                    (1.45),
                                    (1.47),
                                    (1.45),
                                    (1.48),
                                    (1.42),
                                    (1.34),
                                    (1.35),
                                    (1.35),
                                    (1.36),
                                    (1.32),
                                    (1.24),
                                    (1.22),
                                    (1.27),
                                    (1.26);
                                    
SELECT * FROM tb_acoes;

