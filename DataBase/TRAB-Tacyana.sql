create table modelos(
id_modelo serial primary key,
marca varchar(50) not null,
ano_lancamento date not null
);

create table veiculos(
id_veiculo serial primary key,
id_modelo integer,
foreign key (id_modelo) references modelos(id_modelo),
valor_veiculo float not null,
chassi char(17) not null unique,
placa char(7) not null unique,
status boolean not null
);

create table clientes(
id_cliente serial primary key,
nome_cliente varchar(200) not null,
cpf_cliente char(11) not null unique,
telefone_cliente char(14) not null,
endereco_cliente varchar(200) not null
);

create table funcionarios(
id_funcionario serial primary key,
nome_funcionario varchar(200) not null,
telefone_funcionario char(14) not null,
cpf_funcionario char(11) not null unique,
comissao_funcionario float not null,
cargo_funcionario varchar(200) not null
);

create table compras(
id_compra serial primary key,
id_modelo integer,
id_cliente integer,
id_funcionario integer,
foreign key (id_modelo) references modelos(id_modelo),
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_funcionario) references funcionarios(id_funcionario),
pagamento_compra varchar(20),
status_pagamento boolean
);
