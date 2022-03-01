--drop database BookingAir
CREATE DATABASE BookingAir
USE BookingAir
CREATE TABLE ChuyenBay (
   MaChuyenBay int NOT NULL identity(1,1),  
   TenHang nvarchar (32) not null,
   DiemKhoiHanh nvarchar (100) not null,
   DiemDen nvarchar (100) not null,
   ThoiGianKhoiHanh time not null,
   ThoiGianDen time not null,
   total_seats int not null,
   PRIMARY KEY (MaChuyenBay)
);
go
CREATE TABLE ThongTinChuyenBay (
   MaChuyenBay INT NOT NULL, 
   NgayKhoiHanh datetime not null,
   GiaVe float not null,
   SoGheCon int not null,
   FOREIGN KEY (MaChuyenBay) REFERENCES ChuyenBay(MaChuyenBay)
   
);
go
CREATE TABLE ThongTinHanhKhach (
   MaHanhKhach  INT  NOT NULL identity(1,1), 
   Username varchar(20) not null,
   [Password] varchar(20) not null,
   Firstname nvarchar (32) not null,
   Lastname nvarchar (32) not null,
   DiaChi nvarchar(50) not null,
   SoDienThoai varchar(15) not null,
   Email varchar(50) not null,
   unique (Username),
   PRIMARY KEY (MaHanhKhach)
);
go

CREATE TABLE ThongtTinVeDaDat (
   MaVe  INT  NOT NULL identity(1,1), 
   MaHanhKhach int not null,
   MaChuyenBay int not null,
   NgayKhoiHanh datetime not null,
   FOREIGN KEY (MaHanhKhach) REFERENCES ThongTinHanhKhach(MaHanhKhach),
   FOREIGN KEY (MaChuyenBay) REFERENCES ChuyenBay(MaChuyenBay),
);
go

insert into CHUYENBAY values ( 'Vietnam Airline', 'SLC', 'BOS', '08:00','17:59', 240 );
 insert into CHUYENBAY values ( 'Vietjet Air','DCA', 'DEN', '14:00','18:07', 220 );
 insert into CHUYENBAY values ( 'Bamboo Airways', 'STL', 'SLC', '07:00','9:13',250 );
 insert into CHUYENBAY values ( 'Jetstar Pacific Airlines', 'STL', 'YYV', '08:30','10:19', 200 );
 insert into CHUYENBAY values ('Bamboo Airways', 'DFW', 'STL', '09:00','11:40', 240 );
 insert into CHUYENBAY values ('Bamboo Airways', 'JFK', 'YYV', '16:00','18:53', 220 );
 insert into CHUYENBAY values ('Vietjet Air', 'ORD', 'MIA', '12:00','14:14', 240 );
 insert into CHUYENBAY values ('Jetstar Pacific Airlines', 'MIA', 'ORD', '15:00','17:14',250  );
 insert into CHUYENBAY values ('Vietnam Airline', 'ORD', 'MIA', '18:00','20:14', 220 );
 insert into CHUYENBAY values ('Jetstar Pacific Airlines', 'MIA', 'ORD', '20:30','23:53', 200  );
 insert into CHUYENBAY values ('Vietjet Air', 'DFW', 'MIA', '19:00','21:30', 240 );
 insert into CHUYENBAY values ('Jetstar Pacific Airlines', 'MIA', 'DFW', '21:00','23:43', 200  );
 insert into CHUYENBAY values ('Vietnam Airline', 'CDG', 'DEN', '10:00','19:29',250  );
 insert into CHUYENBAY values ('Vietjet Air', 'YYV', 'DCA', '13:00','16:10', 200  );
 insert into CHUYENBAY values ('Vietnam Airline', 'DCA', 'YYV', '17:00','18:10',250  );
 insert into CHUYENBAY values ('Bamboo Airways', 'DCA', 'YYV', '18:00','19:10', 220 );
 insert into CHUYENBAY values ('Vietnam Airline', 'BOS', 'ORD', '17:00','18:22', 200  );

select *from ChuyenBay

 insert into ThongTinHanhKhach values ('khachhang1', '123456a', 'Vu Thuy',  'Nga', '223 Nguyen Trai', '8932220', 'Khachhang1@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang2', '1xc456a', 'Do Duc',  'Anh', '567 Tran Phu', '8826729', 'Khachhang2@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang3', 'akt56aa', 'Pham Thi',  'Thu', '285 Le Loi', '8932203', 'Khachhang3@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang4', 'a57856aa', 'Dang Thanh',  'Ha', '435 Quang Trung', '8933232', 'Khachhang4@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang5', 'akt856aa', 'Nguyen Quang',  'Hung', '456 Pasteur', '9812101', 'Khachhang5@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang6', 'akmk6aw', 'Dang Hoang',  'Thanh', '234 Le Van Sy', '8952943', 'Khachhang6@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang7', 'akt5689', 'Vu Xuan',  'Mai', '789 Nguyen Du', '9813401', 'Khachhang7@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang8', 'zk762aa', 'Tran Quang',  'Minh', '678 Le Lai', '9812701', 'Khachhang8@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang9', 'amgytua', 'Nguyen Hoang',  'Hai', '345 Hung Vuong', '8893223', 'Khachhang9@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang10', 'mfdkk6', 'Nguyen Hoang',  'Hiep', '345 Hung Vuong', '8893143', 'Khachhang10@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang11', 'mgdrgd46', 'Dao Tuan',  'Vu', '162 Tran Quoc Toan', '8893223', 'Khachhang11@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang12', 'aktftgh98', 'Vu Dinh',  'Son', '123 Bach Dang', '8556223', 'Khachhang12@gmail.com');
 insert into ThongTinHanhKhach values ('khachhang13', 'akt8ghhja', 'Pham Vu',  'Tien', '75 Nguyen Thong', '8332222', 'Khachhang13@gmail.com');
 
 select * from ThongTinHanhKhach
 
 insert into ThongTinChuyenBay values (1, '12/21/2022', 999, 180);
 insert into ThongTinChuyenBay values (2, '12/12/2022', 1000, 180);
 insert into ThongTinChuyenBay values (3, '12/12/2022', 599, 180);
 insert into ThongTinChuyenBay values (10, '12/12/2022', 1299, 180);
 insert into ThongTinChuyenBay values (7, '12/12/2022', 1499, 180);
 insert into ThongTinChuyenBay values (11, '11/12/2022', 799, 180);
 insert into ThongTinChuyenBay values (9, '10/12/2022', 999.000, 180);
 insert into ThongTinChuyenBay values (6, '12/12/2022', 659, 180);
 insert into ThongTinChuyenBay values (5, '12/12/2022', 329, 180);
 insert into ThongTinChuyenBay values (12, '12/12/2022', 1499, 180);
 insert into ThongTinChuyenBay values (16, '12/12/2022', 999, 180);
 insert into ThongTinChuyenBay values (8, '12/12/2022', 1299, 180);
 
 select * from ThongTinChuyenBay
 
 insert  into ThongtTinVeDaDat values (1, 1, '12/21/2022');
 insert  into ThongtTinVeDaDat values (5, 2, '12/21/2022');
 insert  into ThongtTinVeDaDat values (6, 4, '12/21/2022');
 insert  into ThongtTinVeDaDat values (2, 7, '12/21/2022');
 insert  into ThongtTinVeDaDat values (4, 9, '12/21/2022');
 insert  into ThongtTinVeDaDat values (1, 3, '12/21/2022');
 insert  into ThongtTinVeDaDat values (7, 2, '12/21/2022');
 insert  into ThongtTinVeDaDat values (6, 9, '12/21/2022');
 insert  into ThongtTinVeDaDat values (10, 9, '12/21/2022');
 insert  into ThongtTinVeDaDat values (13, 11, '12/21/2022');
 insert  into ThongtTinVeDaDat values (8, 16, '12/21/2022');
 insert  into ThongtTinVeDaDat values (9, 8, '12/21/2022');
 
 select * from ThongtTinVeDaDat