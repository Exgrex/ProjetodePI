create database empresa;
use empresa;
create table usuarios(
usuario varchar(20),
senha varchar(20),
nome varchar(70),
primary key(usuario,senha)
);
insert into usuarios values('tokura','1234','Jefferson Tokura');
insert into usuarios values('pintudo','abcd','Jefferson Tokura');
insert into usuarios values('yokai viado','xpto','Wallace viado');
select * from usuarios;



