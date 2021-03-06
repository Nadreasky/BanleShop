USE [BanleShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07/21/2016 14:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PreCateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 07/21/2016 14:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameCode] [int] NULL,
	[Path] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/21/2016 14:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/21/2016 14:45:38 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 07/21/2016 14:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ProductOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (1, N'Thời trang', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (2, N'Thời trang nam', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (3, N'Thời trang nữ', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (17, N'Điện gia dụng', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (18, N'Nồi cơm', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (19, N'Máy xay sinh tố', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (20, N'Điện tử', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (21, N'Laptop', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (22, N'Điện thoại', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (23, N'Hàng xây dựng', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (25, N'Xi măng bà tiên', 23)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (3, N'YF1093', 2, 90000, N'<p>Đậu xanh rau m&aacute;</p>
', 9, N'/Images/ProductImages/1280imago006.jpg', N'/Images/ProductImages/32311229788368.jpg', N'/Images/ProductImages/1280imago010.jpg')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (4, N'YF0288', 2, 80000, N'<p>Theo nội dung vụ &aacute;n, s&aacute;ng 5/7/2015, Dương c&ugrave;ng Trần Đ&igrave;nh Thoại đến nh&agrave; &ocirc;ng Mỹ với mục đ&iacute;ch giết người cướp t&agrave;i sản nhưng thất bại. Sau đ&oacute; Thoại kh&ocirc;ng đi nữa nhưng vẫn mua dao gi&uacute;p Dương g&acirc;y &aacute;n.</p>

<p>Đến rạng s&aacute;ng 7/7/2015, Dương c&ugrave;ng Tiến từ H&oacute;c M&ocirc;n xuống B&igrave;nh Phước, sau đ&oacute; đột nhập v&agrave;o căn biệt thự của &ocirc;ng L&ecirc; Văn Mỹ (cha của chị Linh ở huyện Chơn Th&agrave;nh, tỉnh B&igrave;nh Phước). Tại đ&acirc;y Tiến siết cổ, khống chế 6 nạn nh&acirc;n để Dương ra tay s&aacute;t hại. Sau khi g&acirc;y &aacute;n cả 2 c&ograve;n lấy đi tiền v&agrave; một số t&agrave;i sản trị gi&aacute; gần 50 triệu đồng.</p>
', 3, N'/Images/ProductImages/1280imago005.jpg', N'/Images/ProductImages/1280imago002.jpg', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (5, N'YF0823', 2, 10000, N'<p>Theo nội dung vụ &aacute;n, s&aacute;ng 5/7/2015, Dương c&ugrave;ng Trần Đ&igrave;nh Thoại đến nh&agrave; &ocirc;ng Mỹ với mục đ&iacute;ch giết người cướp t&agrave;i sản nhưng thất bại. Sau đ&oacute; Thoại kh&ocirc;ng đi nữa nhưng vẫn mua dao gi&uacute;p Dương g&acirc;y &aacute;n.</p>

<p>Đến rạng s&aacute;ng 7/7/2015, Dương c&ugrave;ng Tiến từ H&oacute;c M&ocirc;n xuống B&igrave;nh Phước, sau đ&oacute; đột nhập v&agrave;o căn biệt thự của &ocirc;ng L&ecirc; Văn Mỹ (cha của chị Linh ở huyện Chơn Th&agrave;nh, tỉnh B&igrave;nh Phước). Tại đ&acirc;y Tiến siết cổ, khống chế 6 nạn nh&acirc;n để Dương ra tay s&aacute;t hại. Sau khi g&acirc;y &aacute;n cả 2 c&ograve;n lấy đi tiền v&agrave; một số t&agrave;i sản trị gi&aacute; gần 50 triệu đồng.</p>
', 1000, N'/Images/ProductImages/78551229788236.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (6, N'YF0281', 18, 50000, N'<p>Ng&agrave;y 17/12/2015, TAND tỉnh B&igrave;nh Phước mở phi&ecirc;n t&ograve;a x&eacute;t xử sơ thẩm, lưu động v&agrave; tuy&ecirc;n phạt bị c&aacute;o Nguyễn Hải Dương, Vũ Văn Tiến &aacute;n tử h&igrave;nh, Trần Đ&igrave;nh Thoại 16 năm t&ugrave; về 2 tội danh Giết người v&agrave; Cướp t&agrave;i sản.</p>
', 800, N'/Images/ProductImages/angewomon.png', N'/Images/ProductImages/1280imago004.jpg', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (7, N'YF0832', 17, 200000, N'<p>Ng&agrave;y 17/12/2015, TAND tỉnh B&igrave;nh Phước mở phi&ecirc;n t&ograve;a x&eacute;t xử sơ thẩm, lưu động v&agrave; tuy&ecirc;n phạt bị c&aacute;o Nguyễn Hải Dương, Vũ Văn Tiến &aacute;n tử h&igrave;nh, Trần Đ&igrave;nh Thoại 16 năm t&ugrave; về 2 tội danh Giết người v&agrave; Cướp t&agrave;i sản.</p>
', 200, N'/Images/ProductImages/29801229788357.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (8, N'YF7384', 14, 700000, N'<p>Ng&agrave;y 17/12/2015, TAND tỉnh B&igrave;nh Phước mở phi&ecirc;n t&ograve;a x&eacute;t xử sơ thẩm, lưu động v&agrave; tuy&ecirc;n phạt bị c&aacute;o Nguyễn Hải Dương, Vũ Văn Tiến &aacute;n tử h&igrave;nh, Trần Đ&igrave;nh Thoại 16 năm t&ugrave; về 2 tội danh Giết người v&agrave; Cướp t&agrave;i sản.</p>
', 2, N'/Images/ProductImages/1280imago009.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (9, N'YF7327', 21, 60000, N'<p>Ng&agrave;y 17/12/2015, TAND tỉnh B&igrave;nh Phước mở phi&ecirc;n t&ograve;a x&eacute;t xử sơ thẩm, lưu động v&agrave; tuy&ecirc;n phạt bị c&aacute;o Nguyễn Hải Dương, Vũ Văn Tiến &aacute;n tử h&igrave;nh, Trần Đ&igrave;nh Thoại 16 năm t&ugrave; về 2 tội danh Giết người v&agrave; Cướp t&agrave;i sản.</p>
', 20, N'/Images/ProductImages/74081229788207.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (10, N'YF9381', 21, 600000, N'<p>Ng&agrave;y 17/12/2015, TAND tỉnh B&igrave;nh Phước mở phi&ecirc;n t&ograve;a x&eacute;t xử sơ thẩm, lưu động v&agrave; tuy&ecirc;n phạt bị c&aacute;o Nguyễn Hải Dương, Vũ Văn Tiến &aacute;n tử h&igrave;nh, Trần Đ&igrave;nh Thoại 16 năm t&ugrave; về 2 tội danh Giết người v&agrave; Cướp t&agrave;i sản.</p>
', 32, N'/Images/ProductImages/emo2grj.jpg', N'', N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
