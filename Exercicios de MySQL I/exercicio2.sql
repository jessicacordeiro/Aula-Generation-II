-- CREATE database db_ecommerce;

USE db_ecommerce;
Create table tb_Produtos(
	id bigint(8) auto_increment,
    NomeDoProduto varchar(46) not null,
    Categoria varchar(46) not null,
    QuantidadeNoEstoque int not null,
    PrecoUnitario int not null,
    PRIMARY KEY (id)
);

-- SELECT * from tb_Produtos

-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Melancia", "Brincos", 10, 15.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Banana", "Brincos", 5, 10.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Cubo Mágico", "Brincos", 20, 13.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Pisca Pisca", "Brincos", 30, 20.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Chocker Coração", "Colar", 5, 9.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Chocher de Argola", "Colar", 35, 25.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Chocher de Strass", "Colar", 10, 14.0)
-- INSERT into tb_Produtos(NomeDoProduto, Categoria, QuantidadeNoEstoque, PrecoUnitario) Values ("Chocker de Florzinha", "Colar", 3, 8.0)

-- SELECT * from tb_Produtos

-- SELECT * from tb_produtos WHERE PrecoUnitario > 500

-- SELECT * from tb_produtos WHERE PrecoUnitario < 500

-- UPDATE tb_Produtos SET NomeDoProduto = "Chocker de Argola"
	-- WHERE id = 6

-- SELECT * from tb_Produtos

-- UPDATE tb_Produtos SET NomeDoProduto = "Chocker de Strass"
	-- WHERE id = 7
    
SELECT * from tb_Produtos


