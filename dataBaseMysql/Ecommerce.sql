-- criando banco de dados 
create database db_ecommerce;

-- criando tabela produtos 
 use db_ecommerce;
 
 create table tb_produtos(
 id bigint (5) auto_increment,
 nome varchar(100) not null,
 marca varchar(100) not null, 
 valor decimal (5.2) not null, 
 quantidade_estoque bigint (5) not null,
 disponivel boolean, 
 primary key (id)
 );
 
 -- Popule esta tabela com até 5 dados;

insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Camiseta", "Hering", '60.00', '150', true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Calça", "Levi's", '160.00', '90',  true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Blusa", "Hering", '199.00', '89', true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Meia", "Trifil", '20.00', '200', true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Vestido", "Hering", '89.00', '1', true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Saia", "Adidas", '50.00', '75', true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Tenis", "Vans", '250.00', '10', true);
insert into tb_produtos (nome, marca, valor, quantidade_estoque, disponivel) values ("Mochila", "Adidas", '100.00', '100', true);


-- Faça um select que retorne os produtos com o valor maior do que 500.

select * from tb_produtos where valor > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.

select * from tb_produtos where valor < 500;