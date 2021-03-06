USE [master]
GO
/****** Object:  Database [project_1]    Script Date: 1/11/2022 9:45:03 PM ******/
CREATE DATABASE [project_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\project_1.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'project_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\project_1_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [project_1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [project_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project_1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [project_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project_1] SET  MULTI_USER 
GO
ALTER DATABASE [project_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project_1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [project_1]
GO
/****** Object:  Table [dbo].[banhang]    Script Date: 1/11/2022 9:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banhang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaHang] [nchar](10) NULL,
	[Soluong] [int] NULL,
	[NgayBan] [date] NULL,
	[KieuThanhToan] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kho]    Script Date: 1/11/2022 9:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaHang] [nchar](10) NULL,
	[TenHang] [nvarchar](255) NULL,
	[NgayNhap] [date] NULL,
	[GiaTien] [int] NULL,
	[Soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[banhang] ON 

INSERT [dbo].[banhang] ([id], [MaHang], [Soluong], [NgayBan], [KieuThanhToan]) VALUES (1, N'MH01      ', 1, CAST(N'2022-01-01' AS Date), N'Tiền mặt')
INSERT [dbo].[banhang] ([id], [MaHang], [Soluong], [NgayBan], [KieuThanhToan]) VALUES (2, N'MH02      ', 10, CAST(N'2022-01-01' AS Date), N'Tiền mặt')
INSERT [dbo].[banhang] ([id], [MaHang], [Soluong], [NgayBan], [KieuThanhToan]) VALUES (3, N'MH02      ', 10, CAST(N'2022-01-01' AS Date), N'Tiền mặt')
INSERT [dbo].[banhang] ([id], [MaHang], [Soluong], [NgayBan], [KieuThanhToan]) VALUES (4, N'MH01      ', 1, CAST(N'2022-01-01' AS Date), N'MoMo')
INSERT [dbo].[banhang] ([id], [MaHang], [Soluong], [NgayBan], [KieuThanhToan]) VALUES (5, N'MH08      ', 5, CAST(N'2022-01-02' AS Date), N'Chuyển khoản')
INSERT [dbo].[banhang] ([id], [MaHang], [Soluong], [NgayBan], [KieuThanhToan]) VALUES (6, N'MH04      ', 10, CAST(N'2022-01-02' AS Date), N'Tiền mặt')
SET IDENTITY_INSERT [dbo].[banhang] OFF
SET IDENTITY_INSERT [dbo].[kho] ON 

INSERT [dbo].[kho] ([id], [MaHang], [TenHang], [NgayNhap], [GiaTien], [Soluong]) VALUES (1, N'MH01      ', N'Cà rốt', CAST(N'2022-01-01' AS Date), 12111, 100)
INSERT [dbo].[kho] ([id], [MaHang], [TenHang], [NgayNhap], [GiaTien], [Soluong]) VALUES (2, N'MH02      ', N'Xà lách', CAST(N'2022-01-01' AS Date), 10000, 80)
INSERT [dbo].[kho] ([id], [MaHang], [TenHang], [NgayNhap], [GiaTien], [Soluong]) VALUES (4, N'MH03      ', N'Dưa Leo', CAST(N'2022-01-01' AS Date), 10000, 10)
INSERT [dbo].[kho] ([id], [MaHang], [TenHang], [NgayNhap], [GiaTien], [Soluong]) VALUES (5, N'MH04      ', N'Cải Thìa', CAST(N'2022-01-01' AS Date), 10000, 0)
INSERT [dbo].[kho] ([id], [MaHang], [TenHang], [NgayNhap], [GiaTien], [Soluong]) VALUES (6, N'MH05      ', N'Bí đỏ', CAST(N'2022-01-01' AS Date), 120000, 100)
SET IDENTITY_INSERT [dbo].[kho] OFF
USE [master]
GO
ALTER DATABASE [project_1] SET  READ_WRITE 
GO
