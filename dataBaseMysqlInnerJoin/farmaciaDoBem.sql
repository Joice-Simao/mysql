-- criando bd
create database db_farmacia_do_bem; 

 -- criando tabela categoria
 use db_farmacia_do_bem;
 
 create table tb_categoria(
 id bigint(5) auto_increment,
 tipo varchar(100) not null,
 generico boolean,
 marca varchar(100) not null,
 primary key (id)
 );
 
 -- criando tabela produto 
  create table tb_produto(
 id bigint(5) auto_increment,
 nome varchar(100) not null,
 valor varchar(100) not null,
 validade date not null,
 quantidade_estoque bigint(100) not null,
 codigo_produto bigint (10) not null,
 fk_id bigint, 
 primary key (id),
 foreign key (fk_id) references tb_categoria(id)
 );
 
 -- populando a tabela categoria 5 dados 
 insert into tb_categoria(tipo, generico, marca) 
	values ("Medicamentos", true, "Randax");
insert into tb_categoria(tipo, generico, marca) 
	values ("Dermocosméticos", false, "Maxlove");
insert into tb_categoria(tipo, generico, marca) 
	values ("Fitoterapicos", false, "Eurofarma");
insert into tb_categoria(tipo, generico, marca) 
	values ("Higiene", false, "Clean");
insert into tb_categoria(tipo, generico, marca) 
	values ("Cabelos", true, "Dove");
    
-- populando a tabela produto 8 dados 
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Shampoo", '35', '2021-08-09', '100', '5065432156','5');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Calmante", '46', '2021-02-09', '150', '0943213490','1');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Dipirona", '10', '2021-10-05', '200', '8463528034', '1');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Sabonete",'4','2021-12-04', '50', '8463528034', '4');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Condicionador", '30', '2021-08-05', '79', '8909643224', '5');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Creme pentear", '32', '2022-01-02', '64', '9943211344','5');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Paracetamol", '20', '2021-03-05', '134', '5664333566', '1');
insert into tb_produto (nome, valor, validade, quantidade_estoque, codigo_produto, fk_id)
	values ("Enxaguante bucal", '30', '2021-10-09', '90', '87752234456', '4');
   
-- select que retorne os Produtos com o valor maior do que 50 reais.    
select * from tb_produto where valor > 50;

-- select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;

-- select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%C%";

-- select com Inner join entre tabela categoria e produto.

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id;

-- select onde traga todos os Produtos de uma categoria específica

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id 
	where fk_id = 1;  


