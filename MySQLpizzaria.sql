CREATE DATABASE db_pizzaria;
USE db_pizzaria;
CREATE TABLE tb_sabores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);
SELECT * FROM tb_sabores;
INSERT INTO tb_sabores(nome, quantidade, datavalidade, preco) 
VALUES ("mussarela",2, "2024-06-01", 20.00);
INSERT INTO tb_sabores(nome, quantidade, datavalidade, preco) 
VALUES ("peperoni",3, "2024-06-02", 30.00);
INSERT INTO tb_sabores(nome, quantidade, datavalidade, preco) 
VALUES ("portuguesa",4, "2024-06-03",40.00);
INSERT INTO tb_sabores(nome, quantidade, datavalidade, preco) 
VALUES ("calabresa",5, "2024-06-04", 50.00);
INSERT INTO tb_sabores(nome, quantidade, datavalidade, preco) 
VALUES ("palmito",6, "2024-06-05", 60.00);

ALTER TABLE tb_sabores MODIFY preco DECIMAL(6,2);
ALTER TABLE tb_sabores ADD descricao VARCHAR(255);

UPDATE tb_sabores SET descricao = "molho de tomate e mussarela" WHERE Id = 1;
UPDATE tb_sabores SET descricao = "molho de tomate, mussarela e peperoni" WHERE Id = 2;
UPDATE tb_sabores SET descricao = "molho de tomate, mussarela, presunto e ovo " WHERE Id = 3;
UPDATE tb_sabores SET descricao = "molho de tomate, calabresa e cebola" WHERE Id = 4;
UPDATE tb_sabores SET descricao = "molho de tomate, palmito e mussarela" WHERE Id = 5;

