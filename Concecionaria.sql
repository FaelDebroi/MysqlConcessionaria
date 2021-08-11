create database carros;

--- comentarios

use carros;
create table marca(
CODIGO int primary key,
NOME text
);

create table proprietario( 
cpf varchar(14)primary key,
Nome Text,
DataNascimento DATE
);

create table vaiculos( 
-- Variavel 
placa varchar(8),
ano int,
valor decimal (9,2),
nome text, 
marca_codigo int,
proprietario_cpf varchar(14),


constraint chave_marca
-- restrição/

foreign key(Marca_codigo)
-- chave estrangeira/

references Marca(Codigos),
-- referências/

constraint chave_proprietario 
-- restrição/

foreign key(proprietario_cpf)
-- chave estrangeira

references proprietario(CPF)
-- referências / 
);

insert into marcas values
(1,'Fiat'),(2,'ford'),(3,'volkswagen'),(2,'Gm');
-- adiciona os valores 

select * from Marca;