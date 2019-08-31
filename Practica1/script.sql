USE [Practica1_RodBot]
GO
/****** Object:  Table [dbo].[Pokemon]    Script Date: 08/31/2019 13:01:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pokemon]') AND type in (N'U'))
DROP TABLE [dbo].[Pokemon]
GO
/****** Object:  Table [dbo].[Pokemon]    Script Date: 08/31/2019 13:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pokemon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pokemon](
	[Pokemon Master] [nchar](10) NULL
) ON [PRIMARY]
END
GO
