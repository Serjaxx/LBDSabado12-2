USE [Proyecto]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[ventas]
GO
/****** Object:  Table [dbo].[vendedores]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[vendedores]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[terminal]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[reservas]
GO
/****** Object:  Table [dbo].[puntodeventa]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[puntodeventa]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[pasajeros]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[direccion]
GO
/****** Object:  Table [dbo].[corridas]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[corridas]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[conductores]
GO
/****** Object:  Table [dbo].[autobuses]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[autobuses]
GO
/****** Object:  Table [dbo].[asientos]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP TABLE IF EXISTS [dbo].[asientos]
GO
USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 04/10/2019 11:29:29 p. m. ******/
DROP DATABASE IF EXISTS [Proyecto]
GO
/****** Object:  Database [Proyecto]    Script Date: 04/10/2019 11:29:29 p. m. ******/
CREATE DATABASE [Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Proyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Proyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Proyecto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto] SET QUERY_STORE = OFF
GO
USE [Proyecto]
GO
/****** Object:  Table [dbo].[asientos]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asientos](
	[asientos_id] [int] NOT NULL,
	[asientos_numero] [int] NOT NULL,
	[asientos_estado] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[asientos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[autobuses]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autobuses](
	[autobuses_id] [int] NOT NULL,
	[autobuses_numero] [int] NOT NULL,
	[autobuses_placa] [varchar](max) NOT NULL,
	[autobuses_capacidad] [int] NOT NULL,
	[autobuses_estado] [varchar](max) NOT NULL,
	[autobuses_tipo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[autobuses_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conductores](
	[conductor_id] [int] NOT NULL,
	[conductor_nombre] [varchar](60) NOT NULL,
	[conductor_clave_licencia] [tinyint] NOT NULL,
	[conductor_direccion] [varchar](60) NOT NULL,
	[conductor_horaSalida] [time](7) NULL,
	[conductor_horaLlegada] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[conductor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corridas]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corridas](
	[corrida_id] [int] NOT NULL,
	[terminal_origen] [varchar](50) NOT NULL,
	[terminal_destino] [varchar](50) NOT NULL,
	[corrida_horaSalida] [time](7) NOT NULL,
	[corrida_horaLlegada] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[corrida_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[calle] [varchar](50) NOT NULL,
	[numero_calle] [int] NOT NULL,
	[colonia_id] [int] NOT NULL,
	[municipio] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[pais_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pasajeros](
	[pasajeros_id] [int] NOT NULL,
	[pasajero_nombre] [varchar](max) NOT NULL,
	[pasajero_identificacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pasajeros_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puntodeventa]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puntodeventa](
	[costo_id] [int] NOT NULL,
	[iva] [int] NULL,
	[costo_fechaReg] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[costo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservas](
	[reserva_id] [int] NOT NULL,
	[reserva_fecha_hora_registro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reserva_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terminal](
	[terminal_id] [int] NOT NULL,
	[terminal_nombre] [varchar](max) NULL,
	[municipio] [char](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[terminal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendedores]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendedores](
	[vendedor_id] [int] NOT NULL,
	[terminal] [varchar](50) NOT NULL,
	[vendedor_nombre] [varchar](60) NOT NULL,
	[vendedor_telefono] [tinyint] NULL,
	[vendedor_domicilio] [varchar](60) NULL,
	[vendedor_fecha_reg] [date] NULL,
	[vendedor_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vendedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 04/10/2019 11:29:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[venta_id] [int] NOT NULL,
	[forma_pago] [varchar](20) NOT NULL,
	[venta_fecha] [date] NULL,
	[costo] [int] NOT NULL,
	[descuento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
