INSERT INTO db_farmacia_do_bem.tb_categoria(categoria_farmacia) 
VALUES ("remedios"),("cosmeticos"),("higiene pessoal");

INSERT INTO tb_produtos(nome_produtos,preco_produtos,descricao_produtos,fk_id_categoria)
VALUES ("Neosaldina", 5.00, "Para aliviar dores de cabeça e músculares", 1),
("Creme Milk Nivea", 17.00, "Creme corporal para pele extra seca", 3),
("Tantin", 18.00, "Anticoncepcional mensal com pausa de 4 dias", 1),
("Delineador Vult", 37.00, "Maquiagem para a região dos olhos", 2),
("Sabonete Lux", 2.00, "Sabonete líquido", 3),
("Creme de Hidratação Skala", 7.00, "Pote de 500ml para usar após o shampoo", 3),
("Methiolate", 15.00, "Para passar na região do machucado", 1);

select nome_produtos,preco_produtos from tb_produtos
WHERE preco_produtos > 50;

INSERT INTO tb_produtos(nome_produtos,preco_produtos,descricao_produtos,fk_id_categoria)
VALUES ("Melanctraplus", 60.00, "Ingerido para aliviar dores no estomago", 1);

select nome_produtos,preco_produtos from tb_produtos
WHERE preco_produtos > 50;

select nome_produtos,preco_produtos from tb_produtos
WHERE preco_produtos Between 3.00 and 60.00;

select nome_produtos,preco_produtos from tb_produtos
WHERE nome_produtos LIKE "%B%";

select *
From tb_categoria
INNER JOIN tb_produtos ON tb_categoria.id_categoria = tb_produtos.fk_id_categoria;

select * 
From tb_produtos 
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produtos.fk_id_categoria
WHERE tb_categoria.id_categoria IN (3);