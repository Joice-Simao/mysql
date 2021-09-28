-- criando banco de dados 
create database db_Rh_Solucao_Sp;

-- criando tabela funcionaries 
 use db_Rh_Solucao_Sp;
 
 create table tb_funcionaries(
 id bigint (5) auto_increment,
 nome varchar(100) not null,
 cpf bigint(11) not null, 
 cargo varchar(100) not null, 
 ativo boolean,
 salario decimal(7.2) not null,
 primary key (id)
 );
 
 -- Popule esta tabela com até 5 dados;

insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Fernanda", '12345685563', "Desenvolvedore", true, '4000.00');
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Ana ", '12345600433', "Desenvolvedore Junior", true, '3800.00');
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Luana", '12346654703', "Gerente de TI", true, '5500.00');
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Francisco", '76894534230', "Desenvolvedore", true, '4000.00');
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Pablo", '32434456776', "Tech Lead", false,'4500.00' );
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Lilian", '09887412337', "Desenvolvedore Junior", false, '4500.00');
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Vitoria", '09975324234', "Diretore", true, '4200.00');
insert into tb_funcionaries (nome, cpf, cargo, ativo, salario) values ("Paula", '96547522100', "Secretarie", true, '2500.00');

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.

select * from tb_funcionaries where salario > 2000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.

select * from tb_funcionaries where salario < 2000;