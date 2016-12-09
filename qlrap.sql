USE [master]
GO
/****** Object:  Database [QLRapPhim]    Script Date: 12/09/2016 19:09:54 ******/
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
/****** Object:  Table [dbo].[QuocGia]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[SuKienKM]    Script Date: 12/09/2016 19:09:55 ******/
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
	[HinhAnh] [image] NULL,
	[MucGiamGia] [nvarchar](5) NULL,
 CONSTRAINT [PK_SuKienKM] PRIMARY KEY CLUSTERED 
(
	[MaSuKien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangPhim]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/09/2016 19:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[IDChucVu] [int] NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[IDChucVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[Phim]    Script Date: 12/09/2016 19:09:55 ******/
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
	[AnhPhim] [image] NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/09/2016 19:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[Gia]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[SuatChieu]    Script Date: 12/09/2016 19:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[MaS] [int] NOT NULL,
	[MaPhim] [nchar](10) NULL,
	[GioChieu] [int] NULL,
	[PhutChieu] [int] NULL,
 CONSTRAINT [PK_SuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuayTP]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 12/09/2016 19:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPC] [nchar](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MaPhim] [nchar](10) NULL,
	[MaNV] [nvarchar](50) NULL,
	[MaS] [int] NULL,
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[Lich]    Script Date: 12/09/2016 19:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[Date] [date] NULL,
	[Fromtime] [time](7) NULL,
	[ToTime] [time](7) NULL,
	[CreatedDate] [date] NULL,
	[UpdatedDate] [date] NULL,
	[IDChucVu] [int] NULL,
 CONSTRAINT [PK_Lich] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 12/09/2016 19:09:55 ******/
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
/****** Object:  Table [dbo].[Ve]    Script Date: 12/09/2016 19:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[MaPC] [nchar](10) NULL,
	[MaS] [int] NULL,
	[MaGia] [varchar](5) NULL,
	[MaSuKien] [int] NULL,
	[MaChieu] [int] NULL,
	[MaPhim] [nchar](10) NULL,
	[Ghe] [int] NULL,
	[Day] [char](10) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Phim_DangPhim]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DangPhim] FOREIGN KEY([MaQuocGia])
REFERENCES [dbo].[QuocGia] ([MaQuocGia])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DangPhim]
GO
/****** Object:  ForeignKey [FK_Phim_DangPhim1]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DangPhim1] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DangPhim1]
GO
/****** Object:  ForeignKey [FK_Phim_LoaiPhim]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LoaiPhim] FOREIGN KEY([MaLoaiPhim])
REFERENCES [dbo].[LoaiPhim] ([MaLoaiPhim])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_LoaiPhim]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([IDChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
/****** Object:  ForeignKey [FK_Gia_DangPhim]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Gia]  WITH CHECK ADD  CONSTRAINT [FK_Gia_DangPhim] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
GO
ALTER TABLE [dbo].[Gia] CHECK CONSTRAINT [FK_Gia_DangPhim]
GO
/****** Object:  ForeignKey [FK_SuatChieu_Phim]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Phim]
GO
/****** Object:  ForeignKey [FK_QuayTP_NhanVien]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[QuayTP]  WITH CHECK ADD  CONSTRAINT [FK_QuayTP_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[QuayTP] CHECK CONSTRAINT [FK_QuayTP_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhongChieu_NhanVien]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieu_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [FK_PhongChieu_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhongChieu_Phim]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [FK_PhongChieu_Phim]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_ChucVu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ChucVu] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([IDChucVu])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ChucVu]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_NhanVien]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
/****** Object:  ForeignKey [FK_Lich_ChucVu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_ChucVu] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([IDChucVu])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_ChucVu]
GO
/****** Object:  ForeignKey [FK_Lich_NhanVien]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_NhanVien]
GO
/****** Object:  ForeignKey [FK_Lich_NhanVien1]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_NhanVien1] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_NhanVien1]
GO
/****** Object:  ForeignKey [FK_LichChieu_PhongChieu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_PhongChieu] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_PhongChieu]
GO
/****** Object:  ForeignKey [FK_Ve_Gia]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[Gia] ([MaGia])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Gia]
GO
/****** Object:  ForeignKey [FK_Ve_LichChieu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([MaChieu])
REFERENCES [dbo].[LichChieu] ([MaChieu])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
/****** Object:  ForeignKey [FK_Ve_NhanVien]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
/****** Object:  ForeignKey [FK_Ve_Phim]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Phim]
GO
/****** Object:  ForeignKey [FK_Ve_PhongChieu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_PhongChieu] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_PhongChieu]
GO
/****** Object:  ForeignKey [FK_Ve_SuatChieu]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuatChieu] FOREIGN KEY([MaS])
REFERENCES [dbo].[SuatChieu] ([MaS])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuatChieu]
GO
/****** Object:  ForeignKey [FK_Ve_SuKienKM]    Script Date: 12/09/2016 19:09:55 ******/
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuKienKM] FOREIGN KEY([MaSuKien])
REFERENCES [dbo].[SuKienKM] ([MaSuKien])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuKienKM]
GO
