CREATE DATABASE cinema;

CREATE TABLE generos (
 generoId int,
 descricao varchar(50),
 constraint generoId PRIMARY KEY (generoId)
);

Create table atores (
autorId int,
nome varchar (50),
dataNasc date,
constraint autorId primary key (autorId)
);

create Table filmes (
filmeId int,
titulo varchar(50),
sinopse varchar(400),
generoId int,
constraint filmeId primary key (filmeId),
constraint autorId foreign key (generoId) references generos (generoid)
);

create table atores_filmes (
autorId int,
filmeId int,
constraint autorid foreign key (autorid) references atores (autorid),
constraint filmesid foreign key (filmeid) references filmes (filmeid)
);

Insert Into filmes (filmeId,titulo,sinopse,generoId)
values (1,'Senhor dos Anéis','O filme conta a história de um hobbit que tem que roubar uns aneis ai',2)

Insert Into filmes (filmeId,titulo,sinopse,generoId)
values (2,'50 Tons de cinza','Relata a historia de um mano cadeirante que consegue pegar uma gata',1)

Insert Into generos (generoId,descricao)
values (1,'romance');

insert into generos (generoId,descricao)
values (2, 'Aventura');

insert into atores (autorid,nome,datanasc)
values (26,'Mohamed King', '23/10/1980')

insert into atores (autorid,nome,datanasc)
values (32,'Tristan Break','19/03/1900')

insert into atores_filmes (autorId,filmeid)
values (26,1);

insert into atores_filmes (autorId,filmeid)
values(32,2);

Update atores  set nome ='Suzuki Kishimoto'
where autorid = 26;

DELETE FROM filmes where filmeid = 2 returning *;

SELECT filmes.titulo, filmes.sinopse, generos.descricao FROM generos
INNER JOIN filmes ON filmes.generoid = generos.generoid;

Select atores.nome,atores.datanasc from atores_filmes Join atores
on atores_filmes.autorid = atores.autorid where datanasc between '01/01/1899' and '01/01/2000';

select atores.nome from atores join atores_filmes on atores.autorid = atores_filmes.autorid
where filmeid = 2;

select filmes.titulo from filmes join generos on filmes.generoid = generos.generoid
where descricao = 'romance';