CREATE DATABASE venda;

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
ALTER TABLE venda ADD FOREIGN KEY(idCliente) REFERENCES cliente (idCliente);

Insert into produto (descricao,preco,estoque,idproduto)
values('Lata de feijão',9.99,200,24);

Insert into produto (descricao,preco,estoque,idproduto)
values('Coca-cola 2L',7.99,500,12);

Insert into produto (descricao,preco,estoque,idproduto)
values ('Doritos',6.99,200,14);

insert into cliente (nome,fone,email,idcliente,limitecredito)
values ('Reginaldo Ferreira','47998765643','reginaldoviskferro@gmail.com',103,300.00);

insert into cliente (nome,fone,email,idcliente,limitecredito)
values ('Agnaldo Ramos','47997657364','agnaltrolhares@gmail.com',107,800.00);

insert into cliente (nome,fone,email,idcliente,limitecredito)
values ('Matsantos Junior','4799866743','matsantospon@gmail.com',117,1700.00);

insert into venda (data,status,idvenda,idcliente)
values ('12/04/2018','F',2993,107);

insert into parcelamento 
values (1,'13/12/2016','13/12/2016',149.54,2975);

insert into itens 
Values(10,34.95,34,14,2975);

create procedure valorVenda(venda.idvenda) as
$$
declare
	vf decimal = 0;
begin
	vf = select valor from parcelamento where venda.idvenda = parcelamento.idvenda;
	raise notice 'O valor da venda indicada foi %',vf;
$$
language 'plpgsql';

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
DROP function exibirEstoque;
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

create trigger tri_consult after insert on itens 
for each row execute procedure consult();

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