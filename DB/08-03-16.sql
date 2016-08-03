USE [BanleShop]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 08/03/2016 14:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PreCateID] [int] NULL,
	[isActived] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[ColorProductDetail]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 08/03/2016 14:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[ShortDes] [text] NULL,
	[Content] [text] NULL,
	[MainImage] [nchar](10) NULL,
	[Popular] [int] NULL,
	[CreateDate] [nchar](10) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 08/03/2016 14:53:19 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 08/03/2016 14:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Featured] [bit] NOT NULL,
	[SalePercent] [float] NOT NULL,
	[Promotion] [text] NOT NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 08/03/2016 14:53:19 ******/
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
/****** Object:  Table [dbo].[SizeProductDetail]    Script Date: 08/03/2016 14:53:19 ******/
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
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0a81bf0f-60b1-4be0-82ae-79520e25b949', N'quyht@yourfashion.vn', 0, N'ACBW/3Fn7UOzgOAWZXZjn/gru2TSFxaksgwyl8ppM5/SFV975p53v9ZRF9rz0h9vAA==', N'63d08687-806b-4fb2-8b84-972c9be07478', NULL, 0, 0, NULL, 1, 0, N'quyht@yourfashion.vn')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (1, N'Thời trang', -1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (2, N'Áo thun nam', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (3, N'Áo khoác nam', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (17, N'Điện gia dụng', -1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (20, N'Điện tử', -1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (21, N'Laptop', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (22, N'Điện thoại', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (23, N'Hàng xây dựng', -1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (25, N'Xi măng', 23, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (26, N'Giày nam', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (28, N'Áo thun nữ', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (29, N'Áo khoác nữ', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (30, N'Đầm / Váy', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (31, N'Giày nữ', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (32, N'Phụ kiện ', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (37, N'Đồ gia dụng nhà bếp', 17, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (38, N'Đồ gia dụng lớn', 17, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (39, N'Quạt và máy nóng lạnh', 17, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (40, N'Thiết bị chăm sóc quần áo', 17, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (41, N'Thiết bị đồ gia dụng', 17, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (42, N'Dụng cụ và thiết bị gia đình', 17, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (43, N'Máy tính bảng', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (44, N'Máy vi tính', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (45, N'Máy ảnh & Máy quay phim', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (46, N'TV', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (47, N'Âm thanh', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (48, N'Phụ kiện máy tính', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (49, N'Gạch', 23, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (50, N'Đá hoa cương', 23, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (51, N'Phụ kiện điện thoại', 20, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (52, N'Sức khỏe và sắc đẹp', -1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (53, N'Chăm sóc da mặt', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (54, N'Trang điểm', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (55, N'Chăm sóc cơ thể', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (56, N'Chăm sóc tóc', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (57, N'Dầu gội & Sữa tắm', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (58, N'Nước hoa', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (59, N'Chăm sóc cá nhân', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (60, N'Thiết bị y tế', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (61, N'Thực phẩm bổ sung', 52, NULL)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID], [isActived]) VALUES (62, N'Chăm sóc cho nam giới', 52, NULL)
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
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (3, 1, N'/BigImages//Images/ProductImages/BGR1.jpg', 1039)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (6, 2, N'/BigImages//Images/ProductImages/Invoice-1564-Creative-page-001.jpg', 1039)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (7, 1, N'/BigImages//Images/ProductImages/1280imago001.jpg', 1038)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (8, 2, N'/BigImages//Images/ProductImages/1280imago009.jpg', 1038)
INSERT [dbo].[Image] ([ID], [IDColor], [Path], [IDProduct]) VALUES (9, 3, N'/BigImages//Images/ProductImages/1280imago003.jpg', 1038)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (15, N'Áo Nam Soyoung MEN TOP 012S', 2, 100000, N'<h2>Giới thiệu sản phẩm Bộ 2 &Aacute;o Thun Ph&ocirc;ng Cộc Tay Nam SoYoung 2MEN TOP 011C BR DR</h2>

<p><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU</strong></p>

<p>So Young l&agrave; thương hiệu chuy&ecirc;n về c&aacute;c loại gi&agrave;y d&eacute;p, quần &aacute;o, phụ kiện thời trang. Ch&uacute;ng t&ocirc;i h&acirc;n hạnh mang đến cho qu&yacute; kh&aacute;ch những sản phẩm chất lượng với gi&aacute; cả ph&ugrave; hợp v&agrave; dịch vụ uy t&iacute;n. Tất cả c&aacute;c sản phẩm của So Young đều được ch&uacute;ng t&ocirc;i tuyển chọn một c&aacute;ch kỹ lưỡng sao cho ph&ugrave; hợp với phong c&aacute;ch Ch&acirc;u &Aacute; v&agrave; bắt nhịp c&ugrave;ng xu hướng trẻ. Đến với ch&uacute;ng t&ocirc;i kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m mua h&agrave;ng với nhiều mẫu m&atilde; được cập nhật thường xuy&ecirc;n v&agrave; nhiều khuyến mại hấp dẫn.</p>

<p>Trẻ trung - Uy t&iacute;n - Chất lượng</p>

<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>

<p>Sản phẩm: Bộ 2 &Aacute;o Thun Ph&ocirc;ng Cộc Tay.<br />
Chất liệu: Cotton chun co gi&atilde;n. Chất vải mềm, tho&aacute;ng m&aacute;t, bền m&agrave;u.<br />
Thiết kế tay cộc, c&oacute; cổ lịch sự sang trọng m&agrave; vẫn trẻ trung.<br />
Th&iacute;ch hợp mang v&agrave;o nhiều dịp kh&aacute;c nhau như đi l&agrave;m, đi học hoặc đi chơi.<br />
Xuất xứ: Việt Nam.<br />
Size : Ngực (inch) / Ngực (cm).<br />
- S : 34-36 inch / 86-91 cm.<br />
- M : 36-38 inch / 91-96 cm.<br />
- L : 38-40 inch / 96-101 cm.</p>
', 20, N'/Images/ProductImages/054y_white_front_high.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (16, N'Áo Thun MEN 018D DY', 2, 160000, N'<h2>Giới thiệu sản phẩm Bộ 2 &Aacute;o Thun Ph&ocirc;ng Cộc Tay Nam SoYoung 2MEN TOP 011C BR DR</h2>

<p><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU</strong></p>

<p>&nbsp;</p>

<p><img alt="image" src="https://farm6.staticflickr.com/5773/20265586304_584fdfa91f_m.jpg" /></p>

<p>So Young l&agrave; thương hiệu chuy&ecirc;n về c&aacute;c loại gi&agrave;y d&eacute;p, quần &aacute;o, phụ kiện thời trang. Ch&uacute;ng t&ocirc;i h&acirc;n hạnh mang đến cho qu&yacute; kh&aacute;ch những sản phẩm chất lượng với gi&aacute; cả ph&ugrave; hợp v&agrave; dịch vụ uy t&iacute;n. Tất cả c&aacute;c sản phẩm của So Young đều được ch&uacute;ng t&ocirc;i tuyển chọn một c&aacute;ch kỹ lưỡng sao cho ph&ugrave; hợp với phong c&aacute;ch Ch&acirc;u &Aacute; v&agrave; bắt nhịp c&ugrave;ng xu hướng trẻ. Đến với ch&uacute;ng t&ocirc;i kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m mua h&agrave;ng với nhiều mẫu m&atilde; được cập nhật thường xuy&ecirc;n v&agrave; nhiều khuyến mại hấp dẫn.</p>

<p>Trẻ trung - Uy t&iacute;n - Chất lượng</p>

<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>

<p>Sản phẩm: Bộ 2 &Aacute;o Thun Ph&ocirc;ng D&agrave;i&nbsp;Tay.<br />
Chất liệu: Cotton chun co gi&atilde;n. Chất vải mềm, tho&aacute;ng m&aacute;t, bền m&agrave;u.<br />
Thiết kế tay d&agrave;i, c&oacute; cổ lịch sự sang trọng m&agrave; vẫn trẻ trung.<br />
Th&iacute;ch hợp mang v&agrave;o nhiều dịp kh&aacute;c nhau như đi l&agrave;m, đi học hoặc đi chơi.<br />
Xuất xứ: Việt Nam.<br />
Size : Ngực (inch) / Ngực (cm).<br />
- S : 34-36 inch / 86-91 cm.<br />
- M : 36-38 inch / 91-96 cm.<br />
- L : 38-40 inch / 96-101 cm.</p>
', 70, N'/Images/ProductImages/ca8ab0a8c355f5ece594a0f4f8302155.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (17, N'Áo Thun Polo WOMEN PIS028', 28, 90000, N'<h2>Giới thiệu sản phẩm &Aacute;o thun nữ Kỳ Khang KK148 (Hồng)</h2>

<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>

<p>- Loại sản phẩm: &Aacute;o thun nữ<br />
- Chất liệu: Sản phẩm được l&agrave;m từ chất liệu thun cao cấp, co gi&atilde;n v&agrave; thấm h&uacute;t tốt mang lại cho bạn cảm gi&aacute;c thoải m&aacute;i v&agrave; tho&aacute;ng m&aacute;t khi mặc.<br />
- Thiết kế: &Aacute;o thun được thiết kế kiểu d&aacute;ng c&ugrave;ng h&igrave;nh ảnh m&agrave;u sắc rất sinh động v&agrave; trẻ trung, gi&uacute;p bạn thể hiện được c&aacute; t&iacute;nh của m&igrave;nh.</p>
', 0, N'/Images/ProductImages/polo-shirts.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (18, N'Áo Khoác Nữ Kaki Hàn Quốc 1838324', 29, 399000, N'<p><strong>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc</strong>&nbsp;-AK9104RN-270</p>

<p>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc mang lại một phong c&aacute;ch sang trọng v&agrave; lịch l&atilde;m cho ph&aacute;i đẹp trong nhiều dịp lễ tiệc, party, hay m&ocirc;i trường c&ocirc;ng sở.</p>

<p>+ Chất liệu: Kaki cao cấp mềm mại, tho&aacute;ng m&aacute;t.<br />
+ Chiếc &aacute;o nổi bật với m&agrave;u sắc c&aacute; t&iacute;nh, thiết kế 6 n&uacute;t v&agrave; 2 t&uacute;i x&eacute;o s&agrave;nh điệu, đường may tinh tế. C&oacute; thể kết hợp với quần kaki, quần t&acirc;y, v&aacute;y c&ocirc;ng sở&hellip;. th&iacute;ch hợp khi đi l&agrave;m, đi dạo hoặc dự ti&ecirc;c.<br />
+ Size: M (th&iacute;ch hợp cho bạn g&aacute;i dưới 54kg), L &lt; 58kg<br />
+ K&iacute;ch thước: d&agrave;i &aacute;o: 70cm; d&agrave;i tay &aacute;o: 58cm; ngực: 92cm; ngang vai: 37cm; eo: 78cm.</p>

<p>+ Sản phẩm cao cấp 2 lớp thể hiện đẳng cấp người mặc</p>

<p>+ M&agrave;u sắc: V&agrave;ng đồng, Đen, Kem (như h&igrave;nh ).</p>

<p>* D&ograve;ng sản phẩm cao cấp, Sản phẩm được đảm bảo về kiểu d&aacute;ng v&agrave; chất lượng sản phẩm.</p>

<p>&nbsp;</p>
', 10, N'/Images/ProductImages/Ao-Khoac-Nu-Kaki-Han-Quoc-Mau-Vang-Dong.jpg', N'/Images/ProductImages/Ao-Khoac-Nu-Kaki-Han-Quoc_den.jpg', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (19, N'Áo Khoác Nữ Kaki Hàn Quốc 18323', 29, 299000, N'<p><strong>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc</strong>&nbsp;-AK9104RN-270</p>

<p>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc mang lại một phong c&aacute;ch sang trọng v&agrave; lịch l&atilde;m cho ph&aacute;i đẹp trong nhiều dịp lễ tiệc, party, hay m&ocirc;i trường c&ocirc;ng sở.</p>

<p>+ Chất liệu: Kaki cao cấp mềm mại, tho&aacute;ng m&aacute;t.<br />
+ Chiếc &aacute;o nổi bật với m&agrave;u sắc c&aacute; t&iacute;nh, thiết kế 6 n&uacute;t v&agrave; 2 t&uacute;i x&eacute;o s&agrave;nh điệu, đường may tinh tế. C&oacute; thể kết hợp với quần kaki, quần t&acirc;y, v&aacute;y c&ocirc;ng sở&hellip;. th&iacute;ch hợp khi đi l&agrave;m, đi dạo hoặc dự ti&ecirc;c.<br />
+ Size: M (th&iacute;ch hợp cho bạn g&aacute;i dưới 54kg), L &lt; 58kg<br />
+ K&iacute;ch thước: d&agrave;i &aacute;o: 70cm; d&agrave;i tay &aacute;o: 58cm; ngực: 92cm; ngang vai: 37cm; eo: 78cm.</p>

<p>+ Sản phẩm cao cấp 2 lớp thể hiện đẳng cấp người mặc</p>

<p>+ M&agrave;u sắc: V&agrave;ng đồng, Đen, Kem (như h&igrave;nh ).</p>

<p>* D&ograve;ng sản phẩm cao cấp, Sản phẩm được đảm bảo về kiểu d&aacute;ng v&agrave; chất lượng sản phẩm.</p>

<p>&nbsp;</p>
', 15, N'/Images/ProductImages/ao-khoac-vest-nu-3.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (21, N'Áo Khoác Nam 2 Lớp SIY8342', 3, 299000, N'<p>&Aacute;o kho&aacute;c nam đẹp với chất liệu kaki, da, vest, jean, len, đa dạng kiểu d&aacute;ng, phong c&aacute;ch được tuyển chọn từ h&agrave;ng ng&agrave;n mẫu ao khoac nam gi&aacute; rẻ v&agrave; chất lượng của Việt Nam.<br />
&Aacute;o kho&aacute;c thường được sử dụng v&agrave;o m&ugrave;a thu đ&ocirc;ng. V&agrave;o thu, tiết trời se lạnh c&aacute;c bạn nam chỉ cần lựa chọn cho m&igrave;nh những chiếc &aacute;o kho&aacute;c mỏng bẳng chất liệu len, thun hoặc kaki vừa gi&uacute;p cơ thể đủ ấm vừa mang đến một phong c&aacute;ch thời trang lịch l&atilde;m. C&ograve;n trong những ng&agrave;y m&ugrave;a đ&ocirc;ng r&eacute;t buốt, c&aacute;c bạn c&oacute; thể chọn cho m&igrave;nh những chiếc &aacute;o kho&aacute;c nam bằng chất liệu da, nỉ hoặc &aacute;o kho&aacute;c phao&hellip;tất cả c&aacute;c sản phẩm đều c&oacute; tại sobuma, dễ d&agrave;ng cho c&aacute;c bạn nam chọn lựa.<br />
B&ecirc;n cạnh đ&oacute;, sobuma lu&ocirc;n cập nhật những mẫu &aacute;o kho&aacute;c nam đẹp nhất, mới nhất, được ưa chuộng nhất hiện nay, sẵn s&agrave;ng đ&aacute;p ứng mọi nhu cầu của qu&yacute; kh&aacute;ch h&agrave;ng.</p>
', 9, N'/Images/ProductImages/ao-khoac-nam-kaki-2-lop-cai-nut-k67-1m4G3-aokhaockakinamtl674_2k80l2hc59c0n.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (22, N'Áo Khoác Nam ShiroIzuku JP392', 3, 699000, N'<p>- &Aacute;o kho&aacute;c kaki nam phong c&aacute;ch H&agrave;n Quốc, cắt may 3D chuy&ecirc;n nghiệp, th&iacute;ch hợp mặc m&ugrave;a thu đ&ocirc;ng, đi l&agrave;m, đi chơi, hẹn h&ograve;, dạo phố...<br />
&nbsp;</p>

<p>- Chất liệu vải kaki 94% Cotton mềm mại, d&agrave;y dặn, giữ d&aacute;ng, tho&aacute;ng kh&iacute;, khả năng giữ ấm v&agrave; chắn gi&oacute; tốt, th&acirc;n thiện với da<br />
&nbsp;</p>

<p>- Th&acirc;n &aacute;o may hơi &ocirc;m t&ocirc;n d&aacute;ng cao r&aacute;o, tạo điểm nhất &nbsp;trẻ trung bằng đường may nổi cắt ch&eacute;o v&agrave; h&agrave;ng khuy tr&ograve;n to bản</p>

<p><br />
- Đ&iacute;nh n&uacute;t cầu vai gi&uacute;p t&ocirc;n bờ vai vạm vỡ, săn chắc, khỏe khoắn;&nbsp;Khuy &aacute;o được lựa chọn kỹ c&agrave;ng, bền bỉ, gia tăng t&iacute;nh thẩm mỹ, độ bền chắc, ổn định cho &aacute;o<br />
<br />
- Thương hiệu CTHAPINE chất lượng 20 năm tập trung v&agrave;o d&ograve;ng thời trang nam</p>
', 15, N'/Images/ProductImages/yQizt7Zf.jpg', N'/Images/ProductImages/gbes7T1y.jpg', N'/Images/ProductImages/V3Ycjtg1.jpg', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (1037, N'Áo Thun MEN DIY', 1, 99000, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/ca8ab0a8c355f5ece594a0f4f8302155.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (1038, N'Áo Nam Soyoung MEN TOP', 1, 99000, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/gbes7T1y.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (1039, N'ao nam j do', 1, 99000, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/gbes7T1y.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (1040, N'YF0288', 1, 0, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/Ao-Khoac-Nu-Kaki-Han-Quoc-Mau-Vang-Dong.jpg', N'', N'', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3], [OldPrice], [isActived]) VALUES (1043, N'Áo khoác nam 007', 2, 99000, N'<p>&Aacute;o nam mang phong c&aacute;ch 007 cực ngầu</p>
', 8, N'/Images/ProductImages/b4s_soda100411_194028a_8col.jpg', N'', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (3, 15, 0, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (4, 16, 0, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (5, 17, 0, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (6, 18, 1, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (7, 19, 1, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (8, 21, 1, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (9, 22, 1, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (10, 1037, 0, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (11, 1038, 0, 0, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (12, 1039, 0, 0.2, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (13, 1040, 1, 0.2, N'0')
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Featured], [SalePercent], [Promotion]) VALUES (14, 1043, 1, 0.2, N'0')
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
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

INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (6, 1039, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (7, 1039, 7)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (8, 1039, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (9, 1039, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (10, 1038, 1)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (11, 1038, 2)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (12, 1038, 3)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (13, 1038, 4)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (14, 1038, 5)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (15, 1038, 6)
INSERT [dbo].[SizeProductDetail] ([ID], [ProID], [SizeID]) VALUES (16, 1038, 7)
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
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_Product]
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
