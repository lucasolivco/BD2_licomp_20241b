-- fazendo o backup do banco de dados
-- deve estar na tela de login do mysql
mysqldump -u root --databases bancodb academico > D:\sql\bkp25587.sql

-- para restaurar o backup de um banco de dados
-- executar o comando a seguir de dentro do mysql
-- executar este comando no início de cada aula
source D:\sql\bkp25587.sql

--visualizando os bancos de dados instalados
show databases;

-- excluindo um banco de dados
drop database bancoDB;

-- criando um novo banco de dados
create database bancoDB;

-- acessando o banco de dados
use bancoDB;



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

-- acessando o banco de dados
use bancoDB;

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
git remote add origin https://github.com/lucasolivco/BD2_licomp_20241b
git push -u origin master

-- realizar o backup do banco
--estando no shell do campp, fora do mysql, execute a instrução
mysqldump bancodb -u root >
e:\seunome\bkp_bancodb_1403.sql

create table Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (age>=18 AND City='sandnes')

);

-- fixacao adicionar dia e mes aniversario
alter table clientes 
add dia_niver int,
add mes_niver int;

desc clientes;

-- fixacao regras
alter table clientes
add constraint dias_ck check (dia_niver >= 1 and dia_niver <= 31),
add constraint mes_ck check (mes_niver >= 1 and mes_niver <= 12);

alter table clientes add dia int default '01';
alter table clientes add mes int default '01';
alter table clientes add CONSTRAINT CHK_dia check (dia>=1 AND dia<=31);
alter table clientes add CONSTRAINT CHK_mes check (mes>=1 AND mes<=12);

-- fixacao produtos
alter tables produtos 
modify unidades varchar(50) default 'unidades';

-- correção dos exercícios dos slides 33 ao 35
create database academico;
use academico;

create table intituicoes (
    id integer not null, 
    constraint intituicoes_pk primary key(id),
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint inst_email_uq unique(email)
);

alter table intituicoes
add uf char(2) default 'RJ';

create table professores(
    prof_matr integer(6) not null,
    constraint professores_pk primary key(prof_matr),
    prof_nome varchar(100) not null, 
    prof_email varchar(150) not null, 
    constraint prof_email_uq unique(prof_email),
    prof_salario decimal(18,2),
    constraint prof_salario_ck check(prof_salario > 700) 
);

alter table professores
add dia_niver int,
add mes_niver int;

alter table professores
add constraint professores_dia_niver_ck
    check(dia_niver >= 1 and dia_niver <= 31),
add constraint professores_mes_niver_ck
    check(mes_niver >= 1 and mes_niver < 13);    

alter table professores
add prof_cep char(7);      