CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT auto_increment,
nome VARCHAR(255) not null,
quantidade INT, 
preco DECIMAL(6,2),
cor VARCHAR(255) not null,
primary key(id)
);
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Vestido tubinho Ruby", 10, 750.00, "Rosa");
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Mini Saia Esmeralda", 10, 350.00, "Preto");
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Vestido Longo Diamante", 10, 278.80, "Azul");
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Salto bico fino Safira", 10, 99.90, "Branco");
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Conjunto Jade", 10, 3499.99, "Verde");
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Oculos Paty Turquesa", 10, 499.99, "Roxo");
INSERT INTO tb_produtos (nome, quantidade, preco, cor)
 values ("Tenis GlowUP Ametista", 10, 1802.47, "laranja");
INSERT INTO tb_produtos (nome, quantidade, preco, cor) 
values ("Bolsa Charme Água-marinha", 10, 699.00, "Amarelo");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 15 WHERE id = 7;