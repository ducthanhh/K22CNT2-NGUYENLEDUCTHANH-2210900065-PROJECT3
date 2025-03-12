
CREATE DATABASE K22CNT2_nguyenleducthanh_2210900065_project3;


USE K22CNT2_nguyenleducthanh_2210900065_project3;

CREATE TABLE admins (
    admin_id INT NOT NULL PRIMARY KEY,
    taikhoan VARCHAR(255) NOT NULL,
    matkhau VARCHAR(255) NOT NULL,
    email VARCHAR(255) NULL
);

CREATE TABLE nguoidung (
    ID INT NOT NULL PRIMARY KEY ,
    Ten VARCHAR(255) NOT NULL,
    Ngaysinh DATE NOT NULL,
    Sdt VARCHAR(15) NULL,
    email VARCHAR(255) NULL,
    Diachi TEXT NULL
);

CREATE TABLE bacsi (
    ID INT NOT NULL PRIMARY KEY ,
    Tenbs VARCHAR(255) NOT NULL,
    chuyennganh VARCHAR(255) NOT NULL,
    Sdt VARCHAR(15) NULL,
    email VARCHAR(255) NULL
);

CREATE TABLE thanhtoan (
    id_thanh_toan INT NOT NULL PRIMARY KEY ,
    id_lich_kham INT NULL,
    so_tien DECIMAL(10, 2) NOT NULL,
    phuong_thuc VARCHAR(50) NULL,
    trang_thai VARCHAR(50) NULL,
    ngay_thanh_toan DATE NULL,
    ghi_chu TEXT NULL
);

CREATE TABLE lichkham (
    id_lichkham INT NOT NULL PRIMARY KEY ,
    id_nguoidung INT NULL,
    id_bacsi INT NULL,
    ngay_kham DATE NULL,
    gio_kham TIME(6) NULL,
    trang_thai VARCHAR(50) NULL
);

INSERT INTO lichkham (id_lichkham, id_nguoidung, id_bacsi, ngay_kham, gio_kham, trang_thai)
VALUES 
    (1, 101, 201, '2025-03-10', '08:30:00', 'Chưa khám'),
    (2, 102, 202, '2025-03-11', '09:00:00', 'Đã khám'),
    (3, 103, 203, '2025-03-12', '10:30:00', 'Chưa khám'),
    (4, 104, 204, '2025-03-13', '14:00:00', 'Đã khám');


select * from K22CNT2_nguyenleducthanh_2210900065_project3.lichkham
