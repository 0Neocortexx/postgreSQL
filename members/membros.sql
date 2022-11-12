CREATE DATABASE membros;

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

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(3,'Sardagman','Matloko', 'Rua cachorro salchila bolado', '34343434', '23232323', '01/03/2011',68);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(2,'Bennertz','Ana', 'Rua dog laranja brasileiro', '989898989', '212121221', '01/03/2001',69);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(4,'Cochinelo','Juliana', 'Rua pedro alvares cachorro', '93483984', '4234343454', '01/05/2015',75);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(3,'Sardagman','Matloko', 'Rua cachorro salchila bolado', '34343434', '23232323', '01/03/2011',68);

insert into membro(idmembro, sobrenome, nome, rua,cep,fone,datacadastro,membroindicou)
values(34,'Ricardo','José', 'Rua Rodrigo januário', '1213232', '123456789', '11/12/2004',98);


SELECT membro.nome,agendamento.diarias,agendamento.datainicio FROM membro 
INNER JOIN agendamento ON membro.idmembro = agendamento.idmembro;

select membro.nome, membro.sobrenome, membro.membroindicou from membro
join agendamento on membro.idmembro = agendamento.idmembro where membro.membroindicou = membro.nome;

SELECT membro.nome, membro.sobrenome, membro.membroindicou FROM agendamento
INNER JOIN membro ON membro.idmembro = agendamento.idmembro;