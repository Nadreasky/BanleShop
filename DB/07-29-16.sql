USE [BanleShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[Color]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[ColorProductDetail]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 07/29/2016 13:54:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Color] [text] NULL,
	[Size] [text] NULL,
 CONSTRAINT [PK_ProductOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[Size]    Script Date: 07/29/2016 13:54:06 ******/
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
/****** Object:  Table [dbo].[SizeProductDetail]    Script Date: 07/29/2016 13:54:06 ******/
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
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (1, N'Thời trang', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (2, N'Áo thun nam', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (3, N'Áo khoác nam', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (17, N'Điện gia dụng', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (20, N'Điện tử', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (21, N'Laptop', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (22, N'Điện thoại', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (23, N'Hàng xây dựng', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (25, N'Xi măng', 23)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (26, N'Giày nam', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (28, N'Áo thun nữ', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (29, N'Áo khoác nữ', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (30, N'Đầm / Váy', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (31, N'Giày nữ', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (32, N'Phụ kiện ', 1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (37, N'Đồ gia dụng nhà bếp', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (38, N'Đồ gia dụng lớn', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (39, N'Quạt và máy nóng lạnh', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (40, N'Thiết bị chăm sóc quần áo', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (41, N'Thiết bị đồ gia dụng', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (42, N'Dụng cụ và thiết bị gia đình', 17)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (43, N'Máy tính bảng', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (44, N'Máy vi tính', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (45, N'Máy ảnh & Máy quay phim', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (46, N'TV', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (47, N'Âm thanh', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (48, N'Phụ kiện máy tính', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (49, N'Gạch', 23)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (50, N'Đá hoa cương', 23)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (51, N'Phụ kiện điện thoại', 20)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (52, N'Sức khỏe và sắc đẹp', -1)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (53, N'Chăm sóc da mặt', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (54, N'Trang điểm', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (55, N'Chăm sóc cơ thể', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (56, N'Chăm sóc tóc', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (57, N'Dầu gội & Sữa tắm', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (58, N'Nước hoa', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (59, N'Chăm sóc cá nhân', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (60, N'Thiết bị y tế', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (61, N'Thực phẩm bổ sung', 52)
INSERT [dbo].[Category] ([ID], [Name], [PreCateID]) VALUES (62, N'Chăm sóc cho nam giới', 52)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (1, N'nadreak', N'12365479', 1, CAST(0x0000A64D00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (2, N'mi mou', N'987456322', 2, CAST(0x0000A64D00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (3, N'hello', N'369852147', 3, CAST(0x0000A64D00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (4, N'nguyen nek ku', N'951357852', 3, CAST(0x0000A64D00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (5, N'wonder women', N'654123897', 1, CAST(0x0000A64D00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (6, N'Huỳnh thanh quy', N'6532105478', 3, CAST(0x0000A64E00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (7, N'loi te le huhu', N'95847347433', 1, CAST(0x0000A64F00000000 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [PhoneNo], [Status], [CreateDate], [DateModified], [Staff], [Address], [Email]) VALUES (8, N'yuyuyu', N'6532555', 1, CAST(0x0000A64F00000000 AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (1, 1, 11, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (2, 1, 14, 2, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (3, 2, 19, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (4, 3, 14, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (5, 3, 12, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (6, 3, 15, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (7, 3, 16, 2, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (8, 4, 15, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (9, 5, 15, 2, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (10, 5, 14, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (11, 5, 16, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (12, 6, 14, 2, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (13, 6, 1038, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (14, 7, 21, 1, NULL, NULL)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Color], [Size]) VALUES (15, 8, 1037, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (14, N'Áo Thun Nam 011DY', 2, 120000, N'<h2>Giới thiệu sản phẩm &Aacute;o Thun Ph&ocirc;ng C&oacute; Cổ Ngắn Tay Nam Soyoung MEN TOP 011C DY</h2>

<p>&ndash; Thương hiệu: SoYoung.<br />
&ndash; Loại sản phẩm: &Aacute;o Thun Ph&ocirc;ng C&oacute; Cổ Ngắn Tay Nam Soyoung.<br />
&ndash; Chất liệu: mềm mại, tho&aacute;ng m&aacute;t tạo cảm gi&aacute;c thoải m&aacute;i khi mặc.<br />
&ndash; Chiều d&agrave;i &aacute;o x Vai x Ngực.<br />
&ndash; S (61cm x 42cm x 44cm).<br />
&ndash; M (62cm x 43cm x 45 cm).<br />
&ndash; L (63cm x 44cm x 46cm).<br />
&ndash; XL (64cm x 45cm x 47cm).</p>
', 30, N'/Images/ProductImages/fp8m7420100_1x.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (15, N'Áo Nam Soyoung MEN TOP 012S', 2, 100000, N'<h2>Giới thiệu sản phẩm Bộ 2 &Aacute;o Thun Ph&ocirc;ng Cộc Tay Nam SoYoung 2MEN TOP 011C BR DR</h2>

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
', 20, N'/Images/ProductImages/054y_white_front_high.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (16, N'Áo Thun MEN 018D DY', 2, 160000, N'<h2>Giới thiệu sản phẩm Bộ 2 &Aacute;o Thun Ph&ocirc;ng Cộc Tay Nam SoYoung 2MEN TOP 011C BR DR</h2>

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
', 70, N'/Images/ProductImages/ca8ab0a8c355f5ece594a0f4f8302155.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (17, N'Áo Thun Polo WOMEN PIS028', 28, 90000, N'<h2>Giới thiệu sản phẩm &Aacute;o thun nữ Kỳ Khang KK148 (Hồng)</h2>

<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>

<p>- Loại sản phẩm: &Aacute;o thun nữ<br />
- Chất liệu: Sản phẩm được l&agrave;m từ chất liệu thun cao cấp, co gi&atilde;n v&agrave; thấm h&uacute;t tốt mang lại cho bạn cảm gi&aacute;c thoải m&aacute;i v&agrave; tho&aacute;ng m&aacute;t khi mặc.<br />
- Thiết kế: &Aacute;o thun được thiết kế kiểu d&aacute;ng c&ugrave;ng h&igrave;nh ảnh m&agrave;u sắc rất sinh động v&agrave; trẻ trung, gi&uacute;p bạn thể hiện được c&aacute; t&iacute;nh của m&igrave;nh.</p>
', 0, N'/Images/ProductImages/polo-shirts.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (18, N'Áo Khoác Nữ Kaki Hàn Quốc 1838324', 29, 399000, N'<p><strong>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc</strong>&nbsp;-AK9104RN-270</p>

<p>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc mang lại một phong c&aacute;ch sang trọng v&agrave; lịch l&atilde;m cho ph&aacute;i đẹp trong nhiều dịp lễ tiệc, party, hay m&ocirc;i trường c&ocirc;ng sở.</p>

<p>+ Chất liệu: Kaki cao cấp mềm mại, tho&aacute;ng m&aacute;t.<br />
+ Chiếc &aacute;o nổi bật với m&agrave;u sắc c&aacute; t&iacute;nh, thiết kế 6 n&uacute;t v&agrave; 2 t&uacute;i x&eacute;o s&agrave;nh điệu, đường may tinh tế. C&oacute; thể kết hợp với quần kaki, quần t&acirc;y, v&aacute;y c&ocirc;ng sở&hellip;. th&iacute;ch hợp khi đi l&agrave;m, đi dạo hoặc dự ti&ecirc;c.<br />
+ Size: M (th&iacute;ch hợp cho bạn g&aacute;i dưới 54kg), L &lt; 58kg<br />
+ K&iacute;ch thước: d&agrave;i &aacute;o: 70cm; d&agrave;i tay &aacute;o: 58cm; ngực: 92cm; ngang vai: 37cm; eo: 78cm.</p>

<p>+ Sản phẩm cao cấp 2 lớp thể hiện đẳng cấp người mặc</p>

<p>+ M&agrave;u sắc: V&agrave;ng đồng, Đen, Kem (như h&igrave;nh ).</p>

<p>* D&ograve;ng sản phẩm cao cấp, Sản phẩm được đảm bảo về kiểu d&aacute;ng v&agrave; chất lượng sản phẩm.</p>

<p>&nbsp;</p>
', 10, N'/Images/ProductImages/Ao-Khoac-Nu-Kaki-Han-Quoc-Mau-Vang-Dong.jpg', N'/Images/ProductImages/Ao-Khoac-Nu-Kaki-Han-Quoc_den.jpg', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (19, N'Áo Khoác Nữ Kaki Hàn Quốc 18323', 29, 299000, N'<p><strong>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc</strong>&nbsp;-AK9104RN-270</p>

<p>&Aacute;o Kho&aacute;c Nữ Kaki H&agrave;n Quốc mang lại một phong c&aacute;ch sang trọng v&agrave; lịch l&atilde;m cho ph&aacute;i đẹp trong nhiều dịp lễ tiệc, party, hay m&ocirc;i trường c&ocirc;ng sở.</p>

<p>+ Chất liệu: Kaki cao cấp mềm mại, tho&aacute;ng m&aacute;t.<br />
+ Chiếc &aacute;o nổi bật với m&agrave;u sắc c&aacute; t&iacute;nh, thiết kế 6 n&uacute;t v&agrave; 2 t&uacute;i x&eacute;o s&agrave;nh điệu, đường may tinh tế. C&oacute; thể kết hợp với quần kaki, quần t&acirc;y, v&aacute;y c&ocirc;ng sở&hellip;. th&iacute;ch hợp khi đi l&agrave;m, đi dạo hoặc dự ti&ecirc;c.<br />
+ Size: M (th&iacute;ch hợp cho bạn g&aacute;i dưới 54kg), L &lt; 58kg<br />
+ K&iacute;ch thước: d&agrave;i &aacute;o: 70cm; d&agrave;i tay &aacute;o: 58cm; ngực: 92cm; ngang vai: 37cm; eo: 78cm.</p>

<p>+ Sản phẩm cao cấp 2 lớp thể hiện đẳng cấp người mặc</p>

<p>+ M&agrave;u sắc: V&agrave;ng đồng, Đen, Kem (như h&igrave;nh ).</p>

<p>* D&ograve;ng sản phẩm cao cấp, Sản phẩm được đảm bảo về kiểu d&aacute;ng v&agrave; chất lượng sản phẩm.</p>

<p>&nbsp;</p>
', 15, N'/Images/ProductImages/ao-khoac-vest-nu-3.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (21, N'Áo Khoác Nam 2 Lớp SIY8342', 3, 299000, N'<p>&Aacute;o kho&aacute;c nam đẹp với chất liệu kaki, da, vest, jean, len, đa dạng kiểu d&aacute;ng, phong c&aacute;ch được tuyển chọn từ h&agrave;ng ng&agrave;n mẫu ao khoac nam gi&aacute; rẻ v&agrave; chất lượng của Việt Nam.<br />
&Aacute;o kho&aacute;c thường được sử dụng v&agrave;o m&ugrave;a thu đ&ocirc;ng. V&agrave;o thu, tiết trời se lạnh c&aacute;c bạn nam chỉ cần lựa chọn cho m&igrave;nh những chiếc &aacute;o kho&aacute;c mỏng bẳng chất liệu len, thun hoặc kaki vừa gi&uacute;p cơ thể đủ ấm vừa mang đến một phong c&aacute;ch thời trang lịch l&atilde;m. C&ograve;n trong những ng&agrave;y m&ugrave;a đ&ocirc;ng r&eacute;t buốt, c&aacute;c bạn c&oacute; thể chọn cho m&igrave;nh những chiếc &aacute;o kho&aacute;c nam bằng chất liệu da, nỉ hoặc &aacute;o kho&aacute;c phao&hellip;tất cả c&aacute;c sản phẩm đều c&oacute; tại sobuma, dễ d&agrave;ng cho c&aacute;c bạn nam chọn lựa.<br />
B&ecirc;n cạnh đ&oacute;, sobuma lu&ocirc;n cập nhật những mẫu &aacute;o kho&aacute;c nam đẹp nhất, mới nhất, được ưa chuộng nhất hiện nay, sẵn s&agrave;ng đ&aacute;p ứng mọi nhu cầu của qu&yacute; kh&aacute;ch h&agrave;ng.</p>
', 9, N'/Images/ProductImages/ao-khoac-nam-kaki-2-lop-cai-nut-k67-1m4G3-aokhaockakinamtl674_2k80l2hc59c0n.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (22, N'Áo Khoác Nam ShiroIzuku JP392', 3, 699000, N'<p>- &Aacute;o kho&aacute;c kaki nam phong c&aacute;ch H&agrave;n Quốc, cắt may 3D chuy&ecirc;n nghiệp, th&iacute;ch hợp mặc m&ugrave;a thu đ&ocirc;ng, đi l&agrave;m, đi chơi, hẹn h&ograve;, dạo phố...<br />
&nbsp;</p>

<p>- Chất liệu vải kaki 94% Cotton mềm mại, d&agrave;y dặn, giữ d&aacute;ng, tho&aacute;ng kh&iacute;, khả năng giữ ấm v&agrave; chắn gi&oacute; tốt, th&acirc;n thiện với da<br />
&nbsp;</p>

<p>- Th&acirc;n &aacute;o may hơi &ocirc;m t&ocirc;n d&aacute;ng cao r&aacute;o, tạo điểm nhất &nbsp;trẻ trung bằng đường may nổi cắt ch&eacute;o v&agrave; h&agrave;ng khuy tr&ograve;n to bản</p>

<p><br />
- Đ&iacute;nh n&uacute;t cầu vai gi&uacute;p t&ocirc;n bờ vai vạm vỡ, săn chắc, khỏe khoắn;&nbsp;Khuy &aacute;o được lựa chọn kỹ c&agrave;ng, bền bỉ, gia tăng t&iacute;nh thẩm mỹ, độ bền chắc, ổn định cho &aacute;o<br />
<br />
- Thương hiệu CTHAPINE chất lượng 20 năm tập trung v&agrave;o d&ograve;ng thời trang nam</p>
', 15, N'/Images/ProductImages/yQizt7Zf.jpg', N'/Images/ProductImages/gbes7T1y.jpg', N'/Images/ProductImages/V3Ycjtg1.jpg')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (1037, N'Áo Thun MEN DIY', 1, 99000, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/ca8ab0a8c355f5ece594a0f4f8302155.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (1038, N'Áo Nam Soyoung MEN TOP', 1, 99000, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/gbes7T1y.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (1039, N'ao nam j do', 1, 99000, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/gbes7T1y.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (1040, N'YF0288', 1, 0, N'<p>ừ 19h30 tối qua đến 5h30 s&aacute;ng 25/7, lửa bao tr&ugrave;m nh&agrave; xưởng rộng 40.000 m2 của c&ocirc;ng ty sản xuất nến thơm, buộc TP Hải Ph&ograve;ng phải huy động gần như to&agrave;n bộ lực&nbsp;</p>
', 0, N'/Images/ProductImages/Ao-Khoac-Nu-Kaki-Han-Quoc-Mau-Vang-Dong.jpg', N'', N'')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (1041, N'yuyuyuy', 2, 99000, N'<p>hjhjhhj</p>

<p>Để ra được bản tuy&ecirc;n bố chung sau hội nghị tại L&agrave;o h&ocirc;m qua, c&aacute;c ngoại trưởng 10 nước ASEAN đ&atilde; phải trải qua &iacute;t nhất hai phi&ecirc;n họp đặc biệt, c&ugrave;ng v&ocirc; số những cuộc điện thoại về nước, v&agrave; phải đối mặt với những c&acirc;u hỏi kh&oacute; về bản chất của sự đồng thuận trong khối, theo&nbsp;<em>StraitsTimes</em>.</p>

<p>Kh&oacute; khăn bắt đầu xuất hiện tại Hội nghị thượng đỉnh Ngoại trưởng ASEAN (AMM) lần thứ 49 ở Vientiane khi c&aacute;c nước th&agrave;nh vi&ecirc;n thảo luận về c&aacute;ch thức đối ph&oacute; với vấn đề tranh chấp l&atilde;nh thổ ở Biển Đ&ocirc;ng, đặc biệt l&agrave; sau khi T&ograve;a Trọng t&agrave;i ra ph&aacute;n quyết b&aacute;c bỏ y&ecirc;u s&aacute;ch &quot;đường lưỡi b&ograve;&quot; phi l&yacute; Trung Quốc đơn phương vẽ ra ở khu vực n&agrave;y.</p>

<p>Philippines l&agrave; th&agrave;nh vi&ecirc;n t&iacute;ch cực nhất trong việc</p>
', 12, N'/Images/ProductImages/2.jpg', N'/Images/ProductImages/6.jpg', N'/Images/ProductImages/7.jpg')
INSERT [dbo].[Product] ([ID], [Name], [CateID], [Price], [Descriptions], [Quantity], [Img1], [Img2], [Img3]) VALUES (1042, N'Áo thun cotton in họa tiết YFTS607', 1, 99000, N'<p>fjrfjkf</p>
', 0, N'/Images/ProductImages/12.Pisces- Song Ngu.jpg', N'', N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
