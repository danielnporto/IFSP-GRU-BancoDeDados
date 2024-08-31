CREATE DATABASE BD_Vendas;
USE BD_Vendas;

CREATE TABLE TB_Clientes
(
	CodigoDoCliente char(3) primary key,
    Endereco char(30) NOT NULL,
    Cidade char(30) NOT NULL,
    CEP char(9) NOT NULL,
    UF char(2),
    Pais char(25),
    Telefone varchar(15),
    Fax varchar(15)
);

CREATE TABLE TB_Pedidos
(
	NumeroPedido char(20) primary key,
    constraint FK_CodigoCliente foreign key(CodigoDoCliente) references TB_Clientes(CodigoDoCliente),
    CodigoFuncionario char(15),
    DataDoPedido date,
    DataDeEntrega date,
    DataDeEnvio date,
    Frete float(5),
    NomeDestinatario char(30),
    EnderecoDestinatario char(30),
    CidadeDeDestino char(30),
    CEPdeDestino char(9) NOT NULL,
    PaisDeDestino char(25)
)

CREATE TABLE TB_ItensPedidos
(
	CodigoDoProduto char(20) primary key,
    constraint FK_NumeroDoPedido foreign key(NumeroPedido) references 

);