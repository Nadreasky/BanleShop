USE [BanleShop]
GO
/****** Object:  Table [dbo].[Agency]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[ExcelPath] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Agency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PreCateID] [int] NULL,
	[isActived] [bit] NULL,
	[Rank] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ColorCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColorProductDetail]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorProductDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProID] [int] NULL,
	[ColorID] [int] NULL,
 CONSTRAINT [PK_ColorProductDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventBackToSchool_Color]    Script Date: 08/29/2016 00:12:32 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Order]    Script Date: 08/29/2016 00:12:32 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_ShirtType]    Script Date: 08/29/2016 00:12:32 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Size]    Script Date: 08/29/2016 00:12:32 ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDColor] [int] NULL,
	[Path] [nvarchar](max) NULL,
	[IDProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[ShortDes] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[MainImage] [text] NULL,
	[Popular] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[Staff] [int] NULL,
	[Address] [text] NULL,
	[Email] [text] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Color] [int] NULL,
	[Size] [int] NULL,
 CONSTRAINT [PK_ProductOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CateID] [int] NOT NULL,
	[Price] [float] NULL,
	[Descriptions] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[Img1] [nvarchar](max) NULL,
	[Img2] [nvarchar](max) NULL,
	[Img3] [nvarchar](max) NULL,
	[OldPrice] [float] NULL,
	[isActived] [bit] NULL,
	[Featured] [bit] NULL,
	[SalePercent] [float] NULL,
	[Promotion] [nvarchar](max) NULL,
	[isPromoted] [bit] NULL,
	[ExpiredDate] [datetime] NULL,
 CONSTRAINT [PK__Product__3214EC276AD7FCAE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SizeProductDetail]    Script Date: 08/29/2016 00:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeProductDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProID] [int] NULL,
	[SizeID] [int] NULL,
 CONSTRAINT [PK_SizeProductDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'563c509e-d9d3-4e46-997c-43db48b7f754', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8b25b511-7b63-4ca8-818e-fecb6d4f21e0', N'Manager')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a81bf0f-60b1-4be0-82ae-79520e25b949', N'563c509e-d9d3-4e46-997c-43db48b7f754')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'20afcd5f-d2b3-4f55-889a-1de375489c44', N'563c509e-d9d3-4e46-997c-43db48b7f754')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eafe0a58-7312-4ee4-88cd-4fc0954bb74a', N'8b25b511-7b63-4ca8-818e-fecb6d4f21e0')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0a81bf0f-60b1-4be0-82ae-79520e25b949', N'quyht@yourfashion.vn', 0, N'ACBW/3Fn7UOzgOAWZXZjn/gru2TSFxaksgwyl8ppM5/SFV975p53v9ZRF9rz0h9vAA==', N'63d08687-806b-4fb2-8b84-972c9be07478', NULL, 0, 0, NULL, 1, 0, N'quyht@yourfashion.vn')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'20afcd5f-d2b3-4f55-889a-1de375489c44', N'it@your.vn', 0, N'AKBr1LGbg9teSLAsKQLOVVnS7XjzHbpSvGtXwG/NoquSi/zNrGHheVAbyocrNnmH9A==', N'cc778000-7690-423b-b936-10db4c0951d8', NULL, 0, 0, NULL, 1, 0, N'it@your.vn')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'eafe0a58-7312-4ee4-88cd-4fc0954bb74a', N'huy@your.vn', 0, N'AAcTB2Op4BZNk6j0LiFOmwhSWBQw4dhmszfa1Em8JCvcSZ4qVE7HfHd5KEmqPTg85A==', N'6d0c5a31-c3a2-44b8-9d04-ca3b71aefcc3', NULL, 0, 0, NULL, 1, 0, N'huy@your.vn')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (63, N'Sản phẩm', -1, 1, 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (64, N'Áo thun đơn', 63, 1, 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (66, N'Áo thun cặp đôi / nhóm', 63, 1, 2)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (78, N'Tai nghe Yison', 79, 1, 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (79, N'Điện tử', 63, 1, 3)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (80, N'Tai nghe pisen', 79, 0, 2)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (1, N'Trắng', N'#ffffff')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (2, N'Đen', N'#000000')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (3, N'Xám', N'#c5c5c5
')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (4, N'Đỏ tươi', N'#fb0000
')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (5, N'Đỏ thẫm', N'#A50D2C')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (6, N'Hồng', N'#FF289E')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (7, N'Cam', N'#FF7F50')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (8, N'Vàng', N'#FFFF66')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (9, N'Xanh lá cây tươi', N'#27fd40')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (10, N'Xanh lá cây đậm', N'#6DC066')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (11, N'Xanh da trời', N'#8CBDFF')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (12, N'Xanh dương', N'#004bec')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (13, N'Xanh dương đậm', N'#022b85')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (14, N'Tím', N'#A466D3')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (15, N'Hồng phấn', N'#ff9fd4')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (16, N'Nâu', N'#b01818')
SET IDENTITY_INSERT [dbo].[Color] OFF
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
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (1, 1, N'/BigImages//Images/ProductImages/310m-white.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (2, 2, N'/BigImages//Images/ProductImages/310m.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (3, 3, N'/BigImages//Images/ProductImages/310m-gray.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (4, 4, N'/BigImages//Images/ProductImages/310m-red.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (5, 16, N'/BigImages//Images/ProductImages/310m-brown.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (6, 8, N'/BigImages//Images/ProductImages/310m-yellow.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (7, 9, N'/BigImages//Images/ProductImages/310m-green.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (8, 11, N'/BigImages//Images/ProductImages/310m-powderblue.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (9, 13, N'/BigImages//Images/ProductImages/310m-darkblue.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (10, 14, N'/BigImages//Images/ProductImages/310m-purple.jpg', 100)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (11, 1, N'/BigImages//Images/ProductImages/603m.jpg', 51)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (12, 1, N'/BigImages//Images/ProductImages/608m.jpg', 55)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (13, 1, N'/BigImages//Images/ProductImages/609 mockup.jpg', 56)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (14, 1, N'/BigImages//Images/ProductImages/606m.jpg', 53)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (15, 1, N'/BigImages//Images/ProductImages/607m.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (16, 1, N'/BigImages//Images/ProductImages/610 mockup.jpg', 57)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (18, 1, N'/BigImages//Images/ProductImages/613m.jpg', 58)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (19, 1, N'/BigImages//Images/ProductImages/616m.jpg', 59)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (20, 1, N'/BigImages//Images/ProductImages/617m.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (21, 1, N'/BigImages//Images/ProductImages/618m.jpg', 61)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (22, 1, N'/BigImages//Images/ProductImages/619m.jpg', 62)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (23, 1, N'/BigImages//Images/ProductImages/605m.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (24, 1, N'/BigImages//Images/ProductImages/601m.jpg', 64)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (25, 1, N'/BigImages//Images/ProductImages/602m.jpg', 65)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (26, 1, N'/BigImages//Images/ProductImages/101 mockup.jpg', 66)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (27, 1, N'/BigImages//Images/ProductImages/102 mockup.jpg', 67)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (28, 1, N'/BigImages//Images/ProductImages/104 mockup.jpg', 69)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (29, 1, N'/BigImages//Images/ProductImages/103 mockup.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (30, 1, N'/BigImages//Images/ProductImages/105 mockup.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (31, 1, N'/BigImages//Images/ProductImages/107 mockup.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (32, 1, N'/BigImages//Images/ProductImages/108 mockup.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (33, 1, N'/BigImages//Images/ProductImages/109 mockup.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (34, 1, N'/BigImages//Images/ProductImages/110 mockup.jpg', 74)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (35, 1, N'/BigImages//Images/ProductImages/111 mockup.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (36, 1, N'/BigImages//Images/ProductImages/112 mockup.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (37, 1, N'/BigImages//Images/ProductImages/106 mockup.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (38, 1, N'/BigImages//Images/ProductImages/201m.jpg', 78)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (39, 1, N'/BigImages//Images/ProductImages/202m.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (40, 1, N'/BigImages//Images/ProductImages/203m.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (41, 1, N'/BigImages//Images/ProductImages/204m.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (42, 1, N'/BigImages//Images/ProductImages/205m.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (43, 1, N'/BigImages//Images/ProductImages/206m.jpg', 83)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (44, 1, N'/BigImages//Images/ProductImages/209m.jpg', 84)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (45, 1, N'/BigImages//Images/ProductImages/210.m.jpg', 85)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (46, 2, N'/BigImages//Images/ProductImages/211.1m.jpg', 86)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (47, 1, N'/BigImages//Images/ProductImages/211.2m.jpg', 87)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (48, 1, N'/BigImages//Images/ProductImages/211.3m.jpg', 88)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (49, 1, N'/BigImages//Images/ProductImages/211.4m.jpg', 89)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (50, 2, N'/BigImages//Images/ProductImages/212m.jpg', 90)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (51, 2, N'/BigImages//Images/ProductImages/301m.jpg', 91)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (52, 2, N'/BigImages//Images/ProductImages/302m.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (53, 1, N'/BigImages//Images/ProductImages/303m.jpg', 93)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (54, 1, N'/BigImages//Images/ProductImages/304m.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (55, 1, N'/BigImages//Images/ProductImages/305m.jpg', 95)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (56, 1, N'/BigImages//Images/ProductImages/307m.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (57, 2, N'/BigImages//Images/ProductImages/307m.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (58, 2, N'/BigImages//Images/ProductImages/308m.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (59, 2, N'/BigImages//Images/ProductImages/309m.jpg', 98)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (60, 1, N'/BigImages//Images/ProductImages/311m-black.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (61, 2, N'/BigImages//Images/ProductImages/311m.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (62, 4, N'/BigImages//Images/ProductImages/311m-red.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (63, 1, N'/BigImages//Images/ProductImages/312m.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (64, 1, N'/BigImages//Images/ProductImages/313m.jpg', 103)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (68, 1, N'/BigImages//Images/ProductImages/405 mockup.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (69, 1, N'/BigImages//Images/ProductImages/406 mockup.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (70, 1, N'/BigImages//Images/ProductImages/407 mockup.jpg', 107)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (71, 1, N'/BigImages//Images/ProductImages/408 mockup.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (72, 1, N'/BigImages//Images/ProductImages/410 mockup.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (73, 1, N'/BigImages//Images/ProductImages/411 mockup.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (74, 2, N'/BigImages//Images/ProductImages/Untitled-1_0000_405bl.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (75, 3, N'/BigImages//Images/ProductImages/Untitled-1_0001_405gr.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (76, 5, N'/BigImages//Images/ProductImages/Untitled-1_0003_405dr.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (77, 8, N'/BigImages//Images/ProductImages/Untitled-1_0004_405y.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (78, 9, N'/BigImages//Images/ProductImages/Untitled-1_0005_405g.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (79, 10, N'/BigImages//Images/ProductImages/Untitled-1_0006_405dg.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (80, 11, N'/BigImages//Images/ProductImages/Untitled-1_0007_405b.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (81, 12, N'/BigImages//Images/ProductImages/Untitled-1_0008_405db.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (82, 14, N'/BigImages//Images/ProductImages/Untitled-1_0010_405v.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (83, 6, N'/BigImages//Images/ProductImages/Untitled-1_0009_405pp.jpg', 105)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (84, 2, N'/BigImages//Images/ProductImages/0406_0000_Layer 5.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (85, 3, N'/BigImages//Images/ProductImages/0406_0001_Layer 6.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (86, 16, N'/BigImages//Images/ProductImages/0406_0002_Layer 7.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (87, 5, N'/BigImages//Images/ProductImages/0406_0003_Layer 8.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (88, 4, N'/BigImages//Images/ProductImages/0406_0004_Layer 9.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (89, 7, N'/BigImages//Images/ProductImages/0406_0005_Layer 10.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (90, 8, N'/BigImages//Images/ProductImages/0406_0006_Layer 11.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (91, 9, N'/BigImages//Images/ProductImages/0406_0007_Layer 12.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (92, 10, N'/BigImages//Images/ProductImages/0406_0008_Layer 13.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (93, 11, N'/BigImages//Images/ProductImages/0406_0009_Layer 14.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (94, 12, N'/BigImages//Images/ProductImages/0406_0010_Layer 15.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (95, 13, N'/BigImages//Images/ProductImages/0406_0011_Layer 16.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (96, 14, N'/BigImages//Images/ProductImages/0406_0012_Layer 17.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (97, 15, N'/BigImages//Images/ProductImages/0406_0013_Layer 18.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (98, 15, N'/BigImages//Images/ProductImages/0406_0014_Layer 19.jpg', 106)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (99, 2, N'/BigImages//Images/ProductImages/Untitled-3_0000_Layer 20.jpg', 107)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (100, 3, N'/BigImages//Images/ProductImages/Untitled-3_0001_Layer 21.jpg', 107)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (101, 8, N'/BigImages//Images/ProductImages/Untitled-3_0004_Layer 24.jpg', 107)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (102, 9, N'/BigImages//Images/ProductImages/Untitled-3_0005_Layer 25.jpg', 107)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (103, 11, N'/BigImages//Images/ProductImages/Untitled-3_0006_Layer 26.jpg', 107)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (104, 15, N'/BigImages//Images/ProductImages/Untitled-3_0010_Layer 29.jpg', 107)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (105, 2, N'/BigImages//Images/ProductImages/Game_0001s_0000_Layer 37.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (106, 2, N'/BigImages//Images/ProductImages/Game_0002s_0000_Layer 31.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (107, 3, N'/BigImages//Images/ProductImages/Game_0002s_0001_Layer 32.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (108, 8, N'/BigImages//Images/ProductImages/Game_0002s_0002_Layer 33.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (109, 9, N'/BigImages//Images/ProductImages/Game_0002s_0003_Layer 34.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (110, 11, N'/BigImages//Images/ProductImages/Game_0002s_0004_Layer 35.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (111, 13, N'/BigImages//Images/ProductImages/Game_0002s_0005_Layer 36.jpg', 108)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (112, 3, N'/BigImages//Images/ProductImages/Game_0001s_0001_Layer 38.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (113, 16, N'/BigImages//Images/ProductImages/Game_0001s_0002_Layer 39.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (114, 4, N'/BigImages//Images/ProductImages/Game_0001s_0003_Layer 40.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (115, 7, N'/BigImages//Images/ProductImages/Game_0001s_0004_Layer 41.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (116, 8, N'/BigImages//Images/ProductImages/Game_0001s_0005_Layer 42.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (117, 9, N'/BigImages//Images/ProductImages/Game_0001s_0006_Layer 43.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (118, 10, N'/BigImages//Images/ProductImages/Game_0001s_0007_Layer 44.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (119, 11, N'/BigImages//Images/ProductImages/Game_0001s_0008_Layer 45.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (120, 13, N'/BigImages//Images/ProductImages/Game_0001s_0009_Layer 46.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (122, 6, N'/BigImages//Images/ProductImages/Game_0001s_0012_Layer 49.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (123, 15, N'/BigImages//Images/ProductImages/Game_0001s_0013_Layer 50.jpg', 109)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (124, 2, N'/BigImages//Images/ProductImages/Game_0000s_0000_Layer 51.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (125, 3, N'/BigImages//Images/ProductImages/Game_0000s_0001_Layer 52.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (126, 16, N'/BigImages//Images/ProductImages/Game_0000s_0002_Layer 53.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (127, 4, N'/BigImages//Images/ProductImages/Game_0000s_0004_Layer 55.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (128, 7, N'/BigImages//Images/ProductImages/Game_0000s_0005_Layer 56.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (129, 8, N'/BigImages//Images/ProductImages/Game_0000s_0006_Layer 57.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (130, 9, N'/BigImages//Images/ProductImages/Game_0000s_0007_Layer 58.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (131, 10, N'/BigImages//Images/ProductImages/Game_0000s_0008_Layer 59.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (132, 11, N'/BigImages//Images/ProductImages/Game_0000s_0009_Layer 60.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (133, 12, N'/BigImages//Images/ProductImages/Game_0000s_0010_Layer 61.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (134, 13, N'/BigImages//Images/ProductImages/Game_0000s_0011_Layer 62.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (135, 14, N'/BigImages//Images/ProductImages/Game_0000s_0012_Layer 63.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (136, 6, N'/BigImages//Images/ProductImages/Game_0000s_0014_Layer 65.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (137, 15, N'/BigImages//Images/ProductImages/Game_0000s_0015_Layer 66.jpg', 110)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (138, 1, N'/BigImages//Images/ProductImages/314m.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (139, 2, N'/BigImages//Images/ProductImages/314m-black.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (140, 3, N'/BigImages//Images/ProductImages/314m-grey.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (141, 16, N'/BigImages//Images/ProductImages/314m-brown.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (142, 5, N'/BigImages//Images/ProductImages/314m-red.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (143, 8, N'/BigImages//Images/ProductImages/314m-yellow.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (144, 10, N'/BigImages//Images/ProductImages/314m-darkgreen.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (145, 13, N'/BigImages//Images/ProductImages/314m-darkblue.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (146, 14, N'/BigImages//Images/ProductImages/314m-violet.jpg', 104)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (147, 7, N'/BigImages//Images/ProductImages/0-_0001s_0008_Layer 18.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (148, 8, N'/BigImages//Images/ProductImages/0-_0001s_0007_Layer 17.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (149, 9, N'/BigImages//Images/ProductImages/0-_0001s_0006_Layer 16.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (150, 10, N'/BigImages//Images/ProductImages/0-_0001s_0005_Layer 15.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (151, 10, N'/BigImages//Images/ProductImages/0-_0001s_0004_Layer 14.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (152, 11, N'/BigImages//Images/ProductImages/0-_0001s_0004_Layer 14.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (153, 13, N'/BigImages//Images/ProductImages/0-_0001s_0003_Layer 13.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (154, 14, N'/BigImages//Images/ProductImages/0-_0001s_0002_Layer 12.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (155, 6, N'/BigImages//Images/ProductImages/0-_0001s_0001_Layer 11.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (156, 15, N'/BigImages//Images/ProductImages/0-_0001s_0000_Layer 10.jpg', 101)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (157, 3, N'/BigImages//Images/ProductImages/0-_0000s_0006_Layer 4.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (158, 2, N'/BigImages//Images/ProductImages/0-_0000s_0007_Layer 2.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (159, 7, N'/BigImages//Images/ProductImages/0-_0000s_0005_Layer 3.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (160, 8, N'/BigImages//Images/ProductImages/0-_0000s_0004_Layer 5.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (161, 8, N'/BigImages//Images/ProductImages/0-_0000s_0003_Layer 6.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (162, 9, N'/BigImages//Images/ProductImages/0-_0000s_0003_Layer 6.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (163, 10, N'/BigImages//Images/ProductImages/0-_0000s_0002_Layer 7.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (164, 11, N'/BigImages//Images/ProductImages/0-_0000s_0001_Layer 8.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (165, 15, N'/BigImages//Images/ProductImages/0-_0000s_0000_Layer 9.jpg', 102)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (166, 3, N'/BigImages//Images/ProductImages/00_0001s_0005_Layer 105.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (167, 7, N'/BigImages//Images/ProductImages/00_0001s_0004_Layer 104.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (168, 8, N'/BigImages//Images/ProductImages/00_0001s_0003_Layer 103.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (169, 9, N'/BigImages//Images/ProductImages/00_0001s_0002_Layer 102.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (170, 12, N'/BigImages//Images/ProductImages/00_0001s_0001_Layer 101.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (171, 15, N'/BigImages//Images/ProductImages/00_0001s_0000_Layer 100.jpg', 80)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (172, 3, N'/BigImages//Images/ProductImages/0_0004s_0010_Layer 89.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (173, 2, N'/BigImages//Images/ProductImages/0_0004s_0009_Layer 90.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (174, 16, N'/BigImages//Images/ProductImages/0_0004s_0008_Layer 91.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (175, 7, N'/BigImages//Images/ProductImages/0_0004s_0007_Layer 92.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (176, 10, N'/BigImages//Images/ProductImages/0_0004s_0006_Layer 93.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (177, 11, N'/BigImages//Images/ProductImages/0_0004s_0005_Layer 94.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (178, 12, N'/BigImages//Images/ProductImages/0_0004s_0004_Layer 95.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (179, 13, N'/BigImages//Images/ProductImages/0_0004s_0003_Layer 96.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (180, 14, N'/BigImages//Images/ProductImages/0_0004s_0002_Layer 97.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (181, 6, N'/BigImages//Images/ProductImages/0_0004s_0001_Layer 98.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (182, 15, N'/BigImages//Images/ProductImages/0_0004s_0000_Layer 99.jpg', 79)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (183, 2, N'/BigImages//Images/ProductImages/201m-bl.jpg', 78)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (184, 3, N'/BigImages//Images/ProductImages/0_0001s_0005_Layer 123.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (185, 2, N'/BigImages//Images/ProductImages/0_0001s_0004_Layer 122.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (186, 7, N'/BigImages//Images/ProductImages/0_0001s_0003_Layer 121.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (187, 7, N'/BigImages//Images/ProductImages/0_0001s_0003_Layer 121.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (188, 3, N'/BigImages//Images/ProductImages/00_0000s_0011_Layer 106.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (189, 2, N'/BigImages//Images/ProductImages/00_0000s_0010_Layer 107.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (190, 4, N'/BigImages//Images/ProductImages/00_0000s_0009_Layer 108.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (191, 7, N'/BigImages//Images/ProductImages/00_0000s_0008_Layer 109.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (192, 8, N'/BigImages//Images/ProductImages/00_0000s_0007_Layer 110.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (193, 9, N'/BigImages//Images/ProductImages/00_0000s_0006_Layer 111.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (194, 10, N'/BigImages//Images/ProductImages/00_0000s_0005_Layer 112.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (195, 11, N'/BigImages//Images/ProductImages/00_0000s_0004_Layer 113.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (196, 12, N'/BigImages//Images/ProductImages/00_0000s_0003_Layer 114.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (197, 14, N'/BigImages//Images/ProductImages/00_0000s_0002_Layer 115.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (198, 6, N'/BigImages//Images/ProductImages/00_0000s_0001_Layer 116.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (199, 15, N'/BigImages//Images/ProductImages/00_0000s_0000_Layer 117.jpg', 81)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (200, 8, N'/BigImages//Images/ProductImages/0_0001s_0002_Layer 120.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (201, 9, N'/BigImages//Images/ProductImages/0_0001s_0001_Layer 119.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (202, 12, N'/BigImages//Images/ProductImages/0_0001s_0000_Layer 118.jpg', 82)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (203, 3, N'/BigImages//Images/ProductImages/0-_0005s_0010_Layer 49.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (204, 1, N'/BigImages//Images/ProductImages/0-_0005s_0011_Layer 50.jpg', 94)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (205, 16, N'/BigImages//Images/ProductImages/0-_0005s_0009_Layer 51.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (206, 4, N'/BigImages//Images/ProductImages/0-_0005s_0008_Layer 52.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (207, 7, N'/BigImages//Images/ProductImages/0-_0005s_0007_Layer 53.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (208, 9, N'/BigImages//Images/ProductImages/0-_0005s_0006_Layer 54.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (209, 10, N'/BigImages//Images/ProductImages/0-_0005s_0005_Layer 55.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (210, 11, N'/BigImages//Images/ProductImages/0-_0005s_0004_Layer 56.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (211, 13, N'/BigImages//Images/ProductImages/0-_0005s_0003_Layer 57.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (212, 14, N'/BigImages//Images/ProductImages/0-_0005s_0002_Layer 58.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (213, 6, N'/BigImages//Images/ProductImages/0-_0005s_0001_Layer 59.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (214, 15, N'/BigImages//Images/ProductImages/0-_0005s_0000_Layer 60.jpg', 94)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (215, 3, N'/BigImages//Images/ProductImages/0-_0002s_0001_Layer 20.jpg', 98)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (216, 1, N'/BigImages//Images/ProductImages/0-_0002s_0000_Layer 19.jpg', 98)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (217, 1, N'/BigImages//Images/ProductImages/0-_0003s_0013_Layer 21.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (218, 3, N'/BigImages//Images/ProductImages/0-_0003s_0012_Layer 22.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (219, 16, N'/BigImages//Images/ProductImages/0-_0003s_0011_Layer 23.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (220, 4, N'/BigImages//Images/ProductImages/0-_0003s_0010_Layer 24.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (221, 7, N'/BigImages//Images/ProductImages/0-_0003s_0009_Layer 25.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (222, 8, N'/BigImages//Images/ProductImages/0-_0003s_0008_Layer 26.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (223, 9, N'/BigImages//Images/ProductImages/0-_0003s_0007_Layer 27.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (224, 10, N'/BigImages//Images/ProductImages/0-_0003s_0006_Layer 28.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (225, 11, N'/BigImages//Images/ProductImages/0-_0003s_0005_Layer 29.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (226, 12, N'/BigImages//Images/ProductImages/0-_0003s_0004_Layer 30.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (227, 13, N'/BigImages//Images/ProductImages/0-_0003s_0003_Layer 31.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (228, 14, N'/BigImages//Images/ProductImages/0-_0003s_0002_Layer 32.jpg', 97)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (229, 1, N'/BigImages//Images/ProductImages/0-_0004s_0013_Layer 35.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (230, 3, N'/BigImages//Images/ProductImages/0-_0004s_0012_Layer 36.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (231, 4, N'/BigImages//Images/ProductImages/0-_0004s_0010_Layer 38.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (232, 8, N'/BigImages//Images/ProductImages/0-_0004s_0008_Layer 40.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (233, 11, N'/BigImages//Images/ProductImages/0-_0004s_0005_Layer 43.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (234, 14, N'/BigImages//Images/ProductImages/0-_0004s_0002_Layer 46.jpg', 96)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (235, 2, N'/BigImages//Images/ProductImages/0-_0006s_0006_Layer 67.jpg', 93)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (236, 8, N'/BigImages//Images/ProductImages/0-_0006s_0005_Layer 66.jpg', 93)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (237, 11, N'/BigImages//Images/ProductImages/0-_0006s_0003_Layer 64.jpg', 93)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (238, 13, N'/BigImages//Images/ProductImages/0-_0006s_0001_Layer 62.jpg', 93)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (239, 14, N'/BigImages//Images/ProductImages/0-_0006s_0000_Layer 61.jpg', 93)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (240, 4, N'/BigImages//Images/ProductImages/0-_0007s_0010_Layer 79.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (241, 8, N'/BigImages//Images/ProductImages/0-_0007s_0008_Layer 77.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (242, 10, N'/BigImages//Images/ProductImages/0-_0007s_0006_Layer 75.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (243, 13, N'/BigImages//Images/ProductImages/0-_0007s_0003_Layer 72.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (244, 14, N'/BigImages//Images/ProductImages/0-_0007s_0002_Layer 71.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (245, 6, N'/BigImages//Images/ProductImages/0-_0007s_0001_Layer 70.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (246, 15, N'/BigImages//Images/ProductImages/0-_0007s_0000_Layer 69.jpg', 92)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (247, 16, N'/BigImages//Images/ProductImages/0-_0008s_0004_Layer 85.jpg', 91)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (248, 7, N'/BigImages//Images/ProductImages/0-_0008s_0003_Layer 86.jpg', 91)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (249, 10, N'/BigImages//Images/ProductImages/0-_0008s_0002_Layer 87.jpg', 91)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (250, 13, N'/BigImages//Images/ProductImages/0-_0008s_0001_Layer 84.jpg', 91)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (251, 1, N'/BigImages//Images/ProductImages/YOUR LOGO_FA-01.jpg', 111)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (1, N'4 gợi ý cho cô nàng nghiện áo thun', N'Tay chuông không còn là đặc quyền của họ nhà sơ mi nữa, mà các thiết kế áo thun cũng lân la học tập.', N'<p><img alt="4 gợi ý cho cô nàng nghiện áo thun - 1" src="http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109492-1463046922-0.jpg" /></p>

<p>Nếu l&agrave; t&iacute;n đồ của &aacute;o thun, bạn kh&ocirc;ng thể l&agrave;m ngơ trước những mẫu &aacute;o mới nhất</p>

<p>&Aacute;o thun &ndash; m&oacute;n đồ si&ecirc;u dễ mặc v&agrave; si&ecirc;u m&aacute;t mẻ đ&atilde; quay trở lại c&ugrave;ng với m&ugrave;a h&egrave;, sau những th&aacute;ng d&agrave;i ủ rũ trong tủ. Thường c&oacute; thiết kế đơn giản, ấy thế m&agrave; &aacute;o thun vẫn chiếm được cảm t&igrave;nh của đ&ocirc;ng đảo ph&aacute;i đẹp mới lạ. C&oacute; người &ldquo;nghiện&rdquo; &aacute;o thun, c&oacute; người chấp nhận từ bỏ rất nhiều bộ c&aacute;nh lộng lẫy để một l&ograve;ng một dạ trung th&agrave;nh với những chiếc &aacute;o thun.</p>

<p>Nếu tr&oacute;t l&agrave; một trong số ấy, sao kh&ocirc;ng cập nhật ngay những mẫu &aacute;o c&aacute; t&iacute;nh của h&egrave; năm nay nhỉ?</p>

<p><strong>1. &Aacute;o thun buộc vạt</strong></p>

<p><img alt="4 gợi ý cho cô nàng nghiện áo thun - 2" src="http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109492-1463046922-1.jpg" /></p>

<p>Nếu bạn đang nghĩ tới kiểu &aacute;o thun buột vạt nghịch ngợm, hở eo như v&agrave;i năm về trước th&igrave; bạn đang nhầm rồi đấy! &Aacute;o thun buộc vạt năm nay l&agrave; kiểu vạt d&agrave;i như hai sợi d&acirc;y, kh&ocirc;ng cần buộc th&agrave;nh nơ m&agrave; cũng chẳng cố thắt cho gọn, chỉ đơn giản l&agrave; buộc hai vạt &aacute;o lại với nhau rồi để ch&uacute;ng lơ lửng một c&aacute;ch mềm mại, tư nhi&ecirc;n. Bạn c&oacute; thể kết hợp kiểu &aacute;o n&agrave;y với quần ống rộng hoặc mọi kiểu ch&acirc;n v&aacute;y đều đẹp.</p>

<p><strong>2. &Aacute;o thun d&aacute;ng maxi</strong></p>

<p><img alt="4 gợi ý cho cô nàng nghiện áo thun - 3" src="http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109492-1463046922-2.jpg" /></p>

<p>Những chiếc &aacute;o thun c&oacute; độ d&agrave;i như v&aacute;y maxi nhưng lại xẻ t&agrave; hai b&ecirc;n khiến cho người mặc vừa được diện &aacute;o m&agrave; vừa được mặc quần, ho&agrave;n to&agrave;n kh&ocirc;ng b&iacute; b&aacute;ch hay luộm thuộm một ch&uacute;t n&agrave;o, nếu kh&ocirc;ng muốn n&oacute;i l&agrave; rất phong c&aacute;ch. Nếu sợ kiểu &aacute;o n&agrave;y sẽ khiến m&igrave;nh tr&ocirc;ng bị thấp đi, h&atilde;y mang th&ecirc;m gi&agrave;y cao g&oacute;t hoặc gi&agrave;y sneaker để b&aacute;nh mỳ để ăn gian chiều cao một ch&uacute;t nh&eacute;!</p>

<p><strong>3. &Aacute;o thun tay chu&ocirc;ng</strong></p>

<p><img alt="4 gợi ý cho cô nàng nghiện áo thun - 4" src="http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109493-1463046922-3.jpg" /></p>

<p>Tay chu&ocirc;ng kh&ocirc;ng c&ograve;n l&agrave; đặc quyền của họ nh&agrave;&nbsp;<a href="http://www.24h.com.vn/ao-so-mi-nu-c78e3477.html">sơ mi</a>&nbsp;nữa, m&agrave; c&aacute;c thiết kế &aacute;o thun cũng l&acirc;n la học tập. Nếu phần tay chu&ocirc;ng của &aacute;o sơ mi thường được thiết kế dưới dạng d&agrave;i, c&oacute; khi ch&ugrave;m gần hết b&agrave;n tay người mặc th&igrave; &aacute;o thun tay chu&ocirc;ng lại c&oacute; độ d&agrave;i linh hoạt hơn, đem đến phong c&aacute;ch nhẹ h&agrave;ng hơn hẳn. Kiểu &aacute;o n&agrave;y cũng gi&uacute;p c&aacute;c c&ocirc; n&agrave;ng c&oacute; khuyết điểm ở phần bắp tay th&ecirc;m tự tin v&igrave; độ che phủ tốt m&agrave; vẫn đảm bảo mềm mại.</p>

<p><strong>4. &Aacute;o thun tay lửng</strong></p>

<p><img alt="4 gợi ý cho cô nàng nghiện áo thun - 5" src="http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109493-1463046922-4.jpg" /></p>

<p>C&ugrave;ng với những kiểu quần ống lửng thời thượng, c&oacute; vẻ như &aacute;o thun cũng kh&ocirc;ng chịu nằm ngo&agrave;i cuộc chơi. Những kiểu &aacute;o với phần tay lửng lơ, rộng r&atilde;i kh&ocirc;ng chỉ gi&uacute;p người mặc thoải m&aacute;i tuyệt đối m&agrave; c&ograve;n tăng độ c&aacute; t&iacute;nh cho bất kỳ ai đang diện. V&agrave; d&ugrave; bạn c&oacute; giữ nguy&ecirc;n độ d&agrave;i tay như thiết kế ban đầu hay xắn gọn g&agrave;ng l&ecirc;n một ch&uacute;t, tr&ocirc;ng bạn chắc chắn đều mới mẻ hơn so với kiểu &aacute;o thun ngắn tay truyền thống.</p>

<p>Xem c&aacute;c mẫu Thời Trang H&egrave; 2016,&nbsp;<a href="http://www.24h.com.vn/thoi-trang-cong-so-c205.html">thời trang c&ocirc;ng sở</a>&nbsp;nữ&nbsp;2016&nbsp;hot nhất,&nbsp;<a href="http://www.24h.com.vn/bi-quyet-mac-dep-c272.html">b&iacute; quyết mặc đẹp</a>&nbsp;mới. Xu hướng&nbsp;<a href="http://www.24h.com.vn/thoi-trang-c78.html">Thời trang</a>&nbsp;24H Hot nhất.</p>

<p>Theo Hu&acirc;n Y Thảo (D&acirc;n Việt)</p>
', N'http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109493-1463046922-3.jpg', 0, CAST(0x0000A65B01596072 AS DateTime))
INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (2, N'Sao ngoại gợi ý cách diện quần short cho độ tuổi 30', N'Quần short là item trẻ trung có thể không phù hợp với những cô nàng trên 30 tuổi. Tuy nhiên, với những cách phối đồ dưới đây, các mỹ nhân Hollywood sẽ gợi ý cho bạn.', N'<p>Quần short l&agrave; item trẻ trung c&oacute; thể kh&ocirc;ng ph&ugrave; hợp với những c&ocirc; n&agrave;ng tr&ecirc;n 30 tuổi. Tuy nhi&ecirc;n, với những c&aacute;ch phối đồ dưới đ&acirc;y, c&aacute;c mỹ nh&acirc;n Hollywood sẽ gợi &yacute; cho bạn.</p>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_1.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>Alessandra Ambrosio thanh lịch hơn với &aacute;o sơ mi trắng v&agrave; quần short vải đen cơ bản.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_2.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>Ashley Madek mix match với set đồ m&agrave;u x&aacute;m tone-sur-tone c&aacute; t&iacute;nh. Chiếc thắt lưng n&acirc;u đỏ v&agrave; đ&ocirc;i gi&agrave;y cao g&oacute;t quai mảnh c&ugrave;ng c&aacute;ch trang điểm nổi bật tạo điểm nhấn cho trang phục.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 3" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_3.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>Chrissy Teigen trẻ trung với short x&eacute; gấu v&agrave; &aacute;o thun trắng lệch vai. Chiếc &aacute;o kho&aacute;c d&aacute;ng d&agrave;i gi&uacute;p set đồ ph&ugrave; hợp hơn với độ tuổi 30 của m&igrave;nh.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 4" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_4.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>Trong khi đ&oacute;, Diane Kruger lại chọn c&aacute;ch phối quần short jeans với &aacute;o len oversized v&agrave; bốt cao qu&aacute; gối khi dạo phố.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 5" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_5.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>&Aacute;o sơ mi l&agrave; item được nhiều sao ngo&agrave;i 30 tuổi lựa chọn khi mix với quần short v&igrave; n&oacute; mang lại vẻ thanh lịch, ch&iacute;n chắn nhưng kh&ocirc;ng k&eacute;m phần trẻ trung. Alexa Chung chọn chiếc &aacute;o c&oacute; chất liệu tho&aacute;ng m&aacute;t, họa tiết ấn tượng v&agrave; sneaker năng động cho set đồ của m&igrave;nh.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 6" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_6.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>C&oacute; thể th&ecirc;m một chiếc &aacute;o kimono tua rua l&atilde;ng mạn như Jessica Alba.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 7" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_7.jpg" style="height:1013px; width:600px" /></td>
		</tr>
		<tr>
			<td>Sơ mi cổ lọ v&agrave; gi&agrave;y sandal cũng l&agrave; một sự lựa chọn tuyệt vời cho bạn g&aacute;i. Jordana Brewster rất ấn tượng khi diện set đồ n&agrave;y.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 8" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_10.jpg" style="height:910px; width:564px" /></td>
		</tr>
		<tr>
			<td>Hoặc mix quần short trắng với &aacute;o sơ mi họa tiết v&agrave; sandal cao g&oacute;t thanh lịch như Reese Witherspoon&nbsp;
			<p>&nbsp;</p>
			&nbsp;.</td>
		</tr>
	</tbody>
</table>

<table align="center">
	<tbody>
		<tr>
			<td><img alt="Sao ngoai goi y cach dien quan short cho do tuoi 30 hinh anh 9" src="http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_9.jpg" style="height:1000px; width:701px" /></td>
		</tr>
		<tr>
			<td>Bạn c&oacute; thể y&ecirc;u th&iacute;ch c&aacute;ch kết hợp &aacute;o thun m&agrave;u trắng đơn giản với chiếc quần short da của Miranda Kerr. Người đẹp mix c&ugrave;ng chiếc k&iacute;nh r&acirc;m mắt m&egrave;o, chiếc t&uacute;i x&aacute;ch quai ch&eacute;o m&agrave;u đen v&agrave; đ&ocirc;i gi&agrave;y cao g&oacute;t m&agrave;u đỏ t&iacute;a.&nbsp;
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Phương Mai</p>

<p>Ảnh: Whowhatwear</p>
', N'http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_9.jpg', 1, CAST(0x0000A65B01639B91 AS DateTime))
INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (3, N'Đây chính là kiểu áo mùa thu mọi cô gái nên sắm!', N'Kiểu áo này đang là món đồ các sao châu Á ưa chuộng nhất khi thời tiết chuyển mùa. Với sự sáng tạo của bản thân, mỗi người lại tìm ra phong cách riêng.', N'<p>Kiểu &aacute;o n&agrave;y đang l&agrave; m&oacute;n đồ c&aacute;c sao ch&acirc;u &Aacute; ưa chuộng nhất khi thời tiết chuyển m&ugrave;a. Với sự s&aacute;ng tạo của bản th&acirc;n, mỗi người lại t&igrave;m ra phong c&aacute;ch ri&ecirc;ng.</p>

<p>Nếu chưa c&oacute; m&oacute;n đồ n&agrave;y để ch&agrave;o đ&oacute;n m&ugrave;a thu th&igrave; quả l&agrave; thiếu x&oacute;t! Bạn h&atilde;y sắm ngay kiểu &aacute;o sơ mi d&agrave;i tay, hở vai mềm mại để sẵn s&agrave;ng ra phố.</p>

<p>Kiểu &aacute;o n&agrave;y đang được c&aacute;c sao thế giới lăng x&ecirc; nhiệt t&igrave;nh. Với h&igrave;nh ảnh &quot;vừa lạ, vừa quen&quot; chắc hẳn sẽ l&agrave; một trải nghiệm th&uacute; vị cho chủ nh&acirc;n.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 1" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/74485_1388315_294094-1470293994-width533height800.jpg" /></p>

<p>&nbsp;</p>

<p>Thư Kỳ được khen ngợi hết lời khi vừa thanh lịch nhưng cũng kh&ocirc;ng k&eacute;m phần sexy trong một sự kiện. Sự&nbsp;biến tấu của &aacute;o sơ mi lu&ocirc;n l&agrave;m c&aacute;c đấng m&agrave;y r&acirc;u say đắm về độ ngọt ng&agrave;o.</p>

<p>Nếu kh&ocirc;ng sở hữu chiều cao nổi bật để kết hợp với quần ống su&ocirc;ng, bạn c&oacute; thể kết hợp với ch&acirc;n v&aacute;y chữ A c&aacute;ch điệu giống nữ diễn vi&ecirc;n xinh đẹp n&agrave;y.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 3" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/kim-yoo-jung-1470293994-width434height800.jpg" /></p>

<p>&nbsp;</p>

<p>Kim Yoo Jung chứng minh kiểu &aacute;o n&agrave;y c&oacute; thể phối đủ kiểu theo &yacute; chủ nh&acirc;n. Ngo&agrave;i h&igrave;nh ảnh gợi cảm, những c&ocirc; g&aacute;i trẻ c&oacute; thể ho&agrave;n to&agrave;n tự tin với phong c&aacute;ch dễ thương khi kết hợp ngẫu hứng với gi&agrave;y thể thao v&agrave; ch&acirc;n v&aacute;y b&ograve;.<br />
&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 4" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/alexa-chung-1470293994-width480height1219.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;Alexa Chung vẫn h&uacute;t mọi &aacute;nh nh&igrave;n tr&ecirc;n phố với c&ocirc;ng thức phối đồ cơ bản m&agrave; ai cũng c&oacute; thể thực hiện.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 5" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/74485_1388329_133008-1470293994-width499height800.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;Kh&ocirc;ng cầu kỳ với những kiểu v&aacute;y cầu kỳ,&nbsp;Sulii khoe vẻ thanh lịch nhưng vẫn ph&ugrave; hợp với tuổi đ&ocirc;i mươi.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 6" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/74485_1388327_551870-1470293994-width533height800.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Kiểu &aacute;o n&agrave;y đang l&agrave; m&oacute;n đồ c&aacute;c sao ch&acirc;u &Aacute; ưa chuộng nhất khi thời tiết chuyển m&ugrave;a. Với sự s&aacute;ng tạo của bản th&acirc;n, mỗi người lại t&igrave;m ra phong c&aacute;ch ri&ecirc;ng.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 7" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/1423215454-1-1470293994-width500height750.jpeg" /></p>

<p>&nbsp;</p>

<p>Nếu muốn lộng lẫy v&agrave; nổi bật hơn, bạn h&atilde;y thử phối với những m&oacute;n phụ kiện với sơ mi trễ vai.&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 8" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/s6-1470293994-width660height563.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Qu&yacute; c&ocirc; c&ocirc;ng sở cũng đừng ngại ngần thay đổi h&igrave;nh ảnh nh&agrave;m ch&aacute;n bằng c&aacute;ch chọn cho m&igrave;nh những kiểu đồ ph&oacute;ng kho&aacute;ng hơn. Nhiều kiểu &aacute;o sơ mi hở vai nhẹ nh&agrave;ng c&oacute; thể ph&ugrave; hợp cả khi đi l&agrave;m.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 9" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/cut-out_20160615133849702-1470293994-width564height999.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Khoe được bờ vai mềm mại l&agrave; điểm gợi cảm đầy tinh tế m&agrave; vẫn đảm bảo được sự thanh lịch nhất định.</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 10" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/5705d76e3d209_1460000622-1470293994-width660height917.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>D&ugrave; với bất cứ c&aacute;ch mặc n&agrave;o th&igrave; kiểu sơ mi n&ecirc;n sắm nhất h&egrave; n&agrave;y vẫn l&agrave; &aacute;o hở vai!</p>

<p>&nbsp;</p>

<p><img alt="day chinh la kieu ao mua thu moi co gai nen sam! - 11" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/khoe-vai-thon-chuan-voi-ao-so-mi-lech-vai-hot-nhat-he-2016-8960-1-1470294164-width640height851.jpg" /></p>

<p>&nbsp;</p>

<p>Kiểu &aacute;o n&agrave;y được c&aacute;c c&ocirc; g&aacute;i H&agrave;n Quốc m&ecirc; đắm v&agrave; c&aacute;ch phối đồ an to&agrave;n,&nbsp;hợp mắt số đ&ocirc;ng nhất l&agrave; sơ vin với quần jeans.</p>
', N'http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/s6-1470293994-width660height563.jpg', 1, CAST(0x0000A65B0164D538 AS DateTime))
INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (4, N'4 kiểu trang phục giúp bạn "ghi điểm" nơi công sở', N'Quần ống rộng quả là chiếc phao cứu sinh của những cô nàng đang ăn mặc “thiếu muối”!', N'<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 1" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490914-146943586946555-0.jpg" /></p>

<p>Để cuộc sống trở n&ecirc;n th&uacute; vị, h&atilde;y bắt đầu từ trang phục bạn mặc đi l&agrave;m h&agrave;ng ng&agrave;y!</p>

<p>Đối với c&aacute;c nữ c&ocirc;ng sở n&oacute;i ri&ecirc;ng v&agrave; ph&aacute;i đẹp n&oacute;i chung, kh&ocirc;ng c&ograve;n g&igrave; đ&aacute;ng sợ hơn việc thiếu s&aacute;ng tạo v&agrave; qu&aacute; an to&agrave;n trong ăn mặc.</p>

<p>C&ograve;n bạn, nếu việc mặc thế n&agrave;o đi l&agrave;m đ&atilde; c&oacute; l&uacute;c l&agrave;m kh&oacute; bạn hay bạn đ&ocirc;i l&uacute;c mất đi cảm hứng với những bộ đồ qu&aacute; quen thuộc, h&atilde;y nhớ ngay tới những item dưới đ&acirc;y.</p>

<p><strong>1. Jumpsuit</strong></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 2" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490914-146943586985894-1.jpg" /></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 3" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490914-146943586987413-2.jpg" /></p>

<p>Jumpsuit c&oacute; thể kh&ocirc;ng phải trang phục lạ lẫm, nhưng đối với c&aacute;c c&ocirc; n&agrave;ng c&ocirc;ng sở m&agrave; n&oacute;i, đ&acirc;y vẫn l&agrave; một điều cực kỳ mới mẻ. Người ta thường kh&ocirc;ng c&oacute; th&oacute;i quen diện những bộ jumpsuit đi l&agrave;m, v&igrave; cảm thấy n&oacute; kh&ocirc;ng ph&ugrave; hợp. Nhưng nếu x&eacute;t một c&aacute;ch r&otilde; r&agrave;ng hơn, lại chẳng ai t&igrave;m được điểm kh&ocirc;ng ph&ugrave; hợp n&agrave;o ở đ&acirc;y, nếu đ&oacute; kh&ocirc;ng phải kiểu jumpsuit kho&eacute;t eo hay cut-out ở lưng.</p>

<p>Vậy th&igrave; cứ thoải m&aacute;i diện jumpsuit tới c&ocirc;ng sở nh&eacute;! Tương tự như những chiếc v&aacute;y liền, jumpsuit dễ mặc nhưng lại tạo ra một cảm nhận v&ocirc; c&ugrave;ng mới mẻ khi bạn đứng giữa c&aacute;c đồng nghiệp quen thuộc với sơ mi v&agrave; ch&acirc;n v&aacute;y c&ocirc;ng sở.</p>

<p><strong>2. Quần short</strong></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 4" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490914-146943586972401-3.jpg" /></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 5" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490915-146943586918211-4.jpg" /></p>

<p>Thay v&igrave; một chiếc đầm c&oacute; c&ugrave;ng độ d&agrave;i, quần short sẽ đem lại vẻ ngo&agrave;i phong c&aacute;ch hơn m&agrave; vẫn lịch sự. Bạn n&ecirc;n chọn kiểu quần c&oacute; chất liệu d&agrave;y dặn, cứng c&aacute;p, ống đừng qu&aacute; &ocirc;m v&agrave; nhớ l&agrave; phải &iacute;t nh&agrave;u để khi kết hợp c&ugrave;ng những kiểu &aacute;o c&ocirc;ng sở kh&aacute;c nhau, bạn vẫn đảm bảo được t&iacute;nh lịch sự. B&ecirc;n cạnh đ&oacute;, bạn c&oacute; thể mặc c&ugrave;ng một chiếc &aacute;o blazer hoặc kết hợp th&ecirc;m với thắt lưng, bộ đồ của bạn sẽ cực kỳ &ldquo;ghi điểm&rdquo; nơi c&ocirc;ng sở dẫu mọi người biết bạn đang mặc quần short thay v&igrave; quần d&agrave;i cổ điển.</p>

<p><strong>3. &Aacute;o kho&aacute;c theo m&ugrave;a</strong></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 6" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490915-146943586943500-5.jpg" /></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 7" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490915-146943586958003-6.jpg" /></p>

<p>Một nữ c&ocirc;ng sở ăn mặc th&ocirc;ng minh hiếm khi rời bỏ &aacute;o kho&aacute;c, bất kể đ&oacute; l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave;. Họ mặc &aacute;o kho&aacute;c dĩ nhi&ecirc;n kh&ocirc;ng phải để giữ ấm hay che bớt khuyết điểm, đơn giản l&agrave; khi chọn được chiếc &aacute;o kho&aacute;c ph&ugrave; hợp, mọi thứ bạn mặc tr&ocirc;ng sẽ rất vừa mắt, bạn trở n&ecirc;n phong c&aacute;ch, sang chảnh hơn bất kể bạn đang mặc quần jeans hay ch&acirc;n v&aacute;y b&uacute;t ch&igrave; đi chăng nữa. Nhớ l&agrave; chọn chất liệu, kiểu d&aacute;ng ph&ugrave; hợp với m&ugrave;a để tr&ocirc;ng kh&ocirc;ng kh&ocirc;ng bị lạc điệu nh&eacute;!</p>

<p><strong>4. Quần ống rộng</strong></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 8" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490915-146943586924130-7.jpg" /></p>

<p><img alt="4 kiểu trang phục giúp bạn &amp;#34;ghi điểm&amp;#34; nơi công sở - 9" src="http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490915-146943586947793-8.jpg" /></p>

<p>Quần ống rộng quả l&agrave; chiếc phao cứu sinh của những c&ocirc; n&agrave;ng đang ăn mặc &ldquo;thiếu muối&rdquo;. Hơn cả đẹp v&agrave; ph&ugrave; hợp, quần ống rộng, bất kể l&agrave; quần d&agrave;i hay lửng đều đem đến cho người mặc sự s&agrave;nh điệu, hợp thời, dẫu thiết kế của ch&uacute;ng kh&ocirc;ng c&oacute; g&igrave; khoa trương, cầu kỳ. C&aacute;c nữ c&ocirc;ng sở h&atilde;y ưu ti&ecirc;n hơn nữa kiểu quần n&agrave;y trong tủ nếu muốn trở th&agrave;nh &ldquo;c&aacute;i rốn&rdquo; nơi c&ocirc;ng sở nh&eacute;!</p>
', N'http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490914-146943586946555-0.jpg', 1, CAST(0x0000A65B01660187 AS DateTime))
INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (5, N'Nếu muốn giấu vòng 2 - các bạn gái hãy chọn 4 kiểu áo này!', N'Nếu muốn che giấu vòng 2 kém đẹp mắt, bạn cũng nên lựa chọn đồ thật tinh tế để trở nên cân đối hơn.', N'<p>V&ograve;ng 2 qu&aacute; khổ lu&ocirc;n khiến nhiều chị em lo lắng. Đ&ocirc;i khi chọn sai trang phục c&agrave;ng l&agrave;m chủ nh&acirc;n k&eacute;m tự tin hơn. Sau đ&acirc;y l&agrave; những kiểu &aacute;o&nbsp;gi&uacute;p&nbsp;<a href="http://eva.vn/">phụ nữ</a>&nbsp;&eacute;m nhẹm được khuyết điểm v&ocirc; c&ugrave;ng đơn giản.</p>

<p><strong>1. &Aacute;o peplum</strong></p>

<p>Kiểu &aacute;o n&agrave;y l&agrave; c&ocirc;ng cụ thần kỳ bậc nhất cho những người sở hữu v&ograve;ng 2 kh&ocirc;ng mấy thon gọn. Đặc biệt, đ&oacute; l&agrave; lựa chọn hay cho những c&ocirc; n&agrave;ng c&ocirc;ng sở. &Aacute;o peplum n&ecirc;n mặc với quần b&oacute;, tr&aacute;nh mặc c&ugrave;ng v&aacute;y xo&egrave; để g&acirc;y cảm gi&aacute;c nặng nề cho thị gi&aacute;c. Nếu bạn c&oacute; chiều cao khi&ecirc;m tốn, h&atilde;y chọn d&aacute;ng &aacute;o ngắn v&agrave; đừng qu&ecirc;n chọn gi&agrave;y cao g&oacute;t khi mặc kiểu &aacute;o n&agrave;y.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 1" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--6--1470280230-width500height654.jpg" /></p>

<p>&nbsp;</p>

<p>Kiểu &aacute;o n&agrave;y sinh ra để ưu &aacute;i cho v&ograve;ng 2.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 2" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--15--1470280230-width640height896.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Mặc &aacute;o peplum với quần short gi&uacute;p chị em đầy gợi cảm m&agrave; vẫn thanh lịch.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 3" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--9--1470280230-width500height750.jpg" /></p>

<p>&nbsp;</p>

<p>Diện đồ một m&agrave;u khiến h&igrave;nh ảnh chủ nh&acirc;n th&ecirc;m phần thanh lịch.</p>

<p><strong>2. Sơ mi d&aacute;ng rộng</strong></p>

<p>Sơ mi lu&ocirc;n l&agrave;m tr&ograve;n tr&aacute;ch nhiệm l&agrave;m đẹp cho chị em với rất nhiều kiểu d&aacute;ng phong ph&uacute;. Với những người c&oacute; th&acirc;n h&igrave;nh chuẩn, sơ mi b&oacute; l&agrave; lựa chọn ho&agrave;n hảo. Nhưng sở hữu v&ograve;ng&nbsp;2 kh&ocirc;ng như mong muốn th&igrave; cũng đừng lo lắng! &Aacute;o sơ mi&nbsp;d&aacute;ng rộng d&agrave;nh cho bạn.&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 4" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--4--1470281623-width619height960.jpg" /></p>

<p>&nbsp;</p>

<p>Sơ mi c&oacute; thể phối linh hoạt với&nbsp;<a href="http://eva.vn/chan-vay-p614c36.html">ch&acirc;n v&aacute;y</a>&nbsp;để tăng n&eacute;t nữ t&iacute;nh.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 5" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--7--1470281623-width500height691.jpg" /></p>

<p>&nbsp;</p>

<p>Mặc kho&aacute;c ngo&agrave;i &aacute;o ph&ocirc;ng cũng l&agrave; h&igrave;nh ảnh gi&uacute;p c&aacute;c chị em th&ecirc;m lạ mắt hơn.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 6" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--14--1470281623-width506height660.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Một set đồ ho&agrave;n hảo để đến nơi c&ocirc;ng cở nhưng cũng c&oacute; thể ph&ugrave; hợp khi dạo phố.</p>

<p><strong>&nbsp;3.&nbsp;&Aacute;o babydoll</strong></p>

<p>Đ&uacute;ng như t&ecirc;n gọi, kiểu &aacute;o n&agrave;y gi&uacute;p chủ nh&acirc;n trở n&ecirc;n mềm mại v&agrave; dễ thương hơn bao giờ hết. Với sự s&aacute;ng tạo của những nh&agrave; thiết kế, ng&agrave;y c&agrave;ng nhiều những sự c&aacute;ch t&acirc;n mới lạ ra đời đ&aacute;p ứng nhu cầu của chị em. Kiểu đồ n&agrave;y thường được l&agrave;m từ chất liệu vải mềm mại v&agrave; m&aacute;t mẻ v&agrave; được đ&aacute;nh gi&aacute; l&agrave; trẻ trung hơn &aacute;o peplum.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 7" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--8--1470282402-width657height719.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Kiểu &aacute;o n&agrave;y được giới trẻ đặc biệt y&ecirc;u th&iacute;ch với nhiều sự lựa chọn đa dạng.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 8" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--13--1470282402-width624height901.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Ngo&agrave;i sự mềm mại, n&oacute; c&ograve;n c&oacute; t&aacute;c dụng ho&agrave;n hảo gi&uacute;p xua tan nỗi lo về v&ograve;ng 2.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 9" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--5--1470282402-width523height724.jpg" /></p>

<p>&nbsp;</p>

<p>Những hoạ tiết bắt mắt c&agrave;ng khiến m&oacute;n đồ n&agrave;y được nhiều người ưa chuộng.</p>

<p><strong>4. &Aacute;o ph&ocirc;ng freesize</strong></p>

<p>Nếu l&agrave; một c&ocirc; g&aacute;i năng động, kh&oacute; l&ograve;ng y&ecirc;u th&iacute;ch những kiểu đổ b&aacute;nh b&egrave;o như &aacute;o babydoll th&igrave; &aacute;o ph&ocirc;ng d&aacute;ng rộng l&agrave; m&oacute;n đồ gi&uacute;p bạn ghi điểm nếu muốn che giấu khuyết điểm v&ograve;ng 2. Một điểm cộng c&agrave;ng khiến mẫu &aacute;o n&agrave;y chẳng khi n&agrave;o hạ nhiệt đ&oacute; l&agrave; rất dễ d&agrave;ng phối đồ.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 10" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--12--1470282962-width500height496.jpg" /></p>

<p>&nbsp;</p>

<p>Một chiếc &aacute;o ph&ocirc;ng h&igrave;nh h&igrave;nh bắt mắt sẽ gi&uacute;p bạn trở n&ecirc;n tươi mới hơn.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 11" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--11--1470282962-width434height660.jpg" /></p>

<p>&nbsp;</p>

<p>Ph&oacute;ng kho&aacute;ng, bụi phủi cũng l&agrave; h&igrave;nh tượng nhiều người theo đuổi khi diện &aacute;o ph&ocirc;ng với quần jeans xắn gấu&nbsp;diện &aacute;o ph&ocirc;ng.</p>

<p>&nbsp;</p>

<p><img alt="neu muon giau vong 2 - cac chi, cac me hay chon 4 kieu ao nay! - 12" src="http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--10-.jpg-1470282962-width500height743.jpg" /></p>

<p>&nbsp;</p>

<p>Nếu muốn c&oacute; một diện mạo mới, bạn n&ecirc;n chọn &aacute;o ph&ocirc;ng c&aacute;ch điệu nhưng vẫn n&ecirc;n đảm bảo ti&ecirc;u ch&iacute; rộng r&atilde;i để giấu được khuyết điểm.</p>
', N'http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--5--1470282402-width523height724.jpg', 1, CAST(0x0000A65B0166C26E AS DateTime))
INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (6, N'20 kiểu mix quần short mới lạ cho nàng hiện đại', N'Short jeans có thể trở thành một phần hài hòa của rất nhiều set đồ sành điệu, mang phong cách đa dạng.', N'<p>Short jeans c&oacute; thể trở th&agrave;nh một phần h&agrave;i h&ograve;a của rất nhiều set đồ s&agrave;nh điệu, mang phong c&aacute;ch đa dạng.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-1-3085-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Quần short l&agrave; thiết kế kh&ocirc;ng thể thiếu trong tủ đồ của ph&aacute;i đẹp, c&oacute; thể dễ d&agrave;ng kết hợp ăn &yacute; với hầu hết trang phục kh&aacute;c, gi&uacute;p khoe kh&eacute;o đ&ocirc;i ch&acirc;n v&agrave; bổ sung vẻ gợi cảm cho phong c&aacute;ch.<br />
			N&eacute;t khỏe khoắn của short jeans kết hợp c&ugrave;ng chất l&atilde;ng mạn, bay bổng từ crop-top tay loe mềm mại tạo n&ecirc;n tổng thể độc đ&aacute;o.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-1" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-2-6466-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Tương tự, &aacute;o trễ vai vạt ngắn với chất liệu xuy&ecirc;n thấu cũng l&agrave; lựa chọn th&uacute; vị để phối c&ugrave;ng quần short.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-2" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-3-9562-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Những c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng kh&ocirc;ng n&ecirc;n bỏ qua kiểu &aacute;o cắt kho&eacute;t sexy, biến người mặc th&agrave;nh t&acirc;m điểm ch&uacute; &yacute;.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-3" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-4-2560-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Trong khi đ&oacute;, bộ đ&ocirc;i &aacute;o hai d&acirc;y v&agrave; blazer sẽ thổi n&eacute;t thanh lịch cho style của qu&yacute; c&ocirc; hiện đại.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-4" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-5-7778-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Khi thay blazer bằng &aacute;o gile d&aacute;ng d&agrave;i v&agrave; nhấn nh&aacute; đường x&eacute; bụi bặm tr&ecirc;n quần short jeans, bạn sẽ trở n&ecirc;n c&aacute; t&iacute;nh, thời thượng hơn hẳn.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-5" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-6-9889-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Sandal đan d&acirc;y s&agrave;nh điệu khiến mỗi bước ch&acirc;n th&ecirc;m thu h&uacute;t.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-6" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-7-2768-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Xu hướng denim-on-denim vẫn kh&ocirc;ng hề lỗi mốt nhờ gu mix đồ kh&eacute;o l&eacute;o, h&agrave;i h&ograve;a.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-7" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-9-6628-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Vẻ năng động của c&aacute;ch buộc sơ mi caro m&agrave;u sắc tươi s&aacute;ng quanh h&ocirc;ng lu&ocirc;n được giới trẻ y&ecirc;u th&iacute;ch v&agrave; lăng-x&ecirc; nhiệt t&igrave;nh tr&ecirc;n phố.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-8" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-8-8628-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Sự c&aacute; t&iacute;nh to&aacute;t l&ecirc;n từ &yacute; tưởng mix layer sơ mi v&agrave; crop-top độc đ&aacute;o, quần short da c&ugrave;ng chiếc t&uacute;i Chloe gắn kim loại h&uacute;t mắt.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="20-kieu-mix-quan-short-moi-la-cho-nang-hien-dai-9" src="http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-10-2487-1470046573.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Kh&ocirc;ng m&oacute;n trang phục n&agrave;o ăn &yacute; với &aacute;o nỉ mỏng đan d&acirc;y hơn một chiếc quần short jeans khỏe khoắn</p>
			</td>
		</tr>
	</tbody>
</table>
', N'http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-10-2487-1470046573.jpg', 0, CAST(0x0000A65B01675C24 AS DateTime))
INSERT [dbo].[News] ([ID], [Title], [ShortDes], [Content], [MainImage], [Popular], [CreateDate]) VALUES (7, N'Đón đầu xu hướng mùa thu với phong cách hiện đại', N'Bộ sưu tập dành cho những cô nàng yêu sự phóng khoáng và thích nét khác biệt', N'<p>Bộ sưu tập d&agrave;nh cho những c&ocirc; n&agrave;ng y&ecirc;u sự ph&oacute;ng kho&aacute;ng v&agrave; th&iacute;ch n&eacute;t kh&aacute;c biệt.</p>

<p>&nbsp;</p>

<table align="center" border="0" cellpadding="2" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/3-1-3485-1469705856.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Đặng Hải Yến&nbsp;lu&ocirc;n t&igrave;m t&ograve;i s&aacute;ng tạo để mang đến những mẫu trang phục c&oacute; phom d&aacute;ng độc đ&aacute;o. Đơn cử như &aacute;o đổ b&egrave;o, c&uacute;p ngực b&ecirc;n trong, c&agrave;i khuy b&ecirc;n eo phải.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-1" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/1-1-1548-1469705856.jpg" /></td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-2" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/2-1-1592-1469705856.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Hơi hướng của phong c&aacute;ch menswear được chủ nh&acirc;n bộ sưu tập thể hiện một c&aacute;ch c&ocirc; đọng trong từng bộ suit, blazer...</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-3" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/4-1-6003-1469705856.jpg" /></td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-4" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/5-1-2795-1469705856.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Những chi tiết mềm mại như&nbsp;hoạ tiết b&egrave;o nh&uacute;n, hoạ&nbsp;tiết đ&iacute;nh đ&aacute;, những phom&nbsp;v&aacute;y mới cũng được đưa v&agrave;o c&aacute;c thiết kế d&agrave;nh cho m&ugrave;a thu.</p>
			</td>
		</tr>
	</tbody>
</table>

<p><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-5" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/24-1-3509-1469705856.jpg" /></p>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-6" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/12-1-4691-1469705856.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Mẫu v&aacute;y su&ocirc;ng được th&ecirc;m&nbsp;phần eo c&oacute; đai xếp ly rời gi&uacute;p&nbsp;người mặc&nbsp;c&oacute; nhiều c&aacute;ch sử dụng trang phục kh&aacute;c nhau.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-7" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/14-2-5330-1469705856.jpg" /></td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-8" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/21-1-3996-1469705856.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Đường n&eacute;t sexy của h&igrave;nh thể được t&ocirc;n vinh qua nhiều mẫu v&aacute;y xẻ, &aacute;o kho&eacute;t ngực chữ V ấn tượng.</p>
			</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-9" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/22-2-5063-1469705856.jpg" /></td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<table align="center" border="0" cellpadding="2" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="don-dau-xu-huong-mua-thu-voi-phong-cach-hien-dai-10" src="http://img.f21.ngoisao.vnecdn.net/2016/07/28/7-2-9611-1469705856.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Hoạ tiết h&igrave;nh tr&aacute;i tim, đ&ocirc;i m&ocirc;i được kết bằng pha l&ecirc;, đ&aacute; m&agrave;u cũng được sử dụng để tạo điểm nhấn cho c&aacute;c kiểu v&aacute;y &aacute;o m&agrave;u sắc trang nh&atilde;.</p>
			</td>
		</tr>
	</tbody>
</table>

<p><strong>Duy Kh&aacute;nh</strong><br />
<em>Ảnh:</em><strong>&nbsp;Phan V&otilde;</strong></p>
', N'http://img.f21.ngoisao.vnecdn.net/2016/07/28/24-1-3509-1469705856.jpg', 0, CAST(0x0000A65B0167E12F AS DateTime))
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (4, N'XFGDFGD', N'FGDFGDF', 2, CAST(0x0000A657012D8CDD AS DateTime), NULL, NULL, N'', N'')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (5, N'Nadreal', N'012365478', 1, CAST(0x0000A65800EA89B8 AS DateTime), NULL, NULL, N'', N'')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (6, N'Quynh Huy', N'98657225', 3, CAST(0x0000A65800EE3359 AS DateTime), NULL, NULL, N'12/5 tp hcm', N'pop@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (7, N'tinhte.vn', N'985577', 1, CAST(0x0000A65800F82CE8 AS DateTime), NULL, NULL, N'13.2/78 pghfnf', N'lol@lel.vn')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (8, N'huy quynh', N'33333', 3, CAST(0x0000A65800F8C6D0 AS DateTime), NULL, NULL, N'fngngn', N'tutu@ghg.com')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (9, N'huy', N'01633065022', 2, CAST(0x0000A66400E907D5 AS DateTime), NULL, NULL, N'1173', N'it@jhj.com')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (10, N'ITY', N'123654789', 1, CAST(0x0000A665012153B0 AS DateTime), NULL, NULL, N'123/75', N'nv@ya.vn')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (30, 4, 110, 1, 1, 5)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (31, 5, 110, 1, 4, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (32, 6, 107, 1, 3, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (33, 7, 108, 20, 9, 5)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (34, 8, 104, 1, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (35, 8, 104, 1, 2, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (36, 9, 76, 1, 1, 5)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (37, 9, 108, 1, 8, 4)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (38, 10, 111, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (51, N'Áo thun cotton in họa tiết YFTS603', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS603</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/603 mockup.jpg', N'', N'', 129000, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (53, N'Áo thun cotton in họa tiết YFTS606', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS606</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/606 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (54, N'Áo thun cotton in họa tiết YFTS607', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS607</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Mockup_0000s_0015_607-(merged).png', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (55, N'Áo thun cotton in họa tiết YFTS608', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS608</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/608m.png', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (56, N'Áo thun cotton in họa tiết YFTS609', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS609</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/609 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (57, N'Áo thun cotton in họa tiết YFTS610', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS628</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/610 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (58, N'Áo thun cotton in họa tiết YFTS613', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS613</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/613m.png', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (59, N'Áo thun cotton in họa tiết YFTS616', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS616</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/614m.png', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (60, N'Áo thun cotton in họa tiết YFTS617', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS617</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/617m.png', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (61, N'Áo thun cotton in họa tiết YFTS618', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS618</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0010_618 (merged).jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (62, N'Áo thun cotton in họa tiết YFTS619', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS619</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0009_619 (merged).jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (63, N'Áo thun cotton in họa tiết YFTS605', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS605</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0017_605 (merged).jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (64, N'Áo thun cotton in họa tiết YFTS601', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS601</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0020_601 (merged).jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (65, N'Áo thun cotton in họa tiết YFTS602', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS602</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0019_602 (merged).jpg', N'', N'', 129000, 1, NULL, 0.2, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (66, N'Áo thun đôi cotton in họa tiết YFTS101', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS101</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/101 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (67, N'Áo thun đôi cotton in họa tiết YFTS102', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS102</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/102 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (68, N'Áo thun đôi cotton in họa tiết YFTS103', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS103</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/103 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (69, N'Áo thun đôi cotton in họa tiết YFTS104', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS104</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/104 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (70, N'Áo thun đôi cotton in họa tiết YFTS105', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS105</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/105 mockup.jpg', N'', N'', 129000, 1, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (71, N'Áo thun đôi cotton in họa tiết YFTS107', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS107</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/107 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (72, N'Áo thun đôi cotton in họa tiết YFTS108', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS108</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/108 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (73, N'Áo thun đôi cotton in họa tiết YFTS109', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS109</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/109 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (74, N'Áo thun đôi cotton in họa tiết YFTS110', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS110</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/110 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (75, N'Áo thun đôi cotton in họa tiết YFTS111', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS111</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/111 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (76, N'Áo thun đôi cotton in họa tiết YFTS112', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS112</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/112 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (77, N'Áo thun đôi cotton in họa tiết YFTS106', 66, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS106</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/106 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (78, N'Áo thun cotton in họa tiết YFTS201', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS201</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/201m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (79, N'Áo thun cotton in họa tiết YFTS202', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS202</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/202m.jpg', N'', N'', 129000, 1, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (80, N'Áo thun cotton in họa tiết YFTS203', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS203</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/203m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (81, N'Áo thun cotton in họa tiết YFTS204', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS204</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/204m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (82, N'Áo thun cotton in họa tiết YFTS205', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS205</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/205m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (83, N'Áo thun cotton in họa tiết YFTS206', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS206</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/206m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (84, N'Áo thun cotton in họa tiết YFTS209', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS209</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/209m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (85, N'Áo thun cotton in họa tiết YFTS210', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS210</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/210.m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (86, N'Áo thun cotton in họa tiết YFTS2111', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2111</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.1m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (87, N'Áo thun cotton in họa tiết YFTS2112', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2112</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.2m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (88, N'Áo thun cotton in họa tiết YFTS2113', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2113</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.3m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (89, N'Áo thun cotton in họa tiết YFTS2114', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2114</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.4m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (90, N'Áo thun cotton in họa tiết YFTS212', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS212</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/212m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (91, N'Áo thun cotton in họa tiết YFTS301', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS301</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/301m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (92, N'Áo thun cotton in họa tiết YFTS302', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS302</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/302m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (93, N'Áo thun cotton in họa tiết YFTS303', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS303</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/303m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (94, N'Áo thun cotton in họa tiết YFTS304', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS304</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/304m.jpg', N'', N'', 129000, 1, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (95, N'Áo thun cotton in họa tiết YFTS305', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS305</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/305m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (96, N'Áo thun cotton in họa tiết YFTS307', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS307</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/307m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (97, N'Áo thun cotton in họa tiết YFTS308', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS308</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/308m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (98, N'Áo thun cotton in họa tiết YFTS309', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS309</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/309m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (100, N'Áo thun cotton in họa tiết YFTS310', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS310</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/310m-white.jpg', N'/Images/ProductImages/310m-white.jpg', N'/Images/ProductImages/310m-white.jpg', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (101, N'Áo thun cotton in họa tiết YFTS311', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS311</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/311m-black.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (102, N'Áo thun cotton in họa tiết YFTS312', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS312</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/312m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (103, N'Áo thun cotton in họa tiết YFTS313', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS313</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/313m.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (104, N'Áo thun cotton in họa tiết YFTS314', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS314</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/314m.jpg', N'/Images/ProductImages/314m-black.jpg', N'', 129000, 1, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (105, N'Áo thun cotton in họa tiết YFTS405', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS405</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/405 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (106, N'Áo thun cotton in họa tiết YFTS406', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS406</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/406 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (107, N'Áo thun cotton in họa tiết YFTS407', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS407</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/407 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (108, N'Áo thun cotton in họa tiết YFTS408', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS408</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/408 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (109, N'Áo thun cotton in họa tiết YFTS410', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS410</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/410 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (110, N'Áo thun cotton in họa tiết YFTS411', 64, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTS411</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/411 mockup.jpg', N'', N'', 129000, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (111, N'Áo thun cotton in họa tiết Floating Pikachu YFTS411', 78, 99000, N'<p>&Aacute;o thun cotton in họa tiết YFTSD001</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/D001-white.jpg', N'', N'', 129000, 1, 0, 0.3, N'<p>c&aacute;i n&agrave;y l&agrave; c&aacute;i j` vậy ch&agrave;j</p>
', 1, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([ID], [Name]) VALUES (1, N'XS')
INSERT [dbo].[Size] ([ID], [Name]) VALUES (2, N'S')
INSERT [dbo].[Size] ([ID], [Name]) VALUES (3, N'M')
INSERT [dbo].[Size] ([ID], [Name]) VALUES (4, N'L')
INSERT [dbo].[Size] ([ID], [Name]) VALUES (5, N'XL')
INSERT [dbo].[Size] ([ID], [Name]) VALUES (6, N'2XL')
INSERT [dbo].[Size] ([ID], [Name]) VALUES (7, N'3XL')
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[SizeProductDetail] ON 

INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1, 100, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (2, 100, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (3, 100, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (4, 100, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (5, 100, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (6, 100, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (7, 100, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (8, 51, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (9, 51, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (10, 51, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (11, 51, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (12, 51, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (13, 51, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (14, 51, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (15, 53, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (22, 54, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (23, 54, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (24, 54, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (25, 54, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (26, 54, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (27, 54, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (28, 54, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (29, 55, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (30, 55, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (31, 55, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (32, 55, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (33, 55, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (34, 55, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (35, 55, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (36, 56, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (37, 56, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (38, 56, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (39, 56, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (40, 56, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (41, 56, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (42, 56, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (43, 57, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (44, 57, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (45, 57, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (46, 57, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (47, 57, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (48, 57, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (49, 57, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (50, 58, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (51, 58, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (52, 58, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (53, 58, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (54, 58, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (55, 58, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (56, 58, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (57, 59, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (58, 59, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (59, 59, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (60, 59, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (61, 59, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (62, 59, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (63, 59, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (64, 60, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (65, 60, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (66, 60, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (67, 60, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (68, 60, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (69, 60, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (70, 60, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (71, 61, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (72, 61, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (73, 61, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (74, 61, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (75, 61, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (76, 61, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (77, 61, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (78, 62, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (79, 62, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (80, 62, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (81, 62, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (82, 62, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (83, 62, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (84, 62, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (85, 63, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (86, 63, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (87, 63, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (88, 63, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (89, 63, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (90, 63, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (91, 63, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (92, 64, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (93, 64, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (94, 64, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (95, 64, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (96, 64, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (97, 64, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (98, 64, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (99, 65, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (100, 65, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (101, 65, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (102, 65, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (103, 65, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (104, 65, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (105, 65, 7)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (106, 66, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (107, 66, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (108, 66, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (109, 66, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (110, 66, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (111, 66, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (112, 66, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (113, 67, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (114, 67, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (115, 67, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (116, 67, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (117, 67, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (118, 67, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (119, 67, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (120, 69, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (121, 69, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (122, 69, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (123, 69, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (124, 69, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (125, 69, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (126, 69, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (127, 68, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (128, 68, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (129, 68, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (130, 68, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (131, 68, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (132, 68, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (133, 68, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (134, 70, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (135, 70, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (136, 70, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (137, 70, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (138, 70, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (139, 70, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (140, 70, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (141, 71, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (142, 71, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (143, 71, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (144, 71, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (145, 71, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (146, 71, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (147, 71, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (148, 72, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (149, 72, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (150, 72, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (151, 72, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (152, 72, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (153, 72, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (154, 72, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (155, 73, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (156, 73, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (157, 73, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (158, 73, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (159, 73, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (160, 73, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (161, 73, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (162, 74, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (163, 74, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (164, 74, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (165, 74, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (166, 74, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (167, 74, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (168, 74, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (169, 75, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (170, 75, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (171, 75, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (172, 75, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (173, 75, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (174, 75, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (175, 75, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (176, 76, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (177, 76, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (178, 76, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (179, 76, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (180, 76, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (181, 76, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (182, 76, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (183, 77, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (184, 77, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (185, 77, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (186, 77, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (187, 77, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (188, 77, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (189, 77, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (190, 78, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (191, 78, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (192, 78, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (193, 78, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (194, 78, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (195, 78, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (196, 78, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (197, 79, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (198, 79, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (199, 79, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (200, 79, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (201, 79, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (202, 79, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (203, 79, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (204, 80, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (205, 80, 2)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (206, 80, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (207, 80, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (208, 80, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (209, 80, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (210, 80, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (211, 81, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (212, 81, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (213, 81, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (214, 81, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (215, 81, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (216, 81, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (217, 81, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (218, 82, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (219, 82, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (220, 82, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (221, 82, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (222, 82, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (223, 82, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (224, 82, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (225, 83, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (226, 83, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (227, 83, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (228, 83, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (229, 83, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (230, 83, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (231, 83, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (232, 84, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (233, 84, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (234, 84, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (235, 84, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (236, 84, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (237, 84, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (238, 84, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (239, 85, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (240, 85, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (241, 85, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (242, 85, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (243, 85, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (244, 85, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (245, 85, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (246, 86, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (247, 86, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (248, 86, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (249, 86, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (250, 86, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (251, 86, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (252, 86, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (253, 87, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (254, 87, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (255, 87, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (256, 87, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (257, 87, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (258, 87, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (259, 87, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (260, 88, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (261, 88, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (262, 88, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (263, 88, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (264, 88, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (265, 88, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (266, 88, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (267, 89, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (268, 89, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (269, 89, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (270, 89, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (271, 89, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (272, 89, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (273, 89, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (274, 90, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (275, 90, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (276, 90, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (277, 90, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (278, 90, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (279, 90, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (280, 90, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (281, 95, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (282, 95, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (283, 95, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (284, 95, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (285, 95, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (286, 91, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (287, 91, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (288, 91, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (289, 91, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (290, 91, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (291, 91, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (292, 91, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (293, 92, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (294, 92, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (295, 92, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (296, 92, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (297, 92, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (298, 92, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (299, 92, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (300, 93, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (301, 93, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (302, 93, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (303, 93, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (304, 93, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (305, 93, 6)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (306, 93, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (307, 94, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (308, 94, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (309, 94, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (310, 94, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (311, 94, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (312, 94, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (313, 94, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (314, 96, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (315, 96, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (316, 96, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (317, 96, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (318, 96, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (319, 96, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (320, 96, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (321, 97, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (322, 97, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (323, 97, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (324, 97, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (325, 97, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (326, 97, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (327, 97, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (328, 98, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (329, 98, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (330, 98, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (331, 98, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (332, 98, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (333, 98, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (334, 98, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (335, 101, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (336, 101, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (337, 101, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (338, 101, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (339, 101, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (340, 101, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (341, 101, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (342, 102, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (343, 102, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (344, 102, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (345, 102, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (346, 102, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (347, 102, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (348, 102, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (349, 103, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (350, 103, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (351, 103, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (352, 103, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (353, 103, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (354, 103, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (355, 103, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (356, 104, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (357, 104, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (358, 104, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (359, 104, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (360, 104, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (361, 104, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (362, 104, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (363, 105, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (364, 105, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (365, 105, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (366, 105, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (367, 105, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (368, 105, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (369, 105, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (370, 106, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (371, 106, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (372, 106, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (373, 106, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (374, 106, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (375, 106, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (376, 106, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (377, 107, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (378, 107, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (379, 107, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (380, 107, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (381, 107, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (382, 107, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (383, 107, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (384, 108, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (385, 108, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (386, 108, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (387, 108, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (388, 108, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (389, 108, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (390, 108, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (391, 109, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (392, 109, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (393, 109, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (394, 109, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (395, 109, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (396, 109, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (397, 109, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (398, 110, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (399, 110, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (400, 110, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (401, 110, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (402, 110, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (403, 110, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (404, 110, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (410, 111, 1)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (411, 111, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (412, 111, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (413, 111, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (414, 111, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (415, 111, 6)
SET IDENTITY_INSERT [dbo].[SizeProductDetail] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ColorProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ColorProductDetail_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ID])
GO
ALTER TABLE [dbo].[ColorProductDetail] CHECK CONSTRAINT [FK_ColorProductDetail_Color]
GO
ALTER TABLE [dbo].[ColorProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ColorProductDetail_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ColorProductDetail] CHECK CONSTRAINT [FK_ColorProductDetail_Product]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Color] FOREIGN KEY([IDColor])
REFERENCES [dbo].[Color] ([ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Color]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Color] FOREIGN KEY([Color])
REFERENCES [dbo].[Color] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Color]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Size] FOREIGN KEY([Size])
REFERENCES [dbo].[Size] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Size]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[SizeProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_SizeProductDetail_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[SizeProductDetail] CHECK CONSTRAINT [FK_SizeProductDetail_Product]
GO
ALTER TABLE [dbo].[SizeProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_SizeProductDetail_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([ID])
GO
ALTER TABLE [dbo].[SizeProductDetail] CHECK CONSTRAINT [FK_SizeProductDetail_Size]
GO
