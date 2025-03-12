<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Lịch Khám</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #9c27b0;
            color: white;
            padding: 15px;
            text-align: center;
        }

        form {
            background-color: white;
            width: 50%;
            margin: 30px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        input[type="submit"] {
            background-color: #9c27b0;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container a {
            background-color: #9c27b0;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .button-container a:hover {
            background-color: #6a1b9a;
        }
    </style>
</head>
<body>

    <header>
        <h1>Chỉnh Sửa Lịch Khám</h1>
    </header>

    <form action="${pageContext.request.contextPath}/lichkham/update" method="post">
        <input type="hidden" name="id_lichkham" value="${lichkham.id_lichkham}">

        <label for="id_nguoidung">ID Người Dùng</label>
        <input type="text" id="id_nguoidung" name="id_nguoidung" value="${lichkham.id_nguoidung}" required>

        <label for="id_bacsi">ID Bác Sĩ</label>
        <input type="text" id="id_bacsi" name="id_bacsi" value="${lichkham.id_bacsi}" required>

        <label for="ngay_kham">Ngày Khám</label>
        <input type="date" id="ngay_kham" name="ngay_kham" value="${lichkham.ngay_kham}" required>

        <label for="gio_kham">Giờ Khám</label>
        <input type="time" id="gio_kham" name="gio_kham" value="${lichkham.gio_kham}" required>

        <label for="trang_thai">Trạng Thái</label>
        <select id="trang_thai" name="trang_thai" required>
            <option value="Chưa Khám" ${lichkham.trang_thai == 'Chưa Khám' ? 'selected' : ''}>Chưa Khám</option>
            <option value="Đã Khám" ${lichkham.trang_thai == 'Đã Khám' ? 'selected' : ''}>Đã Khám</option>
        </select>

        <input type="submit" value="Cập Nhật Lịch Khám">
    </form>

    <div class="button-container">
        <a href="${pageContext.request.contextPath}/lichkham/list">Trở lại danh sách Lịch Khám</a>
    </div>

</body>
</html>
