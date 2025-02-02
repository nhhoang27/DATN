USE [DongHo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](

	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuanModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuanModel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
	[SanPhamID] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [datetime2](7) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_BinhLuanModel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoaDon_ID] [int] NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoLuong] [nvarchar](max) NULL,
	[Gia] [nvarchar](max) NULL,
	[KhuyenMai] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDonModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucModel](
	[ID_DanhMuc] [nvarchar](450) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhMucModel] PRIMARY KEY CLUSTERED 
(
	[ID_DanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[Sdt] [nvarchar](max) NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoaDonModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPhamModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPhamModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
	[NhaCungCap] [int] NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiSanPhamModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCapModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCapModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaCungCapModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPhamModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[MaLoai] [int] NOT NULL,
	[DanhMuc] [nvarchar](450) NULL,
	[Gia] [int] NOT NULL,
	[GiaMoi] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Image_List] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[SoLuong] [int] NOT NULL,
	[MoTaNgan] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayLap] [datetime2](7) NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPhamModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserModel]    Script Date: 5/14/2022 12:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Sdt] [nvarchar](max) NULL,
	[Loai] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201207030755_KhoiTao', N'3.1.10')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonModel] ON 

INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (1, 1, N'iPhone 12', N'1', N'23990000', 0, 23990000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (2, 2, N'iPhone 12 Pro', N'1', N'29899900', 0, 29899900, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (3, 3, N'iPhone 12 Pro Max', N'1', N'33499000', 0, 33499000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (4, 4, N'iPhone 12 Pro Max', N'1', N'33499000', 0, 33499000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (5, 5, N'iPhone 12 Pro Max', N'1', N'33499000', 0, 33499000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (6, 6, N'iPhone 12 Pro', N'1', N'29899900', 0, 29899900, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (7, 7, N'iPhone 12 Pro Max', N'1', N'33499000', 0, 33499000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (8, 8, N'iPhone 12 Pro Max', N'1', N'33499000', 0, 33499000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (9, 9, N'Samsung Note 20 PLUS', N'1', N'13490000', 0, 13490000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (10, 10, N'iPhone 12', N'1', N'23490000', 0, 23490000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (11, 11, N'iPhone 12', N'1', N'23490000', 0, 23490000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (12, 12, N'iPhone 12 Pro Max', N'1', N'33499000', 0, 33499000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (13, 13, N'iPhone 12', N'1', N'23490000', 0, 23490000, 1)
INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (14, 14, N'iPhone 12 Pro', N'1', N'29899900', 0, 29899900, 1)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonModel] OFF
INSERT [dbo].[DanhMucModel] ([ID_DanhMuc], [TenDanhMuc], [TrangThai]) VALUES (N'DM1', N'NEW PRODUCTS', N'1')
INSERT [dbo].[DanhMucModel] ([ID_DanhMuc], [TenDanhMuc], [TrangThai]) VALUES (N'DM2', N'LATEST PRODUCTS', N'1')
INSERT [dbo].[DanhMucModel] ([ID_DanhMuc], [TenDanhMuc], [TrangThai]) VALUES (N'DM3', N'BEST SELLERS', N'1')
SET IDENTITY_INSERT [dbo].[HoaDonModel] ON 

INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (1, 1, N'Tiến Đạt', N'999', 23990000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (2, 1, N'Tiến Đạt', N'123456', 29899900, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (3, 1, N'Tiến Đạt', N'123456', 33499000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (4, 1, N'Tiến Đạt', N'123456', 33499000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (5, 1, N'hahaah', N'123456', 33499000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (6, 1, N'Tiến Đạt', N'123456', 29899900, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (7, 1, N'action', N'123456', 33499000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (8, 1, N'Tiến Đạt', N'123456', 33499000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (9, 1, N'Tiến Đạt', N'123456', 13490000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (10, 1, N'Tiến Đạt', N'123456', 23490000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (11, 1, N'Tiến Đạt', N'123456', 23490000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (12, 1, N'Tiến Đạt', N'123456', 33499000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (13, 1, N'Tiến Đạt', N'123456', 23490000, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (14, 1, N'Tiến Đạt', N'123456', 29899900, 1)
SET IDENTITY_INSERT [dbo].[HoaDonModel] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPhamModel] ON 

INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (1, N'Casio Nam', 1, N'1')
INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (2, N'CasioNu', 2, N'1')
INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (3, N'CasioOther', 3, N'1')
INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (4, N'Casio', 2, N'1')
SET IDENTITY_INSERT [dbo].[LoaiSanPhamModel] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCapModel] ON 

INSERT [dbo].[NhaCungCapModel] ([ID], [TenNCC], [DiaChi], [TrangThai]) VALUES (1, N'Samsung Electronics Vietnam', N'Yên Trung, Yên Phong, Bắc Ninh', N'1')
INSERT [dbo].[NhaCungCapModel] ([ID], [TenNCC], [DiaChi], [TrangThai]) VALUES (2, N'F.Studio (by FPT) - Apple Authorized Reseller', N'121 Đ. Lê Lợi, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', N'1')
INSERT [dbo].[NhaCungCapModel] ([ID], [TenNCC], [DiaChi], [TrangThai]) VALUES (3, N'ASUS ROG Store', N'264 Nguyễn Thị Minh Khai, Phường 6, Quận 3, Thành phố Hồ Chí Minh', N'1')
SET IDENTITY_INSERT [dbo].[NhaCungCapModel] OFF
SET IDENTITY_INSERT [dbo].[SanPhamModel] ON 

INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (1, N'Casio Made In Thái Lan', 2, N'DM1', 33490000, 33499000, N'1.jpg', N'12nd.jpg', N'128GB', 7, NULL, NULL, CAST(N'2020-12-02 20:01:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (2, N'Đồng Hồ Casio Nam AE-1200', 2, N'DM1', 250000, 230000, N'2.jpg', N'22nd.jpg', N'256GB', 3, NULL, NULL, CAST(N'2020-12-02 20:02:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (3, N'Đồng Hồ Casio LA670', 2, N'DM1', 280000, 270000, N'3.jpg', N'32nd.jpg', N'128GB', 4, NULL, NULL, CAST(N'2020-12-02 20:02:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (4, N'Đồng Hồ Casio Sock Nam', 2, N'DM1', 450000, 430000, N'4.jpg', N'42nd.jpg', N'64GB', 3, NULL, NULL, CAST(N'2020-12-02 20:03:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (5, N'Đồng Hồ Casio Nam MAP 007x', 1, N'DM1', 2500000, 2300000, N'5.jpg', N'52nd.jpg', N'256GB', 10, NULL, NULL, CAST(N'2020-12-02 20:04:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (6, N'Đồng Hồ Casio Nữ B450', 2, N'DM2', 130000, 120000, N'6.jpg', N'6.jpg', N'128GB', 67, NULL, NULL, CAST(N'2020-12-02 20:05:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (7, N'Đồng Hồ CASIO Điện Tử B220', 1, N'DM2', 260000, 240000, N'7.jpg', N'72nd.jpg', N'128GB', 99, NULL, NULL, CAST(N'2020-12-02 20:06:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (8, N'Đồng Hồ CASIO Nữ dfdf', 1, N'DM2', 3500000, 3400000, N'103.jpg', N'103.jpg', N'128GB', 99, NULL, NULL, CAST(N'2020-12-02 20:07:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (9, N'Đồng Hồ Casio Unit', 1, N'DM2', 19900000, 13490000, N'donghocasio.jpg', N'donghocasio.jpg', N'128GB', 83, NULL, NULL, CAST(N'2020-12-02 20:09:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (10, N'Đồng Hồ Casio EX', 1, N'DM2', 13990000, 12990000, N'100.jpg', N'100.jpg', N'256GB', 4, NULL, NULL, CAST(N'2020-12-02 20:10:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (11, N'Đồng Hồ Casio ERS', 3, N'DM3', 34990000, 30000000, N'101.jpg', N'101.jpg', N'25', 9, NULL, NULL, CAST(N'2020-12-02 20:12:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (12, N'Đồng Hồ NAm RGD', 3, N'DM3', 24990000, 22890000, N'102.jpg', N'102.jpg', N'25', 3, NULL, NULL, CAST(N'2020-12-02 20:14:00.0000000' AS DateTime2), N'1')
SET IDENTITY_INSERT [dbo].[SanPhamModel] OFF
SET IDENTITY_INSERT [dbo].[UserModel] ON 

INSERT [dbo].[UserModel] ([ID], [UserName], [Password], [HoTen], [DiaChi], [Email], [Sdt], [Loai], [TrangThai]) VALUES (1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Admin', NULL, NULL, NULL, N'1', N'1')
SET IDENTITY_INSERT [dbo].[UserModel] OFF
ALTER TABLE [dbo].[BinhLuanModel]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanModel_SanPhamModel_SanPhamID] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPhamModel] ([ID])
GO
ALTER TABLE [dbo].[BinhLuanModel] CHECK CONSTRAINT [FK_BinhLuanModel_SanPhamModel_SanPhamID]
GO
ALTER TABLE [dbo].[BinhLuanModel]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanModel_UserModel_User_ID] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuanModel] CHECK CONSTRAINT [FK_BinhLuanModel_UserModel_User_ID]
GO
ALTER TABLE [dbo].[ChiTietHoaDonModel]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonModel_HoaDonModel_HoaDon_ID] FOREIGN KEY([HoaDon_ID])
REFERENCES [dbo].[HoaDonModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonModel] CHECK CONSTRAINT [FK_ChiTietHoaDonModel_HoaDonModel_HoaDon_ID]
GO
ALTER TABLE [dbo].[HoaDonModel]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonModel_UserModel_User_ID] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonModel] CHECK CONSTRAINT [FK_HoaDonModel_UserModel_User_ID]
GO
ALTER TABLE [dbo].[LoaiSanPhamModel]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPhamModel_NhaCungCapModel_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCapModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiSanPhamModel] CHECK CONSTRAINT [FK_LoaiSanPhamModel_NhaCungCapModel_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPhamModel]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamModel_DanhMucModel_DanhMuc] FOREIGN KEY([DanhMuc])
REFERENCES [dbo].[DanhMucModel] ([ID_DanhMuc])
GO
ALTER TABLE [dbo].[SanPhamModel] CHECK CONSTRAINT [FK_SanPhamModel_DanhMucModel_DanhMuc]
GO
ALTER TABLE [dbo].[SanPhamModel]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamModel_LoaiSanPhamModel_MaLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPhamModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamModel] CHECK CONSTRAINT [FK_SanPhamModel_LoaiSanPhamModel_MaLoai]
GO
