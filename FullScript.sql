/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [Charader]
GO
/****** Object:  Table [dbo].[Adjektiv]    Script Date: 2017-09-15 15:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adjektiv](
	[Id] [uniqueidentifier] NOT NULL,
	[Word] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Adjektiv] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdjektivTheme]    Script Date: 2017-09-15 15:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdjektivTheme](
	[AdjektivId] [uniqueidentifier] NOT NULL,
	[ThemeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AdjektivTheme] PRIMARY KEY CLUSTERED 
(
	[AdjektivId] ASC,
	[ThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Substantiv]    Script Date: 2017-09-15 15:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Substantiv](
	[Id] [uniqueidentifier] NOT NULL,
	[Word] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Substantiv] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubstantivTheme]    Script Date: 2017-09-15 15:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubstantivTheme](
	[SubstantivId] [uniqueidentifier] NOT NULL,
	[ThemeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SubstantivTheme] PRIMARY KEY CLUSTERED 
(
	[SubstantivId] ASC,
	[ThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 2017-09-15 15:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[Id] [uniqueidentifier] NOT NULL,
	[ThemeWord] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'3986f645-1d76-481e-b70c-a7ef00c8deda', N'Krullig')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'37a3e31f-aba4-4108-938f-a7ef00ccb46b', N'Galen')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'fac7ebed-86af-4894-9151-a7ef00ccdf9c', N'Gul')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'f723e7e3-bd84-4911-9d8f-a7ef00ccf438', N'Fin')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'09e3ebc7-31ed-4b92-89c7-a7ef00cd0419', N'Söt')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'4835b2ef-9c18-4fce-9940-a7ef00cd1fa0', N'Knäpp')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'fecc70e9-a70d-402a-9b02-a7ef00cd32b2', N'Krullig')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'8a25ed84-3e10-4ba4-adda-a7ef00cd6f11', N'Mysig')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'edec07dd-0c5e-4d8f-a351-a7ef00cdce74', N'Tyst')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'570bdcbd-526a-46c9-8870-a7ef00cdeb4f', N'Finurlig')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'8c978faa-93cc-45b9-915a-a7ef00ce0451', N'Ljus')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'50d7cb74-33f2-436a-a7dd-a7ef00ce29e7', N'Tjock')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'd9b16d0c-34a2-41dc-9b16-a7ef00ce40cb', N'Fyrkantig')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'10689296-fad9-4125-b531-a7ef00ce55c4', N'Sur')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'b6f5216d-baa4-4e3c-a86b-a7ef00ce6f8e', N'Rak')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'dead3d14-402a-4d07-9083-a7ef00ce8820', N'Kall')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'1dfec1b7-ea31-49d3-a60b-a7ef00cec8ac', N'Hopplös')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'8f2264b3-e324-4db7-be13-a7ef00ceedbb', N'Trumpen')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'ed790c3c-c4fd-45c1-a67c-a7ef00cefd90', N'Kortväxt')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'66397eb9-74af-4678-8a94-a7ef00cf104a', N'Lysande')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'd5148d79-26dc-49cf-8d49-a7ef00cf1d28', N'Snål')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'9e2d02d9-e54a-4b25-beaa-a7ef00cf2aaa', N'Glad')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'ff45d80d-788b-49ca-a780-a7ef00cf3e14', N'Illaluktande')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'86e725ae-461f-41d4-afae-a7ef00cf5014', N'Hemlös')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'0e353247-b8a2-48c3-a5bd-a7ef00cf7304', N'Borttappad')
INSERT [dbo].[Adjektiv] ([Id], [Word]) VALUES (N'40f98144-3f36-44e2-8247-a7ef00cf9fe3', N'Astung')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'3986f645-1d76-481e-b70c-a7ef00c8deda', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'37a3e31f-aba4-4108-938f-a7ef00ccb46b', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'37a3e31f-aba4-4108-938f-a7ef00ccb46b', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'37a3e31f-aba4-4108-938f-a7ef00ccb46b', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'fac7ebed-86af-4894-9151-a7ef00ccdf9c', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'fac7ebed-86af-4894-9151-a7ef00ccdf9c', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'f723e7e3-bd84-4911-9d8f-a7ef00ccf438', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'f723e7e3-bd84-4911-9d8f-a7ef00ccf438', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'09e3ebc7-31ed-4b92-89c7-a7ef00cd0419', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'4835b2ef-9c18-4fce-9940-a7ef00cd1fa0', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'4835b2ef-9c18-4fce-9940-a7ef00cd1fa0', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'4835b2ef-9c18-4fce-9940-a7ef00cd1fa0', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'fecc70e9-a70d-402a-9b02-a7ef00cd32b2', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'8a25ed84-3e10-4ba4-adda-a7ef00cd6f11', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'8a25ed84-3e10-4ba4-adda-a7ef00cd6f11', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'edec07dd-0c5e-4d8f-a351-a7ef00cdce74', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'edec07dd-0c5e-4d8f-a351-a7ef00cdce74', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'570bdcbd-526a-46c9-8870-a7ef00cdeb4f', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'570bdcbd-526a-46c9-8870-a7ef00cdeb4f', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'8c978faa-93cc-45b9-915a-a7ef00ce0451', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'50d7cb74-33f2-436a-a7dd-a7ef00ce29e7', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'50d7cb74-33f2-436a-a7dd-a7ef00ce29e7', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'd9b16d0c-34a2-41dc-9b16-a7ef00ce40cb', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'10689296-fad9-4125-b531-a7ef00ce55c4', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'10689296-fad9-4125-b531-a7ef00ce55c4', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'b6f5216d-baa4-4e3c-a86b-a7ef00ce6f8e', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'b6f5216d-baa4-4e3c-a86b-a7ef00ce6f8e', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'dead3d14-402a-4d07-9083-a7ef00ce8820', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'dead3d14-402a-4d07-9083-a7ef00ce8820', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'dead3d14-402a-4d07-9083-a7ef00ce8820', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'1dfec1b7-ea31-49d3-a60b-a7ef00cec8ac', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'8f2264b3-e324-4db7-be13-a7ef00ceedbb', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'8f2264b3-e324-4db7-be13-a7ef00ceedbb', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'ed790c3c-c4fd-45c1-a67c-a7ef00cefd90', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'ed790c3c-c4fd-45c1-a67c-a7ef00cefd90', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'66397eb9-74af-4678-8a94-a7ef00cf104a', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'66397eb9-74af-4678-8a94-a7ef00cf104a', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'd5148d79-26dc-49cf-8d49-a7ef00cf1d28', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'd5148d79-26dc-49cf-8d49-a7ef00cf1d28', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'9e2d02d9-e54a-4b25-beaa-a7ef00cf2aaa', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'9e2d02d9-e54a-4b25-beaa-a7ef00cf2aaa', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'ff45d80d-788b-49ca-a780-a7ef00cf3e14', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'ff45d80d-788b-49ca-a780-a7ef00cf3e14', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'86e725ae-461f-41d4-afae-a7ef00cf5014', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'0e353247-b8a2-48c3-a5bd-a7ef00cf7304', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'0e353247-b8a2-48c3-a5bd-a7ef00cf7304', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'40f98144-3f36-44e2-8247-a7ef00cf9fe3', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'40f98144-3f36-44e2-8247-a7ef00cf9fe3', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[AdjektivTheme] ([AdjektivId], [ThemeId]) VALUES (N'40f98144-3f36-44e2-8247-a7ef00cf9fe3', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'55ddd652-b07a-490d-867f-a7ef00c8dedd', N'Hopprep')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'32729d15-6952-4ad6-83c1-a7ef00cfc634', N'Banan')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'58d6c49a-c005-46ec-840e-a7ef00cfd8de', N'Diskborste')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'49feeccc-0138-4949-a5e2-a7ef00d02764', N'Dammsugare')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'1d526b53-80b7-46b8-83fc-a7ef00d06f95', N'Daim')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'393d1720-321a-49b3-b4c8-a7ef00d08363', N'Grävmaskin')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'f5c1b9e7-6719-41c0-97c4-a7ef00d09242', N'Flaggstång')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'ea170845-8c8b-462e-a661-a7ef00d09dfc', N'Sol')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'ca002390-2b8f-458e-9c14-a7ef00d0b002', N'Bil')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'2029d1f4-cfc8-48c6-a710-a7ef00d0c027', N'Oxfile')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'81d17edc-67ef-433b-8e07-a7ef00d0de57', N'Prutt')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'959c7b68-745c-4b40-b0ec-a7ef00d107cb', N'Soffa')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'e0fb2016-c226-468f-83e5-a7ef00d11705', N'Telefon')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'9cac7ea3-f0a4-4afe-b915-a7ef00d12897', N'Bensinstation')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'8eb1d4b8-d1f5-4863-9c69-a7ef00d15321', N'Tidning')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'30e63bfa-d4ae-4d5a-b16d-a7ef00d16afe', N'Lasagne')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'4c74ca47-2b76-4e11-8030-a7ef00d17cdb', N'Sko')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'e8338f7a-ae8b-4880-a91a-a7ef00d188a2', N'Måttband')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'a1faf5cf-84ad-494c-a683-a7ef00d19514', N'Tand')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'3e04bbec-ad24-463e-8548-a7ef00d1a758', N'Glasögon')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'9efe4208-6289-4447-8d2a-a7ef00d20818', N'Stockholmare')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'3128af8e-5d8f-4fad-8d02-a7ef00d21bd0', N'Göteborgare')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'064e7a41-b0cb-43b6-942f-a7ef00d22d48', N'Brandstege')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'8b9ed89e-b0d4-4c28-8ae7-a7ef00d24162', N'Cykelställ')
INSERT [dbo].[Substantiv] ([Id], [Word]) VALUES (N'5103faf4-88a8-4bff-b462-a7ef00d256fe', N'Hatt')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'32729d15-6952-4ad6-83c1-a7ef00cfc634', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'32729d15-6952-4ad6-83c1-a7ef00cfc634', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'32729d15-6952-4ad6-83c1-a7ef00cfc634', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'58d6c49a-c005-46ec-840e-a7ef00cfd8de', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'58d6c49a-c005-46ec-840e-a7ef00cfd8de', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'58d6c49a-c005-46ec-840e-a7ef00cfd8de', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'49feeccc-0138-4949-a5e2-a7ef00d02764', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'49feeccc-0138-4949-a5e2-a7ef00d02764', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'1d526b53-80b7-46b8-83fc-a7ef00d06f95', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'1d526b53-80b7-46b8-83fc-a7ef00d06f95', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'393d1720-321a-49b3-b4c8-a7ef00d08363', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'393d1720-321a-49b3-b4c8-a7ef00d08363', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'393d1720-321a-49b3-b4c8-a7ef00d08363', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'f5c1b9e7-6719-41c0-97c4-a7ef00d09242', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'ea170845-8c8b-462e-a661-a7ef00d09dfc', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'ca002390-2b8f-458e-9c14-a7ef00d0b002', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'ca002390-2b8f-458e-9c14-a7ef00d0b002', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'ca002390-2b8f-458e-9c14-a7ef00d0b002', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'2029d1f4-cfc8-48c6-a710-a7ef00d0c027', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'81d17edc-67ef-433b-8e07-a7ef00d0de57', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'959c7b68-745c-4b40-b0ec-a7ef00d107cb', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'e0fb2016-c226-468f-83e5-a7ef00d11705', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'e0fb2016-c226-468f-83e5-a7ef00d11705', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'9cac7ea3-f0a4-4afe-b915-a7ef00d12897', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'9cac7ea3-f0a4-4afe-b915-a7ef00d12897', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'8eb1d4b8-d1f5-4863-9c69-a7ef00d15321', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'30e63bfa-d4ae-4d5a-b16d-a7ef00d16afe', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'30e63bfa-d4ae-4d5a-b16d-a7ef00d16afe', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'4c74ca47-2b76-4e11-8030-a7ef00d17cdb', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'e8338f7a-ae8b-4880-a91a-a7ef00d188a2', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'a1faf5cf-84ad-494c-a683-a7ef00d19514', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'a1faf5cf-84ad-494c-a683-a7ef00d19514', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'3e04bbec-ad24-463e-8548-a7ef00d1a758', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'3e04bbec-ad24-463e-8548-a7ef00d1a758', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'3e04bbec-ad24-463e-8548-a7ef00d1a758', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'3e04bbec-ad24-463e-8548-a7ef00d1a758', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'9efe4208-6289-4447-8d2a-a7ef00d20818', N'1796136f-83a4-419e-9249-a7ef00cb8604')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'9efe4208-6289-4447-8d2a-a7ef00d20818', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'3128af8e-5d8f-4fad-8d02-a7ef00d21bd0', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'3128af8e-5d8f-4fad-8d02-a7ef00d21bd0', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'064e7a41-b0cb-43b6-942f-a7ef00d22d48', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'064e7a41-b0cb-43b6-942f-a7ef00d22d48', N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'064e7a41-b0cb-43b6-942f-a7ef00d22d48', N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'8b9ed89e-b0d4-4c28-8ae7-a7ef00d24162', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'8b9ed89e-b0d4-4c28-8ae7-a7ef00d24162', N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'8b9ed89e-b0d4-4c28-8ae7-a7ef00d24162', N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06')
INSERT [dbo].[SubstantivTheme] ([SubstantivId], [ThemeId]) VALUES (N'5103faf4-88a8-4bff-b462-a7ef00d256fe', N'27f6b2e6-7809-4127-b322-a7ef00c8dee9')
INSERT [dbo].[Theme] ([Id], [ThemeWord]) VALUES (N'8f83ac84-5c87-4cb6-9a12-a7ef00c8deea', N'Barn')
INSERT [dbo].[Theme] ([Id], [ThemeWord]) VALUES (N'a80ef09c-36cd-4ff1-9918-a7ef00cbb06d', N'Jobb')
INSERT [dbo].[Theme] ([Id], [ThemeWord]) VALUES (N'1796136f-83a4-419e-9249-a7ef00cb8604', N'Kväll')
INSERT [dbo].[Theme] ([Id], [ThemeWord]) VALUES (N'd2a2beb3-c4b2-48d8-ae3a-a7ef00cb7b06', N'Sommar')
INSERT [dbo].[Theme] ([Id], [ThemeWord]) VALUES (N'2b226dc7-fc84-42ba-ad74-a7ef00cba7f1', N'Verktyg')
INSERT [dbo].[Theme] ([Id], [ThemeWord]) VALUES (N'27f6b2e6-7809-4127-b322-a7ef00c8dee9', N'Vuxen')
ALTER TABLE [dbo].[AdjektivTheme]  WITH CHECK ADD  CONSTRAINT [FK_AdjektivTheme_Adjektiv] FOREIGN KEY([AdjektivId])
REFERENCES [dbo].[Adjektiv] ([Id])
GO
ALTER TABLE [dbo].[AdjektivTheme] CHECK CONSTRAINT [FK_AdjektivTheme_Adjektiv]
GO
ALTER TABLE [dbo].[AdjektivTheme]  WITH CHECK ADD  CONSTRAINT [FK_AdjektivTheme_Theme] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([Id])
GO
ALTER TABLE [dbo].[AdjektivTheme] CHECK CONSTRAINT [FK_AdjektivTheme_Theme]
GO
ALTER TABLE [dbo].[SubstantivTheme]  WITH CHECK ADD  CONSTRAINT [FK_SubstantivTheme_Substantiv] FOREIGN KEY([SubstantivId])
REFERENCES [dbo].[Substantiv] ([Id])
GO
ALTER TABLE [dbo].[SubstantivTheme] CHECK CONSTRAINT [FK_SubstantivTheme_Substantiv]
GO
ALTER TABLE [dbo].[SubstantivTheme]  WITH CHECK ADD  CONSTRAINT [FK_SubstantivTheme_Theme] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([Id])
GO
ALTER TABLE [dbo].[SubstantivTheme] CHECK CONSTRAINT [FK_SubstantivTheme_Theme]
GO
