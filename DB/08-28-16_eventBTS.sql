USE [BanleShop]
GO
/****** Object:  Table [dbo].[EventBackToSchool_Color]    Script Date: 08/29/2016 14:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBackToSchool_Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorId] [int] NOT NULL,
	[ShirtTypeId] [int] NOT NULL,
 CONSTRAINT [PK_EventBackToSchool_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventBackToSchool_Order]    Script Date: 08/29/2016 14:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBackToSchool_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShirtTypeId] [int] NOT NULL,
	[ColorId] [nvarchar](50) NOT NULL,
	[SizeId] [nvarchar](50) NOT NULL,
	[LinkImage] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_EventBackToSchool_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventBackToSchool_ShirtType]    Script Date: 08/29/2016 14:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBackToSchool_ShirtType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EventBackToSchool_ShirtType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventBackToSchool_Size]    Script Date: 08/29/2016 14:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBackToSchool_Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeId] [int] NOT NULL,
	[ShirtTypeId] [int] NULL,
 CONSTRAINT [PK_EventBackToSchool_Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Color] ON 

INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (1, 1, 1)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (3, 2, 1)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (4, 3, 1)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (5, 1, 2)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (6, 2, 2)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (7, 3, 2)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (8, 1, 3)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (9, 2, 3)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (10, 3, 3)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (11, 1, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (12, 2, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (13, 3, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (14, 7, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (15, 8, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (16, 30, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (17, 17, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (18, 18, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (19, 19, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (20, 11, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (21, 12, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (22, 13, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (23, 23, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (24, 6, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (25, 15, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (26, 21, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (27, 5, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (28, 24, 4)
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Color] OFF
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Order] ON 

INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (1, 1, N'#000000', N'S', N'/PatternImages/128-8-2016-22-20-12-632.jpg', 4, N'huynh quy', N'maghg@ghg.com', N'888888888', N'555555555', NULL, NULL)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (2, 1, N'#ffffff', N'S', N'/PatternImages/128-8-2016-23-1-56-959.jpg', 2, N'huynh quy', N'mail@mail.com', N'666666666', N'', NULL, NULL)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (3, 1, N'#ffffff', N'XS', N'/PatternImages/128-8-2016-23-5-19-575.jpg', 2, N'huynh quy123', N'mail@mail.com', N'666666666', N'', NULL, NULL)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (4, 1, N'#ffffff', N'XS', N'/PatternImages/129-8-2016-0-4-4-467.jpg', 6, N'fffff', N'mail@mail.com', N'6666666666', N'', CAST(0x0000A67100011E8E AS DateTime), N'55555555/451 hob wef')
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (5, 4, N'#F8fd56', N'3XL', N'/PatternImages/429-8-2016-11-9-1-823.jpg', 1, N'nadreak', N'ki@na.com', N'1234566754', N'2 cái xl 1 đông cái m', CAST(0x0000A67100B7C14C AS DateTime), N'117/8 thu duc')
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (6, 4, N'#f89047', N'M', N'/PatternImages/429-8-2016-13-43-26-133.jpg', 1, N'nad', N'mfad@mma.com', N'655555', N'mmm', CAST(0x0000A67100E229F1 AS DateTime), N'12/55 ergjeger')
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (7, 1, N'#d1d2cd', N'XS', N'/PatternImages/129-8-2016-14-9-44-764.jpg', 2, N'an', N'star.02000@gmail.com', N'01658564969', N'khong co y kiem gi', CAST(0x0000A67100E96403 AS DateTime), N'41 le van huan, tan binh')
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (8, 1, N'#d1d2cd', N'S', N'/PatternImages/129-8-2016-14-29-39-636.jpg', 2, N'mamam', N'cof@fbfbg.com', N'65555', N'ngvngng', CAST(0x0000A67100EEDC14 AS DateTime), N'41 lvh')
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Order] OFF
SET IDENTITY_INSERT [dbo].[EventBackToSchool_ShirtType] ON 

INSERT [dbo].[EventBackToSchool_ShirtType] ([Id], [Name]) VALUES (1, N'Áo khoác')
INSERT [dbo].[EventBackToSchool_ShirtType] ([Id], [Name]) VALUES (2, N'Áo thun cổ tim')
INSERT [dbo].[EventBackToSchool_ShirtType] ([Id], [Name]) VALUES (3, N'Áo thun cổ tròn')
INSERT [dbo].[EventBackToSchool_ShirtType] ([Id], [Name]) VALUES (4, N'Áo thun cổ trụ')
SET IDENTITY_INSERT [dbo].[EventBackToSchool_ShirtType] OFF
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Size] ON 

INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (1, 1, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (2, 2, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (3, 3, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (4, 4, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (5, 5, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (6, 6, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (7, 7, 1)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (8, 1, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (9, 2, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (10, 3, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (11, 4, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (12, 5, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (13, 6, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (14, 7, 2)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (15, 1, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (16, 2, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (17, 3, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (18, 4, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (19, 5, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (20, 6, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (21, 7, 3)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (22, 1, 4)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (23, 2, 4)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (24, 3, 4)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (25, 4, 4)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (26, 5, 4)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (27, 6, 4)
INSERT [dbo].[EventBackToSchool_Size] ([Id], [SizeId], [ShirtTypeId]) VALUES (28, 7, 4)
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Size] OFF
