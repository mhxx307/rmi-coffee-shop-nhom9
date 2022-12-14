USE [master]
GO
/****** Object:  Database [QLCoffee]    Script Date: 11/22/2022 05:40:09 PM ******/
CREATE DATABASE [QLCoffee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCoffee', FILENAME = N'D:\DATA\QLCoffee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLCoffee_log', FILENAME = N'D:\DATA\QLCoffee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCoffee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCoffee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCoffee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCoffee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCoffee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCoffee] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCoffee] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLCoffee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCoffee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCoffee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCoffee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCoffee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCoffee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCoffee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCoffee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCoffee] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLCoffee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCoffee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCoffee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCoffee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCoffee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCoffee] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCoffee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCoffee] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCoffee] SET  MULTI_USER 
GO
ALTER DATABASE [QLCoffee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCoffee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCoffee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCoffee] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLCoffee] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLCoffee]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHoaDon] [varchar](10) NOT NULL,
	[maSanPham] [varchar](10) NOT NULL,
	[soLuong] [int] NULL,
	[thanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [varchar](10) NOT NULL,
	[ngayLapHoaDon] [date] NULL,
	[tongTien] [float] NULL,
	[ma_khach_hang] [varchar](10) NOT NULL,
	[ma_nhan_vien] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [varchar](10) NOT NULL,
	[diaChi] [nvarchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[soDienThoai] [varchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maLoaiSanPham] [varchar](10) NOT NULL,
	[tenLoaiSanPham] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](10) NOT NULL,
	[diaChi] [nvarchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[namSinh] [varchar](30) NOT NULL,
	[soDienThoai] [varchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [varchar](10) NOT NULL,
	[donGia] [float] NOT NULL,
	[kichCo] [nvarchar](30) NOT NULL,
	[tenSanPham] [nvarchar](30) NOT NULL,
	[maLoaiSanPham] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/22/2022 05:40:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maNhanVien] [varchar](10) NOT NULL,
	[matKhau] [varchar](255) NOT NULL,
	[quyen] [varchar](15) NOT NULL,
	[tenTaiKhoan] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00001', N'SP00001', 1, 15000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00001', N'SP00005', 2, 26000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00001', N'SP00029', 1, 40000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00002', N'SP00001', 1, 15000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00002', N'SP00005', 2, 26000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00002', N'SP00016', 2, 50000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00002', N'SP00029', 1, 40000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00002', N'SP00031', 2, 60000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00003', N'SP00026', 1, 20000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00003', N'SP00028', 2, 70000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00004', N'SP00019', 1, 20000)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maSanPham], [soLuong], [thanhTien]) VALUES (N'HD00004', N'SP00020', 1, 20000)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLapHoaDon], [tongTien], [ma_khach_hang], [ma_nhan_vien]) VALUES (N'HD00001', CAST(N'2022-11-22' AS Date), 126000, N'KH00001', N'NV0001')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLapHoaDon], [tongTien], [ma_khach_hang], [ma_nhan_vien]) VALUES (N'HD00002', CAST(N'2022-11-22' AS Date), 150000, N'KH00003', N'NV0001')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLapHoaDon], [tongTien], [ma_khach_hang], [ma_nhan_vien]) VALUES (N'HD00003', CAST(N'2022-11-22' AS Date), 90000, N'KH00004', N'NV0001')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLapHoaDon], [tongTien], [ma_khach_hang], [ma_nhan_vien]) VALUES (N'HD00004', CAST(N'2022-11-22' AS Date), 40000, N'KH00006', N'NV0001')
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00001', N'Bình Tân, TP HCM', N'nhattien@gmail.com', N'087754323', N'Nguyễn Nhật Tiến')
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00002', N'Quận 3, TP HCM', N'toanvo@gmail.com', N'032665323', N'Võ Văn Toàn')
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00003', N'Quận 5, TP HCM', N'huuloi9a1@gmail.com', N'0466328632', N'Nguyễn Hữu Lợi')
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00004', N'TP Thủ Đức', N'nhathuynh@gmail.com', N'0898763893', N'Huỳnh Nguyên Nhật')
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00005', N'Quận 9, HCM', N'xuankhuepnt@gmail.com', N'0988635432', N'Trần Xuân Khuê')
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00006', N'Quận 2, HCM', N'trinhnguyen@gmail.com', N'0987653421', N'Nguyễn Hoàng Mỹ Trinh')
INSERT [dbo].[KhachHang] ([maKhachHang], [diaChi], [email], [soDienThoai], [tenKhachHang]) VALUES (N'KH00007', N'Quận 9, TP Thủ Đức', N'hongdiem@gmail.com', N'088875342', N'Nguyễn Thị Hồng Diễm')
GO
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0001', N'Nước Ngọt')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0002', N'Cà Phê')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0003', N'Bánh Ngọt')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0004', N'Nước Ép')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0005', N'Kem')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0006', N'Trà Sữa')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP0007', N'Điểm Tâm')
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [diaChi], [email], [namSinh], [soDienThoai], [tenNhanVien]) VALUES (N'NV00002', N'Quận 12, TP HCM', N'hongquan@gmail.com', N'2001', N'0965826543', N'Nguyễn Hồng Quân')
INSERT [dbo].[NhanVien] ([maNhanVien], [diaChi], [email], [namSinh], [soDienThoai], [tenNhanVien]) VALUES (N'NV00003', N'Binh Tan, TP HCM', N'hoang@gmail.com', N'2001', N'08765352', N'Nguyễn Viết Hoàng')
INSERT [dbo].[NhanVien] ([maNhanVien], [diaChi], [email], [namSinh], [soDienThoai], [tenNhanVien]) VALUES (N'NV00004', N'Quận 12, HCM', N'minhquan@gmail.com', N'2001', N'023273762', N'La Võ Minh Quân')
INSERT [dbo].[NhanVien] ([maNhanVien], [diaChi], [email], [namSinh], [soDienThoai], [tenNhanVien]) VALUES (N'NV0001', N'TP Hồ Chí Minh', N'quanly@gmail.com', N'2000', N'0988867775', N'Quan Ly')
GO
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00001', 15000, N'Nhỏ', N'Coca Cola', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00002', 20000, N'Vừa', N'Coca Cola', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00003', 17000, N'Nhỏ', N'Pepsi', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00004', 24000, N'Vừa', N'Pepsi', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00005', 13000, N'Nhỏ', N'7 Up', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00006', 14000, N'Nhỏ', N'Number one', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00007', 16000, N'Lớn', N'Number One', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00008', 16000, N'Nhỏ', N'Dr.Thanh', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00009', 11000, N'Nhỏ', N'C2', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00010', 15000, N'Nhỏ', N'Trà Xanh 0 độ', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00011', 19000, N'Nhỏ', N'Revive', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00012', 19000, N'Nhỏ', N'Trà Olong Tea+', N'LSP0001')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00013', 20000, N'Nhỏ', N'Cà phê sữa', N'LSP0002')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00014', 18000, N'Nhỏ', N'Cà phê đen', N'LSP0002')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00015', 23000, N'Nhỏ', N'Ca cao', N'LSP0002')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00016', 25000, N'Nhỏ', N'Bạc xỉu', N'LSP0002')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00017', 10000, N'Nhỏ', N'Bánh táo', N'LSP0003')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00018', 30000, N'Nhỏ', N'Bánh Bông Lan', N'LSP0003')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00019', 20000, N'Nhỏ', N'Nước ép xoài', N'LSP0004')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00020', 20000, N'Nhỏ', N'Nước ép dưa hấu', N'LSP0004')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00021', 25000, N'Nhỏ', N'Nước ép Việt Quất', N'LSP0004')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00022', 25000, N'Nhỏ', N'Bơ ép', N'LSP0004')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00023', 25000, N'Nhỏ', N'Kem ốc quế', N'LSP0005')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00024', 18000, N'Nhỏ', N'Kem khoai môn', N'LSP0005')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00025', 29000, N'Nhỏ', N'Kem Sữa Dừa', N'LSP0005')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00026', 20000, N'Nhỏ', N'Trà sữa bạc hà', N'LSP0006')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00027', 25000, N'Nhỏ', N'Hồng trà sữa', N'LSP0006')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00028', 35000, N'Nhỏ', N'Trà sữa socola', N'LSP0006')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00029', 40000, N'Nhỏ', N'Bún Bò', N'LSP0007')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00030', 38000, N'Nhỏ', N'Bún Giò', N'LSP0007')
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [kichCo], [tenSanPham], [maLoaiSanPham]) VALUES (N'SP00031', 30000, N'Nhỏ', N'Bánh mì ốp la', N'LSP0007')
GO
INSERT [dbo].[TaiKhoan] ([maNhanVien], [matKhau], [quyen], [tenTaiKhoan]) VALUES (N'NV00002', N'a123456', N'NhanVien', N'NV00002')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [matKhau], [quyen], [tenTaiKhoan]) VALUES (N'NV00003', N'a123456', N'NhanVien', N'NV00003')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [matKhau], [quyen], [tenTaiKhoan]) VALUES (N'NV00004', N'a123456', N'NhanVien', N'NV00004')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [matKhau], [quyen], [tenTaiKhoan]) VALUES (N'NV0001', N'123', N'QuanLy', N'QuanLy')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_oqs2pwioc51vh4c8c4na6nbw8]    Script Date: 11/22/2022 05:40:10 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [UK_oqs2pwioc51vh4c8c4na6nbw8] UNIQUE NONCLUSTERED 
(
	[tenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK48lko1mwj5apm7o0w68jp3ugw] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK48lko1mwj5apm7o0w68jp3ugw]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FKjrhk50rw9gnc8yk1epve0uc7s] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FKjrhk50rw9gnc8yk1epve0uc7s]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKfy416l4a89uhqsapiwlrqqc6] FOREIGN KEY([ma_khach_hang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKfy416l4a89uhqsapiwlrqqc6]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKth15g5lq49u1ci9466x5mfjap] FOREIGN KEY([ma_nhan_vien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKth15g5lq49u1ci9466x5mfjap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FKbvqxsijsbvtwuleneul95jswa] FOREIGN KEY([maLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([maLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FKbvqxsijsbvtwuleneul95jswa]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK9lupyi9pufop3bkwjm4ig97u] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK9lupyi9pufop3bkwjm4ig97u]
GO
USE [master]
GO
ALTER DATABASE [QLCoffee] SET  READ_WRITE 
GO
