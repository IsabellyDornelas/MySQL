CREATE DATABASE  db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);
CREATE TABLE tb_personagens (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    habilidades  VARCHAR(100) NOT NULL,
    funcao_personagem INT NOT NULL,
    data_lancamento DATE, 
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes (nome, descricao) VALUES
	('Duelista', 'Ágil e evasiva, Jett se destaca em movimentos rápidos'),
	('Curandeira', 'Revive um aliado morto com vida total.'),
	('Duelista', 'Lança um olho etéreo que cega todos os inimigos que olham para ele'),
	('iniciador', 'Dispara uma flecha que explode em uma área ao atingir uma superfície'),
	('Controlador', 'Ele pode se teletransportar através do campo de batalha, obscurecendo a visão de seus inimigos');
    
INSERT INTO tb_personagens (nome, habilidades, funcao_personagem, data_lancamento, classe_id) VALUES
	('JET', 'AR' , 1000 , "2020-01-01", 1),
	('SAGE', 'CURA' , 2000, "2024-01-01", 2),
	('REYNA', 'SUGA ALMAS', 3000, "2019-01-01", 3),
	('SOVA', 'LANÇA FLECHAS' , 4000, "2021-01-01", 4),
	('OMEN', 'TELETRANSPORTE', 5000, "2020-01-01" , 5);

SELECT * FROM tb_personagens WHERE funcao_personagem > 2000;
SELECT * FROM tb_personagens WHERE funcao_personagem BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

	