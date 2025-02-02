USE [QLCHDCYTmvc]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/14/2024 4:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Fullname] [nvarchar](255) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Sdt] [varchar](12) NULL,
	[Address] [nvarchar](255) NULL,
	[Role] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 8/14/2024 4:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[Maloai] [int] NOT NULL,
	[Tenloai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/14/2024 4:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [varchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[OrderDate] [datetime] NULL,
	[TotalPrice] [float] NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersCarts]    Script Date: 8/14/2024 4:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersCarts](
	[CartId] [int] NOT NULL,
	[ProductId] [varchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 8/14/2024 4:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetails](
	[OrderDetailId] [varchar](100) NOT NULL,
	[OrderId] [varchar](100) NOT NULL,
	[ProductId] [varchar](100) NOT NULL,
	[Quantity] [int] NULL,
	[Giaban] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/14/2024 4:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [varchar](100) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[Maloai] [int] NOT NULL,
	[ProductImage] [nvarchar](255) NULL,
	[Soluongton] [int] NULL,
	[Price] [float] NULL,
	[Mota] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Email], [Password], [Fullname], [Avatar], [Sdt], [Address], [Role]) VALUES (N'admin@gmail.com', N'admin', N'Admin', N'cool.jpg', N'0966914131', N'Dong Thap', N'Admin')
INSERT [dbo].[Accounts] ([Email], [Password], [Fullname], [Avatar], [Sdt], [Address], [Role]) VALUES (N'quimui03@gmail.com', N'quimui', N'mui', N'', N'0123456789', N'Dong Thap', N'Admin')
INSERT [dbo].[Accounts] ([Email], [Password], [Fullname], [Avatar], [Sdt], [Address], [Role]) VALUES (N'user@gmail.com', N'user', N'User', N'', N'0123456789', N'Dong Thap', N'User')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (1, N'Vật liệu y tế tiêu hao')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (2, N'Dụng cụ y tế')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (3, N'Sinh phẩm y tế')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (4, N'Trang thiết bị y khoa')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'1', N'user@gmail.com', CAST(N'2024-08-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'10', N'quimui03@gmail.com', CAST(N'2024-08-13T02:01:23.637' AS DateTime), 60000, N'Reject')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'11', N'quimui03@gmail.com', CAST(N'2024-08-13T12:46:24.617' AS DateTime), 152000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'12', N'quimui03@gmail.com', CAST(N'2024-08-14T15:47:48.533' AS DateTime), 90000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'2', N'user@gmail.com', CAST(N'2024-09-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'3', N'user@gmail.com', CAST(N'2024-10-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'4', N'user@gmail.com', CAST(N'2024-11-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'5', N'user@gmail.com', CAST(N'2024-12-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'6', N'user@gmail.com', CAST(N'2024-03-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'7', N'user@gmail.com', CAST(N'2024-01-06T00:00:00.000' AS DateTime), 300000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'8', N'user@gmail.com', CAST(N'2024-08-12T22:49:21.187' AS DateTime), 30000, N'Approved')
INSERT [dbo].[Orders] ([OrderId], [Email], [OrderDate], [TotalPrice], [status]) VALUES (N'9', N'user@gmail.com', CAST(N'2024-08-12T22:49:21.507' AS DateTime), 30000, N'Approved')
INSERT [dbo].[OrdersCarts] ([CartId], [ProductId], [Email], [Soluong]) VALUES (3, N'6', N'user@gmail.com', 2)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'', N'1', N'1', 2, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'1', N'1', N'1', 10, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'10', N'11', N'1', 2, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'11', N'11', N'2', 2, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'12', N'11', N'5', 1, 32000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'13', N'12', N'1', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'14', N'12', N'3', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'15', N'12', N'7', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'2', N'1', N'2', 20, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'3', N'2', N'3', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'4', N'3', N'4', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'5', N'4', N'2', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'6', N'5', N'3', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'7', N'6', N'4', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'8', N'8', N'2', 1, 30000)
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [Giaban]) VALUES (N'9', N'9', N'3', 1, 30000)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'1', N'Khẩu trang y tế', 1, N'khautrangyte.jpg', 20, 30000, N'Ch?ng Covid')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'2', N'Kéo y tế', 2, N'keo.jpg', 20, 30000, N'Ch?ng Covid')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'3', N'Oxy già', 3, N'oxygia.jpg', 30, 30000, N'Ch?ng Covid')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'4', N'Xe lăn', 4, N'xelan.png', 20, 30000, N'Cho ngu?i ta')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'5', N'Kìm y tế', 2, N'kimyte.jpg', 240, 32000, N'Dùng cho ph?u thu?t')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'6', N'Băng gạc', 1, N'bangcuonyte.png', 50, 20000, N'R?a v?t thuong')
INSERT [dbo].[Products] ([ProductId], [ProductName], [Maloai], [ProductImage], [Soluongton], [Price], [Mota]) VALUES (N'7', N'Dao y tế', 2, N'dao.jpg', 20, 30000, N'Dùng trong ph?u thu?t')
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Accounts] ([Email])
GO
ALTER TABLE [dbo].[OrdersCarts]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Accounts] ([Email])
GO
ALTER TABLE [dbo].[OrdersCarts]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Maloai])
REFERENCES [dbo].[Loai] ([Maloai])
GO
