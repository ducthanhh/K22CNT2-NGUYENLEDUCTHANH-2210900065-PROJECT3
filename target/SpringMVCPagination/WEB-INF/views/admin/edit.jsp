<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa tài khoản</title>
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

    <h2>Chỉnh Sửa Admin</h2>

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

    <!-- Form để chỉnh sửa admin -->
    <form action="${pageContext.request.contextPath}/admin/update" method="post">
        <input type="hidden" name="admin_id" value="${admin.admin_id}">

        <label for="taikhoan">Tài Khoản</label>
        <input type="text" id="taikhoan" name="taikhoan" value="${admin.taikhoan}" required>

        <label for="matkhau">Mật Khẩu</label>
        <input type="password" id="matkhau" name="matkhau" value="${admin.matkhau}" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${admin.email}">

        <input type="submit" value="Cập Nhật Admin">
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/admin/list">Trở lại danh sách Admin</a>

</body>
</html>
