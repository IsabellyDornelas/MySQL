CREATE DATABASE db_empresa;
USE db_empresa;
create table tb_colaboradores (
id BIGINT auto_increment,
nome VARCHAR(255) not null,
datanascimento date not null,
salario DECIMAL(6,2),
cargo VARCHAR(50),
primary key(id)
);

SELECT * FROM tb_colaboradores;

INSERT into tb_colaboradores(nome, datanascimento, salario, cargo)
 values ("Gabriela Alvarenga", "2001-01-01", 4000.00, "Analista de TI");
INSERT into tb_colaboradores(nome, datanascimento, salario, cargo) 
values ("Sabrina Godoy", "2002-02-02", 5000.00, "Gerente de TI");
INSERT into tb_colaboradores(nome, datanascimento, salario, cargo)
 values ("Leticia Arrais", "2003-03-03", 6000.00, "Midias Sociais");
INSERT into tb_colaboradores(nome, datanascimento, salario, cargo) 
values ("Isabelly Dornelas", "2004-04-04", 7000.0, "Analista de Projetos");

SELECT * FROM tb_colaboradores WHERE salario > 2000.0;
SELECT * FROM tb_colaboradores WHERE salario < 2000.0;

UPDATE tb_colaboradores SET salario = 2500.0 WHERE id = 4;
UPDATE tb_colaboradores SET cargo = "Desenvolvedora FullStack" WHERE id = 4;