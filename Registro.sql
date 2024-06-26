USE [master]
GO
/****** Object:  Database [Registro]    Script Date: 19/4/2024 3:17:38 a. m. ******/
CREATE DATABASE [Registro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Registro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Registro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Registro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Registro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Registro] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Registro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Registro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Registro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Registro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Registro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Registro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Registro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Registro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Registro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Registro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Registro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Registro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Registro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Registro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Registro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Registro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Registro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Registro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Registro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Registro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Registro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Registro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Registro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Registro] SET RECOVERY FULL 
GO
ALTER DATABASE [Registro] SET  MULTI_USER 
GO
ALTER DATABASE [Registro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Registro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Registro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Registro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Registro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Registro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Registro', N'ON'
GO
ALTER DATABASE [Registro] SET QUERY_STORE = ON
GO
ALTER DATABASE [Registro] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Registro]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/4/2024 3:17:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Tipo_usuario] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visitas]    Script Date: 19/4/2024 3:17:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitas](
	[IdUSUARIO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[CARRERA] [varchar](50) NOT NULL,
	[CORREO] [varchar](50) NOT NULL,
	[EDIFICIO] [varchar](50) NOT NULL,
	[HORA_ENTRADA] [datetime] NOT NULL,
	[HORA_SALIDA] [datetime] NOT NULL,
	[MOTIVO] [varchar](100) NOT NULL,
	[AULA_DESTINO] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id_usuario], [Nombre], [Apellido], [Usuario], [Password], [Tipo_usuario]) VALUES (1, N'Francisco', N'Méndez', N'Cisco', N'20211103', N'Admin')
INSERT [dbo].[Usuarios] ([Id_usuario], [Nombre], [Apellido], [Usuario], [Password], [Tipo_usuario]) VALUES (2, N'Moises', N'Perez', N'Moi', N'1234', N'Invitado')
INSERT [dbo].[Usuarios] ([Id_usuario], [Nombre], [Apellido], [Usuario], [Password], [Tipo_usuario]) VALUES (3, N'Lukas', N'Bronx', N'Bronki', N'1212', N'Invitado')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Visitas] ON 

INSERT [dbo].[Visitas] ([IdUSUARIO], [NOMBRE], [CARRERA], [CORREO], [EDIFICIO], [HORA_ENTRADA], [HORA_SALIDA], [MOTIVO], [AULA_DESTINO]) VALUES (6, N'Francis Melendez', N'CiberSeguridad', N'Fran345@gmail.com', N'EDIFICIO 2', CAST(N'2024-04-18T19:23:07.000' AS DateTime), CAST(N'2024-04-18T20:00:00.000' AS DateTime), N'Comprar libros de Ingles', N'B2')
INSERT [dbo].[Visitas] ([IdUSUARIO], [NOMBRE], [CARRERA], [CORREO], [EDIFICIO], [HORA_ENTRADA], [HORA_SALIDA], [MOTIVO], [AULA_DESTINO]) VALUES (7, N'Pedro', N'Derecho', N'pedro@example.com', N'EDIFICIO 1', CAST(N'2024-04-18T10:45:00.000' AS DateTime), CAST(N'2024-04-18T13:30:00.000' AS DateTime), N'Clase', N'A1')
INSERT [dbo].[Visitas] ([IdUSUARIO], [NOMBRE], [CARRERA], [CORREO], [EDIFICIO], [HORA_ENTRADA], [HORA_SALIDA], [MOTIVO], [AULA_DESTINO]) VALUES (8, N'Juan', N'Ingeniería', N'juan@example.com', N'Edificio 3', CAST(N'2024-04-18T08:00:00.000' AS DateTime), CAST(N'2024-04-18T12:00:00.000' AS DateTime), N'Reunión', N'A2')
SET IDENTITY_INSERT [dbo].[Visitas] OFF
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ('Invitado') FOR [Tipo_usuario]
GO
/****** Object:  StoredProcedure [dbo].[Accederlogin]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Accederlogin]
@Usuario varchar(50),
@Password varchar(50)
As
Insert into Usuarios(Usuario,Password) values(@Usuario,@Password);
GO
/****** Object:  StoredProcedure [dbo].[BuscarVisitas]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BuscarVisitas]
@var varchar(50)
As
begin
Select IdUSUARIO,NOMBRE,CARRERA,CORREO,EDIFICIO,HORA_ENTRADA,HORA_SALIDA,MOTIVO,AULA_DESTINO From Visitas
Where NOMBRE like '%'+@var+'%' 
Or CARRERA like '%'+@var+'%'
Or CORREO like '%'+@var+'%'
Or EDIFICIO like '%'+@var+'%'
Or HORA_ENTRADA like '%'+@var+'%'
Or HORA_SALIDA like '%'+@var+'%'
Or MOTIVO like '%'+@var+'%'
Or AULA_DESTINO like '%'+@var+'%';
end

GO
/****** Object:  StoredProcedure [dbo].[ConsultaEdificio]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ConsultaEdificio]

@valor varchar(50)
as
Select EDIFICIO  From Visitas
where EDIFICIO like '%' + @valor + '%'
GO
/****** Object:  StoredProcedure [dbo].[EditarVisitas]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditarVisitas]

@IdUSUARIO Int,
@NOMBRE varchar(50),
@CARRERA varchar(50),
@CORREO varchar(50),
@EDIFICIO varchar(50),
@HORA_ENTRADA datetime,
@HORA_SALIDA datetime,
@MOTIVO varchar(100),
@AULA_DESTINO varchar(100)
As
UPDATE Visitas SET NOMBRE=@NOMBRE, CARRERA=@CARRERA, CORREO=@CORREO, EDIFICIO=@EDIFICIO, HORA_ENTRADA=@HORA_ENTRADA, HORA_SALIDA=@HORA_SALIDA, 
MOTIVO=@MOTIVO, AULA_DESTINO=@AULA_DESTINO
Where IdUSUARIO=@IdUSUARIO;
GO
/****** Object:  StoredProcedure [dbo].[EliminarVisitas]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[EliminarVisitas]

@IdUSUARIO int
As
Delete From Visitas Where IdUSUARIO = @IdUSUARIO
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuarios]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertarUsuarios]
@Nombre varchar(50),
@Apellido varchar(50),
@Usuario varchar(50),
@Password varchar(50)
As
Insert into Usuarios(Nombre,Apellido,Usuario,Password) values(@Nombre,@Apellido,@Usuario,@Password);

GO
/****** Object:  StoredProcedure [dbo].[InsertarVisitas]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[InsertarVisitas]

@NOMBRE varchar(50),
@CARRERA varchar(50),
@CORREO varchar(50),
@EDIFICIO varchar(50),
@HORA_ENTRADA datetime,
@HORA_SALIDA datetime,
@MOTIVO varchar(100),
@AULA_DESTINO varchar(100)
As
Insert into Visitas(NOMBRE,CARRERA,CORREO,EDIFICIO,HORA_ENTRADA,HORA_SALIDA,MOTIVO,AULA_DESTINO) 
values(@NOMBRE,@CARRERA,@CORREO,@EDIFICIO, @HORA_ENTRADA, @HORA_SALIDA,@MOTIVO, @AULA_DESTINO);

GO
/****** Object:  StoredProcedure [dbo].[ListarVisitas]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ListarVisitas]
As
Select*FROM Visitas
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 19/4/2024 3:17:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Login]
    @Usuario varchar(50),
    @Password varchar(50)
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT Nombre, Tipo_usuario
    FROM Usuarios
    WHERE Usuario = @Usuario AND Password = @Password;
END
GO
USE [master]
GO
ALTER DATABASE [Registro] SET  READ_WRITE 
GO
