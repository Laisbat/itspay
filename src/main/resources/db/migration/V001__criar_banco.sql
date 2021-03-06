create table TB_CLIENTE
(
	COD_CLIENTE bigint auto_increment primary key,
	TX_CPF varchar(11) not null,
	TX_NOME varchar(255) not null
);

create table TB_REQUISICAO
(
	COD_REQUISICAO bigint auto_increment primary key,
	DT_DATA datetime not null,
	COD_CLIENTE bigint not null,
	FOREIGN KEY (COD_CLIENTE) REFERENCES TB_CLIENTE(COD_CLIENTE)
);