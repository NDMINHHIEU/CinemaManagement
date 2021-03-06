USE [master]
GO
/****** Object:  Database [QLRapPhim]    Script Date: 12/26/2016 20:37:04 ******/
CREATE DATABASE [QLRapPhim] ON  PRIMARY 
( NAME = N'QLRapPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLRapPhim.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLRapPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLRapPhim_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLRapPhim] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLRapPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLRapPhim] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLRapPhim] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLRapPhim] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLRapPhim] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLRapPhim] SET ARITHABORT OFF
GO
ALTER DATABASE [QLRapPhim] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLRapPhim] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLRapPhim] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLRapPhim] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLRapPhim] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLRapPhim] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLRapPhim] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLRapPhim] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLRapPhim] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLRapPhim] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLRapPhim] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLRapPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLRapPhim] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLRapPhim] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLRapPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLRapPhim] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLRapPhim] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLRapPhim] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLRapPhim] SET  READ_WRITE
GO
ALTER DATABASE [QLRapPhim] SET RECOVERY FULL
GO
ALTER DATABASE [QLRapPhim] SET  MULTI_USER
GO
ALTER DATABASE [QLRapPhim] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLRapPhim] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLRapPhim', N'ON'
GO
USE [QLRapPhim]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuocGia](
	[MaQuocGia] [varchar](50) NOT NULL,
	[TenQuocGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQuocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'gr', N'Đức')
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'it', N'Ý')
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'jp', N'Nhật Bản')
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'kr', N'Hàn Quốc')
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'uk', N'Anh')
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'us', N'Mỹ')
INSERT [dbo].[QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (N'vn', N'Việt Nam')
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenTK] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[IDChucVu] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TaiKhoan] ([MaNV], [TenTK], [pass], [IDChucVu]) VALUES (N'NV01', N'admin', N'202CB962AC59075B964B07152D234B70', 1)
INSERT [dbo].[TaiKhoan] ([MaNV], [TenTK], [pass], [IDChucVu]) VALUES (N'NV02', N'letit1', N'202CB962AC59075B964B07152D234B70', 1)
INSERT [dbo].[TaiKhoan] ([MaNV], [TenTK], [pass], [IDChucVu]) VALUES (N'NV03', N'letit3', N'81DC9BDB52D04DC20036DBD8313ED055', 3)
INSERT [dbo].[TaiKhoan] ([MaNV], [TenTK], [pass], [IDChucVu]) VALUES (N'NV04', N'letit4', N'698D51A19D8A121CE581499D7B701668', 4)
INSERT [dbo].[TaiKhoan] ([MaNV], [TenTK], [pass], [IDChucVu]) VALUES (N'NV05', N'nn1', N'6512BD43D9CAA6E02C990B0A82652DCA', 5)
INSERT [dbo].[TaiKhoan] ([MaNV], [TenTK], [pass], [IDChucVu]) VALUES (N'NV08', N'nn2', N'C4CA4238A0B923820DCC509A6F75849B', 5)
/****** Object:  Table [dbo].[SuKienKM]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuKienKM](
	[MaSuKien] [int] NOT NULL,
	[TenSuKien] [nvarchar](20) NULL,
	[NoiDung] [ntext] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[MucGiamGia] [nvarchar](5) NULL,
	[HinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_SuKienKM] PRIMARY KEY CLUSTERED 
(
	[MaSuKien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SuKienKM] ([MaSuKien], [TenSuKien], [NoiDung], [NgayBatDau], [NgayKetThuc], [MucGiamGia], [HinhAnh]) VALUES (0, N'Khong', N'Khong', NULL, NULL, N'0', NULL)
INSERT [dbo].[SuKienKM] ([MaSuKien], [TenSuKien], [NoiDung], [NgayBatDau], [NgayKetThuc], [MucGiamGia], [HinhAnh]) VALUES (1, N'KmHalloween', N'Khuyến mãi giảm 10000 toàn vé nhân ngày Halloweens', CAST(0x0000A6D000000000 AS DateTime), CAST(0x0000A60400000000 AS DateTime), N'10000', N'')
/****** Object:  Table [dbo].[DangPhim]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangPhim](
	[MaDangPhim] [varchar](5) NOT NULL,
	[TenDangPhim] [nvarchar](5) NULL,
 CONSTRAINT [PK_DangPhim] PRIMARY KEY CLUSTERED 
(
	[MaDangPhim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DangPhim] ([MaDangPhim], [TenDangPhim]) VALUES (N'1', N'2D')
INSERT [dbo].[DangPhim] ([MaDangPhim], [TenDangPhim]) VALUES (N'2', N'3D')
INSERT [dbo].[DangPhim] ([MaDangPhim], [TenDangPhim]) VALUES (N'3', N'4D')
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[IDChucVu] [int] NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu_1] PRIMARY KEY CLUSTERED 
(
	[IDChucVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu] ([IDChucVu], [ChucVu]) VALUES (1, N'Quản lý')
INSERT [dbo].[ChucVu] ([IDChucVu], [ChucVu]) VALUES (2, N'NV Bán vé')
INSERT [dbo].[ChucVu] ([IDChucVu], [ChucVu]) VALUES (3, N'NV quầy thực phẩm')
INSERT [dbo].[ChucVu] ([IDChucVu], [ChucVu]) VALUES (4, N'NV QL Phòng chiếu')
INSERT [dbo].[ChucVu] ([IDChucVu], [ChucVu]) VALUES (5, N'NV QL Phim')
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiPhim](
	[MaLoaiPhim] [varchar](6) NOT NULL,
	[TenLoaiPhim] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiPhim] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LoaiPhim] ([MaLoaiPhim], [TenLoaiPhim]) VALUES (N'1', N'Viễn tưởng')
INSERT [dbo].[LoaiPhim] ([MaLoaiPhim], [TenLoaiPhim]) VALUES (N'2', N'Hành động')
INSERT [dbo].[LoaiPhim] ([MaLoaiPhim], [TenLoaiPhim]) VALUES (N'3', N'Kinh Dị')
INSERT [dbo].[LoaiPhim] ([MaLoaiPhim], [TenLoaiPhim]) VALUES (N'4', N'Hài')
/****** Object:  Table [dbo].[Phim]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [nchar](10) NOT NULL,
	[MaLoaiPhim] [varchar](6) NULL,
	[TenP] [nvarchar](50) NULL,
	[DoDaiGio] [int] NULL,
	[DoDaiPhut] [int] NULL,
	[MaQuocGia] [varchar](50) NULL,
	[MaDangPhim] [varchar](5) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[MoTaPhim] [ntext] NULL,
	[AnhPhim] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Phim] ([MaPhim], [MaLoaiPhim], [TenP], [DoDaiGio], [DoDaiPhut], [MaQuocGia], [MaDangPhim], [NgayBatDau], [NgayKetThuc], [MoTaPhim], [AnhPhim]) VALUES (N'A1        ', N'1', N'Cuộc chiến giữa các vì sao', 1, 50, N'us', N'1', CAST(0x0000A5AA00000000 AS DateTime), CAST(0x0000A69D00000000 AS DateTime), N'...', NULL)
INSERT [dbo].[Phim] ([MaPhim], [MaLoaiPhim], [TenP], [DoDaiGio], [DoDaiPhut], [MaQuocGia], [MaDangPhim], [NgayBatDau], [NgayKetThuc], [MoTaPhim], [AnhPhim]) VALUES (N'A2        ', N'1', N'A2        ', 1, 55, N'us', N'2', CAST(0x0000A6E900000000 AS DateTime), CAST(0x0000A6EA00000000 AS DateTime), N'111', N'')
INSERT [dbo].[Phim] ([MaPhim], [MaLoaiPhim], [TenP], [DoDaiGio], [DoDaiPhut], [MaQuocGia], [MaDangPhim], [NgayBatDau], [NgayKetThuc], [MoTaPhim], [AnhPhim]) VALUES (N'A3        ', N'4', N'Ba Con Sâu', 1, 10, N'it', N'1', CAST(0x0000A6E900000000 AS DateTime), CAST(0x0000A6EA00000000 AS DateTime), N'ba con sâu', N'')
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MaLich] [int] NULL,
	[IDChucVu] [int] NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenNV] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV01', NULL, 1, N'Nguyen Van', N'An', 123, N'12', N'abc@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV02', 1, 2, N'Nguyen Thi', N'B', 234, N'24 Trần Hưng Đạo', N'bcd@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV03', 2, 3, N'Nee', N'Chan', 234, NULL, N'hieugam123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV04', 3, 4, N'Tran Thien', N'D', 456, N'9 Quốc lộ 1', N'def@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV05', 4, 5, N'Ngo Tran Thao', N'E', 567, N'1 Lương Định Của', N'efg@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV08', NULL, 5, N'Lee', N'Sin', 112, N'', N'')
INSERT [dbo].[NhanVien] ([MaNV], [MaLich], [IDChucVu], [HoNV], [TenNV], [SDT], [DiaChi], [Email]) VALUES (N'NV09', NULL, 1, N'Lê', N'Anh', 334, N'', NULL)
/****** Object:  Table [dbo].[Gia]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gia](
	[MaGia] [varchar](5) NOT NULL,
	[MaDangPhim] [varchar](5) NULL,
	[SoTien] [int] NULL,
 CONSTRAINT [PK_Gia] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Gia] ([MaGia], [MaDangPhim], [SoTien]) VALUES (N'1', N'1', 75000)
INSERT [dbo].[Gia] ([MaGia], [MaDangPhim], [SoTien]) VALUES (N'2', N'2', 85000)
/****** Object:  Table [dbo].[SuatChieu]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[MaS] [int] NOT NULL,
	[MaPhim] [nchar](10) NULL,
	[GioChieu] [nvarchar](50) NULL,
	[PhutChieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SuatChieu] ([MaS], [MaPhim], [GioChieu], [PhutChieu]) VALUES (1, N'a1        ', N'10', N'30')
INSERT [dbo].[SuatChieu] ([MaS], [MaPhim], [GioChieu], [PhutChieu]) VALUES (2, N'A3        ', N'11', N'15')
/****** Object:  Table [dbo].[QuayTP]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuayTP](
	[MaSP] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[TenSP] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuayTP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[QuayTP] ([MaSP], [MaNV], [TenSP], [LoaiSP], [SoLuong], [DonVi]) VALUES (N'SP01', N'NV03', N'Coca Cola', N'Nước ngọt', 800, N'chai')
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPC] [nchar](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[SoGhe] [int] NULL,
	[DayGhe] [char](10) NULL,
 CONSTRAINT [PK_PhongChieu] PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPhong], [MaNV], [SoGhe], [DayGhe]) VALUES (N'PC01      ', N'Screen 1', N'NV02', 56, N'6         ')
INSERT [dbo].[PhongChieu] ([MaPC], [TenPhong], [MaNV], [SoGhe], [DayGhe]) VALUES (N'PC02      ', N'Screen 2', N'NV03', 56, N'6         ')
/****** Object:  Table [dbo].[Lich]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich](
	[MaLich] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[CaNgay] [nvarchar](50) NULL,
	[NgayNvCheck] [date] NULL,
	[NgayQlCheck] [date] NULL,
	[IDChucVu] [int] NULL,
 CONSTRAINT [PK_Lich] PRIMARY KEY CLUSTERED 
(
	[MaLich] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lich] ON
INSERT [dbo].[Lich] ([MaLich], [MaNV], [CaNgay], [NgayNvCheck], [NgayQlCheck], [IDChucVu]) VALUES (1, N'NV02', N'12,23,24,35,', CAST(0x3C3C0B00 AS Date), CAST(0x3C3C0B00 AS Date), 2)
INSERT [dbo].[Lich] ([MaLich], [MaNV], [CaNgay], [NgayNvCheck], [NgayQlCheck], [IDChucVu]) VALUES (2, N'NV03', N'12,13,23,24,34,35,36,27,18,', CAST(0x3C3C0B00 AS Date), CAST(0x3C3C0B00 AS Date), 3)
INSERT [dbo].[Lich] ([MaLich], [MaNV], [CaNgay], [NgayNvCheck], [NgayQlCheck], [IDChucVu]) VALUES (3, N'NV04', N'22,33,24,', CAST(0x3E3C0B00 AS Date), CAST(0x3E3C0B00 AS Date), 4)
INSERT [dbo].[Lich] ([MaLich], [MaNV], [CaNgay], [NgayNvCheck], [NgayQlCheck], [IDChucVu]) VALUES (4, N'NV05', N'12,13,14,25,', CAST(0x3E3C0B00 AS Date), CAST(0x3E3C0B00 AS Date), 5)
SET IDENTITY_INSERT [dbo].[Lich] OFF
/****** Object:  Table [dbo].[Ve]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[MaPC] [nchar](10) NULL,
	[MaS] [int] NULL,
	[MaGia] [varchar](5) NULL,
	[MaSuKien] [int] NULL,
	[MaPhim] [nchar](10) NULL,
	[Ghe] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaPC], [MaS], [MaGia], [MaSuKien], [MaPhim], [Ghe], [DonGia]) VALUES (1, N'NV02', N'PC01      ', 1, N'1', 1, N'A1        ', N'10', 70000)
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaPC], [MaS], [MaGia], [MaSuKien], [MaPhim], [Ghe], [DonGia]) VALUES (2, N'NV02', N'PC01      ', 1, N'1', 1, N'A1        ', N'4C,', 65000)
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaPC], [MaS], [MaGia], [MaSuKien], [MaPhim], [Ghe], [DonGia]) VALUES (3, N'NV02', N'PC01      ', 1, N'2', 0, N'A1        ', N'3C,4C,', 170000)
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaPC], [MaS], [MaGia], [MaSuKien], [MaPhim], [Ghe], [DonGia]) VALUES (4, N'NV02', N'PC01      ', 1, N'1', 1, N'A1        ', N'4D,', 195000)
SET IDENTITY_INSERT [dbo].[Ve] OFF
/****** Object:  Table [dbo].[LichChieu]    Script Date: 12/26/2016 20:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaChieu] [int] NOT NULL,
	[MaPC] [nchar](10) NULL,
	[MaS] [int] NULL,
	[NgayChieu] [datetime] NULL,
	[MaPhim] [nchar](10) NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaChieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LichChieu] ([MaChieu], [MaPC], [MaS], [NgayChieu], [MaPhim]) VALUES (1, N'PC01      ', 1, CAST(0x0000A6D900000000 AS DateTime), N'A1        ')
/****** Object:  ForeignKey [FK_Phim_DangPhim]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DangPhim] FOREIGN KEY([MaQuocGia])
REFERENCES [dbo].[QuocGia] ([MaQuocGia])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DangPhim]
GO
/****** Object:  ForeignKey [FK_Phim_DangPhim1]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DangPhim1] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DangPhim1]
GO
/****** Object:  ForeignKey [FK_Phim_LoaiPhim]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LoaiPhim] FOREIGN KEY([MaLoaiPhim])
REFERENCES [dbo].[LoaiPhim] ([MaLoaiPhim])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_LoaiPhim]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVu]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([IDChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
/****** Object:  ForeignKey [FK_Gia_DangPhim]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Gia]  WITH CHECK ADD  CONSTRAINT [FK_Gia_DangPhim] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
GO
ALTER TABLE [dbo].[Gia] CHECK CONSTRAINT [FK_Gia_DangPhim]
GO
/****** Object:  ForeignKey [FK_SuatChieu_Phim]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Phim]
GO
/****** Object:  ForeignKey [FK_QuayTP_NhanVien]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[QuayTP]  WITH CHECK ADD  CONSTRAINT [FK_QuayTP_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[QuayTP] CHECK CONSTRAINT [FK_QuayTP_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhongChieu_NhanVien]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieu_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [FK_PhongChieu_NhanVien]
GO
/****** Object:  ForeignKey [FK_Lich_NhanVien]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_NhanVien]
GO
/****** Object:  ForeignKey [FK_Ve_Gia]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[Gia] ([MaGia])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Gia]
GO
/****** Object:  ForeignKey [FK_Ve_NhanVien]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
/****** Object:  ForeignKey [FK_Ve_Phim]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Phim]
GO
/****** Object:  ForeignKey [FK_Ve_PhongChieu]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_PhongChieu] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_PhongChieu]
GO
/****** Object:  ForeignKey [FK_Ve_SuatChieu]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuatChieu] FOREIGN KEY([MaS])
REFERENCES [dbo].[SuatChieu] ([MaS])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuatChieu]
GO
/****** Object:  ForeignKey [FK_Ve_SuKienKM]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuKienKM] FOREIGN KEY([MaSuKien])
REFERENCES [dbo].[SuKienKM] ([MaSuKien])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuKienKM]
GO
/****** Object:  ForeignKey [FK_LichChieu_PhongChieu]    Script Date: 12/26/2016 20:37:05 ******/
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_PhongChieu] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_PhongChieu]
GO
