INSERT INTO db_pizzaria_legal.tb_categoria(categoria_pizza) 
VALUES ("doce"),("salgada"),("vegana");

INSERT INTO tb_pizza(sabor_pizza,preco_pizza,massa_pizza,fk_id_categoria)
VALUES ("Marguerita", 35.00, "Grossa", 2),
("Romeu e Julieta", 40.00, "Fina", 1),
("Brocolis", 38.00, "Grossa", 3),
("Portuguesa", 37.00, "Grossa", 2),
("Palmito", 40.00, "Fina", 3),
("Brigadeiro", 50.00, "Fina", 1),
("Milho", 36.00, "Fina", 3),
("Mussarela", 25.00, "Grossa", 2);

select sabor_pizza,preco_pizza from tb_pizza
WHERE preco_pizza > 45;

select sabor_pizza,preco_pizza from tb_pizza
WHERE preco_pizza Between 29.00 and 60.00;

select sabor_pizza,preco_pizza from tb_pizza
WHERE sabor_pizza LIKE "%c%";

select *
From tb_categoria
INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_id_categoria;

select * 
From tb_pizza 
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_id_categoria
WHERE tb_categoria.id_categoria IN (2);




