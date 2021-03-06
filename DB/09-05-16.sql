USE [yourfash_banle]
GO
/****** Object:  Table [dbo].[Agency]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[Color]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[ColorProductDetail]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Color]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Order]    Script Date: 09/05/2016 09:25:34 ******/
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
	[Status] [int] NULL,
	[Pattern] [int] NULL,
 CONSTRAINT [PK_EventBackToSchool_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventBackToSchool_Pattern]    Script Date: 09/05/2016 09:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBackToSchool_Pattern](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_EventBackToSchool_Pattern] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventBackToSchool_ShirtType]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[EventBackToSchool_Size]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 09/05/2016 09:25:34 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 09/05/2016 09:25:34 ******/
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
/****** Object:  Table [dbo].[SizeProductDetail]    Script Date: 09/05/2016 09:25:34 ******/
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
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'85bacdb9-7de3-4ab1-a155-a59b04c78b9c', N'スェrうぇr')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8b25b511-7b63-4ca8-818e-fecb6d4f21e0', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'bbcbff94-e599-471c-94cd-40c0eef9ea8e', N'werwer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd16eabf2-5b71-42f4-b482-7892214bd904', N'customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e72ce852-b367-481a-b7b6-e56eaf29ba35', N'w234')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a81bf0f-60b1-4be0-82ae-79520e25b949', N'563c509e-d9d3-4e46-997c-43db48b7f754')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73448a64-449b-4a86-9259-00ebc7e87483', N'563c509e-d9d3-4e46-997c-43db48b7f754')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0499387-6153-493b-a69a-ab16aa417983', N'563c509e-d9d3-4e46-997c-43db48b7f754')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'01cb86d4-6e08-49fe-86a8-1f3f2e8daf18', N'vohai2014@gmail.com', 0, N'AAsmZhRdVimvqctl36VcZMjJxMiXrdDEPZkzQ7jaHsabvFBG6Slr5pgLr/+Zmk9L7g==', N'54e7c7bf-a76e-49fd-a9c4-1929e6aaa75f', NULL, 0, 0, NULL, 1, 0, N'vohai2014@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0a81bf0f-60b1-4be0-82ae-79520e25b949', N'quyht@yourfashion.vn', 0, N'ACBW/3Fn7UOzgOAWZXZjn/gru2TSFxaksgwyl8ppM5/SFV975p53v9ZRF9rz0h9vAA==', N'63d08687-806b-4fb2-8b84-972c9be07478', NULL, 0, 0, NULL, 1, 0, N'quyht@yourfashion.vn')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'73448a64-449b-4a86-9259-00ebc7e87483', N'it@your.vn', 0, N'AMMzM/xhKUKLFHwkYzrhALOkT1ImuXW0Ptw1pfoq7H2f/8ThEszl1UW9Wwg9sE7umQ==', N'fa35470a-89cd-41ee-b0f1-ba75ceaca21d', NULL, 0, 0, NULL, 1, 0, N'it@your.vn')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd0499387-6153-493b-a69a-ab16aa417983', N'quannpm@your.vn', 0, N'AHa2CHKRRJZJ2SNebC7tEr1MOmAcuInEHPbEz8+YYyUS8sFRfKbCPVIVgMSlT9oCnA==', N'db8265ba-0a46-48de-bf29-0d1fadc3df79', NULL, 0, 0, NULL, 1, 0, N'quannpm@your.vn')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (63, N'Sản phẩm', -1, 1, 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (64, N'Áo thun in hình', 63, 1, 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (66, N'Áo thun đôi', 63, 1, 3)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (68, N'Áo thun cung hoàng đạo', 63, 1, 2)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (69, N'Tai nghe Yison', 70, 1, 4)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (70, N'Điện tử', 63, 1, 8)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (71, N'Hàng xuất khẩu', 63, 1, 7)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (76, N'Áo thun nhóm', 63, 1, 4)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (77, N'Hàng thiết kế', 63, 1, 6)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived], [Rank]) VALUES (78, N'Áo thun gia đình', 63, 1, 5)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (1, N'Trắng', N'#ffffff')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (2, N'Đen', N'#000000')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (3, N'Xám', N'#d1d2cd')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (4, N'Đỏ tươi', N'#fb0000
')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (5, N'Đỏ thẫm', N'#981d3e')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (6, N'Hồng', N'#e652c5')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (7, N'Cam', N'#f89047')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (8, N'Vàng', N'#F8fd56')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (9, N'Xanh lá cây tươi', N'#27fd40')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (10, N'Xanh lá cây đậm', N'#318932')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (11, N'Xanh da trời', N'#04e8ef')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (12, N'Xanh dương', N'#0148d0')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (13, N'Xanh dương đậm', N'#2a1773')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (14, N'Tím', N'#A466D3')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (15, N'Hồng phấn', N'#f48fa8')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (16, N'Nâu', N'#4a0c2c')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (17, N'Nâu nhạt', N'#C97145')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (18, N'Tím đậm', N'#2E0D4F')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (19, N'Đỏ cam', N'#fb7c6e')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (20, N'Xanh lá cây nhạt', N'#A8F1C0')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (21, N'Xanh lá cây', N'#04d9af')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (22, N'Cam nhạt', N'#ffb182')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (23, N'Xanh xám', N'#a1bee6')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (24, N'Hồng nhạt', N'#fcecfa')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (25, N'Xanh rêu', N'#406c44')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (26, N'Đỏ bầm', N'#c12d51')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (27, N'Tím đậm', N'#6a077c')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (28, N'Tím xanh', N'#48128d')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (29, N'Tím hoa cà', N'#9e047e')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (30, N'Xanh cốm', N'#90c398')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (31, N'Xanh ngọc', N'#52c4ad')
INSERT [dbo].[Color] ([ID], [Name], [ColorCode]) VALUES (32, N'Vàng nhạt', N'#fefbd4')
SET IDENTITY_INSERT [dbo].[Color] OFF
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
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (16, 32, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (17, 19, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (18, 20, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (19, 21, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (20, 11, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (21, 12, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (22, 13, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (23, 25, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (24, 6, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (25, 15, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (26, 23, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (27, 5, 4)
INSERT [dbo].[EventBackToSchool_Color] ([Id], [ColorId], [ShirtTypeId]) VALUES (28, 26, 4)
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Color] OFF
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Order] ON 

INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address], [Status], [Pattern]) VALUES (1, 4, N'#e652c5', N'2XL', N'', 2, N'Quân.......', N'a@a.a', N'13', N'xấu quá quá chà wá đất', CAST(N'2016-08-30 16:29:55.237' AS DateTime), N'ádfghjkk', 4, 1)
INSERT [dbo].[EventBackToSchool_Order] ([Id], [ShirtTypeId], [ColorId], [SizeId], [LinkImage], [Quantity], [CustomerName], [Email], [Phone], [Description], [CreateDate], [Address], [Status], [Pattern]) VALUES (2, 1, N'#000000', N'XS', N'', 2, N'aa', N'asas@ssd', N'2232', N'', CAST(N'2016-08-30 16:30:42.373' AS DateTime), N'dsd', 1, 7)
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Order] OFF
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Pattern] ON 

INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (1, N'Never Dai', N'/PatternShop/30-8-2016-11-56-16-136.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (2, N'Chuyen Hoa', N'/PatternShop/30-8-2016-11-56-45-15.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (3, N'Born To Shine', N'/PatternShop/30-8-2016-11-57-24-250.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (4, N'Sieu Nhan', N'/PatternShop/30-8-2016-12-4-47-152.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (5, N'Family Vip', N'/PatternShop/30-8-2016-12-5-10-636.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (6, N'Matrix Name', N'/PatternShop/30-8-2016-16-12-39-14.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (7, N'Friend 4ever', N'/PatternShop/30-8-2016-16-13-2-512.jpg')
INSERT [dbo].[EventBackToSchool_Pattern] ([ID], [Name], [Link]) VALUES (8, N'Star', N'/PatternShop/30-8-2016-16-13-16-669.jpg')
SET IDENTITY_INSERT [dbo].[EventBackToSchool_Pattern] OFF
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
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (104, 15, N'/BigImages//Images/ProductImages/Untitled-3_0010_Layer 29.jpg', 107)
GO
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
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (205, 16, N'/BigImages//Images/ProductImages/0-_0005s_0009_Layer 51.jpg', 94)
GO
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
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (251, 1, N'/BigImages//Images/ProductImages/D001-white.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (252, 3, N'/BigImages//Images/ProductImages/D001-grey.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (253, 4, N'/BigImages//Images/ProductImages/D001-red.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (254, 8, N'/BigImages//Images/ProductImages/D001-yellow.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (255, 9, N'/BigImages//Images/ProductImages/D001-green.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (257, 11, N'/BigImages//Images/ProductImages/D001-blue.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (258, 15, N'/BigImages//Images/ProductImages/D001-pink.jpg', 111)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (259, 3, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0000_Layer 22.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (260, 2, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0001_Layer 23.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (261, 16, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0002_Layer 24.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (262, 4, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0003_Layer 25.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (263, 7, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0004_Layer 26.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (264, 9, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0005_Layer 27.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (265, 10, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0006_Layer 28.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (266, 11, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0007_Layer 29.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (267, 12, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0008_Layer 30.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (268, 14, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0009_Layer 31.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (269, 6, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0011_Layer 33.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (270, 15, N'/BigImages//Images/ProductImages/6xx_0000s_0004s_0012_Layer 34.jpg', 54)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (271, 12, N'/BigImages//Images/ProductImages/6xx_0007s_0003_Layer 38.jpg', 58)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (272, 9, N'/BigImages//Images/ProductImages/6xx_0007s_0002_Layer 37.jpg', 58)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (273, 8, N'/BigImages//Images/ProductImages/6xx_0007s_0001_Layer 36.jpg', 58)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (274, 3, N'/BigImages//Images/ProductImages/6xx_0007s_0000_Layer 35.jpg', 58)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (275, 8, N'/BigImages//Images/ProductImages/6xx_0006s_0001_Layer 40.jpg', 59)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (276, 3, N'/BigImages//Images/ProductImages/6xx_0006s_0000_Layer 39.jpg', 59)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (277, 9, N'/BigImages//Images/ProductImages/6xx_0006s_0002_Layer 41.jpg', 59)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (278, 11, N'/BigImages//Images/ProductImages/6xx_0006s_0003_Layer 42.jpg', 59)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (279, 3, N'/BigImages//Images/ProductImages/6xx_0005s_0000_Layer 43.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (280, 2, N'/BigImages//Images/ProductImages/6xx_0005s_0001_Layer 44.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (281, 16, N'/BigImages//Images/ProductImages/6xx_0005s_0002_Layer 45.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (282, 4, N'/BigImages//Images/ProductImages/6xx_0005s_0003_Layer 46.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (283, 7, N'/BigImages//Images/ProductImages/6xx_0005s_0004_Layer 47.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (284, 8, N'/BigImages//Images/ProductImages/6xx_0005s_0005_Layer 48.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (285, 9, N'/BigImages//Images/ProductImages/6xx_0005s_0006_Layer 49.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (286, 13, N'/BigImages//Images/ProductImages/6xx_0005s_0010_Layer 53.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (287, 14, N'/BigImages//Images/ProductImages/6xx_0005s_0011_Layer 54.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (288, 6, N'/BigImages//Images/ProductImages/6xx_0005s_0012_Layer 55.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (289, 15, N'/BigImages//Images/ProductImages/6xx_0005s_0013_Layer 56.jpg', 60)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (290, 3, N'/BigImages//Images/ProductImages/6xx_0010s_0000_Layer 12.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (291, 7, N'/BigImages//Images/ProductImages/6xx_0010s_0001_Layer 14.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (292, 8, N'/BigImages//Images/ProductImages/6xx_0010s_0002_Layer 15.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (293, 9, N'/BigImages//Images/ProductImages/6xx_0010s_0003_Layer 16.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (294, 11, N'/BigImages//Images/ProductImages/6xx_0010s_0004_Layer 17.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (295, 15, N'/BigImages//Images/ProductImages/6xx_0010s_0005_Layer 18.jpg', 63)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (297, 15, N'/BigImages//Images/ProductImages/C_0009s_0000_Layer 110.jpg', 66)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (298, 11, N'/BigImages//Images/ProductImages/C_0009s_0001_Layer 109.jpg', 66)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (299, 9, N'/BigImages//Images/ProductImages/C_0009s_0002_Layer 108.jpg', 66)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (300, 8, N'/BigImages//Images/ProductImages/C_0009s_0003_Layer 107.jpg', 66)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (301, 3, N'/BigImages//Images/ProductImages/C_0009s_0004_Layer 106.jpg', 66)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (302, 3, N'/BigImages//Images/ProductImages/C_0008s_0014_Layer 99.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (303, 2, N'/BigImages//Images/ProductImages/C_0008s_0013_Layer 104.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (304, 12, N'/BigImages//Images/ProductImages/C_0008s_0000_Layer 105.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (305, 15, N'/BigImages//Images/ProductImages/C_0008s_0001_Layer 91.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (306, 6, N'/BigImages//Images/ProductImages/C_0008s_0002_Layer 92.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (307, 14, N'/BigImages//Images/ProductImages/C_0008s_0003_Layer 93.jpg', 68)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (308, 13, N'/BigImages//Images/ProductImages/C_0008s_0005_Layer 101.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (309, 11, N'/BigImages//Images/ProductImages/C_0008s_0006_Layer 94.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (310, 10, N'/BigImages//Images/ProductImages/C_0008s_0007_Layer 102.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (311, 9, N'/BigImages//Images/ProductImages/C_0008s_0008_Layer 95.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (312, 8, N'/BigImages//Images/ProductImages/C_0008s_0009_Layer 96.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (313, 7, N'/BigImages//Images/ProductImages/C_0008s_0011_Layer 98.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (314, 16, N'/BigImages//Images/ProductImages/C_0008s_0012_Layer 103.jpg', 68)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (315, 3, N'/BigImages//Images/ProductImages/C_0007s_0005_Layer 90.jpg', 69)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (316, 8, N'/BigImages//Images/ProductImages/C_0007s_0004_Layer 89.jpg', 69)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (317, 11, N'/BigImages//Images/ProductImages/C_0007s_0001_Layer 86.jpg', 69)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (318, 9, N'/BigImages//Images/ProductImages/C_0007s_0003_Layer 88.jpg', 69)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (319, 3, N'/BigImages//Images/ProductImages/C_0006s_0008_Layer 83.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (320, 7, N'/BigImages//Images/ProductImages/C_0006s_0006_Layer 82.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (321, 8, N'/BigImages//Images/ProductImages/C_0006s_0005_Layer 81.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (322, 9, N'/BigImages//Images/ProductImages/C_0006s_0004_Layer 79.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (323, 12, N'/BigImages//Images/ProductImages/C_0006s_0002_Layer 78.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (324, 15, N'/BigImages//Images/ProductImages/C_0006s_0000_Layer 76.jpg', 70)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (325, 3, N'/BigImages//Images/ProductImages/C_0004s_0010_Layer 75.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (326, 15, N'/BigImages//Images/ProductImages/C_0004s_0000_Layer 65.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (327, 4, N'/BigImages//Images/ProductImages/C_0004s_0009_Layer 74.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (328, 7, N'/BigImages//Images/ProductImages/C_0004s_0008_Layer 73.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (329, 6, N'/BigImages//Images/ProductImages/C_0004s_0001_Layer 66.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (330, 14, N'/BigImages//Images/ProductImages/C_0004s_0002_Layer 67.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (331, 8, N'/BigImages//Images/ProductImages/C_0004s_0007_Layer 72.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (332, 12, N'/BigImages//Images/ProductImages/C_0004s_0003_Layer 68.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (333, 11, N'/BigImages//Images/ProductImages/C_0004s_0004_Layer 69.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (334, 9, N'/BigImages//Images/ProductImages/C_0004s_0006_Layer 70.jpg', 71)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (335, 3, N'/BigImages//Images/ProductImages/C_0003s_0012_Layer 48.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (336, 4, N'/BigImages//Images/ProductImages/C_0003s_0011_Layer 47.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (337, 7, N'/BigImages//Images/ProductImages/C_0003s_0010_Layer 46.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (338, 8, N'/BigImages//Images/ProductImages/C_0003s_0009_Layer 45.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (339, 6, N'/BigImages//Images/ProductImages/C_0003s_0001_Layer 37.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (340, 9, N'/BigImages//Images/ProductImages/C_0003s_0008_Layer 44.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (341, 11, N'/BigImages//Images/ProductImages/C_0003s_0006_Layer 42.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (342, 12, N'/BigImages//Images/ProductImages/C_0003s_0005_Layer 41.jpg', 72)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (343, 3, N'/BigImages//Images/ProductImages/C_0002s_0014_Layer 35.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (344, 2, N'/BigImages//Images/ProductImages/C_0002s_0013_Layer 34.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (345, 4, N'/BigImages//Images/ProductImages/C_0002s_0011_Layer 32.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (346, 7, N'/BigImages//Images/ProductImages/C_0002s_0010_Layer 31.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (347, 8, N'/BigImages//Images/ProductImages/C_0002s_0009_Layer 30.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (348, 9, N'/BigImages//Images/ProductImages/C_0002s_0008_Layer 29.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (349, 11, N'/BigImages//Images/ProductImages/C_0002s_0006_Layer 27.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (350, 12, N'/BigImages//Images/ProductImages/C_0002s_0005_Layer 26.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (351, 14, N'/BigImages//Images/ProductImages/C_0002s_0002_Layer 23.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (352, 15, N'/BigImages//Images/ProductImages/C_0002s_0000_Layer 21.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (353, 6, N'/BigImages//Images/ProductImages/C_0002s_0001_Layer 22.jpg', 73)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (354, 3, N'/BigImages//Images/ProductImages/C_0001s_0007_Layer 9.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (355, 4, N'/BigImages//Images/ProductImages/C_0001s_0006_Layer 8.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (356, 7, N'/BigImages//Images/ProductImages/C_0001s_0005_Layer 7.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (357, 9, N'/BigImages//Images/ProductImages/C_0001s_0004_Layer 4.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (358, 11, N'/BigImages//Images/ProductImages/C_0001s_0003_Layer 2.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (359, 14, N'/BigImages//Images/ProductImages/C_0001s_0001_Layer 5.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (360, 6, N'/BigImages//Images/ProductImages/C_0001s_0000_Layer 3.jpg', 75)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (361, 3, N'/BigImages//Images/ProductImages/C_0000s_0009_Layer 10.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (362, 4, N'/BigImages//Images/ProductImages/C_0000s_0008_Layer 11.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (363, 7, N'/BigImages//Images/ProductImages/C_0000s_0007_Layer 12.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (364, 9, N'/BigImages//Images/ProductImages/C_0000s_0006_Layer 13.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (365, 11, N'/BigImages//Images/ProductImages/C_0000s_0004_Layer 15.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (366, 14, N'/BigImages//Images/ProductImages/C_0000s_0002_Layer 17.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (367, 15, N'/BigImages//Images/ProductImages/C_0000s_0000_Layer 19.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (368, 6, N'/BigImages//Images/ProductImages/C_0000s_0001_Layer 20.jpg', 76)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (369, 3, N'/BigImages//Images/ProductImages/C_0005s_0014_Layer 50.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (370, 2, N'/BigImages//Images/ProductImages/C_0005s_0013_Layer 64.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (371, 15, N'/BigImages//Images/ProductImages/C_0005s_0000_Layer 49.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (372, 6, N'/BigImages//Images/ProductImages/C_0005s_0001_Layer 57.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (373, 14, N'/BigImages//Images/ProductImages/C_0005s_0002_Layer 58.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (374, 13, N'/BigImages//Images/ProductImages/C_0005s_0004_Layer 60.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (375, 12, N'/BigImages//Images/ProductImages/C_0005s_0005_Layer 61.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (376, 11, N'/BigImages//Images/ProductImages/C_0005s_0006_Layer 56.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (377, 9, N'/BigImages//Images/ProductImages/C_0005s_0008_Layer 54.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (378, 10, N'/BigImages//Images/ProductImages/C_0005s_0007_Layer 62.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (379, 8, N'/BigImages//Images/ProductImages/C_0005s_0009_Layer 53.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (380, 7, N'/BigImages//Images/ProductImages/C_0005s_0010_Layer 52.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (381, 4, N'/BigImages//Images/ProductImages/C_0005s_0011_Layer 51.jpg', 77)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (382, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0002_Layer 328.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (383, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0000_Layer 326.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (386, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0003_Layer 329.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (388, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0001_Layer 327.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (389, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0004_Layer 330.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (390, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0005_Layer 332.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (391, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0000s_0006_Layer 331.jpg', 112)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (393, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0000_Layer 333.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (394, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0002_Layer 335.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (395, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0001_Layer 334.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (396, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0003_Layer 336.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (397, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0004_Layer 337.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (398, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0005_Layer 338.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (399, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0006_Layer 339.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (400, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0001s_0007_Layer 340.jpg', 113)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (401, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0002s_0000_Layer 341.jpg', 114)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (402, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0002s_0001_Layer 342.jpg', 114)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (403, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0002s_0002_Layer 343.jpg', 114)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (404, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0003s_0002_Layer 346.jpg', 115)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (405, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0003s_0000_Layer 344.jpg', 115)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (407, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0003s_0001_Layer 345.jpg', 115)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (408, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0003s_0003_Layer 347.jpg', 115)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (409, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0003s_0004_Layer 348.jpg', 115)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (410, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0003s_0005_Layer 349.jpg', 115)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (411, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0000_Layer 350.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (412, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0002_Layer 352.jpg', 116)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (413, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0001_Layer 351.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (414, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0003_Layer 353.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (415, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0004_Layer 354.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (416, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0005_Layer 355.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (417, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0006_Layer 356.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (418, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0007_Layer 357.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (419, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0004s_0008_Layer 358.jpg', 116)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (420, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0005s_0000_Layer 359.jpg', 117)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (421, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0005s_0001_Layer 360.jpg', 117)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (422, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0005s_0002_Layer 361.jpg', 117)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (423, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0001_Layer 363.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (424, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0000_Layer 362.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (425, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0002_Layer 364.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (426, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0003_Layer 365.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (427, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0004_Layer 367.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (428, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0005_Layer 368.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (429, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0006s_0006_Layer 366.jpg', 118)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (430, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0007s_0002_Layer 371.jpg', 119)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (432, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0007s_0000_Layer 369.jpg', 119)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (433, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0007s_0001_Layer 370.jpg', 119)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (434, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0007s_0003_Layer 372.jpg', 119)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (435, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0007s_0004_Layer 373.jpg', 119)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (436, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0007s_0005_Layer 374.jpg', 119)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (437, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0008s_0000_Layer 308.jpg', 120)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (438, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0008s_0001_Layer 310.jpg', 120)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (439, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0008s_0002_Layer 309.jpg', 120)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (440, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0009s_0000_Layer 311.jpg', 121)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (441, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0009s_0001_Layer 313.jpg', 121)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (442, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0009s_0002_Layer 312.jpg', 121)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (443, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0010s_0000_Layer 314.jpg', 122)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (444, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0010s_0001_Layer 315.jpg', 122)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (445, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0010s_0002_Layer 316.jpg', 122)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (446, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0011s_0000_Layer 317.jpg', 123)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (447, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0011s_0001_Layer 318.jpg', 123)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (448, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0011s_0002_Layer 319.jpg', 123)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (449, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0012s_0000_Layer 320.jpg', 124)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (450, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0012s_0001_Layer 321.jpg', 124)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (451, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0012s_0002_Layer 322.jpg', 124)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (452, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0013s_0000_Layer 323.jpg', 125)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (453, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0013s_0001_Layer 324.jpg', 125)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (454, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0013s_0002_Layer 325.jpg', 125)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (455, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0002_Layer 288.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (456, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0000_Layer 286.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (457, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0001_Layer 287.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (458, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0003_Layer 289.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (459, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0004_Layer 290.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (460, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0005_Layer 291.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (461, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0006_Layer 292.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (462, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0014s_0007_Layer 293.jpg', 126)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (463, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0015s_0002_Layer 296.jpg', 127)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (464, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0015s_0000_Layer 294.jpg', 127)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (465, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0015s_0001_Layer 295.jpg', 127)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (466, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0015s_0003_Layer 297.jpg', 127)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (467, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0015s_0004_Layer 298.jpg', 127)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (468, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0015s_0005_Layer 299.jpg', 127)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (469, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0017s_0001_Layer 230.jpg', 129)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (471, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0017s_0000_Layer 231.jpg', 129)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (472, 5, N'/BigImages//Images/ProductImages/YTFS_0000s_0017s_0002_Layer 232.jpg', 129)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (473, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0001_Layer 301.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (474, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0000_Layer 300.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (475, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0002_Layer 302.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (476, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0003_Layer 303.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (479, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0004_Layer 304.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (480, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0005_Layer 306.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (481, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0016s_0007_Layer 305.jpg', 128)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (482, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0002_Layer 235.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (483, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0000_Layer 233.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (484, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0001_Layer 234.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (485, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0003_Layer 236.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (486, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0004_Layer 237.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (487, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0005_Layer 238.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (488, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0018s_0006_Layer 239.jpg', 130)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (489, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0019s_0001_Layer 241.jpg', 131)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (490, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0019s_0000_Layer 240.jpg', 131)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (491, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0019s_0002_Layer 242.jpg', 131)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (492, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0019s_0003_Layer 243.jpg', 131)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (493, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0019s_0004_Layer 244.jpg', 131)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (495, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0002_Layer 247.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (496, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0000_Layer 245.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (497, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0001_Layer 246.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (498, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0003_Layer 248.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (499, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0004_Layer 249.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (500, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0005_Layer 252.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (501, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0006_Layer 251.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (502, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0020s_0007_Layer 250.jpg', 132)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (503, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0021s_0000_Layer 253.jpg', 133)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (504, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0021s_0002_Layer 255.jpg', 133)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (505, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0021s_0001_Layer 254.jpg', 133)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (506, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0021s_0003_Layer 256.jpg', 133)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (507, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0021s_0004_Layer 257.jpg', 133)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (508, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0021s_0005_Layer 258.jpg', 133)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (509, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0022s_0002_Layer 261.jpg', 134)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (510, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0022s_0000_Layer 259.jpg', 134)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (511, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0022s_0001_Layer 260.jpg', 134)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (512, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0022s_0003_Layer 262.jpg', 134)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (513, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0022s_0004_Layer 263.jpg', 134)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (514, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0022s_0005_Layer 264.jpg', 134)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (515, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0023s_0000_Layer 265.jpg', 135)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (516, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0023s_0001_Layer 266.jpg', 135)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (517, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0023s_0002_Layer 267.jpg', 135)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (518, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0023s_0003_Layer 269.jpg', 135)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (519, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0023s_0004_Layer 268.jpg', 135)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (520, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0023s_0005_Layer 270.jpg', 135)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (521, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0024s_0000_Layer 271.jpg', 136)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (522, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0024s_0001_Layer 272.jpg', 136)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (523, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0024s_0002_Layer 273.jpg', 136)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (524, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0025s_0000_Layer 274.jpg', 137)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (525, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0025s_0001_Layer 276.jpg', 137)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (526, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0025s_0002_Layer 275.jpg', 137)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (527, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0025s_0003_Layer 277.jpg', 137)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (528, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0002_Layer 280.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (529, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0000_Layer 278.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (530, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0001_Layer 279.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (531, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0003_Layer 281.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (532, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0004_Layer 282.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (533, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0005_Layer 285.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (534, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0006_Layer 284.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (535, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0026s_0007_Layer 283.jpg', 138)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (536, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0027s_0002_Layer 179.jpg', 139)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (537, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0027s_0000_Layer 181.jpg', 139)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (538, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0027s_0001_Layer 180.jpg', 139)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (539, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0027s_0003_Layer 178.jpg', 139)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (540, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0027s_0004_Layer 177.jpg', 139)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (541, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0027s_0005_Layer 176.jpg', 139)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (542, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0028s_0002_Layer 184.jpg', 140)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (543, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0028s_0000_Layer 182.jpg', 140)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (544, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0028s_0001_Layer 183.jpg', 140)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (545, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0028s_0003_Layer 185.jpg', 140)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (546, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0028s_0004_Layer 186.jpg', 140)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (547, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0028s_0005_Layer 187.jpg', 140)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (548, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0029s_0002_Layer 190.jpg', 141)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (549, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0029s_0000_Layer 188.jpg', 141)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (550, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0029s_0001_Layer 189.jpg', 141)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (551, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0029s_0003_Layer 191.jpg', 141)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (552, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0029s_0004_Layer 192.jpg', 141)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (553, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0029s_0005_Layer 193.jpg', 141)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (554, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0030s_0002_Layer 196.jpg', 142)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (555, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0030s_0000_Layer 194.jpg', 142)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (556, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0030s_0001_Layer 195.jpg', 142)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (557, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0030s_0003_Layer 197.jpg', 142)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (558, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0030s_0004_Layer 198.jpg', 142)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (559, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0030s_0005_Layer 199.jpg', 142)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (560, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0031s_0002_Layer 202.jpg', 143)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (561, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0031s_0000_Layer 200.jpg', 143)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (562, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0031s_0001_Layer 201.jpg', 143)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (563, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0031s_0003_Layer 203.jpg', 143)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (564, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0031s_0004_Layer 204.jpg', 143)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (565, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0031s_0005_Layer 205.jpg', 143)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (566, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0032s_0002_Layer 208.jpg', 144)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (567, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0032s_0000_Layer 206.jpg', 144)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (569, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0032s_0003_Layer 209.jpg', 144)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (570, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0032s_0001_Layer 207.jpg', 144)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (571, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0032s_0004_Layer 210.jpg', 144)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (572, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0032s_0005_Layer 211.jpg', 144)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (573, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0033s_0002_Layer 214.jpg', 145)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (574, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0033s_0000_Layer 212.jpg', 145)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (575, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0033s_0001_Layer 213.jpg', 145)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (576, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0033s_0003_Layer 215.jpg', 145)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (577, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0033s_0004_Layer 216.jpg', 145)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (578, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0033s_0005_Layer 217.jpg', 145)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (579, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0034s_0002_Layer 220.jpg', 146)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (580, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0034s_0000_Layer 218.jpg', 146)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (581, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0034s_0001_Layer 219.jpg', 146)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (582, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0034s_0003_Layer 221.jpg', 146)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (583, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0034s_0004_Layer 222.jpg', 146)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (584, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0034s_0005_Layer 223.jpg', 146)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (585, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0035s_0002_Layer 226.jpg', 147)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (586, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0035s_0000_Layer 224.jpg', 147)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (587, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0035s_0001_Layer 225.jpg', 147)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (588, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0035s_0003_Layer 227.jpg', 147)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (589, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0035s_0004_Layer 228.jpg', 147)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (590, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0035s_0005_Layer 229.jpg', 147)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (591, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0039s_0002_Layer 166 (merged).jpg', 148)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (592, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0039s_0000_Layer 164 (merged).jpg', 148)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (593, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0039s_0001_Layer 165 (merged).jpg', 148)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (594, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0039s_0003_Layer 167 (merged).jpg', 148)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (595, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0039s_0004_Layer 168 (merged).jpg', 148)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (596, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0039s_0005_Layer 169 (merged).jpg', 148)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (597, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0040s_0002_Layer 135 (merged).jpg', 149)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (598, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0040s_0000_Layer 133 (merged).jpg', 149)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (599, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0040s_0001_Layer 134 (merged).jpg', 149)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (600, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0040s_0003_Layer 136 (merged).jpg', 149)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (601, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0040s_0004_Layer 137 (merged).jpg', 149)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (602, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0040s_0005_Layer 138 (merged).jpg', 149)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (603, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0041s_0002_Layer 160 (merged).jpg', 150)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (604, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0041s_0000_Layer 158 (merged).jpg', 150)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (605, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0041s_0001_Layer 159 (merged).jpg', 150)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (606, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0041s_0003_Layer 161 (merged).jpg', 150)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (607, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0041s_0004_Layer 162 (merged).jpg', 150)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (608, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0041s_0005_Layer 163 (merged).jpg', 150)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (609, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0042s_0002_Layer 142 (merged).jpg', 151)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (610, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0042s_0000_Layer 140 (merged).jpg', 151)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (611, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0042s_0001_Layer 141 (merged).jpg', 151)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (612, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0042s_0003_Layer 143 (merged).jpg', 151)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (613, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0042s_0004_Layer 144 (merged).jpg', 151)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (614, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0042s_0005_Layer 145 (merged).jpg', 151)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (615, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0044s_0002_Layer 111.jpg', 152)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (616, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0044s_0000_Layer 110.jpg', 152)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (617, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0044s_0001_Layer 109.jpg', 152)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (618, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0044s_0003_Layer 113.jpg', 152)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (619, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0044s_0004_Layer 112.jpg', 152)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (620, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0044s_0005_Layer 114.jpg', 152)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (621, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0002_Layer 103.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (622, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0000_Layer 101.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (623, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0001_Layer 102.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (624, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0003_Layer 104.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (625, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0004_Layer 105.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (626, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0005_Layer 106.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (627, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0006_Layer 108.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (628, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0045s_0007_Layer 107.jpg', 153)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (629, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0046s_0000_Layer 100.jpg', 154)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (630, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0046s_0001_Layer 99.jpg', 154)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (631, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0046s_0002_Layer 98.jpg', 154)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (632, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0046s_0003_Layer 97.jpg', 154)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (633, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0002_Layer 90.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (634, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0000_Layer 88.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (635, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0001_Layer 89.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (636, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0003_Layer 91.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (637, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0004_Layer 92.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (638, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0005_Layer 93.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (639, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0006_Layer 94.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (640, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0007_Layer 95.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (641, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0047s_0008_Layer 96.jpg', 155)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (642, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0002_Layer 83.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (643, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0003_Layer 84.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (644, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0001_Layer 82.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (645, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0000_Layer 81.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (646, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0004_Layer 85.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (647, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0005_Layer 87.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (648, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0048s_0006_Layer 86.jpg', 156)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (649, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0049s_0001_Layer 77.jpg', 157)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (650, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0049s_0004_Layer 80.jpg', 157)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (651, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0049s_0000_Layer 76.jpg', 157)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (652, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0049s_0002_Layer 79.jpg', 157)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (653, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0049s_0003_Layer 78.jpg', 157)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (654, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0049s_0004_Layer 80.jpg', 157)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (655, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0050s_0000_Layer 71.jpg', 158)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (656, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0050s_0001_Layer 73.jpg', 158)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (657, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0050s_0002_Layer 72.jpg', 158)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (658, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0050s_0003_Layer 74.jpg', 158)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (659, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0050s_0004_Layer 75.jpg', 158)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (660, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0051s_0000_Layer 68.jpg', 159)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (661, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0051s_0001_Layer 69.jpg', 159)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (662, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0051s_0002_Layer 70.jpg', 159)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (663, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0052s_0002_Layer 62.jpg', 160)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (664, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0052s_0000_Layer 64.jpg', 160)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (665, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0052s_0001_Layer 63.jpg', 160)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (666, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0052s_0003_Layer 65.jpg', 160)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (667, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0052s_0004_Layer 66.jpg', 160)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (668, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0052s_0005_Layer 67.jpg', 160)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (669, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0002_Layer 57.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (670, 9, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0000_Layer 56.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (671, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0001_Layer 55.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (672, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0003_Layer 58.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (673, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0004_Layer 59.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (674, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0005_Layer 60.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (675, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0053s_0006_Layer 61.jpg', 161)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (676, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0054s_0000_Layer 49.jpg', 162)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (677, 11, N'/BigImages//Images/ProductImages/YTFS_0000s_0054s_0001_Layer 54.jpg', 162)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (678, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0054s_0002_Layer 50.jpg', 162)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (680, 10, N'/BigImages//Images/ProductImages/YTFS_0000s_0054s_0003_Layer 52.jpg', 162)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (681, 16, N'/BigImages//Images/ProductImages/YTFS_0000s_0054s_0004_Layer 53.jpg', 162)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (682, 2, N'/BigImages//Images/ProductImages/YTFS_0000s_0054s_0005_Layer 51.jpg', 162)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (683, 1, N'/BigImages//Images/ProductImages/YTFS_0000s_0055s_0001_Layer 46.jpg', 163)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (684, 3, N'/BigImages//Images/ProductImages/YTFS_0000s_0055s_0002_Layer 47.jpg', 163)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (685, 6, N'/BigImages//Images/ProductImages/YTFS_0000s_0055s_0000_Layer 48.jpg', 163)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (686, 15, N'/BigImages//Images/ProductImages/YTFS_0000s_0055s_0003_Layer 45.jpg', 163)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (687, 2, N'/BigImages//Images/ProductImages/12.jpg', 164)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (688, 2, N'/BigImages//Images/ProductImages/13.jpg', 165)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (689, 2, N'/BigImages//Images/ProductImages/14.jpg', 166)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (690, 1, N'/BigImages//Images/ProductImages/15.jpg', 167)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (691, 1, N'/BigImages//Images/ProductImages/16.jpg', 168)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (693, 14, N'/BigImages//Images/ProductImages/18.jpg', 169)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (694, 14, N'/BigImages//Images/ProductImages/19.jpg', 170)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (696, 15, N'/BigImages//Images/ProductImages/22.jpg', 172)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (697, 15, N'/BigImages//Images/ProductImages/23.jpg', 173)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (698, 14, N'/BigImages//Images/ProductImages/20.jpg', 171)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (699, 15, N'/BigImages//Images/ProductImages/21.jpg', 174)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (700, 7, N'/BigImages//Images/ProductImages/201504171441579225.png', 175)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (701, 15, N'/BigImages//Images/ProductImages/201504171442028888.png', 175)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (702, 1, N'/BigImages//Images/ProductImages/201504171441527952.png', 175)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (703, 8, N'/BigImages//Images/ProductImages/201504171441469699.png', 175)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (704, 12, N'/BigImages//Images/ProductImages/201504171441407445.png', 175)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (705, 15, N'/BigImages//Images/ProductImages/201502051825318575.png', 176)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (706, 2, N'/BigImages//Images/ProductImages/201502051824354623.png', 176)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (707, 11, N'/BigImages//Images/ProductImages/201502051824221065.png', 176)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (708, 8, N'/BigImages//Images/ProductImages/201502051825576550.png', 176)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (709, 1, N'/BigImages//Images/ProductImages/201502051826291408.png', 176)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (710, 8, N'/BigImages//Images/ProductImages/201504171441469699.png', 177)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (711, 11, N'/BigImages//Images/ProductImages/201504171441407445.png', 177)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (712, 1, N'/BigImages//Images/ProductImages/201504171441527952.png', 177)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (713, 7, N'/BigImages//Images/ProductImages/201504171441579225.png', 177)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (714, 15, N'/BigImages//Images/ProductImages/201504171442028888.png', 177)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (715, 2, N'/BigImages//Images/ProductImages/201504151442375982.png', 178)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (716, 4, N'/BigImages//Images/ProductImages/do.png', 179)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (717, 7, N'/BigImages//Images/ProductImages/cam.png', 179)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (718, 3, N'/BigImages//Images/ProductImages/xam.png', 179)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (719, 11, N'/BigImages//Images/ProductImages/xanh duong.png', 179)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (720, 9, N'/BigImages//Images/ProductImages/xanh la.png', 179)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (721, 15, N'/BigImages//Images/ProductImages/201406141511119062.png', 180)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (722, 1, N'/BigImages//Images/ProductImages/201406141516287656.png', 180)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (723, 7, N'/BigImages//Images/ProductImages/201406141516404375.png', 180)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (724, 8, N'/BigImages//Images/ProductImages/201406231001442343.png', 180)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (725, 11, N'/BigImages//Images/ProductImages/201501121122272473.png', 181)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (726, 2, N'/BigImages//Images/ProductImages/201501121122389600.png', 181)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (727, 8, N'/BigImages//Images/ProductImages/201501121123085287.png', 181)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (728, 7, N'/BigImages//Images/ProductImages/201501121123149230.png', 181)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (729, 15, N'/BigImages//Images/ProductImages/201501121123227975.png', 181)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (730, 2, N'/BigImages//Images/ProductImages/den.png', 182)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (731, 16, N'/BigImages//Images/ProductImages/nau.png', 182)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (732, 8, N'/BigImages//Images/ProductImages/image108.png', 182)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (733, 12, N'/BigImages//Images/ProductImages/xanh.jpg', 183)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (734, 8, N'/BigImages//Images/ProductImages/image106 copy.jpg', 183)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (735, 6, N'/BigImages//Images/ProductImages/hong.jpg', 183)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (736, 16, N'/BigImages//Images/ProductImages/HTB1Sp.1GVXXXXcbXFXXq6xXFXXXG.jpg', 184)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (737, 13, N'/BigImages//Images/ProductImages/HTB1ryc5GVXXXXbqXpXXq6xXFXXXp.jpg', 184)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (738, 3, N'/BigImages//Images/ProductImages/HTB1FC38GVXXXXbpXXXXq6xXFXXX1.jpg', 184)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (739, 7, N'/BigImages//Images/ProductImages/HTB15eg8GpXXXXbJaXXXq6xXFXXXQ.jpg', 185)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (740, 6, N'/BigImages//Images/ProductImages/HTB1yX4VGFXXXXXwaXXXq6xXFXXX9.jpg', 185)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (741, 12, N'/BigImages//Images/ProductImages/HTB1rYNnGFXXXXanXVXXq6xXFXXXO.jpg', 185)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (742, 3, N'/BigImages//Images/ProductImages/HTB1iEhzGFXXXXX2XVXXq6xXFXXXQ1.jpg', 185)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (743, 8, N'/BigImages//Images/ProductImages/HTB1iEhzGFXXXXX2XVXXq6xXFXXXQ.jpg', 185)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (744, 12, N'/BigImages//Images/ProductImages/201404231010467968.png', 186)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (745, 2, N'/BigImages//Images/ProductImages/201404231016342187.png', 186)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (746, 7, N'/BigImages//Images/ProductImages/201404231017471718.png', 186)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (748, 9, N'/BigImages//Images/ProductImages/201404231113113593.png', 186)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (749, 6, N'/BigImages//Images/ProductImages/201405151806272968.png', 186)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (750, 11, N'/BigImages//Images/ProductImages/201403281011582812.png', 187)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (751, 2, N'/BigImages//Images/ProductImages/201403281012066562.png', 187)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (752, 4, N'/BigImages//Images/ProductImages/201403281012144218.png', 187)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (753, 14, N'/BigImages//Images/ProductImages/201505201132257795.jpg', 188)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (754, 16, N'/BigImages//Images/ProductImages/201505201132018181.jpg', 188)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (755, 8, N'/BigImages//Images/ProductImages/201505201131478203.jpg', 188)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (756, 2, N'/BigImages//Images/ProductImages/201505201131333115.jpg', 188)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (757, 12, N'/BigImages//Images/ProductImages/201505201131185107.jpg', 188)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (758, 6, N'/BigImages//Images/ProductImages/380WX (1).jpg', 189)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (759, 7, N'/BigImages//Images/ProductImages/cam.jpg', 189)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (760, 14, N'/BigImages//Images/ProductImages/tim.jpg', 189)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (761, 8, N'/BigImages//Images/ProductImages/vang.jpg', 189)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (762, 11, N'/BigImages//Images/ProductImages/xanh duong.jpg', 189)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (763, 7, N'/BigImages//Images/ProductImages/cam.png', 190)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (764, 11, N'/BigImages//Images/ProductImages/61.jpg', 190)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (765, 14, N'/BigImages//Images/ProductImages/CX460INEARSTYLEPLASTICWITHHDMIC_767bf98e-4803-4dcb-ad9b-bbd0194c24cc.png', 190)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (766, 6, N'/BigImages//Images/ProductImages/hong.png', 190)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (767, 10, N'/BigImages//Images/ProductImages/201507201433325154.png', 191)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (768, 2, N'/BigImages//Images/ProductImages/201507201434391872.png', 191)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (769, 1, N'/BigImages//Images/ProductImages/201507201434473497.png', 191)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (771, 8, N'/BigImages//Images/ProductImages/201507201434598304.png', 191)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (772, 7, N'/BigImages//Images/ProductImages/201507201435100770.png', 191)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (773, 7, N'/BigImages//Images/ProductImages/201507201518467646.png', 192)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (774, 14, N'/BigImages//Images/ProductImages/201507201524352926.png', 192)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (775, 10, N'/BigImages//Images/ProductImages/201507201517298682.png', 192)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (776, 2, N'/BigImages//Images/ProductImages/201507201517131253.png', 192)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (777, 12, N'/BigImages//Images/ProductImages/201507201517042298.png', 192)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (778, 8, N'/BigImages//Images/ProductImages/201507011056348774.png', 193)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (779, 16, N'/BigImages//Images/ProductImages/201507011056404237.png', 193)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (780, 2, N'/BigImages//Images/ProductImages/201507011057019030.png', 193)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (781, 1, N'/BigImages//Images/ProductImages/201507011057351039.png', 193)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (782, 6, N'/BigImages//Images/ProductImages/201405151810084843.png', 194)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (783, 14, N'/BigImages//Images/ProductImages/201403271612423906.png', 194)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (784, 2, N'/BigImages//Images/ProductImages/201403271613018437.png', 194)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (785, 12, N'/BigImages//Images/ProductImages/201403271603195000.png', 194)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (786, 16, N'/BigImages//Images/ProductImages/201403271603003437.png', 194)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (788, 4, N'/BigImages//Images/ProductImages/yison-ex710r-400x400-imae9ckrzeug563g.jpeg', 195)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (789, 8, N'/BigImages//Images/ProductImages/xanh.jpg', 195)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (790, 4, N'/BigImages//Images/ProductImages/51jSVX3LxtL._SL1001_.jpg', 196)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (791, 8, N'/BigImages//Images/ProductImages/51zvnVH6j8L._SL1001_.jpg', 196)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (792, 2, N'/BigImages//Images/ProductImages/den.jpg', 196)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (793, 17, N'/BigImages//Images/ProductImages/nau.jpg', 195)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (794, 2, N'/BigImages//Images/ProductImages/201506241512001353.png', 197)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (795, 7, N'/BigImages//Images/ProductImages/201506241512001533.png', 197)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (796, 12, N'/BigImages//Images/ProductImages/201506241512001683.png', 197)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (797, 9, N'/BigImages//Images/ProductImages/201506241512002393.png', 197)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (798, 12, N'/BigImages//Images/ProductImages/51ft7l9raKL._SL1001_.jpg', 198)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (799, 2, N'/BigImages//Images/ProductImages/yison-headphones-celebrat-d1--mic-blueredwhiteblack-moq50.jpg', 198)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (800, 1, N'/BigImages//Images/ProductImages/yison-headphones-celebrat-d1--mic-blueredwhiteblack-moq50 (2).jpg', 198)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (801, 1, N'/BigImages//Images/ProductImages/51ILvEqQhuL._SL1001_.jpg', 199)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (802, 2, N'/BigImages//Images/ProductImages/YISON-D2-Kopfhoerer-in.jpg', 199)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (803, 2, N'/BigImages//Images/ProductImages/D5-藏青色.png', 200)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (804, 1, N'/BigImages//Images/ProductImages/D5-银色.png', 200)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (805, 8, N'/BigImages//Images/ProductImages/D5-香宾金色.png', 200)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (806, 1, N'/BigImages//Images/ProductImages/d6 trang.jpg', 201)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (807, 8, N'/BigImages//Images/ProductImages/d6 vamg.jpg', 201)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (809, 15, N'/BigImages//Images/ProductImages/d6 hong.jpg', 201)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (810, 13, N'/BigImages//Images/ProductImages/1.ao.jpg', 202)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (811, 9, N'/BigImages//Images/ProductImages/１.jpg', 203)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (812, 16, N'/BigImages//Images/ProductImages/2.ao.jpg', 204)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (813, 2, N'/BigImages//Images/ProductImages/2.jpg', 205)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (814, 1, N'/BigImages//Images/ProductImages/3.ao.jpg', 206)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (815, 2, N'/BigImages//Images/ProductImages/3.jpg', 207)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (816, 2, N'/BigImages//Images/ProductImages/4.jpg', 208)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (817, 2, N'/BigImages//Images/ProductImages/5.jpg', 209)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (818, 2, N'/BigImages//Images/ProductImages/6.jpg', 210)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (819, 2, N'/BigImages//Images/ProductImages/7.jpg', 211)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (820, 1, N'/BigImages//Images/ProductImages/8.jpg', 212)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (821, 2, N'/BigImages//Images/ProductImages/10.jpg', 213)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (822, 2, N'/BigImages//Images/ProductImages/11.jpg', 214)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (823, 1, N'/BigImages//Images/ProductImages/ao(1).jpg', 215)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (824, 1, N'/BigImages//Images/ProductImages/ao(2).jpg', 216)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (825, 1, N'/BigImages//Images/ProductImages/ao(3).jpg', 217)
GO
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (826, 2, N'/BigImages//Images/ProductImages/ao.jpg', 218)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (827, 1, N'/BigImages//Images/ProductImages/S(1).png', 219)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (829, 2, N'/BigImages//Images/ProductImages/10.jpg', 228)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (830, 14, N'/BigImages//Images/ProductImages/S.png', 227)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (831, 18, N'/BigImages//Images/ProductImages/S(8).png', 226)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (832, 3, N'/BigImages//Images/ProductImages/S(7).png', 225)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (836, 2, N'/BigImages//Images/ProductImages/S(6).png', 224)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (837, 1, N'/BigImages//Images/ProductImages/S(5).png', 223)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (838, 18, N'/BigImages//Images/ProductImages/S(4).png', 222)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (839, 18, N'/BigImages//Images/ProductImages/S(3).png', 221)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (840, 18, N'/BigImages//Images/ProductImages/S(2).png', 220)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (841, 1, N'/BigImages//Images/ProductImages/Hang-ton-kho_0014_Layer 1.jpg', 229)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (842, 13, N'/BigImages//Images/ProductImages/Hang-ton-kho_0012_Layer 7.jpg', 230)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (844, 2, N'/BigImages//Images/ProductImages/Hang-ton-kho_0010_Layer 9.jpg', 231)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (845, 2, N'/BigImages//Images/ProductImages/Hang-ton-kho_0009_Layer 10.jpg', 232)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (846, 6, N'/BigImages//Images/ProductImages/Hang-ton-kho_0008_Layer 12.jpg', 233)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (847, 13, N'/BigImages//Images/ProductImages/Hang-ton-kho_0007_Layer 14.jpg', 234)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (848, 3, N'/BigImages//Images/ProductImages/Hang-ton-kho_0006_Layer 15.jpg', 235)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (849, 1, N'/BigImages//Images/ProductImages/Hang-ton-kho_0004_Background copy 2.jpg', 236)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (850, 3, N'/BigImages//Images/ProductImages/Hang-ton-kho_0003_Layer 11.jpg', 237)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (852, 17, N'/BigImages//Images/ProductImages/Hang-ton-kho_0002_Layer 2.jpg', 238)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (853, 13, N'/BigImages//Images/ProductImages/Hang-ton-kho_0001_Layer 3.jpg', 239)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (854, 1, N'/BigImages//Images/ProductImages/Hang-ton-kho_0000_Layer 5.jpg', 240)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (855, 11, N'/BigImages//Images/ProductImages/Resize_0007_Layer 8.jpg', 241)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (856, 6, N'/BigImages//Images/ProductImages/Resize_0006_Layer 9.jpg', 242)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (857, 3, N'/BigImages//Images/ProductImages/Resize_0005_Layer 10.jpg', 243)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (858, 1, N'/BigImages//Images/ProductImages/Resize_0004_Layer 11.jpg', 244)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (859, 3, N'/BigImages//Images/ProductImages/Resize_0003_Layer 4.jpg', 245)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (860, 4, N'/BigImages//Images/ProductImages/Resize_0002_Layer 5.jpg', 249)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (861, 17, N'/BigImages//Images/ProductImages/Resize_0001_Layer 6.jpg', 250)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (862, 1, N'/BigImages//Images/ProductImages/Resize_0009_Layer 2.jpg', 246)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (863, 2, N'/BigImages//Images/ProductImages/Resize_0000_Layer 7.jpg', 248)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (864, 2, N'/BigImages//Images/ProductImages/Resize_0010_Layer 1.jpg', 247)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (865, 11, N'/BigImages//Images/ProductImages/13876328_1046315358771240_6251445573639189268_n.jpg', 251)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (866, 4, N'/BigImages//Images/ProductImages/13882265_1046315362104573_7761236251398406730_n.jpg', 252)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (867, 1, N'/BigImages//Images/ProductImages/13912705_1046315142104595_9110567028082065604_n.jpg', 253)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (868, 1, N'/BigImages//Images/ProductImages/13962592_1046315748771201_5942865487611334920_n.jpg', 254)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (869, 12, N'/BigImages//Images/ProductImages/13962707_1046315332104576_7637004134757161145_n.jpg', 255)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (870, 2, N'/BigImages//Images/ProductImages/49 Shades of A11 - Black.jpg', 256)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (871, 1, N'/BigImages//Images/ProductImages/49 Shades of A11 - White.jpg', 256)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (872, 1, N'/BigImages//Images/ProductImages/A2 - We are all made of stars - White.jpg', 257)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (873, 2, N'/BigImages//Images/ProductImages/A2 - We are all made of stars.jpg', 257)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (874, 1, N'/BigImages//Images/ProductImages/Anh em minh la mot gia dinh - A7 - White.jpg', 258)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (875, 2, N'/BigImages//Images/ProductImages/Anh em minh la mot gia dinh - A7 - Black.jpg', 258)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (876, 1, N'/BigImages//Images/ProductImages/Toi yeu A9 - White.jpg', 259)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (877, 2, N'/BigImages//Images/ProductImages/Toi yeu A9 - Black.jpg', 259)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (878, 1, N'/BigImages//Images/ProductImages/Ao nhom 1.jpg', 260)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (879, 1, N'/BigImages//Images/ProductImages/custom1.jpg', 264)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (880, 1, N'/BigImages//Images/ProductImages/custom2.jpg', 263)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (881, 1, N'/BigImages//Images/ProductImages/custom3.jpg', 262)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (882, 1, N'/BigImages//Images/ProductImages/custom-shirt-plain.jpg', 261)
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
', N'http://image.24h.com.vn/upload/2-2016/images/2016-05-13/1463109493-1463046922-3.jpg', 0, CAST(N'2016-08-07 20:57:28.700' AS DateTime))
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
', N'http://img.v3.news.zdn.vn/w660/Uploaded/cqxrcajwp/2016_08_03/quan_short_9.jpg', 1, CAST(N'2016-08-07 21:34:43.683' AS DateTime))
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
', N'http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/s6-1470293994-width660height563.jpg', 1, CAST(N'2016-08-07 21:39:11.333' AS DateTime))
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
', N'http://image.24h.com.vn/upload/3-2016/images/2016-08-06/1470490914-146943586946555-0.jpg', 1, CAST(N'2016-08-07 21:43:27.597' AS DateTime))
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
', N'http://eva-img.24hstatic.com/upload/3-2016/images/2016-08-04/vvvv-k--5--1470282402-width523height724.jpg', 1, CAST(N'2016-08-07 21:46:12.207' AS DateTime))
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
', N'http://img.f21.ngoisao.vnecdn.net/2016/08/01/mix-quan-short-10-2487-1470046573.jpg', 0, CAST(N'2016-08-07 21:48:23.373' AS DateTime))
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
', N'http://img.f21.ngoisao.vnecdn.net/2016/07/28/24-1-3509-1469705856.jpg', 0, CAST(N'2016-08-07 21:50:16.903' AS DateTime))
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (4, N'XFGDFGD', N'FGDFGDF', 1, CAST(N'2016-08-03 18:17:54.657' AS DateTime), NULL, NULL, N'', N'')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (5, N'Tui', N'01658564969', 4, CAST(N'2016-08-15 13:26:40.170' AS DateTime), NULL, NULL, N'41 le van huan.', N'star.02000@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (6, N'Kun', N'123581321', 1, CAST(N'2016-08-15 13:44:54.897' AS DateTime), NULL, NULL, N'', N'a@a.a')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (7, N'All Web data analytics', N'111111111111', 1, CAST(N'2016-08-16 16:40:42.560' AS DateTime), NULL, NULL, N'nnn', N'a@a.a')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (8, N'＠＠＠＠', N'0989144981', 1, CAST(N'2016-08-17 13:56:08.603' AS DateTime), NULL, NULL, N'tuananqbbohwe', N'tuaja.qwe.q')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (9, N'Tâm tít', N'0968421581', 1, CAST(N'2016-08-17 22:27:10.650' AS DateTime), NULL, NULL, N'qowi12 ', N'thantam')
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (10, N'Cho Êm Test Tí nà', N'0902345678', 1, CAST(N'2016-08-27 21:42:31.077' AS DateTime), NULL, NULL, N'41 hu?n sàn', N'Test@gmail.com')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (30, 4, 110, 1, 1, 5)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (31, 5, 150, 1, 6, 3)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (32, 6, 150, 3, 15, 7)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (33, 6, 77, 8, 8, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (34, 6, 196, 1, 8, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (35, 7, 129, 1, 16, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (36, 8, 85, 1, 1, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (37, 9, 168, 1, 1, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (38, 9, 168, 1, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (39, 10, 175, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (51, N'Áo thun cotton in họa tiết YFTS603', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS603</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/603 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (53, N'Áo thun cotton in họa tiết con cáo YFTS606', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS606</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/606 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (54, N'Áo thun cotton in họa tiết fastfood YFTS607', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS607</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Mockup_0000s_0015_607-(merged).png', N'', N'', 0, 1, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (55, N'Áo thun cotton in họa tiết SMOKE YFTS608', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS608</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/608m.png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (56, N'Áo thun cotton in họa tiết YFTS609', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS609</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/609 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (57, N'Áo thun cotton in họa tiết YFTS610', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS628</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/610 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (58, N'Áo thun cotton in typography Keep Clam & Be Yourself YFTS613', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;typography Keep Clam &amp; Be Yourself&nbsp;YFTS613</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/613m.png', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (59, N'Áo thun cotton in typography Keep Clam & Ctrl ZYFTS616', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết typography Keep Clam &amp; Ctrl Z&nbsp;YFTS616</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/614m.png', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (60, N'Áo thun cotton in họa tiết cà rốt củ cải YFTS617', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết c&agrave; rốt củ cải&nbsp;YFTS617</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/617m.png', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (61, N'Áo thun cotton in họa tiết bánh quy YFTS618', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết b&aacute;nh quy&nbsp;YFTS618</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0010_618 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (62, N'Áo thun cotton in họa tiết thỏ Mị Nương YFTS619', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết thỏ Mị Nương&nbsp;YFTS619</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0009_619 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (63, N'Áo thun cotton in họa tiết Biển và Cá Voi YFTS605', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Biển v&agrave; C&aacute; Voi&nbsp;YFTS605</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0017_605 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (64, N'Áo thun cotton in họa tiết mèo đen YFTS601', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết m&egrave;o đen&nbsp;YFTS601</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0020_601 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (65, N'Áo thun cotton in họa tiết YFTS602', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS602</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/Content Review 6xx_0000s_0019_602 (merged).jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (66, N'Áo thun đôi cotton in họa tiết Tuzki Love YFTS101', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết Tuzki Love&nbsp;YFTS101</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/101 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (67, N'Áo thun đôi cotton in họa tiết Popeye - Olive Oyl YFTS102', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết Popeye - Olive Oyl&nbsp;YFTS102</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/102 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (68, N'Áo thun đôi cotton in họa tiết Ơn Giời YFTS103', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết Ơn Giời&nbsp;YFTS103</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/103 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (69, N'Áo thun đôi cotton in họa tiết LOVE YFTS104', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết LOVE YFTS104</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/104 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (70, N'Áo thun đôi cotton in họa tiết The King & The Queen YFTS105', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết The King &amp; The Queen YFTS105</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/105 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (71, N'Áo thun đôi cotton in họa tiết YFTS107', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết YFTS107</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/107 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (72, N'Áo thun đôi cotton in họa tiết Coffee & Milk YFTS108', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;Coffee &amp; Milk YFTS108</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/108 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (73, N'Áo thun đôi cotton in họa tiết YFTS109', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết cặp đ&ocirc;i&nbsp;YFTS109</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/109 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (74, N'Áo thun đôi cotton in họa tiết YFTS110', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết YFTS110</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/110 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (75, N'Áo thun đôi cotton in họa tiết Cô dâu & Chú rể YFTS111', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết C&ocirc; d&acirc;u &amp; Ch&uacute; rể&nbsp;YFTS111</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/111 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (76, N'Áo thun đôi cotton in họa tiết Cô dâu & Chú rể YFTS112', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết C&ocirc; d&acirc;u &amp; Ch&uacute; rể&nbsp;YFTS112</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/112 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (77, N'Áo thun đôi cotton in họa tiết Together Since YFTS106', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết together since YFTS106</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/106 mockup.jpg', N'', N'', 0, 1, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (78, N'Áo thun cotton in họa tiết YFTS201', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS201</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/201m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (79, N'Áo thun cotton in họa tiết Deadpool YFTS202', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Deadpool&nbsp;YFTS202</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/202m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (80, N'Áo thun cotton in họa tiết Deadpool YFTS203', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Deadpool&nbsp;YFTS203</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/203m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (81, N'Áo thun cotton in họa tiết Black Panther YFTS204', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;Black Panther&nbsp;YFTS204</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/204m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (82, N'Áo thun cotton in họa tiết Suicide Squad YFTS205', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Suicide Squad&nbsp;YFTS205</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/205m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (83, N'Áo thun cotton in họa tiết Civil War YFTS206', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Civil War&nbsp;YFTS206</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/206m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (84, N'Áo thun cotton in họa tiết Iron Man YFTS209', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Iron Man&nbsp;YFTS209</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/209m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (85, N'Áo thun cotton in họa tiết Captain America  YFTS210', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Captain America YFTS210</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/210.m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (86, N'Áo thun cotton in họa tiết YFTS2111', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2111</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.1m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (87, N'Áo thun cotton in họa tiết YFTS2112', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2112</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.2m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (88, N'Áo thun cotton in họa tiết YFTS2113', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2113</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.3m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (89, N'Áo thun cotton in họa tiết YFTS2114', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS2114</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/211.4m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (90, N'Áo thun cotton in họa tiết YFTS212', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS212</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/212m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (91, N'Áo thun cotton in họa tiết Judy Zootopia Typography YFTS301', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Judy Zootopia Typography&nbsp;YFTS301</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/301m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (92, N'Áo thun cotton in họa tiết Flash Zootopia YFTS302', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Flash Zootopia&nbsp;YFTS302</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/302m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (93, N'Áo thun cotton in họa tiết Octopus Finding Dory YFTS303', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Octopus Finding Dory&nbsp;YFTS303</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/303m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (94, N'Áo thun cotton in họa tiết Nemo & Dory YFTS304', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Nemo &amp; Dory&nbsp;YFTS304</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/304m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (95, N'Áo thun cotton in họa tiết YFTS305', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS305</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/305m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (96, N'Áo thun cotton in họa tiết YFTS307', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS307</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/307m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (97, N'Áo thun cotton in họa tiết YFTS308', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS308</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/308m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (98, N'Áo thun cotton in họa tiết YFTS309', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS309</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/309m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (100, N'Áo thun cotton in họa tiết IronMan Cartoon YFTS310', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết IronMan Cartoon&nbsp;YFTS310</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/310m-white.jpg', N'/Images/ProductImages/310m-white.jpg', N'/Images/ProductImages/310m-white.jpg', 0, 1, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (101, N'Áo thun cotton in họa tiết Squirrel Ice Age YFTS311', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Squirrel Ice Age&nbsp;YFTS311</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/311m-black.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (102, N'Áo thun cotton in họa tiết Deadpool YFTS312', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Deadpool&nbsp;YFTS312</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/312m.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (103, N'Áo thun cotton in họa tiết YFTS313', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS313</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/313m.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (104, N'Áo thun cotton in họa tiết Squirrel Ice Age YFTS314', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Squirrel Ice Age&nbsp;YFTS314</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/314m.jpg', N'/Images/ProductImages/314m-black.jpg', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (105, N'Áo thun cotton in họa tiết YFTS405', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS405</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/405 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (106, N'Áo thun cotton in họa tiết YFTS406', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS406</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/406 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (107, N'Áo thun cotton in họa tiết Overwatch YFTS407', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Overwatch&nbsp;YFTS407</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/407 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (108, N'Áo thun cotton in họa tiết YFTS408', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS408</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/408 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (109, N'Áo thun cotton in họa tiết YFTS410', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTS410</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/410 mockup.jpg', N'', N'', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (110, N'Áo thun cotton in họa tiết Floating Pikachu YFTS411', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Floating Pikachu&nbsp;YFTS411</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/411 mockup.jpg', N'', N'', 0, 1, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (111, N'Áo thun cotton in họa tiết Batman YFTSD001', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Batman&nbsp;YFTSD001</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/D001-white.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (112, N'Áo thun cotton in họa tiết YFTSP001', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP001</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0000s_0002_Layer 328.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (113, N'Áo thun cotton in họa tiết YFTSP002', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP002</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0001s_0002_Layer 335.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (114, N'Áo thun cotton in họa tiết YFTSP003', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP003</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0002s_0000_Layer 341.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (115, N'Áo thun cotton in họa tiết YFTSP004', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP004</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0003s_0002_Layer 346.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (116, N'Áo thun cotton in họa tiết YFTSP005', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết độc đ&aacute;o&nbsp;YFTSP005</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0004s_0002_Layer 352.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (117, N'Áo thun cotton in họa tiết YFTSP006', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP006</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0005s_0000_Layer 359.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (118, N'Áo thun cotton in họa tiết YFTSP007', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP007</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0006s_0001_Layer 363.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (119, N'Áo thun cotton in họa tiết YFTSP008', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP008</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0007s_0002_Layer 371.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (120, N'Áo thun cotton in họa tiết YFTSP009', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP009</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0008s_0000_Layer 308.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (121, N'Áo thun cotton in họa tiết YFTSP010', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP010</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0009s_0000_Layer 311.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (122, N'Áo thun cotton in họa tiết YFTSP011', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP011</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0010s_0000_Layer 314.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (123, N'Áo thun cotton in họa tiết YFTSP012', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP012</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0011s_0000_Layer 317.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (124, N'Áo thun cotton in họa tiết YFTSP013', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP013</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0012s_0000_Layer 320.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (125, N'Áo thun cotton in họa tiết YFTSP014', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP014</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0013s_0000_Layer 323.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (126, N'Áo thun cotton in họa tiết YFTSP015', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết IronMan Cartoon&nbsp;YFTS310</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0014s_0002_Layer 288.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (127, N'Áo thun cotton in họa tiết YFTSP016', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP016</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0015s_0002_Layer 296.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (128, N'Áo thun cotton in họa tiết YFTSP017', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP017</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0016s_0001_Layer 301.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (129, N'Áo thun cotton in họa tiết YFTSP018', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP018</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0017s_0001_Layer 230.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (130, N'Áo thun cotton in họa tiết YFTSP019', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP019</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0018s_0002_Layer 235.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (131, N'Áo thun cotton in họa tiết YFTSP020', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP020</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0019s_0001_Layer 241.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (132, N'Áo thun cotton in họa tiết YFTSP021', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP021</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0020s_0002_Layer 247.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (133, N'Áo thun cotton in họa tiết YFTSP022', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;YFTSP022</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0021s_0002_Layer 255.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (134, N'Áo thun cotton in họa tiết YFTSP023', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;YFTSP023</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0022s_0002_Layer 261.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (135, N'Áo thun cotton in họa tiết YFTSP024', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP024</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0023s_0001_Layer 266.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (136, N'Áo thun cotton in họa tiết YFTSP025', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP025</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0024s_0000_Layer 271.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (137, N'Áo thun cotton in họa tiết YFTSP026', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP026</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0025s_0000_Layer 274.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (138, N'Áo thun cotton in họa tiết YFTSP027', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP027</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0026s_0002_Layer 280.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (139, N'Áo thun cotton in họa tiết YFTSP028', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP028</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0027s_0002_Layer 179.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (140, N'Áo thun cotton in họa tiết YFTSP029', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP029</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0028s_0002_Layer 184.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (141, N'Áo thun cotton in họa tiết YFTSP030', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP030</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0029s_0002_Layer 190.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (142, N'Áo thun cotton in họa tiết YFTSP031', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP031</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0030s_0002_Layer 196.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (143, N'Áo thun cotton in họa tiết YFTSP032', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP032</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0031s_0002_Layer 202.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (144, N'Áo thun cotton in họa tiết YFTSP033', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP033</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0032s_0002_Layer 208.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (145, N'Áo thun cotton in họa tiết YFTSP034', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP034</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0033s_0002_Layer 214.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (146, N'Áo thun cotton in họa tiết YFTSP035', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP035</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0034s_0002_Layer 220.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (147, N'Áo thun cotton in họa tiết YFTSP036', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP036</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0035s_0002_Layer 226.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (148, N'Áo thun đôi cotton in họa tiết MR & MRS YFTSPC001', 66, 129000, N'<p>&Aacute;o thun&nbsp;cotton in họa tiết Mr&nbsp;&amp; Mrs&nbsp;YFTSPC001</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0039s_0002_Layer 166 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (149, N'Áo thun đôi cotton in họa tiết YFTSPC002', 66, 129000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;YFTSPC002</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0040s_0002_Layer 135 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (150, N'Áo thun đôi cotton in họa tiết YFTSPC003', 66, 129000, N'<p>&Aacute;o thun&nbsp;cotton in họa tiết YFTSPC003</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0041s_0002_Layer 160 (merged).jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (151, N'Áo thun đôi cotton in họa tiết YFTSPC004', 66, 129000, N'<p>&Aacute;o thun&nbsp;cotton in họa tiết&nbsp;YFTSPC004</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch, gi&aacute; kh&ocirc;ng đổi.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0042s_0002_Layer 142 (merged).jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
GO
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (152, N'Áo thun cotton in họa tiết YFTSP037', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết si&ecirc;u anh h&ugrave;ng&nbsp;YFTSP037</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0044s_0002_Layer 111.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (153, N'Áo thun cotton in họa tiết YFTSP038', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết si&ecirc;u anh h&ugrave;ng&nbsp;YFTSP038</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0045s_0002_Layer 103.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (154, N'Áo thun cotton in họa tiết YFTSP039', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP038</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0046s_0000_Layer 100.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (155, N'Áo thun cotton in họa tiết YFTSP040', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP040</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0047s_0002_Layer 90.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (156, N'Áo thun cotton in họa tiết YFTSP041', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP041</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0048s_0002_Layer 83.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (157, N'Áo thun cotton in họa tiết YFTSP042', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP042</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0049s_0001_Layer 77.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (158, N'Áo thun cotton in họa tiết YFTSP043', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP043</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0050s_0000_Layer 71.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (159, N'Áo thun cotton in họa tiết YFTSP044', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP044</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0051s_0000_Layer 68.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (160, N'Áo thun cotton in họa tiết YFTSP045', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP045</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0052s_0002_Layer 62.jpg', N'', N'', 0, 1, 0, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (161, N'Áo thun cotton in họa tiết siêu anh hùng YFTSP046', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết si&ecirc;u anh h&ugrave;ng&nbsp;YFTSP046</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0053s_0002_Layer 57.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (162, N'Áo thun cotton in họa tiết YFTSP047', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP047</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0054s_0000_Layer 49.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (163, N'Áo thun cotton in họa tiết YFTSP048', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSP038</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/YTFS_0000s_0055s_0001_Layer 46.jpg', N'', N'', 0, 1, 1, 0, NULL, 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (164, N'Áo thun cotton in họa tiết cung Bạch dương YFTHD001 (21/3 - 19/4)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD001</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/12.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (165, N'Áo thun cotton in họa tiết cung Sư tử YFTHD002 (23/7 - 22/8)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD002</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/13.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (166, N'Áo thun cotton in họa tiết cung Nhân mã YFTHD003 (23/11 - 21/12)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD003</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/14.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (167, N'Áo thun cotton in họa tiết cung Kim ngưu YFTHD004 (20/4 - 20/5)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD004</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/15.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (168, N'Áo thun cotton in họa tiết cung Xử nữ YFTHD005 (23/8 - 22/9)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD005</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/16.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (169, N'Áo thun cotton in họa tiết cung Bọ cạp YFTHD006 (24/10 - 22/11)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD006</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/18.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (170, N'Áo thun cotton in họa tiết cung Song ngư YFTHD007 (19/2 - 20/3)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD007</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/19.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (171, N'Áo thun cotton in họa tiết cung Cự giải YFTHD008 (22/6 - 22/7)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD008</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/20.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (172, N'Áo thun cotton in họa tiết cung Thiên bình YFTHD009 (23/9 - 23/10)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD009</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/22.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (173, N'Áo thun cotton in họa tiết cung Song tử YFTHD010 (21/5 - 21/6)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD0010</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/23.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (174, N'Áo thun cotton in họa tiết cung Bảo bình YFTHD011 (20/1 - 18/2)', 68, 109000, N'<p>&Aacute;o thun cotton in họa tiết 12 cung ho&agrave;ng đạo&nbsp;YFTHD011</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size cho cung ho&agrave;ng đạo&nbsp;m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/21.jpg', N'', N'', 129000, 1, 0, 0.15, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (175, N'Tai nghe nhét tai Yison R20', 69, 66000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai R20 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>100dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>32&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201504171441579225.png', N'/Images/ProductImages/201504171438232292.png', N'/Images/ProductImages/2015041702241031388.jpg', 120000, 1, 0, 0, N'<p>1.&nbsp;C&aacute;p đơn sắc TPE, cảm ứng mềm</p>

<p>2. D&acirc;y dạ quang</p>

<p>3. Thiết kế độc đ&aacute;o</p>

<p>4. Ph&iacute;m gọi đa chức năng</p>

<p>5. Sắp xếp hợp l&yacute; giai điệu thời trang</p>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (176, N'Tai nghe nhét tai S20 Yison', 69, 66000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai S20 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>95dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201502051825318575.png', N'/Images/ProductImages/201502051825318685.png', N'/Images/ProductImages/201504150224060076.jpg', 130000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1. Đem lại cảm gi&aacute;c mịn m&agrave;ng tinh tế</td>
		</tr>
		<tr>
			<td>2. M&agrave;u sắc th&ocirc;ng minh v&agrave; thoải m&aacute;i</td>
		</tr>
		<tr>
			<td>3. D&acirc;y trong v&agrave; dẻo dai</td>
		</tr>
		<tr>
			<td>4. T&iacute;ch hợp cho IPHONE</td>
		</tr>
		<tr>
			<td>5. D&ograve;ng cổ điển đ&iacute;ch thực</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (177, N'Tai nghe nhét tai S30 Yison', 69, 66000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai S30 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>104dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>32&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201504171441469699.png', N'/Images/ProductImages/201504171438113695.png', N'/Images/ProductImages/2015041702241031388.jpg', 130000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1. D&acirc;y đơn sắc sọc, mềm</td>
		</tr>
		<tr>
			<td>2. Độ nhạy cao, treble</td>
		</tr>
		<tr>
			<td>3. Thiết kế kiểu d&aacute;ng đẹp v&agrave; gọn nhẹ</td>
		</tr>
		<tr>
			<td>4. Ph&iacute;m gọi đa chức năng</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (178, N'Tai nghe nhét tai S40 Yison', 69, 66000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai S40 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201504151442375982.png', N'/Images/ProductImages/2015041502243936715.jpg', N'', 130000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1. Thiết kế tai lạ, ống tai thiết kế ph&ugrave; hợp</td>
		</tr>
		<tr>
			<td>2. Trọng lượng nhẹ v&agrave; thuận tiện</td>
		</tr>
		<tr>
			<td>3. Thiết kế bao b&igrave; độc đ&aacute;o</td>
		</tr>
		<tr>
			<td>4. Ch&acirc;n mạ v&agrave;ng, truyền lossless</td>
		</tr>
		<tr>
			<td>5. D&acirc;y xoắn đ&ocirc;i, mềm mại v&agrave; thoải m&aacute;i</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (179, N'Tai nghe nhét tai S50 Yison', 69, 66000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai S50 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>104dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/do.png', N'/Images/ProductImages/S50WX-3.jpg', N'', 130000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1. Kiểu d&aacute;ng phối mầu đơn sắc</td>
		</tr>
		<tr>
			<td>2. Phong c&aacute;ch bầu dục</td>
		</tr>
		<tr>
			<td>3. Thiết kế vỏ tai phong c&aacute;ch acoustic&nbsp;</td>
		</tr>
		<tr>
			<td>4. D&acirc;y chống ch&eacute;o</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (180, N'Tai nghe nhét tai CX320 Yison', 69, 95000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.<small>Tai nghe nh&eacute;t tai CX320 Yison</small>&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>95dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>32&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201406141511119062.png', N'/Images/ProductImages/20140910012430153063.jpg', N'', 140000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Sử dụng d&acirc;y m&agrave;u mới nhất&nbsp;</td>
		</tr>
		<tr>
			<td>2, Chuyển đổi th&ocirc;ng minh c&aacute;c điện thoại</td>
		</tr>
		<tr>
			<td>3, Thiết kế kiểu d&aacute;ng đẹp v&agrave; gọn nhẹ</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (181, N'Tai nghe nhét tai CX330 Yison', 69, 95000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.<big><small>Tai nghe nh&eacute;t tai CX320 Yison</small></big>&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>95dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201501121122272473.png', N'/Images/ProductImages/xd.jpg', N'', 140000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Cảm gi&aacute;c mịn m&agrave;ng tinh tế</td>
		</tr>
		<tr>
			<td>2, Mầu sắc th&ocirc;ng minh v&agrave; tươi tắn</td>
		</tr>
		<tr>
			<td>3, Thiết kế đường bằng phẳng</td>
		</tr>
		<tr>
			<td>4, cho IPHONE</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (182, N'Tai nghe nhét tai Yison C6', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai C6 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>8mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/den.png', N'/Images/ProductImages/C6WX6.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1. Vỏ chống oxi h&oacute;a</td>
		</tr>
		<tr>
			<td>2. Bề mặt hợp kim b&oacute;ng</td>
		</tr>
		<tr>
			<td>3. &Acirc;m thanh cực đỉnh</td>
		</tr>
		<tr>
			<td>4. Ch&acirc;n mạ v&agrave;ng truyền lossless</td>
		</tr>
		<tr>
			<td>5. Bao b&igrave; nhỏ gọn, đẹp mắt</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (183, N'Tai nghe nhét tai Yison C3', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai C3&nbsp;Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/image106 copy.jpg', N'/Images/ProductImages/产品包装.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Kiểu d&aacute;ng vằn da rắn</td>
		</tr>
		<tr>
			<td>2, Chống l&atilde;o h&oacute;a, biến đổi mầu</td>
		</tr>
		<tr>
			<td>3, Phong c&aacute;ch thiết kế đơn giản</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (184, N'Tai nghe nhét tai CX360 Yison', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai CX360 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/HTB1Sp.1GVXXXXcbXFXXq6xXFXXXG.jpg', N'/Images/ProductImages/HTB1YWU6GVXXXXayXpXXq6xXFXXXm.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, M&agrave;u sắc thời trang tươi s&aacute;ng</td>
		</tr>
		<tr>
			<td>2, Ch&acirc;n mạ v&agrave;ng</td>
		</tr>
		<tr>
			<td>3, Mạ kim loại s&aacute;ng b&oacute;ng</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (185, N'Tai nghe nhét tai Yison CX370', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai CX370 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>93dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>32&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/HTB15eg8GpXXXXbJaXXXq6xXFXXXQ.jpg', N'/Images/ProductImages/HTB1sQpmGFXXXXaAapXXq6xXFXXXg.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, M&agrave;u sắc thời trang tươi s&aacute;ng</td>
		</tr>
		<tr>
			<td>2, D&acirc;y đơn sắc sọc</td>
		</tr>
		<tr>
			<td>3, Chuyển đổi c&aacute;c loại điện thoại</td>
		</tr>
		<tr>
			<td>4, Điều chỉnh &acirc;m lượng</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (186, N'Tai nghe nhét tai CX390 Yison', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai CX390 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>95dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>32&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201404231010467968.png', N'/Images/ProductImages/2014050605242330559.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, S&aacute;ng tạo, thiết kế nhẹ v&agrave; thoải m&aacute;i</td>
		</tr>
		<tr>
			<td>2, Thiết kế kiểu d&aacute;ng đẹp v&agrave; gọn nhẹ</td>
		</tr>
		<tr>
			<td>3, Nhựa + d&acirc;y TPE</td>
		</tr>
		<tr>
			<td>4, Điều chỉnh &acirc;m lượng</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (187, N'Tai nghe nhét tai EX200 Yison', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai EX200 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>95dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201403281011582812.png', N'/Images/ProductImages/Untitled-1.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Kiểu d&aacute;ng ngọc trai</td>
		</tr>
		<tr>
			<td>2, Chất lượng cao &iacute;t căng thẳng</td>
		</tr>
		<tr>
			<td>3, C&aacute;c vật liệu kim loại + TPE d&acirc;y tr&ograve;n</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (188, N'Tai nghe nhét tai EX210 Yison', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai EX210 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201505201131333115.jpg', N'/Images/ProductImages/Untitled-1.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1. Thiết kế bo cạnh</td>
		</tr>
		<tr>
			<td>2. Chất lượng cao stereo</td>
		</tr>
		<tr>
			<td>3. Tri-band độ dẻo tuyệt vời</td>
		</tr>
		<tr>
			<td>4. D&acirc;y dẻo, trong, chắc chắn</td>
		</tr>
		<tr>
			<td>5. Mic độ nhậy cao</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (189, N'Tai nghe nhét tai CX380 Yison', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai CX380 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>93dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/380WX (1).jpg', N'/Images/ProductImages/hop hong.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, H&igrave;nh dạng độc đ&aacute;o của đ&ocirc;i c&aacute;nh bướm</td>
		</tr>
		<tr>
			<td>2, D&acirc;y thiết kế chống rồi</td>
		</tr>
		<tr>
			<td>3, Ch&acirc;n mạ v&agrave;ng</td>
		</tr>
		<tr>
			<td>4, Với microphone độ n&eacute;t cao</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (190, N'Tai nghe nhét tai CX460 Yison', 69, 139000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai CX460 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>93dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/cam.png', N'/Images/ProductImages/hop cam.jpg', N'', 199000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Thiết kế h&igrave;nh d&aacute;ng nửa kim tự th&aacute;p</td>
		</tr>
		<tr>
			<td>2, Giao diện độc đ&aacute;o</td>
		</tr>
		<tr>
			<td>3, Bao b&igrave; thời trang</td>
		</tr>
		<tr>
			<td>4, Với microphone độ n&eacute;t cao</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (191, N'Tai nghe nhét tai EX700 Yison', 69, 264500, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai EX700 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>8mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201507201433325154.png', N'/Images/ProductImages/201507201433325474.png', N'/Images/ProductImages/hd.jpg', 350000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Tai nghe l&agrave;m bằng th&eacute;p</td>
		</tr>
		<tr>
			<td>2, Kim loại sắc n&eacute;t</td>
		</tr>
		<tr>
			<td>3, Thiết kế đường bằng phẳng</td>
		</tr>
		<tr>
			<td>4, Cho IPHONE</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (192, N'Tai nghe nhét tai EX760 Yison', 69, 264500, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai EX760 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>95dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201507201518467646.png', N'/Images/ProductImages/201507201518467806.png', N'/Images/ProductImages/2015103111241604794.jpg', 350000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Subwoofer si&ecirc;u bass</td>
		</tr>
		<tr>
			<td>2, &Acirc;m thanh v&ograve;m stereo</td>
		</tr>
		<tr>
			<td>3, D&ugrave;ng cho tất cả c&aacute;c loại điện thoại</td>
		</tr>
		<tr>
			<td>4, M&agrave;u thời trang</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (193, N' Tai nghe nhét tai EX780 Yison', 69, 264500, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai EX780 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>8mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201507011056348774.png', N'/Images/ProductImages/201506230324035063.jpg', N'', 350000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Chất liệu to&agrave;n bằng kim loại</td>
		</tr>
		<tr>
			<td>2, M&agrave;ng 8MM Ru-Fe-B hiệu suất cao</td>
		</tr>
		<tr>
			<td>3, M&agrave;ng si&ecirc;u mỏng, HD microphone</td>
		</tr>
		<tr>
			<td>4, C&ocirc;ng nghệ cảm biến tần số thấp</td>
		</tr>
		<tr>
			<td>5, Thiết kế h&igrave;nh vi&ecirc;n đạn độc đ&aacute;o</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (194, N'Tai nghe nhét tai EX900 Yison', 69, 264500, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai EX900 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201405151810084843.png', N'/Images/ProductImages/hop hong.jpg', N'', 350000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Tai nghe kim loại</td>
		</tr>
		<tr>
			<td>2, Chất lượng cao stereo</td>
		</tr>
		<tr>
			<td>3, M&agrave;ng loa hiệu Suất cao</td>
		</tr>
		<tr>
			<td>4, M&agrave;ng loa c&ocirc;ng nghệ mới</td>
		</tr>
		<tr>
			<td>5, Vỏ hộp thời trang</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (195, N' Tai nghe nhét tai Yison EX710', 69, 264500, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai Ẽ710 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>8mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/yison-ex710r-400x400-imae9ckrzeug563g.jpeg', N'', N'', 350000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Thiết kế luồng, chống k&eacute;o</td>
		</tr>
		<tr>
			<td>2, &Acirc;m kim loại</td>
		</tr>
		<tr>
			<td>3, Ph&iacute;m điều chỉnh &acirc;m lượng</td>
		</tr>
		<tr>
			<td>4, Cho IPHONE</td>
		</tr>
		<tr>
			<td>5, Ch&acirc;n mạ v&agrave;ng</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (196, N'Tai nghe nhét tai CX610 Yison', 69, 264500, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai CX610 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>10mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>93dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/51jSVX3LxtL._SL1001_.jpg', N'/Images/ProductImages/51lfXaWyI4L._SL1001_.jpg', N'/Images/ProductImages/61yhHkmd7rL._SL1001_.jpg', 350000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Tai nghe thể thao</td>
		</tr>
		<tr>
			<td>2, Với một m&oacute;c tai mềm mại, thoải m&aacute;i tai</td>
		</tr>
		<tr>
			<td>3, Thiết kế khoang lớn</td>
		</tr>
		<tr>
			<td>4, Thiết kế thể thao n&ecirc;n thoải m&aacute;i khi đeo</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (197, N'Tai nghe nhét tai Yison P500', 69, 333000, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai P500 Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>

<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>

<table border="0" cellpadding="0" cellspacing="0" style="width:188px">
	<tbody>
		<tr>
			<td>M&agrave;ng loa</td>
			<td>8mm</td>
		</tr>
		<tr>
			<td>Độ nhậy</td>
			<td>92dB&plusmn;3dB</td>
		</tr>
		<tr>
			<td>Trở kh&aacute;ng</td>
			<td>16&Omega;&plusmn;15%</td>
		</tr>
		<tr>
			<td>Tần số</td>
			<td>20-20000Hz</td>
		</tr>
		<tr>
			<td>Chuẩn cắm</td>
			<td>&phi;3.5mm</td>
		</tr>
		<tr>
			<td>Độ d&agrave;i</td>
			<td>1.2m</td>
		</tr>
	</tbody>
</table>
', 0, N'/Images/ProductImages/201506241512001353.png', N'/Images/ProductImages/den.jpg', N'', 450000, 1, 0, 0, N'<table border="0" cellpadding="0" cellspacing="0" style="width:338px">
	<tbody>
		<tr>
			<td>1, Thiết kế cấp bằng s&aacute;ng chế</td>
		</tr>
		<tr>
			<td>2, B&uacute;t ch&igrave; độc đ&aacute;o, thời trang sang trọng</td>
		</tr>
		<tr>
			<td>3, S&aacute;ng tạo, nhẹ v&agrave; thoải m&aacute;i</td>
		</tr>
		<tr>
			<td>4, Cho IPHONE</td>
		</tr>
	</tbody>
</table>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (198, N'Tai nghe nhét tai Yison D1', 69, 91400, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai Yison D1 Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>
', 0, N'/Images/ProductImages/51ft7l9raKL._SL1001_.jpg', N'/Images/ProductImages/14011996_567411990127582_1802114253_n.jpg', N'', 150000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (199, N'Tai nghe nhét tai Yison D2', 69, 91400, N'<p>Để dễ d&agrave;ng thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi bạn cần c&oacute; một phụ kiện kh&ocirc;ng thể thiếu, đ&oacute; ch&iacute;nh l&agrave; tai nghe.Tai nghe nh&eacute;t tai D2&nbsp;Yison&nbsp;Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng. B&ecirc;n cạnh đ&oacute;, thiết kế nhỏ, gọn nhẹ, trẻ trung c&ugrave;ng chức năng lọc &acirc;m chắc chắn sẽ mang đến cho bạn những bản nhạc c&oacute; chất lượng cao.</p>

<p>&nbsp;</p>

<p>T&iacute;nh năng sản phẩm:</p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>
', 0, N'/Images/ProductImages/51ILvEqQhuL._SL1001_.jpg', N'/Images/ProductImages/51QBZ5YKl-L._SL1001_.jpg', N'/Images/ProductImages/51y7Rrv3z4L._SL1001_.jpg', 150000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (200, N'Tai nghe nhét tai Yison D5', 69, 165000, N'<p>Bạn thường c&oacute; th&oacute;i quen thưởng thức &acirc;m nhạc một m&igrave;nh v&agrave; muốn tận hưởng trọn vẹn &acirc;m thanh của từng bản nhạc, chiếc tai nghe <strong>Yison D5 </strong>sẽ l&agrave; một chọn lựa ho&agrave;n hảo cho bạn. Thiết kế đẹp mắt, s&agrave;nh điệu cho người y&ecirc;u nhạc, chất lượng &acirc;m thanh tuyệt hảo đặc biệt với kết nối kh&ocirc;ng d&acirc;y tiện lợi, gọn nhẹ v&agrave; sự kết hợp giữa tai nghe nhạc v&agrave; tai nghe điện thoại <strong>Yison D5</strong> rất hữu &iacute;ch cho người sử dụng. C&oacute; thể gấp lại rất gọn khi mang theo người. Với chiếc tai nghe n&agrave;y, bạn c&oacute; thể thưởng thức &acirc;m nhạc của bạn ở bất cứ nơi n&agrave;o: khi tập thể dục, khi l&aacute;i xe, khi ngồi học, khi l&agrave;m việc...m&agrave; kh&ocirc;ng sợ l&agrave;m phiền hay ảnh hưởng đến những người b&ecirc;n cạnh. H&atilde;y sở hữu ngay chiếc tai nghe <strong>Yison D5</strong> để c&oacute; những ph&uacute;t gi&acirc;y thư gi&atilde;n thật tuyệt vời.</p>

<p>&nbsp;</p>

<p><strong>T&iacute;nh năng sản phẩm:</strong></p>

<p>- Tự do vận động với d&ograve;ng tai nghe nh&eacute;t s&acirc;u trong tai.</p>

<p>- N&uacute;m&nbsp;tai nghe&nbsp;c&oacute; thể xoay 360&deg;, dễ d&agrave;ng nh&eacute;t kh&iacute;t v&agrave;o lỗ tai, đồng thời tăng cường khả năng c&aacute;ch &acirc;m.</p>

<p>- Được thiết kế vừa kh&iacute;t với v&agrave;nh tai, đảm bảo sự thoải m&aacute;i khi sử dụng.</p>

<p>- Sử dụng jack cắm 3.5mm tương th&iacute;ch với nhiều thiết bị di động.</p>
', 0, N'/Images/ProductImages/D5-藏青色.png', N'/Images/ProductImages/16213-5780f6fa73dff.jpg.png', N'', 215000, 1, 0, 0, N'<p>T&iacute;ch hợp microphone</p>

<p>Kiểu d&aacute;ng thời trang v&agrave; tiện lợi</p>

<p>Chất lượng &acirc;m thanh chuẩn</p>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (201, N'Tai nghe nhét tai Yison D6', 69, 165000, N'<p>Bạn c&oacute; muốn sở hữu cho m&igrave;nh chiếc tai nghe chất lượng v&agrave; thời trang để c&oacute; thể h&ograve;a m&igrave;nh v&agrave;o thế giới diệu kỳ của &acirc;m nhạc? H&atilde;y sở hữu ngay chiếc tai nghe thời trang chuy&ecirc;n nghiệp <strong>Yison D6</strong>. Với chất lượng &acirc;m thanh chuy&ecirc;n nghiệp, tai nghe thời trang <strong>Yison D6</strong> cho &acirc;m thanh trầm (bass) cực tốt v&agrave; tạo nhiều lớp &acirc;m thanh h&agrave;i ho&agrave; chi tiết sẽ đem đến cho bạn những ph&uacute;t gi&acirc;y h&ograve;a m&igrave;nh c&ugrave;ng cảm x&uacute;c với &acirc;m nhạc. B&ecirc;n cạnh đ&oacute;, chiếc tai nghe <strong>Yison D6</strong> c&ograve;n hỗ trợ micro để bạn kh&ocirc;ng chỉ nghe nhạc m&agrave; c&ograve;n c&oacute; thể nghe v&agrave; trả lời bất k&igrave; cuộc đ&agrave;m thoại n&agrave;o một c&aacute;ch tiện lợi. Phần b&ocirc;ng tai được thiết kế bằng chất liệu mềm mại cho bạn cảm gi&aacute;c &ecirc;m &aacute;i khi sử dụng.</p>

<p>&nbsp;</p>

<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>

<p><strong>&Acirc;m thanh chất lượng r&otilde; r&agrave;ng, sống động</strong><br />
Tai nghe <strong>Yison D6</strong> sẽ l&agrave; một lựa chọn l&yacute; tưởng cho c&aacute;c t&iacute;n đồ &acirc;m nhạc bởi chất lượng &acirc;m thanh chuy&ecirc;n nghiệp m&agrave; n&oacute; mang lại. Ngo&agrave;i ra, tai nghe <strong>Yison D6</strong> c&oacute; thể t&aacute;i hiện trung thực mọi cung bậc &acirc;m thanh từ thấp nhất đến cao nhất m&agrave; vẫn đảm bảo độ c&acirc;n bằng tr&ecirc;n to&agrave;n dải &acirc;m, cho &acirc;m bass trầm ấm, &acirc;m trung r&otilde; r&agrave;ng v&agrave; &acirc;m cao rất chi tiết.</p>

<p><strong>Micro tiện lợi</strong><br />
Bạn sẽ kh&ocirc;ng chỉ được nghe nhạc m&agrave; c&ograve;n c&oacute; thể sử dụng để nghe v&agrave; gọi những cuộc điện thoại một c&aacute;ch dễ d&agrave;ng. Với micro c&oacute; khả năng khử nhiễu, giảm ồn gi&uacute;p cho c&aacute;c cuộc đ&agrave;m thoại của bạn trở n&ecirc;n r&otilde; r&agrave;ng v&agrave; trung thực m&agrave; kh&ocirc;ng lo bị tạp &acirc;m l&agrave;m phiền. N&uacute;t nhận cuộc gọi được bố tr&iacute; ngay tr&ecirc;n d&acirc;y c&aacute;p đem đến sự tiện lợi tối đa cho bạn.</p>

<p><strong>Thiết kế đẹp mắt v&agrave; tiện dụng</strong><br />
Tai nghe <strong>Yison D6</strong> được thiết kế gọn g&agrave;ng để bạn c&oacute; thể vừa di chuyển vừa nghe nhạc. Bạn cũng c&oacute; thể đem theo chiếc tai nghe đến bất cứ đ&acirc;u c&ugrave;ng với chiếc điện thoại của m&igrave;nh để c&oacute; thể thưởng thức &acirc;m nhạc mọi l&uacute;c mọi nơi. Được thiết kề với m&agrave;u đen đẹp mắt v&agrave; bền m&agrave;u sẽ đem đến cho bạn sự kết hợp tinh tế với điện thoại bạn d&ugrave;ng v&agrave; trang phục bạn mặc tr&ecirc;n người. Ngo&agrave;i ra, tai nghe c&oacute; n&uacute;t tai bằng cao su mềm mại, kh&ocirc;ng g&acirc;y hại cho tai cho bạn cảm gi&aacute;c &ecirc;m &aacute;i khi sử dụng ngay cả khi sử dụng trong thời gian d&agrave;i.</p>

<p><strong>Tương th&iacute;ch cao</strong><br />
Tai nghe <strong>Yison D6</strong> c&oacute; thể dễ d&agrave;ng kết nối với c&aacute;c thiết bị ph&aacute;t nhạc phổ biến hiện nay th&ocirc;ng qua jack cắm 3.5mm ti&ecirc;u chuẩn như: c&aacute;c loại smartphone, MP3, MP4, c&aacute;c loại m&aacute;y t&iacute;nh v&agrave; laptop&hellip;</p>
', 0, N'/Images/ProductImages/d6 trang.jpg', N'/Images/ProductImages/Colorful-Earphone-Yison-D6-In-Ear-For-XiaoMi-Samsung-iPhone-MP3-MP4-3-5mm-Connector-fone.jpg', N'', 215000, 1, 0, 0, N'<p>&Acirc;m thanh h&agrave;i h&ograve;a; dễ nghe; dải bass ấn tượng</p>

<p>Chi tiết v&agrave; &acirc;m trường tốt</p>

<p>C&oacute; micro đ&agrave;m thoại cho smartphone</p>

<p>Chất lượng ho&agrave;n thiện v&agrave; chất &acirc;m qu&aacute; tốt so với gi&aacute; của sản phẩm</p>
', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (202, N'Áo thun cotton in họa tiết YFTSA001', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA001</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/1.ao.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (203, N'Áo thun cotton in họa tiết YFTSA002', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA002</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/１.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (204, N'Áo thun cotton in họa tiết YFTSA003', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA003</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/2.ao.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (205, N'Áo thun cotton in họa tiết YFTSA004', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA004</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/2.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (206, N'Áo thun cotton in họa tiết YFTSA005', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết&nbsp;YFTSA005</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/3.ao.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (207, N'Áo thun cotton in họa tiết YFTSA006', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA006</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/3.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (208, N'Áo thun cotton in họa tiết YFTSA007', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA007</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/4.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (209, N'Áo thun cotton in họa tiết YFTSA008', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA008</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/5.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (210, N'Áo thun cotton in họa tiết YFTSA009', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA009</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/6.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (211, N'Áo thun cotton in họa tiết YFTSA010', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA010</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/7.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (212, N'Áo thun cotton in họa tiết YFTSA011', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA011</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/8.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (213, N'Áo thun cotton in họa tiết YFTSA012', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA012</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/9.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (214, N'Áo thun cotton in họa tiết YFTSA013', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA013</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/11.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (215, N'Áo thun cotton in họa tiết YFTSA014', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA014</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/ao(1).jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (216, N'Áo thun cotton in họa tiết Fiora Siêu Phẩm YFTSA015', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết Fiora Si&ecirc;u Phẩm&nbsp;YFTSA015</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/ao(2).jpg', N'', N'', 0, 1, 0, 0, N'', 1, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (217, N'Áo thun cotton in họa tiết YFTSA016', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA016</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/ao(3).jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (218, N'Áo thun cotton in họa tiết YFTSA017', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA017</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/ao.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (219, N'Áo thun cotton in họa tiết YFTSA018', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA018</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(1).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (220, N'Áo thun cotton in họa tiết YFTSA019', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA019</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(2).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (221, N'Áo thun cotton in họa tiết YFTSA020', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA020</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(3).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (222, N'Áo thun cotton in họa tiết YFTSA021', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA021</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(4).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (223, N'Áo thun cotton in họa tiết YFTSA022', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA022</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(5).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (224, N'Áo thun cotton in họa tiết YFTSA023', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA023</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(6).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (225, N'Áo thun cotton in họa tiết YFTSA024', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA024</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(7).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (226, N'Áo thun cotton in họa tiết YFTSA025', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA025</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S(8).png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (227, N'Áo thun cotton in họa tiết YFTSA026', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA026</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/S.png', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (228, N'Áo thun cotton in họa tiết YFTSA027', 64, 140000, N'<p>&Aacute;o thun cotton in họa tiết YFTSA027</p>

<p>C&oacute; thể chọn m&agrave;u &aacute;o, kiểu d&aacute;ng,&nbsp;chất liệu, size m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch.</p>
', 0, N'/Images/ProductImages/10.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (229, N'Áo sơ mi nữ form dài xẻ tà YFTTK001', 77, 249000, N'<p>&Aacute;o sơ mi nữ form d&agrave;i xẻ t&agrave; YFTTK001</p>
', 0, N'/Images/ProductImages/Áo sơ mi nữ form dài xẻ tà YFTTK00118-8-2016-14-0-45-569.jpg', N'/Images/ProductImages/Áo sơ mi nữ form dài xẻ tà YFTTK00118-8-2016-14-3-53-597.jpg', N'', 249000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (230, N'Đầm xòe họa tiết YFTTK002', 71, 249000, N'<p><strong>Th&ocirc;ng tin chi tiết</strong></p>

<p>- T&ecirc;n sản phẩm: Đầm x&ograve;e họa tiết YFTTK002</p>

<p><strong>M&ocirc; tả về chất liệu:</strong></p>

<p>Vải mềm mại</p>

<p><strong>Chi tiết k&iacute;ch thước sản phầm</strong></p>

<p>Size S : Ngực 86- Eo 68 - M&ocirc;ng 86 - D&agrave;i v&aacute;y 94</p>

<p>Size M : Ngực 88- Eo 72 - M&ocirc;ng 90 - D&agrave;i v&aacute;y 96</p>

<p>Size L : Ngực 92 - Eo 76 - M&ocirc;ng 94 - D&agrave;i v&aacute;y 98</p>

<p>Size XL: Ngực 96 &ndash; Eo 80 &ndash; M&ocirc;ng 98&ndash; D&agrave;i v&aacute;y 98</p>
', 0, N'/Images/ProductImages/Đầm xòe họa tiết YFTTK00218-8-2016-14-12-3-310.jpg', N'/Images/ProductImages/Đầm xòe họa tiết YFTTK00218-8-2016-14-12-3-431.jpg', N'', 299000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (231, N'Quần dài ống rộng YFTTK003', 71, 99000, N'<p>Quần d&agrave;i ống rộng YFTTK003</p>
', 0, N'/Images/ProductImages/Quần dài ống rộng YFTTK00318-8-2016-14-22-3-707.jpg', N'', N'', 149000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (232, N'Quần thun dài YFTTK004', 71, 149000, N'<p>Quần thun d&agrave;i YFTTK003</p>
', 0, N'/Images/ProductImages/Quần thun dài YFTTK00318-8-2016-14-25-13-43.jpg', N'', N'', 199000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (233, N'Áo dây họa tiết cách điệu YFTTK005', 71, 99000, N'<p>&Aacute;o d&acirc;y họa tiết c&aacute;ch điệu YFTTK005</p>
', 0, N'/Images/ProductImages/Áo dây họa tiết cách điệu YFTTK00518-8-2016-14-30-53-310.jpg', N'', N'', 129000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (234, N'Áo khoác trẻ em YFTTK006', 71, 149000, N'<p>&Aacute;o kho&aacute;c trẻ em YFTTK006</p>
', 0, N'/Images/ProductImages/Áo khoác trẻ em YFTTK00618-8-2016-14-33-36-923.jpg', N'', N'', 199000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (235, N'Bộ bé trai YKid YFTTK007', 71, 149000, N'<p>Bộ b&eacute; trai YKid YFTTK007</p>
', 0, N'/Images/ProductImages/Bộ bé trai YKid YFTTK00718-8-2016-14-38-55-645.jpg', N'', N'', 199000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (236, N'Đầm nữ cổ kết cườm YFTTK008', 71, 249000, N'<p>Đầm nữ&nbsp;cổ kết cườm YFTTK008</p>
', 0, N'/Images/ProductImages/Đầm nữ YFTTK00818-8-2016-14-42-28-846.jpg', N'/Images/ProductImages/Đầm nữ YFTTK00818-8-2016-14-42-28-949.jpg', N'', 299000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (237, N'Áo dây họa tiết cách điệu YFTTK009', 71, 99000, N'<p>&Aacute;o d&acirc;y họa tiết c&aacute;ch điệu YFTTK009</p>
', 0, N'/Images/ProductImages/Áo dây họa tiết cách điệu YFTTK00918-8-2016-14-43-44-435.jpg', N'', N'', 129000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (238, N'Váy nâu da bò YFTTK010', 77, 200000, N'<p>V&aacute;y n&acirc;u da b&ograve; YFTTK010</p>
', 0, N'/Images/ProductImages/Váy nâu da bò YFTTK01018-8-2016-14-47-48-35.jpg', N'', N'', 250000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (239, N'Váy jean YFTTK011', 77, 200000, N'<p>V&aacute;y jean YFTTK011</p>
', 0, N'/Images/ProductImages/Váy jean YFTTK01118-8-2016-14-49-28-146.jpg', N'', N'', 250000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (240, N'Áo thun nữ họa tiết YFTTK012', 71, 149000, N'<p>&Aacute;o thun nữ họa tiết YFTTK012</p>
', 0, N'/Images/ProductImages/Áo thun nữ họa tiết YFTTK01218-8-2016-14-52-45-815.jpg', N'', N'', 199000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (241, N'Áo thun nữ xanh da trời YFTTK013', 71, 149000, N'<p>&Aacute;o thun nữ xanh da trời YFTTK013</p>
', 0, N'/Images/ProductImages/Áo thun nữ xanh da trời YFTTK01318-8-2016-16-28-27-474.jpg', N'', N'', 199000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (242, N'Áo thun nữ hồng YFTTK014', 71, 149000, N'<p>&Aacute;o thun nữ hồng YFTTK014</p>
', 0, N'/Images/ProductImages/Áo thun nữ hồng YFTTK01418-8-2016-16-26-42-695.jpg', N'', N'', 199000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (243, N'Đầm sọc caro xám YFTTK015', 77, 199000, N'<p>Đầm sọc caro x&aacute;m YFTTK015</p>
', 0, N'/Images/ProductImages/Đầm sọc caro xám YFTTK01518-8-2016-16-25-50-372.jpg', N'', N'', 249000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (244, N'Bộ áo thun đen & đầm trắng YFTTK016', 77, 250000, N'<p>Bộ &aacute;o thun đen &amp; đầm trắng YFTTK016</p>
', 0, N'/Images/ProductImages/Bộ áo thun đen & đầm trắng YFTTK01618-8-2016-16-25-26-653.jpg', N'', N'', 300000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (245, N'Bộ áo thun xám & đầm họa tiết đen xám YFTTK017', 77, 250000, N'<p>Bộ &aacute;o thun x&aacute;m &amp; đầm họa tiết đen x&aacute;m YFTTK016</p>
', 0, N'/Images/ProductImages/Bộ áo thun xám & đầm họa tiết đen xám YFTTK01718-8-2016-16-19-11-679.jpg', N'', N'', 300000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (246, N'Đầm họa tiết hoa đen trắng YFTTK018', 77, 199000, N'<p>Đầm họa tiết hoa đen trắng YFTTK018</p>
', 0, N'/Images/ProductImages/Đầm họa tiết hoa đen trắng YFTTK01818-8-2016-16-18-0-333.jpg', N'/Images/ProductImages/Đầm họa tiết hoa đen trắng YFTTK01818-8-2016-16-18-0-436.jpg', N'', 249000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (247, N'Đầm đen YFTTK019', 77, 270000, N'<p>Đầm đen YFTTK019</p>
', 0, N'/Images/ProductImages/Đầm đen YFTTK01918-8-2016-16-17-17-885.jpg', N'', N'', 340000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (248, N'Bộ áo thun tay dài & đầm đen YFTTK020', 77, 250000, N'<p>Bộ &aacute;o thun tay d&agrave;i &amp; đầm đen YFTTK020</p>
', 0, N'/Images/ProductImages/Bộ áo thun tay dài & đầm đen YFTTK02018-8-2016-16-16-33-904.jpg', N'', N'', 300000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (249, N'Đầm suông cổ xẻ đỏ YFTTK021', 77, 199000, N'<p>Đầm su&ocirc;ng cổ xẻ đỏ YFTTK021</p>
', 0, N'/Images/ProductImages/Đầm suông cổ xẻ đỏ YFTTK02118-8-2016-16-16-9-36.jpg', N'', N'', 249000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (250, N'Bộ áo thun tay ngắn & đầm YFTTK022', 77, 250000, N'<p>Bộ &aacute;o thun tay ngắn &amp; đầm YFTTK022</p>
', 0, N'/Images/ProductImages/Bộ áo thun tay ngắn & đầm YFTTK02218-8-2016-16-15-18-251.jpg', N'', N'', 300000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (251, N'Áo thun in họa tiết gia đình YFTTC001', 78, 140000, N'<p>Sản phẩm &aacute;o thun in họa tiết d&agrave;nh cho cả&nbsp;gia đ&igrave;nh m&atilde; số&nbsp;YFTTC001</p>

<p>C&oacute; họa tiết độc đ&aacute;o v&agrave; nhiều&nbsp;k&iacute;ch cỡ để lựa chọn&nbsp;</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết gia đình YFTTC00130-8-2016-15-45-37-919.jpg', N'', N'', 180000, 1, 0, 0, N'', 0, NULL)
GO
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (252, N'Áo thun in họa tiết gia đình YFTTC002', 78, 140000, N'<p>Sản phẩm &aacute;o thun in họa tiết d&agrave;nh cho cả&nbsp;gia đ&igrave;nh m&atilde; số&nbsp;YFTTC002</p>

<p>C&oacute; họa tiết độc đ&aacute;o v&agrave; nhiều&nbsp;k&iacute;ch cỡ để lựa chọn&nbsp;</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết gia đình YFTTC00230-8-2016-15-48-41-282.jpg', N'', N'', 180000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (253, N'Áo thun in họa tiết gia đình YFTTC003', 78, 140000, N'<p>Sản phẩm &aacute;o thun in họa tiết d&agrave;nh cho cả&nbsp;gia đ&igrave;nh m&atilde; số&nbsp;YFTTC003</p>

<p>C&oacute; họa tiết độc đ&aacute;o v&agrave; nhiều&nbsp;k&iacute;ch cỡ để lựa chọn&nbsp;</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết gia đình YFTTC00330-8-2016-15-50-32-187.jpg', N'', N'', 180000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (254, N'Áo thun in họa tiết gia đình YFTTC004', 78, 140000, N'<p>Sản phẩm &aacute;o thun in họa tiết d&agrave;nh cho cả&nbsp;gia đ&igrave;nh m&atilde; số&nbsp;YFTTC004</p>

<p>C&oacute; họa tiết độc đ&aacute;o v&agrave; nhiều&nbsp;k&iacute;ch cỡ để lựa chọn&nbsp;</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết gia đình YFTTC00430-8-2016-15-51-29-844.jpg', N'', N'', 180000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (255, N'Áo thun in họa tiết gia đình YFTTC005', 78, 140000, N'<p>Sản phẩm &aacute;o thun in họa tiết d&agrave;nh cho cả&nbsp;gia đ&igrave;nh m&atilde; số&nbsp;YFTTC005</p>

<p>C&oacute; họa tiết độc đ&aacute;o v&agrave; nhiều&nbsp;k&iacute;ch cỡ để lựa chọn&nbsp;</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết gia đình YFTTC00530-8-2016-15-52-19-153.jpg', N'', N'', 180000, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (256, N'Áo thun nhóm in họa tiết A11 YFTTN001', 76, 69000, N'<p>&Aacute;o thun nh&oacute;m in họa tiết&nbsp;49 Shades of A11 m&atilde; số&nbsp;YFTTN001</p>
', 0, N'/Images/ProductImages/Áo thun nhóm in họa tiết A11 YFTTN00130-8-2016-15-56-40-610.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (257, N'Áo thun nhóm in họa tiết A2 YFTTN002', 76, 69000, N'<p>&Aacute;o thun nh&oacute;m in họa tiết&nbsp;A2 - We are all made of stars m&atilde; số&nbsp;YFTTN002</p>
', 0, N'/Images/ProductImages/Áo thun nhóm in họa tiết A2 YFTTN00230-8-2016-15-59-9-655.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (258, N'Áo thun nhóm in họa tiết A7 YFTTN003', 76, 69000, N'<p>&Aacute;o thun nh&oacute;m in họa tiết lớp&nbsp;A7 đo&agrave;n kết&nbsp;m&atilde; số&nbsp;YFTTN003</p>
', 0, N'/Images/ProductImages/Áo thun nhóm in họa tiết A7 YFTTN00330-8-2016-16-1-16-481.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (259, N'Áo thun nhóm in họa tiết A9 YFTTN004', 76, 69000, N'<p>&Aacute;o thun nh&oacute;m in họa tiết&nbsp;T&ocirc;i y&ecirc;u lớp&nbsp;A9&nbsp;m&atilde; số&nbsp;YFTTN004</p>
', 0, N'/Images/ProductImages/Áo thun nhóm in họa tiết A9 YFTTN00430-8-2016-16-3-56-964.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (260, N'Áo thun in họa tiết nhóm YFTTQ001', 76, 69000, N'<p>&Aacute;o thun cotton in họa tiết nh&oacute;m mang m&atilde; số&nbsp;YFTTQ001</p>

<p>M&agrave;u sắc, k&iacute;ch thước đa dạng.</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết nhóm YFTTQ00130-8-2016-16-6-40-992.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (261, N'Áo thun in họa tiết nhóm YFTTQ002', 76, 69000, N'<p>&Aacute;o thun cotton in họa tiết nh&oacute;m mang m&atilde; số&nbsp;YFTTQ002</p>

<p>M&agrave;u sắc, k&iacute;ch thước đa dạng.</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết nhóm YFTTQ00230-8-2016-16-8-24-247.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (262, N'Áo thun in họa tiết nhóm YFTTQ003', 76, 69000, N'<p>&Aacute;o thun cotton in họa tiết nh&oacute;m mang m&atilde; số&nbsp;YFTTQ003</p>

<p>M&agrave;u sắc, k&iacute;ch thước đa dạng.</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết nhóm YFTTQ00330-8-2016-16-9-10-783.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (263, N'Áo thun in họa tiết nhóm YFTTQ004', 76, 69000, N'<p>&Aacute;o thun cotton in họa tiết nh&oacute;m mang m&atilde; số&nbsp;YFTTQ004</p>

<p>M&agrave;u sắc, k&iacute;ch thước đa dạng.</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết nhóm YFTTQ00430-8-2016-16-9-40-294.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived], [Featured], [SalePercent], [Promotion], [isPromoted], [ExpiredDate]) VALUES (264, N'Áo thun in họa tiết nhóm YFTTQ005', 76, 69000, N'<p>&Aacute;o thun cotton in họa tiết nh&oacute;m mang m&atilde; số&nbsp;YFTTQ005</p>

<p>M&agrave;u sắc, k&iacute;ch thước đa dạng.</p>
', 0, N'/Images/ProductImages/Áo thun in họa tiết nhóm YFTTQ00530-8-2016-16-10-20-766.jpg', N'', N'', 0, 1, 0, 0, N'', 0, NULL)
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
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (416, 111, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (417, 53, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (418, 53, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (419, 53, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (420, 53, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (421, 53, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (422, 53, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (423, 112, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (424, 112, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (425, 112, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (426, 112, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (427, 112, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (428, 112, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (429, 112, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (430, 113, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (431, 113, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (432, 113, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (433, 113, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (434, 113, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (435, 113, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (436, 113, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (437, 114, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (438, 114, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (439, 114, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (440, 114, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (441, 114, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (442, 114, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (443, 114, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (444, 115, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (445, 115, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (446, 115, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (447, 115, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (448, 115, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (449, 115, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (450, 115, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (451, 116, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (452, 116, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (453, 116, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (454, 116, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (455, 116, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (456, 116, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (457, 116, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (458, 117, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (459, 117, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (460, 117, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (461, 117, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (462, 117, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (463, 117, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (464, 117, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (465, 118, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (466, 118, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (467, 118, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (468, 118, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (469, 118, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (470, 118, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (471, 118, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (472, 119, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (473, 119, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (474, 119, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (475, 119, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (476, 119, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (477, 119, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (478, 119, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (479, 120, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (480, 120, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (481, 120, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (482, 120, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (483, 120, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (484, 120, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (485, 120, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (486, 121, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (487, 121, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (488, 121, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (489, 121, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (490, 121, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (491, 121, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (492, 121, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (493, 122, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (494, 122, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (495, 122, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (496, 122, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (497, 122, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (498, 122, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (499, 122, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (500, 123, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (501, 123, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (502, 123, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (503, 123, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (504, 123, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (505, 123, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (506, 123, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (507, 124, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (508, 124, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (509, 124, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (510, 124, 4)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (511, 124, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (512, 124, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (513, 124, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (514, 125, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (515, 125, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (516, 125, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (517, 125, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (518, 125, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (519, 125, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (520, 125, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (521, 126, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (522, 126, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (523, 126, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (524, 126, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (525, 126, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (526, 126, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (527, 126, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (528, 127, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (529, 127, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (530, 127, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (531, 127, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (532, 127, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (533, 127, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (534, 127, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (535, 129, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (536, 129, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (537, 129, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (538, 129, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (539, 129, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (540, 129, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (541, 129, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (542, 128, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (543, 128, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (544, 128, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (545, 128, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (546, 128, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (547, 128, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (548, 128, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (549, 130, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (550, 130, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (551, 130, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (552, 130, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (553, 130, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (554, 130, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (555, 130, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (556, 131, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (557, 131, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (558, 131, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (559, 131, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (560, 131, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (561, 131, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (562, 131, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (563, 132, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (564, 132, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (565, 132, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (566, 132, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (567, 132, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (568, 132, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (569, 132, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (570, 133, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (571, 133, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (572, 133, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (573, 133, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (574, 133, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (575, 133, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (576, 133, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (577, 134, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (578, 134, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (579, 134, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (580, 134, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (581, 134, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (582, 134, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (583, 134, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (584, 135, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (585, 135, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (586, 135, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (587, 135, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (588, 135, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (589, 135, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (590, 135, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (591, 136, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (592, 136, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (593, 136, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (594, 136, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (595, 136, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (596, 136, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (597, 136, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (598, 137, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (599, 137, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (600, 137, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (601, 137, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (602, 137, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (603, 137, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (604, 137, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (605, 138, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (606, 138, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (607, 138, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (608, 138, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (609, 138, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (610, 138, 6)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (611, 138, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (612, 139, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (613, 139, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (614, 139, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (615, 139, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (616, 139, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (617, 139, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (618, 139, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (619, 140, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (620, 140, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (621, 140, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (622, 140, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (623, 140, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (624, 140, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (625, 140, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (626, 141, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (627, 141, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (628, 141, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (629, 141, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (630, 141, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (631, 141, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (632, 141, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (633, 142, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (634, 142, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (635, 142, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (636, 142, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (637, 142, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (638, 142, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (639, 142, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (640, 143, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (641, 143, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (642, 143, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (643, 143, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (644, 143, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (645, 143, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (646, 143, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (647, 144, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (648, 144, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (649, 144, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (650, 144, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (651, 144, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (652, 144, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (653, 144, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (654, 145, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (655, 145, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (656, 145, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (657, 145, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (658, 145, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (659, 145, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (660, 145, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (661, 146, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (662, 146, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (663, 146, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (664, 146, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (665, 146, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (666, 146, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (667, 146, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (668, 147, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (669, 147, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (670, 147, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (671, 147, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (672, 147, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (673, 147, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (674, 147, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (675, 148, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (676, 148, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (677, 148, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (678, 148, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (679, 148, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (680, 148, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (681, 148, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (682, 149, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (683, 149, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (684, 149, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (685, 149, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (686, 149, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (687, 149, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (688, 149, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (689, 150, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (690, 150, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (691, 150, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (692, 150, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (693, 150, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (694, 150, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (695, 150, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (696, 151, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (697, 151, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (698, 151, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (699, 151, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (700, 151, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (701, 151, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (702, 151, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (703, 152, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (704, 152, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (705, 152, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (706, 152, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (707, 152, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (708, 152, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (709, 152, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (710, 153, 1)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (711, 153, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (712, 153, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (713, 153, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (714, 153, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (715, 153, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (716, 153, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (717, 154, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (718, 154, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (719, 154, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (720, 154, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (721, 154, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (722, 154, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (723, 154, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (724, 155, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (725, 155, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (726, 155, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (727, 155, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (728, 155, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (729, 155, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (730, 155, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (731, 156, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (732, 156, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (733, 156, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (734, 156, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (735, 156, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (736, 156, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (737, 156, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (738, 157, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (739, 157, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (740, 157, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (741, 157, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (742, 157, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (743, 157, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (744, 157, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (745, 158, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (746, 158, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (747, 158, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (748, 158, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (749, 158, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (750, 158, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (751, 158, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (752, 159, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (753, 159, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (754, 159, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (755, 159, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (756, 159, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (757, 159, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (758, 159, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (759, 160, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (760, 160, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (761, 160, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (762, 160, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (763, 160, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (764, 160, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (765, 160, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (766, 161, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (767, 161, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (768, 161, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (769, 161, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (770, 161, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (771, 161, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (772, 161, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (773, 162, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (774, 162, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (775, 162, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (776, 162, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (777, 162, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (778, 162, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (779, 162, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (780, 163, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (781, 163, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (782, 163, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (783, 163, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (784, 163, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (785, 163, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (786, 163, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (787, 164, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (788, 164, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (789, 164, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (790, 164, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (791, 164, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (792, 164, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (793, 164, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (794, 165, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (795, 165, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (796, 165, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (797, 165, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (798, 165, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (799, 165, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (800, 165, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (801, 167, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (802, 167, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (803, 167, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (804, 167, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (805, 167, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (806, 167, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (807, 167, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (808, 168, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (809, 168, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (810, 168, 3)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (811, 168, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (812, 168, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (813, 168, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (814, 168, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (815, 166, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (816, 166, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (817, 166, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (818, 166, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (819, 166, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (820, 166, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (821, 166, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (822, 169, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (823, 169, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (824, 169, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (825, 169, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (826, 169, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (827, 169, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (828, 169, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (829, 170, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (830, 170, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (831, 170, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (832, 170, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (833, 170, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (834, 170, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (835, 170, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (836, 171, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (837, 171, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (838, 171, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (839, 171, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (840, 171, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (841, 171, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (842, 171, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (843, 172, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (844, 172, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (845, 172, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (846, 172, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (847, 172, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (848, 172, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (849, 172, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (850, 173, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (851, 173, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (852, 173, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (853, 173, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (854, 173, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (855, 173, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (856, 173, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (857, 174, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (858, 174, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (859, 174, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (860, 174, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (861, 174, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (862, 174, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (863, 174, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (864, 175, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (865, 176, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (866, 177, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (867, 178, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (868, 179, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (869, 180, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (870, 181, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (871, 182, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (872, 183, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (873, 184, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (874, 185, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (875, 186, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (876, 187, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (877, 188, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (878, 189, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (879, 190, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (880, 191, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (881, 192, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (882, 193, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (883, 194, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (884, 195, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (885, 196, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (886, 197, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (887, 198, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (888, 199, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (889, 200, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (890, 201, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (891, 202, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (892, 202, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (893, 202, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (894, 202, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (895, 202, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (896, 202, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (897, 202, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (898, 203, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (899, 203, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (900, 203, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (901, 203, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (902, 203, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (903, 203, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (904, 203, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (905, 204, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (906, 204, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (907, 204, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (908, 204, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (909, 204, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (910, 204, 5)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (911, 204, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (912, 205, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (913, 205, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (914, 205, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (915, 205, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (916, 205, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (917, 205, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (918, 205, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (919, 206, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (920, 206, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (921, 206, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (922, 206, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (923, 206, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (924, 206, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (925, 206, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (926, 207, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (927, 207, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (928, 207, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (929, 207, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (930, 207, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (931, 207, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (932, 207, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (933, 208, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (934, 208, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (935, 208, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (936, 208, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (937, 208, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (938, 208, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (939, 208, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (940, 209, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (941, 209, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (942, 209, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (943, 209, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (944, 209, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (945, 209, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (946, 209, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (947, 210, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (948, 210, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (949, 210, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (950, 210, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (951, 210, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (952, 210, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (953, 210, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (954, 211, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (955, 211, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (956, 211, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (957, 211, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (958, 211, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (959, 211, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (960, 211, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (961, 212, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (962, 212, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (963, 212, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (964, 212, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (965, 212, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (966, 212, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (967, 212, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (968, 213, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (969, 213, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (970, 213, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (971, 213, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (972, 213, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (973, 213, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (974, 213, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (975, 214, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (976, 214, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (977, 214, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (978, 214, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (979, 214, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (980, 214, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (981, 214, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (982, 215, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (983, 215, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (984, 215, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (985, 215, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (986, 215, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (987, 215, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (988, 215, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (989, 216, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (990, 216, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (991, 216, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (992, 216, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (993, 216, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (994, 216, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (995, 216, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (996, 217, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (997, 217, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (998, 217, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (999, 217, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1000, 217, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1001, 217, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1002, 217, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1003, 218, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1004, 218, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1005, 218, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1006, 218, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1007, 218, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1008, 218, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1009, 218, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1010, 219, 1)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1011, 219, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1012, 219, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1013, 219, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1014, 219, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1015, 219, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1016, 219, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1017, 220, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1018, 220, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1019, 220, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1020, 220, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1021, 220, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1022, 220, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1023, 220, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1024, 228, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1025, 228, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1026, 228, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1027, 228, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1028, 228, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1029, 228, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1030, 228, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1031, 227, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1032, 227, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1033, 227, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1034, 227, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1035, 227, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1036, 227, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1037, 227, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1038, 226, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1039, 226, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1040, 226, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1041, 226, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1042, 226, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1043, 226, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1044, 226, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1045, 225, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1046, 225, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1047, 225, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1048, 225, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1049, 225, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1050, 225, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1051, 225, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1052, 224, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1053, 224, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1054, 224, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1055, 224, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1056, 224, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1057, 224, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1058, 224, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1059, 223, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1060, 223, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1061, 223, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1062, 223, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1063, 223, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1064, 223, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1065, 223, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1066, 222, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1067, 222, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1068, 222, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1069, 222, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1070, 222, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1071, 222, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1072, 222, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1073, 221, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1074, 221, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1075, 221, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1076, 221, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1077, 221, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1078, 221, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1079, 221, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1080, 229, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1081, 229, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1082, 229, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1083, 230, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1084, 230, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1085, 230, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1086, 230, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1087, 231, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1088, 231, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1089, 232, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1090, 232, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1091, 232, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1092, 233, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1093, 233, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1095, 234, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1096, 235, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1097, 236, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1098, 236, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1099, 236, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1100, 237, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1103, 238, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1104, 239, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1105, 240, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1106, 241, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1107, 242, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1108, 243, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1109, 244, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1110, 245, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1111, 249, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1112, 250, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1113, 246, 3)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1114, 248, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1115, 247, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1116, 238, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1117, 239, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1118, 251, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1119, 251, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1120, 251, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1121, 251, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1122, 251, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1123, 251, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1124, 251, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1125, 252, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1126, 252, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1127, 252, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1128, 252, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1129, 252, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1130, 252, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1131, 252, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1132, 253, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1133, 253, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1134, 253, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1135, 253, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1136, 253, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1137, 253, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1138, 253, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1139, 254, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1140, 254, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1141, 254, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1142, 254, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1143, 254, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1144, 254, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1145, 254, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1146, 255, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1147, 255, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1148, 255, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1149, 255, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1150, 255, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1151, 255, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1152, 255, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1153, 256, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1154, 256, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1155, 256, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1156, 256, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1157, 256, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1158, 256, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1159, 256, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1160, 257, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1161, 257, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1162, 257, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1163, 257, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1164, 257, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1165, 257, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1166, 257, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1167, 258, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1168, 258, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1169, 258, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1170, 258, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1171, 258, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1172, 258, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1173, 258, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1174, 259, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1175, 259, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1176, 259, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1177, 259, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1178, 259, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1179, 259, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1180, 259, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1181, 260, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1182, 260, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1183, 260, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1184, 260, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1185, 260, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1186, 260, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1187, 260, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1188, 264, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1189, 264, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1190, 264, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1191, 264, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1192, 264, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1193, 264, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1194, 264, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1195, 263, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1196, 263, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1197, 263, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1198, 263, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1199, 263, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1200, 263, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1201, 263, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1202, 262, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1203, 262, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1204, 262, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1205, 262, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1206, 262, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1207, 262, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1208, 262, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1209, 261, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1210, 261, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1211, 261, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1212, 261, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1213, 261, 5)
GO
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1214, 261, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (1215, 261, 7)
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
