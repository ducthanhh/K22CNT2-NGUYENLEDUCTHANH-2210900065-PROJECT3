<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Người Dùng</title>
</head>
<body>
    <h2>Đăng Ký</h2>
    <form action="NlDTnguoidung" method="post">
        Họ và tên: <input type="text" name="ten" required><br>
        Ngày sinh: <input type="date" name="ngaysinh" required><br>
        Số điện thoại: <input type="text" name="sdt"><br>
        Email: <input type="email" name="email"><br>
        Địa chỉ: <textarea name="diachi"></textarea><br>
        <input type="submit" value="Đăng Ký">
    </form>
</body>
</html>
