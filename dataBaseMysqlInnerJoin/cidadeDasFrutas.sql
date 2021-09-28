-- criando banco de dados
create database db_cidade_das_frutas; 
 
 use db_cidade_das_frutas;
 
 -- criando tabela categoria
 create table tb_categoria(
 id bigint(5) auto_increment,
 nome varchar(100) not null,
 classificacao varchar(100) not null, -- tipo de fruta exemplo citrica
 fruta_epoca boolean,
 primary key (id)
 );
 
 -- criando tabela produto 
  create table tb_produto(
 id bigint(5) auto_increment,
 tipo varchar(100) not null,
 valor decimal(3.2) not null,
 quantidade bigint(100) not null,
 codigo bigint (4) not null,
 disponivel boolean,
 fk_id bigint, 
 primary key (id),
 foreign key (fk_id) references tb_categoria(id)
 );
 
 -- populando a tabela categoria, 5 dados 
 insert into tb_categoria(nome, classificacao, fruta_epoca) 
	values ("Banana", "fruta doce", true);
insert into tb_categoria(nome, classificacao, fruta_epoca) 
	values ("limão", "fruta cítrica", false);
insert into tb_categoria(nome, classificacao, fruta_epoca) 
	values ("maracujá", "fruta semi acida", true);
insert into tb_categoria(nome, classificacao, fruta_epoca) 
	values ("coco", "fruta oleaginosa", true);
insert into tb_categoria(nome, classificacao, fruta_epoca) 
	values ("laranja", "fruta cítrica", true);
    
-- populando a tabela produto, 8 dados 
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("Prata", '7.00', '38', '1050', true, 1);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("Nanica", '8.00', '90', '1543', true, 1);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("Pera", '7.00', '38', '6542', true, 5);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("Lima", '4', '98', '1050', true, 5);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("galego", '5', '73', '5673', true, 2);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("siciliano", '10', '70', '1346', true,2);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("verde", '10', '69', '8752', true,4);
insert into tb_produto (tipo, valor, quantidade, codigo, disponivel, fk_id)
	values ("roxo", '12', '0', '8765', false,3);
   
-- select que retorne os Produtos com o valor maior do que 50 reais.    
select * from tb_produto where valor > 50;

-- select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;

-- select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where tipo like "%B%";

-- select com Inner join entre tabela categoria e produto.
-- help 
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id;

-- select onde traga todos os Produtos de uma categoria específica
-- help 
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id 
	where fk_id = 3;  