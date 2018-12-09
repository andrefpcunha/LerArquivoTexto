USE [master]
GO
CREATE DATABASE dbindigosoft
GO

CREATE LOGIN [usuario] WITH PASSWORD=N'123', DEFAULT_DATABASE=[dbindigosoft], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [usuario]
GO

USE [dbindigosoft];
GO

CREATE USER [usuario] FOR LOGIN [usuario]
GO
ALTER USER [usuario] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [usuario]
GO

------------------------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Pessoas(
[ID] [int] IDENTITY (1, 1) PRIMARY KEY NOT NULL,
[Nome] [varchar] (100) NOT NULL,
[CPF] [varchar] (11) NOT NULL,
[Telefone] [varchar] (20) NULL,
Rg [varchar] (20) NULL,
Endereco [varchar] (50) NULL,
Email [varchar] (50) NULL,
Sexo [char](1) NULL,
Cidade [varchar] (50) NULL,
Estado [char](2) NULL,
Salario [float] NULL,
Idade [int] NULL,
DataEntrada datetime NULL
)