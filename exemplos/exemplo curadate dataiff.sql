-- criando database 
create database rh_gen;

-- criando tabela
create table tb_funcionaries (
id bigint auto_increment not null,
nome varchar (255) not null,
ative boolean,
data_nascimento date not null, -- atributo data 
hora_nascimento time , -- atributo hora 
email varchar(150) not null,
data_criacao timestamp not null, -- atributo data e hora baseado no fuso horario atual ano-mes-dia 
data_atualizacao timestamp not null,
primary key (`id`)
);
-- populando tabela
insert into  tb_funcionaries (nome, ative, data_nascimento, hora_nascimento, email, data_criacao, data_atualizacao)
	values ("Argel", true, "1999-08-16", "07:30:00",  "argel@generation.org", 
		current_timestamp(), current_timestamp()
        );  
        
        
select * from tb_funcionaries;
-- mudando formato de hora e data
select id,nome,email,
date_format(data_nascimento, "%d/%m/%y") as data_de_nascimento,
time_format(hora_nascimento, "%h:%i:%s") as Hora_do_nascimento
from tb_funcionaries; 

-- data criacao e data atualizacao divididos para exibicao da consulta
select id, nome, email,
date_format (data_criacao,"%d/%m%y") as data_de_criacao,
time_format (data_criacao, "%h:%i") as hora_da_criacao,
date_format(data_atualizacao,"%d/%m/%y") as data_de_atualizacao,
time_format(data_atualizacao, "%h:%m:%s") as horario_de_criacao
from tb_funcionaries;

-- exemplo funcao curdate() p/ obter a data do dia 
-- e a funcao datediff() para calcular o total de dias entre a data de nasc. e a data de hoje

select nome as Nome,
date_format(curdate(),"%d/%m/%y") as Hoje,
date_format(data_nascimento, "%d/%m/%y") as Data_de_nascimento,
datediff(curdate(),data_nascimento) as dias_de_vida
from tb_funcionaries;