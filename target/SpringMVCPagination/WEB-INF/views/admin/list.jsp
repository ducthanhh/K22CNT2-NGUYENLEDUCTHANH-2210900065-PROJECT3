<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Admin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; /* Màu nền tím nhạt */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #9c27b0; /* Màu tím đậm */
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 1.5em;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white; /* Màu nền trắng cho bảng */
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #9c27b0; /* Màu tím đậm */
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f3e5f5; /* Màu nền cho các hàng chẵn */
        }

        tr:hover {
            background-color: #e1bee7; /* Màu nền khi hover qua hàng */
        }

        a {
            color: #9c27b0;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container a {
            background-color: #9c27b0; /* Màu nền tím */
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1.1em;
            text-decoration: none;
            font-weight: bold;
        }

        .button-container a:hover {
            background-color: #6a1b9a; /* Màu tím đậm hơn khi hover */
        }

        .message {
            margin: 15px;
            padding: 10px;
            font-weight: bold;
            border-radius: 5px;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }
    </style>
</head>
<body>

    <header>
        <h1>Danh Sách Tài Khoản </h1>
    </header>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tài Khoản</th>
                <th>Mật Khẩu</th>
                <th>Email</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="admin" items="${admins}">
                <tr>
                    <td>${admin.admin_id}</td>
                    <td>${admin.taikhoan}</td>
                    <td>${admin.matkhau}</td>
                    <td>${admin.email}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/edit/${admin.admin_id}">Sửa</a> | 
                        <a href="${pageContext.request.contextPath}/admin/delete/${admin.admin_id}" onclick="return confirm('Bạn có chắc muốn xóa?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="button-container">
        <a href="${pageContext.request.contextPath}/admin/add">Thêm Tài Khoản Mới</a>
    </div>

</body>
</html>
