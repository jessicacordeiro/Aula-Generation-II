-- CREATE database db_RegistroDaEscola;

USE db_RegistroDaEscola;

Create table tb_Alunos(
	id bigint(20) auto_increment,
	NomeDoAluno varchar(30) not null,
    CPF bigint(11) not null,
    Turma varchar(40) not null,
    Serie int not null,
    Nota double not null,
    PRIMARY KEY (id)
);

-- SELECT * from tb_Alunos

-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Joelma Silva Reis", 41558726918, "Fundamental", 5, 9)
-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Luana Perez da Lua", 11158999781, "Ensino Medio", 3, 6)
-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Lucas Freitas Maciel", 66698525562, "Fundamental", 8, 5)
-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Reinaldo De Reis", 26885978895, "Ensino Medio", 2, 5)
-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Giulia Andrande Armando", 66658962418, "Ensino Medio", 1, 8)
-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Pedro Luis da Silva", 41158899963, "Fundamental", 8, 8)
-- INSERT into tb_Alunos(NomeDoAluno, CPF, Turma, Serie, Nota) Values ("Jessica De Lucas Pinto", 69958369718, "Fundamental", 5, 7)

-- SELECT * from tb_Alunos

-- SELECT * from tb_Alunos WHERE Nota > 7

-- SELECT * from tb_Alunos WHERE Nota < 7

-- UPDATE tb_Alunos SET Turma = "Ensino Medio", Serie = 1
	-- WHERE id = 3

SELECT * from tb_Alunos