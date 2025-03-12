<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Mới Tài Khoản</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; /* Màu tím nhạt */
            text-align: center;
            margin: 0;
            padding: 0;
            color: #6a1b9a; /* Màu chữ chính */
        }

        h1 {
            color: #6a1b9a; /* Màu tím đậm */
            font-size: 2em;
            margin-top: 50px;
            font-weight: bold;
        }

        h2 {
            color: #6a1b9a; /* Màu tím đậm */
            margin-bottom: 20px;
            font-size: 1.5em;
        }

        form {
            background-color: #ffffff;
            max-width: 450px;
            margin: 30px auto;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            border: 2px solid #9c27b0;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #9c27b0;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #9c27b0;
            color: white;
            font-weight: bold;
            border: none;
            padding: 12px 0;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
            font-size: 1.1em;
        }

        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }

        .message {
            margin: 15px 0;
            padding: 15px;
            border-radius: 5px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }

        a {
            color: #9c27b0;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            display: inline-block;
            font-size: 1.1em;
        }

        a:hover {
            text-decoration: underline;
        }

        .container {
            width: 100%;
            max-width: 960px;
            margin: 0 auto;
            padding: 0 15px;
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>Quản Lý Admin</h1>

        <h2>Thêm Mới Tài Khoản</h2>

        <!-- Hiển thị thông báo thành công hoặc lỗi -->
        <c:if test="${not empty success}">
            <div class="message success">
                <strong>Thành công!</strong> ${success}.
            </div>
        </c:if>
        <c:if test="${not empty error}">
            <div class="message error">
                <strong>Lỗi!</strong> ${error}.
            </div>
        </c:if>

        <!-- Form để thêm admin -->
        <form action="${pageContext.request.contextPath}/admin/save" method="post">
            <label for="taikhoan">Tài Khoản</label>
            <input type="text" id="taikhoan" name="taikhoan" required>

            <label for="matkhau">Mật Khẩu</label>
            <input type="password" id="matkhau" name="matkhau" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email">

            <input type="submit" value="Thêm Admin">
        </form>

        <br>
        <a href="${pageContext.request.contextPath}/admin/list">Trở lại danh sách Admin</a>
    </div>

</body>
</html>
