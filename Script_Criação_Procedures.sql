

go 

create procedure SalvarProduto
(
@NomeProduto varchar(255),
@Preco decimal(18,2)
)
as
Begin 
Insert into Produto values(@NomeProduto,@Preco)
end

go 

create procedure ListarTodos
as
Begin
select * from Produto
end

GO

create procedure AtualizarProduto
(
@NomeProduto varchar(255),
@Preco decimal (18,2),
@Id int
)
as
Begin 
update  Produto set Nome = @NomeProduto, Preco = @Preco where Id = @Id
end

GO

create procedure ExcluirProduto
(
@Id int
)
as
Begin 
delete from  Produto  where Id = @Id
end

GO

create procedure ObterPorId
(
@Id int
)
as
Begin 
select * from  Produto  where Id = @Id
end

