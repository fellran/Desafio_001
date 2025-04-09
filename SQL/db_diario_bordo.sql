CREATE DATABASE IF NOT EXISTS db_relatorio COLLATE utf8mb4_general_ci CHARSET utf8mb4;

USE db_relatorio;

CREATE TABLE IF NOT EXISTS tb_aluno (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ra MEDIUMINT NOT NULL UNIQUE,
    CPF INT(12) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS tb_diario_bordo(
	id_diario INT PRIMARY KEY AUTO_INCREMENT,
    dt_hora DATETIME NOT NULL,
    avaliacao TINYINT(1),
    descricao VARCHAR(255),
    id_aluno INT,
    
    CONSTRAINT fk_aluno_id_aluno FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno)
);
