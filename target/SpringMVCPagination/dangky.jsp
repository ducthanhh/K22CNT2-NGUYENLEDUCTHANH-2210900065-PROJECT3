<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Người Dùng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; /* Màu tím nhạt */
            text-align: center;
        }

        h2 {
            color: #6a1b9a; /* Màu tím đậm */
        }

        form {
            background-color: #ffffff;
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 2px solid #9c27b0;
        }

        input, textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #9c27b0;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #9c27b0;
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }
    </style>
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
