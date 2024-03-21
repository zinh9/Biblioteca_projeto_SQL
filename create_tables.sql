CREATE DATABASE BIBLIOTECA;

USE BIBLIOTECA;

CREATE TABLE USUARIO(
	IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SOBRENOME VARCHAR(80) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	CPF CHAR(9) NOT NULL,
	EMAIL VARCHAR(80)
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_USUARIO INT UNIQUE
);

CREATE TABLE CONTATO(
	IDCONTATO INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('COM', 'RES', 'CEL'),
	NUMERO CHAR(11),
	ID_USUARIO INT
);

CREATE TABLE ACERVO_LIVROS(
	IDLIVRO INT PRIMARY KEY AUTO_INCREMENT,
	LIVRO VARCHAR(80) NOT NULL,
	AUTOR VARCHAR(80) NOT NULL
);

CREATE TABLE USUARIO_LIVRO(
	ID_USUARIO INT,
	ID_LIVRO INT,
	PRIMARY KEY(ID_USUARIO, ID_LIVRO)
);

CREATE TABLE EMPRESTIMO(
	IDEMPRESTIMO INT PRIMARY KEY AUTO_INCREMENT,
	EMPRESTIMO DATETIME NOT NULL,
	ID_USUARIO INT,
	ID_LIVRO INT
);

CREATE TABLE DEVOLUCAO(
	IDDEVOLUCAO INT PRIMARY KEY AUTO_INCREMENT,
	DEVOLUCAO DATETIME NOT NULL,
	ID_USUARIO INT,
	ID_LIVRO INT
);

CREATE TABLE RELATORIO(
	IDRELATORIO INT PRIMARY KEY AUTO_INCREMENT,
	DATA_DEVOLUCAO DATETIME NOT NULL,
	ID_USUARIO INT,
	ID_LIVRO INT,
	ID_EMPRESTIMO INT
);

CREATE TABLE MULTA(
	IDMULTA INT PRIMARY KEY AUTO_INCREMENT,
	VALOR DECIMAL(10,2) NOT NULL,
	MOTIVO VARCHAR(100) NOT NULL,
	ID_USUARIO INT,
	ID_LIVRO INT
);
