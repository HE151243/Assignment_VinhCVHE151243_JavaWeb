USE [BookingAir]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](32) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'admin2', N'password11', 1)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'admin3', N'password22', 1)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'admin4', N'password33', 1)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'admin5', N'password44', 1)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'admin6', N'password55', 1)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'he151243', N'12345678', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang1', N'password1', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang10', N'password44', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang11', N'password55', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang12', N'password66', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang13', N'password66', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang2', N'password2', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang3', N'password3', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang4', N'password4', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang5', N'password5', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang6', N'password6', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang7', N'password11', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang8', N'password22', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'khachhang9', N'password33', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'tester', N'123456@', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'useradmin1name', N'password66', 1)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username', N'abcabc1', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username1', N'password1', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username2', N'password2', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username234', N'123123', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username247', N'123123TT', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username3', N'password3', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username4', N'password4', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username5', N'password5', 0)
INSERT [dbo].[Account] ([username], [password], [status]) VALUES (N'username6', N'password6', 0)
/****** Object:  Table [dbo].[MayBay]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MayBay](
	[MaMayBay] [varchar](50) NOT NULL,
	[TenMayBay] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMayBay] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'A310', N'Airbus')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'A320', N'Airbus')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'A330', N'Airbus')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'A340', N'Airbus')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'B727', N'Boeing')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'B747', N'Boeing')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'B757', N'Boeing')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'DC10', N'MD')
INSERT [dbo].[MayBay] ([MaMayBay], [TenMayBay]) VALUES (N'DC9', N'MD')
/****** Object:  Table [dbo].[HangBay]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangBay](
	[TenHang] [nvarchar](32) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HangBay] ([TenHang], [Logo]) VALUES (N'Bamboo Airways', N'img/BB-logo.gif')
INSERT [dbo].[HangBay] ([TenHang], [Logo]) VALUES (N'Jetstar Pacific Airlines', N'img/JPA-logo.gif')
INSERT [dbo].[HangBay] ([TenHang], [Logo]) VALUES (N'Vietjet Air', N'img/VJ-logo.gif')
INSERT [dbo].[HangBay] ([TenHang], [Logo]) VALUES (N'Vietnam Airline', N'img/VNAL-logo.gif')
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaChuyenBay] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](32) NOT NULL,
	[DiemKhoiHanh] [nvarchar](100) NOT NULL,
	[DiemDen] [nvarchar](100) NOT NULL,
	[ThoiGianKhoiHanh] [time](7) NOT NULL,
	[ThoiGianDen] [time](7) NOT NULL,
	[total_seats] [int] NOT NULL,
	[MaMayBay] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenBay] ON
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (1, N'Vietnam Airline', N'Hà Nội', N'Phú Quốc', CAST(0x07001417C6680000 AS Time), CAST(0x07004C64EB810000 AS Time), 200, N'B757')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (2, N'Vietjet Air', N'Hà Nội', N'TP. Hồ Chí Minh', CAST(0x0700B0BD58750000 AS Time), CAST(0x07003A26DA970000 AS Time), 220, N'A320')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (3, N'Jetstar Pacific Airlines', N'Hà Nội', N'Nha Trang', CAST(0x0700BCFE35B40000 AS Time), CAST(0x070004C9C4C70000 AS Time), 220, N'A330')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (4, N'Jetstar Pacific Airlines', N'Hải Phòng', N'Phú Quốc', CAST(0x070074053F470000 AS Time), CAST(0x0700422A79560000 AS Time), 200, N'A340')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (5, N'Bamboo Airways', N'Phú Quốc', N'Cần Thơ', CAST(0x0700A8E76F4B0000 AS Time), CAST(0x070068F3C9610000 AS Time), 240, N'B727')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (6, N'Bamboo Airways', N'Cần Thơ', N'Điện Biên', CAST(0x070080461C860000 AS Time), CAST(0x0700CE3C479E0000 AS Time), 220, N'B747')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (7, N'Vietjet Air', N'Điện Biên', N'Nha Trang', CAST(0x0700E03495640000 AS Time), CAST(0x0700846B4D770000 AS Time), 240, N'B757')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (8, N'Jetstar Pacific Airlines', N'Côn Đảo', N'TP. Hồ Chí Minh', CAST(0x07001882BA7D0000 AS Time), CAST(0x0700BCB872900000 AS Time), 250, N'DC10')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (9, N'Vietnam Airline', N'Nha Trang', N'TP. Hồ Chí Minh', CAST(0x070050CFDF960000 AS Time), CAST(0x0700F40598A90000 AS Time), 220, N'DC9')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (10, N'Jetstar Pacific Airlines', N'TP. Hồ Chí Minh', N'Hà Nội', CAST(0x0700543AD4AB0000 AS Time), CAST(0x0700D61230C80000 AS Time), 200, N'A330')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (11, N'Vietjet Air', N'Đà Nẵng', N'Hải Phòng', CAST(0x0700B893419F0000 AS Time), CAST(0x0700BCFE35B40000 AS Time), 240, N'A320')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (12, N'Jetstar Pacific Airlines', N'Hà Nội', N'Phú Quốc', CAST(0x0700881C05B00000 AS Time), CAST(0x07001A72CAC60000 AS Time), 200, N'B747')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (13, N'Vietnam Airline', N'Phú Quốc', N'Điện Biên', CAST(0x070010ACD1530000 AS Time), CAST(0x0700A6B24EA30000 AS Time), 250, N'A310')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (14, N'Vietjet Air', N'Hải Phòng', N'Đà Nẵng', CAST(0x070048F9F66C0000 AS Time), CAST(0x07003CE781870000 AS Time), 200, N'B757')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (15, N'Jetstar Pacific Airlines', N'Hải Phòng', N'TP. Hồ Chí Minh', CAST(0x0700B20A87AC0000 AS Time), CAST(0x0700FAD415C00000 AS Time), 220, N'B727')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (16, N'Bamboo Airways', N'TP. Hồ Chí Minh', N'Hải Phòng', CAST(0x070050CFDF960000 AS Time), CAST(0x07007434A7A00000 AS Time), 220, N'A330')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (17, N'Vietnam Airline', N'Đà Nẵng', N'Phú Quốc', CAST(0x0700E80A7E8E0000 AS Time), CAST(0x07005497F2990000 AS Time), 200, N'A310')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (30, N'Bamboo Airways', N'Hà Nội', N'TP. Hồ Chí Minh', CAST(0x0700A040EF7A0000 AS Time), CAST(0x070070C9B28B0000 AS Time), 260, N'A320')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (31, N'Vietjet Air', N'Hà Nội', N'TP. Hồ Chí Minh', CAST(0x070044BD6AB10000 AS Time), CAST(0x070014462EC20000 AS Time), 200, N'DC10')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (32, N'Vietnam Airline', N'Hà Nội', N'TP. Hồ Chí Minh', CAST(0x0700A8E76F4B0000 AS Time), CAST(0x0700E03495640000 AS Time), 150, N'B727')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (33, N'Bamboo Airways', N'TP. Hồ Chí Minh', N'Hà Nội', CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700DCC9A04F0000 AS Time), 160, N'B747')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (34, N'Jetstar Pacific Airlines', N'TP. Hồ Chí Minh', N'Hà Nội', CAST(0x070040230E430000 AS Time), CAST(0x07007870335C0000 AS Time), 210, N'DC9')
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [TenHang], [DiemKhoiHanh], [DiemDen], [ThoiGianKhoiHanh], [ThoiGianDen], [total_seats], [MaMayBay]) VALUES (35, N'Jetstar Pacific Airlines', N'TP. Hồ Chí Minh', N'Hà Nội', CAST(0x0700B893419F0000 AS Time), CAST(0x0700881C05B00000 AS Time), 170, N'A340')
SET IDENTITY_INSERT [dbo].[ChuyenBay] OFF
/****** Object:  Table [dbo].[ThongTinHanhKhach]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinHanhKhach](
	[MaHanhKhach] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](32) NULL,
	[Name] [nvarchar](32) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](15) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[pID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHanhKhach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTinHanhKhach] ON
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (1, N'khachhang1', N'Nga', N'223 Nguyen Trai', N'8932220', N'Khachhang1@gmail.com', N'1234561231231')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (2, N'khachhang2', N'Anh', N'567 Tran Phu', N'8826729', N'Khachhang2@gmail.com', N'1234561331232')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (3, N'khachhang3', N'Thu', N'285 Le Loi', N'8932203', N'Khachhang3@gmail.com', N'5234561231234')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (4, N'username3', N'Vũ Anh Thư', N'170 Cầu Giấy', N'0904904222', N'anhthu@gmail.com', N'0900654789222')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (5, N'khachhang5', N'Hung', N'456 Pasteur', N'9812101', N'Khachhang5@gmail.com', N'1212531231237')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (6, N'khachhang6', N'Thanh', N'234 Le Van Sy', N'8952943', N'Khachhang6@gmail.com', N'1298561231239')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (7, N'khachhang7', N'Mai', N'789 Nguyen Du', N'9813401', N'Khachhang7@gmail.com', N'1273562312312')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (8, N'khachhang8', N'Minh', N'678 Le Lai', N'9812701', N'Khachhang8@gmail.com', N'1234566661235')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (9, N'khachhang9', N'Hai', N'345 Hung Vuong', N'8893223', N'Khachhang9@gmail.com', N'1234561231237')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (10, N'khachhang10', N'Hiep', N'345 Hung Vuong', N'8893143', N'Khachhang10@gmail.com', N'1234561231232')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (11, N'khachhang11', N'Vu', N'162 Tran Quoc Toan', N'8893223', N'Khachhang11@gmail.com', N'1237451231232')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (12, N'khachhang12', N'Son', N'123 Bach Dang', N'8556223', N'Khachhang12@gmail.com', N'1234523496232')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (13, N'khachhang13', N'Tien', N'75 Nguyen Thong', N'8332222', N'Khachhang13@gmail.com', N'1234554291232')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (33, NULL, N'Phạm Minh Nhật', N'354 Trần Cung', N'0974444777', N'nhatminh@gmail.com', N'03699511478')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (34, NULL, N'Phạm Đăng Tâm', N'354 Trần Cung', N'0972555444', N'dangtam@gmail.com', N'03871511478')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (35, NULL, N'Vương Đình Việt', N'245 Cầu Giấy', N'0965666222', N'vietvuong@gmail.com', N'0159654222256')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (36, NULL, N'a', N'a', N'a', N'a', N'a')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (39, N'username2', N'Hoàng Văn Giang', N'215 Đường Láng', N'0987555211', N'hoanggiang@gmail.com', N'0215658951212')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (40, N'username1', N'Phạm Trường Giang', N'170 Trần Cung', N'0972877277', N'truonggiang@gmail.com', N'030099004587')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (44, N'username2', N'a', N'mâmmmama', N'1111111111', N'thththt@gmail.com', N'1111111111111')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (47, N'username2', N'Trần Đức Anh', N'187 Hoàng Quốc Việt', N'0974888222', N'ducanh@gmail.com', N'9874563571245')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (52, N'tester', N'Phạm Thế Anh', N'182 Phạm Văn Đồng', N'0973478965', N'theanh@gmail.com', N'3214568711235')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (79, N'tester', N'Phạm Mạnh Trường', N'43 Nguyễn Chí Thanh', N'0954222888', N'manhtruong@gmail.com', N'1478963253256')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (80, N'tester', N'Lê Sơn Trường', N'167 Đê La Thành', N'0978444125', N'truonglee@gmail.com', N'1236548952143')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (81, N'tester', N'Tam Kim Phổ', N'254 Trần Hưng Đạo', N'0954621555', N'tamkimpho@gmail.com', N'1245632698754')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (82, N'tester', N'Hoàng Trung Kiên', N'178 Cầu Giấy', N'0981211888', N'ciencien@gmail.com', N'1235412621475')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (84, N'tester', N'Bạch Lãnh Thần', N'246 Hai Bà Trưng', N'0936525747', N'lanhthan@gmail.com', N'3201562479652')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (85, N'tester', N'Bạch Lãnh Thần', N'246 Hai Bà Trưng', N'0936525747', N'lanhthan@gmail.com', N'3201562479652')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (86, N'tester', N'Trương Đình Hải', N'123 Kim Mã', N'0368628128', N'dinhhai@gmai.com', N'1254321369542')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (87, N'tester', N'Trương Đình Hải', N'123 Kim Mã', N'0368628128', N'dinhhai@gmai.com', N'1254321369542')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (88, N'tester', N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (89, N'tester', N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (90, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (91, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (92, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (93, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (94, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (95, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (96, NULL, N'Nguyen Van A', N'123 ABCD', N'1234567891', N'abcdes@gmail.com', N'2564812345625')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (97, N'tester', N'Phung The Anh', N'162 Trung Kinh', N'0216542795', N'theanha@gmail.com', N'1254632597854')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (98, N'tester', N'Phung The Anh', N'162 Trung Kinh', N'0216542795', N'theanha@gmail.com', N'1254632597854')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (99, N'tester', N'Nguyen Hoang Hai', N'124 Long Bien', N'0975777555', N'hoanghai@gmail.com', N'1325462574215')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (100, N'tester', N'Nguyen Hoang Hai', N'124 Long Bien', N'0975777555', N'hoanghai@gmail.com', N'1325462574215')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (101, N'he151243', N'Nguyễn Anh Khoa', N'123 Cầu Giấy', N'0975777555', N'anhkhoa@gmail.com', N'0125462458795')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (102, N'he151243', N'Nguyễn Hoàng Anh', N'163 Kim Mã', N'0976111444', N'haonganh@gmail.com', N'0652432156325')
INSERT [dbo].[ThongTinHanhKhach] ([MaHanhKhach], [Username], [Name], [DiaChi], [SoDienThoai], [Email], [pID]) VALUES (103, N'he151243', N'Nguyễn Hoàng Anh', N'163 Kim Mã', N'0976111444', N'haonganh@gmail.com', N'0652432156325')
SET IDENTITY_INSERT [dbo].[ThongTinHanhKhach] OFF
/****** Object:  Table [dbo].[ThongTinChuyenBay]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinChuyenBay](
	[MaChuyenBay] [int] NOT NULL,
	[NgayKhoiHanh] [datetime] NOT NULL,
	[GiaVe] [float] NOT NULL,
	[SoGheCon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC,
	[NgayKhoiHanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (1, CAST(0x0000AE6500000000 AS DateTime), 1499, 50)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (1, CAST(0x0000AF7200000000 AS DateTime), 999, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (2, CAST(0x0000AE8700000000 AS DateTime), 799, 70)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (3, CAST(0x0000AE8000000000 AS DateTime), 1299, 70)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (4, CAST(0x0000AE6800000000 AS DateTime), 999, 70)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (5, CAST(0x0000AE5C00000000 AS DateTime), 999, 100)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (5, CAST(0x0000AE6500000000 AS DateTime), 899, 150)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (5, CAST(0x0000AED300000000 AS DateTime), 999, 120)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (6, CAST(0x0000AE6100000000 AS DateTime), 599, 90)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (6, CAST(0x0000AF6900000000 AS DateTime), 659, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (7, CAST(0x0000AE6800000000 AS DateTime), 999, 90)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (7, CAST(0x0000AE6B00000000 AS DateTime), 799, 60)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (8, CAST(0x0000AE6700000000 AS DateTime), 499, 50)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (9, CAST(0x0000AE6200000000 AS DateTime), 1799, 150)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (9, CAST(0x0000AE6800000000 AS DateTime), 1500, 185)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (9, CAST(0x0000AE7000000000 AS DateTime), 1299, 190)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (9, CAST(0x0000AF2C00000000 AS DateTime), 999, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (10, CAST(0x0000AE5B00000000 AS DateTime), 1699, 70)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (10, CAST(0x0000AE6600000000 AS DateTime), 699, 80)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (10, CAST(0x0000AF6900000000 AS DateTime), 1299, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (11, CAST(0x0000AE5C00000000 AS DateTime), 1599, 80)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (11, CAST(0x0000AE7200000000 AS DateTime), 499, 90)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (11, CAST(0x0000AF4B00000000 AS DateTime), 799, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (12, CAST(0x0000AF6900000000 AS DateTime), 1499, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (13, CAST(0x0000AEB300000000 AS DateTime), 699, 80)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (14, CAST(0x0000AE5E00000000 AS DateTime), 699, 90)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (16, CAST(0x0000AE6300000000 AS DateTime), 1399, 80)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (16, CAST(0x0000AF6900000000 AS DateTime), 999, 180)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (30, CAST(0x0000AE8700000000 AS DateTime), 1299, 60)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (31, CAST(0x0000AE8700000000 AS DateTime), 1199, 50)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (31, CAST(0x0000AF6900000000 AS DateTime), 1499, 50)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (32, CAST(0x0000AE8700000000 AS DateTime), 999, 40)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (33, CAST(0x0000AF6900000000 AS DateTime), 899, 40)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (34, CAST(0x0000AF6900000000 AS DateTime), 1399, 60)
INSERT [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh], [GiaVe], [SoGheCon]) VALUES (35, CAST(0x0000AF6900000000 AS DateTime), 1000, 70)
/****** Object:  Table [dbo].[ThongTinVeDaDat]    Script Date: 03/17/2022 09:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinVeDaDat](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaHanhKhach] [int] NOT NULL,
	[MaChuyenBay] [int] NOT NULL,
	[NgayKhoiHanh] [datetime] NOT NULL,
	[NguoiLon] [int] NOT NULL,
	[TreEm] [int] NULL,
	[EmBe] [int] NULL,
 CONSTRAINT [PK_ThongtTinVeDaDat] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongTinVeDaDat] ON
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (1, 1, 1, CAST(0x0000AF7200000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (2, 5, 2, CAST(0x0000AF7200000000 AS DateTime), 2, 1, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (3, 84, 16, CAST(0x0000AF6900000000 AS DateTime), 3, 3, 3)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (4, 2, 7, CAST(0x0000AF7200000000 AS DateTime), 2, 2, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (5, 4, 9, CAST(0x0000AF7200000000 AS DateTime), 2, 2, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (6, 3, 3, CAST(0x0000AF7200000000 AS DateTime), 3, NULL, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (7, 7, 2, CAST(0x0000AF7200000000 AS DateTime), 2, 1, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (8, 6, 9, CAST(0x0000AF7200000000 AS DateTime), 2, NULL, 3)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (9, 10, 9, CAST(0x0000AF7200000000 AS DateTime), 1, 2, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (10, 13, 11, CAST(0x0000AF7200000000 AS DateTime), 2, NULL, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (11, 8, 16, CAST(0x0000AF7200000000 AS DateTime), 3, 1, 2)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (12, 9, 8, CAST(0x0000AF7200000000 AS DateTime), 2, NULL, NULL)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (20, 34, 11, CAST(0x0000AE5C00000000 AS DateTime), 4, NULL, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (24, 11, 2, CAST(0x0000AE8700000000 AS DateTime), 2, NULL, 2)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (25, 47, 12, CAST(0x0000AF6900000000 AS DateTime), 2, 2, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (28, 94, 16, CAST(0x0000AF6900000000 AS DateTime), 3, 2, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (29, 81, 10, CAST(0x0000AF6900000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (30, 81, 2, CAST(0x0000AE8700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (31, 82, 10, CAST(0x0000AF6900000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (32, 82, 2, CAST(0x0000AE8700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (33, 85, 10, CAST(0x0000AF6900000000 AS DateTime), 2, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (34, 85, 2, CAST(0x0000AE8700000000 AS DateTime), 2, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (36, 87, 2, CAST(0x0000AE8700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (37, 89, 10, CAST(0x0000AF6900000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (38, 89, 2, CAST(0x0000AE8700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (39, 97, 10, CAST(0x0000AF6900000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (40, 98, 2, CAST(0x0000AE8700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (41, 99, 2, CAST(0x0000AE8700000000 AS DateTime), 2, 1, 2)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (42, 100, 10, CAST(0x0000AF6900000000 AS DateTime), 2, 1, 2)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (45, 101, 2, CAST(0x0000AE8700000000 AS DateTime), 2, 2, 2)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (46, 102, 2, CAST(0x0000AE8700000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[ThongTinVeDaDat] ([MaVe], [MaHanhKhach], [MaChuyenBay], [NgayKhoiHanh], [NguoiLon], [TreEm], [EmBe]) VALUES (47, 103, 10, CAST(0x0000AF6900000000 AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ThongTinVeDaDat] OFF
/****** Object:  ForeignKey [FK__ChuyenBay__MaMay__145C0A3F]    Script Date: 03/17/2022 09:39:22 ******/
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaMayBay])
REFERENCES [dbo].[MayBay] ([MaMayBay])
GO
/****** Object:  ForeignKey [FK__ChuyenBay__TenHa__22AA2996]    Script Date: 03/17/2022 09:39:22 ******/
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD FOREIGN KEY([TenHang])
REFERENCES [dbo].[HangBay] ([TenHang])
GO
/****** Object:  ForeignKey [FK__ThongTinC__MaChu__023D5A04]    Script Date: 03/17/2022 09:39:22 ******/
ALTER TABLE [dbo].[ThongTinChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
GO
/****** Object:  ForeignKey [FK__ThongTinH__Usern__276EDEB3]    Script Date: 03/17/2022 09:39:22 ******/
ALTER TABLE [dbo].[ThongTinHanhKhach]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([username])
GO
/****** Object:  ForeignKey [FK__ThongtTin__MaHan__0AD2A005]    Script Date: 03/17/2022 09:39:22 ******/
ALTER TABLE [dbo].[ThongTinVeDaDat]  WITH CHECK ADD FOREIGN KEY([MaHanhKhach])
REFERENCES [dbo].[ThongTinHanhKhach] ([MaHanhKhach])
GO
/****** Object:  ForeignKey [FK_ThongTinVeDaDat_ThongTinChuyenBay]    Script Date: 03/17/2022 09:39:22 ******/
ALTER TABLE [dbo].[ThongTinVeDaDat]  WITH NOCHECK ADD  CONSTRAINT [FK_ThongTinVeDaDat_ThongTinChuyenBay] FOREIGN KEY([MaChuyenBay], [NgayKhoiHanh])
REFERENCES [dbo].[ThongTinChuyenBay] ([MaChuyenBay], [NgayKhoiHanh])
GO
ALTER TABLE [dbo].[ThongTinVeDaDat] CHECK CONSTRAINT [FK_ThongTinVeDaDat_ThongTinChuyenBay]
GO
