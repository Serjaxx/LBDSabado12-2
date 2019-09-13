USE [LBD]
GO
/****** Object:  Index [INDX_Cliente_Viaje]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP INDEX IF EXISTS [INDX_Cliente_Viaje] ON [dbo].[tabla2]
GO
/****** Object:  Table [dbo].[tabla5]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP TABLE IF EXISTS [dbo].[tabla5]
GO
/****** Object:  Table [dbo].[tabla4]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP TABLE IF EXISTS [dbo].[tabla4]
GO
/****** Object:  Table [dbo].[tabla3]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP TABLE IF EXISTS [dbo].[tabla3]
GO
/****** Object:  Table [dbo].[tabla2]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP TABLE IF EXISTS [dbo].[tabla2]
GO
/****** Object:  Table [dbo].[tabla]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP TABLE IF EXISTS [dbo].[tabla]
GO
USE [master]
GO
/****** Object:  Database [LBD]    Script Date: 13/09/2019 12:47:34 a. m. ******/
DROP DATABASE IF EXISTS [LBD]
GO
/****** Object:  Database [LBD]    Script Date: 13/09/2019 12:47:34 a. m. ******/
CREATE DATABASE [LBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD] SET  MULTI_USER 
GO
ALTER DATABASE [LBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LBD] SET QUERY_STORE = OFF
GO
USE [LBD]
GO
/****** Object:  Table [dbo].[tabla]    Script Date: 13/09/2019 12:47:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla](
	[NumCliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla2]    Script Date: 13/09/2019 12:47:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla2](
	[Ubicacion] [varchar](50) NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Viaje]  AS (([Ubicacion]+' ')+[Destino]),
PRIMARY KEY CLUSTERED 
(
	[Ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla3]    Script Date: 13/09/2019 12:47:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla3](
	[Ida] [date] NOT NULL,
	[Vuelta] [date] NOT NULL,
	[DiasViaje] [int] NOT NULL,
	[Tiempo]  AS (dateadd(day,[DiasViaje],[Ida]))
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla4]    Script Date: 13/09/2019 12:47:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla4](
	[Servicio] [varchar](50) NOT NULL,
	[Premium] [varchar](10) NOT NULL,
	[Ordinario] [varchar](10) NULL,
	[TipoServicio]  AS (([Premium]+' ')+[Ordinario]),
PRIMARY KEY CLUSTERED 
(
	[Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla5]    Script Date: 13/09/2019 12:47:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla5](
	[vendedor_id] [int] NOT NULL,
	[V_Nombre] [varchar](50) NOT NULL,
	[V_Telefono] [tinyint] NOT NULL,
	[V_Domicilio] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vendedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Cliente_Viaje]    Script Date: 13/09/2019 12:47:35 a. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_Viaje] ON [dbo].[tabla2]
(
	[Viaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LBD] SET  READ_WRITE 
GO
