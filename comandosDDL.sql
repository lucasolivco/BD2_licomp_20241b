-- criando a tabela bancos
create table bancos (
    numero int not null,
    nome varchar(100) not null,
    constraint bancos_pk primary
    key (numero) 
);

-- acessar o banco bancoDB
use bancoDB
-- criar o bancoDB
create database bancoDB;

-- excluindo um banco de dados
drop database exemplodb;

-- acessando o banco de dados
use exemplodb;

--criar a tabela agencias
create table agencias (
    numero varchar(100) not null,
    nome varchar(100) not null,
    telefone int,
    banco int not null,
    constraint agencias_pk
    primary key (numero)
);

-- criar tabela clientes
create table clientes (
    id int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint clientes_pk
    primary key(id)
);

-- adicionando nova coluna
alter table <nomeTabela>
add <nomeColuna> <tipo> [restrições]

-- criar a coluna uf do tipo char com tamanho 2 e valor padrão 'RJ' na tabela clientes
alter table clientes 
add uf char(2) default 'RJ';

git init
git config --global user.name
""
git config --global user.email
"email"
git add .
git commit -m "aula do dia 14/03"
git remote add origin https://github.com/rosenclever/bancoDB
git push -u origin master
