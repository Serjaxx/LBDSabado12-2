USE [Proyecto]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[ventas]
GO
/****** Object:  Table [dbo].[vendedores]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[vendedores]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[terminal]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[reservas]
GO
/****** Object:  Table [dbo].[puntodeventa]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[puntodeventa]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[pasajeros]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[direccion]
GO
/****** Object:  Table [dbo].[corridas]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[corridas]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[conductores]
GO
/****** Object:  Table [dbo].[autobuses]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[autobuses]
GO
/****** Object:  Table [dbo].[asientos]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP TABLE IF EXISTS [dbo].[asientos]
GO
USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 10/10/2019 12:47:45 a. m. ******/
DROP DATABASE IF EXISTS [Proyecto]
GO
/****** Object:  Database [Proyecto]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[asientos]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[autobuses]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[conductores]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[corridas]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[direccion]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[pasajeros]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[puntodeventa]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[reservas]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[terminal]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
/****** Object:  Table [dbo].[vendedores]    Script Date: 10/10/2019 12:47:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendedores](
	[vendedor_id] [int] NOT NULL,
	[terminal] [varchar](50) NOT NULL,
	[vendedor_nombre] [varchar](60) NOT NULL,
	[vendedor_telefono] [int] NULL,
	[vendedor_domicilio] [varchar](60) NULL,
	[vendedor_fecha_reg] [date] NULL,
	[vendedor_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vendedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 10/10/2019 12:47:45 a. m. ******/
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
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (105, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (106, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (107, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (108, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (109, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (110, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (111, 32, N'Ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (112, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (113, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (114, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (115, 32, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (116, 32, N'disponible')
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (100, 10, N'SENDMTY', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (101, 10, N'SENDMTYA', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (102, 10, N'SENDMTYB', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (103, 10, N'SENDMTYC', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (104, 10, N'SENDMTYD', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (105, 10, N'SENDMTYE', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (106, 10, N'SENDMTYF', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (107, 10, N'SENDMTYG', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (108, 10, N'SENDMTYH', 32, N'disponible', 2)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (109, 10, N'SENDMTYI', 32, N'disponible', 2)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (110, 10, N'SENDMTYJ', 32, N'disponible', 2)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (111, 10, N'SENDMTYK', 32, N'disponible', 2)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (112, 10, N'SENDMTYM', 32, N'disponible', 2)
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (10, N'JORDI BELMONTE AVILES', 118, N'Av.Juarez 166 Colonia El Paseo', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (11, N'ANDRES COTO CASANOVAS', 119, N'Jose Morelos 845 Colonia Aramberri', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (12, N'JORGE LOPEZ LECHUGA', 120, N'Pilon Kasas 226 Colonia El Laberinto', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (13, N'JOSE FRANCISCO REINOSO CUBERO', 121, N'7 de Julio 445 Colonia Los Nogales', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (14, N'ANDRE PIERRE GIGNAC', 122, N'Av.Principal 566 Colonia Flores', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (15, N'MIGUEL ANGEL APARICIO RUBIO', 123, N'Maria Morelos 201 Colonia Casa Bella', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (16, N'SEBASTIAN CEPEDA OLIVER', 124, N'Maria Morelos 203 Colonia Casa Bella', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (17, N'HUGO MAYO CARNERO', 125, N'Gonzales Perez 119 Colonia Granjeros', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (18, N'SEBASTIAN BALLESTEROS NAVAJAS', 126, N'Epsilon 558 Colonia Santa Teresa', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (19, N'DOMINGO CARRERAS SOTELO', 127, N'Phobos 789 Colonia Cosmopolis', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (20, N'JOSE MANUEL SALVADO PICO', 128, N'Alvaro Obregon 103 Colonia Ricardo Solaris', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (21, N'PILAR ROS CARRILLO', 129, N'Av.Juarez 998 Colonia Del Valle', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (22, N'MARIA JESUS GRAS ARAMBURU', 130, N'Miguel Hidalgo 550 Colonia Independencia', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (10, N'ADRIAN GORDON GALLO', 5195789)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (11, N'ANDRES MAYA DIAZ', 5195887)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (12, N'ANDRES IGLESIAS VILLA', 5195666)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (13, N'JOSE IGNACIO MARCHANTE CUARTERO', 5195555)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (14, N'SAMUEL MATUTE GARCES', 5195111)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (15, N'TOMAS ROMANO BERMUDEZ', 5195222)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (16, N'JOSE FRANCISCO CUENCA COLLADO', 5195333)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (17, N'ANDRES CALLE CASTEJON', 5195444)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (18, N'JOSE LOIS BAQUERO', 5195777)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (19, N'DAVID BLASCO FIDALGO', 5195888)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (20, N'JUAN JOSE VIGIL GAZQUEZ', 5195999)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (21, N'VICTOR MANUEL REGALADO EZQUERRA', 5195101)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (22, N'OSCAR GARCIA TORRES', 5195110)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (23, N'ANGELES PIQUERAS GUERRA', 5195121)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (24, N'VICTORIA FALCON GEORGIEV', 5195131)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (25, N'MARIA ELENA CODINA FRANCISCO', 5195141)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (26, N'ANGELA BLANCA SALCEDO', 5195151)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (27, N'CONSUELO SARABIA VELARDE', 5195161)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (28, N'CONCEPCION ALFONSO DOMINGUEZ', 5195171)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (29, N'ANTONIA FALCO MANZANO', 5195181)
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (1, N'Terminal Aguascalientes', N'Baja California                                             ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (2, N'Baja California', N'Baja California                                             ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (3, N'Terminal Baja California Sur', N'Baja California Sur                                         ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (4, N'Terminal Campeche', N'Campeche                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (5, N'Terminal Coahuila', N'Coahuila de Zaragoza                                        ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (6, N'Terminal Colima', N'Colima                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (7, N'Terminal Chiapas', N'Chiapas                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (8, N'Terminal Chihuahua', N'Chihuahua                                                   ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (9, N'Terminal CDMX', N'Ciudad de Mexico                                            ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (10, N'Terminal Durango', N'Durango                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (11, N'Terminal Guanajuato', N'Guanajuato                                                  ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (12, N'Terminal Guerrero', N'Guerrero                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (13, N'Terminal Hidalgo', N'Hidalgo                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (14, N'Terminal Jalisco', N'Jalisco                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (15, N'Terminal Mexico', N'Mexico                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (16, N'Terminal Michoacan', N'Michoacan                                                   ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (17, N'Terminal Morelos', N'Morelos                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (18, N'Terminal Nayarit', N'Nayarit                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (19, N'Terminal Nuevo Leon', N'Nuevo Leon                                                  ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (20, N'Terminal Oaxaca', N'Oaxaca                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (21, N'Terminal Puebla', N'Puebla                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (22, N'Terminal Queretaro', N'Queretaro                                                   ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (23, N'Terminal Quintana Roo', N'Quintana Roo                                                ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (24, N'Terminal San Luis Potosi', N'San Luis Potosi                                             ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (25, N'Terminal Sinaloa', N'Sinaloa                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (26, N'Terminal Sonora', N'Sonora                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (27, N'Terminal Tabasco', N'Tabasco                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (28, N'Terminal Tamaulipas', N'Tamaulipas                                                  ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (29, N'Terminal Tlaxcala', N'Tlaxcala                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (30, N'Terminal Veracruz', N'Veracruz                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (31, N'Terminal Yucatan', N'Yucatan                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (32, N'Terminal Zacatecas', N'Zacatecas                                                   ')
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (12345, N'Terminal Aguascalientes', N'FRANCISCA BADIA VADILLO', 811789945, N'Camino Sindique 555 Col Los Rogas', CAST(N'2006-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (12346, N'Terminal Baja California', N'LORENA CHAVEZ SAURA', 811892351, N'Alameda 515 Col Los Gonzales', CAST(N'2012-11-01' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (12347, N'Terminal Baja California Sur', N'JUANA BARCO ORTS', 812648971, N'Alamos 700 Col Zapatero', CAST(N'2015-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (12348, N'Terminal Yucatan', N'FRANCISCO JAVIER ESPARZA VEGAS', 812616146, N'Paposotos 800 Col Artillero', CAST(N'2004-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (12349, N'Terminal Coahuila', N'MARTIN CARDENAS ROIG', 811982310, N'Rata Sindique 805 Col Jucasito', CAST(N'2007-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (123410, N'Terminal Colima', N'HUGO TEJERO TORMO', 811215489, N'Afganistan 809 Col Tepex', CAST(N'2009-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (123411, N'Terminal Chiapas', N'MOHAMED BARROSO MINGUEZ', 811025156, N'Rartos 455 Col Tulipanes', CAST(N'2009-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (123412, N'Terminal Chihuahua', N'JOSE ANGEL DEL REY ROSALES', 811200120, N'Prados 324 Col Santa Martha', CAST(N'2016-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (123413, N'Terminal CDMX', N'EVA MILLA FORTES', 811988456, N'Batks 210 Col La Unidad', CAST(N'2016-07-09' AS Date), 1)
INSERT [dbo].[vendedores] ([vendedor_id], [terminal], [vendedor_nombre], [vendedor_telefono], [vendedor_domicilio], [vendedor_fecha_reg], [vendedor_estado]) VALUES (123414, N'Terminal Durango', N'RAQUEL ALBERT FORNES', 811126542, N'Ursupales 454 Col Especiales', CAST(N'2014-07-09' AS Date), 1)
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
