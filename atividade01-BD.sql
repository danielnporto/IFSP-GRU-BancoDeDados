CREATE DATABASE Shopping;
USE Shopping;

CREATE TABLE TB_Shopping
(
	Codigo_shopping varchar (3),
    Nome_shopping varchar (40) NOT NULL,
    Endereco_shopping varchar (30) NOT NULL,
    Bairro_shopping varchar (30),
    Cidade_shopping varchar (30),
    Uf_shopping varchar(2),
    Fone_administrativo varchar(13),
    primary key (Codigo_shopping)
);

CREATE TABLE TB_Lojas
(
	Codigo_loja varchar(03) primary key,
    Nome_loja varchar(30) NOT NULL,
    CNPJ_Loja varchar(03) UNIQUE,
    foreign key(FK_Codigo_shopping) references TB_Shopping(Codigo_Shopping)
);

CREATE TABLE TB_Cargo
(
	Codigo_Cargo varchar(5) primary key,
    Nome_do_Cargo varchar(05) NOT NULL,
    Comissão_Cargo real
);

CREATE TABLE TB_Funcionarios
(
	Codigo_Funcionario varchar(3) primary key,
    Nome_do_Funcionario varchar(40) NOT NULL,
    sexo char(1) NOT NULL,
    CHECK (Sexo IN ('M', 'F')),
    Data_Nascimento date,
    cpf varchar(12) UNIQUE,
    foreign key(FK_Codigo_Cargo) references TB_Cargo(Codigo_Cargo),
    foreign key(FK_Codigo_Loja) references TB_Lojas(Codigo_Loja),
    Data_Admissao date
);
