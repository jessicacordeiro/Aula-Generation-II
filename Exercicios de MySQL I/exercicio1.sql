-- create database db_rh; 

USE db_rh;
Create table tb_funcionarios(
	id bigint(6) auto_increment,
    Nome varchar(20) not null,
    CPF bigint(11) not null,
    Cargo varchar(20) not null,
    Salario int not null,
    primary key (id)
);

-- SELECT * from tb_funcionarios

-- INSERT into tb_funcionarios(Nome, CPF, Cargo, Salario) Values ("Jéssica Cordeiro", 41587525618, "Desenvolvedora", 3500.0)
-- INSERT into tb_funcionarios(Nome, CPF, Cargo, Salario) Values ("Ana Maria Jr.", 41666678919, "UX", 3100.0)
-- INSERT into tb_funcionarios(Nome, CPF, Cargo, Salario) Values ("Silvio Machado", 11569814817, "Coordenador", 10000.0)
-- INSERT into tb_funcionarios(Nome, CPF, Cargo, Salario) Values ("Jaqueline Alexandre", 66588569914, "Administradora", 5600.0)
-- INSERT into tb_funcionarios(Nome, CPF, Cargo, Salario) Values ("Victor Martins", 17825569718, "Desenvolvedor", 3500.0)

-- select * from tb_funcionarios

-- UPDATE db_rh.tb_funcionarios
-- SET Nome = Sergio
-- WHERE id_funcionarios = 2;
 
-- SELECT * from tb_funcionarios

-- UPDATE tb_funcionarios SET Nome = "Sergio Silva", CPF = 41587796217 
	-- WHERE id = 2;

-- SELECT * from tb_funcionarios

-- UPDATE tb_funcionarios SET Cargo = "Desenvolvedor"
	-- WHERE id = 2
    
-- SELECT * from tb_funcionarios

-- SELECT * from tb_funcionarios WHERE salario > 2000

-- SELECT * from tb_funcionarios WHERE salario < 2000

-- SELECT * from tb_funcionarios

-- UPDATE tb_funcionarios SET Salario = 9600
	-- WHERE id = 4

SELECT * from tb_funcionarios