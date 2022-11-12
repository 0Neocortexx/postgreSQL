create DATABASE clientes;

create table cliente (
    nome varchar (50),
    fone varchar (14),
    email varchar (50),
    idCliente varchar (1)
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

alter table cliente add constraint idCliente primary key (idCliente);
alter table parcelamento add constraint idParcela primary key (idParcela);
alter table produto add constraint idProduto primary key (idProduto);
alter table venda add constraint idVenda primary key (idVenda);
alter table itens add constraint idproduto_idvenda primary key (idProduto, idVenda);

alter table parcelamento add constraint idVenda foreign key (idVenda) references venda (idvenda);
alter table venda add constraint idCliente foreign key (idCliente) references cliente (idCliente);
alter table itens add constraint idVenda_idProduto foreign key (idProduto, idvenda) references itens (idProduto, idVenda);

alter table parcelamento add constraint parcela_valor check (valor > 0);
alter table itens add constraint qtde_valor check (qtde > 0);
alter table itens add constraint precoItem_valor check (precoItem > 0);
alter table produto add constraint preco_valor check (preco > 0);
alter table produto add constraint estoque_valor check (estoque > 0);

alter table itens add column desconto numeric;
alter table itens add column acrescimo numeric;

produto: preco e estoque
itens: qtde e precoItem
parcelamento: valor

alter table produto add constraint "nome" check (preco > 0); 
add constraint "nome" check (estoque > 0);
alter table itens add constraint "nome" check (qtde > 0);
add constraint "nome" check (precoItem > 0);
alter table parcelamento add constraint "nome" check (valor > 0);

select * from cliente

select descricao, avg(preco) from produto group by descricao;

insert into produto(descricao, codcategoria, preco,estoque) values('trigo', 1, 11,10);

select min(estoque) from produto;
select max(estoque) from produto;
select count(*) from produto;
select avg(preco) from produto;