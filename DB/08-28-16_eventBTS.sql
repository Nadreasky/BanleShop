USE [BanleShop]
GO
/****** Object:  Table [dbo].[EventBackToSchool_Color]    Script Date: 08/29/2016 00:13:27 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Order]    Script Date: 08/29/2016 00:13:27 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_ShirtType]    Script Date: 08/29/2016 00:13:27 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Size]    Script Date: 08/29/2016 00:13:27 ******/
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
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Color] OFF
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Order] ON 

INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (1, 1, N'#000000', N'S', N'/PatternImages/128-8-2016-22-20-12-632.jpg', 4, N'huynh quy', N'maghg@ghg.com', N'888888888', N'555555555', NULL, NULL)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (2, 1, N'#ffffff', N'S', N'/PatternImages/128-8-2016-23-1-56-959.jpg', 2, N'huynh quy', N'mail@mail.com', N'666666666', N'', NULL, NULL)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (3, 1, N'#ffffff', N'XS', N'/PatternImages/128-8-2016-23-5-19-575.jpg', 2, N'huynh quy123', N'mail@mail.com', N'666666666', N'', NULL, NULL)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address]) VALUES (4, 1, N'#ffffff', N'XS', N'/PatternImages/129-8-2016-0-4-4-467.jpg', 6, N'fffff', N'mail@mail.com', N'6666666666', N'', CAST(0x0000A67100011E8E AS DateTime), N'55555555/451 hob wef')
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
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Size] OFF
