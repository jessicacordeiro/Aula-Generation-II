INSERT INTO db_cursodaminhavida.tb_categoria(categoria_cursosOn) 
VALUES ("Tecnologia"),("Comunicação"),("Administração & Negócios");

INSERT INTO tb_curso(nomeDoCurso,modulos,duracao,preco,fk_id_categoria)
VALUES ("JAVA", 20, 5000, 120.99, 1),
("Marketing de Conteúdo", 15, 2700, 89.99, 2),
("UX", 18, 5600, 140.99, 1),
("Gestão de Produtos", 20, 5000, 139.99, 3),
("SEO", 14, 2000, 79.99, 2),
("Pynthon", 18, 4300, 169.99, 1),
("Recursos Humanos", 20, 5000, 119.99, 3);

select nomeDoCurso,preco from tb_curso
WHERE preco > 50;

select nomeDoCurso,preco from tb_curso
WHERE preco Between 3.00 and 60.00;

INSERT INTO tb_curso(nomeDoCurso,modulos,duracao,preco,fk_id_categoria)
VALUES ("Metodologia Ágil", 4, 800, 49.99, 3);

-- select * from tb_curso

select nomeDoCurso,preco from tb_curso
WHERE nomeDoCurso LIKE "J%";

select *
From tb_categoria
INNER JOIN tb_curso ON tb_categoria.id_categoria = tb_curso.fk_id_categoria;

select * 
From tb_curso 
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_curso.fk_id_categoria
WHERE tb_categoria.id_categoria IN (1);

-- UPDATE tb_curso SET nomeDoCurso = "Python"
	-- WHERE id_curso = 6
    
-- select * from tb_curso

-- UPDATE tb_curso SET duracao = 25500
	-- WHERE id_curso = 4
    
-- select * from tb_curso

-- UPDATE tb_curso SET duracao = 1000000
	-- WHERE id_curso = 1
    
select * from tb_curso