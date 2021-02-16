INSERT INTO db_cidade_das_carnes.tb_categoria(tipos_categorias) 
VALUES ("Aves"),("Suíno"),("Bovina");

INSERT INTO tb_produto(NomedoCorte_produto,dataDeFabricacao_produto,dataDeVal_produto,preco_produto,marca_produto,fk_id_categoria)
VALUES ("Maminha", "20-06-12", "21-06-12", 34.90, "FRIBOI", 3),
("Meio da Asa", "20-07-06", "20-02-06", 17.99, "FRIGOPLUS", 1),
("Bisteca", "20-11-03", "21-03-03", 21.99, "SADIA", 2),
("Miolo de Acem", "20-10-04", "21-07-04", 27.99, "BASSI", 3),
("Picanha", "20-08-10", "21-08-10", 47.99, "MINERVA", 3),
("Panceta", "20-09-05", "21-03-05", 7.00, "AURORA", 2),
("Coxinha da Asa", "20-07-08", "21-02-08", 15.99, "SADIA", 1);

select NomedoCorte_produto,preco_produto from tb_produto
WHERE preco_produto > 50;

-- select * from tb_produto

-- UPDATE tb_produto SET preco_produto = 59.99
-- WHERE id_produto = 5

select NomedoCorte_produto,preco_produto from tb_produto
WHERE preco_produto Between 3.00 and 60.00;

select NomedoCorte_produto,preco_produto from tb_produto
WHERE NomedoCorte_produto LIKE "c%";

select *
From tb_categoria
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_id_categoria;

select * 
From tb_produto 
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_id_categoria
WHERE tb_categoria.id_categoria IN (1);