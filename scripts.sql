alter table persons 
add cpf varchar (11);

alter table persons 
add unique (cpf)

alter table persons 
drop constraint persons_cpf_key

alter table persons 
add constraint C_cpf unique (cpf)

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

ALTER TABLE Persons
MODIFY Age int NOT NULL;

 ------> excluir tabela <----------
DROP TABLE "nome da tabela;
-----------------------------------------------
1) Quest達o 1:
create database vendas;
-----------------------------------------------
-----------------------------------------------
2) quest達o 2:
create table cliente (
    nome varchar (50),
    fone varchar (14),
    email varchar (50),
    idCliente varchar (1)
);
create table cliente(

);
create table itens (
    qtde numeric,
    precoItem numeric,
    idProduto int,
    idVenda int
);
create table produto (
    descricao varchar (50),
    preco numeric,
    estoque numeric,
    idProduto int
);
create table venda (
    data date,
    status varchar (1),
    idVenda int,
    idCliente varchar (1)
);
-----------------------------------------------
-----------------------------------------------
------(Excluir tabelas)------
drop table cliente cascade;
drop table parcelamento cascade;
drop table itens cascade;
drop table produto cascade;
drop table venda cascade;
-----------------------------------------------
-----------------------------------------------
3) Quest達o 3: 
alter table cliente
add constraint idCliente primary key (idCliente);
alter table parcelamento 
add constraint idParcela primary key (idParcela);
alter table produto 
add constraint idProduto primary key (idProduto);
alter table venda 
add constraint idVenda primary key (idVenda);
alter table itens
add constraint idproduto_idvenda primary key (idProduto, idVenda);
-----------------------------------------------
-----------------------------------------------
4) Quest達o 4:
alter table parcelamento
add constraint idVenda foreign key (idVenda) references venda (idvenda);
alter table venda
add constraint idCliente foreign key (idCliente) references cliente (idCliente);
alter table itens
add constraint idVenda_idProduto foreign key (idProduto, idvenda) references itens (idProduto, idVenda);
-----------------------------------------------
-----------------------------------------------
5) Questao 5: 
alter table parcelamento
add constraint parcela_valor check (valor > 0);
alter table itens
add constraint qtde_valor check (qtde > 0);
alter table itens
add constraint precoItem_valor check (precoItem > 0);
alter table produto
add constraint preco_valor check (preco > 0);
alter table produto
add constraint estoque_valor check (estoque > 0);
-----------------------------------------------
-----------------------------------------------
5) Questão 6:
alter table itens
add column desconto numeric;
alter table itens
add column acrescimo numeric;


produto: preco e estoque
itens: qtde e precoItem
parcelamento: valor

alter table produto
add constraint "nome"
check (preco > 0);
add constraint "nome"
check (estoque > 0);

alter table itens
add constraint "nome"
check (qtde > 0);
add constraint "nome"
check (precoItem > 0);

alter table parcelamento
add constraint "nome"
check (valor > 0);

select * from cliente

select descricao, avg(preco) from produto
group by descricao;

insert into produto(descricao, codcategoria, preco,estoque)
values('trigo', 1, 11,10);

select min(estoque) from produto;
select max(estoque) from produto;
select count(*) from produto;
select avg(preco) from produto;

select sum(preco) / (select count(*) from produto)
from produto;

//avg = média//
//count = quantas linhas/registros tem na tabela//

select * from 

select column
from table;
inner join;
left join;
right join;
select table;
select count(nome da coluna)
select avg (valor medio cluna num)
select sum (soma de todo o valor da coluna numerico)
select min(valor minimo de uma coluna numerica) 
select max(valor maximo de uma coluna numerica)

alter table membro
add column idmembro varchar(50),
add column sobrenome varchar (50),
add column nome varchar (50),
add column rua varchar (50),
add column cep varchar (11),
add column fone varchar (15),
add column datacadastro date,
add column membroindicou int;

alter table agendamento
add column idagendamento int,
add column diarias int,
add column datainicio date,
add column idmembro int,
add column idinstalacao int;

alter table instalacao
add column idinstalacao int,
add column nome varchar (50),
add column customembro decimal,
add column custoconvidado decimal,
add column manutencaomensal decimal,
add column desembolsoinicial decimal;

alter table agendamento 
add primary key (idagendamento);

alter table agendamento 
add foreign key (idmembro) from (idmembro);

insert into agendamento(idagendamento,diarias,datainicio,idmembro,idinstalacao)
values(1, 1, '04/10/2021', 1, 1);

alter table cliente
add primary key (idcliente) 

alter table venda 
add primary key (idvenda),
add foreign key (idcliente);

alter table itens
add primary key (iditem),
add foreign key (idproduto),
add foreign key (idvenda);

alter table produto 
add primary key (idproduto);

select membro.nome, agendamento.diarias, agendamento.datainicio
from membro
inner join agendamento
on membro.idmembro == agendamento.idmembro and instalacao.idinstalacao == agendamemto.idinstalacao;

SELECT membro.nome,agendamento.diarias,agendamento.datainicio FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

SELECT instalacao.nome,agendamento.diarias,agendamento.datainicio FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(1,'andre','Lucas', 'Rua cachorro 2', '98975486', '39992233', '11/09/2001',34);

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(1,'JUAN RAMONE',23.49, 22.30,40.99,119.99);

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(2,'robesvaldo',24.00, 25.00,40.99,119.99);

insert into instalacao(idin stalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(3,'Januario LOKO',30.00,19.99,40.99,119.99);

insert into agendamento(idmembro,sobrenome,nome,rua,cep,fone,datacadastro,membroindicou)
values(1, 'Andrei', 'Lucas', 'Rua constantino augusto trolha', '67865300', '40028922','12/11/2020', '34');

alter table membro 
add constraint idmembro primary key (idmembro);

alter table agendamento
add constraint idagendamento primary key (idagendamento);

alter table instalacao
add constraint idinstalacao primary key (idinstalacao);

alter table agendamento
add constraint idmembro foreign key (idmembro) references membro (idmembro);

create table membro(
idmembro int,
sobrenome varchar (50),
nome varchar (50),
rua varchar (50),
cep varchar (11),
fone varchar (15),
datacadastro date,
membroindicou int
);

SELECT membro.nome,agendamento.diarias,agendamento.datainicio FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

SELECT instalacao.nome,agendamento.diarias,agendamento.datainicio FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(1,'andre','Lucas', 'Rua cachorro 2', '98975486', '39992233', '11/09/2001',34);

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(1,'JUAN RAMONE',23.49, 22.30,40.99,119.99);

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(2,'robesvaldo',24.00, 25.00,40.99,119.99);

insert into instalacao(idin stalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(3,'Januario LOKO',30.00,19.99,40.99,119.99);

insert into agendamento(idmembro,sobrenome,nome,rua,cep,fone,datacadastro,membroindicou)
values(1, 'Andrei', 'Lucas', 'Rua constantino augusto trolha', '67865300', '40028922','12/11/2020', '34');

alter table membro 
add constraint idmembro primary key (idmembro);

alter table agendamento
add constraint idagendamento primary key (idagendamento);

alter table instalacao
add constraint idinstalacao primary key (idinstalacao);

alter table agendamento
add constraint idmembro foreign key (idmembro) references membro (idmembro);

create table membro(
idmembro int,
sobrenome varchar (50),
nome varchar (50),
rua varchar (50),
cep varchar (11),
fone varchar (15),
datacadastro date,
membroindicou int
);


SELECT agendamento.datainicio, agendamento.diarias, membro.nome
FROM agendamento
INNER JOIN membro 
ON agendamento.idmembro = membro.idmembro

SELECT membro.nome, instalacao.nome
FROM membro
INNER JOIN instalacao
ON membro.nome = instalacao.nome

SELECT membro.nome, instalacao.nome
FROM membro
INNER JOIN instalacao
ON instalacao.idinstalacao = agendamento.idinstalacao and membro.idmembro = agendamento.idmembro;

select 
membro.nome,
instalacao.nome
from membro, agendamento
inner join instalacao
on agendamento.idinstalacao = instalacao.idinstalacao;

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(3,'Sardagman','Matloko', 'Rua cachorro salchila bolado', '34343434', '23232323', '01/03/2011',68);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(2,'Bennertz','Ana', 'Rua dog laranja brasileiro', '989898989', '212121221', '01/03/2001',69);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(4,'Cochinelo','Juliana', 'Rua pedro alvares cachorro', '93483984', '4234343454', '01/05/2015',75);

select * from instalacao;

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(4,'tem que ir mano serio',98.98, 34.34,22.22,33.99);
-- Buscar dados em várias tabelas
-- INNER JOIN
select membroindicou
from membro;


Select *
from instalacao
INNER JOIN instalacao
on ;

SELECT membro.nome,agendamento.diarias,agendamento.datainicio FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

SELECT instalacao.nome,agendamento.diarias,agendamento.datainicio FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(1,'andre','Lucas', 'Rua cachorro 2', '98975486', '39992233', '11/09/2001',34);

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(1,'JUAN RAMONE',23.49, 22.30,40.99,119.99);

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(2,'robesvaldo',24.00, 25.00,40.99,119.99);

insert into instalacao(idin stalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(3,'Januario LOKO',30.00,19.99,40.99,119.99);

insert into agendamento(idmembro,sobrenome,nome,rua,cep,fone,datacadastro,membroindicou)
values(1, 'Andrei', 'Lucas', 'Rua constantino augusto trolha', '67865300', '40028922','12/11/2020', '34');

alter table membro 
add constraint idmembro primary key (idmembro);

alter table agendamento
add constraint idagendamento primary key (idagendamento);

alter table instalacao
add constraint idinstalacao primary key (idinstalacao);

alter table agendamento
add constraint idmembro foreign key (idmembro) references membro (idmembro);

create table membro(
idmembro int,
sobrenome varchar (50),
nome varchar (50),
rua varchar (50),
cep varchar (11),
fone varchar (15),
datacadastro date,
membroindicou int
);


SELECT agendamento.datainicio, agendamento.diarias, membro.nome
FROM agendamento
INNER JOIN membro 
ON agendamento.idmembro = membro.idmembro

SELECT membro.nome, instalacao.nome
FROM membro,agendamento
INNER JOIN instalacao
ON agendamento.idinstalacao = instalacao.idinstalacao;

SELECT membro.nome, instalacao.nome
FROM membro,agendamento
INNER JOIN instalacao
ON instalacao.idinstalacao = agendamento.idinstalacao;

select 
membro.nome,
instalacao.nome
from membro, agendamento
inner join instalacao
on agendamento.idinstalacao = instalacao.idinstalacao;

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(3,'Sardagman','Matloko', 'Rua cachorro salchila bolado', '34343434', '23232323', '01/03/2011',68);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(2,'Bennertz','Ana', 'Rua dog laranja brasileiro', '989898989', '212121221', '01/03/2001',69);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(4,'Cochinelo','Juliana', 'Rua pedro alvares cachorro', '93483984', '4234343454', '01/05/2015',75);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(3,'Sardagman','Matloko', 'Rua cachorro salchila bolado', '34343434', '23232323', '01/03/2011',68);

select * from instalacao;
select * from membro;
select * from agendamento;

insert into instalacao(idinstalacao,nome,customembro,custoconvidado,manutencaomensal,desembolsoinicial)
values(4,'tem que ir mano serio',98.98, 34.34,22.22,33.99);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(34,'Ricardo','José', 'Rua Rodrigo januário', '1213232', '123456789', '11/12/2004',98);

insert into agendamento(idagendamento,diarias,datainicio,idmembro,idinstalacao)
values(2,4,'23/09/2006',34,102);
insert into agendamento(idagendamento,diarias,datainicio,idmembro,idinstalacao)
values(3,2,'01/09/2007',2,116);
insert into agendamento(idagendamento,diarias,datainicio,idmembro,idinstalacao)
values(4,3,'04/01/2006',3,112);
insert into agendamento(idagendamento,diarias,datainicio,idmembro,idinstalacao)
values(1,2,'09/09/2006',4,107);

SELECT membro.nome,agendamento.diarias,agendamento.datainicio 
FROM membro
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

select 
membro.nome,
membro.sobrenome,
membro.membroindicou
from membro
join agendamento
on membro.idmembro = agendamento.idmembro
where membro.membroindicou = membro.nome;

SELECT 
membro.nome,
membro.sobrenome,
membro.membroindicou
FROM agendamento
INNER JOIN membro
ON membro.idmembro = agendamento.idmembro;

SELECT
venda.data,
cliente.nome
FROM cliente 
JOIN venda
ON cliente.idcliente = venda.idcliente
WHERE venda.status ='F';

SELECT
venda.data,
cliente.nome
FROM cliente 
JOIN venda
ON cliente.idcliente = venda.idcliente
WHERE venda.status ='F';

Select produto,(case when itens.qtde > 10 then (itens.precoItem-itens.precoItem * 0.1)* itens.qtde
else itens.preco end)
from produto
left join itens on itens.idProduto = produto.idProduto;

SELECT
cliente.nome,
cliente.fone,
cliente.email,
cliente.idcliente,
venda.idvenda
FROM itens,cliente
LEFT JOIN venda
ON cliente.idcliente = venda.idcliente;

SELECT
venda.data,
cliente.nome
FROM cliente 
JOIN venda
ON cliente.idcliente = venda.idcliente
WHERE venda.status ='F';

SELECT
cliente.nome,
cliente.fone,
cliente.email,
cliente.idcliente,
venda.idvenda
FROM itens,cliente
LEFT JOIN venda
ON cliente.idcliente = venda.idcliente;

SELECT 
produto.idproduto,
produto.descricao,
itens.precoitem,
itens.qtde,
produto.preco
FROM produto, itens
LEFT JOIN venda
ON itens.idvenda = venda.idvenda;

SELECT 
cliente.nome, 
cliente.fone, 
cliente.email, 
venda.idVenda, 
SUM(itens.qtde * itens.precoItem) 
AS Valorvenda
FROM itens, produto, cliente
INNER JOIN venda
ON cliente.idCliente = venda.idCliente
WHERE itens.idProduto = produto.idProduto AND itens.idVenda = venda.idVenda
GROUP BY cliente.idCliente, cliente.nome, cliente.fone, cliente.email, venda.idVenda

SELECT 
produto.descricao, 
produto.preco, 
produto.idProduto, 
itens.qtde
FROM produto
INNER JOIN itens
ON itens.idProduto = produto.idProduto
INNER JOIN venda
ON venda.idVenda = itens.idVenda
WHERE venda.data BETWEEN '04/09/2021' and '27/09/2021';


SELECT prod.descricao, prod.preco, prod.estoque, prod.idProduto, itens.qtde AS qauntidadeitens
FROM produto prod
LEFT JOIN itens
ON prod.idProduto = itens.idProduto
WHERE itens.qtde > 10 THEN prod.preco * 0.1
CASE 
     WHEM itens.qtde > 10 THEN prod.preco * 0.1
     ELSE prod.preco = prod.preco
END

Select produto,(case when itens.qtde * 10 then (itens.precoItem-itens.precoItem  0.1)itens.qtde
else itens.preco end)
from produto
left join itens 
on itens.idProduto = produto.idProduto;

(
SELECT produto.idProduto, produto.descricao, itens.precoitem, itens.qtde, SUM(itens.precoItem) precoitens
FROM produto
INNER JOIN itens
ON produto.idProduto = itens.idProduto
UNION ALL
SELECT produto.idProduto, produto.descricao, itens.precoitem, NULL AS itens.qtde, SUM(itens.precoItem) precoitens
FROM produto
INNER JOIN itens
ON produto.idProduto = itens.idProduto
UNION ALL
SELECT produto.idProduto, produto.descricao, NULL AS itens.precoitem, itens.qtde, SUM(itens.precoItem) precoitens
FROM produto
	
SELECT produto.idProduto AS iddoproduto, produto.descricao AS descricaodoproduto, itens.precoitem AS precoItem, itens.qtde, venda.idVenda
FROM itens
JOIN produto 
ON itens.idproduto = produto.idproduto
JOIN venda 
ON venda.idvenda = venda.idvenda
INNER JOIN itens
ON produto.idProduto = itens.idProduto
UNION ALL
SELECT produto.idProduto, NULL AS  produto.descricao, itens.precoitem, itens.qtde, SUM(itens.precoItem) precoitens
FROM produto
INNER JOIN itens
ON produto.idProduto = itens.idProduto
UNION ALL
SELECT NULL AS  produto.idProduto, produto.descricao, itens.precoitem, itens.qtde, SUM(itens.precoItem) AS subtotal
FROM produto
) CALCULO 


SELECT produto.idProduto AS iddoproduto, produto.descricao AS descricaodoproduto, itens.precoitem AS precoItem, itens.qtde, venda.idVenda
FROM itens
JOIN produto 
ON itens.idProduto = produto.idProduto
JOIN venda 
ON venda.idVenda = venda.idVenda

SELECT 
produto.idproduto,
produto.descricao,
itens.precoitem,
itens.qtde,
produto.preco
FROM produto, itens
LEFT JOIN venda
ON itens.idvenda = venda.idvenda;

SELECT 
produto.idProduto, 
produto.descricao, 
itens.precoitem, 
itens.qtde, 
SUM(itens.qtde * itens.precoitem)
FROM produto, itens
WHERE produto.idProduto = itens.idProduto
GROUP BY itens.idVenda, produto.idProduto, produto.descricao, itens.precoitem, itens.qtde
ORDER BY itens.idVenda;

SELECT prod.descricao, prod.preco, prod.estoque, prod.idProduto, itens.qtde AS qauntidadeitens
FROM produto prod
LEFT JOIN itens
ON prod.idProduto = itens.idProduto
IF itens.qtde > (10) 
prod.preco * (0.1);

SELECT prod.descricao, prod.preco, prod.estoque, prod.idProduto, itens.qtde AS quantidadeitens
FROM produto prod
LEFT JOIN itens
ON prod.idProduto = itens.idProduto
WHERE itens.qtde > 10 SUM (prod.preco * 0.1)

SELECT produto. * ,
CASE WHEM itens.qtde > 10 THEN
        (itens.precoitem - (itens.precoitem * 0,1)
ELSE 0
END AS desconto
FROM itens
LEFT JOIN produto prod
ON itens.idproduto = prod.idproduto;

SELECT produto.descricao,
produto.preco,
produto.estoque,
produto.idproduto,
CASE WHEN itens.qtde > 10 THEN (itens.qtde*10 -(itens.precoItem-itens.precoItem *0.1))
ELSE 0
END AS desconto
FROM itens
join produto 
ON produto.idproduto = itens.idproduto  between

select produto.descricao, produto.preco,produto.estoque,produto..

SELECT
AA.nome,
BB.nome,
BB.sobrenome
FROM membro AA, membro BB
WHERE AA.membroindicou = BB.idmembro
ORDER BY AA.nome

SELECT DISTINCT
membro.nome,
membro.nome, 
instalacao.nome
FROM membro,agendamento
INNER JOIN instalacao ON instalacao.idinstalacao = agendamento.idinstalacao;

SELECT agendamento.datainicio, agendamento.diarias, membro.nome
FROM agendamento
INNER JOIN membro 

SELECT COUNT(idproduto) from produto;

FROM membro,agendamento
INNER JOIN instalacao ON instalacao.idinstalacao = agendamento.idinstalacao;


SELECT agendamento.datainicio as datadeinico, agendamento.diarias as totaldiarias, membro.nome as nomemembro
FROM agendamento 
INNER JOIN membro
ON agendamento.idmembro = membro.idmembro;

SELECT membro.nome as nomemembro, instalacao.nome as nomeinstalação
FROM membro, instalacao
INNER JOIN agendamento
WHERE datainicio >= ('2021-09-05');

SELECT mems.nome as nomedomembro, mems.sobrenome as sobrenomedomembro, recs.nome as nomequemindicou, recs.sobrenome as sobrenomequemindicou
from membro mems
LEFT OUTER JOIN membro recs
ON recs.idmembro = mems.membroindicou

SELECT DISTINCT mems.nome || ' ' || mems.sobrenome as membro,
(SELECT recs.nome || ' ' || recs.sobrenome as membroqindicou
from membro recs
where recs.idmembro = mems.membroindicou
)
FROM membro mems
order by membro;

SELECT agendamento.datainicio as datainicio, instalacao.idinstalacao as numeroinstalacao, instalacao.nome as nomeinstalacao
FROM agendamento
INNER JOIN instalacao
ON agendamento.idinstalacao = instalacao.idinstalacao or agendamento.idinstalacao <> instalacao.idinstalacao
ORDER by nome

SELECT agendamento.datainicio as datainicio, agendamento.diarias as diarias, membro.nome as nomemembro, membro.sobrenome as sobrenomemembro
FROM agendamento
INNER JOIN membro
ON agendamento.idmembro = membro.idmembro or agendamento.idmembro != membro.idmembro
ORDER BY nome, datainicio

SELECT venda.data as data datavenda, cliente.nome as nomedocliente
FROM venda
INNER JOIN cliente
ON vanda.idCliente = cliente.idCliente
WHERE venda.status = "F"

create table cliente (
    nome varchar (50),
    fone varchar (14),
    email varchar (50),
    idCliente varchar (1)
);
create table parcelamento (
    idParcela int,
    datavencimento date,
    datapagamento date,
    valor numeric,
    idVenda int 
);
create table itens (
    qtde numeric,
    precoItem numeric,
    idProduto int,
    idVenda int
);
create table produto (
    descricao varchar (50),
    preco numeric,
    estoque numeric,
    idProduto int
);
create table venda (
    data date,
    status varchar (1),
    idVenda int,
    idCliente varchar (1)
);


ON agendamento.idmembro = membro.idmembro

SELECT 
membro.nome,
instalacao.nome,
agendamento.datainicio
from membro,instalacao
INNER JOIN agendamento
ON membro.idmembro = agendamento.idmembro;

SELECT 
agendamento.datainicio,
agendamento.diarias,
membro.nome
FROM membro
INNER JOIN agendamento 
ON membro.idmembro = agendamento.idmembro;

SELECT membro.nome, 
instalacao.nome
FROM membro,agendamento
INNER JOIN instalacao 
ON instalacao.idinstalacao = agendamento.idinstalacao;

SELECT
AA.nome,
BB.nome,
BB.sobrenome
FROM membro AA, membro BB
WHERE AA.membroindicou = BB.idmembro


SELECT membro.nome as nomemembro, instalacao.nome as nomeinstalação
FROM membro, instalacao
ON 

SELECT AA.nome, 
AA.sobrenome, 
BB.nome, 
BB.sobrenome
from membro AA
LEFT OUTER JOIN membro BB
ON  AA.membroindicou = BB.idmembro;

SELECT
agendamento.datainicio,
agendamento.diarias,
membro.nome,
membro.sobrenome
FROM membro
FULL JOIN agendamento
ON membro.idmembro = agendamento.idmembro;

SELECT 
membro.nome, 
instalacao.nome
FROM membro
INNER join instalacao
ON membro.idmembro = instalacao.idinstalacao;

SELECT agendamento.datainicio as datainicio, instalacao.idinstalacao as numeroinstalacao, instalacao.nome as nomeinstalacao
FROM agendamento
INNER JOIN instalacao
ON agendamento.idinstalacao = instalacao.idinstalacao or agendamento.idinstalacao <> instalacao.idinstalacao
ORDER by nome

SELECT agendamento.datainicio as datainicio, agendamento.diarias as diarias, membro.nome as nomemembro, membro.sobrenome as sobrenomemembro
FROM agendamento
INNER JOIN membro
ON agendamento.idmembro = membro.idmembro or agendamento.idmembro != membro.idmembro
ORDER BY nome, datainicio

SELECT membro.nome as nomemembro, instalacao.nome as nomeinstalação
FROM membro

select
AA.nome,
CC.nome
from agendamento BB
join membro AA 
on BB.idmembro = AA.idmembro
join instalacao CC 
on CC.idinstalacao = BB.idinstalacao
where datainicio between '04/01/2017' and '07/12/2019'

SELECT
agendamento.datainicio,
agendamento.diarias,
membro.nome,
membro.sobrenome
FROM membro
FULL JOIN agendamento
ON membro.idmembro = agendamento.idmembro;

SELECT
cliente.nome,
cliente.fone,
cliente.email,
cliente.idcliente,
venda.idvenda
FROM itens,cliente
LEFT JOIN venda
ON cliente.idcliente = venda.idcliente;

Select produto,(case when itens.qtde >= 10 then (itens.precoItem-itens.precoItem * 0.1)* itens.qtde
else itens.preco end)
from produto
left join itens on itens.idProduto = produto.idProduto;


Select produto,(case when itens.qtde10 then (itens.precoItem-itens.precoItem 0.1)itens.qtde
else itens.preco end)
from produto
left join itens on itens.idProduto = produto.idProduto;

SELECT 
agendamento.datainicio,
agendamento.diarias,
instalacao.idinstalacao,
instalacao.nome
FROM agendamento
FULL JOIN instalacao
ON instalacao.idinstalacao = agendamento.idinstalacao;

SELECT agendamento.datainicio, agendamento.diarias, instalacao.idinstalacao, instalacao.nome
FROM agendamento
RIGHT JOIN instalacao ON agendamento.idinstalacao = instalacao.idinstalacao;

SELECT membro.nome, 
instalacao.nome
FROM membro,agendamento
INNER JOIN instalacao ON instalacao.idinstalacao = agendamento.idinstalacao

INNER join instalacao
ON membro.idmembro = instalacao.idinstalacao

SELECT agendamento.datainicio as datainicio, agendamento.diarias as diarias, membro.nome as nomemembro, membro.sobrenome as sobrenomemembro
FROM agendamento
INNER JOIN membro
ON agendamento.idmembro = membro.idmembro or agendamento.idmembro != membro.idmembro
ORDER BY nome, datainicio

SELECT 
agendamento.datainicio,
agendamento.diarias,
membro.nome
FROM membro
INNER JOIN agendamento 
ON membro.idmembro = agendamento.idmembro;

select
AA.nome,
CC.nome
from agendamento BB
join membro AA 
on BB.idmembro = AA.idmembro
join instalacao CC 
on CC.idinstalacao = BB.idinstalacao
where datainicio between '04/01/2017' and '07/12/2019'

SELECT AA.nome, 
AA.sobrenome, 
BB.nome, 
BB.sobrenome
from membro AA
LEFT OUTER JOIN membro BB
ON  AA.membroindicou = BB.idmembro;

SELECT 
agendamento.datainicio,
agendamento.diarias,
instalacao.idinstalacao,
instalacao.nome
FROM agendamento
FULL JOIN instalacao
ON instalacao.idinstalacao = agendamento.idinstalacao;

SELECT
agendamento.datainicio,
agendamento.diarias,
membro.nome,
membro.sobrenome
FROM membro
FULL JOIN agendamento
ON membro.idmembro = agendamento.idmembro;

create table atores_filmes(
	autorId int,
	filmeId int
);
create table atores(
	autorId int,
	nome varchar(50),
	dataNasc date
);
create table generos(
	generoId int,
	descricao varchar(50)
);
create table filmes(
	filmeId int,
	titulo varchar(50),
	sinopse varchar(400),
	generoId int
);
 alter table atores
 add constraint autorId primary key (autorId);
 
 alter table filmes
 add constraint filmeId primary key (filmeId),
 add constraint generoId foreign key (generoId) references generos (generoId);
 
 alter table generos
 add constraint generoId primary key (generoId);
 
 alter table atores_filmes
 add constraint autorId foreign key (autorId) references atores (autorId),
 add constraint filmeId foreign key (filmeId) references filmes (filmeId);
 -----------------------------------------------------
insert into atores(autorId,nome,dataNasc)
VALUES (1,'Lucas Andrei','24/03/2005');
---------------------------------------------------------------------------------





prova:
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
-----------------------------------------------------------------------------
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
----------------------------------------------------------------------------------------------------
Update atores 
set nome ='Suzuki Kishimoto'
where autorid = 26;
------------------------------------------------------------------------------------------------------
DELETE FROM filmes where filmeid = 2 returning *;
------------------------------------------------------------------------------------------------------
SELECT filmes.titulo, filmes.sinopse, generos.descricao
FROM generos
INNER JOIN filmes 
ON filmes.generoid = generos.generoid;
---------------------------------------------------------------------------------------
Select atores.nome,atores.datanasc
from atores_filmes
Join atores
on atores_filmes.autorid = atores.autorid
where datanasc between '01/01/1899' and '01/01/2000';
--------------------------------------------------------------------------------------------------
select atores.nome 
from atores
join atores_filmes
on atores.autorid = atores_filmes.autorid
where filmeid = 2
--------------------------------------------------------------------------------------------------
select filmes.titulo
from filmes
join generos
on filmes.generoid = generos.generoid
where descricao = 'romance';

CREATE TABLE produto (
descricao varchar(50),
preco numeric,
estoque numeric,
idProduto int PRIMARY KEY
);
CREATE TABLE itens (
qtde numeric,
precoItem numeric,
idItem int PRIMARY KEY,
idProduto int,
idVenda int,
FOREIGN KEY(idProduto) REFERENCES produto (idProduto)
);
CREATE TABLE venda (
data date,
status varchar(1),
idVenda int PRIMARY KEY,
idCliente int
);

CREATE TABLE cliente (
nome varchar(50),
fone varchar(14),
email varchar(50),
idCliente int PRIMARY KEY,
limiteCredito numeric
);
CREATE TABLE parcelamento (
idparcela int PRIMARY KEY,
datavencimento date,
datapagamento date,
valor numeric,
idvenda int,
FOREIGN KEY(idvenda) REFERENCES venda (idVenda)
);
ALTER TABLE itens ADD FOREIGN KEY(idVenda) REFERENCES venda (idVenda);
ALTER TABLE venda ADD FOREIGN KEY(idCliente) REFERENCES cliente (idCliente)

Insert into produto (descricao,preco,estoque,idproduto)
values('Lata de feijão',9.99,200,24)

Insert into produto (descricao,preco,estoque,idproduto)
values('Coca-cola 2L',7.99,500,12)

Insert into produto (descricao,preco,estoque,idproduto)
values ('Doritos',6.99,200,14)

insert into cliente (nome,fone,email,idcliente,limitecredito)
values ('Reginaldo Ferreira','47998765643','reginaldoviskferro@gmail.com',103,300.00)

insert into cliente (nome,fone,email,idcliente,limitecredito)
values ('Agnaldo Ramos','47997657364','agnaltrolhares@gmail.com',107,800.00)

insert into cliente (nome,fone,email,idcliente,limitecredito)
values ('Matsantos Junior','4799866743','matsantospon@gmail.com',117,1700.00)

create table materias (
	materia text not null unique primary key,
	nota1 float not null,
	nota2 float not null,
	nota3 float not null
);

---------------------------------------------------------------------------

insert into materias values ('Artes',8.2,8.3,9.7);
insert into materias values ('Biologia',8.5,9.5,10.0);
insert into materias values ('Educação Fisica',10.0,9.3,0);
insert into materias values ('Filosofia',9.0,9.0,0);
insert into materias values ('Fisica',8.2,9.0,0);
insert into materias values ('Geografia',9.3,8.5,0);
insert into materias values ('Historia',10.0,10.0,0);


select * from materias;

create view ver as select * from materias;

select * from ver;

drop view ver;

create view ver_boas_notas as
select * from materias 
where nota1 > 9.0;

select * from ver_boas_notas;
-------------------------------------------
create procedure teste(numero integer) as
$$
begin
 	if(numero < 17) then
		Raise notice 'Você é menor de idade.';
	end if;
end
$$
language 'plpgsql'

call teste(-18);
-------------------------------------------
create procedure testeloop(numero integer) as
$$
declare
	x integer = 0;
begin 
	loop
		Raise notice 'Jonathan é muito lindo %', x;
		x = x + 1;
		
		if (x > $1) then
			exit;
		end if;
	end loop;
end;
$$
language 'plpgsql'

call testeloop(0);
-------------------------------------------------
create procedure questao1(num1 integer,num2 integer) as
$$
begin
	if (num1 > num2) then
		raise notice 'o numero % é maior que o numero %', num1,num2;
	else
		raise notice 'o numero % é maior que o numero %', num2, num1;
	end if;
end;
$$
language 'plpgsql'

call questao1(5,8);
-------------------------------------------------------------------------
drop procedure questao1;	
-------------------------------------------------------------------------
create procedure questao2(num1 integer) as
$$
begin
	if(num1 <= 12) then
		raise notice 'você é criança';
	end if;
	if (num1 <= 18 and num1 > 12) then
		raise notice 'você é adolescente';
	end if;
	if (num1 <= 50 and num1 > 18) then
		raise notice 'você é adulto';
	end if;
	if (num1 > 50) then
		raise notice 'você é aposentado';
	end if;
end;
$$
language 'plpgsql'

call questao2(44);
-----------------------------------------------------------
create procedure questao3(valor decimal,taxa decimal) as
$$
declare
	vf decimal = 0;
begin
	if (valor > 0 and taxa > 0) then
	vf = valor + taxa;
	raise notice 'o valor agora é %', vf;
	end if;
end;
$$
language 'plpgsql'

call questao3(4,7);
-----------------------------------------------------------------


insert into venda (data,status,idvenda,idcliente)
values ('12/04/2018','F',2993,107)

-----------------------------------------------------------------
insert into parcelamento values (1,'13/12/2016','13/12/2016',149.54,2975);

create procedure questao4(venda.idvenda) as
$$
declare
	vf decimal = 0;
begin
	vf = select valor from parcelamento where venda.idvenda = parcelamento.idvenda;
	raise notice 'O valor da venda indicada foi %',vf;
$$
language 'plpgsql'

select * from venda;

CREATE FUNCTION somar(integer, integer) RETURNS integer
AS 'select $1 + $2;'
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

Select somar(1,1);

view consultar;

DROP function exibirEstoque;

Create or replace function exibirEstoque(produto.idProduto int) 
returns numeric as
$$
declare
idProduto int;
begin
	select estoque from produto
	where idProduto = estoque;
	return idProduto;
end;
$$
Language 'plpgsql';

select exibirEstoque(12);

 
create or replace procedure consult(idProduto INTEGER,idVenda INTEGER, qtde NUMERIC) as
$$
begin
	if (status = 'F' or 'C') then
	raise notice 'Somente venda em aberto podem inserir!';
	end if;
end;
$$
language 'plpgsql';

insert into itens Values(10,34.95,34,14,2975);

create trigger tri_consult after insert 
on itens 
for each row execute procedure consult();

Create or replace function soma(numero1 int, numero2 int)
returns text as $$
begin
	return 'A soma dos dois numeros é: '|| numero1 + numero2;
end;
$$ language plpgsql;

drop function soma;

select soma(1,5);

create or replace function getEstoque(idProduto int)
returns numeric as $$
declare
estoque numeric;
begin
	select count(*) into estoque
from produto Where idProduto = idProduto;
return estoque;
end;
$$ language plpgsql;

select getEstoque(12);

