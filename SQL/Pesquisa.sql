-- DDL

CREATE DATABASE IF NOT EXISTS dbpesquisa COLLATE utf8mb4_general_ci CHARSET utf8mb4;

USE dbpesquisa;

CREATE TABLE IF NOT EXISTS tb_cruzamento (
	id_cruzamento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR (255) NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_horario (
	id_horario INT PRIMARY KEY AUTO_INCREMENT,
    hora FLOAT(2,2),
    dt_horario DATE
)AUTO_INCREMENT = 1;

ALTER TABLE tb_horario MODIFY COLUMN hora VARCHAR(6);

CREATE TABLE IF NOT EXISTS tb_nivel_ruido (
	id_nivel_ruido INT PRIMARY KEY AUTO_INCREMENT,
    valor_ruido INT NOT NULL,
	id_cruzamento INT,
    id_horario INT,
    
    CONSTRAINT fk_cruzamento_id_cruzamento FOREIGN KEY (id_cruzamento) REFERENCES tb_cruzamento(id_cruzamento),
    CONSTRAINT fk_horario_id_horario FOREIGN KEY (id_horario) REFERENCES tb_horario(id_horario)
)AUTO_INCREMENT = 1;

-- DML

INSERT INTO tb_cruzamento (nome, localizacao) VALUES ('Central', 'Brasilia');

INSERT INTO tb_horario (hora, dt_horario) VALUES ('20.00', '2025-03-29'), ('09.00', '2025-03-12'), ('12.00', '2025-03-15');

INSERT INTO tb_nivel_ruido (valor_ruido, id_cruzamento, id_horario) VALUES 
	(85, 1, 4), (92, 1, 5), (95, 1, 6), (98, 1, 4), (101, 1, 5), (103, 1, 6),
	(107, 1, 4), (110, 1, 4), (114, 1, 5), (117, 1, 6), (120, 1, 4), (125, 1, 5), 
	(127, 1, 6), (120, 1, 4), (112, 1, 4),(122, 1, 4);

-- DQL

SELECT avg(valor_ruido) AS media FROM tb_nivel_ruido;
    







