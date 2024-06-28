CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) not null,
    materia VARCHAR(255) not null,
    idade INT,
    nota FLOAT,
    primary key(id)
)

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Geografia", 18, 7.5);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Matematica", 18, 4.5);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "História", 18, 10.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Ciências", 18, 6.5);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Inglês", 18, 3.5);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Química", 18, 9.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Espanhol", 18, 5.5);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniel da Silva Lemos", "Portugues", 18, 10.0);

SELECT * FROM tb_alunos WHERE nota >= 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 7.0 WHERE id = 2;

ALTER TABLE tb_alunos MODIFY nota DECIMAL(6,2);