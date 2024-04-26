CREATE DATABASE db_curso;

USE db_curso;

CREATE TABLE tbl_cursos(
	idCurso INT IDENTITY(1,1),
	nome VARCHAR(100) NOT NULL,
	cargaHoraria INT NOT NULL,
	CONSTRAINT pk_idCurso PRIMARY KEY(idCurso)
);

CREATE TABLE tbl_alunos(
	idAluno INT IDENTITY(1,1),
	idCurso INT,
	nome VARCHAR(240) NOT NULL,
	CONSTRAINT pk_idAluno PRIMARY KEY(idAluno),
	CONSTRAINT fk_idCurso FOREIGN KEY(idCurso)
		REFERENCES tbl_cursos(idCurso)
);

INSERT INTO tbl_cursos VALUES
	('Análise e Desenvolvimento de Sistemas', 1600),
	('Engenharia de Computação', 3200),
	('Ciência da Computação', 3140);

INSERT INTO tbl_alunos VALUES
	(1, 'Alexia Nathalia'),
	(3, 'Leandro Bittencourt'),
	(2,'Matheus Santos');

SELECT * FROM tbl_alunos;
SELECT * FROM tbl_cursos;

SELECT tbl_alunos.nome, tbl_cursos.nome FROM tbl_alunos
	INNER JOIN tbl_cursos
	ON tbl_alunos.idCurso = tbl_cursos.idCurso