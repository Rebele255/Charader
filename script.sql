/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [Charuder]
GO
/****** Object:  Table [dbo].[Adjektiv]    Script Date: 2017-09-12 11:05:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adjektiv](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](50) NOT NULL,
	[Theme] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Substantiv]    Script Date: 2017-09-12 11:05:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Substantiv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Word] [varchar](20) NULL,
	[Theme] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adjektiv] ON 

INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (1, N'Galen', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (2, N'Gul', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (3, N'Fin', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (4, N'Söt', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (5, N'Knäpp', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (6, N'Krullig', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (7, N'Mysig', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (8, N'Tyst', NULL)
INSERT [dbo].[Adjektiv] ([ID], [Word], [Theme]) VALUES (9, N'Finurlig', NULL)
SET IDENTITY_INSERT [dbo].[Adjektiv] OFF
SET IDENTITY_INSERT [dbo].[Substantiv] ON 

INSERT [dbo].[Substantiv] ([Id], [Word], [Theme]) VALUES (1, N'Banan', NULL)
INSERT [dbo].[Substantiv] ([Id], [Word], [Theme]) VALUES (2, N'Diskborste', NULL)
INSERT [dbo].[Substantiv] ([Id], [Word], [Theme]) VALUES (3, N'Dammsugare', NULL)
INSERT [dbo].[Substantiv] ([Id], [Word], [Theme]) VALUES (4, N'Daim', NULL)
INSERT [dbo].[Substantiv] ([Id], [Word], [Theme]) VALUES (5, N'Grävmaskin', NULL)
INSERT [dbo].[Substantiv] ([Id], [Word], [Theme]) VALUES (6, N'Flaggstång', NULL)
SET IDENTITY_INSERT [dbo].[Substantiv] OFF
