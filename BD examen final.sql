USE [master]
GO
/****** Object:  Database [Publicacion]    Script Date: 8/1/2020 9:00:17 PM ******/
CREATE DATABASE [Publicacion]
 
USE [Publicacion]
GO
/****** Object:  Table [dbo].[publicacion]    Script Date: 8/1/2020 9:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publicacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IDU] [int] NULL,
	[titulo] [varchar](50) NULL,
	[contenido] [varchar](100) NULL,
	[fecha] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 8/1/2020 9:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[Apellido] [varchar](30) NULL,
	[foto] [varchar](max) NULL,
	[correo] [varchar](30) NULL,
	[usuario] [varchar](30) NULL,
	[contraseña] [varchar](30) NULL,
	[Ccontra] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD FOREIGN KEY([IDU])
REFERENCES [dbo].[Registro] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[Editar]    Script Date: 8/1/2020 9:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Editar] 
@Id int ,
@titulo varchar (30),
@contenido varchar (30)
as
update publicacion set titulo=@titulo, contenido=@contenido
where Id =@Id
GO
/****** Object:  StoredProcedure [dbo].[Eliminar]    Script Date: 8/1/2020 9:00:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Eliminar]
@id int 
as
delete from  publicacion where Id=@id
GO
USE [master]
GO
ALTER DATABASE [Publicacion] SET  READ_WRITE 
GO
