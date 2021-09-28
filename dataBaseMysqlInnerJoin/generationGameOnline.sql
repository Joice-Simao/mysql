-- criando data base 
create database db_generation_game_online;

-- ativando data base
use db_generation_game_online;

-- criando tabela classe
create table tb_classe (
	id bigint auto_increment,
    nome varchar (30) not null,
    poder varchar(30) not null,
    especial varchar(30) not null,
    primary key (id)
);
-- criando tabela personagem
create table tb_personagem (
	id bigint auto_increment,
    nome varchar (30) not null,
    ataque bigint(10) not null,
    defesa bigint(10) not null,
    arma varchar(30)  not null,
    vida bigint(100)  not null,
    fk_id_classe bigint,
    primary key (id),
    foreign key (fk_id_classe) references tb_classe(id)   
);
-- selecionar tabela classe
select * from tb_classe;

-- popular tabela classe 
insert into tb_classe (nome, poder, especial) values ("anao", "machadadas", "furia de Khalmyr");
insert into tb_classe (nome, poder, especial) values ("guerreiro", "lutar", "espada sangrenta");
insert into tb_classe (nome, poder, especial) values ("arqueiro", "flechadas", "Flexas flamejantes");
insert into tb_classe (nome, poder, especial) values ("samurai", "espadadas", "picadinho");
insert into tb_classe (nome, poder, especial) values ("bruxo", "cajadadas", "brilho da morte");

-- popular tabela personagem 
select * from tb_personagem;
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Makir", 80, 100, "machado", 500, 1);
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Cezar", '150', '120', "espada", '600', '2');
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Elmir", '100', '90', "arco", '450', '3');
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Jack", '150', '120', "espada", '600', '4');
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Lilith", '100', '120', "cajado",'450', '5');
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Cuca", '100', '120', "cajado", '450', '5');
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Cass", '100', '90', "arco", '450', '3');
insert into tb_personagem (nome, ataque, defesa, arma, vida, fk_id_classe) values ("Loss", '80', '100', "machado", '500', '1');

-- select poder ataque maior que 2000
select  * from tb_personagem where ataque > 2000; 

-- select poder de defesa entre 1000 e 2000.
select  * from tb_personagem where defesa between 1000 and 2000;

-- select utilizando LIKE buscando os personagens com a letra C.
select  * from tb_personagem where nome like "%C%";

-- select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.fk_id_classe;

-- select onde traga todos os personagem de uma classe específica
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.fk_id_classe
where fk_id_classe = 1;