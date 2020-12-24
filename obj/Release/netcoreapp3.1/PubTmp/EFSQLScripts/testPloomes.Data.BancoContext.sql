IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201224204627_inicial')
BEGIN
    CREATE TABLE [Produto] (
        [ProdutoID] int NOT NULL IDENTITY,
        [Nome] nvarchar(max) NULL,
        [Preco] float NOT NULL,
        CONSTRAINT [PK_Produto] PRIMARY KEY ([ProdutoID])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201224204627_inicial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201224204627_inicial', N'3.1.10');
END;

GO

