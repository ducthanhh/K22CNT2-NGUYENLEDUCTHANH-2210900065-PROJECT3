<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>danh sách </title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .button-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>lịch khám </h1>
    <table>
        <tr>
            <th>ID</th>
            <th>nguoidung</th>
            <th>bacsi</th>
            <th>giokham</th>
            <th>lichkham</th>
            <th>trangthai</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.id_lich_kham}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.id_nguoi_dung}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.id_bac_si}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.gio_kham}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.ngay_kham}</td> <!-- Sử dụng thuộc tính đúng -->
                  <td>${user.trang_thai}</td> <!-- Sử dụng thuộc tính đúng -->
                <td><a href="sua/${user.id_lich_kham}">Edit</a></td> <!-- Sử dụng thuộc tính đúng -->
                <td><a href="xoa/${user.id_lich_kham}">Delete</a></td> <!-- Sử dụng thuộc tính đúng -->
            </tr>
        </c:forEach>
    </table>

    <div class="button-container">
        <a href="saveform.jsp">Thêm</a>
        <input type="button" value="Back" onclick="window.history.back();" />
    </div>
</body>
</html>